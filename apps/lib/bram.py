import json
from pathlib import Path

bram_lines = {
    "18Kb": 64,
    "36Kb": 128
}

bram18kb_dict = {
    (17, 32): {"BRAM_WIDTH": (19, 36), "BRAM_DEPTH": 512,   "BRAM_ADDR": 9,  "BRAM_WE": 4, "BRAM_PAR": 4},
    (9, 16):  {"BRAM_WIDTH": (10, 18), "BRAM_DEPTH": 1024,  "BRAM_ADDR": 10, "BRAM_WE": 2, "BRAM_PAR": 2},
    (5, 8):   {"BRAM_WIDTH": (5, 9),   "BRAM_DEPTH": 2048,  "BRAM_ADDR": 11, "BRAM_WE": 1, "BRAM_PAR": 1},
    (3, 4):   {"BRAM_WIDTH": (3, 4),   "BRAM_DEPTH": 4096,  "BRAM_ADDR": 12, "BRAM_WE": 1, "BRAM_PAR": 0},
    (2, 2):   {"BRAM_WIDTH": (2, 2),   "BRAM_DEPTH": 8192,  "BRAM_ADDR": 13, "BRAM_WE": 1, "BRAM_PAR": 0},
    (1, 1):   {"BRAM_WIDTH": (1, 1),   "BRAM_DEPTH": 16384, "BRAM_ADDR": 14, "BRAM_WE": 1, "BRAM_PAR": 0},
}

bram36kb_dict = {
    (33, 64): {"BRAM_WIDTH": (37, 72), "BRAM_DEPTH": 512,   "BRAM_ADDR": 9,  "BRAM_WE": 8, "BRAM_PAR": 8},
    (16, 32): {"BRAM_WIDTH": (19, 36), "BRAM_DEPTH": 1024,  "BRAM_ADDR": 10, "BRAM_WE": 4, "BRAM_PAR": 4},
    (9, 16):  {"BRAM_WIDTH": (10, 18), "BRAM_DEPTH": 2048,  "BRAM_ADDR": 11, "BRAM_WE": 2, "BRAM_PAR": 2},
    (5, 8):   {"BRAM_WIDTH": (5, 9),   "BRAM_DEPTH": 4096,  "BRAM_ADDR": 12, "BRAM_WE": 1, "BRAM_PAR": 1},
    (3, 4):   {"BRAM_WIDTH": (3, 4),   "BRAM_DEPTH": 8192,  "BRAM_ADDR": 13, "BRAM_WE": 1, "BRAM_PAR": 0},
    (2, 2):   {"BRAM_WIDTH": (2, 2),   "BRAM_DEPTH": 16384, "BRAM_ADDR": 14, "BRAM_WE": 1, "BRAM_PAR": 0},
    (1, 1):   {"BRAM_WIDTH": (1, 1),   "BRAM_DEPTH": 32768, "BRAM_ADDR": 15, "BRAM_WE": 1, "BRAM_PAR": 0},
}

dict_fun_ordenate_bits = {
    36: lambda i: i[8:-1] + i[-1] + i[:8]
}


def two_comp(val, nbits):
    # https://stackoverflow.com/questions/7822956/how-to-convert-negative-integer-value-to-hex-in-python
    return (val + (1 << nbits)) % (1 << nbits)


def format_bram_pkg(name, feat_list, config_rtl, bits=32, bram_size="36Kb"):
    lines_per_file = bram_lines[bram_size]
    bram_depth = config_rtl["BRAM_DEPTH"]
    values_per_line = bram_depth // lines_per_file
    bytes_per_value = 64 // values_per_line

    feat_hex = [format(two_comp(int(feat), bytes_per_value*4), f'0{bytes_per_value}x') for feat in feat_list]
    feat_line = [list(reversed(feat_hex[i:i + values_per_line])) for i in range(0, len(feat_hex), values_per_line)]
    feat_shuffle = ["".join(dict_fun_ordenate_bits[bits](i) for i in line) for line in feat_line]
    feat_file = [feat_shuffle[i:i + lines_per_file] for i in range(0, len(feat_shuffle), lines_per_file)]

    with open(Path(__file__).parent.resolve() / f"template/bram_unisim_{bram_size}.vhd", "r") as f:
        text = f.read()

    list_entity = [f"{name}_instance{i}" for i, file in enumerate(feat_file)]

    list_text_out = [
        text.format(
            label=f"MEM_{entity.upper()}", bram_name=entity, init_xx=init_data(file, lines_per_file),
            bram_width=bits + config_rtl["BRAM_PAR"]
        )
        for i, (file, entity) in enumerate(zip(feat_file, list_entity))
    ]

    blocks_string = "".join(list_text_out)
    return blocks_string, len(feat_file)
    # write_bram_pkg(blocks_string, lines_per_file, path, bits)


def write_bram_pkg(blocks_string, path, bits, bram_config):
    bram_addr = bram_config["BRAM_ADDR"]
    bram_we = bram_config["BRAM_WE"]
    with open(Path(__file__).parent.resolve() / "template/bram_unisim.vhd", "r") as f:
        bram_wrapper = f.read()

    bram_width = bits + bram_config["BRAM_PAR"]
    bram_const = '0' * bram_config["BRAM_PAR"]
    text_out = bram_wrapper.format(
        code=blocks_string, mem_width=bits, bram_addr=bram_addr, bram_we=bram_we, bram_const=bram_const,
        bram_width=bram_width, bram_par=bram_config["BRAM_PAR"],
    )
    with open(path, "w") as f:
        f.writelines(text_out)


def get_bram_config(bits, bram_size):
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


def generate_bram_files(input_path, path_output, config_hw, bram_size):
    max_bits = config_hw["MAX_MEM_SIZE"]
    bram_config = get_bram_config(max_bits, bram_size)
    bram_addr = bram_config["BRAM_ADDR"]

    wght_data, wght_size = generate_data_formatted(
        "iwght", "iwght", bram_config, bram_size, input_path / "layer", max_bits
    )
    fmap_data, fmap_size = generate_data_formatted(
        "ifmap", "ifmap", bram_config, bram_size, input_path / "layer", max_bits
    )
    gold_data, gold_size = generate_data_formatted(
        "gold", "gold", bram_config, bram_size, input_path / "layer", max_bits
    )

    sample_fmap_data, sample_fmap_size = generate_data_formatted(
        "ifmap", "sampleifmap", bram_config, bram_size, input_path / "samples", max_bits
    )

    sample_gold_data, sample_gold_size = generate_data_formatted(
        "gold", "samplegold", bram_config, bram_size, input_path / "samples", max_bits
    )

    with open(Path(__file__).parent.resolve() / f"template/bram_unisim_{bram_size}_empty.vhd", "r") as f:
        empty = f.read().format(bram_width=max_bits + bram_config["BRAM_PAR"])

    bram36k = "".join(wght_data + fmap_data + gold_data + sample_fmap_data + sample_gold_data) + empty

    write_bram_pkg(bram36k, path_output / f"bram_{bram_size}.vhd", max_bits, bram_config)

    generic_size = " ".join(
        f' -gBRAM_NUM_{n}={"".join(reversed(i))}' for (i), n in
        zip([wght_size, fmap_size, gold_size], ["IWGHT", "IFMAP", "GOLD"])
    )

    rw_depth_generics = (
        f" -gMAX_MEM_SIZE={config_hw['MAX_MEM_SIZE']}"
        # f" -gBRAM_RW_DEPTH_SAMPLES={config_hw['BRAM_RW_DEPTH_SAMPLES']}"
    )

    with open(path_output.parent / "core/generic_file.txt", "r") as f:
        generics = f.read().strip()

    with open(path_output / f"generic_file{bram_size}.txt", "w") as f:
        f.writelines(
            generics + rw_depth_generics + generic_size + f" -gBRAM_ADDR={bram_addr}"
        )

    generic_size_synth = " ".join(
        f' {{BRAM_NUM_{n} {"".join(reversed(i))}}}' for i, n in
        zip([wght_size, fmap_size, gold_size], ["IWGHT", "IFMAP", "GOLD"])
    )

    rw_depth_generics_synth = (
        f" {{MAX_MEM_SIZE {config_hw['MAX_MEM_SIZE']}}}"
        # f" -gBRAM_RW_DEPTH_SAMPLES={config_hw['BRAM_RW_DEPTH_SAMPLES']}"
    )

    with open(path_output.parent / "core/generic_synth.tcl", "r") as f:
        generics_synth = f.read().strip()

    with open(path_output / f"generic_synth{bram_size}.txt", "w") as f:
        f.writelines(
            generics_synth[:-1] + rw_depth_generics_synth + generic_size_synth + f" {{BRAM_ADDR={bram_addr}}}" + "}"
        )

    dict_bram = {
        "wght": wght_size,
        "fmap": fmap_size,
        "gold": gold_size
    }
    with open(path_output / 'bram_size.json', 'w') as f:
        json.dump(dict_bram, f, indent=4)
    return dict_bram


def generate_data_formatted(file_name, entity_name, bram_config, bram_size, input_path, max_bits):
    formatted = [
        format_bram_pkg(f"{entity_name}_layer{f.parent.name}", open_file(f), bram_config, max_bits, bram_size)
        for f in sorted(input_path.glob(f"**/{file_name}.txt"))
    ]
    data = [y for x in formatted for y in x[0]]
    size = [f"{x[1]:02d}" for x in formatted]
    return data, size
