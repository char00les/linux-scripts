#!/bin/bash

declare -a marks
marks+=(75 65 80 102 26) # class A marks
marks+=(103 68) # class B marks

# Remove invalid marks
for i in "${!marks[@]}"; do
    if ((marks[i] > 100)); then
        unset "marks[$i]"
    fi
done

# Sort all marks
marks_s=($(printf '%s\n' "${marks[@]}" | sort -nr))

# Prints the top-3
echo ${marks_s[0]} ${marks_s[1]} ${marks_s[2]}