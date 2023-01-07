import copy
import time

from pathlib import Path
from math import log2, ceil


def log2ceil(x):
    return ceil(log2(x)) + 1


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
    generate_generic_dict = {**generic_dict, **generic_dict2}
    generate_vhd = {**vhd_dict, "input_channel": input_channel, "layer":  layer}
    # Generate generic file for rtl simulation
    generate_generic_file(generate_generic_dict, path, layer)
    # Generate TCL file with generics for logic synthesis
    generate_tcl_generic(generate_generic_dict, path, layer)
    # Generate VHDL tensorflow package
    generate_ifmem_vhd_pkg(path=path, **generate_vhd)
    generate_wghts_vhd_pkg(path=path, **generate_vhd)
    generate_ifmap_vhd_pkg(path=path, **generate_vhd)
    # Generate VHDL gold output package
    generate_gold_vhd_pkg(path=path, **generate_vhd)
    generate_config_file({** generate_generic_dict, "N_CHANNEL": C_SIZE}, path, layer)


def generate_generic_file(generate_dict, path, n_layer):
    CLK_HALF = generate_dict["CLK_PERIOD"] / 2
    RST_TIME = CLK_HALF * 5
    generate_dict2 = {
        **{k: v for k, v in generate_dict.items() if k not in ["N_FILTER", "STRIDE"]},
        "CLK_HALF": CLK_HALF,
        "RST_TIME": RST_TIME,
        "RISE_START": CLK_HALF * 2.0 + RST_TIME + generate_dict["IN_DELAY"],
        "FALL_START": CLK_HALF * 4.0 + RST_TIME + generate_dict["IN_DELAY"],
        "N_FILTER": generate_dict["N_FILTER"][n_layer],
        "STRIDE": generate_dict["STRIDE"][n_layer],
    }
    line = (
        "-gN_FILTER={N_FILTER} -gSTRIDE={STRIDE} -gX_SIZE={X_SIZE} -gFILTER_WIDTH={FILTER_WIDTH} "
        "-gCONVS_PER_LINE={CONVS_PER_LINE} -gMEM_SIZE={MEM_SIZE} -gINPUT_SIZE={INPUT_SIZE} -gCARRY_SIZE={CARRY_SIZE} "
        "-gCLK_PERIOD={CLK_HALF}ns -gRST_TIME={RST_TIME}ns -gRISE_START={RISE_START}ns -gFALL_START={FALL_START}ns "
        "-gIN_DELAY={IN_DELAY}ns -gLAT={LAT} -gN_CHANNEL={C_SIZE} -gSHIFT={SHIFT}\n"
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
        "X_SIZE_X_SIZE": generate_dict["X_SIZE"]**2,
        "CONVS_PER_LINE": generate_dict["CONVS_PER_LINE"],
        "CONVS_PER_LINE_CONVS_PER_LINE": generate_dict["CONVS_PER_LINE"]**2,
        "CONVS_PER_LINE_CONVS_PER_LINE_1": (generate_dict["CONVS_PER_LINE"]**2) + 1,
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
            log2ceil((generate_dict["CONVS_PER_LINE"] ** 2) * generate_dict["N_CHANNEL"] * generate_dict["N_FILTER"][n_layer]),
    }

    with open(Path(__file__).parent.resolve() / "template_config_pkg.vhd", "r") as f:
        text = f.read()

    text_out = text.format(**generate_dict2)

    with open(path / "config_pkg.vhd", "w") as f:
        f.write(text_out)


def create_dictionary(model):
    # Create dictionary
    modelDict = {}

    # Initialize layer id to insert layers to dictionary
    layerId = 0

    # Iterate through model layers to populate dictionary
    for layer in list(model.layers):
        # Initialize layer in dictionary
        modelDict[layerId] = {}
        layerName = layer.name
        modelDict[layerId]["name"] = layerName
        # Get type of layer
        layerType = type(layer).__name__
        modelDict[layerId]["type"] = layerType
        # If layer is dense
        if layerType == "Dense":
            # Collect activation function
            layerActivation = str(layer.activation).split(" ")[1]
            modelDict[layerId]["activation"] = layerActivation
            # Initialize neuron dict
            modelDict[layerId]["neuron"] = {}
            # Iterate through variables of this layer
            for layerVar in layer.trainable_variables:
                # Check if weights
                if layerVar.name.split("/")[1] == "kernel:0":
                    numNeurons = layerVar.shape[1]
                    for neuronId in range(numNeurons):
                        # Add to dict
                        if not neuronId in modelDict[layerId]["neuron"]:
                            modelDict[layerId]["neuron"][neuronId] = {}
                        # Change matrix to represent weights per neuron instead of weights per input feature
                        modelDict[layerId]["neuron"][neuronId]["weights"] = layerVar[:, neuronId].numpy()
                # Check if bias
                elif layerVar.name.split("/")[1] == "bias:0":
                    numNeurons = layerVar.shape[0]
                    for neuronId in range(numNeurons):
                        # Add to dict
                        if not neuronId in modelDict[layerId]["neuron"]:
                            modelDict[layerId]["neuron"][neuronId] = {}
                        modelDict[layerId]["neuron"][neuronId]["bias"] = layerVar[neuronId].numpy()
        # If layer is conv
        elif layerType == "Conv2D":
            layerActivation = str(layer.activation).split(" ")[1]
            modelDict[layerId]["activation"] = layerActivation
            # Initialize filter dict
            modelDict[layerId]["filter"] = {}
            # Iterate through variables of this layer
            for layerVar in layer.trainable_variables:
                # Check if weights
                if layerVar.name.split("/")[1] == "kernel:0":
                    numFilters = layerVar.shape[3]
                    for filterId in range(numFilters):
                        # Add to dict
                        if not filterId in modelDict[layerId]["filter"]:
                            modelDict[layerId]["filter"][filterId] = {}
                        modelDict[layerId]["filter"][filterId]["weights"] = layerVar[:, :, :, filterId].numpy()
                # Check if bias
                elif layerVar.name.split("/")[1] == "bias:0":
                    numFilters = layerVar.shape[0]
                    for filterId in range(numFilters):
                        # Add to dict
                        if not filterId in modelDict[layerId]["filter"]:
                            modelDict[layerId]["filter"][filterId] = {}
                        modelDict[layerId]["filter"][filterId]["bias"] = layerVar[filterId].numpy()
        layerId += 1

    return modelDict

def generate_ifmem_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):

    tabs = "\t\t\t\t\t"
    # For layers != 0
    size = max(filter_channel)

    # Open file
    f = open(path / "inmem_pkg.vhd", "w")

    f.write("LIBRARY ieee;\n")
    f.write("USE ieee.std_logic_1164.all;\n")
    f.write("USE ieee.std_logic_signed.all;\n")
    f.write("\tPACKAGE inmem_package is\n")
    f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n\n")

    f.write("\t\tconstant input_mem: padroes := ( \n")
    f.write(f"{tabs}-- bias\n")
    bias_list = [
        [layerId, [str(int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift))
                   for filterId in modelDict[layerId]["filter"]]]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
    ]
    bias_list_filter = [
        f"{tabs}-- layer={layerId}\n{tabs}{', '.join(bias)},\n"
        for layerId, bias in bias_list
    ]
    f.writelines(bias_list_filter)
    f.write(f"\n{tabs}-- weights\n")

    string_weight = [
        [layerId, filterId, z, [str(int(weights[x, y, z].reshape(-1)))
                                for x in range(weights.shape[0])
                                for y in range(weights.shape[1])]]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
        for filterId in modelDict[layerId]["filter"]
        for weights in [modelDict[layerId]["filter"][filterId]["weights"]*shift]
        for z in range(weights.shape[2])
    ]
    string_weight_list = [
        f"{tabs}-- layer={la} filter={f} channel={c}\n{tabs}{', '.join(s)},\n" for la, f, c, s in string_weight
    ]

    f.writelines(string_weight_list)

    if layer == 0:
        # cont = 0
        # cont_size = 0
        # f.write(input_string)
        # for i in range(testSetSize):
        #     for image in testSet[i]:
        #         for feature in image:
        #             for pixel in feature:
        #                 if cont % 3 == 0:
        #                     pixel0.append(int(pixel * shift))
        #                 if cont % 3 == 1:
        #                     pixel1.append(int(pixel * shift))
        #                 if cont % 3 == 2:
        #                     pixel2.append(int(pixel * shift))
        #                 cont = cont + 1
        #
        #     cont_size = 0
        #     for pixel in pixel0:
        #         f.write(str(pixel))
        #         f.write(",")
        #         cont_size = cont_size + 1
        #
        #     for pixel in pixel1:
        #         f.write(str(pixel))
        #         f.write(",")
        #         cont_size = cont_size + 1
        #
        #     for pixel in pixel2:
        #         # TODO explicar essa linha
        #         if cont_size == input_size - 1:
        #             f.write(" others=>0 );")
        #             f.write("\n")
        #         else:
        #             f.write(str(pixel))
        #             f.write(",")
        #         cont_size = cont_size + 1
        #     pixel0 = []
        #     pixel1 = []
        #     pixel2 = []
        #
        # f.write("END inmem_package;\n")
        # # print("close file! -> layer = 0")
        # f.close()

        pixel = [
            [[i, z, x, [str(int(image_shift[x, y, z])) for y in range(image_shift.shape[1])]]
             for z in range(image_shift.shape[2])
             for x in range(image_shift.shape[0])]
            for i, image in enumerate(testSet)
            if i in range(testSetSize)
            for image_shift in [image * shift]
        ]

        string_pixel = [
            f"{tabs}-- image={p[0]} channel={p[1]} column={p[2]}\n{tabs}{','.join(p[3])},\n"
            for image in pixel
            for p in image
        ]
        f.write(f"\n{tabs}-- test image\n")
        f.writelines(string_pixel)
        f.write(f"\n{tabs}others=>0 );\nEND inmem_package;\n")
        f.close()

    else:
        # Dataset test variables
        cont_match = 0
        aux_idx_range = 0

        # Index control
        m = 0
        n = 0
        idx = 0
        filter_i = 0
        filter_j = 0

        # feature maps
        ifmap = []
        ofmap = []
        output = [0.0] * 10

        for testCase in range(testSetSize):
            ifmap.clear()
            ofmap.clear()

            # Convolution variables
            # accumulator for each filter channel
            size = max(filter_channel)
            acc = [0] * size

            # output feature map for each filter channel
            for i in range(size):
                ofmap.append(copy.deepcopy(testSet[testCase]))

            # Initializing input feature map
            ifmap.append(copy.deepcopy(ofmap))

            # Auxiliar matrix for dense layer calculation
            flatten_output = [0.0] * layer_dimension[len(layer_dimension) - 2]

            for layerId in modelDict:
                if modelDict[layerId]["type"] == "Conv2D":
                    for filterId in modelDict[layerId]["filter"]:
                        for m in range(layer_dimension[layerId]):
                            for n in range(layer_dimension[layerId]):
                                acc[filterId] = int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift)

                                for weightChannel in modelDict[layerId]["filter"][filterId]["weights"]:
                                    for weightsH in weightChannel:
                                        if layerId == 0:
                                            aux_idx_range = input_channel[0]
                                        else:
                                            aux_idx_range = filter_channel[layerId - 1]
                                        for weightValue, ofmapChannel, inputChannel in zip(weightsH,
                                                                                           range(aux_idx_range), range(
                                                    input_channel[layerId])):

                                            if layerId == 0:
                                                ifmap_input = int(float(
                                                    ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                        filter_j + n * stride_w[layerId]][inputChannel]) * shift)
                                            else:
                                                ifmap_input = int(float(
                                                    ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                        filter_j + n * stride_w[layerId]][0]))
                                            weight_input = int(float(weightValue) * shift)

                                            acc[filterId] = int(acc[filterId]) + int(ifmap_input * weight_input)

                                        filter_j = filter_j + 1
                                        if filter_j == filter_dimension[layerId]:
                                            filter_j = 0
                                            filter_i = filter_i + 1
                                            if filter_i == filter_dimension[layerId]:
                                                filter_i = 0

                                acc_input = int((acc[filterId] / shift))
                                # print("writing ofmap")
                                ofmap[filterId][m][n] = max(0, int(acc_input))
                                # print(ofmap[filterId][m][n][0])

                        ## Open file
                        # with open("gold_pkg.vhd", "a") as f:
                        if layerId == layer - 1:
                            for m in range(layer_dimension[layerId]):
                                for n in range(layer_dimension[layerId]):
                                    # if m == 0 and n == 0 and filterId == 0:
                                    #  f.write("LIBRARY ieee;\n")
                                    #  f.write("USE ieee.std_logic_1164.all;\n")
                                    #  f.write("USE ieee.std_logic_signed.all;\n")
                                    #  f.write("\tPACKAGE gold_package is\n")
                                    #  f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n")
                                    #  f.write("\t\tconstant gold: padroes := ( ")
                                    if m == 0 and n == 0:
                                        f.write("\n\t\t\t")
                                    # print(filterId)
                                    string_ofmap = str(int(ofmap[filterId][m][n][0])) + ","
                                    f.write(string_ofmap)
                                    f.write(" ")
                                f.write("\n")
                                f.write("\t\t\t")
                            f.write("\n")
                        if layerId == layer and filterId == filter_channel[layer] - 1:
                            f.write("\t\tothers=>0 );\n")
                            f.write("END inmem_package;\n")
                            # print("close file! -> layer != 0")
                            f.close()

                    ifmap.append(copy.deepcopy(ofmap))


def generate_wghts_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):

    tabs = "\t\t\t\t\t"
    # For layers != 0
    size = max(filter_channel)

    # Open file
    f = open(path / "iwght_pkg.vhd", "w")

    f.write("LIBRARY ieee;\n")
    f.write("USE ieee.std_logic_1164.all;\n")
    f.write("USE ieee.std_logic_signed.all;\n")
    f.write("\tPACKAGE iwght_package is\n")
    f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n\n")

    f.write("\t\tconstant input_wght: padroes := ( \n")
    f.write(f"{tabs}-- bias\n")
    bias_list = [
        [layerId, [str(int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift))
                   for filterId in modelDict[layerId]["filter"]]]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
    ]
    bias_list_filter = [
        f"{tabs}-- layer={layerId}\n{tabs}{', '.join(bias)},\n"
        for layerId, bias in bias_list
    ]
    f.writelines(bias_list_filter)
    f.write(f"\n{tabs}-- weights\n")

    string_weight = [
        [layerId, filterId, z, [str(int(weights[x, y, z].reshape(-1)))
                                for x in range(weights.shape[0])
                                for y in range(weights.shape[1])]]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
        for filterId in modelDict[layerId]["filter"]
        for weights in [modelDict[layerId]["filter"][filterId]["weights"]*shift]
        for z in range(weights.shape[2])
    ]
    string_weight_list = [
        f"{tabs}-- layer={la} filter={f} channel={c}\n{tabs}{', '.join(s)},\n" for la, f, c, s in string_weight
    ]

    f.writelines(string_weight_list)
    f.write(f"\n{tabs}others=>0 );\nEND iwght_package;\n")
    f.close()


def generate_ifmap_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                           input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):

    tabs = "\t\t\t\t\t"
    # For layers != 0
    size = max(filter_channel)

    # Open file
    f = open(path / "ifmap_pkg.vhd", "w")

    f.write("LIBRARY ieee;\n")
    f.write("USE ieee.std_logic_1164.all;\n")
    f.write("USE ieee.std_logic_signed.all;\n")
    f.write("\tPACKAGE ifmap_package is\n")
    f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n\n")

    f.write("\t\tconstant input_map: padroes := ( \n")

    if layer == 0:
        # cont = 0
        # cont_size = 0
        # f.write(input_string)
        # for i in range(testSetSize):
        #     for image in testSet[i]:
        #         for feature in image:
        #             for pixel in feature:
        #                 if cont % 3 == 0:
        #                     pixel0.append(int(pixel * shift))
        #                 if cont % 3 == 1:
        #                     pixel1.append(int(pixel * shift))
        #                 if cont % 3 == 2:
        #                     pixel2.append(int(pixel * shift))
        #                 cont = cont + 1
        #
        #     cont_size = 0
        #     for pixel in pixel0:
        #         f.write(str(pixel))
        #         f.write(",")
        #         cont_size = cont_size + 1
        #
        #     for pixel in pixel1:
        #         f.write(str(pixel))
        #         f.write(",")
        #         cont_size = cont_size + 1
        #
        #     for pixel in pixel2:
        #         # TODO explicar essa linha
        #         if cont_size == input_size - 1:
        #             f.write(" others=>0 );")
        #             f.write("\n")
        #         else:
        #             f.write(str(pixel))
        #             f.write(",")
        #         cont_size = cont_size + 1
        #     pixel0 = []
        #     pixel1 = []
        #     pixel2 = []
        #
        # f.write("END inmem_package;\n")
        # # print("close file! -> layer = 0")
        # f.close()

        pixel = [
            [[i, z, x, [str(int(image_shift[x, y, z])) for y in range(image_shift.shape[1])]]
             for z in range(image_shift.shape[2])
             for x in range(image_shift.shape[0])]
            for i, image in enumerate(testSet)
            if i in range(testSetSize)
            for image_shift in [image * shift]
        ]

        string_pixel = [
            f"{tabs}-- image={p[0]} channel={p[1]} column={p[2]}\n{tabs}{','.join(p[3])},\n"
            for image in pixel
            for p in image
        ]
        f.write(f"\n{tabs}-- test image\n")
        f.writelines(string_pixel)
        f.write(f"\n{tabs}others=>0 );\nEND ifmap_package;\n")
        f.close()

    else:
        # Dataset test variables
        cont_match = 0
        aux_idx_range = 0

        # Index control
        m = 0
        n = 0
        idx = 0
        filter_i = 0
        filter_j = 0

        # feature maps
        ifmap = []
        ofmap = []
        output = [0.0] * 10

        for testCase in range(testSetSize):
            ifmap.clear()
            ofmap.clear()

            # Convolution variables
            # accumulator for each filter channel
            size = max(filter_channel)
            acc = [0] * size

            # output feature map for each filter channel
            for i in range(size):
                ofmap.append(copy.deepcopy(testSet[testCase]))

            # Initializing input feature map
            ifmap.append(copy.deepcopy(ofmap))

            # Auxiliar matrix for dense layer calculation
            flatten_output = [0.0] * layer_dimension[len(layer_dimension) - 2]

            for layerId in modelDict:
                if modelDict[layerId]["type"] == "Conv2D":
                    for filterId in modelDict[layerId]["filter"]:
                        for m in range(layer_dimension[layerId]):
                            for n in range(layer_dimension[layerId]):
                                acc[filterId] = int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift)

                                for weightChannel in modelDict[layerId]["filter"][filterId]["weights"]:
                                    for weightsH in weightChannel:
                                        if layerId == 0:
                                            aux_idx_range = input_channel[0]
                                        else:
                                            aux_idx_range = filter_channel[layerId - 1]
                                        for weightValue, ofmapChannel, inputChannel in zip(weightsH,
                                                                                           range(aux_idx_range), range(
                                                    input_channel[layerId])):

                                            if layerId == 0:
                                                ifmap_input = int(float(
                                                    ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                        filter_j + n * stride_w[layerId]][inputChannel]) * shift)
                                            else:
                                                ifmap_input = int(float(
                                                    ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                        filter_j + n * stride_w[layerId]][0]))
                                            weight_input = int(float(weightValue) * shift)

                                            acc[filterId] = int(acc[filterId]) + int(ifmap_input * weight_input)

                                        filter_j = filter_j + 1
                                        if filter_j == filter_dimension[layerId]:
                                            filter_j = 0
                                            filter_i = filter_i + 1
                                            if filter_i == filter_dimension[layerId]:
                                                filter_i = 0

                                acc_input = int((acc[filterId] / shift))
                                # print("writing ofmap")
                                ofmap[filterId][m][n] = max(0, int(acc_input))
                                # print(ofmap[filterId][m][n][0])

                        ## Open file
                        # with open("gold_pkg.vhd", "a") as f:
                        if layerId == layer - 1:
                            for m in range(layer_dimension[layerId]):
                                for n in range(layer_dimension[layerId]):
                                    # if m == 0 and n == 0 and filterId == 0:
                                    #  f.write("LIBRARY ieee;\n")
                                    #  f.write("USE ieee.std_logic_1164.all;\n")
                                    #  f.write("USE ieee.std_logic_signed.all;\n")
                                    #  f.write("\tPACKAGE gold_package is\n")
                                    #  f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n")
                                    #  f.write("\t\tconstant gold: padroes := ( ")
                                    if m == 0 and n == 0:
                                        f.write("\n\t\t\t")
                                    # print(filterId)
                                    string_ofmap = str(int(ofmap[filterId][m][n][0])) + ","
                                    f.write(string_ofmap)
                                    f.write(" ")
                                f.write("\n")
                                f.write("\t\t\t")
                            f.write("\n")
                        if layerId == layer and filterId == filter_channel[layer] - 1:
                            f.write("\t\tothers=>0 );\n")
                            f.write("END ifmap_package;\n")
                            # print("close file! -> layer != 0")
                            f.close()

                    ifmap.append(copy.deepcopy(ofmap))


def generate_gold_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                          input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer, path):
    # Dataset test variables
    cont_match = 0
    aux_idx_range = 0

    # Index control
    m = 0
    n = 0
    idx = 0
    filter_i = 0
    filter_j = 0

    # feature maps
    ifmap = []
    ofmap = []
    output = [0.0] * 10

    # string for ORCA gold
    string_orca_gold = " "
    f = open(path / "gold_pkg.vhd", "w")

    for testCase in range(testSetSize):
        ifmap.clear()
        ofmap.clear()

        # Convolution variables
        # accumulator for each filter channel
        size = max(filter_channel)
        acc = [0] * size

        # output feature map for each filter channel
        for i in range(size):
            ofmap.append(copy.deepcopy(testSet[testCase]))

        # Initializing input feature map
        ifmap.append(copy.deepcopy(ofmap))

        # Auxiliar matrix for dense layer calculation
        flatten_output = [0.0] * layer_dimension[len(layer_dimension) - 2]

        for layerId in modelDict:
            if modelDict[layerId]["type"] == "Conv2D":
                for filterId in modelDict[layerId]["filter"]:
                    for m in range(layer_dimension[layerId]):
                        for n in range(layer_dimension[layerId]):
                            acc[filterId] = int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift)

                            for weightChannel in modelDict[layerId]["filter"][filterId]["weights"]:
                                for weightsH in weightChannel:
                                    if layerId == 0:
                                        aux_idx_range = input_channel[0]
                                    else:
                                        aux_idx_range = filter_channel[layerId - 1]
                                    for weightValue, ofmapChannel, inputChannel in zip(weightsH, range(aux_idx_range),
                                                                                       range(input_channel[layerId])):

                                        if layerId == 0:
                                            ifmap_input = int(float(
                                                ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                    filter_j + n * stride_w[layerId]][inputChannel]) * shift)
                                        else:
                                            ifmap_input = int(float(
                                                ifmap[layerId][ofmapChannel][filter_i + m * stride_h[layerId]][
                                                    filter_j + n * stride_w[layerId]][0]))
                                        weight_input = int(float(weightValue) * shift)

                                        acc[filterId] = int(acc[filterId]) + int(ifmap_input * weight_input)

                                    filter_j = filter_j + 1
                                    if filter_j == filter_dimension[layerId]:
                                        filter_j = 0
                                        filter_i = filter_i + 1
                                        if filter_i == filter_dimension[layerId]:
                                            filter_i = 0

                            # acc_input = int((acc[filterId]/shift))
                            acc_input = acc[filterId] >> int(log2(shift))
                            ofmap[filterId][m][n] = max(0, int(acc_input))

                    # Open file
                    if layerId == layer:
                        for m in range(layer_dimension[layerId]):
                            for n in range(layer_dimension[layerId]):
                                if m == 0 and n == 0 and filterId == 0:
                                    f.write("LIBRARY ieee;\n")
                                    f.write("USE ieee.std_logic_1164.all;\n")
                                    f.write("USE ieee.std_logic_signed.all;\n")
                                    f.write("\tPACKAGE gold_package is\n")
                                    f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n")
                                    f.write("\t\tconstant gold: padroes := ( ")
                                if m == 0 and n == 0 and filterId != 0:
                                    f.write("\t\t")
                                string_orca_gold = str(int(ofmap[filterId][m][n][0])) + ","
                                f.write(string_orca_gold)
                                f.write(" ")
                            f.write("\n")
                            f.write("\t\t")
                        f.write("\n")
                        # if layerId == layer and filterId == filter_channel[layer] - 1:

                ifmap.append(copy.deepcopy(ofmap))

    f.write("\t\tothers=>0 );\n")
    f.write("END gold_package;\n")
    f.close()
