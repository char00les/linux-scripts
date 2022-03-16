#!/bin/bash


#$ help for
## help {
#$ help break
#$ help continue


for s in server1 server2 server3
do
    ssh vivek@${s} "uptime"
done
