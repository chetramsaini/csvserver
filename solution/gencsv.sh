#!/bin/bash
#This script generates 10 random numbers.
#Author Chetram Saini|DevOps Consultant#

RANDOM=$$
for i in `seq 10`
do
        echo $((i++)), $RANDOM
done
