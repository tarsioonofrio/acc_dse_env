import math
import copy
import time


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


def generate_generic_file(X_SIZE, C_SIZE, FILTER_WIDTH, CONVS_PER_LINE, MEM_SIZE, INPUT_SIZE, CARRY_SIZE, CLK_PERIOD,
                          STRIDE, N_FILTER, DATAFLOW_TYPE, LAT, SHIFT, IN_DELAY):
    CLK_HALF = CLK_PERIOD / 2
    RST_TIME = CLK_HALF * 5

    # Open file
    f = open("data/generic_file.txt", "w")
    f.write("-gN_FILTER=" + str(N_FILTER) + " -gSTRIDE=" + str(STRIDE) + " -gX_SIZE=" + str(
        X_SIZE) + " -gFILTER_WIDTH=" + str(FILTER_WIDTH) + " -gCONVS_PER_LINE=" + str(
        CONVS_PER_LINE) + " -gMEM_SIZE=" + str(MEM_SIZE) + " -gINPUT_SIZE=" + str(INPUT_SIZE) + " -gCARRY_SIZE=" + str(
        CARRY_SIZE) + " -gCLK_PERIOD=" + str(CLK_HALF) + "ns" + " -gRST_TIME=" + str(
        RST_TIME) + "ns" + " -gRISE_START=" + str(CLK_HALF * 2.0 + RST_TIME + IN_DELAY) + "ns" + " -gFALL_START=" + str(
        CLK_HALF * 4.0 + RST_TIME + IN_DELAY) + "ns" + " -gIN_DELAY=" + str(IN_DELAY) + "ns" + " -gLAT=" + str(
        LAT) + " -gN_CHANNEL=" + str(C_SIZE) + " -gSHIFT=" + str(int(SHIFT)) + "\n")
    f.close()


def generate_tcl_generic(X_SIZE, C_SIZE, FILTER_WIDTH, CONVS_PER_LINE, MEM_SIZE, INPUT_SIZE, CARRY_SIZE, CLK_PERIOD,
                         DATAFLOW_TYPE, ARRAY_TYPE, STRIDE, N_FILTER, LAT, SHIFT, LAYER):
    # Open file
    f = open("data/generic_synth.tcl", "w")

    # Generate tcl file
    f.write("set CLK_PERIOD " + str(CLK_PERIOD) + "\n")
    f.write("set INPUT_SIZE " + str(INPUT_SIZE) + "\n")
    f.write("set DATAFLOW_TYPE " + str(DATAFLOW_TYPE) + "\n")
    f.write("set ARRAY_TYPE " + str(ARRAY_TYPE) + "\n")
    f.write("set LAT " + str(LAT) + "\n")
    f.write("set LAYER " + str(LAYER) + "\n")
    f.write("set parameters {{N_FILTER " + str(N_FILTER) + "}" + " {N_CHANNEL " + str(C_SIZE) + "}" + " {STRIDE " + str(
        STRIDE) + "}" + " {X_SIZE " + str(X_SIZE) + "}" + " {FILTER_WIDTH " + str(
        FILTER_WIDTH) + "}" + " {CONVS_PER_LINE " + str(CONVS_PER_LINE) + "}" + " {MEM_SIZE " + str(
        MEM_SIZE) + "}" + " {INPUT_SIZE " + str(INPUT_SIZE) + "}" + " {CARRY_SIZE " + str(
        CARRY_SIZE) + "}" + " {SHIFT " + str(int(SHIFT)) + "}}" + "\n")
    f.close()


def generate_tf_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension, input_channel,
                        testSet, testLabel, stride_h, stride_w, testSetSize, layer):
    # Auxiliar variables
    cont = 0

    # Auxiliar strings
    input_string = "\n\t\t\t"
    string_weight = ["\t\t\t"] * max(filter_channel)
    string_weight[0] = "\t\t\t"

    # Auxiliar strings for input
    pixel0 = []
    pixel1 = []
    pixel2 = []

    # For layers != 0
    size = max(filter_channel)
    acc = [0] * size
    ifmap = []
    ofmap = []
    filter_i = 0
    filter_j = 0

    # Open file
    f = open("data/inmem_pkg.vhd", "w")

    f.write("LIBRARY ieee;\n")
    f.write("USE ieee.std_logic_1164.all;\n")
    f.write("USE ieee.std_logic_signed.all;\n")
    f.write("\tPACKAGE inmem_package is\n")
    f.write("\t\ttype padroes is array(0 to 4000000) of integer;\n\n")

    # for layerId in modelDict:
    #     if modelDict[layerId]["type"] == "Conv2D":
    #         if layerId == layer:
    #             string_bias = "\t\tconstant input_mem: padroes := ( "
    #             for filterId in modelDict[layerId]["filter"]:
    #                 string_bias = string_bias + str(
    #                     int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift)) + ","
    #             f.write("\n")
    #             f.write(string_bias)
    #             string_bias = "{"
    #             f.write("\n\n")

    f.write("\t\tconstant input_mem: padroes := ( \n")
    f.write("\t\t-- bias\n")
    bias_list = [
        [layerId, [f'{int(modelDict[layerId]["filter"][filterId]["bias"] * shift * shift)}, '
                   for filterId in modelDict[layerId]["filter"]]]
        for layerId in modelDict
        if modelDict[layerId]["type"] == "Conv2D"
        if layerId == layer
    ]
    bias_list_filter = [
        f"-- layerId {layerId}\n {''.join(bias)} \n"
        for layerId, bias in bias_list
    ]
    f.writelines(bias_list_filter)
    f.write("\n\n")

    for layerId in modelDict:
        if modelDict[layerId]["type"] == "Conv2D":
            if layerId == layer:
                for filterId in modelDict[layerId]["filter"]:
                    string_weight = ["\t\t\t"] * max(filter_channel)
                    string_weight[0] = "\t\t\t"

                    for weightChannel in modelDict[layerId]["filter"][filterId]["weights"]:
                        for weightsH in weightChannel:
                            if layerId == 0:
                                aux_idx_range = input_channel[0]
                            else:
                                aux_idx_range = filter_channel[layerId - 1]
                            for weightValue, ofmapChannel, inputChannel in zip(weightsH, range(aux_idx_range),
                                                                               range(input_channel[layerId])):
                                weight_input = int(float(weightValue) * shift)
                                string_weight[ofmapChannel] = string_weight[ofmapChannel] + str(int(weight_input)) + ","
                    if layerId == 0:
                        aux_idx_range = input_channel[0]
                    else:
                        aux_idx_range = filter_channel[layerId - 1]
                    for i in range(aux_idx_range):
                        # cont = cont + 1
                        # if cont == filter_channel[layerId] * aux_idx_range:
                        #     cont = 0
                        #     f.write("\t\t")
                        #     f.write(string_weight[i])
                        # else:
                        f.write("\t\t")
                        f.write(string_weight[i])
                        # string_weight[i] = "\t\t\t"
                        f.write("\n")

    if layer == 0:
        cont = 0
        cont_size = 0
        f.write(input_string)
        for i in range(testSetSize):
            for image in testSet[i]:
                for feature in image:
                    for pixel in feature:
                        if cont % 3 == 0:
                            pixel0.append(int(pixel * shift))
                        if cont % 3 == 1:
                            pixel1.append(int(pixel * shift))
                        if cont % 3 == 2:
                            pixel2.append(int(pixel * shift))
                        cont = cont + 1

            cont_size = 0
            for pixel in pixel0:
                f.write(str(pixel))
                f.write(",")
                cont_size = cont_size + 1

            for pixel in pixel1:
                f.write(str(pixel))
                f.write(",")
                cont_size = cont_size + 1

            for pixel in pixel2:
                if cont_size == input_size - 1:
                    f.write(" others=>0 );")
                    f.write("\n")
                else:
                    f.write(str(pixel))
                    f.write(",")
                cont_size = cont_size + 1
            pixel0 = []
            pixel1 = []
            pixel2 = []

        f.write("END inmem_package;\n")
        # print("close file! -> layer = 0")
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


def generate_gold_vhd_pkg(modelDict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
                          input_channel, testSet, testLabel, stride_h, stride_w, testSetSize, layer):
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
                            acc_input = acc[filterId] >> int(math.log2(shift))
                            ofmap[filterId][m][n] = max(0, int(acc_input))

                    # Open file
                    with open("data/gold_pkg.vhd", "w") as f:
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
                        if layerId == layer and filterId == filter_channel[layer] - 1:
                            f.write("\t\tothers=>0 );\n")
                            f.write("END gold_package;\n")
                        f.close()

                ifmap.append(copy.deepcopy(ofmap))
