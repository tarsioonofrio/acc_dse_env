import copy
from math import log2

import numpy as np
from numpy.lib.stride_tricks import as_strided



def dictionary_from_model(model):
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


def convolution_from_weights(gen_features, filter_channel, filter_dimension, input_channel, layer, layer_dimension,
                             modelDict, shift, stride_h, stride_w, tab, testSet, testSetSize):
    string_pixel = [tab]
    image_list = []
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
                                    for weightValue, ofmapChannel, inputChannel in zip(
                                            weightsH, range(aux_idx_range), range(input_channel[layerId])):

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

                            if gen_features:
                                acc_input = int((acc[filterId] / shift))
                            else:
                                acc_input = acc[filterId] >> int(log2(shift))

                            ofmap[filterId][m][n] = max(0, int(acc_input))
                    if layerId == layer - int(gen_features):
                        matrix = []
                        for m in range(layer_dimension[layerId]):
                            line = []
                            for n in range(layer_dimension[layerId]):
                                if m == 0 and n == 0 and filterId != 0:
                                    string_pixel.append(tab)
                                string_ofmap = str(int(ofmap[filterId][m][n][0]))
                                string_pixel.append(f"{string_ofmap}, ")
                                line.append(string_ofmap)
                            string_pixel.append(f"\n{tab}")
                            matrix.append(line)
                        string_pixel.append(f"\n")
                        image_list.append(matrix)
                ifmap.append(copy.deepcopy(ofmap))
    return image_list


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


def pool2d(image, kernel_size=2, stride=2, padding=0, pool_mode='max'):
    '''
     2D Pooling

     Parameters:
         image: input 2D array
         kernel_size: int, the size of the window over which we take pool
         stride: int, the stride of the window
         padding: int, implicit zero paddings on both sides of the input
         pool_mode: string, 'max' or 'avg'
     '''
    # Padding
    image = np.pad(image, padding, mode='constant')

    # Window view of image
    output_shape = ((image.shape[1] - kernel_size) // stride + 1,
                    (image.shape[2] - kernel_size) // stride + 1)

    shape_w = (image.shape[0], output_shape[0], output_shape[1], kernel_size, kernel_size)
    strides_w = (image.shape[0], stride * image.strides[0], stride * image.strides[1], image.strides[0], image.strides[1])

    image_w = as_strided(image, shape_w, strides_w)

    # Return the result of pooling
    if pool_mode == 'max':
        return image_w.max(axis=(2, 3))
    elif pool_mode == 'avg':
        return image_w.mean(axis=(2, 3))