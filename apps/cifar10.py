from imports import tflib
from imports import envlib
from tensorflow import keras
import sys
import os

# User inputs (ex: 2.0 16 syst2d ws 2 0)
CLK_PERIOD    = float(sys.argv[1])
INPUT_SIZE    = int(sys.argv[2])
ARRAY_TYPE    = str(sys.argv[3])
DATAFLOW_TYPE = str(sys.argv[4])
LAT	      = int(sys.argv[5])
LAYER	      = int(sys.argv[6])


# HW Inputs
MEM_SIZE      = 16
CARRY_SIZE    = 4
IN_DELAY      = 0.3

# CNN Inputs

filter_channel   = [16,32,64,128]
#filter_channel   = [32,64,128,512]
filter_dimension = [3,3,3,3]
stride_h         = [2,2,2,2]
stride_w         = [2,2,2,2]
n_epochs         = 5

# Application parameters
input_w          = 32
input_h          = 32
input_c          = 3
n_dense_neuron   = 10
shift_bits       = INPUT_SIZE/2

# Compute number of convolutional layers
n_conv_layers = len(filter_channel)

# Get application dataset
x_train,y_train,x_test,y_test,featureShape = tflib.get_cifar10_dataset(input_h, input_w, input_c)

# Build CNN application
if (not(os.path.exists("./model"))):
  model = tflib.build_neural_network(featureShape, filter_channel, filter_dimension, stride_h, stride_w, input_h, input_w, input_c, n_conv_layers, n_dense_neuron)
  tflib.training_neural_network(model, x_train, y_train, n_epochs)
  # Save model
  model.save('./model')
  model.save_weights('./weights')
else:
  model = keras.models.load_model("./model")
  model.summary() 

# Accuracy
test_set_size = 10000
test_loss, test_acc = model.evaluate(x_test[0:test_set_size],  y_test[0:test_set_size], verbose=2)

# Compute input size
input_size = envlib.get_input_size(input_h, input_w, input_c)

# Compute output layer dimensions
layer_dimension = envlib.get_output_layer_dimension(input_h, n_conv_layers, filter_dimension, stride_h)

# Compute HW parameters
if LAYER == 0: 
  X_SIZE       = input_w
  C_SIZE       = input_c
else:
  X_SIZE       = layer_dimension[LAYER-1]
  C_SIZE       = filter_channel[LAYER-1]
FILTER_WIDTH = filter_dimension[LAYER]
CONVS_PER_LINE = layer_dimension[LAYER]

# Compute input channels
input_channel = envlib.get_input_channel(input_c, n_conv_layers, filter_channel)

# Generate dictionary
modelDict = envlib.create_dictionary(model)

# Adjust shift
shift = 2**shift_bits

# Generate generic file for rtl simulation
envlib.generate_generic_file(X_SIZE, C_SIZE, FILTER_WIDTH, CONVS_PER_LINE, MEM_SIZE, INPUT_SIZE, CARRY_SIZE, CLK_PERIOD, stride_h[LAYER], filter_channel[LAYER], DATAFLOW_TYPE, LAT, shift_bits, IN_DELAY)

# Generate TCL file with generics for logic synthesis
envlib.generate_tcl_generic(X_SIZE, C_SIZE, FILTER_WIDTH, CONVS_PER_LINE, MEM_SIZE, INPUT_SIZE, CARRY_SIZE, CLK_PERIOD, DATAFLOW_TYPE, ARRAY_TYPE, stride_h[LAYER], filter_channel[LAYER], LAT, shift_bits, LAYER)

# Generate VHDL tensorflow package
envlib.generate_tf_vhd_pkg(modelDict,shift,input_size,filter_dimension,filter_channel,layer_dimension,input_channel,x_test,y_test,stride_h,stride_w,1,LAYER)

# Generate VHDL gold output package
envlib.generate_gold_vhd_pkg(modelDict,shift,input_size,filter_dimension,filter_channel,layer_dimension,input_channel,x_test,y_test,stride_h,stride_w,1,LAYER)
