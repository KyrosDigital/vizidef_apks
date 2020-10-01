#!/bin/bash

# after first connection with ssh  to android device, run these commands
# this will create a file via ssh on the device that allows for execution 
# we execute the script which sends the device ssh server and information to the MDM system
cd ~/vizidef_apks

echo "Pulling latest from repo"

git pull origin master >> ~/bashlog

echo "Setting correct file folder permissions"

chmod -R 771 ~/vizidef_apks
chmod -R 771 ~/vizidef_apks/*

echo "Performing root operations"

su << EOF 
echo "removing previous apk"
rm /data/app/test.txt

echo "transfering newest apk"
cp ~/vizidef_apks/steelcase/test.txt /data/app/test.txt

echo ""
cat /data/app/test.txt
echo ""

exit;
EOF




