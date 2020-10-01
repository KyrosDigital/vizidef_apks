#!/bin/bash

# after first connection with ssh  to android device, run these commands
# this will create a file via ssh on the device that allows for execution 
# we execute the script which sends the device ssh server and information to the MDM system
cd ~/vizidef_apks

git pull origin master >> ~/bashlog

chmod -R 771 ~/vizidef_apks
chmod -R 771 ~/vizidef_apks/*

su << EOF 
rm /data/app/test.txt

cp ~/vizidef_apks/steelcase/test.txt /data/app/test.txt

echo ""
cat /data/app/test.txt
echo ""

exit;
EOF




