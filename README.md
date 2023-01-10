# DSE Environment

## Tutorial

### Treinamento

Caso não queira treinar uma rede do zero pode pular essa parte

Primeiro é necessário treinar uma rede e salvar os pesos usando o `script` em `app/train-nn-cifar10.py`.  
Antes disso é necessário configurar a rede, em `app/config_nn` ficam os arquivos com as configurações de rede.
Faça uma cópia do arquivo `default.json `e altere as configurações da rede e o nome do arquivo. 
Após isso execute:

`python train-nn-cifar10.py -n {nome do arquivo}`

Em `app/data_nn` haverá uma pasta com o nome escolhido acima onde serão salvos os pesos da rede.
Há algumas limitações na arquitetura da rede, elas serão explicadas logo abaixo.


### Geração dos arquivos auxiliares da simulcão 

Já há arquivos auxiliares salvos, caso não queira gerar novos pode pular essa parte.

Semelhante ao passo anterior na pasta `app/config_hw` ficam os arquivos de configuração de HW. 
Faça uma cópia do arquivo `default.json` e altere as configurações e o nome do arquivo. 
Após isso execute:

`python generate-hw.py -n {nome do arquivo de rede} -w {nome do arquivo de hw}`

Em `app/data_hw` haverá uma pasta com o nome no formato  `{nome do arquivo de rede}_{nome do arquivo de hw}`
onde serão salvos auxiliares para a simulação por camada contendo informações como:

* Generics.
* Pacote com `record` onde serão colocadas as informações necessárias para a execução da convolução.
* Input feature map (ifmap), input weights (iwght) e gold (output feature map) em vhdl e txt.

Na pasta PE são salvos outros arquivos semelhantes necessários para simulação do `PE`.

### Simulação

Na pasta `sim_rtl` estão os `scripts` tcl usados na simulação das diferentes camadas.
Os arquivos `sim_pe*` fazem a simulação dos `PEs`, os outros arquivos `sim_*` fazem a simulação somente
da convolução.

O arquivo `sim_pe_multi.do` faz a simulação de todas as camadas convolucionais. 
Caso queira que usar um novo modelo de rede neural ou configuração de HW é necessário mudar dois caminhos:

    ../apps/data_hw/default_default/pe/config_pkg.vhd
    ../apps/data_hw/default_default/pe/generic_file.txt

As outras simulações executam uma convolução por vez. Caso queira executar numa outra camada que não seja
a zero, como a 1, como exemplo basta mudar: 

    ../apps/data_hw/default_default/0/config_pkg.vhd

Para:

    ../apps/data_hw/default_default/1/config_pkg.vhd

Caso queira usar outras configurações hw é necessário mudar `default_default` 
para a pasta do projeto desejado. É necessário mudar os outros caminhos da mesma pasta.


# Requirements

`conda create --name acc_dse_env2 "cudatoolkit=<10.2" tensorflow-gpu tensorflow-datasets pillow scikit-image`

`conda install tensorflow-datasets pillow scikit-image`