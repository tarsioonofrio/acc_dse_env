#!/bin/bash

# Verifica se um argumento foi fornecido
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 arquivo"
    exit 1
fi

# Primeiro argumento é o arquivo
arquivo=$1

# Lê a string do arquivo
string=$(cat "$arquivo")

# Encontra o conjunto de caracteres para remover
conjuntoParaRemover=$(echo "$string" | grep -oP '\-gPATH=\S+')

# Remove o conjunto de caracteres da string
string=${string//$conjuntoParaRemover/}

# Imprime a string modificada
echo "$string"
