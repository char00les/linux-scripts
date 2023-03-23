#!/bin/bash

declare -A marks=([john]=75 [doe]=82 [ann]=83 [ava]=72)

for key in "${!marks[@]}"; do
    printf "$key \t ${marks[$key]} \n"
done