from pathlib import Path
from os.path import relpath
from math import log2, ceil

from .model import convolution_from_weights, generate_ifmem_vhd_pkg


bram_size_dict = {
    64: "18Kb",
    128: "36Kb"
}

bram18kb_dict = {
    (19, 36): {"BRAM_ADDR": 9, "BRAM_WE": 4, "DEPTH": 512},
    (10, 18): {"BRAM_ADDR": 10, "BRAM_WE": 2, "DEPTH": 1024},
    (5, 9): {"BRAM_ADDR": 11, "BRAM_WE": 1, "DEPTH": 2048},
    (3, 4): {"BRAM_ADDR": 12, "BRAM_WE": 1, "DEPTH": 4096},
    (2, 2): {"BRAM_ADDR": 13, "BRAM_WE": 1, "DEPTH": 8192},
    (1, 1): {"BRAM_ADDR": 14, "BRAM_WE": 1, "DEPTH": 16384},
}

bram36kb_dict = {
    (37, 72): {"BRAM_ADDR": 9, "BRAM_WE": 8, "DEPTH": 512},
    (19, 36): {"BRAM_ADDR": 10, "BRAM_WE": 4, "DEPTH": 1024},
    (10, 18): {"BRAM_ADDR": 11, "BRAM_WE": 2, "DEPTH": 2048},
    (5, 9): {"BRAM_ADDR": 12, "BRAM_WE": 1, "DEPTH": 4096},
    (3, 4): {"BRAM_ADDR": 13, "BRAM_WE": 1, "DEPTH": 8192},
    (2, 2): {"BRAM_ADDR": 14, "BRAM_WE": 1, "DEPTH": 16384},
    (1, 1): {"BRAM_ADDR": 15, "BRAM_WE": 1, "DEPTH": 32768},
}


def log2ceil(x):
    return ceil(log2(x)) + 1


def write_mem_pkg(constant, data, file_name, package, path):
    with open(Path(__file__).parent.resolve() / "template_inmem_pkg.vhd", "r") as f:
        text = f.read()
    text_out = text.format(package=package, constant=constant, data=data)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_dist_bram(entity, file_name, init, path, bram_size='18Kb', device="SERIES"):
    with open(Path(__file__).parent.resolve() / "bram_unisim_template.vhd", "r") as f:
        text = f.read()
    text_out = text.format(entity=entity, bram_size=bram_size, device=device, init=init)
    with open(path / f"{file_name}.vhd", "w") as f:
        f.write(text_out)


def write_bram(entity, init, bram_size, device, file_name, path):
    with open(Path(__file__).parent.resolve() / "bram_unisim_template.vhd", "r") as f:
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


def two_comp(val, nbits):
    # https://stackoverflow.com/questions/7822956/how-to-convert-negative-integer-value-to-hex-in-python
    return (val + (1 << nbits)) % (1 << nbits)


def format_bram_pkg(name, feat_list, bits=16, lines_per_file=64):
    word = ceil(bits / 4)
    feat_hex = [format(two_comp(int(feat), bits), f'0{word}x') for feat in feat_list]
    total_words = ceil(64 / word)
    feat_line = ["".join(feat_hex[i:i + total_words]) for i in range(0, len(feat_hex), total_words)]
    feat_file = [feat_line[i:i + lines_per_file] for i in range(0, len(feat_line), lines_per_file)]

    bram_size = bram_size_dict[lines_per_file]
    with open(Path(__file__).parent.resolve() / f"bram_unisim_{bram_size}_template.vhd", "r") as f:
        text = f.read()

    list_entity = [f"{name}_entity{i}" for i, file in enumerate(feat_file)]

    list_text_out = [
        text.format(
            label=f"MEM_{entity.upper()}", bram_name=entity, init_xx=init_data(file, lines_per_file))
        for i, (file, entity) in enumerate(zip(feat_file, list_entity))
    ]

    blocks_string = "".join(list_text_out)
    return blocks_string, len(feat_file)
    # write_bram_pkg(blocks_string, lines_per_file, path, bits)


def write_bram_pkg(blocks_string, lines_per_file, path, bits):
    bram_size = bram_size_dict[lines_per_file]
    if bram_size == '18Kb':
        bram_dict = bram18kb_dict
    else:
        bram_dict = bram36kb_dict
    bram_width = [
        v for k, v in bram_dict.items()
        if k[0] < bits < k[1]
    ]
    bram_addr = bram_width[0]["BRAM_ADDR"]
    bram_we = bram_width[0]["BRAM_WE"]
    with open(Path(__file__).parent.resolve() / "bram_unisim_template.vhd", "r") as f:
        bram_wrapper = f.read()
    text_out = bram_wrapper.format(
        code=blocks_string, bram_addr=bram_addr, bram_we=bram_we, data_width=bits
    )
    with open(path, "w") as f:
        f.writelines(text_out)


def init_data(file, lines_per_file):
    file_complete = file if len(file) == lines_per_file else file + ['0' * 64] * (lines_per_file - len(file))
    return file_complete


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


def generate_files(input_c, input_w, input_channel, generic_dict, vhd_dict, layer, path):
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
    path_layer = path / 'layer' / str(layer)
    path_layer.mkdir(parents=True, exist_ok=True)
    generate_generic_dict = {**generic_dict, **generic_dict2}
    generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
    # Generate generic file for rtl simulation
    generate_generic_file(generate_generic_dict, path_layer, layer)
    # Generate TCL file with generics for logic synthesis
    generate_tcl_generic(generate_generic_dict, path_layer, layer)
    # Generate VHDL tensorflow package
    generate_ifmem_vhd_pkg(path=path_layer, **generate_vhd)
    generate_iwght_vhd_pkg(path=path_layer, **generate_vhd)
    generate_ifmap_vhd_pkg(path=path_layer, **generate_vhd)
    # Generate VHDL gold output package
    generate_gold_vhd_pkg(path=path_layer, **generate_vhd)
    generate_bram_files(
        path=path_layer, bits=generic_dict["MEM_SIZE"],
        **generate_vhd
    )
    # generate_gold_bram(
    #     path=path_layer, bits=generic_dict["MEM_SIZE"],
    #     **{**generate_vhd, "layer": len(vhd_dict["filter_dimension"]) - 1}
    # )
    # generate_iwght_bram(
    #     path=path_layer, bits=generic_dict["MEM_SIZE"],
    #     **{**generate_vhd, "layer": len(vhd_dict["filter_dimension"]) - 1}
    # )
    generate_config_file({**generate_generic_dict, "N_CHANNEL": C_SIZE}, path_layer, layer)


# def generate_bram_files(input_channel, generic_dict, vhd_dict, layer, path):
#     path.mkdir(parents=True, exist_ok=True)
#     generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
#     # Generate generic file for rtl simulation
#     generate_ifmap_bram(path=path, bits=generic_dict["MEM_SIZE"], **generate_vhd)
#     generate_gold_bram(
#         path=path, bits=generic_dict["MEM_SIZE"],
#         **{**generate_vhd, "layer": len(vhd_dict["filter_dimension"]) - 1}
#     )
#     generate_iwght_bram(
#         path=path, bits=generic_dict["MEM_SIZE"],
#         **{**generate_vhd, "layer": len(vhd_dict["filter_dimension"]) - 1}
#     )


def generate_samples(input_channel, generic_dict, vhd_dict, layer, path, single_file):
    path_samples = path / 'samples'
    path_samples.mkdir(parents=True, exist_ok=True)
    generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer": layer}
    # Generate generic file for rtl simulation
    generate_ifmap_vhd_pkg(path=path_samples, **generate_vhd)
    generate_gold_vhd_pkg(path=path_samples, **generate_vhd)
    generate_samples_files(
        path=path_samples, bits=generic_dict["MEM_SIZE"],
        **{**generate_vhd, "last_layer": len(vhd_dict["filter_dimension"]) - 1}
    )


def generate_generic_file(generate_dict, path, n_layer):
    CLK_HALF = generate_dict["CLK_PERIOD"] / 2
    RST_TIME = CLK_HALF * 5
    if "core" in path.as_posix():
        data_path = relpath(path.parent, (Path(__file__).parent.parent.parent / "sim_rtl"))
    else:
        data_path = relpath(path, (Path(__file__).parent.parent.parent / "sim_rtl"))

    generate_dict2 = {
        **{k: v for k, v in generate_dict.items() if k not in ["N_FILTER", "STRIDE"]},
        "CLK_HALF": CLK_HALF,
        "RST_TIME": RST_TIME,
        "RISE_START": CLK_HALF * 2.0 + RST_TIME + generate_dict["IN_DELAY"],
        "FALL_START": CLK_HALF * 4.0 + RST_TIME + generate_dict["IN_DELAY"],
        "N_FILTER": generate_dict["N_FILTER"][n_layer],
        "STRIDE": generate_dict["STRIDE"][n_layer],
        "PATH": data_path,
    }
    line = (
        "-gN_FILTER={N_FILTER} -gSTRIDE={STRIDE} -gX_SIZE={X_SIZE} -gFILTER_WIDTH={FILTER_WIDTH} "
        "-gCONVS_PER_LINE={CONVS_PER_LINE} -gMEM_SIZE={MEM_SIZE} -gINPUT_SIZE={INPUT_SIZE} -gCARRY_SIZE={CARRY_SIZE} "
        "-gCLK_PERIOD={CLK_HALF}ns -gRST_TIME={RST_TIME}ns -gRISE_START={RISE_START}ns -gFALL_START={FALL_START}ns "
        "-gIN_DELAY={IN_DELAY}ns -gLAT={LAT} -gN_CHANNEL={C_SIZE} -gSHIFT={SHIFT} -gN_LAYER={N_LAYER} -gPATH={PATH}"
        "\n"
    ).format(**generate_dict2)

    with open(path / "generic_file.txt", "w") as f:
        f.write(line)


def generate_tcl_generic(generate_dict, path, n_layer):
    generate_dict2 = {
        **{k: v for k, v in generate_dict.items() if k not in ["N_FILTER", "STRIDE"]},
        "N_FILTER": generate_dict["N_FILTER"][n_layer],
        "STRIDE": generate_dict["STRIDE"][n_layer],
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


def generate_config_file(generate_dict, path, n_layer):
    generate_dict2 = {
        "N_FILTER": generate_dict["N_FILTER"][n_layer],
        "N_CHANNEL": generate_dict["N_CHANNEL"],
        "X_SIZE": generate_dict["X_SIZE"],
        "X_SIZE_X_SIZE": generate_dict["X_SIZE"] ** 2,
        "CONVS_PER_LINE": generate_dict["CONVS_PER_LINE"],
        "CONVS_PER_LINE_CONVS_PER_LINE": generate_dict["CONVS_PER_LINE"] ** 2,
        "CONVS_PER_LINE_CONVS_PER_LINE_1": (generate_dict["CONVS_PER_LINE"] ** 2) + 1,
        "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
            (generate_dict["CONVS_PER_LINE"] ** 2) * generate_dict["N_CHANNEL"],
        "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
            (generate_dict["CONVS_PER_LINE"] ** 2) * (generate_dict["N_CHANNEL"] - 1),
        "CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
            (generate_dict["CONVS_PER_LINE"] ** 2) * generate_dict["N_CHANNEL"] * generate_dict["N_FILTER"][n_layer],

        "LOG_N_FILTER": log2ceil(generate_dict["N_FILTER"][n_layer]),
        "LOG_N_CHANNEL": log2ceil(generate_dict["N_CHANNEL"]),
        "LOG_X_SIZE": log2ceil(generate_dict["X_SIZE"]),
        "LOG_X_SIZE_X_SIZE": log2ceil(generate_dict["X_SIZE"] ** 2),
        "LOG_CONVS_PER_LINE": log2ceil(generate_dict["CONVS_PER_LINE"]),
        "LOG_CONVS_PER_LINE_CONVS_PER_LINE": log2ceil(generate_dict["CONVS_PER_LINE"] ** 2),
        "LOG_CONVS_PER_LINE_CONVS_PER_LINE_1": log2ceil((generate_dict["CONVS_PER_LINE"] ** 2) + 1),
        "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL":
            log2ceil((generate_dict["CONVS_PER_LINE"] ** 2) * generate_dict["N_CHANNEL"]),
        "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1":
            log2ceil((generate_dict["CONVS_PER_LINE"] ** 2) * (generate_dict["N_CHANNEL"] - 1)),
        "LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER":
            log2ceil((generate_dict["CONVS_PER_LINE"] ** 2) * generate_dict["N_CHANNEL"] * generate_dict["N_FILTER"][
                n_layer]),
    }

    with open(Path(__file__).parent.resolve() / "template_config_pkg.vhd", "r") as f:
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


def generate_iwght_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):
    tab = "    "

    bias_list = get_bias(layer, modelDict, shift)
    weight_list = get_wght(layer, modelDict, shift)

    bias_string = f"{tab}-- layer={layer}\n{tab}{', '.join(bias_list)},\n"
    weight_string = [
        f"{tab}-- layer={layer} filter={f} channel={c}\n{tab}{', '.join(s)},\n"
        for filters in weight_list
        for f, channel in enumerate(filters)
        for c, s in enumerate(channel)
    ]

    file_name = "iwght_pkg"
    package = "iwght_package"
    constant = "input_wght"
    data = "".join([f"{tab}-- bias\n"] + [bias_string] + [f"\n{tab}-- weights\n"] + weight_string)
    write_mem_pkg(constant, data, file_name, package, path)
    with open(path / f"{file_name}.txt", "w") as f:
        f.writelines([f"{b}\n" for b in bias_list])
        f.writelines([f"{s}\n" for f in weight_list for c in f for li in c for s in li])


def get_wght(layer, modelDict, shift):
    weight_list = [
        [[[str(int(weights[x, y, z].reshape(-1)))
           for x in range(weights.shape[0])
           for y in range(weights.shape[1])]

          for weights in [modelDict[layerId]["filter"][filterId]["weights"] * shift]
          for z in range(weights.shape[2])]

         for filterId in modelDict[layerId]["filter"]
         ]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
    ]
    return weight_list


def get_bias(layer, modelDict, shift):
    bias_list = [
        str(int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift))
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
        for filterId in modelDict[layerId]["filter"]
    ]
    return bias_list


def generate_iwght_bram(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
    bias_list = get_bias(layer, modelDict, shift)
    weight_list = get_wght(layer, modelDict, shift)
    weight_unpack = [feat for c in weight_list for col in c for line in col for feat in line]
    data = bias_list + weight_unpack
    # if single_file:
    #     write_bram_txt(feat_unpack, path / f"ifmap_064lines{bits}bits.txt", bits, 64)
    #     write_bram_txt(feat_unpack, path / f"ifmap_128lines{bits}bits.txt", bits, 128)
    # else:
    # path_samples = path / 'samples/ifmap'
    # path_samples.mkdir(parents=True, exist_ok=True)
    # write_bram_txt(feat_unpack, path_samples / f"064lines{bits}bits.txt", bits, 64)
    # write_bram_txt(feat_unpack, path_samples / f"128lines{bits}bits.txt", bits, 128)
    return data
    # write_bram_pkg(f"iwght_18k_layer{layer}", "7SERIES", data, path / "iwght_bram_18Kb.vhd", bits, 64)
    # write_bram_pkg(f"iwght_36k_layer{layer}", "7SERIES", data, path / "iwght_bram_36Kb.vhd", bits, 128)


def generate_ifmap_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):
    tab = "    "
    feat_list = get_feature_data(filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict,
                                 shift, stride_h, stride_w, tab, testSet, testSetSize)

    format_feat = format_feature(feat_list, tab)

    file_name = "ifmap_pkg"
    package = "ifmap_package"
    constant = "input_map"
    data = "".join([f"\n{tab}-- ifmap\n"] + format_feat)

    write_mem_txt(feat_list, file_name, path)
    write_mem_pkg(constant, data, file_name, package, path)
    # write_bram(entity, init, bram_size, device, file_name, path)


def generate_ifmap_bram(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
    tab = "    "
    feat_list = get_feature_data(filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict,
                                 shift, stride_h, stride_w, tab, testSet, testSetSize)
    feat_unpack = [feat for c in feat_list for col in c for feat in col]
    # if single_file:
    #     write_bram_txt(feat_unpack, path / f"ifmap_064lines{bits}bits.txt", bits, 64)
    #     write_bram_txt(feat_unpack, path / f"ifmap_128lines{bits}bits.txt", bits, 128)
    # else:
    # path_samples = path / 'samples/ifmap'
    # path_samples.mkdir(parents=True, exist_ok=True)
    # write_bram_txt(feat_unpack, path_samples / f"064lines{bits}bits.txt", bits, 64)
    # write_bram_txt(feat_unpack, path_samples / f"128lines{bits}bits.txt", bits, 128)
    return feat_unpack
    # write_bram_pkg(f"ifmap_18k_layer{layer}", "7SERIES", feat_unpack, path / "ifmap_bram_18Kb.vhd", bits, 64)
    # write_bram_pkg(f"ifmap_36k_layer{layer}", "7SERIES", feat_unpack, path / "ifmap_bram_36Kb.vhd", bits, 128)


def get_feature_data(filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
                     stride_h, stride_w, tab, testSet, testSetSize):
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
        feat_list = convolution_from_weights(
            gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
            stride_h, stride_w, tab, testSet, testSetSize
        )
    return feat_list


def generate_gold_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                          input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):
    tab = "    "
    gen_features = False

    feat_list = convolution_from_weights(
        gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
        stride_h, stride_w, tab, testSet, testSetSize
    )

    format_feat = format_feature(feat_list, tab)

    file_name = "gold_pkg"
    package = "gold_package"
    constant = "gold"
    data = "".join([f"\n{tab}-- gold\n"] + format_feat)
    write_mem_txt(feat_list, file_name, path)
    write_mem_pkg(constant, data, file_name, package, path)


def generate_gold_bram(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                       testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):
    tab = "    "
    gen_features = False

    feat_list = convolution_from_weights(
        gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension, modelDict, shift,
        stride_h, stride_w, tab, testSet, testSetSize
    )
    feat_unpack = [feat for c in feat_list for col in c for feat in col]
    # if single_file:
    #     write_bram_txt(feat_unpack, path / f"gold_064lines{bits}bits.txt", bits, 64)
    #     write_bram_txt(feat_unpack, path / f"gold_128lines{bits}bits.txt", bits, 128)
    # else:
    # path_gold = path / 'samples/gold'
    # path_gold.mkdir(parents=True, exist_ok=True)
    # write_bram_txt(feat_unpack, path_gold / f"064lines{bits}bits.txt", bits, 64)
    # write_bram_txt(feat_unpack, path_gold / f"128lines{bits}bits.txt", bits, 128)
    return feat_unpack
    # write_bram_pkg(f"gold_18k_layer{layer}", "7SERIES", feat_unpack, path / f"gold_bram_18Kb.vhd", bits, 64)
    # write_bram_pkg(f"gold_36k_layer{layer}", "7SERIES", feat_unpack, path / f"gold_bram_36Kb.vhd", bits, 128)


def generate_bram_files(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits):

    wght = generate_iwght_bram(
        modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits
    )
    wght_18k, wght_18k_size = format_bram_pkg(f"iwght_layer{layer}", wght, bits, 128)
    wght_36k, wght_36k_size = format_bram_pkg(f"iwght_layer{layer}", wght, bits, 64)

    fmap = generate_ifmap_bram(
        modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits
    )
    fmap_18k, fmap_18k_size = format_bram_pkg(f"ifmap_layer{layer}", fmap, bits, 64)
    fmap_36k, fmap_36k_size = format_bram_pkg(f"ifmap_layer{layer}", fmap, bits, 128)

    gold = generate_gold_bram(
        modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits
    )
    gold_18k, gold_18k_size = format_bram_pkg(f"gold_layer{layer}", gold, bits, 64)
    gold_36k, gold_36k_size = format_bram_pkg(f"gold_layer{layer}", gold, bits, 128)

    bram18k = wght_18k + fmap_18k + gold_18k
    bram36k = wght_36k + fmap_36k + gold_36k

    write_bram_pkg(bram18k, 64, path / "bram_18Kb.vhd", bits)
    write_bram_pkg(bram36k, 128, path / "bram_36Kb.vhd", bits)

    generic18k = " ".join(
        f"-gN_BRAM_{n}={max(2, i)}" for i, n in
        zip([wght_18k_size, fmap_18k_size, gold_18k_size], ["IWGHT", "IFMAP", "GOLD"])
    )
    generic36k = " ".join(
        f"-gN_BRAM_{n}={max(2, i)}" for i, n in
        zip([wght_36k_size, fmap_36k_size, gold_36k_size], ["IWGHT", "IFMAP", "GOLD"])
    )
    with open(path / "generic_file_bram18k.vhd", "w") as f:
        f.write(generic18k)

    with open(path / "generic_file_bram36k.vhd", "w") as f:
        f.write(generic36k)


def generate_samples_files(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits,
                           last_layer):

    fmap = generate_ifmap_bram(
        modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
        testSet, testLabel, stride_h, stride_w, testSetSize, layer, path, bits
    )
    fmap_18k, fmap_18k_size = format_bram_pkg(f"ifmap_layer{layer}", fmap, bits, 64)
    fmap_36k, fmap_36k_size = format_bram_pkg(f"ifmap_layer{layer}", fmap, bits, 128)

    gold = generate_gold_bram(
        modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
        testSet, testLabel, stride_h, stride_w, testSetSize, last_layer, path, bits
    )
    gold_18k, gold_18k_size = format_bram_pkg(f"gold_layer{layer}", gold, bits, 64)
    gold_36k, gold_36k_size = format_bram_pkg(f"gold_layer{layer}", gold, bits, 128)

    bram18k = fmap_18k + gold_18k
    bram36k = fmap_36k + gold_36k

    write_bram_pkg(bram18k, 64, path / "bram_18Kb.vhd", bits)
    write_bram_pkg(bram36k, 128, path / "bram_36Kb.vhd", bits)

    generic18k = " ".join(
        f"-gN_BRAM_{n}={max(2, i)}" for i, n in
        zip([fmap_18k_size, gold_18k_size], ["IWGHT", "IFMAP", "GOLD"])
    )
    generic36k = " ".join(
        f"-gN_BRAM_{n}={max(2, i)}" for i, n in
        zip([fmap_36k_size, gold_36k_size], ["IWGHT", "IFMAP", "GOLD"])
    )
    with open(path / "generic_file_bram18k.vhd", "w") as f:
        f.write(generic18k)

    with open(path / "generic_file_bram36k.vhd", "w") as f:
        f.write(generic36k)