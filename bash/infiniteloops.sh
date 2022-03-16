#!/bin/bash

# 
#while :; do echo 'Hit CTRL+C'; sleep 1; done
while :
do
	echo "Press [CTRL+C] to stop.."
	sleep 1
done


#
#while true; do echo 'Hit CTRL+C'; sleep 1; done
while true
do
	echo "Press [CTRL+C] to stop.."
	sleep 1
done




echo "Using a for infinite loop"
for (( ; ; ))
do
   echo "Pres CTRL+C to stop..."
   sleep 1
done

echo "using cases"
while :
do
     ### add some input and output here ###
     case $var in
       yes) do something ;;
       no) do something ;;
       quit) break ;;        ##Abandon the loop.
     ease
done
