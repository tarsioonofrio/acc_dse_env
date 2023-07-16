## Introduction

## Repository organization

* `apps/`: `python` scripts to run train basic deep learning model and generate RTL code.
  * `bram-generate.py`: generate BRAMs needed to run trained CNN model in FPGA.
  * `cnn-train-cifar10.py`: trainning script for a simple CNN model.
  * `rtl-generate.py`: generate RTL code needed to run trained CNN model using hdl code.
  * `table-generate.py`: generate data tables CNN weights and feature maps.
  * `cnn_config`: folder with jsons to configurate the cnn model.
  * `cnn_output`: folder with output data from trained cnn model. Each folder inside this path will have the same name
  of json used train the model with `cnn-train-cifar10.py`. Will have this pattern: `apps/cnn_output/cnn_json_name/`.
  * `rtl_config`: folder with jsons to configurate RTL and BRAMs needed to run CNN model.
  * `rtl_output`: folder with RTL and BRAMs code. Each folder inside this path will have the same name of json used.
  train the model, to generate RTL code (`rtl-generate.py`) and BRAMs (`bram-generate.py`). Will have this pattern:
  `apps/rtl_output/cnn_json_name/rtl_json_name/`.
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

First you need to configure the neural network, make a copy of `default.json ` in `app/cnn_config`
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


In `app/rtl_output` there will be a folder named in the format `{cnn file name}/{rtl file name}`
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

     ../apps/rtl_output/default/default/core/config_pkg.vhd
     ../apps/rtl_output/default/default/core/generic_file.txt

If you want to run a core or convolutional for another layer data than to zero, like 1, just change:

     ../apps/rtl_output/default/default/0/config_pkg.vhd

For:

     ../apps/rtl_output/default/default/1/config_pkg.vhd

If you want to use other rtl settings, you need to change `default/default`
to the desired project folder. It is necessary to change the other paths to the same folder.


https://github.com/mentax/csv2xlsx/releases

## TODO:

* Add PyInvoke