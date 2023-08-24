from pathlib import Path
from os.path import relpath

import torch
import numpy as np

from .util import log2ceil
from .bram import open_file
from .vhdl_package import Integer, String, Package
from .model import conv2d, generate_ifmem_vhd_pkg, pool2d, fc


def write_mem_pkg(constant, data, file_name, package, path):
    with open(Path(__file__).parent.resolve() / "template/inmem_pkg.vhd", "r") as f:
        text = f.read()
    text_out = text.format(package=package, constant=constant, data=data)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_mem_txt(feat_list, file_name, path):
    with open(path / f"{file_name}.txt", "w") as f:
        f.writelines([f"{d}\n" for c in feat_list for n in c for d in n])


def format_feature2(feat_list, tab):
    format_feat = [
        # f"{tab}-- image={layer} channel={c} column={n}\n{tab}{','.join(column)},\n"
        # f"{tab}-- channel={c} column={n}\n{tab}{', '.join(column)}, \n"
        f"{tab}{', '.join(column)}, \n"
        for c, channel in enumerate(feat_list)
        for n, column in enumerate(channel)
    ]
    return format_feat


def format_feature(feat_list, tab):
    format_feat = [tab]
    for c, channel in enumerate(feat_list):
        format_feat.append(f"-- channel={c}\n{tab}")
        for column in channel:
            for feat in column:
                format_feat.append(f"{str(feat)}, ")
            format_feat.append(f"\n{tab}")
        format_feat.append(f"\n{tab}")
    return format_feat


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
            "op": 'F', "in_channels": lambda x: 0, 'kernel_size': lambda x: 0,
            "out_channels": lambda x: 0, "stride": lambda x: 0,
            "generics": ['IN_FEATURES', 'OUT_FEATURES', 'TOTAL_OPS']
        },
        'MaxPool2d': {
            "op": 'M', "in_channels": lambda x: 0, 'kernel_size': lambda x: x.kernel_size,
            "out_channels": lambda x: 0, "stride": lambda x: x.stride,
            "generics": ['X_SIZE', 'N_CHANNEL', 'FILTER_WIDTH', 'STRIDE', 'TOTAL_OPS']
        },
    }

    def __init__(self, model, model_dict, rtl_config, rtl_output_path, dataloader, samples=10):
        # TODO remove model_dict
        self.model_dict = model_dict
        self.rtl_output_path = rtl_output_path
        self.dataloader = dataloader
        self.samples = samples
        self.shift_bits = int(rtl_config["INPUT_SIZE"] / 2)
        # Adjust shift
        self.shift = 2 ** self.shift_bits
        self.rtl_config = {"SHIFT": self.shift_bits, ** rtl_config}

        # Model params
        shift2 = self.shift ** 2
        for i in range(len(model.sequential)):
            name = model.sequential[i]._get_name()
            if name in ['Conv2d', 'Linear']:
                model.sequential[i].weight.data = model.sequential[i].weight.data * self.shift
                model.sequential[i].bias.data = model.sequential[i].bias.data * shift2

        model.requires_grad_(False)
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

        input_tensor = torch.ones(
            1, dataloader.config["input_c"], dataloader.config["input_w"], dataloader.config["input_h"], dtype=torch.int
        )
        self.in_features = [self.dataloader.config["input_w"]]
        self.input_shape = []
        self.output_shape = []

        for e, layer in enumerate(model.sequential[0:-1]):
            if e in self.layer_torch:
                self.input_shape.append(np.array(input_tensor.shape[1:]).tolist())
            if layer._get_name() == 'MaxPool2d':
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

        self.input_size = np.prod(self.input_shape[0])
        self.kernel_size = [
            self.map_layer_props[v]['kernel_size'](self.model.sequential[k]) for k, v in self.layer_torch.items()
        ]

        self.stride = [
            self.map_layer_props[v]['stride'](self.model.sequential[k]) for k, v in self.layer_torch.items()
        ]

        # TODO add MaxPool2d to total_ops
        total_ops = [
            0 if self.layer_rtl[i] == 'MaxPool2d' else np.prod(self.output_shape[i])
            for i in range(self.total_layers)
        ]

        in_features = [
            self.input_shape[i][-1] if self.layer_rtl[i] == 'Linear' else 0
            for i in range(self.total_layers)
        ]

        # TODO x_size is in_features without linear, in future replace x_size per in_features with all layers
        x_size = [
            0 if self.layer_rtl[i] == 'Linear' else self.input_shape[i][-1]
            for i in range(self.total_layers)
        ]

        out_features = [
            self.output_shape[i][-1] if self.layer_rtl[i] == 'Linear' else 0
            for i in range(self.total_layers)
        ]
        # TODO convs_per_line is out_features without linear,
        #  in future replace convs_per_line per out_features with all layers
        convs_per_line = [
            self.output_shape[i][-1] if self.layer_rtl[i] == 'Conv2d' else 0
            for i in range(self.total_layers)
        ]

        self.generics = {
            'TOTAL_OPS': total_ops,
            'X_SIZE': x_size,
            'CONVS_PER_LINE': convs_per_line,
            'N_FILTER': self.out_channels,
            'N_CHANNEL': self.in_channels,
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
        self.generate_iwght_vhd_pkg(path=path_layer, n_layer=layer)
        self.generate_ifmap_vhd_pkg(path=path_layer, n_layer=layer)
        self.generate_gold_vhd_pkg(path=path_layer, n_layer=layer,)
        # TODO update to run with layers
        self.generate_tcl_generic(layer, generic_dict2, path_layer)
        # Generate VHDL tensorflow package
        self.generate_ifmem_vhd_pkg(path=path_layer, n_layer=layer)
        # TODO remove um future
        self.generate_config_pkg(n_layer=layer, path=path_layer, generics_layer=generics_layer)

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
        stride = [max(self.stride)]
        n_filter = [max(self.out_channels)]
        x_size = max([self.dataloader.config["input_w"]] + self.in_features[1:])
        n_channel = max([self.dataloader.config["input_c"]] + self.out_channels)
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
        self.generate_config_pkg(n_layer=layer, path=path_core, generics_layer=generic_dict2)

    def generate_ifmem_vhd_pkg(self, n_layer, path):
        if self.layer_rtl[n_layer] == 'Conv2d':
            filter_channel = self.out_channels
            filter_dimension = self.kernel_size
            input_channel = self.in_channels
            input_size = self.input_size
            layer_dimension = self.in_features[1:]
            model_dict = self.model_dict
            shift = self.shift
            stride_h = self.stride
            stride_w = self.stride
            testSet = self.dataloader.x
            testSetSize = 1
            testLabel = self.dataloader.y
            generate_ifmem_vhd_pkg(
                model_dict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                testSet, testLabel, stride_h, stride_w, testSetSize, n_layer, path
            )

    def generate_iwght_vhd_pkg(self, n_layer, path):
        # bias_list = self.get_bias(layer)
        if self.layer_rtl[n_layer] in ['Linear', 'Conv2d']:
            bias_list = [
                str(n) for n in self.model.sequential[self.map_rtl_torch[n_layer]].bias.data.cpu().detach().tolist()
            ]
            if self.layer_rtl[n_layer] == 'Linear':
                input_shape = self.input_shape[n_layer][0]  # 64
                output_shape = self.output_shape[n_layer][0]  # 10
                pre_input_shape = self.output_shape[n_layer - 1]
                layer = self.model.sequential[self.map_rtl_torch[n_layer]].weight.data.cpu().detach().numpy()
                # TODO unnecessary for final result, but for maintain same order from tensorflow. Remove in future
                if pre_input_shape[-1] > 1:
                    layer1 = (layer.reshape(output_shape, *pre_input_shape).swapaxes(-2, -1)
                              .reshape(output_shape, input_shape))
                else:
                    layer1 = layer
                weight_list = np.expand_dims(layer1, [0, 1]).tolist()
            else:
                # TODO maybe this reorder is unnecessary for final result, but for maintain same order from tensorflow.
                #  Test in future
                layer = (self.model.sequential[self.map_rtl_torch[n_layer]].weight.data.transpose(-2, -1).cpu().detach()
                         .numpy())
                weight_list = layer.reshape(1, *layer.shape[0:2], -1).tolist()

            bias_string = f"{self.tab}-- layer={n_layer}\n{self.tab}{', '.join(bias_list)},\n"
            weight_string = [
                f"{self.tab}-- layer={n_layer} filter={f} channel={c}\n{self.tab}{', '.join(map(str, s))},\n"
                for filters in weight_list
                for f, channel in enumerate(filters)
                for c, s in enumerate(channel)
            ]

            package = "iwght_package"
            constant = "input_wght"
            data = "".join([f"{self.tab}-- bias\n"] + [bias_string] + [f"\n{self.tab}-- weights\n"] + weight_string)
            write_mem_pkg(constant, data, "iwght_pkg", package, path)
            with open(path / "iwght.txt", "w") as f:
                f.writelines([f"{b}\n" for b in bias_list])
                f.writelines([f"{s}\n" for f in weight_list for c in f for li in c for s in li])

    # TODO remove or move to legacy code
    def get_wght(self, layer):
        model_dict = self.model_dict
        shift = self.shift
        if model_dict[layer]["type"] == "Dense":
            weight_list = [[[
                [str(i) for i in (v["weights"] * shift).astype(int).tolist()]
                for k, v
                in model_dict[layer]["neuron"].items()
            ]]]
        elif model_dict[layer]["type"] == "Conv2D":
            weight_list = [
                [[[str(int(weights[x, y, z].reshape(-1)))
                   for x in range(weights.shape[0])
                   for y in range(weights.shape[1])]

                  for weights in [model_dict[layerId]["filter"][filterId]["weights"] * shift]
                  for z in range(weights.shape[2])]

                 for filterId in model_dict[layerId]["filter"]
                 ]
                for layerId in model_dict
                if model_dict[layerId]["type"] in ["Conv2D", "Dense"]
                if layerId == layer
            ]
        else:
            weight_list = []
        return weight_list

    # TODO remove or move to legacy code
    def get_bias(self, layer):
        model_dict = self.model_dict
        shift = self.shift
        if model_dict[layer]["type"] == "Dense":
            bias_list = [
                str(int(v["bias"] * shift * shift))
                for k, v
                in model_dict[layer]["neuron"].items()
            ]
        elif model_dict[layer]["type"] == "Conv2D":
            bias_list = [
                str(int(model_dict[layerId]["filter"][filterId]["bias"] * shift * shift))
                for layerId in model_dict
                if model_dict[layerId]["type"] == "Conv2D"
                if layerId == layer
                for filterId in model_dict[layerId]["filter"]
            ]
        else:
            bias_list = []
        return bias_list

    def generate_ifmap_vhd_pkg(self, path, n_layer, dataset_size=1):
        # feat_list = self.get_feature_data(n_layer, path, dataset_size)
        if n_layer == 0:
            # x = self.dataloader.x[0].transpose([2, 0, 1]) * self.shift
            x = self.dataloader.x[0:dataset_size].transpose(0, 3, 1, 2) * self.shift
            if dataset_size == 1:
                feat_list = np.squeeze(x.astype(int))
            else:
                s = x.shape
                feat_list = x.reshape(-1, s[-2], s[-1]).astype(int)
        else:
            x = self.dataloader.x[0:dataset_size].transpose(0, 3, 2, 1) * self.shift
            x = x.astype(np.int32)
            x = torch.from_numpy(x.astype(np.int32))

            loop = list(range(self.map_rtl_torch[n_layer]))

            for i in loop:
                if self.model.sequential[i]._get_name() == 'MaxPool2d':
                    t = self.model.sequential[i](x.type(torch.float)).type(torch.int)
                else:
                    t = self.model.sequential[i](x)

                if self.model.sequential[i]._get_name() == 'Conv2d':
                    x = t // self.shift
                else:
                    x = t

            feat_list = x
            if self.layer_rtl[n_layer] == 'Linear':
                shape = self.output_shape[n_layer-1]
                feat_list = feat_list.reshape(shape).transpose(-2, -1).reshape(1, -1)
                feat_list = np.expand_dims(feat_list.detach().numpy(), 0)
            else:
                feat_list = feat_list.squeeze(0).transpose(-2, -1).cpu().detach().numpy()

        format_feat = format_feature(feat_list, self.tab)

        package = "ifmap_package"
        constant = "input_map"
        data = "".join([f"\n{self.tab}-- ifmap\n"] + format_feat)

        write_mem_txt(feat_list, "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

    # TODO remove or move to legacy code
    def generate_gold_fc_vhd_pkg(self, layer, path):
        model_dict = self.model_dict
        shift = self.shift
        feature = open_file(path.parent / str(layer - 1) / 'gold.txt')

        weights = [
            (v["weights"] * shift).astype(int).tolist()
            for k, v
            in model_dict[layer]["neuron"].items()
        ]

        bias = [
            int(v["bias"] * shift * shift)
            for k, v
            in model_dict[layer]["neuron"].items()
        ]

        gold = [
            np.dot(feature, w) + b
            for w, b
            in zip(weights, bias)
        ]

        weights_bias_plain = bias + [ww for w in weights for ww in w]
        bias_string = f"{self.tab}-- layer={layer}\n{self.tab}{', '.join(map(str, bias))},\n"
        weight_string = [
            f"{self.tab}-- layer={layer} channel={c}\n{self.tab}{', '.join(map(str, s))},\n"
            for c, s in enumerate(weights)
        ]
        package = "iwght_package"
        constant = "input_wght"
        data = "".join([f"{self.tab}-- bias\n"] + [bias_string] + [f"\n{self.tab}-- weights\n"] + weight_string)

        write_mem_txt([[weights_bias_plain]], "iwght", path)
        write_mem_pkg(constant, data, "iwght_pkg", package, path)

        package = "ifmap_package"
        constant = "input_map"
        data = f"\n{self.tab}-- ifmap\n{self.tab}" + ", ".join(str(i) for i in feature) + ","

        write_mem_txt([[feature]], "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

        package = "gold_package"
        constant = "gold"
        data = f"\n{self.tab}-- ifmap\n{self.tab}" + ", ".join(str(i) for i in gold) + ","
        write_mem_txt([[gold]], "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)

    # TODO remove or move to legacy code
    def generate_gold_maxpool_vhd_pkg(self, layer, path):
        feature = open_file(path.parent / str(layer) / 'gold.txt')
        arr = np.array(feature).reshape(-1, 3, 3)

        gold = pool2d(arr, kernel_size=3, stride=3, padding=0, pool_mode='max').reshape(-1).tolist()

        package = "ifmap_package"
        constant = "input_map"
        data = f"\n{self.tab}-- ifmap\n{self.tab}" + ", ".join(str(i) for i in feature) + ","

        write_mem_txt([[feature]], "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

        package = "gold_package"
        constant = "gold"
        data = f"\n{self.tab}-- ifmap\n{self.tab}" + ", ".join(str(i) for i in gold) + ","
        write_mem_txt([[gold]], "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)

    # TODO remove or move to legacy code
    def get_feature_data(self, layer, path, dataset_size=1):
        filter_channel = self.out_channels
        filter_dimension = self.kernel_size
        input_channel = self.in_channels
        layer_dimension = self.in_features
        model_dict = self.model_dict
        shift = self.shift
        stride_h = self.stride
        stride_w = self.stride
        dataset = self.dataloader.x
        gen_features = True
        if layer == 0:
            feat_list = [
                [[str(int(image_shift[x, y, z]))
                  for y in range(image_shift.shape[1])]
                 for x in range(image_shift.shape[0])]
                for i, image in enumerate(dataset)
                if i in range(dataset_size)
                for image_shift in [image * shift]
                for z in range(image_shift.shape[2])
            ]
        else:
            if model_dict[layer]["type"] == "Dense":
                feat_list = fc(model_dict, shift, layer, gen_features, path)
            elif model_dict[layer]["type"] == "Conv2D":
                feat_list = conv2d(
                    gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, model_dict,
                    shift,
                    stride_h, stride_w, self.tab, dataset, dataset_size
                )
            else:
                feat_list = []
        return feat_list

    def generate_gold_vhd_pkg(self, n_layer, path, dataset_size=1):
        # n_layer = n_layer + 1
        x = self.dataloader.x[0:dataset_size].transpose(0, 3, 2, 1) * self.shift
        x = x.astype(np.int32)
        x = torch.from_numpy(x.astype(np.int32))

        loop = list(range(self.map_gold_torch[n_layer]))

        for i in loop:
            if self.model.sequential[i]._get_name() == 'MaxPool2d':
                t = self.model.sequential[i](x.type(torch.float)).type(torch.int)
            else:
                t = self.model.sequential[i](x)

            if self.model.sequential[i]._get_name() == 'Conv2d':
                x = t // self.shift
            else:
                x = t

        feat_list = x
        if self.layer_rtl[n_layer] == 'Linear':
            feat_list = feat_list.cpu().reshape(1, -1).detach().numpy()
            feat_list = np.expand_dims(feat_list, 0)
        else:
            feat_list = feat_list.squeeze(0).transpose(-2, -1).cpu().detach().numpy()

        if dataset_size > 1:
            s = feat_list.shape
            feat_list = feat_list.reshape(-1, s[-2], s[-1]).astype(int)

        format_feat = format_feature(feat_list, self.tab)

        package = "gold_package"
        constant = "gold"
        data = "".join([f"\n{self.tab}-- gold\n"] + format_feat)
        write_mem_txt(feat_list, "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)
