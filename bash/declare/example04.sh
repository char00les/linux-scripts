#!/bin/bash

read -p "Enter coords (i.e., [x]=10 [y]=12): " coords
declare -A "coords=($coords)"

if [ ! -v "coords[x]" ]; then
    coords[x]=5
fi

if [ ! -v "coords[y]" ]; then
    coords[y]=10
fi

for key in "${!coords[@]}"; do
    printf "$key = ${coords[$key]} \n"
done