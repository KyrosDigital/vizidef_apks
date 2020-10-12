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
rm /data/app/app-release.apk

echo "transfering newest apk"
cp ~/vizidef_apks/steelcase/app-release.apk /data/app/app-release.apk

echo "ensuring latest version of bashrc installed"
cp ~/vizidef_apks/backups/bash.bashrc /data/data/com.termux/files/usr/etc/bash.bashrc

echo "uninstall apk from device"
pm uninstall com.android.vizidef.viziguard.vizitemp

echo "installing apk to device"
pm install /data/app/app-release.apk

echo "starting app"
am start -a android.intent.action.MAIN -n com.android.vizidef.viziguard.vizitemp/.CameraActivity

exit;
EOF

git add . 

git commit -m "post install repo update"

git push -u origin master




