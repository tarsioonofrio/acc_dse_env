import json
import argparse
from pathlib import Path

from math import log2, ceil

from lib.bram import generate_bram_files, open_file


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")

    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    file_rtl = root / "rtl_config" / f"{args.rtl_config}.json"
    path = root / "rtl_output" / f"{args.cnn_config}/{args.rtl_config}"

    path_output = path / "bram"
    path_output.mkdir(parents=True, exist_ok=True)

    with open(file_rtl) as f:
        config_rtl = json.load(f)

    if config_rtl["MAX_MEM_SIZE"] <= 32:
        generate_bram_files(path, path_output, config_rtl, "18Kb")
    generate_bram_files(path, path_output, config_rtl, "36Kb")

    with open(Path(__file__).parent.resolve() / "lib/template_config_const_array.vhd", "r") as f:
        template_config_array = f.read()

    num_words = [ceil(log2(d))+2 for d in open_file(path / "core/config_pkg.txt")]
    path_layer = path / "layer"
    config_data = [
        [format(d,  f'0{n}b') for d, n in zip(open_file(p), num_words)]
        for p in sorted(path_layer.glob(f"**/config_pkg.txt"))
    ]
    config_format = [
        template_config_array.format(num=e, data=d) for e, d in enumerate(config_data)
    ]

    # bram_layer = ', '.join(str(i) for i in range(len(dict_bram36k['wght'])))
    with open(Path(__file__).parent.resolve() / "lib/template_config_const_pkg.vhd", "r") as f:
        output = f.read().format(size=len(config_data)-1, array=",\n".join(config_format))

    with open(path_output / f"config_const_pkg.vhd", "w") as f:
        f.write(output)


if __name__ == '__main__':
    main()
