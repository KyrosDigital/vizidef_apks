/installs

Run install_apk.sh after you clone the repo 

# run script on boot
With termux installed on the android device, just place a script in 
`/data/data/com.termux/files/usr/etc/bash.bashrc`

## Termux
Termux is a crital application for our custom solution. 
It's the terminal emulator, and gives us access to bash and bashrc. 
https://wiki.termux.com/wiki/Working_with_APKs

It also provides us with capability to install BuildAPKs on the device. 

The MDM solution transfers an APK to the device, but the device must be able to install that apk. 