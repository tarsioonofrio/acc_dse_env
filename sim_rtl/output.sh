echo "Errors from file:"
cut -d " " -f2- tb_rtl_split.txt | diff gold.txt - | wc -l