from tensorflow import keras
import sys
import numpy as np
import pathlib
import re
import os
import time
import math

# Get CIFAR10 dataset
cifar10 = keras.datasets.cifar10
# Load its data into training and test vectors
(x_train, y_train),(x_test, y_test) = cifar10.load_data()
# Reshape
numTrainImages=len(x_train)
x_train=x_train.reshape(numTrainImages, 32, 32, 3)
numTestImages=len(x_test)
x_test=x_test.reshape(numTestImages, 32, 32, 3)
# Normalize the data
x_train, x_test = x_train / 255.0, x_test / 255.0
# Collect feature size info
imgSize0=len(x_train[0])
imgSize1=len(x_train[0][0])
numPixels=imgSize0*imgSize1
featureShape=(1,imgSize0,imgSize1)

print("Training dataset has "+str(numTrainImages))
print("Testing dataset has "+str(numTestImages))
print("Feature shape is "+str(featureShape))

# Clearup everything before running
keras.backend.clear_session()

if (not(os.path.exists("./model"))):
  # Create model
  model = keras.models.Sequential()

  # Add layers
  model.add(keras.layers.Conv2D(32,  (3,3), strides=(2, 2), activation='relu', input_shape=(32, 32, 3)))
  model.add(keras.layers.Conv2D(64,  (3,3), strides=(2, 2), activation='relu'))
  model.add(keras.layers.Conv2D(128, (3,3), strides=(2, 2), activation='relu'))
  model.add(keras.layers.Conv2D(512, (3,3), strides=(2, 2), activation='relu'))
  model.add(keras.layers.Flatten())
  model.add(keras.layers.Dense(10, activation='softmax'))

  # Build model and print summary
  model.build(input_shape=featureShape)
  model.summary()

  # Compile model
  print("Compiling Model")
  model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])

  # Train
  print("Training Model")
  history = model.fit(x_train, y_train, epochs=10)

  # Test
  print("Testing Model")
  model.evaluate(x_test, y_test)

  # Save model
  print("Saving Model")
  model.save('./model')
  model.save_weights('./weights')

else:
  model = keras.models.load_model("./model")
  model.summary() 

# Accuracy
test_set_size = numTestImages
test_loss, test_acc = model.evaluate(x_test[0:test_set_size],  y_test[0:test_set_size], verbose=2)

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
          modelDict[layerId]["neuron"][neuronId]["weights"] = layerVar[:,neuronId].numpy()
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
        numFilters=layerVar.shape[3]
        for filterId in range(numFilters):
          # Add to dict
          if not filterId in modelDict[layerId]["filter"]:
            modelDict[layerId]["filter"][filterId] = {}
          modelDict[layerId]["filter"][filterId]["weights"] = layerVar[:,:,:,filterId].numpy()
      # Check if bias
      elif layerVar.name.split("/")[1] == "bias:0":
        numFilters = layerVar.shape[0]
        for filterId in range(numFilters):
          # Add to dict
          if not filterId in modelDict[layerId]["filter"]:
            modelDict[layerId]["filter"][filterId] = {}
          modelDict[layerId]["filter"][filterId]["bias"] = layerVar[filterId].numpy()
  layerId += 1


# importing copy module 
import copy
import time

# Shift parameter
n_bits = 8
shift = 2**n_bits

print("Running shift quantization -> shift == " + str(shift))

# Convolution input parameters
filter_dimension = [3,3,3,3]
filter_channel   = [32,64,128,512]
stride_h         = [2,2,2,2]
stride_w         = [2,2,2,2]
layer_dimension  = [15,7,3,1,512,10]
input_channel    = [3,32,64,128,512]

# Dataset test variables
testSet   = x_test
testLabel = y_test
testSetSize = test_set_size
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

cont_print = 0

for testCase in range(testSetSize):
  ifmap.clear()
  ofmap.clear()

  # Convolution variables
  # accumulator for each filter channel 
  size = max(filter_channel)
  acc = [0.0] * size

  # output feature map for each filter channel
  for i in range(size):
    ofmap.append(copy.deepcopy(testSet[testCase]))

  # Initializing input feature map
  ifmap.append(copy.deepcopy(ofmap))

  # Auxiliar matrix for dense layer calculation
  flatten_output = [0.0] * layer_dimension[len(layer_dimension)-2]
  
  for layerId in modelDict:
    cont_print = 0
    if modelDict[layerId]["type"] == "Conv2D":
      for filterId in modelDict[layerId]["filter"]:
        for m in range(layer_dimension[layerId]):
          for n in range(layer_dimension[layerId]):
            acc[filterId] = 0
            for weightChannel in modelDict[layerId]["filter"][filterId]["weights"]:
              for weightsH in weightChannel:
                if layerId == 0:
                  aux_idx_range = input_channel[0]
                else:
                  aux_idx_range = filter_channel[layerId-1]
                for weightValue,ofmapChannel,inputChannel in zip(weightsH,range(aux_idx_range),range(input_channel[layerId])):
                  
                  if layerId == 0:
                    ifmap_input = int(float(ifmap[layerId][ofmapChannel][filter_i + m*stride_h[layerId]][filter_j + n*stride_w[layerId]][inputChannel])*float(shift))
                  else:
                    ifmap_input = int(float(ifmap[layerId][ofmapChannel][filter_i + m*stride_h[layerId]][filter_j + n*stride_w[layerId]][0]))
               
                  weight_input = int(float(weightValue)*float(shift))
                  
                  acc[filterId] = int(acc[filterId] + (ifmap_input*weight_input))

                filter_j = filter_j + 1
                if filter_j == filter_dimension[layerId]:
                  filter_j = 0
                  filter_i = filter_i + 1
                  if filter_i == filter_dimension[layerId]:
                    filter_i = 0

              acc_input = int(acc[filterId]) + int((float(modelDict[layerId]["filter"][filterId]["bias"])*float(shift*shift)))

              acc_input_f = acc_input >> n_bits

              ofmap[filterId][m][n] = float(max(0,int(acc_input_f)))
      ifmap.append(copy.deepcopy(ofmap))

    if modelDict[layerId]["type"] == "Flatten":   
      idx = 0
      for i in range(layer_dimension[layerId-1]):
        for j in range(layer_dimension[layerId-1]):    
          for k in range(filter_channel[layerId-1]):
            flatten_output[idx] = ifmap[layerId][k][i][j][0]
            idx = idx + 1

    if modelDict[layerId]["type"] == "Dense":
      idx = 0
      for neuronId in modelDict[layerId]["neuron"]:
        acc[0] = modelDict[layerId]["neuron"][neuronId]["bias"]
        for weightValue,ifmapValue in zip(modelDict[layerId]["neuron"][neuronId]["weights"],flatten_output):
          acc[0] = float(acc[0]) + float(weightValue*ifmapValue)
        output[idx] = acc[0]
        idx = idx + 1

  if testLabel[testCase] == output.index(max(output)):
    cont_match = cont_match + 1

print("correct:",cont_match)
print("total:",testSetSize)
print("accuracy:",cont_match/testSetSize)

