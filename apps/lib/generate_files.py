from pathlib import Path
from os.path import relpath
from math import ceil, log2
from tempfile import NamedTemporaryFile

import torch
import numpy as np

from .vhdl_package import Integer, String, Package


def log2ceil(x):
    return ceil(log2(x)) + 1


class Model:
    def __init__(self, model, dataloader, samples=10):
        pass


class GenerateRTL:
    tab = "    "
    map_layer_props = {
        'Conv2d': {
            "op": 'C', "in_channels": lambda x: x.in_channels, 'kernel_size': lambda x: x.kernel_size[0],
            "out_channels": lambda x: x.out_channels, "stride": lambda x: x.stride[0],
            "generics": [
                # TODO: IN_FEATURES
                'X_SIZE',
                # TODO: OUT_FEATURES
                'CONVS_PER_LINE',
                # TODO IN_CHANNEL
                'N_FILTER',
                # TODO OUT_CHANNEL
                'N_CHANNEL',
                'FILTER_WIDTH',
                'STRIDE',
                'TOTAL_OPS',
            ]
        },
        'Linear': {
            "op": 'L', "in_channels": lambda x: 0, 'kernel_size': lambda x: 0,
            "out_channels": lambda x: 0, "stride": lambda x: 0,
            "generics": ['IN_FEATURES', 'OUT_FEATURES', 'TOTAL_OPS']
        },
        'MaxPool2d': {
            "op": 'M', "in_channels": lambda x: 0, 'kernel_size': lambda x: x.kernel_size,
            "out_channels": lambda x: 0, "stride": lambda x: x.stride,
            "generics": ['X_SIZE', 'N_CHANNEL', 'FILTER_WIDTH', 'STRIDE', 'TOTAL_OPS']
        },
        'AdaptiveAvgPool2d': {
            "op": 'A', "in_channels": lambda x: 0, 'kernel_size': lambda x, y: x//y,
            "out_channels": lambda x: 0, "stride": lambda x, y: x - (y-1)*(x//y),
            "generics": ['X_SIZE', 'N_CHANNEL', 'FILTER_WIDTH', 'STRIDE', 'TOTAL_OPS']
        },
    }

    def __init__(self, model, rtl_config, rtl_output_path, dataloader, samples=10):
        self.rtl_output_path = rtl_output_path
        self.samples = samples
        self.shift_bits = int(rtl_config["INPUT_SIZE"] / 2)
        # Adjust shift
        self.shift = 2 ** self.shift_bits
        self.rtl_config = {"SHIFT": self.shift_bits, ** rtl_config}

        self.dataloader = dataloader
        # Model params
        shift2 = self.shift ** 2
        for i in range(len(model.sequential)):
            name = model.sequential[i]._get_name()
            if name in ['Conv2d', 'Linear']:
                model.sequential[i].weight.data = model.sequential[i].weight.data * self.shift
                model.sequential[i].bias.data = model.sequential[i].bias.data * shift2

        model.requires_grad_(False)
        model.eval()
        model.type(torch.int)
        self.model = model

        self.layer_torch = {
            e: layer._get_name()
            for e, layer in enumerate(model.sequential)
            if layer._get_name() in self.map_layer_props.keys()
        }
        self.total_layers = len(self.layer_torch)

        self.layer_rtl = list(self.layer_torch.values())
        self.map_rtl_torch = list(self.layer_torch.keys())
        self.map_torch_rtl = {v: e for e, v in enumerate(self.map_rtl_torch)}
        self.map_gold_torch = [k + 2 if v == 'Conv2d' else k + 1 for k, v in self.layer_torch.items()]

        shape = dataloader[0][0].shape
        input_tensor = torch.ones(1, shape[0], shape[1], shape[2], dtype=torch.int)
        self.in_features = [shape[1]]
        self.input_shape = []
        self.output_shape = []

        for e, layer in enumerate(model.sequential):
            if e in self.layer_torch:
                self.input_shape.append(np.array(input_tensor.shape[1:]).tolist())
            if 'pool' in layer._get_name().lower():
                input_tensor = layer(input_tensor.type(torch.float)).type(torch.int)
            else:
                input_tensor = layer(input_tensor)
            if e in self.layer_torch:
                self.in_features.append(input_tensor.shape[-1])
                self.output_shape.append(np.array(input_tensor.shape[1:]).tolist())

        self.in_channels = [
            0 if self.layer_rtl[i] == 'Linear' else self.input_shape[i][0]
            for i in range(self.total_layers)
        ]
        self.out_channels = [
            0 if self.layer_rtl[i] == 'Linear' else self.output_shape[i][0]
            for i in range(self.total_layers)
        ]

        self.stride = [
            self.map_layer_props[v]['stride'](self.model.sequential[k]) if v !='AdaptiveAvgPool2d'
            else self.map_layer_props[v]['stride'](
                self.input_shape[self.map_torch_rtl[k]][-1], self.output_shape[self.map_torch_rtl[k]][-1]
            )
            for k, v in self.layer_torch.items()
        ]

        self.kernel_size = [
            self.map_layer_props[v]['kernel_size'](self.model.sequential[k]) if v !='AdaptiveAvgPool2d'
            else self.map_layer_props[v]['kernel_size'](
                self.input_shape[self.map_torch_rtl[k]][-1], self.output_shape[self.map_torch_rtl[k]][-1]
            )
            for k, v in self.layer_torch.items()
        ]

        in_features = [np.prod(self.input_shape[i]) for i in range(self.total_layers)]
        out_features = [np.prod(self.output_shape[i]) for i in range(self.total_layers)]
        total_ops = [np.prod(self.output_shape[i]) for i in range(self.total_layers)]

        # TODO x_size is in_features without linear, in future replace x_size per in_features with all layers
        in_size = [
            self.input_shape[i][-1]
            for i in range(self.total_layers)
        ]

        out_size = [
            self.output_shape[i][-1]
            for i in range(self.total_layers)
        ]

        self.generics = {
            'TOTAL_OPS': total_ops,
            'X_SIZE': in_size,
            'CONVS_PER_LINE': out_size,
            'N_CHANNEL': self.in_channels,
            'N_FILTER': self.out_channels,
            'STRIDE': self.stride,
            'FILTER_WIDTH': self.kernel_size,
            'IN_FEATURES': in_features,
            'OUT_FEATURES': out_features,
        }

    def __call__(self, samples=False, core=False):
        for e in range(len(self.layer_torch)):
            self.generate_layer(e)
        if samples:
            self.generate_samples()
        if core:
            self.generate_core()
        self.op_generics_pkg()
        self.common_generics_pkg()

    def common_generics_pkg(self):
        op_type = "".join([self.map_layer_props[v]["op"] for v in self.layer_rtl])
        config = {"OP_TYPE": op_type, **self.rtl_config}

        arrays = [
            String(v, k) if type(v) is str else Integer(v, k)
            for k, v in config.items()
            if type(v) is not float
        ]

        pack = Package('common_generics_pkg', *arrays)
        path = self.rtl_output_path / 'core'
        path.mkdir(parents=True, exist_ok=True)
        with open(path / "common_generics_pkg.vhd", "w") as f:
            f.write(str(pack))

    def op_generics_pkg(self):
        arrays = [
            String(v, k) if type(v) is str else Integer(v, k)
            for k, v in self.generics.items()
        ]
        pack = Package('op_generics_pkg', *arrays)
        path = self.rtl_output_path / 'core'
        path.mkdir(parents=True, exist_ok=True)
        with open(path / "op_generics_pkg.vhd", "w") as f:
            f.write(str(pack))

    def generate_layer(self, layer):
        path = self.rtl_output_path
        generics_layer = {
            k: v[layer] for k, v in self.generics.items()
            if k in self.map_layer_props[self.layer_rtl[layer]]["generics"]
        }

        generic_dict2 = {
            **generics_layer,
            "LAYER": layer,
            "N_LAYER": 0,
            "OP_TYPE": self.map_layer_props[self.layer_rtl[layer]]["op"],
        }

        path.mkdir(parents=True, exist_ok=True)
        path_layer = path / 'layer' / str(layer)
        path_layer.mkdir(parents=True, exist_ok=True)
        # Generate generic file for rtl simulation
        self.generate_generic_file(layer, generic_dict2, path_layer)
        # Generate TCL file with generics for logic synthesis
        weight_list = self.generate_iwght_vhd_pkg(path=path_layer, n_layer=layer)
        feat_list = self.generate_ifmap_vhd_pkg(path=path_layer, n_layer=layer)
        self.generate_gold_vhd_pkg(path=path_layer, n_layer=layer,)
        # TODO update to run with layers
        self.generate_tcl_generic(layer, generic_dict2, path_layer)
        # Generate VHDL tensorflow package
        self.generate_ifmem_vhd_pkg(path=path_layer, weight=weight_list, feature=feat_list)
        # TODO remove um future
        # self.generate_config_pkg(n_layer=layer, path=path_layer, generics_layer=generics_layer)

    def generate_generic_file(self, n_layer, generate_layer_dict, path, core=False):
        clk_half = self.rtl_config["CLK_PERIOD"] / 2
        rst_time = clk_half * 5
        if core:
            data_path = relpath(path.parent, (Path(__file__).parent.parent.parent / "sim_rtl"))
        else:
            data_path = relpath(path, (Path(__file__).parent.parent.parent / "sim_rtl"))
        generate_dict2 = {
            **self.rtl_config,
            **generate_layer_dict,
            "CLK_HALF": clk_half,
            "RST_TIME": rst_time,
            "RISE_START": clk_half * 2.0 + rst_time + self.rtl_config["IN_DELAY"],
            "FALL_START": clk_half * 4.0 + rst_time + self.rtl_config["IN_DELAY"],
            "PATH": data_path,
        }
        time = ['CLK_PERIOD', 'CLK_HALF', 'RST_TIME', 'RISE_START', 'FALL_START', 'IN_DELAY']
        generate_dict3 = dict(sorted(generate_dict2.items()))
        line2 = " ".join(
            f"-g{k}={v}ns" if k in time else f"-g{k}={v}" for k, v in generate_dict3.items()
        ) + "\n"
        with open(path / "generic_file.txt", "w") as f:
            f.write(line2)

    def generate_tcl_generic(self, n_layer, generic_dict_layer, path):
        if self.layer_torch[self.map_rtl_torch[n_layer]] == 'Conv2d':
            generate_dict2 = {
                **self.rtl_config,
                **generic_dict_layer,
            }
            line = (
                "set CLK_PERIOD {CLK_PERIOD}\n"
                "set INPUT_SIZE {INPUT_SIZE}\n"
                "set DATAFLOW_TYPE {DATAFLOW_TYPE}\n"
                "set ARRAY_TYPE {ARRAY_TYPE}\n"
                "set LAT {LAT}\n"
                "set LAYER {LAYER}\n"
                "set parameters "
                "{{{{N_FILTER {N_FILTER}}} "
                "{{N_CHANNEL {N_CHANNEL}}} "
                "{{STRIDE {STRIDE}}} "
                "{{X_SIZE {X_SIZE}}} "
                "{{FILTER_WIDTH {FILTER_WIDTH}}} "
                "{{CONVS_PER_LINE {CONVS_PER_LINE}}} "
                "{{MEM_SIZE {MEM_SIZE}}} "
                "{{INPUT_SIZE {INPUT_SIZE}}} "
                "{{CARRY_SIZE {CARRY_SIZE}}} "
                "{{SHIFT {SHIFT}"
                "}}}}\n"
            ).format(**generate_dict2)

            with open(path / "generic_synth.tcl", "w") as f:
                f.write(line)

    def generate_config_pkg(self, n_layer, path, generics_layer):
        if self.layer_torch[self.map_rtl_torch[n_layer]] == 'Conv2d':
            x_size = generics_layer['X_SIZE']
            n_filter = generics_layer['N_FILTER']
            n_channel = generics_layer['N_CHANNEL']
            conv_per_line = generics_layer['CONVS_PER_LINE']
            generate_dict2 = {
                "N_FILTER": n_filter,
                "N_CHANNEL": n_channel,
                "X_SIZE": x_size,
                "X_SIZE_X_SIZE": x_size ** 2,
                "CONVS_PER_LINE": conv_per_line,
                "CONVS_PER_LINE_CONVS_PER_LINE": conv_per_line ** 2,
                "CONVS_PER_LINE_CONVS_PER_LINE_1": (conv_per_line ** 2) + 1,
                "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
                    (conv_per_line ** 2) * n_channel,
                "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
                    (conv_per_line ** 2) * (n_channel - 1),
                "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
                    (conv_per_line ** 2) * n_channel * n_filter,

                "LOG_N_FILTER": log2ceil(n_filter),
                "LOG_N_CHANNEL": log2ceil(n_channel),
                "LOG_X_SIZE": log2ceil(x_size),
                "LOG_X_SIZE_X_SIZE": log2ceil(x_size ** 2),
                "LOG_CONVS_PER_LINE": log2ceil(conv_per_line),
                "LOG_CONVS_PER_LINE_CONVS_PER_LINE": log2ceil(conv_per_line ** 2),
                "LOG_CONVS_PER_LINE_CONVS_PER_LINE_1": log2ceil((conv_per_line ** 2) + 1),
                "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
                    log2ceil((conv_per_line ** 2) * n_channel),
                "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
                    log2ceil((conv_per_line ** 2) * (n_channel - 1)),
                "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
                    log2ceil((conv_per_line ** 2) * n_channel * n_filter),
            }

            with open(Path(__file__).parent.resolve() / "template/config_pkg.vhd", "r") as f:
                text = f.read()

            text_out = text.format(**generate_dict2)

            with open(path / "config_pkg.vhd", "w") as f:
                f.write(text_out)

            with open(path / "config_pkg.txt", "w") as f:
                f.write(f'{generate_dict2["N_FILTER"]}\n')
                f.write(f'{generate_dict2["N_CHANNEL"]}\n')
                f.write(f'{generate_dict2["X_SIZE"]}\n')
                f.write(f'{generate_dict2["X_SIZE_X_SIZE"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE_CONVS_PER_LINE"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE_CONVS_PER_LINE_1"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1"]}\n')
                f.write(f'{generate_dict2["CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER"]}\n')

    def generate_samples(self):
        path_samples = self.rtl_output_path / 'samples'
        path_samples.mkdir(parents=True, exist_ok=True)
        self.generate_ifmap_vhd_pkg(path=path_samples, n_layer=0, dataset_size=self.samples)
        self.generate_gold_vhd_pkg(path=path_samples, n_layer=0, dataset_size=self.samples)

    def generate_core(self):
        layer = len(self.in_features) - 2
        path_core = self.rtl_output_path / "core"
        path_core.mkdir(parents=True, exist_ok=True)

        stride = [max(self.stride)]
        n_filter = [max(self.out_channels)]
        x_size = max(self.in_features)
        n_channel = max([self.input_shape[0][0]] + self.out_channels)
        generic_dict2 = {
            "STRIDE": stride[0],
            "N_FILTER": n_filter[0],
            "X_SIZE": x_size,
            "N_CHANNEL": n_channel,
            "FILTER_WIDTH": max(self.kernel_size),
            "CONVS_PER_LINE": max(self.in_features[1:]),
            "LAYER": 0,
            "SHIFT": self.shift_bits,
            "N_LAYER": layer + 1,
            "OP_TYPE": "".join([self.map_layer_props[v]["op"] for v in self.layer_rtl])
        }
        self.generate_generic_file(layer, generic_dict2, path_core, core=True)
        # Generate TCL file with generics for logic synthesis
        self.generate_tcl_generic(layer, generic_dict2, path_core)
        # self.generate_config_pkg(n_layer=layer, path=path_core, generics_layer=generic_dict2)

    def generate_ifmem_vhd_pkg(self, path, weight, feature):
        data_pkg = weight + feature
        package = "inmem_package"
        constant = "input_mem"
        self.write_mem_pkg(constant, data_pkg, "inmem_pkg", package, path)

    def generate_iwght_vhd_pkg(self, n_layer, path):
        if self.layer_rtl[n_layer] in ['Linear', 'Conv2d']:
            bias_list = [
                str(n) for n in self.model.sequential[self.map_rtl_torch[n_layer]].bias.data.cpu().detach().tolist()
            ]
            if self.layer_rtl[n_layer] == 'Linear':
                input_shape = self.input_shape[n_layer][0]
                output_shape = self.output_shape[n_layer][0]
                pre_input_shape = self.output_shape[n_layer - 1]
                layer = self.model.sequential[self.map_rtl_torch[n_layer]].weight.data.cpu().detach().numpy()
                # TODO unnecessary for final result, but for maintain same order from tensorflow. Remove in future
                if pre_input_shape[-1] > 1 and len(self.output_shape) > 1:
                    layer1 = (layer.reshape(output_shape, *pre_input_shape).swapaxes(-2, -1)
                              .reshape(output_shape, input_shape))
                else:
                    layer1 = layer
                weight_arr = np.expand_dims(layer1, [0, 1])
            else:
                # TODO maybe this reorder is unnecessary for final result, but for maintain same order from tensorflow.
                #  Test in future
                layer = (self.model.sequential[self.map_rtl_torch[n_layer]].weight.data.swapaxes(-2, -1).cpu().detach()
                         .numpy())
                weight_arr = layer.reshape(1, *layer.shape[0:2], -1)

            # weight_list = weight_arr.tolist()
            # weight_string = [
            #     f"{self.tab}-- filter={f} channel={c}\n{self.tab}{', '.join(map(str, s))},\n"
            #     for filters in weight_list
            #     for f, channel in enumerate(filters)
            #     for c, s in enumerate(channel)
            # ]
            # bias_string = f"{self.tab}{', '.join(bias_list)},\n"
            # bias_list_data = [f"{b}\n" for b in bias_list]
            # weight_list_data = [f"{s}\n" for f in weight_list for c in f for li in c for s in li]
            # data_txt = bias_list_data + weight_list_data
            # package = "iwght_package"
            # constant = "input_wght"
            # data_pkg = "".join([f"{self.tab}-- bias\n"] + [bias_string] + [f"\n{self.tab}-- weights\n"] + weight_string)
            # self.write_mem_pkg(constant, data_pkg, "iwght_pkg", package, path)
            # with open(path / "iwght.txt", "w") as f:
            #     f.writelines(data_txt)
            # return data_pkg
            return ''
        else:
            return ''

    def generate_ifmap_vhd_pkg(self, path, n_layer, dataset_size=1):
        if n_layer == 0:
            x = np.array([self.dataloader[i][0].cpu().detach().numpy() for i in range(dataset_size)])
            x = x * self.shift
            if dataset_size == 1:
                feat_list = np.squeeze(x.astype(int))
            else:
                s = x.shape
                feat_list = x.reshape(-1, s[-2], s[-1]).astype(int)
        else:
            x = self.forward(dataset_size, n_layer, self.map_rtl_torch)

            feat_list = x
            if self.layer_rtl[n_layer] == 'Linear':
                shape = self.output_shape[n_layer-1]
                if len(shape) > 1:
                    feat_list = feat_list.reshape(shape).swapaxes(-2, -1).reshape(1, -1)
                feat_list = np.expand_dims(feat_list.detach().numpy(), 0)
            else:
                feat_list = feat_list.squeeze(0).swapaxes(-2, -1).cpu().detach().numpy()

        np.savetxt(path / "ifmap.txt", feat_list.reshape(-1), fmt='%i')
        package = "ifmap_package"
        constant = "input_map"
        data_pkg = self.format_feature(feat_list, 'ifmap')
        self.write_mem_pkg(constant, data_pkg, "ifmap_pkg", package, path)
        return data_pkg

    def generate_gold_vhd_pkg(self, n_layer, path, dataset_size=1):
        x = self.forward(dataset_size, n_layer, self.map_gold_torch)
        feat_list = x

        if self.layer_rtl[n_layer] == 'Linear':
            feat_list = feat_list.cpu().reshape(1, -1).detach().numpy()
            feat_list = np.expand_dims(feat_list, 0)
        else:
            feat_list = feat_list.squeeze(0).swapaxes(-2, -1).cpu().detach().numpy()

        if dataset_size > 1:
            s = feat_list.shape
            feat_list = feat_list.reshape((-1, s[-2], s[-1])).astype(int)

        package = "gold_package"
        constant = "gold"
        data = self.format_feature(feat_list, constant)
        np.savetxt(path / "gold.txt", feat_list.reshape(-1), fmt='%i')
        self.write_mem_pkg(constant, data, "gold_pkg", package, path)

    def forward(self, dataset_size, n_layer, map_data):
        x = np.array([self.dataloader[i][0].cpu().detach().numpy() for i in range(dataset_size)])
        x = x.swapaxes(-2, -1) * self.shift
        x = x.astype(np.int32)
        x = torch.from_numpy(x.astype(np.int32))
        loop = list(range(map_data[n_layer]))
        for i in loop:
            if 'Pool' in self.model.sequential[i]._get_name():
                t = self.model.sequential[i](x.type(torch.float)).type(torch.int)
                x = t
            elif self.model.sequential[i]._get_name() in ['Linear', 'Conv2d']:
                t = self.model.sequential[i](x)
                # normalize data after operation
                x = t // self.shift
            else:
                t = self.model.sequential[i](x)
                x = t
        return x

    def format_feature(self, data_list, name):
        with NamedTemporaryFile(mode='w', delete=False) as f:
            f.write(f"\n{self.tab}-- {name}\n")
            f.write(self.tab)
            for c, channel in enumerate(data_list):
                f.write(f"-- channel={c}\n{self.tab}")
                for column in channel:
                    for data in column:
                        f.write(f"{str(data)}, ")
                    f.write(f"\n{self.tab}")
                f.write(f"\n{self.tab}")
        return f.name

    @staticmethod
    def write_mem_pkg(constant, file_data, file_name, package, path):
        with open(Path(__file__).parent.resolve() / "template/inmem_pkg.vhd", "r") as f:
            text = f.read()
        # TODO format package and constant but no data, after formatting split template in
        #   {data} and write line by line to file
        text_out = text.format(package=package, constant=constant)
        start_text, end_text = text_out.split("[data]")

        with open(path / f"{file_name}.vhd", "w") as f:
            f.write(start_text)
            with open(path / file_data, "r") as read:
                for line in read:
                    f.write(line)
            f.write(end_text)

    @staticmethod
    def write_mem_txt(feat_list, file_name, path):
        with open(path / f"{file_name}.txt", "w") as f:
            for c in feat_list:
                for n in c:
                    for d in n:
                        f.write(f"{d}\n")
