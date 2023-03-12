from math import ceil, floor
from pathlib import Path

bram_size_dict = {
    64: "18Kb",
    128: "36Kb"
}
bram18kb_dict = {
    (19, 36): {"BRAM_ADDR": 9, "BRAM_WE": 4, "BRAM_DEPTH": 512},
    (10, 18): {"BRAM_ADDR": 10, "BRAM_WE": 2, "BRAM_DEPTH": 1024},
    (5, 9): {"BRAM_ADDR": 11, "BRAM_WE": 1, "BRAM_DEPTH": 2048},
    (3, 4): {"BRAM_ADDR": 12, "BRAM_WE": 1, "BRAM_DEPTH": 4096},
    (2, 2): {"BRAM_ADDR": 13, "BRAM_WE": 1, "BRAM_DEPTH": 8192},
    (1, 1): {"BRAM_ADDR": 14, "BRAM_WE": 1, "BRAM_DEPTH": 16384},
}
bram36kb_dict = {
    (37, 72): {"BRAM_ADDR": 9, "BRAM_WE": 8, "BRAM_DEPTH": 512},
    (19, 36): {"BRAM_ADDR": 10, "BRAM_WE": 4, "BRAM_DEPTH": 1024},
    (10, 18): {"BRAM_ADDR": 11, "BRAM_WE": 2, "BRAM_DEPTH": 2048},
    (5, 9): {"BRAM_ADDR": 12, "BRAM_WE": 1, "BRAM_DEPTH": 4096},
    (3, 4): {"BRAM_ADDR": 13, "BRAM_WE": 1, "BRAM_DEPTH": 8192},
    (2, 2): {"BRAM_ADDR": 14, "BRAM_WE": 1, "BRAM_DEPTH": 16384},
    (1, 1): {"BRAM_ADDR": 15, "BRAM_WE": 1, "BRAM_DEPTH": 32768},
}


def two_comp(val, nbits):
    # https://stackoverflow.com/questions/7822956/how-to-convert-negative-integer-value-to-hex-in-python
    return (val + (1 << nbits)) % (1 << nbits)


def format_bram_pkg(name, feat_list, bits=32, lines_per_file=64):
    bram_config = get_bram_config(bits, lines_per_file)
    bram_depth = bram_config["BRAM_DEPTH"]
    values_per_line = bram_depth // lines_per_file
    bytes_per_value = 64 // values_per_line

    # word = floor(bits / 4)
    feat_hex = [format(two_comp(int(feat), bytes_per_value*4), f'0{bytes_per_value}x') for feat in feat_list]
    # total_words = floor(64 / word)
    feat_line = ["".join(reversed(feat_hex[i:i + values_per_line])) for i in range(0, len(feat_hex), values_per_line)]
    feat_file = [feat_line[i:i + lines_per_file] for i in range(0, len(feat_line), lines_per_file)]

    bram_size = bram_size_dict[lines_per_file]
    with open(Path(__file__).parent.resolve() / f"bram_unisim_{bram_size}_template.vhd", "r") as f:
        text = f.read()

    list_entity = [f"{name}_entity{i}" for i, file in enumerate(feat_file)]

    list_text_out = [
        text.format(
            label=f"MEM_{entity.upper()}", bram_name=entity, init_xx=init_data(file, lines_per_file),
            data_width=bits
        )
        for i, (file, entity) in enumerate(zip(feat_file, list_entity))
    ]

    blocks_string = "".join(list_text_out)
    return blocks_string, len(feat_file)
    # write_bram_pkg(blocks_string, lines_per_file, path, bits)


def write_bram_pkg(blocks_string, lines_per_file, path, bits):
    bram_config = get_bram_config(bits, lines_per_file)
    bram_addr = bram_config["BRAM_ADDR"]
    bram_we = bram_config["BRAM_WE"]
    with open(Path(__file__).parent.resolve() / "bram_unisim_template.vhd", "r") as f:
        bram_wrapper = f.read()
    text_out = bram_wrapper.format(
        code=blocks_string, bram_addr=bram_addr, bram_we=bram_we, bram_data=bits
    )
    with open(path, "w") as f:
        f.writelines(text_out)


def get_bram_config(bits, lines_per_file):
    bram_size = bram_size_dict[lines_per_file]
    if bram_size == '18Kb':
        bram_dict = bram18kb_dict
    else:
        bram_dict = bram36kb_dict
    bram_config = [
        v for k, v in bram_dict.items()
        if k[0] <= bits <= k[1]
    ]
    return bram_config[0]


def init_data(file, lines_per_file):
    file_complete = file if len(file) == lines_per_file else file + ['0' * 64] * (lines_per_file - len(file))
    return file_complete


def open_file(path):
    with open(Path(path).resolve(), "r") as f:
        data = f.readlines()
    data_int = [int(i) for i in data]
    return data_int


def generate_bram_files2(n_layers, input_path, path_output, config_hw):
    max_bits = config_hw["BRAM_RW_DEPTH"]
    bram_addr18k = get_bram_config(max_bits, 64)["BRAM_ADDR"]
    bram_addr36k = get_bram_config(max_bits, 128)["BRAM_ADDR"]
    get_bram_config(max_bits, 128)
    wght = [open_file(p) for p in input_path.glob("**/iwght.txt")]
    wght_18k = [format_bram_pkg(f"iwght_layer{i}", d, max_bits, 64) for i, d in zip(range(n_layers), wght)]
    wght_36k = [format_bram_pkg(f"iwght_layer{i}", d, max_bits, 128) for i, d in zip(range(n_layers), wght)]
    wght_18k_data, wght_18k_size = [y for x in wght_18k for y in x[0]], [x[1] for x in wght_18k]
    wght_36k_data, wght_36k_size = [y for x in wght_36k for y in x[0]], [x[1] for x in wght_36k]

    fmap = [open_file(p) for p in input_path.glob("**/ifmap.txt")]
    fmap_18k = [format_bram_pkg(f"ifmap_layer{i}", d, max_bits, 64) for i, d in zip(range(n_layers), fmap)]
    fmap_36k = [format_bram_pkg(f"ifmap_layer{i}", d, max_bits, 128) for i, d in zip(range(n_layers), fmap)]
    fmap_18k_data, fmap_18k_size = [y for x in fmap_18k for y in x[0]], [x[1] for x in fmap_18k]
    fmap_36k_data, fmap_36k_size = [y for x in fmap_36k for y in x[0]], [x[1] for x in fmap_36k]

    gold = [open_file(p) for p in input_path.glob("**/gold.txt")]
    gold_18k = [format_bram_pkg(f"gold_layer{i}", d, max_bits, 64) for i, d in zip(range(n_layers), gold)]
    gold_36k = [format_bram_pkg(f"gold_layer{i}", d, max_bits, 128) for i, d in zip(range(n_layers), gold)]
    gold_18k_data, gold_18k_size = [y for x in gold_18k for y in x[0]], [x[1] for x in gold_18k]
    gold_36k_data, gold_36k_size = [y for x in gold_36k for y in x[0]], [x[1] for x in gold_36k]

    with open(Path(__file__).parent.resolve() / f"bram_unisim_18Kb_template_empty.vhd", "r") as f:
        empty_18k = f.read().format(data_width=max_bits)

    with open(Path(__file__).parent.resolve() / f"bram_unisim_36Kb_template_empty.vhd", "r") as f:
        empty_36k = f.read().format(data_width=max_bits)

    bram18k = "".join(wght_18k_data + fmap_18k_data + gold_18k_data) + empty_18k
    bram36k = "".join(wght_36k_data + fmap_36k_data + gold_36k_data) + empty_36k

    write_bram_pkg(bram18k, 64, path_output / "bram_18Kb.vhd", max_bits)
    write_bram_pkg(bram36k, 128, path_output / "bram_36Kb.vhd", max_bits)

    generic18k = " ".join(
        f"-gN_BRAM_{n}={i}" for i, n in
        zip([wght_18k_size, fmap_18k_size, gold_18k_size], ["IWGHT", "IFMAP", "GOLD"])
    )
    generic36k = " ".join(
        f"-gN_BRAM_{n}={i}" for i, n in
        zip([wght_36k_size, fmap_36k_size, gold_36k_size], ["IWGHT", "IFMAP", "GOLD"])
    )

    # with open(path_output / "generic_file_bram18k.txt", "w") as f:
    #     f.write(generic18k)
    #
    # with open(path_output / "generic_file_bram36k.txt", "w") as f:
    #     f.write(generic36k)

    rw_depth_generics = (
        f" -gBRAM_RW_DEPTH={config_hw['BRAM_RW_DEPTH']}"
        f" -gBRAM_RW_DEPTH_SAMPLES={config_hw['BRAM_RW_DEPTH_SAMPLES']}"
    )

    with open(path_output.parent / "core/generic_file.txt", "r") as f:
        generics = f.read().strip()

    with open(path_output / "generic_file18k.txt", "w") as f:
        f.writelines(
            generics + rw_depth_generics + f" -gBRAM_ADDR={bram_addr18k}"
        )

    with open(path_output / "generic_file36k.txt", "w") as f:
        f.writelines(
            generics + rw_depth_generics + f" -gBRAM_ADDR={bram_addr36k}"
        )
