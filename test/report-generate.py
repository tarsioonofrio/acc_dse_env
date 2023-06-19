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
    cmidrule = r"\cmidrule(r){2-4} \cmidrule(lr){5-7} \cmidrule(l){8-8}"
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
    benchmark_data['totalcnnsteps'] = (benchmark_data['totalcnnsteps'] / 1000).astype(int)
    # benchmark_layer = pd.read_csv(path_table / "cnn-layer.csv")
    cnn_data = pd.merge(bram_param_data, benchmark_data, on="cnn")
    old_index = cnn_data['cnn'].to_list()
    new_index = [dict_names[i] for i in old_index]
    cnn_data = cnn_data.drop(columns=['cnn'])
    columns = {
        'wght_bram': 'Weights',
        'fmap_bram': 'Features',
        'total_bram': 'Total',
        'wght_param': 'Weights',
        'fmap_param': 'Features',
        'total_param': 'Total',
        'totalcnnsteps': 'Time $(\\mu s)$'
    }
    cidx = pd.MultiIndex.from_arrays([
        ['BRAMs', 'BRAMs', 'BRAMs', 'Parameters', 'Parameters', 'Parameters', 'Simulation'],
        list(columns.values())
    ])
    caption = "Características das DNN. Ao 'Total' foram adicionadas a quantidade referentes a BRAM do Accelerator."
    cnn_data = cnn_data[columns.keys()]
    styler = pd.DataFrame(cnn_data.to_numpy(), columns=cidx, index=new_index).sort_index().style
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
    df_input = [pd.Series({**s.to_dict(), "total": p["fmap"][0] + s["fmap"]}) for p, s in zip(df, df_sum)]
    concat_sum = pd.concat(df_input, axis=1).T
    concat = pd.concat([pd.Series(name), concat_sum], axis=1).drop(['layer', 'gold'], axis=1)
    return concat.rename(columns={0: "cnn"})


def open_file(path):
    with open(Path(path).resolve(), "r") as f:
        return f.readlines()


if __name__ == '__main__':
    main()
