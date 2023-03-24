import json
import argparse
import pandas as pd

from pathlib import Path


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")

    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    file_hw = root / "rtl_config" / f"{args.rtl_config}.json"
    path = root / "rtl_output" / f"{args.cnn_config}/{args.rtl_config}"

    path_output = path / "table"
    path_output.mkdir(parents=True, exist_ok=True)

    with open(file_hw) as f:
        config_hw = json.load(f)

    path_layer = path / "layer"
    name_layer = ["iwght", "ifmap", "gold"]
    param_layer = {
        p.relative_to(path_layer).as_posix(): len(open_file(p))
        for name in name_layer
        for p in sorted(path_layer.glob(f"**/{name}.txt"))
    }

    param_name_layer = {
        n: {(k.split("/")[0]): v for k, v in param_layer.items() if n in k}
        for n in name_layer
    }
    dfp = pd.DataFrame.from_dict(param_name_layer)
    dfp.insert(0, 'layer', dfp.index)
    dfp = dfp.reset_index(drop=True)
    dfp.to_csv(path_output / 'param_layer.csv', index=False)
    with open(path_output / 'param_layer.tex', 'w') as f:
        f.write(dfp.to_latex(index=False))

    path_samples = path / "samples"
    param_samples = {
        p.relative_to(path_samples).stem: len(open_file(p))
        for name in ["ifmap", "gold"]
        for p in path_samples.glob(f"**/{name}.txt")
    }
    with open(path_output / 'param_samples.json', 'w') as f:
        json.dump(param_samples, f, ensure_ascii=False, indent=4)

    with open(path / "bram/bram_36Kb.vhd", "r") as f:
        bram_36Kb = f.readlines()

    bram_names = ["iwght", "ifmap", "gold", "sampleifmap", "samplegold"]
    bram_layer = {
        n: [
            b.split('"')[1].split("_")[1:]
            for b in bram_36Kb
            if n in b
        ]
        for n in bram_names
    }

    bram_layer_name = {
        k: {d[0] for d in v}
        for k, v in bram_layer.items()
    }

    bram_count = {
        k: {s.split("layer")[1]: (list(li[1] for li in bram_layer[k] if s == li[0]))
            for s in bram_layer_name[k]}
        for k in bram_names
    }

    bram_count_sorted = {
        k: dict(sorted(v.items()))
        for k, v in bram_count.items()
    }
    dfb = pd.DataFrame.from_dict({k: v for k, v in bram_count_sorted.items() if k in name_layer})
    dfb.insert(0, 'layer', dfb.index)
    dfb = dfb.reset_index(drop=True)
    dfb.to_csv(path_output / 'bram_layer.csv', index=False)
    with open(path_output / 'bram_layer.tex', 'w') as f:
        f.write(dfb.to_latex(index=False))

    with open(path_output / 'bram_samples.json', 'w') as f:
        json.dump(
            {k: v for k, v in bram_count_sorted.items() if k not in name_layer}, f, ensure_ascii=False, indent=4
        )


def open_file(path):
    with open(Path(path).resolve(), "r") as f:
        return f.readlines()


if __name__ == '__main__':
    main()
