from pathlib import Path
from os.path import relpath
from math import log2, ceil

import numpy as np

from .model import conv2d, generate_ifmem_vhd_pkg, pool2d, fc
from .bram import open_file


def log2ceil(x):
    return ceil(log2(x)) + 1


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
                format_feat.append(f"{feat}, ")
            format_feat.append(f"\n{tab}")
        format_feat.append(f"\n{tab}")
    return format_feat


class GenerateRTL:
    def __init__(self, model_dict, rtl_config, rtl_output_path, dataloader, samples=10):
        self.tab = "    "
        self.model_dict = model_dict
        self.input_channel = [v["input_shape"][-1] for k, v in model_dict.items()]
        self.rtl_config = rtl_config
        self.rtl_output_path = rtl_output_path
        self.samples = samples
        self.dict_op_type = {
            'Conv2D': 'C',
            'Dense': 'F',
            'Maxpool': 'M',
        }
        self.shift_bits = int(rtl_config["INPUT_SIZE"] / 2)
        # Adjust shift
        self.shift = 2 ** self.shift_bits
        self.input_size = np.prod(model_dict[0]["input_shape"])
        self.filter_dimension = [v["filter_dimension"] for k, v in model_dict.items()]
        self.filter_channel = [v["filter_channel"] for k, v in model_dict.items()]
        self.layer_dimension = [v["output_shape"][0] for k, v in model_dict.items()]
        self.stride_h = [v["stride_h"] for k, v in model_dict.items()]
        self.stride_w = [v["stride_w"] for k, v in model_dict.items()]
        self.dataloader = dataloader
        # change for core
        self.stride = [v["stride_h"] for k, v in model_dict.items()]
        self.n_filter = [v["filter_channel"] for k, v in model_dict.items()]
        self.n_layer = 0

    def __call__(self, samples=False):
        for e, _ in enumerate(list(self.model_dict.keys())):
            self.generate_files(e)
        if samples:
            self.generate_samples()

    def generate_files(self, layer):
        input_c = self.model_dict[0]["input_shape"][-1]
        input_w = self.model_dict[0]["input_shape"][0]
        input_channel = self.input_channel
        path = self.rtl_output_path

        # Compute HW parameters
        if layer == 0:
            x_size = input_w
            c_size = input_c
        else:
            x_size = self.layer_dimension[layer - 1]
            c_size = self.filter_channel[layer - 1]

        conv_per_line = self.layer_dimension[layer]
        generic_dict2 = {
            "X_SIZE": x_size,
            "C_SIZE": c_size,
            "FILTER_WIDTH": self.filter_dimension[layer],
            "CONVS_PER_LINE": conv_per_line,
            "LAYER": layer,
            "OP_TYPE": self.dict_op_type[self.model_dict[layer]["type"]]
        }
        path.mkdir(parents=True, exist_ok=True)
        path_layer = path / 'layer' / str(layer)
        path_layer.mkdir(parents=True, exist_ok=True)
        # Generate generic file for rtl simulation
        self.generate_generic_file(generic_dict2, path_layer, layer)
        # Generate TCL file with generics for logic synthesis
        self.generate_tcl_generic(generic_dict2, path_layer, layer)
        # Generate VHDL tensorflow package
        self.generate_ifmem_vhd_pkg(path=path_layer, layer=layer)
        self.generate_iwght_vhd_pkg(path=path_layer, layer=layer)
        self.generate_ifmap_vhd_pkg(path=path_layer, layer=layer)
        # Generate VHDL gold output package
        self.generate_gold_vhd_pkg(layer=layer, path=path_layer)
        self.generate_config_file(
            x_size=x_size,  conv_per_line=conv_per_line, n_channel=c_size, path=path_layer, n_layer=layer
        )

    def generate_samples(self):
        path_samples = self.rtl_output_path / 'samples'
        path_samples.mkdir(parents=True, exist_ok=True)
        # generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
        # Generate generic file for rtl simulation
        self.generate_ifmap_vhd_pkg(path=path_samples, layer=0, dataset_size=self.samples)
        self.generate_gold_vhd_pkg(path=path_samples, layer=0, dataset_size=self.samples)

    def generate_generic_file(self, generate_layer_dict, path, n_layer):
        clk_half = self.rtl_config["CLK_PERIOD"] / 2
        rst_time = clk_half * 5
        if "core" in path.as_posix():
            data_path = relpath(path.parent, (Path(__file__).parent.parent.parent / "sim_rtl"))
        else:
            data_path = relpath(path, (Path(__file__).parent.parent.parent / "sim_rtl"))
        generate_dict2 = {
            **{k: v for k, v in self.rtl_config.items()},
            ** generate_layer_dict,
            "CLK_HALF": clk_half,
            "RST_TIME": rst_time,
            "RISE_START": clk_half * 2.0 + rst_time + self.rtl_config["IN_DELAY"],
            "FALL_START": clk_half * 4.0 + rst_time + self.rtl_config["IN_DELAY"],
            "N_FILTER": self.n_filter[n_layer],
            "STRIDE": self.stride[n_layer],
            "PATH": data_path,
            "SHIFT": self.shift_bits,
            "N_LAYER": self.n_layer,
        }
        line = (
            "-gN_FILTER={N_FILTER} -gSTRIDE={STRIDE} -gX_SIZE={X_SIZE} -gFILTER_WIDTH={FILTER_WIDTH} "
            "-gCONVS_PER_LINE={CONVS_PER_LINE} -gMEM_SIZE={MEM_SIZE} -gINPUT_SIZE={INPUT_SIZE} "
            "-gCARRY_SIZE={CARRY_SIZE} -gCLK_PERIOD={CLK_HALF}ns -gRST_TIME={RST_TIME}ns -gRISE_START={RISE_START}ns "
            "-gFALL_START={FALL_START}ns -gIN_DELAY={IN_DELAY}ns -gLAT={LAT} -gN_CHANNEL={C_SIZE} -gSHIFT={SHIFT} "
            "-gN_LAYER={N_LAYER} -gPATH={PATH} -gOP_TYPE={OP_TYPE}"
            "\n"
        ).format(**generate_dict2)
        with open(path / "generic_file.txt", "w") as f:
            f.write(line)

    def generate_tcl_generic(self, generic_dict_layer, path, n_layer):
        generate_dict2 = {
            **{k: v for k, v in self.rtl_config.items()},
            **generic_dict_layer,
            "N_FILTER": self.n_filter[n_layer],
            "STRIDE": self.stride[n_layer],
            "SHIFT": self.shift_bits,
            "N_LAYER": self.n_layer,
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
            "{{N_CHANNEL {C_SIZE}}} "
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

    def generate_config_file(self, x_size, conv_per_line, n_channel, path, n_layer):
        generate_dict2 = {
            "N_FILTER": self.n_filter[n_layer],
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
                (conv_per_line ** 2) * n_channel * self.n_filter[n_layer],

            "LOG_N_FILTER": log2ceil(self.n_filter[n_layer]),
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
                log2ceil((conv_per_line ** 2) * n_channel * self.n_filter[n_layer]),
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

    def generate_ifmem_vhd_pkg(self, layer, path):
        filter_channel = self.filter_channel
        filter_dimension = self.filter_dimension
        input_channel = self.input_channel
        input_size = self.input_size
        layer_dimension = self.layer_dimension
        modelDict = self.model_dict
        shift = self.shift
        stride_h = self.stride_h
        stride_w = self.stride_w
        testSet = self.dataloader.x
        testSetSize = 1
        testLabel = self.dataloader.y
        generate_ifmem_vhd_pkg(
            modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel, testSet,
            testLabel, stride_h, stride_w, testSetSize, layer, path
        )

    def generate_iwght_vhd_pkg(self, layer, path):
        bias_list = self.get_bias(layer)
        weight_list = self.get_wght(layer)

        bias_string = f"{self.tab}-- layer={layer}\n{self.tab}{', '.join(bias_list)},\n"
        weight_string = [
            f"{self.tab}-- layer={layer} filter={f} channel={c}\n{self.tab}{', '.join(s)},\n"
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

    def generate_ifmap_vhd_pkg(self, path, layer, dataset_size=1):
        feat_list = self.get_feature_data(layer, path, dataset_size)

        format_feat = format_feature(feat_list, self.tab)

        package = "ifmap_package"
        constant = "input_map"
        data = "".join([f"\n{self.tab}-- ifmap\n"] + format_feat)

        write_mem_txt(feat_list, "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

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

    def get_feature_data(self, layer, path, dataset_size=1):
        filter_channel = self.filter_channel
        filter_dimension = self.filter_dimension
        input_channel = self.input_channel
        layer_dimension = self.layer_dimension
        model_dict = self.model_dict
        shift = self.shift
        stride_h = self.stride_h
        stride_w = self.stride_w
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
                    gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, model_dict, shift,
                    stride_h, stride_w, self.tab, dataset, dataset_size
                )
            else:
                feat_list = []
        return feat_list

    def generate_gold_vhd_pkg(self, layer, path, dataset_size=1):
        gen_features = False
        filter_channel = self.filter_channel
        filter_dimension = self.filter_dimension
        input_channel = self.input_channel
        layer_dimension = self.layer_dimension
        model_dict = self.model_dict
        shift = self.shift
        stride_h = self.stride_h
        stride_w = self.stride_w
        dataset = self.dataloader.x
        # testSetSize = self.vhd_dict["testSetSize"]

        if self.model_dict[layer]["type"] == "Dense":
            feat_list = fc(self.model_dict, shift, layer, gen_features, path)
        elif self.model_dict[layer]["type"] == "Conv2D":
            feat_list = conv2d(
                gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, model_dict, shift,
                stride_h, stride_w, self.tab, dataset, dataset_size
            )
        else:
            feat_list = []

        format_feat = format_feature(feat_list, self.tab)

        package = "gold_package"
        constant = "gold"
        data = "".join([f"\n{self.tab}-- gold\n"] + format_feat)
        write_mem_txt(feat_list, "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)


