#!/bin/bash

numbers=(2 4 5 2)

declare -a words
words[0]='Orange'
words[1]='Pineapple'

echo ${numbers[@]} ${words[@]}