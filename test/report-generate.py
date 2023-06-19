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
    cmidrule = r"\cmidrule(r){2-3} \cmidrule(l){4-5}"
    root = Path(__file__).parent.parent.resolve()
    # path = root / "apps"

    path_output = Path(__file__).parent / "report"
    path_output.mkdir(parents=True, exist_ok=True)

    path_apps = root / "apps"
    path_table = root / "test/table"

    dnn_names = [f for f in path_apps.glob("*") if f.is_dir()]
    bram_csv = list(path_apps.glob(f"**/bram_layer.csv"))
    param_csv = list(path_apps.glob(f"**/param_layer.csv"))

    bram_data = sum_data(bram_csv)
    param_data = sum_data(param_csv)
    bram_param_data = pd.merge(bram_data, param_data, on="cnn", suffixes=("_bram", "_param"))

    # benchmark_csv = list(path_table.glob("*.csv"))
    benchmark_data = pd.read_csv(path_table / "cnn-model.csv")
    benchmark_data['totalcnntime'] = (benchmark_data['totalcnntime'] * 10).astype(int)
    # benchmark_layer = pd.read_csv(path_table / "cnn-layer.csv")
    cnn_data = pd.merge(bram_param_data, benchmark_data, on="cnn")
    old_index = cnn_data['cnn'].to_list()
    new_index = [dict_names[i] for i in old_index]
    cnn_data = cnn_data.drop(columns=['cnn'])
    columns = {
        'wght_bram': 'Weights',
        'fmap_bram': 'Features',
        # 'input_bram': 'Input',
        'wght_param': 'Weights',
        'fmap_param': 'Features',
        # 'input_param': 'Input',
        # 'totalcnntime': 'Time(ns)'
    }
    cidx = pd.MultiIndex.from_arrays([
        ['BRAMs', 'BRAMs', 'Parameters', 'Parameters'],
        list(columns.values())
    ])
    caption = r"Características projetadas das DNN. Há mais 6 BRAMs e 3072 parâmetros que correspondem aos dados de " \
              r"entrada na memória do \textit{accelerator}"
    styler = pd.DataFrame(cnn_data[columns.keys()].to_numpy(), columns=cidx, index=new_index).sort_index().style
    string = styler.to_latex(
        label='tab:5-dnn-report',
        caption=caption,
        column_format='l' + 'r' * (len(columns)),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )
    string_split = string.splitlines()
    string_split_new = string_split[:7] + [cmidrule] + string_split[7:]
    with open(path_output / "cnn-data.tex", 'w') as f:
        f.write("\n".join(string_split_new))
    cnn_data.to_csv(path_output / "cnn-data.csv")


def sum_data(csv):
    name = [b.parent.parent.parent.name for b in csv]
    df = [pd.read_csv(b) for b in csv]
    if "ifmap" in df[0].columns:
        new_name = {'ifmap': 'fmap', 'iwght': 'wght'}
        df = [d.rename(columns=new_name) for d in df]
    df_sum = [b.sum() for b in df]
    df_input = [pd.Series({**s.to_dict(), "input": p["fmap"][0]}) for p, s in zip(df, df_sum)]
    concat_sum = pd.concat(df_input, axis=1).T
    concat = pd.concat([pd.Series(name), concat_sum], axis=1).drop(['layer', 'gold'], axis=1)
    return concat.rename(columns={0: "cnn"})


def open_file(path):
    with open(Path(path).resolve(), "r") as f:
        return f.readlines()


if __name__ == '__main__':
    main()
