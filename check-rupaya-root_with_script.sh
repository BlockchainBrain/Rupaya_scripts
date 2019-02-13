#!/bin/bash

echo ""
echo " Rupaya daemon check and restart script - root users that used the auto install script:"
echo " This script will check for the rupayad daemon every 60 seconds."
echo " If the daemon is not running, then this script will start it."
echo " The script will also log the restart in the file /root/rupaya-crashes.log"
echo " The script runs in an endless loop."
echo ""
echo " A big thank you to @Respio (aka Fibroblasto) for creating the script and sharing it with the community."
echo ""
echo " You must run the following command, before running the script:"
echo " chmod +x check-rupaya-root_with_script.sh"
echo ""
echo " To stop the script, run the following command:"
echo " pkill bash"
echo ""
echo ""

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
                systemctl start Rupaya.service

                # Log the problem in /root/rupaya-crashes.log. A more tidy place for a linux system
                # would be in /var/log instead of /root. Change it if you want.

                date >>/root/rupaya-crashes.log
                echo "Rupaya daemon process does not exist. Starting it again." >>/root/rupaya-crashes.log
                echo "" >>/root/rupaya-crashes.log
        fi

        # wait 60 seconds till it check it again. You can change it to another timing.
        sleep 60s  
    done
}
 
CHECK &
