#!/bin/bash

echo "using cases"
while :
do
     ### add some input and output here ###
     read var
     case $var in
       yes) echo "something" ;;
       no) echo "something" ;;
       quit) break ;;        ##Abandon the loop.
     esac
done

