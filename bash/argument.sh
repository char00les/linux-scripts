#!/bin/bash

## $@ expands to the positional parameters, starting from one.  ##
for i in $@
do
    echo "Script arg is $i"
done
