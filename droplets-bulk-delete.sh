#!/bin/bash

DROPLETS=$(doctl compute droplet list --no-header --format "ID")

if [ $? -ne 0 ]
then 
  echo "Sorry, we did not find any machines. Giving up" 
  exit 
fi 

for MACHINE_ID in $DROPLETS
do 
   doctl compute droplet delete $MACHINE_ID
done
