#!/bin/bash

echo ""
echo "      ****** WARNING ******"
echo ""
echo " This is a bash script. A malicious or wrongly coded script may do really nasty things to your system."
echo " Never ever run any script unless you either fully understand all its lines or it has been"
echo " validated by somebody you trust."
echo ""
echo " It will check every 60 seconds if rupayad process exist and if not, it will start it again."
echo " If rupayad process does not exist it will log it in /root/rupaya-crashes.log"
echo " You could edit it to change the frequency it checks that and where it stores the log file"
echo " It is and endless loop: ir will run forever, but you can stop it running the command:"
echo " killall check-rupaya.sh"
echo " It will not use the "-resync" option. If you need that you should do it manually"
echo ""
echo " VERY IMPORTANT:"
echo " Unless your Rupaya binaries are in /usr/local/bin you must edit the line "PATH_TO_BINARIES=/usr/local/bin" to the"
echo " directory where you store them; otherwise it will NOT work."
echo " For example: PATH_TO_BINARIES=/usr/bin"
echo "              PATH_TO_BINARIES=/usr/local/bin"
echo "              PATH_TO_BINARIES=/root/rupx-5.1.1/src"
echo " The line you must edit is the first one after the group of lines starting with "echo""
echo ""
echo " You must also grant execution permission to this script with the command "chmod +x check-rupaya-root.sh""
echo ""
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
                $PATH_TO_BINARIES/rupayad

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
