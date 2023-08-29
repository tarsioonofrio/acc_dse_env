## Introduction

## Repository organization

* `apps/`: `python` scripts to run train basic deep learning model and generate RTL code.
  * `bram-generate.py`: generate BRAMs needed to run trained CNN model in FPGA.
  * `cnn-train-cifar10.py`: training script for a simple CNN model.
  * `rtl-generate.py`: generate RTL code needed to run trained CNN model using hdl code.
  * `table-generate.py`: generate data tables CNN weights and feature maps.
* `experiments/`: where are saved the output files from app scripts.
  * `cnn_config`: folder with jsons to configurate the cnn model.
  * `cnn_output`: folder with output data from trained cnn model. Each folder inside this path will have the same name
  of json used train the model with `cnn-train-cifar10.py`. Will have this pattern: `experiments/cnn_output/cnn_json_name/`.
  * `rtl_config`: folder with jsons to configurate RTL and BRAMs needed to run CNN model.
  * `rtl_output`: folder with RTL and BRAMs code. Each folder inside this path will have the same name of json used.
  train the model, to generate RTL code (`rtl-generate.py`) and BRAMs (`bram-generate.py`). Will have this pattern:
  `experiments/rtl_output/cnn_json_name/rtl_json_name/`.
    * `bram/`: BRAMs RTL code and other files.
    * `core/`: Core support files.
    * `layer/`: Layer files. Each folder have support files for one layer: weights, feature maps and others.
    * `samples/`: Samples data - input images - in `txt` and RTL data.
    * `table/`: Data table in `csv`, `json` and `txt` format.

* `cacti/`

* `lsynth/`

* `power_analyses/`

* `psynth/`

* `qshift/`

* `rtl/`: accelerator components hdl code

* `scripts/`: others scripts

* `sim_netlist/`: `tcl` scripts for netlist simulation with 28 nm tecnology 

* `sim_rtl/`: `tcl` scripts for RTL simulation, name file format sim_{name}.do, if it has `fpga` suffix is 
to run in this device.

* `tb/`: test bench hdl codes, name file format tb_{rtl/netlist}_{name}.vhd, if it has `fpga` suffix is to run in this 
device.

* `test/`: `cocotb` (co-simulation framework) scripts.

## Tutorial

### Training

If you don't want to train a network from scratch, you can skip this part.

First you need to configure the neural network, make a copy of `default.json ` in `experiments/cnn_config`
and change the network settings and file name.
After that it is necessary to train the network and save the weights running `app/train-cifar10.py`:

`python train-cifar10.py -n {cnn json config filename}`

In `app/cnn_output` a folder will be created with the name chosen above where the network weights will be saved.
There are some limitations in the network architecture, which will be explained below.


### Generation RTL and BRAMS

There are already auxiliary files in repo, if you don't want to generate new ones you can skip this part.

Similar to the previous step, the `app/rtl_config` have the HW configuration files.
Make a copy of `default.json` and change the settings and filename.
After that run:

`python rtl-generate.py -n {cnn json config file name} -w {rtl json config file name}`

And

`python bram-generate.py -n {cnn json config file name} -w {rtl json config file name}`


In `experiments/rtl_output` there will be a folder named in the format `{cnn file name}/{rtl file name}`
where auxiliaries for the simulation per layer will be saved, containing information such as:

* Generics.
* Package with `type_config_*` `record` use to configure the convolutional layer.
* Input feature map (`ifmap`), input weights (`iwght`) and gold (output feature map) in vhdl and txt.

Other similar files necessary for `Core` simulation are saved in the `core` folder.

### Simulation

The `sim_rtl` folder contain the tcl scripts used to simulate the convolutional layers.
For example to simulate:

* Simple CNN use `sim_cnn_simple.do` or `sim_cnn_simple_fpga.do`.
* One convolutional layer with one core use `sim_core_serial.do` `sim_core_serial_fpga.do`.
* Only one convolutional layer use the others `sim_sys*`.

If you want to use a new CNN model or new rtl configuration, you need to change these two paths:

     ../experiments/rtl_output/default/default/core/config_pkg.vhd
     ../experiments/rtl_output/default/default/core/generic_file.txt

If you want to run a core or convolutional for another layer data than to zero, like 1, just change:

     ../experiments/rtl_output/default/default/0/config_pkg.vhd

For:

     ../experiments/rtl_output/default/default/1/config_pkg.vhd

If you want to use other rtl settings, you need to change `default/default`
to the desired project folder. It is necessary to change the other paths to the same folder.



## TODO:

* Add PyInvoke
* https://github.com/mentax/csv2xlsx/releases


From Tarsio's Bachelor Thesis:

* Finalize the integration of the FC and MP2P layers with the framework.
* Prototype the complete network, that is, include the additional layers: Max polling 2D and Fully Connected.
* Implement the activation function of the FC (Fully Connected) layer, which was not implemented due to lack of time in the final paper. The FC is an important layer in convolutional neural networks, and its activation is necessary for the accelerator to function correctly.
* Refactor/organize the developed framework. Refactoring the framework is important for improving the organization and maintenance of the code. This can facilitate the development of new functionalities and bug fixes, in addition to making the code more readable and understandable.
* Increase integration with TensorFlow, using it directly to generate memory initializations. Its integration with the accelerator can bring benefits in terms of performance and ease of use. Using TensorFlow directly to generate the features can be a way to improve integration.
* Integration with PyTorch, as it is more flexible than Keras (TensorFlow).
* Evaluate the use of unified memory. A unified memory can bring benefits in terms of performance and efficiency. Testing it can help evaluate its viability and identify possible improvements or limitations for future work.
* Translate the code to Verilog. The use of Verilog simplifies the integration with IPs generated or made available by XILINX, facilitate its integration in more complex projects.
* Make the BRAM initialization tool generic, so that it can be used in other projects.
* Modify the CONVWS or develop a new module that supports stride 1 and parameterizable filter sizes (currently there is support only for a 3 x 3 filter). These modifications will allow the evaluation of a larger number of CNN architectures.
* Parallelize the Cores. This approach can improve the performance of the accelerator, allowing temporal parallelism (in the form of a pipeline) or spatial parallelism (several CONVWS operating on the same layer, but on different channels).
* Remove clock with a 180-degree shift from the memory module of the BRAMs (i.e., falling edge), and modify all modules so that they read on the rising edge.
* Improve the pipeline between the cores to increase throughput, that is, develop a multi-cycle architecture.
* Evaluate the 1D convolution architecture. The 1D convolution architecture is used in applications that involve processing of one-dimensional signals, such as audio processing or time series. Testing this architecture can help evaluate its effectiveness and identify possible improvements for future applications.
* Integrate this work with the DSE flow proposed in the thesis by Loeonardo Juracy JuracyLeonardoRezende2022thesis.


From Juracy's Doctoral Thesis:
* **[Working on]** **Accelerator Prototyping.** Prototype the proposed accelerators in FPGAs, considering the
entire CNN.
  * **[Working on]** Analyzes and implementation of an entire CNN accelerated in hardware: this work
    requires analyzing how to connect the output from a layer to the input of the next layer
    of a CNN application using the hardware accelerators. These analyses include the use
    of memories, buffers, and memory hierarchy to connect these layers; 
  * **[Working on]** FPGA prototyping of hardware accelerators: this work allows verification of the accel-
    erators at a circuit level. Besides, prototyping and integrating the accelerators with
    microprocessors to explore analyzes of an entire system. 

* **System Level DSE.** Extend the use of system simulators to perform DSE regarding an entire
system composed by CPUs, DMA, and CNN accelerators. As mentioned on Chapter 3, system simulators, 
such as URSA, help in estimating  PPA values of an entire system. This Thesis does not cover DSE 
regarding an entire system. Thus, one of the future works is to extend the proposed frameworks to 
cover systems  composed of CPUs, DMA, and CNN accelerators, for example, as illustrated in 
Figure 7.1. Also, it is possible to combine the system simulator with the analytic flow to 
improve the  accuracy of the PPA results, like clock cycles estimation. 
Thus, we proposed the following future works:
  * Integrate the DSE analytic flow with a system simulator to deliver accurate PPA results
  with simulation results as convolution engine behavior. To make this integration, it is 
  possible to use simulators like Gem5 [Gem5, 2022], which allow the reuse of hardware blocks, 
  such as microprocessors, memories, and bus architectures.
  * Software and hardware accelerators integration. Integrate the accelerator with microprocessors,
  and develop APIs to access the accelerators.
  
* **Accelerator Design.** Extend the set of accelerators and functions implemented in hardware.
  * Implementation of other dataflow types: the literature shows other dataflows like 
  Row Stationary (RS), No Local Reuse (NRL), and Fine-Grained (FG) 
  [Moolchandani et al., 2021, Xiang et al., 2018]. The implementation of these dataflows allows 
  to extend the  comparison proposed on Chapter 5, to analyze their trade-offs compared to 
  Weight Stationary (WS), Input Stationary (IS), and Output Stationary (OS);
  * Implementation of larger accelerators arrangement: the 3x3 matrix used in this work is
  an initial step for DSE. We can extend the analyzes for larger arrays as 16x16, like in
  [Udupa et al., 2020]. Larger arrays allow to improve the analysis of the array parallelism
  and the array utilization in terms of array percentage;
  * Integration of Imagenet dataset on DSE flow: thus, it is possible to simulate the ac
  celerators using more complex CNNs, like AlexNet and VGG16. Also, it is required
  to implement hardware pooling functions, like max-pooling and average pooling, to
  execute these CNNs.
  * A benchmark approach to compare hardware accelerators: build an accelerator repos
  itory that allows project decisions regarding specific targets, such as low power, high
  throughput, and small area.

* **Accelerator Optimization.** Optimize the accelerator design using low power techniques,
pruning, quantization, and memory types.
  * Application of low power techniques: evaluate, e.g., approximate computing [Arme-
  niakos et al., 2022]. Also, other CNNs optimization techniques can be applied, like
  pruning [Bavikadi et al., 2022], and different types of CNN, like the all-convolutional
  neural networks [Benevenuti et al., 2021]. All-convolutional neural networks are candi-
  dates to reduce hardware area, once they do not present a fully-connected layer, which
  is the more expensive network component;
  * Explore the use of different memories in the same project. For example, build acceler-
  ators that use both SRAM and DRAM. Also, explore memory hierarchies, like the use
  of cache memories.
