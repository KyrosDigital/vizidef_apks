if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

PS1='\$ '


sh /data/data/com.termux/files/home/vizidef_apks/installs/git_pull_su.sh


echo "ran kyros mdm process" >> bashlog
date >> bashlog

# echo "Closing in 4 seconds ..."

# sleep 4

# exit
