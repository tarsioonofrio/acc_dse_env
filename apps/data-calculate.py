import json
import argparse
from pathlib import Path

from lib.bram import generate_bram_files


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

    path_output = path / "bram"
    path_output.mkdir(parents=True, exist_ok=True)

    with open(file_hw) as f:
        config_hw = json.load(f)

    path_layer = path / "layer"
    param_layer = {
        p.relative_to(path_layer).as_posix(): len(open_file(p))
        for name in ["iwght", "ifmap", "gold"]
        for p in path_layer.glob(f"**/{name}.txt")
    }

    path_samples = path / "samples"
    param_samples = {
        p.relative_to(path_samples).as_posix(): len(open_file(p))
        for name in ["ifmap", "gold"]
        for p in path_samples.glob(f"**/{name}.txt")
    }

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
    # .split("layer")[1]

    bram_count = {
        k: {s.split("layer")[1]: len(list(li[1] for li in bram_layer[k] if s == li[0]))
         for s in bram_layer_name[k]}
        for k in bram_names
    }

    bram_count_sorted = {
        k: dict(sorted(v.items()))
        for k, v in bram_count.items()
    }

    print()


def open_file(path):
    with open(Path(path).resolve(), "r") as f:
        return f.readlines()


if __name__ == '__main__':
    main()
