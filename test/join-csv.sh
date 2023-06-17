find "$1" -name "combined.csv" -type f -exec rm -f {} \;
find "$1" -name "*.csv" -exec awk '(FNR==1 && NR!=1) || FNR>1' {} + > "$1"/combined.csv
