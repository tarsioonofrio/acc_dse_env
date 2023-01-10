## Introduction

## Tutorial

### Training

If you don't want to train a network from scratch, you can skip this part.

First you need to configure the neural network, make a copy of `default.json ` in `app/config_nn`
and change the network settings and file name.
After that it is necessary to train the network and save the weights running `app/train-nn-cifar10.py`:

`python train-nn-cifar10.py -n {filename}`

In `app/data_nn` a folder will be created with the name chosen above where the network weights will be saved.
There are some limitations in the network architecture, which will be explained below.


### Generation of auxiliary simulation files

There are already auxiliary files in repo, if you don't want to generate new ones you can skip this part.

Similar to the previous step, the `app/config_hw` have the HW configuration files.
Make a copy of `default.json` and change the settings and filename.
After that run:

`python generate-hw.py -n {nn file name} -w {hw file name}`

In `app/data_hw` there will be a folder named in the format `{network file name}_{hw file name}`
where auxiliaries for the simulation per layer will be saved, containing information such as:

* Generics.
* Package with `type_config_*` `record` use to configure the convolutional layer.
* Input feature map (`ifmap`), input weights (`iwght`) and gold (output feature map) in vhdl and txt.

Other similar files necessary for `PE` simulation are saved in the `pe `folder.

### Simulation

The `sim_rtl` folder contain the tcl scripts used to simulate the convolutional layers.
To simulate:

* All convolutional layers with `PE` use `sim_pe_multi.do`.
* `PE` with one layer use `sim_pe.do`
* Only one convolutional layer use the others `sim_*`.

If you want to use a new neural network model or HW configuration, you need to change these two paths:

     ../apps/data_hw/default_default/pe/config_pkg.vhd
     ../apps/data_hw/default_default/pe/generic_file.txt

If you want to run it on another layer other than to zero, like 1, as an example just change , except `sim_pe_multi.do`:

     ../apps/data_hw/default_default/0/config_pkg.vhd

For:

     ../apps/data_hw/default_default/1/config_pkg.vhd

If you want to use other hw settings, you need to change `default_default`
to the desired project folder. It is necessary to change the other paths to the same folder.