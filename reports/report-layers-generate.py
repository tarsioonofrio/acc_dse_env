import json
import argparse
import pandas as pd

from pathlib import Path


def main():
    dict_names = {
        'default2': '$D_2$',
        'default4': '$D_4$',
        'default3': '$D_3$',
        'small': '$S_1$',
        'default': '$D_1$',
        'small2': '$S_2$',
    }
    root = Path(__file__).parent.parent.resolve()
    # path = root / "apps"

    path_output = Path(__file__).parent / "run-time-formated"
    path_output.mkdir(parents=True, exist_ok=True)

    path_apps = root / "apps"
    path_table = root / "sim_coroutine/run-time"

    # dnn_names = [f for f in path_apps.glob("*") if f.is_dir()]
    # bram_csv = list(path_apps.glob(f"**/bram_layer.csv"))
    # param_csv = list(path_apps.glob(f"**/param_layer.csv"))
    #
    # bram_data = sum_data(bram_csv)
    # param_data = sum_data(param_csv)
    # bram_param_data = pd.merge(bram_data, param_data, on="cnn", suffixes=("_bram", "_param"))

    # benchmark_csv = list(path_table.glob("*.csv"))
    simulation_data = pd.read_csv(path_table / "cnn-layer.csv")
    simulation_data[["totalofmaptime", "totalconvtime"]] = ((
            simulation_data[["totalofmaptime", "totalconvtime"]] * 10).astype(int))

    sim_per_layer = [
        simulation_data[simulation_data["n"] == n][["totalofmaptime", "totalconvtime", "cnn"]]
        for n in range(1, 4)
    ]

    sim_layer_rename = [
        s.rename(columns={c: c+str(e + 1) for c in s.columns if c != 'cnn'})
        for e, s in enumerate(sim_per_layer)
    ]
    sim_merg1 = pd.merge(sim_layer_rename[0], sim_layer_rename[1], on="cnn", how="outer")
    sim_merg2 = pd.merge(sim_merg1, sim_layer_rename[2], on="cnn", how="outer")

    old_index = sim_merg2['cnn'].to_list()
    new_index = [dict_names[i] for i in old_index]
    cnn_data = sim_merg2.drop(columns=['cnn'])
    columns = {
        'totalconvtime1': 'Convolution',
        'totalofmaptime1': 'OFMAP',
        'totalconvtime2': 'Convolution',
        'totalofmaptime2': 'OFMAP',
        'totalconvtime3': 'Convolution',
        'totalofmaptime3': 'OFMAP',

    }
    cnn_data[list(columns.keys())] = cnn_data[list(columns.keys())] / 10**6

    cidx = pd.MultiIndex.from_arrays([
        ['$Layer_1$', '$Layer_1$', '$Layer_2$', '$Layer_2$', '$Layer_3$', '$Layer_3$'],
        list(columns.values())
    ])
    styler = (pd.DataFrame(cnn_data[columns.keys()].to_numpy(), columns=cidx, index=new_index)
              .sort_index()
              .fillna(0)
              .style
              )
    caption = "Tempo simulação das execução das operações de convolução e escrita do OFMAP (paralela a convolução)."
    string = styler.format(decimal=',', precision=2).to_latex(
        label='tab:5-dnn-layer',
        caption=caption,
        column_format='l' + 'r' * (len(columns)),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )

    string_split = string.splitlines()
    cmidrule = r"\cmidrule(r){2-3} \cmidrule(lr){4-5} \cmidrule(l){6-7}"
    string_split_new = string_split[:7] + [cmidrule] + string_split[7:]
    with open(path_output / "cnn-layer.tex", 'w') as f:
        f.write("\n".join(string_split_new))
    cnn_data.to_csv(path_output / "cnn-layer.csv")


if __name__ == '__main__':
    main()
