from pathlib import Path
from os.path import relpath
from math import log2, ceil

import numpy as np

from .model import conv2d, generate_ifmem_vhd_pkg, pool2d
from .bram import open_file

def log2ceil(x):
    return ceil(log2(x)) + 1


def write_mem_pkg(constant, data, file_name, package, path):
    with open(Path(__file__).parent.resolve() / "template/inmem_pkg.vhd", "r") as f:
        text = f.read()
    text_out = text.format(package=package, constant=constant, data=data)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_dist_bram(entity, file_name, init, path, bram_size='18Kb', device="SERIES"):
    with open(Path(__file__).parent.resolve() / "template/bram_unisim.vhd", "r") as f:
        text = f.read()
    text_out = text.format(entity=entity, bram_size=bram_size, device=device, init=init)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_bram(entity, init, bram_size, device, file_name, path):
    with open(Path(__file__).parent.resolve() / "template/bram_unisim.vhd", "r") as f:
        text = f.read()
    text_out = text.format(entity=entity, bram_size=bram_size, device=device, init=init)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_mem_txt(feat_list, file_name, path):
    with open(path / f"{file_name}.txt", "w") as f:
        f.writelines([f"{d}\n" for c in feat_list for n in c for d in n])


def write_bram_txt(feat_list, path, bits=8, lines_per_file=64, single_file=True):
    word = ceil(bits / 4)
    feat_hex = [format(int(feat), f'0{word}x') for feat in feat_list]
    if single_file:
        with open(path, "w") as f:
            f.write("".join(feat_hex))
    else:
        total_words = ceil(64 / word)
        feat_line = ["".join(feat_hex[i:i + total_words]) + "\n" for i in range(0, len(feat_hex), total_words)]
        feat_file = [feat_line[i:i + lines_per_file] for i in range(0, len(feat_line), lines_per_file)]
        path.mkdir(parents=True, exist_ok=True)
        for i, file in enumerate(feat_file):
            with open(path / f"{i}.txt", "w") as f:
                f.writelines(file)


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
    def __init__(self, model_dict, generic_dict, vhd_dict, rtl_output_path, samples=10):
        self.model_dict = model_dict
        self.input_channel = [v["input_shape"][-1] for k, v in model_dict.items()]
        self.generic_dict = generic_dict
        self.vhd_dict = vhd_dict
        self.rtl_output_path = rtl_output_path
        self.samples = samples
        self.dict_op_type = {
            'Conv2D': 'C',
            'Dense': 'F',
            'Maxpool': 'M',
        }

    def run(self):
        for e, _ in enumerate(list(self.model_dict.keys())):
            self.generate_files(e)

    def generate_files(self, layer):
        input_c = self.model_dict[0]["input_shape"][-1]
        input_w = self.model_dict[0]["input_shape"][0]
        input_channel = self.input_channel
        path = self.rtl_output_path

        # Compute HW parameters
        if layer == 0:
            X_SIZE = input_w
            C_SIZE = input_c
        else:
            X_SIZE = self.vhd_dict["layer_dimension"][layer - 1]
            C_SIZE = self.vhd_dict["filter_channel"][layer - 1]

        FILTER_WIDTH = self.vhd_dict["filter_dimension"][layer]
        CONVS_PER_LINE = self.vhd_dict["layer_dimension"][layer]
        generic_dict2 = {
            "X_SIZE": X_SIZE,
            "C_SIZE": C_SIZE,
            "FILTER_WIDTH": FILTER_WIDTH,
            "CONVS_PER_LINE": CONVS_PER_LINE,
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
        generate_ifmem_vhd_pkg(path=path_layer, input_channel=input_channel, layer=layer, **self.vhd_dict)
        self.generate_iwght_vhd_pkg(path=path_layer, layer=layer)
        self.generate_ifmap_vhd_pkg(path=path_layer, layer=layer)
        # Generate VHDL gold output package
        self.generate_gold_vhd_pkg(layer=layer, path=path_layer)
        self.generate_config_file(
            X_SIZE=X_SIZE,  CONVS_PER_LINE=CONVS_PER_LINE, N_CHANNEL=C_SIZE, path=path_layer, n_layer=layer
        )

    def generate_all_bram_files(self, input_c, input_w, input_channel, generic_dict, vhd_dict, layer, path):
        # Compute HW parameters
        if layer == 0:
            X_SIZE = input_w
            C_SIZE = input_c
        else:
            X_SIZE = vhd_dict["layer_dimension"][layer - 1]
            C_SIZE = vhd_dict["filter_channel"][layer - 1]

        FILTER_WIDTH = vhd_dict["filter_dimension"][layer]
        CONVS_PER_LINE = vhd_dict["layer_dimension"][layer]
        generic_dict2 = {
            "X_SIZE": X_SIZE,
            "C_SIZE": C_SIZE,
            "FILTER_WIDTH": FILTER_WIDTH,
            "CONVS_PER_LINE": CONVS_PER_LINE,
            "LAYER": layer,
        }
        path.mkdir(parents=True, exist_ok=True)
        generate_generic_dict = {**generic_dict, **generic_dict2}
        # generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
        self.generate_config_file({**generate_generic_dict, "N_CHANNEL": C_SIZE}, path, layer)

    def generate_samples(self, input_channel, generic_dict, vhd_dict, layer, path, single_file):
        path_samples = path / 'samples'
        path_samples.mkdir(parents=True, exist_ok=True)
        generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
        # Generate generic file for rtl simulation
        self.generate_ifmap_vhd_pkg(path=path_samples, **generate_vhd)
        self.generate_gold_vhd_pkg(path=path_samples, **generate_vhd)

    def generate_generic_file(self, generate_layer_dict, path, n_layer):
        CLK_HALF = self.generic_dict["CLK_PERIOD"] / 2
        RST_TIME = CLK_HALF * 5
        if "core" in path.as_posix():
            data_path = relpath(path.parent, (Path(__file__).parent.parent.parent / "sim_rtl"))
        else:
            data_path = relpath(path, (Path(__file__).parent.parent.parent / "sim_rtl"))

        generate_dict2 = {
            **{k: v for k, v in self.generic_dict.items() if k not in ["N_FILTER", "STRIDE"]},
            ** generate_layer_dict,
            "CLK_HALF": CLK_HALF,
            "RST_TIME": RST_TIME,
            "RISE_START": CLK_HALF * 2.0 + RST_TIME + self.generic_dict["IN_DELAY"],
            "FALL_START": CLK_HALF * 4.0 + RST_TIME + self.generic_dict["IN_DELAY"],
            "N_FILTER": self.generic_dict["N_FILTER"][n_layer],
            "STRIDE": self.generic_dict["STRIDE"][n_layer],
            "PATH": data_path,
        }
        line = (
            "-gN_FILTER={N_FILTER} -gSTRIDE={STRIDE} -gX_SIZE={X_SIZE} -gFILTER_WIDTH={FILTER_WIDTH} "
            "-gCONVS_PER_LINE={CONVS_PER_LINE} -gMEM_SIZE={MEM_SIZE} -gINPUT_SIZE={INPUT_SIZE} -gCARRY_SIZE={CARRY_SIZE} "
            "-gCLK_PERIOD={CLK_HALF}ns -gRST_TIME={RST_TIME}ns -gRISE_START={RISE_START}ns -gFALL_START={FALL_START}ns "
            "-gIN_DELAY={IN_DELAY}ns -gLAT={LAT} -gN_CHANNEL={C_SIZE} -gSHIFT={SHIFT} -gN_LAYER={N_LAYER} -gPATH={PATH} "
            "-gOP_TYPE={OP_TYPE}"
            "\n"
        ).format(**generate_dict2)

        with open(path / "generic_file.txt", "w") as f:
            f.write(line)

    def generate_tcl_generic(self, generic_dict_layer, path, n_layer):
        generate_dict2 = {
            **{k: v for k, v in self.generic_dict.items() if k not in ["N_FILTER", "STRIDE"]},
            **generic_dict_layer,
            "N_FILTER": self.generic_dict["N_FILTER"][n_layer],
            "STRIDE": self.generic_dict["STRIDE"][n_layer],
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

    def generate_config_file(self, X_SIZE, CONVS_PER_LINE, N_CHANNEL, path, n_layer):
        generate_dict2 = {
            "N_FILTER": self.generic_dict["N_FILTER"][n_layer],
            "N_CHANNEL": N_CHANNEL,
            "X_SIZE": X_SIZE,
            "X_SIZE_X_SIZE": X_SIZE ** 2,
            "CONVS_PER_LINE": CONVS_PER_LINE,
            "CONVS_PER_LINE_CONVS_PER_LINE": CONVS_PER_LINE ** 2,
            "CONVS_PER_LINE_CONVS_PER_LINE_1": (CONVS_PER_LINE ** 2) + 1,
            "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
                (CONVS_PER_LINE ** 2) * N_CHANNEL,
            "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
                (CONVS_PER_LINE ** 2) * (N_CHANNEL - 1),
            "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
                (CONVS_PER_LINE ** 2) * N_CHANNEL * self.generic_dict["N_FILTER"][n_layer],

            "LOG_N_FILTER": log2ceil(self.generic_dict["N_FILTER"][n_layer]),
            "LOG_N_CHANNEL": log2ceil(N_CHANNEL),
            "LOG_X_SIZE": log2ceil(X_SIZE),
            "LOG_X_SIZE_X_SIZE": log2ceil(X_SIZE ** 2),
            "LOG_CONVS_PER_LINE": log2ceil(CONVS_PER_LINE),
            "LOG_CONVS_PER_LINE_CONVS_PER_LINE": log2ceil(CONVS_PER_LINE ** 2),
            "LOG_CONVS_PER_LINE_CONVS_PER_LINE_1": log2ceil((CONVS_PER_LINE ** 2) + 1),
            "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
                log2ceil((CONVS_PER_LINE ** 2) * N_CHANNEL),
            "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
                log2ceil((CONVS_PER_LINE ** 2) * (N_CHANNEL - 1)),
            "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
                log2ceil((CONVS_PER_LINE ** 2) * N_CHANNEL * self.generic_dict["N_FILTER"][n_layer]),
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

    def generate_iwght_vhd_pkg(self, layer, path):
        modelDict = self.model_dict
        shift = self.vhd_dict["shift"]
        tab = "    "

        bias_list = self.get_bias(layer, modelDict, shift)
        weight_list = self.get_wght(layer, modelDict, shift)

        bias_string = f"{tab}-- layer={layer}\n{tab}{', '.join(bias_list)},\n"
        weight_string = [
            f"{tab}-- layer={layer} filter={f} channel={c}\n{tab}{', '.join(s)},\n"
            for filters in weight_list
            for f, channel in enumerate(filters)
            for c, s in enumerate(channel)
        ]

        package = "iwght_package"
        constant = "input_wght"
        data = "".join([f"{tab}-- bias\n"] + [bias_string] + [f"\n{tab}-- weights\n"] + weight_string)
        write_mem_pkg(constant, data, "iwght_pkg", package, path)
        with open(path / "iwght.txt", "w") as f:
            f.writelines([f"{b}\n" for b in bias_list])
            f.writelines([f"{s}\n" for f in weight_list for c in f for li in c for s in li])

    def get_wght(self, layer, modelDict, shift):
        if modelDict[layer]["type"] == "Dense":
            weight_list = [[[
                [str(i) for i in (v["weights"] * shift).astype(int).tolist()]
                for k, v
                in modelDict[layer]["neuron"].items()
            ]]]
        elif modelDict[layer]["type"] == "Conv2D":
            weight_list = [
                [[[str(int(weights[x, y, z].reshape(-1)))
                   for x in range(weights.shape[0])
                   for y in range(weights.shape[1])]

                  for weights in [modelDict[layerId]["filter"][filterId]["weights"] * shift]
                  for z in range(weights.shape[2])]

                 for filterId in modelDict[layerId]["filter"]
                 ]
                for layerId in modelDict
                if modelDict[layerId]["type"] in ["Conv2D", "Dense"]
                if layerId == layer
            ]
        else:
            weight_list = []
        return weight_list

    def get_bias(self, layer, modelDict, shift):
        if modelDict[layer]["type"] == "Dense":
            bias_list = [
                str(int(v["bias"] * shift * shift))
                for k, v
                in modelDict[layer]["neuron"].items()
            ]
        elif modelDict[layer]["type"] == "Conv2D":
            bias_list = [
                str(int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift))
                for layerId in modelDict
                if modelDict[layerId]["type"] == "Conv2D"
                if layerId == layer
                for filterId in modelDict[layerId]["filter"]
            ]
        else:
            bias_list = []
        return bias_list

    def generate_iwght_bram(self, modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                            testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
        bias_list = self.get_bias(layer, modelDict, shift)
        weight_list = self.get_wght(layer, modelDict, shift)
        weight_unpack = [feat for c in weight_list for col in c for line in col for feat in line]
        data = bias_list + weight_unpack
        return data

    def generate_ifmap_vhd_pkg(self, path, layer):
        tab = "    "
        feat_list = self.get_feature_data(layer, tab, path)

        format_feat = format_feature(feat_list, tab)

        package = "ifmap_package"
        constant = "input_map"
        data = "".join([f"\n{tab}-- ifmap\n"] + format_feat)

        write_mem_txt(feat_list, "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

    def generate_gold_fc_vhd_pkg(self, modelDict, shift, layer, path):
        tab = "    "
        feature = open_file(path.parent / str(layer - 1) / 'gold.txt')

        weights = [
            (v["weights"] * shift).astype(int).tolist()
            for k, v
            in modelDict[layer]["neuron"].items()
        ]

        bias = [
            int(v["bias"] * shift * shift)
            for k, v
            in modelDict[layer]["neuron"].items()
        ]

        gold = [
            np.dot(feature, w) + b
            for w, b
            in zip(weights, bias)
        ]

        weights_bias_plain = bias + [ww for w in weights for ww in w]
        bias_string = f"{tab}-- layer={layer}\n{tab}{', '.join(map(str, bias))},\n"
        weight_string = [
            f"{tab}-- layer={layer} channel={c}\n{tab}{', '.join(map(str, s))},\n"
            for c, s in enumerate(weights)
        ]
        package = "iwght_package"
        constant = "input_wght"
        data = "".join([f"{tab}-- bias\n"] + [bias_string] + [f"\n{tab}-- weights\n"] + weight_string)

        write_mem_txt([[weights_bias_plain]], "iwght", path)
        write_mem_pkg(constant, data, "iwght_pkg", package, path)

        package = "ifmap_package"
        constant = "input_map"
        data = f"\n{tab}-- ifmap\n{tab}" + ", ".join(str(i) for i in feature) + ","

        write_mem_txt([[feature]], "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

        package = "gold_package"
        constant = "gold"
        data = f"\n{tab}-- ifmap\n{tab}" + ", ".join(str(i) for i in gold) + ","
        write_mem_txt([[gold]], "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)


    def fc(self, modelDict, shift, layer, gen_features, path):
        feature = open_file(path.parent / str(layer - 1) / 'gold.txt')

        weights = [
            (v["weights"] * shift).astype(int).tolist()
            for k, v
            in modelDict[layer]["neuron"].items()
        ]

        bias = [
            int(v["bias"] * shift * shift)
            for k, v
            in modelDict[layer]["neuron"].items()
        ]

        gold = [
            np.dot(feature, w) + b
            for w, b
            in zip(weights, bias)
        ]
        if gen_features:
            return [[feature]]
        else:
            return [[gold]]

    def generate_gold_maxpool_vhd_pkg(self, layer, path):
        tab = "    "
        feature = open_file(path.parent / str(layer) / 'gold.txt')
        arr = np.array(feature).reshape(-1, 3, 3)

        gold = pool2d(arr, kernel_size=3, stride=3, padding=0, pool_mode='max').reshape(-1).tolist()

        package = "ifmap_package"
        constant = "input_map"
        data = f"\n{tab}-- ifmap\n{tab}" + ", ".join(str(i) for i in feature) + ","

        write_mem_txt([[feature]], "ifmap", path)
        write_mem_pkg(constant, data, "ifmap_pkg", package, path)

        package = "gold_package"
        constant = "gold"
        data = f"\n{tab}-- ifmap\n{tab}" + ", ".join(str(i) for i in gold) + ","
        write_mem_txt([[gold]], "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)

    def generate_ifmap_bram(self, modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                            input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
        tab = "    "
        feat_list = self.get_feature_data(filter_channel, filter_dimension, input_channel, layer, layer_dimension,
                                          modelDict, shift, stride_h, stride_w, tab, testSet, testSetSize, path)
        feat_unpack = [feat for c in feat_list for col in c for feat in col]
        return feat_unpack

    def get_feature_data(self, layer, tab, path):
        filter_channel = self.vhd_dict["filter_channel"]
        filter_dimension = self.vhd_dict["filter_dimension"]
        input_channel = self.input_channel
        layer_dimension = self.vhd_dict["layer_dimension"]
        modelDict = self.vhd_dict["modelDict"]
        shift = self.vhd_dict["shift"]
        stride_h = self.vhd_dict["stride_h"]
        stride_w = self.vhd_dict["stride_w"]
        testSet = self.vhd_dict["testSet"]
        testSetSize = self.vhd_dict["testSetSize"]
        gen_features = True
        if layer == 0:
            feat_list = [
                [[str(int(image_shift[x, y, z]))
                  for y in range(image_shift.shape[1])]
                 for x in range(image_shift.shape[0])]
                for i, image in enumerate(testSet)
                if i in range(testSetSize)
                for image_shift in [image * shift]
                for z in range(image_shift.shape[2])
            ]
        else:
            if modelDict[layer]["type"] == "Dense":
                feat_list = self.fc(modelDict, shift, layer, gen_features, path)
            elif modelDict[layer]["type"] == "Conv2D":
                feat_list = conv2d(
                    gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
                    stride_h, stride_w, tab, testSet, testSetSize
                )
            else:
                feat_list = []
        return feat_list

    def generate_gold_vhd_pkg(self, layer, path):
        tab = "    "
        gen_features = False
        filter_channel = self.vhd_dict["filter_channel"]
        filter_dimension = self.vhd_dict["filter_dimension"]
        input_channel = self.input_channel
        layer_dimension = self.vhd_dict["layer_dimension"]
        modelDict = self.vhd_dict["modelDict"]
        shift = self.vhd_dict["shift"]
        stride_h = self.vhd_dict["stride_h"]
        stride_w = self.vhd_dict["stride_w"]
        testSet = self.vhd_dict["testSet"]
        testSetSize = self.vhd_dict["testSetSize"]

        if self.model_dict[layer]["type"] == "Dense":
            feat_list = self.fc(self.model_dict, shift, layer, gen_features, path)
        elif self.model_dict[layer]["type"] == "Conv2D":
            feat_list = conv2d(
                gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
                stride_h, stride_w, tab, testSet, testSetSize
            )
        else:
            feat_list = []

        format_feat = format_feature(feat_list, tab)

        package = "gold_package"
        constant = "gold"
        data = "".join([f"\n{tab}-- gold\n"] + format_feat)
        write_mem_txt(feat_list, "gold", path)
        write_mem_pkg(constant, data, "gold_pkg", package, path)

    def generate_gold_bram(self, modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                           testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
        tab = "    "
        gen_features = False

        feat_list = conv2d(
            gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
            stride_h, stride_w, tab, testSet, testSetSize
        )
        feat_unpack = [feat for c in feat_list for col in c for feat in col]
        return feat_unpack

