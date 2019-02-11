#!/bin/bash

echo ""
echo " Rupaya daemon check and restart script:"
echo " This script will check for the rupayad daemon every 60 seconds"
echo " If the daemon is not running, then this script will start it."
echo " The script will also log the restart in the file /home/rupxmn/rupaya-crashes.log"
echo ""
echo " The script runs in an endless loop."
echo ""
echo " VERY IMPORTANT:"
echo " Unless your Rupaya binaries, (rupayad, rupaya-cli) are in the directory /usr/local/bin "
echo " then you must edit and update the line "PATH_TO_BINARIES=/usr/local/bin" to the"
echo " directory where you store them; otherwise the script will NOT work."
echo " For example: PATH_TO_BINARIES=/usr/bin"
echo "              PATH_TO_BINARIES=/root"
echo "              PATH_TO_BINARIES=/root/rupx-5.1.1/src"
echo " The line you must edit is the first one after the group of lines starting with "echo""
echo ""
echo " You must run the following command "chmod +x check-rupaya-rupxmn.sh""
echo " The above command will grant execution permission to be able to run script."
echo ""
echo ""
echo ""

PATH_TO_BINARIES=/usr/local/bin

read -n 1 -s -r -p "Press any key to continue or Ctrl-c to interrupt here"

function CHECK
{
# this is an endless loop. It will run forever unless you kill it (for ex. "killall check-rupaya.sh")
while true
    do
        # check if rupaya process exist and if not (errorlevel different from 0), start it.
        ps aux|grep rupayad|grep -v grep >/dev/null
        if [ $? != 0 ]
            then
                $PATH_TO_BINARIES/rupayad -daemon
                # Log the problem in /root/rupaya-crashes.log. A more tidy place for a linux system would be in /var/log instead of /root.
                # Change it if you want.
                date >>/home/rupxmn/rupaya-crashes.log
                echo "Rupaya daemon process does not exist. Starting it again." >>/home/rupxmn/rupaya-crashes.log
                echo "" >>/home/rupxmn/rupaya-crashes.log
        fi
        # wait 60 seconds till it check it again. You can change it to another timing.
        sleep 60s
    done
}

CHECK &
