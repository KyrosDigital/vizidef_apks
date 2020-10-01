#!/bin/bash

# after first connection with ssh  to android device, run these commands
# this will create a file via ssh on the device that allows for execution 
# we execute the script which sends the device ssh server and information to the MDM system
cd ~/vizidef_apks

git pull origin master >> ~/bashlog

su << EOF 
mv ~/vizidef_apks/steelcase/test.txt /data/app/test.txt
exit;
EOF




