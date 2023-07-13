import re
import json
import argparse
from pathlib import Path

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def main():
    dict_names = {
        'D1': '$D_1$',
        'D2': '$D_2$',
        'D4': '$D_4$',
        'D3': '$D_3$',
        'S1': '$S_1$',
        'S2': '$S_2$',
    }
    depth = {
        0: 0,
        2: 1,
        4: 2,
        6: 3,
    }
    root = Path(__file__).parent.parent.resolve()
    # path = root / "apps"

    path_output = Path(__file__).parent / "vivado-format"
    path_output.mkdir(parents=True, exist_ok=True)

    path_vivado = root / "sim_coroutine/vivado"
    list_utilization = list(path_vivado.glob("report-util*.txt"))

    list_df = {
        p.stem.split("-")[-1]: parse_report_util(p)
        for p in list_utilization
    }
    list_df = [v.assign(DNN=k) for k, v in list_df.items()]

    acc = pd.concat([
        v[v.apply(lambda x: x["Name"] == "accelerator" and x["Group"] == 1, axis=1)]
        for v in list_df
    ])
    acc = acc.drop(columns=['Hierarchy', 'Group', 'Layer', 'Name'])
    acc["DNN"] = acc.apply(lambda x: dict_names[x["DNN"]], axis=1)
    acc = acc.set_index('DNN').sort_index()
    styler = acc.style
    styler.to_latex(
        path_output / "vivado-accelerator.tex",
        label='tab:5-vivado-accelerator',
        caption='Utilização de recursos da FPGA pelo Accelerator para cada DNN',
        column_format='l' + 'r' * len(acc.columns),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )
    acc.to_csv(path_output / "vivado-accelerator.csv",)

    acc_inst = pd.concat([
        v[v.apply(lambda x: x["Name"] == "accelerator" and x["Group"] == 0, axis=1)]
        for v in list_df
    ])

    cnn_inst = pd.concat([
        v[v.apply(lambda x: x["Name"] == "cnn" and x["Group"] == 0, axis=1)]
        for v in list_df
    ])
    cnn_inst = cnn_inst[["Logic LUTs", "DNN"]]
    cnn_inst["DNN"] = cnn_inst.apply(lambda x: dict_names[x["DNN"]], axis=1)
    cnn_inst = cnn_inst.set_index('DNN').sort_index().T
    cnn_inst.index.name = ""
    styler = cnn_inst.style
    styler.to_latex(
        path_output / "vivado-cnn-inst.tex",
        label='tab:5-vivado-cnn',
        caption='Utilização de recursos da FPGA por instância de CNN em cada DNN',
        column_format='l' + 'r' * len(cnn_inst.columns),
        position_float="centering",
        position='ht!',
        # clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )

    core_inst = pd.concat([
        v[v.apply(lambda x: x["Name"] == "core" and x["Group"] == 0, axis=1)]
        for v in list_df
    ])
    core_inst = core_inst[["DNN", "Layer", "Logic LUTs"]]
    core_inst["DNN"] = core_inst.apply(lambda x: dict_names[x["DNN"]], axis=1)
    # core_inst = core_inst.set_index('DNN').sort_index()
    cidx = pd.MultiIndex.from_arrays([
        core_inst["DNN"].to_list(),
        core_inst["Layer"].to_list()
    ])
    # styler = pd.DataFrame(core_inst["Logic LUTs"].to_list(), columns=cidx, index=["Logic LUTs"]).sort_index().style
    #
    # styler = core_inst.style
    # styler.to_latex(
    #     path_output / "vivado-core-inst.tex",
    #     label='tab:5-vivado-core',
    #     caption='Utilização de recursos da FPGA por instância de CORE em cada DNN',
    #     column_format='l' + 'r' * len(core_inst.columns),
    #     position_float="centering",
    #     position='ht!',
    #     clines="skip-last;data",
    #     multicol_align="c",
    #     hrules=True,
    # )
    # core_inst.to_csv(path_output / "vivado-core-inst.csv",)

    conv = pd.concat([
        v[v.apply(lambda x: x["Name"] == "conv" and x["Group"] == 1, axis=1)]
        for v in list_df
    ])
    layer = conv["Layer"]
    dnn = conv["DNN"]
    # index = pd.MultiIndex.from_tuples(zip(*(dnn, layer)), names=["DNN", "Layer"])
    conv_data = conv[["Logic LUTs", "FFs"]].to_numpy()

    cidx = pd.MultiIndex.from_arrays([
        dnn,
        layer
    ])
    conv_new = pd.DataFrame(conv_data.T, columns=cidx, index=["Logic LUTs", "FFs"]).sort_index(axis=1)
    caption = r"Utilização de recursos da FPGA por instância de CONVWS por \textit{layer} e DNN."
    string = conv_new.style.to_latex(
        label='tab:5-vivado-conv',
        caption=caption,
        column_format='l' + 'r' * (len(conv_new.columns)),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )
    string_split = string.splitlines()
    cmidrule = r"\cmidrule(lr){2-4} \cmidrule(lr){5-7} \cmidrule(lr){8-10} \cmidrule(lr){11-13} " \
               r"\cmidrule(lr){14-15} \cmidrule(l){16-17}"
    string_split_new = string_split[:7] + [cmidrule] + string_split[7:]
    with open(path_output / "vivado-conv.tex", 'w') as f:
        f.write("\n".join(string_split_new))
    conv_new.to_csv(path_output / "vivado-conv.csv")

    ifmap = pd.concat([
        v[v.apply(lambda x: x["Name"] == 'ifmap' and x["Layer"] == 0, axis=1)]
        for v in list_df
    ])

    ofmap = pd.concat([
        v[v.apply(lambda x: x["Name"] == 'ofmap' and x["Group"] == 1, axis=1)]
        for v in list_df
    ])

    ofmap = ofmap.drop(columns=['Hierarchy', 'Group', 'Layer', 'Name', "DSP Blocks"])
    ofmap["DNN"] = ofmap.apply(lambda x: dict_names[x["DNN"]], axis=1)
    ofmap = ofmap.set_index('DNN').sort_index()
    styler = ofmap.style
    styler.to_latex(
        path_output / "vivado-ofmap.tex",
        label='tab:5-vivado-ofmap',
        caption='Utilização de recursos da FPGA pelo OFMAP de cada DNN',
        column_format='l' + 'r' * len(ofmap.columns),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )
    acc.to_csv(path_output / "vivado-ofmap.csv")

    ifmap = pd.concat([
        v[v.apply(lambda x: x["Name"] == 'ifmap' and x["Layer"] != 0, axis=1)]
        for v in list_df
    ])
    layer = ifmap["Layer"]
    dnn = ifmap["DNN"]
    # index = pd.MultiIndex.from_tuples(zip(*(dnn, layer)), names=["DNN", "Layer"])
    ifmap_data = ifmap[["RAMB36", "Logic LUTs", "FFs"]].to_numpy()

    cidx = pd.MultiIndex.from_arrays([
        dnn,
        layer
    ])
    ifmap_new = pd.DataFrame(ifmap_data.T, columns=cidx, index=["RAMB36", "Logic LUTs", "FFs"]).sort_index(axis=1)
    caption = r"Utilização de recursos da FPGA por instância de IFMAP por CORE e DNN."
    string = ifmap_new.style.to_latex(
        label='tab:5-vivado-ifmap',
        caption=caption,
        column_format='l' + 'r' * (len(ifmap_new.columns)),
        position_float="centering",
        position='ht!',
        clines="skip-last;data",
        multicol_align="c",
        hrules=True,
    )
    string_split = string.splitlines()
    cmidrule = r"\cmidrule(lr){2-4} \cmidrule(lr){5-7} \cmidrule(lr){8-10} \cmidrule(lr){11-13} " \
               r"\cmidrule(lr){14-15} \cmidrule(l){16-17}"
    string_split_new = string_split[:7] + [cmidrule] + string_split[7:]
    with open(path_output / "vivado-ifmap.tex", 'w') as f:
        f.write("\n".join(string_split_new))
    ifmap_new.T.to_csv(path_output / "vivado-ifmap.csv")



    mem = pd.concat([
        v[v.apply(lambda x: x["Name"] in ['ifmap', "ofmap", "iwght"] and x["Layer"] != 0, axis=1)]
        for v in list_df
    ])

    x, y = list(zip(*sorted(zip(mem["Logic LUTs"].astype(int), mem["RAMB36"].astype(int)))))
    # tt = [f"{x}/{y}" for x, y in t]
    plt.scatter(x=x, y=y)
    plt.xlabel("Logic LUTs")
    plt.ylabel("RAMB36")
    plt.xticks(np.arange(0, np.max(np.array(x)), 50))
    # for i, txt in enumerate(tt):
    #     plt.annotate(txt, (x[i], y[i]))
    plt.savefig(path_output / "vivado-ifmap.png")
    plt.show()
    plt.close()


def parse_report_util(path_table):
    colspecs = [
        (3, 58), (61, 103), (106, 116), (119, 129), (132, 139), (142, 146), (149, 153), (156, 162), (165, 172), (174, 184)
    ]
    new_name = ['accelerator', 'cnn', 'core', 'ifmap', 'ofmap', 'iwght', 'conv']
    names = [
        'Instance', 'Module', 'Total LUTs', 'Logic LUTs', 'LUTRAMs', 'SRLs', 'FFs', 'RAMB36', 'RAMB18', 'DSP Blocks'
    ]
    with open(path_table) as f:
        string = f.readlines()
    fwd = string[23:]
    lines = [s for s in fwd if s[0] == '|' and s[1] == ' ']
    line_split = [
        [s[c[0] - 1:c[1] - 1] for c in colspecs]
        for s in lines
    ]
    df = pd.DataFrame(data=line_split, columns=names)
    df['Hierarchy'] = df['Instance'].apply(lambda x: int((len(x) - len(x.lstrip())) / 2))
    df['Group'] = df['Instance'].apply(lambda x: True if '(' not in x and ')' not in x else False)
    df['Layer'] = (
        df['Instance'].apply(
            lambda s: int(re.search(r"\d+", s).group(0)) if re.search(r"\d+", s) is not None and "core" in s else 0
        )
    )

    instance = df['Instance']
    layer = df['Layer']
    hierarchy = df['Hierarchy']

    core = 0
    lasth = 0
    new_layer = []
    for la, h, i in zip(layer, hierarchy, instance):
        if lasth != h:
            core = la
            lasth = h
        new_layer.append(core)

    df['Layer'] = new_layer
    df['Instance'] = df['Instance'].apply(lambda x: x.strip())
    df['Module'] = df['Module'].apply(lambda x: x.strip())
    df['_Name'] = df['Instance'].apply(lambda x: [n for n in new_name if n.lower() in x.lower() and 'MEM' not in x])
    df['Name'] = df['_Name'].apply(lambda x: x[0] if x != [] else '')
    df = df[df['Name'] != ''].drop(columns=['_Name', 'Module', 'Instance', 'Total LUTs', 'LUTRAMs', 'SRLs', 'RAMB18'])
    return df


if __name__ == '__main__':
    main()
