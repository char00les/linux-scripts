#!/bin/bash

title="Information"
message="Hello world"

while getopts ":t:m:" option; do
    echo $option
    case "${option}" in
        t)
            title=${OPTARG}
            ;;
        m)
            message=${OPTARG}
            ;;
    esac
done

zenity --info --title="$title" --text="$message"