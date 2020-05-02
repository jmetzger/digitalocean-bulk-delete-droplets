#!/bin/bash

VOLUMES=$(doctl compute volume list --no-header --format "ID")

if [ $? -ne 0 ]
then 
  echo "Sorry, we did not find any volumes. Giving up" 
  exit
fi 

for VOLUME_ID in $VOLUMES
do 
   echo "Deleting volume with volume_id${VOLUME_ID} now..."
   doctl compute volume delete $VOLUME_ID
done
