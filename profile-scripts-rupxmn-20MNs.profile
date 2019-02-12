# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
#---------------------------------------------------------
#Scripts to run int the /root/.profile
#Source file with all of the Rupaya variables
source /home/rupxmn/vars.bash
#---------------------------------------------------------
bold=$(tput bold)
normal=$(tput sgr0)
#---------------------------------------------------------
#
#Getinfo - All
rinfo(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn " && sudo runuser -l rupxmn -c 'rupaya-cli getinfo'
	for i in {2..20}; do
                sudo printf "rupxmn$i " && sudo runuser -l rupxmn$i -c 'rupaya-cli getinfo'
        done
}
#Getinfo - MN1
rinfo1(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn " && sudo runuser -l rupxmn -c 'rupaya-cli getinfo'
}
#Getinfo - MN2
rinfo2(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn2 " && sudo runuser -l rupxmn2 -c 'rupaya-cli getinfo'
}
#Getinfo - MN3
rinfo3(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn3 " && sudo runuser -l rupxmn3 -c 'rupaya-cli getinfo'
}
#Getinfo - MN4
rinfo4(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn4 " && sudo runuser -l rupxmn4 -c 'rupaya-cli getinfo'
}
#Getinfo - MN5
rinfo5(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn5 " && sudo runuser -l rupxmn5 -c 'rupaya-cli getinfo'
}
#Getinfo - MN6
rinfo6(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn6 " && sudo runuser -l rupxmn6 -c 'rupaya-cli getinfo'
}
#Getinfo - MN7
rinfo7(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn7 " && sudo runuser -l rupxmn7 -c 'rupaya-cli getinfo'
}
#Getinfo - MN8
rinfo8(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn8 " && sudo runuser -l rupxmn8 -c 'rupaya-cli getinfo'
}
#Getinfo - MN9
rinfo9(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn9 " && sudo runuser -l rupxmn9 -c 'rupaya-cli getinfo'
}
#Getinfo - MN10
rinfo10(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn10 " && sudo runuser -l rupxmn10 -c 'rupaya-cli getinfo'
}
#Getinfo - MN11
rinfo11(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn11 " && sudo runuser -l rupxmn11 -c 'rupaya-cli getinfo'
}
#Getinfo - MN12
rinfo12(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn12 " && sudo runuser -l rupxmn12 -c 'rupaya-cli getinfo'
}
#Getinfo - MN13
rinfo13(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn13 " && sudo runuser -l rupxmn13 -c 'rupaya-cli getinfo'
}
#Getinfo - MN14
rinfo14(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn14 " && sudo runuser -l rupxmn14 -c 'rupaya-cli getinfo'
}
#Getinfo - MN15
rinfo15(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn15 " && sudo runuser -l rupxmn15 -c 'rupaya-cli getinfo'
}
#Getinfo - MN16
rinfo16(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn16 " && sudo runuser -l rupxmn16 -c 'rupaya-cli getinfo'
}
#Getinfo - MN17
rinfo17(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn17 " && sudo runuser -l rupxmn17 -c 'rupaya-cli getinfo'
}
#Getinfo - MN18
rinfo18(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn18 " && sudo runuser -l rupxmn18 -c 'rupaya-cli getinfo'
}
#Getinfo - MN19
rinfo19(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn19 " && sudo runuser -l rupxmn19 -c 'rupaya-cli getinfo'
}
#Getinfo - MN20
rinfo20(){
        echo Checking the Rupaya wallet version, block count, connections, and IP
                sudo printf "rupxmn20 " && sudo runuser -l rupxmn20 -c 'rupaya-cli getinfo'
}
#---------------------------------------------------------
#
#Rupaya Daemon Check
rps(){
        echo Checking to see if the Rupaya Daemon is running
	ps -ef | grep rupaya
}
#---------------------------------------------------------
#
#Block Count - All
bc(){
        echo Checking the Block Count
                sudo printf "rupxmn " && sudo runuser -l rupxmn -c 'rupaya-cli getblockcount'
	for i in {2..20}; do
                sudo printf "rupxmn$i " && sudo runuser -l rupxmn$i -c 'rupaya-cli getblockcount'
        done
}
#Block Count - MN1
bc1(){
        echo Checking the Block Count
                sudo printf "rupxmn " && sudo runuser -l rupxmn -c 'rupaya-cli getblockcount'
}
#Block Count - MN2
bc2(){
        echo Checking the Block Count
                sudo printf "rupxmn2 " && sudo runuser -l rupxmn2 -c 'rupaya-cli getblockcount'
}
#Block Count - MN3
bc3(){
        echo Checking the Block Count
                sudo printf "rupxmn3 " && sudo runuser -l rupxmn3 -c 'rupaya-cli getblockcount'
}
#Block Count - MN4
bc4(){
        echo Checking the Block Count
                sudo printf "rupxmn4 " && sudo runuser -l rupxmn4 -c 'rupaya-cli getblockcount'
}
#Block Count - MN5
bc5(){
        echo Checking the Block Count
                sudo printf "rupxmn5 " && sudo runuser -l rupxmn5 -c 'rupaya-cli getblockcount'
}
#Block Count - MN6
bc6(){
        echo Checking the Block Count
                sudo printf "rupxmn6 " && sudo runuser -l rupxmn6 -c 'rupaya-cli getblockcount'
}
#Block Count - MN7
bc7(){
        echo Checking the Block Count
                sudo printf "rupxmn7 " && sudo runuser -l rupxmn7 -c 'rupaya-cli getblockcount'
}
#Block Count - MN8
bc8(){
        echo Checking the Block Count
                sudo printf "rupxmn8 " && sudo runuser -l rupxmn8 -c 'rupaya-cli getblockcount'
}
#Block Count - MN9
bc9(){
        echo Checking the Block Count
                sudo printf "rupxmn9 " && sudo runuser -l rupxmn9 -c 'rupaya-cli getblockcount'
}
#Block Count - MN10
bc10(){
        echo Checking the Block Count
                sudo printf "rupxmn10 " && sudo runuser -l rupxmn10 -c 'rupaya-cli getblockcount'
}
#Block Count - MN11
bc11(){
        echo Checking the Block Count
                sudo printf "rupxmn11 " && sudo runuser -l rupxmn11 -c 'rupaya-cli getblockcount'
}
#Block Count - MN12
bc12(){
        echo Checking the Block Count
                sudo printf "rupxmn12 " && sudo runuser -l rupxmn12 -c 'rupaya-cli getblockcount'
}
#Block Count - MN13
bc13(){
        echo Checking the Block Count
                sudo printf "rupxmn13 " && sudo runuser -l rupxmn13 -c 'rupaya-cli getblockcount'
}
#Block Count - MN14
bc14(){
        echo Checking the Block Count
                sudo printf "rupxmn14 " && sudo runuser -l rupxmn14 -c 'rupaya-cli getblockcount'
}
#Block Count - MN15
bc15(){
        echo Checking the Block Count
                sudo printf "rupxmn15 " && sudo runuser -l rupxmn15 -c 'rupaya-cli getblockcount'
}
#Block Count - MN16
bc16(){
        echo Checking the Block Count
                sudo printf "rupxmn16 " && sudo runuser -l rupxmn16 -c 'rupaya-cli getblockcount'
}
#Block Count - MN17
bc17(){
        echo Checking the Block Count
                sudo printf "rupxmn17 " && sudo runuser -l rupxmn17 -c 'rupaya-cli getblockcount'
}
#Block Count - MN18
bc18(){
        echo Checking the Block Count
                sudo printf "rupxmn18 " && sudo runuser -l rupxmn18 -c 'rupaya-cli getblockcount'
}
#Block Count - MN19
bc19(){
        echo Checking the Block Count
                sudo printf "rupxmn19 " && sudo runuser -l rupxmn19 -c 'rupaya-cli getblockcount'
}
#Block Count - MN20
bc20(){
        echo Checking the Block Count
                sudo printf "rupxmn20 " && sudo runuser -l rupxmn20 -c 'rupaya-cli getblockcount'
}
#---------------------------------------------------------
#
#MN Count
mncount(){
        echo Checking the MN Count
                sudo printf "rupxmn " && sudo runuser -l rupxmn$i -c 'rupaya-cli masternode count'
	for i in {2..20}; do
                sudo printf "rupxmn$i " && sudo runuser -l rupxmn -c 'rupaya-cli masternode count'
        done
}
#---------------------------------------------------------
#
#Start the Rupaya MN1 Daemon
start1(){
        echo Starting the Rupaya MN1 Daemon
	printf "rupxmn " && sudo runuser -l rupxmn -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN2 Daemon
start2(){
        echo Starting the Rupaya MN2 Daemon
	printf "rupxmn2 " && sudo runuser -l rupxmn2 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN3 Daemon
start3(){
        echo Starting the Rupaya MN3 Daemon
	printf "rupxmn3 " && sudo runuser -l rupxmn3 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN4 Daemon
start4(){
        echo Starting the Rupaya MN4 Daemon
	printf "rupxmn4 " && sudo runuser -l rupxmn4 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN5 Daemon
start5(){
        echo Starting the Rupaya MN5 Daemon
	printf "rupxmn5 " && sudo runuser -l rupxmn5 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN6 Daemon
start6(){
        echo Starting the Rupaya MN6 Daemon
	printf "rupxmn6 " && sudo runuser -l rupxmn6 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN7 Daemon
start7(){
        echo Starting the Rupaya MN7 Daemon
	printf "rupxmn7 " && sudo runuser -l rupxmn7 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN8 Daemon
start8(){
        echo Starting the Rupaya MN8 Daemon
	printf "rupxmn8 " && sudo runuser -l rupxmn8 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN6 Daemon
start9(){
        echo Starting the Rupaya MN9 Daemon
	printf "rupxmn9 " && sudo runuser -l rupxmn9 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN10 Daemon
start10(){
        echo Starting the Rupaya MN6 Daemon
	printf "rupxmn10 " && sudo runuser -l rupxmn10 -c 'rupayad -daemon' && sleep 2
}
#Start the Rupaya MN11 Daemon
start11(){
        echo Starting the Rupaya MN11 Daemon
	printf "rupxmn11 " && sudo runuser -l rupxmn11 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN12 Daemon
start12(){
        echo Starting the Rupaya MN12 Daemon
	printf "rupxmn12 " && sudo runuser -l rupxmn12 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN13 Daemon
start13(){
        echo Starting the Rupaya MN13 Daemon
	printf "rupxmn13 " && sudo runuser -l rupxmn13 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN14 Daemon
start14(){
        echo Starting the Rupaya MN14 Daemon
	printf "rupxmn14 " && sudo runuser -l rupxmn14 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN15 Daemon
start15(){
        echo Starting the Rupaya MN15 Daemon
	printf "rupxmn15 " && sudo runuser -l rupxmn15 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN16 Daemon
start16(){
        echo Starting the Rupaya MN16 Daemon
	printf "rupxmn16 " && sudo runuser -l rupxmn16 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN17 Daemon
start17(){
        echo Starting the Rupaya MN17 Daemon
	printf "rupxmn17 " && sudo runuser -l rupxmn17 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN18 Daemon
start18(){
        echo Starting the Rupaya MN18 Daemon
	printf "rupxmn18 " && sudo runuser -l rupxmn18 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN19 Daemon
start19(){
        echo Starting the Rupaya MN19 Daemon
	printf "rupxmn19 " && sudo runuser -l rupxmn19 -c 'rupayad -daemon' && sleep 2
}
#
#Start the Rupaya MN20 Daemon
start20(){
        echo Starting the Rupaya MN20 Daemon
	printf "rupxmn20 " && sudo runuser -l rupxmn20 -c 'rupayad -daemon' && sleep 2
}
#---------------------------------------------------------
#
#Start all Rupaya Daemons
startall(){
        echo Starting all Rupaya Daemons
	start1
	start2
	start3
	start4
	start5
	start6
	start7
	start8
	start9
	start10
	start11
	start12
	start13
	start14
	start15
	start16
	start17
	start18
	start19
	start20
}
#---------------------------------------------------------
#
#Stop the Rupaya MN1 Daemon
stop1(){
        echo Stopping the Rupaya MN1 Daemon
	printf "rupxmn " && sudo runuser -l rupxmn -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN2 Daemon
stop2(){
        echo Stopping the Rupaya MN2 Daemon
	printf "rupxmn2 " && sudo runuser -l rupxmn2 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN3 Daemon
stop3(){
        echo Stopping the Rupaya MN3 Daemon
	printf "rupxmn3 " && sudo runuser -l rupxmn3 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN4 Daemon
stop4(){
        echo Stopping the Rupaya MN4 Daemon
	printf "rupxmn4 " && sudo runuser -l rupxmn4 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN5 Daemon
stop5(){
        echo Stopping the Rupaya MN5 Daemon
	printf "rupxmn5 " && sudo runuser -l rupxmn5 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN6 Daemon
stop6(){
        echo Stopping the Rupaya MN6 Daemon
	printf "rupxmn6 " && sudo runuser -l rupxmn6 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN7 Daemon
stop7(){
        echo Stopping the Rupaya MN7 Daemon
	printf "rupxmn7 " && sudo runuser -l rupxmn7 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN8 Daemon
stop8(){
        echo Stopping the Rupaya MN8 Daemon
	printf "rupxmn8 " && sudo runuser -l rupxmn8 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN9 Daemon
stop9(){
        echo Stopping the Rupaya MN9 Daemon
	printf "rupxmn9 " && sudo runuser -l rupxmn9 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN10 Daemon
stop10(){
        echo Stopping the Rupaya MN10 Daemon
	printf "rupxmn10 " && sudo runuser -l rupxmn10 -c 'rupaya-cli stop' && sleep 2
}
#Stop the Rupaya MN11 Daemon
stop11(){
        echo Stopping the Rupaya MN11 Daemon
	printf "rupxmn11 " && sudo runuser -l rupxmn11 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN12 Daemon
stop12(){
        echo Stopping the Rupaya MN12 Daemon
	printf "rupxmn12 " && sudo runuser -l rupxmn12 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN13 Daemon
stop13(){
        echo Stopping the Rupaya MN13 Daemon
	printf "rupxmn13 " && sudo runuser -l rupxmn13 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN14 Daemon
stop14(){
        echo Stopping the Rupaya MN14 Daemon
	printf "rupxmn14 " && sudo runuser -l rupxmn14 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN15 Daemon
stop15(){
        echo Stopping the Rupaya MN15 Daemon
	printf "rupxmn15 " && sudo runuser -l rupxmn15 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN16 Daemon
stop16(){
        echo Stopping the Rupaya MN16 Daemon
	printf "rupxmn16 " && sudo runuser -l rupxmn16 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN17 Daemon
stop17(){
        echo Stopping the Rupaya MN17 Daemon
	printf "rupxmn17 " && sudo runuser -l rupxmn17 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN18 Daemon
stop18(){
        echo Stopping the Rupaya MN18 Daemon
	printf "rupxmn18 " && sudo runuser -l rupxmn18 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN19 Daemon
stop19(){
        echo Stopping the Rupaya MN19 Daemon
	printf "rupxmn19 " && sudo runuser -l rupxmn19 -c 'rupaya-cli stop' && sleep 2
}
#
#Stop the Rupaya MN20 Daemon
stop20(){
        echo Stopping the Rupaya MN20 Daemon
	printf "rupxmn20 " && sudo runuser -l rupxmn20 -c 'rupaya-cli stop' && sleep 2
}
#---------------------------------------------------------
#
#Stop all Rupaya Daemons
stopall(){
        echo Stopping all Rupaya Daemons
	stop1
	stop2
	stop3
	stop4
	stop5
	stop6
	stop7
	stop8
	stop9
	stop10
	stop11
	stop12
	stop13
	stop14
	stop15
	stop16
	stop17
	stop18
	stop19
	stop20
}
#---------------------------------------------------------
#
#MN Status - All
mnstatus(){
        echo Checking MN Status
	printf "rupxmn " && sudo runuser -l rupxmn -c "rupaya-cli masternode status"
	printf "rupxmn2 " && sudo runuser -l rupxmn2 -c "rupaya-cli masternode status"
	printf "rupxmn3 " && sudo runuser -l rupxmn3 -c "rupaya-cli masternode status"
	printf "rupxmn4 " && sudo runuser -l rupxmn4 -c "rupaya-cli masternode status"
	printf "rupxmn5 " && sudo runuser -l rupxmn5 -c "rupaya-cli masternode status"
	printf "rupxmn6 " && sudo runuser -l rupxmn6 -c "rupaya-cli masternode status"
	printf "rupxmn7 " && sudo runuser -l rupxmn7 -c "rupaya-cli masternode status"
	printf "rupxmn8 " && sudo runuser -l rupxmn8 -c "rupaya-cli masternode status"
	printf "rupxmn9 " && sudo runuser -l rupxmn9 -c "rupaya-cli masternode status"
	printf "rupxmn10 " && sudo runuser -l rupxmn10 -c "rupaya-cli masternode status"
	printf "rupxmn11 " && sudo runuser -l rupxmn11 -c "rupaya-cli masternode status"
	printf "rupxmn12 " && sudo runuser -l rupxmn12 -c "rupaya-cli masternode status"
	printf "rupxmn13 " && sudo runuser -l rupxmn13 -c "rupaya-cli masternode status"
	printf "rupxmn14 " && sudo runuser -l rupxmn14 -c "rupaya-cli masternode status"
	printf "rupxmn15 " && sudo runuser -l rupxmn15 -c "rupaya-cli masternode status"
	printf "rupxmn16 " && sudo runuser -l rupxmn16 -c "rupaya-cli masternode status"
	printf "rupxmn17 " && sudo runuser -l rupxmn17 -c "rupaya-cli masternode status"
	printf "rupxmn18 " && sudo runuser -l rupxmn18 -c "rupaya-cli masternode status"
	printf "rupxmn19 " && sudo runuser -l rupxmn19 -c "rupaya-cli masternode status"
	printf "rupxmn20 " && sudo runuser -l rupxmn20 -c "rupaya-cli masternode status"
}
#MN Status - MN1
mnstatus1(){
        echo Checking MN Status
	printf "rupxmn " && sudo runuser -l rupxmn -c "rupaya-cli masternode status"
}
#MN Status - MN2
mnstatus2(){
        echo Checking MN Status
	printf "rupxmn2 " && sudo runuser -l rupxmn2 -c "rupaya-cli masternode status"
}
#MN Status - MN3
mnstatus3(){
        echo Checking MN Status
	printf "rupxmn3 " && sudo runuser -l rupxmn3 -c "rupaya-cli masternode status"
}
#MN Status - MN4
mnstatus4(){
        echo Checking MN Status
	printf "rupxmn4 " && sudo runuser -l rupxmn4 -c "rupaya-cli masternode status"
}
#MN Status - MN5
mnstatus5(){
        echo Checking MN Status
	printf "rupxmn5 " && sudo runuser -l rupxmn5 -c "rupaya-cli masternode status"
}
#MN Status - MN6
mnstatus6(){
        echo Checking MN Status
	printf "rupxmn6 " && sudo runuser -l rupxmn6 -c "rupaya-cli masternode status"
}
#MN Status - MN7
mnstatus7(){
        echo Checking MN Status
	printf "rupxmn7 " && sudo runuser -l rupxmn7 -c "rupaya-cli masternode status"
}
#MN Status - MN8
mnstatus8(){
        echo Checking MN Status
	printf "rupxmn8 " && sudo runuser -l rupxmn8 -c "rupaya-cli masternode status"
}
#MN Status - MN9
mnstatus9(){
        echo Checking MN Status
	printf "rupxmn9 " && sudo runuser -l rupxmn9 -c "rupaya-cli masternode status"
}
#MN Status - MN10
mnstatus10(){
        echo Checking MN Status
	printf "rupxmn10 " && sudo runuser -l rupxmn10 -c "rupaya-cli masternode status"
}
#MN Status - MN11
mnstatus11(){
        echo Checking MN Status
	printf "rupxmn11 " && sudo runuser -l rupxmn11 -c "rupaya-cli masternode status"
}
#MN Status - MN12
mnstatus12(){
        echo Checking MN Status
	printf "rupxmn12 " && sudo runuser -l rupxmn12 -c "rupaya-cli masternode status"
}
#MN Status - MN13
mnstatus13(){
        echo Checking MN Status
	printf "rupxmn13 " && sudo runuser -l rupxmn13 -c "rupaya-cli masternode status"
}
#MN Status - MN14
mnstatus14(){
        echo Checking MN Status
	printf "rupxmn14 " && sudo runuser -l rupxmn14 -c "rupaya-cli masternode status"
}
#MN Status - MN15
mnstatus15(){
        echo Checking MN Status
	printf "rupxmn15 " && sudo runuser -l rupxmn15 -c "rupaya-cli masternode status"
}
#MN Status - MN16
mnstatus16(){
        echo Checking MN Status
	printf "rupxmn16 " && sudo runuser -l rupxmn16 -c "rupaya-cli masternode status"
}
#MN Status - MN17
mnstatus17(){
        echo Checking MN Status
	printf "rupxmn17 " && sudo runuser -l rupxmn17 -c "rupaya-cli masternode status"
}
#MN Status - MN18
mnstatus18(){
        echo Checking MN Status
	printf "rupxmn18 " && sudo runuser -l rupxmn18 -c "rupaya-cli masternode status"
}
#MN Status - MN19
mnstatus19(){
        echo Checking MN Status
	printf "rupxmn19 " && sudo runuser -l rupxmn19 -c "rupaya-cli masternode status"
}
#MN Status - MN20
mnstatus20(){
        echo Checking MN Status
	printf "rupxmn20 " && sudo runuser -l rupxmn20 -c "rupaya-cli masternode status"
}
#---------------------------------------------------------
#
#MN HotCold Output - All
hotcold(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn " && sudo cat /home/rupxmn/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn2 " && sudo cat /home/rupxmn2/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn3 " && sudo cat /home/rupxmn3/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn4 " && sudo cat /home/rupxmn4/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn5 " && sudo cat /home/rupxmn5/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn6 " && sudo cat /home/rupxmn6/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn7 " && sudo cat /home/rupxmn7/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn8 " && sudo cat /home/rupxmn8/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn9 " && sudo cat /home/rupxmn9/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn10 " && sudo cat /home/rupxmn10/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn11 " && sudo cat /home/rupxmn11/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn12 " && sudo cat /home/rupxmn12/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn13 " && sudo cat /home/rupxmn13/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn14 " && sudo cat /home/rupxmn14/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn15 " && sudo cat /home/rupxmn15/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn16 " && sudo cat /home/rupxmn16/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn17 " && sudo cat /home/rupxmn17/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn18 " && sudo cat /home/rupxmn18/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn19 " && sudo cat /home/rupxmn19/.rupayacore/debug.log  | grep HotCold
	printf "rupxmn20 " && sudo cat /home/rupxmn20/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN1
hotcold1(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn " && sudo cat /home/rupxmn/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN2
hotcold2(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn2 " && sudo cat /home/rupxmn2/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN3
hotcold3(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn3 " && sudo cat /home/rupxmn3/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN4
hotcold4(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn4 " && sudo cat /home/rupxmn4/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN5
hotcold5(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn5 " && sudo cat /home/rupxmn5/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN6
hotcold6(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn6 " && sudo cat /home/rupxmn6/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN7
hotcold7(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn7 " && sudo cat /home/rupxmn7/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN8
hotcold8(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn8 " && sudo cat /home/rupxmn8/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN9
hotcold9(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn9 " && sudo cat /home/rupxmn9/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN10
hotcold10(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn10 " && sudo cat /home/rupxmn10/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN11
hotcold11(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn11 " && sudo cat /home/rupxmn11/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN12
hotcold12(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn12 " && sudo cat /home/rupxmn12/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN13
hotcold13(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn13 " && sudo cat /home/rupxmn13/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN14
hotcold14(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn14 " && sudo cat /home/rupxmn14/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN15
hotcold15(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn15 " && sudo cat /home/rupxmn15/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN16
hotcold16(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn16 " && sudo cat /home/rupxmn16/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN17
hotcold17(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn17 " && sudo cat /home/rupxmn17/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN18
hotcold18(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn18 " && sudo cat /home/rupxmn18/.rupayacore/debug.log  | grep HotCold
}
#MN HotCold Output - MN19
hotcold19(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn19 " && sudo cat /home/rupxmn19/.rupayacore/debug.log  | grep HotCold
	}
#MN HotCold Output - MN20
hotcold20(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	printf "rupxmn20 " && sudo cat /home/rupxmn20/.rupayacore/debug.log  | grep HotCold
}
#---------------------------------------------------------
#
#MN1 - Searching MN1 debug.log for the TXHASH
log1(){
	echo Searching MN1 debug.log for the TXHASH
	cat /home/rupxmn/.rupayacore/debug.log | grep -a $H1 | tail -5
}
#
#MN2 - Searching MN2 debug.log for the TXHASH
log2(){
	echo Searching MN2 debug.log for the TXHASH
	cat /home/rupxmn2/.rupayacore/debug.log | grep -a $H2 | tail -5
}
#
#MN3 - Searching MN3 debug.log for the TXHASH
log3(){
	echo Searching MN3 debug.log for the TXHASH
	cat /home/rupxmn3/.rupayacore/debug.log | grep -a $H3 | tail -5
}
#
#MN4 - Searching MN4 debug.log for the TXHASH
log4(){
	echo Searching MN4 debug.log for the TXHASH
	cat /home/rupxmn4/.rupayacore/debug.log | grep -a $H4 | tail -5
}
#
#MN5 - Searching MN5 debug.log for the TXHASH
log5(){
	echo Searching MN5 debug.log for the TXHASH
	cat /home/rupxmn5/.rupayacore/debug.log | grep -a $H5 | tail -5
}
#
#MN6 - Searching MN6 debug.log for the TXHASH
log6(){
	echo Searching MN6 debug.log for the TXHASH
	cat /home/rupxmn6/.rupayacore/debug.log | grep -a $H6 | tail -5
}
#
#MN7 - Searching MN7 debug.log for the TXHASH
log7(){
	echo Searching MN7 debug.log for the TXHASH
	cat /home/rupxmn7/.rupayacore/debug.log | grep -a $H7 | tail -5
}
#
#MN8 - Searching MN8 debug.log for the TXHASH
log8(){
	echo Searching MN8 debug.log for the TXHASH
	cat /home/rupxmn8/.rupayacore/debug.log | grep -a $H8 | tail -5
}
#
#MN9 - Searching MN9 debug.log for the TXHASH
log9(){
	echo Searching MN9 debug.log for the TXHASH
	cat /home/rupxmn9/.rupayacore/debug.log | grep -a $H9 | tail -5
}
#
#MN10 - Searching MN10 debug.log for the TXHASH
log10(){
	echo Searching MN10 debug.log for the TXHASH
	cat /home/rupxmn10/.rupayacore/debug.log | grep -a $H10 | tail -5
}
#MN11 - Searching MN11 debug.log for the TXHASH
log11(){
	echo Searching MN11 debug.log for the TXHASH
	cat /home/rupxmn11/.rupayacore/debug.log | grep -a $H11 | tail -5
}
#
#MN12 - Searching MN12 debug.log for the TXHASH
log12(){
	echo Searching MN12 debug.log for the TXHASH
	cat /home/rupxmn12/.rupayacore/debug.log | grep -a $H12 | tail -5
}
#
#MN13 - Searching MN13 debug.log for the TXHASH
log13(){
	echo Searching MN13 debug.log for the TXHASH
	cat /home/rupxmn13/.rupayacore/debug.log | grep -a $H13 | tail -5
}
#
#MN14 - Searching MN14 debug.log for the TXHASH
log14(){
	echo Searching MN14 debug.log for the TXHASH
	cat /home/rupxmn14/.rupayacore/debug.log | grep -a $H14 | tail -5
}
#
#MN15 - Searching MN15 debug.log for the TXHASH
log15(){
	echo Searching MN15 debug.log for the TXHASH
	cat /home/rupxmn15/.rupayacore/debug.log | grep -a $H15 | tail -5
}
#
#MN16 - Searching MN16 debug.log for the TXHASH
log16(){
	echo Searching MN16 debug.log for the TXHASH
	cat /home/rupxmn16/.rupayacore/debug.log | grep -a $H16 | tail -5
}
#
#MN17 - Searching MN17 debug.log for the TXHASH
log17(){
	echo Searching MN17 debug.log for the TXHASH
	cat /home/rupxmn17/.rupayacore/debug.log | grep -a $H17 | tail -5
}
#
#MN18 - Searching MN18 debug.log for the TXHASH
log18(){
	echo Searching MN18 debug.log for the TXHASH
	cat /home/rupxmn18/.rupayacore/debug.log | grep -a $H18 | tail -5
}
#
#MN19 - Searching MN19 debug.log for the TXHASH
log19(){
	echo Searching MN19 debug.log for the TXHASH
	cat /home/rupxmn19/.rupayacore/debug.log | grep -a $H19 | tail -5
}
#
#MN20 - Searching MN20 debug.log for the TXHASH
log20(){
	echo Searching MN20 debug.log for the TXHASH
	cat /home/rupxmn20/.rupayacore/debug.log | grep -a $H20 | tail -5
}
#---------------------------------------------------------
#
#Searching all MNs debug.log for the TXHASH
logall(){
	log1
        echo ---------------------------------------------------------
	log2
        echo ---------------------------------------------------------
	log3
        echo ---------------------------------------------------------
	log4
        echo ---------------------------------------------------------
	log5
        echo ---------------------------------------------------------
	log6
        echo ---------------------------------------------------------
	log7
        echo ---------------------------------------------------------
	log8
        echo ---------------------------------------------------------
	log9
        echo ---------------------------------------------------------
	log10
        echo ---------------------------------------------------------
	log11
        echo ---------------------------------------------------------
	log12
        echo ---------------------------------------------------------
	log13
        echo ---------------------------------------------------------
	log14
        echo ---------------------------------------------------------
	log15
        echo ---------------------------------------------------------
	log16
        echo ---------------------------------------------------------
	log17
        echo ---------------------------------------------------------
	log18
        echo ---------------------------------------------------------
	log19
        echo ---------------------------------------------------------
	log20
        echo ---------------------------------------------------------
}
#---------------------------------------------------------
#
#Run all the check commands for all MN's
checkall(){
        echo ---------------------------------------------------------
        #Checking MN Status
	mnstatus
        echo ---------------------------------------------------------
        #Checking the Block Count
	bc
	echo ---------------------------------------------------------
        #Checking the Wallet Info
	rinfo
	echo ---------------------------------------------------------
}
#---------------------------------------------------------
#
#Delete all of the peers.dat files and restart the Rupaya Daemons for all MNs
clearpeers(){
	#Stopping the daemons
	stopall
	sleep 2
	echo ---------------------------------------------------------
	echo Deleting all of the peers.dat files and restarting the Rupaya Daemons for all MNs
	printf "rupxmn deleted" && sudo rm /home/rupxmn/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn2 deleted" && sudo rm /home/rupxmn2/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn3 deleted" && sudo rm /home/rupxmn3/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn4 deleted" && sudo rm /home/rupxmn4/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn5 deleted" && sudo rm /home/rupxmn5/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn6 deleted" && sudo rm /home/rupxmn6/.rupayacore/peers.dat && sleep 2 && echo 
	printf "rupxmn7 deleted" && sudo rm /home/rupxmn7/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn8 deleted" && sudo rm /home/rupxmn8/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn9 deleted" && sudo rm /home/rupxmn9/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn10 deleted" && sudo rm /home/rupxmn10/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn11 deleted" && sudo rm /home/rupxmn11/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn12 deleted" && sudo rm /home/rupxmn12/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn13 deleted" && sudo rm /home/rupxmn13/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn14 deleted" && sudo rm /home/rupxmn14/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn15 deleted" && sudo rm /home/rupxmn15/.rupayacore/peers.dat && sleep 2 && echo  
	printf "rupxmn16 deleted" && sudo rm /home/rupxmn16/.rupayacore/peers.dat && sleep 2 && echo 
	printf "rupxmn17 deleted" && sudo rm /home/rupxmn17/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn18 deleted" && sudo rm /home/rupxmn18/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn19 deleted" && sudo rm /home/rupxmn19/.rupayacore/peers.dat && sleep 2 && echo
	printf "rupxmn20 deleted" && sudo rm /home/rupxmn20/.rupayacore/peers.dat && sleep 2 && echo
	echo ---------------------------------------------------------
	#Starting the daemons
	startall
	sleep 2
	echo ---------------------------------------------------------
	rps
	echo ---------------------------------------------------------
	echo The peers.dat files have been deleted and the daemons have restarted
	echo You can now start the MNs from the Cold Wallet
}
#---------------------------------------------------------
#
#MN1 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate1(){
	echo Backing up the /home/rupxmn/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn/.rupayacore/rupaya.conf ~/rupaya1.conf
	echo Deleting the /home/rupxmn/.rupayacore/ directory
	sudo rm -rf /home/rupxmn/.rupayacore
	sudo mkdir /home/rupxmn/.rupayacore
	echo Restoring the /home/rupxmn/.rupayacore/rupaya.conf file
	sudo cp rupaya1.conf /home/rupxmn/.rupayacore/rupaya.conf
	sudo chown rupxmn:rupxmn -R /home/rupxmn/.rupayacore
	sudo chown rupxmn:rupxmn -R /home/rupxmn/.rupayacore/*
	echo Recreation of the /home/rupxmn/.rupayacore/rupaya.conf file complete
}
#
#MN2 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate2(){
	echo Backing up the /home/rupxmn2/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn2/.rupayacore/rupaya.conf ~/rupaya2.conf
	echo Deleting the /home/rupxmn2/.rupayacore/ directory
	sudo rm -rf /home/rupxmn2/.rupayacore
	sudo mkdir /home/rupxmn2/.rupayacore
	echo Restoring the /home/rupxmn2/.rupayacore/rupaya.conf file
	sudo cp rupaya2.conf /home/rupxmn2/.rupayacore/rupaya.conf
	sudo chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore
	sudo chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore/*
	echo Recreation of the /home/rupxmn2/.rupayacore/rupaya.conf file complete
}
#
#MN3 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate3(){
	echo Backing up the /home/rupxmn3/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn3/.rupayacore/rupaya.conf ~/rupaya3.conf
	echo Deleting the /home/rupxmn3/.rupayacore/ directory
	sudo rm -rf /home/rupxmn3/.rupayacore
	sudo mkdir /home/rupxmn3/.rupayacore
	echo Restoring the /home/rupxmn3/.rupayacore/rupaya.conf file
	sudo cp rupaya3.conf /home/rupxmn3/.rupayacore/rupaya.conf
	sudo chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore
	sudo chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore/*
	echo Recreation of the /home/rupxmn3/.rupayacore/rupaya.conf file complete
}
#
#MN4 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate4(){
	echo Backing up the /home/rupxmn4/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn4/.rupayacore/rupaya.conf ~/rupaya4.conf
	echo Deleting the /home/rupxmn4/.rupayacore/ directory
	sudo rm -rf /home/rupxmn4/.rupayacore
	sudo mkdir /home/rupxmn4/.rupayacore
	echo Restoring the /home/rupxmn4/.rupayacore/rupaya.conf file
	sudo cp rupaya4.conf /home/rupxmn4/.rupayacore/rupaya.conf
	sudo chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore
	sudo chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore/*
	echo Recreation of the /home/rupxmn4/.rupayacore/rupaya.conf file complete
}
#
#MN5 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate5(){
	echo Backing up the /home/rupxmn5/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn5/.rupayacore/rupaya.conf ~/rupaya5.conf
	echo Deleting the /home/rupxmn5/.rupayacore/ directory
	sudo rm -rf /home/rupxmn5/.rupayacore
	sudo mkdir /home/rupxmn5/.rupayacore
	echo Restoring the /home/rupxmn5/.rupayacore/rupaya.conf file
	sudo cp rupaya5.conf /home/rupxmn5/.rupayacore/rupaya.conf
	sudo chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore
	sudo chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore/*
	echo Recreation of the /home/rupxmn5/.rupayacore/rupaya.conf file complete
}
#
#MN6 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate6(){
	echo Backing up the /home/rupxmn6/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn6/.rupayacore/rupaya.conf ~/rupaya6.conf
	echo Deleting the /home/rupxmn6/.rupayacore/ directory
	sudo rm -rf /home/rupxmn6/.rupayacore
	sudo mkdir /home/rupxmn6/.rupayacore
	echo Restoring the /home/rupxmn6/.rupayacore/rupaya.conf file
	sudo cp rupaya6.conf /home/rupxmn6/.rupayacore/rupaya.conf
	sudo chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore
	sudo chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore/*
	echo Recreation of the /home/rupxmn6/.rupayacore/rupaya.conf file complete
}
#
#MN7 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate7(){
	echo Backing up the /home/rupxmn7/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn7/.rupayacore/rupaya.conf ~/rupaya7.conf
	echo Deleting the /home/rupxmn7/.rupayacore/ directory
	sudo rm -rf /home/rupxmn7/.rupayacore
	sudo mkdir /home/rupxmn7/.rupayacore
	echo Restoring the /home/rupxmn7/.rupayacore/rupaya.conf file
	sudo cp rupaya7.conf /home/rupxmn7/.rupayacore/rupaya.conf
	sudo chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore
	sudo chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore/*
	echo Recreation of the /home/rupxmn7/.rupayacore/rupaya.conf file complete
}
#
#MN8 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate8(){
	echo Backing up the /home/rupxmn8/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn8/.rupayacore/rupaya.conf ~/rupaya8.conf
	echo Deleting the /home/rupxmn8/.rupayacore/ directory
	sudo rm -rf /home/rupxmn8/.rupayacore
	sudo mkdir /home/rupxmn8/.rupayacore
	echo Restoring the /home/rupxmn8/.rupayacore/rupaya.conf file
	sudo cp rupaya8.conf /home/rupxmn8/.rupayacore/rupaya.conf
	sudo chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore
	sudo chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore/*
	echo Recreation of the /home/rupxmn8/.rupayacore/rupaya.conf file complete
}
#
#MN9 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate9(){
	echo Backing up the /home/rupxmn9/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn9/.rupayacore/rupaya.conf ~/rupaya9.conf
	echo Deleting the /home/rupxmn9/.rupayacore/ directory
	sudo rm -rf /home/rupxmn9/.rupayacore
	sudo mkdir /home/rupxmn9/.rupayacore
	echo Restoring the /home/rupxmn9/.rupayacore/rupaya.conf file
	sudo cp rupaya9.conf /home/rupxmn9/.rupayacore/rupaya.conf
	sudo chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore
	sudo chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore/*
	echo Recreation of the /home/rupxmn9/.rupayacore/rupaya.conf file complete
}
#
#MN10 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate10(){
	echo Backing up the /home/rupxmn10/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn10/.rupayacore/rupaya.conf ~/rupaya10.conf
	echo Deleting the /home/rupxmn10/.rupayacore/ directory
	sudo rm -rf /home/rupxmn10/.rupayacore
	sudo mkdir /home/rupxmn10/.rupayacore
	echo Restoring the /home/rupxmn10/.rupayacore/rupaya.conf file
	sudo cp rupaya10.conf /home/rupxmn10/.rupayacore/rupaya.conf
	sudo chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore
	sudo chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore/*
	echo Recreation of the /home/rupxmn10/.rupayacore/rupaya.conf file complete
}
#MN11 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate11(){
	echo Backing up the /home/rupxmn11/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn11/.rupayacore/rupaya.conf ~/rupaya11.conf
	echo Deleting the /home/rupxmn11/.rupayacore/ directory
	sudo rm -rf /home/rupxmn11/.rupayacore
	sudo mkdir /home/rupxmn11/.rupayacore
	echo Restoring the /home/rupxmn11/.rupayacore/rupaya.conf file
	sudo cp rupaya11.conf /home/rupxmn11/.rupayacore/rupaya.conf
	sudo chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore
	sudo chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore/*
	echo Recreation of the /home/rupxmn11/.rupayacore/rupaya.conf file complete
}
#
#MN12 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate12(){
	echo Backing up the /home/rupxmn12/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn12/.rupayacore/rupaya.conf ~/rupaya12.conf
	echo Deleting the /home/rupxmn12/.rupayacore/ directory
	sudo rm -rf /home/rupxmn12/.rupayacore
	sudo mkdir /home/rupxmn12/.rupayacore
	echo Restoring the /home/rupxmn12/.rupayacore/rupaya.conf file
	sudo cp rupaya12.conf /home/rupxmn12/.rupayacore/rupaya.conf
	sudo chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore
	sudo chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore/*
	echo Recreation of the /home/rupxmn12/.rupayacore/rupaya.conf file complete
}
#
#MN13 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate13(){
	echo Backing up the /home/rupxmn13/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn13/.rupayacore/rupaya.conf ~/rupaya13.conf
	echo Deleting the /home/rupxmn13/.rupayacore/ directory
	sudo rm -rf /home/rupxmn13/.rupayacore
	sudo mkdir /home/rupxmn13/.rupayacore
	echo Restoring the /home/rupxmn13/.rupayacore/rupaya.conf file
	sudo cp rupaya13.conf /home/rupxmn13/.rupayacore/rupaya.conf
	sudo chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore
	sudo chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore/*
	echo Recreation of the /home/rupxmn13/.rupayacore/rupaya.conf file complete
}
#
#MN14 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate14(){
	echo Backing up the /home/rupxmn14/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn14/.rupayacore/rupaya.conf ~/rupaya14.conf
	echo Deleting the /home/rupxmn14/.rupayacore/ directory
	sudo rm -rf /home/rupxmn14/.rupayacore
	sudo mkdir /home/rupxmn14/.rupayacore
	echo Restoring the /home/rupxmn14/.rupayacore/rupaya.conf file
	sudo cp rupaya14.conf /home/rupxmn14/.rupayacore/rupaya.conf
	sudo chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore
	sudo chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore/*
	echo Recreation of the /home/rupxmn14/.rupayacore/rupaya.conf file complete
}
#
#MN15 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate15(){
	echo Backing up the /home/rupxmn15/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn15/.rupayacore/rupaya.conf ~/rupaya15.conf
	echo Deleting the /home/rupxmn15/.rupayacore/ directory
	sudo rm -rf /home/rupxmn15/.rupayacore
	sudo mkdir /home/rupxmn15/.rupayacore
	echo Restoring the /home/rupxmn15/.rupayacore/rupaya.conf file
	sudo cp rupaya15.conf /home/rupxmn15/.rupayacore/rupaya.conf
	sudo chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore
	sudo chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore/*
	echo Recreation of the /home/rupxmn15/.rupayacore/rupaya.conf file complete
}
#
#MN16 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate16(){
	echo Backing up the /home/rupxmn16/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn16/.rupayacore/rupaya.conf ~/rupaya16.conf
	echo Deleting the /home/rupxmn16/.rupayacore/ directory
	sudo rm -rf /home/rupxmn16/.rupayacore
	sudo mkdir /home/rupxmn16/.rupayacore
	echo Restoring the /home/rupxmn16/.rupayacore/rupaya.conf file
	sudo cp rupaya16.conf /home/rupxmn16/.rupayacore/rupaya.conf
	sudo chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore
	sudo chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore/*
	echo Recreation of the /home/rupxmn16/.rupayacore/rupaya.conf file complete
}
#
#MN17 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate17(){
	echo Backing up the /home/rupxmn17/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn17/.rupayacore/rupaya.conf ~/rupaya17.conf
	echo Deleting the /home/rupxmn17/.rupayacore/ directory
	sudo rm -rf /home/rupxmn17/.rupayacore
	sudo mkdir /home/rupxmn17/.rupayacore
	echo Restoring the /home/rupxmn17/.rupayacore/rupaya.conf file
	sudo cp rupaya17.conf /home/rupxmn17/.rupayacore/rupaya.conf
	sudo chown rupxmn17:rupxmn17 -R /home/rupxmn17/.rupayacore
	sudo chown rupxmn17:rupxmn17 -R /home/rupxmn17/.rupayacore/*
	echo Recreation of the /home/rupxmn17/.rupayacore/rupaya.conf file complete
}
#
#MN18 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate18(){
	echo Backing up the /home/rupxmn18/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn18/.rupayacore/rupaya.conf ~/rupaya18.conf
	echo Deleting the /home/rupxmn18/.rupayacore/ directory
	sudo rm -rf /home/rupxmn18/.rupayacore
	sudo mkdir /home/rupxmn18/.rupayacore
	echo Restoring the /home/rupxmn18/.rupayacore/rupaya.conf file
	sudo cp rupaya18.conf /home/rupxmn18/.rupayacore/rupaya.conf
	sudo chown rupxmn18:rupxmn18 -R /home/rupxmn18/.rupayacore
	sudo chown rupxmn18:rupxmn18 -R /home/rupxmn18/.rupayacore/*
	echo Recreation of the /home/rupxmn18/.rupayacore/rupaya.conf file complete
}
#
#MN19 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate19(){
	echo Backing up the /home/rupxmn19/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn19/.rupayacore/rupaya.conf ~/rupaya19.conf
	echo Deleting the /home/rupxmn19/.rupayacore/ directory
	sudo rm -rf /home/rupxmn19/.rupayacore
	sudo mkdir /home/rupxmn19/.rupayacore
	echo Restoring the /home/rupxmn19/.rupayacore/rupaya.conf file
	sudo cp rupaya19.conf /home/rupxmn19/.rupayacore/rupaya.conf
	sudo chown rupxmn19:rupxmn19 -R /home/rupxmn19/.rupayacore
	sudo chown rupxmn19:rupxmn19 -R /home/rupxmn19/.rupayacore/*
	echo Recreation of the /home/rupxmn19/.rupayacore/rupaya.conf file complete
}
#
#MN20 - Backing up the rupaya.conf file, deleting the .rupayacore directory, and restoring the .conf file.
recreate20(){
	echo Backing up the /home/rupxmn20/.rupayacore/rupaya.conf file
	cp -i /home/rupxmn20/.rupayacore/rupaya.conf ~/rupaya20.conf
	echo Deleting the /home/rupxmn20/.rupayacore/ directory
	sudo rm -rf /home/rupxmn20/.rupayacore
	sudo mkdir /home/rupxmn20/.rupayacore
	echo Restoring the /home/rupxmn20/.rupayacore/rupaya.conf file
	sudo cp rupaya20.conf /home/rupxmn20/.rupayacore/rupaya.conf
	sudo chown rupxmn20:rupxmn20 -R /home/rupxmn20/.rupayacore
	sudo chown rupxmn20:rupxmn20 -R /home/rupxmn20/.rupayacore/*
	echo Recreation of the /home/rupxmn20/.rupayacore/rupaya.conf file complete
}
#---------------------------------------------------------
#
#Replicate MN1 to MN2
replicate1-2(){
        echo Starting the MN1 to MN2 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn2/.rupayacore/rupaya.conf ~/rupaya2.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn2/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn2/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya2.conf /home/rupxmn2/.rupayacore/rupaya.conf
	sudo chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore
	sudo chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore/*
	echo Replication of the MN1 directories to the MN2 folders is complete.
	ls -lsha /home/rupxmn2/.rupayacore/
	echo starting the MN2 Daemon
	sudo runuser -l rupxmn2 -c 'rupayad -daemon'
}
alias rep1-2=replicate1-2
#
#Replicate MN1 to MN3
replicate1-3(){
	echo Starting the MN1 to MN3 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn3/.rupayacore/rupaya.conf ~/rupaya3.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn3/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn3/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya3.conf /home/rupxmn3/.rupayacore/rupaya.conf
	sudo chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore
	sudo chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore/*
	echo Replication of the MN1 directories to the MN3 folders is complete.
	ls -lsha /home/rupxmn3/.rupayacore/
	echo starting the MN3 Daemon
	sudo runuser -l rupxmn3 -c 'rupayad -daemon'
}
alias rep1-3=replicate1-3
#
#Replicate MN1 to MN4
replicate1-4(){
	echo Starting the MN1 to MN4 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn4/.rupayacore/rupaya.conf ~/rupaya4.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn4/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn4/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya4.conf /home/rupxmn4/.rupayacore/rupaya.conf
	sudo chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore
	sudo chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore/*
	echo Replication of the MN1 directories to the MN4 folders is complete.
	ls -lsha /home/rupxmn4/.rupayacore/
	echo starting the MN4 Daemon
	sudo runuser -l rupxmn4 -c 'rupayad -daemon'
}
alias rep1-4=replicate1-4
#
#Replicate MN1 to MN5
replicate1-5(){
	echo Starting the MN1 to MN5 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn5/.rupayacore/rupaya.conf ~/rupaya5.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn5/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn5/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya5.conf /home/rupxmn5/.rupayacore/rupaya.conf
	sudo chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore
	sudo chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore/*
	echo Replication of the MN1 directories to the MN5 folders is complete.
	ls -lsha /home/rupxmn5/.rupayacore/
	echo starting the MN5 Daemon
	sudo runuser -l rupxmn5 -c 'rupayad -daemon'
}
alias rep1-5=replicate1-5
#
#Replicate MN1 to MN6
replicate1-6(){
	echo Starting the MN1 to MN6 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn6/.rupayacore/rupaya.conf ~/rupaya6.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn6/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn6/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya6.conf /home/rupxmn6/.rupayacore/rupaya.conf
	sudo chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore
	sudo chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore/*
	echo Replication of the MN1 directories to the MN6 folders is complete.
	ls -lsha /home/rupxmn6/.rupayacore/
	echo starting the MN6 Daemon
	sudo runuser -l rupxmn6 -c 'rupayad -daemon'
}
alias rep1-6=replicate1-6
#
#Replicate MN1 to MN7
replicate1-7(){
	echo Starting the MN1 to MN7 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn7/.rupayacore/rupaya.conf ~/rupaya7.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn7/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn7/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya7.conf /home/rupxmn7/.rupayacore/rupaya.conf
	sudo chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore
	sudo chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore/*
	echo Replication of the MN1 directories to the MN7 folders is complete.
	ls -lsha /home/rupxmn7/.rupayacore/
	echo starting the MN7 Daemon
	sudo runuser -l rupxmn7 -c 'rupayad -daemon'
}
alias rep1-7=replicate1-7
#
#Replicate MN1 to MN8
replicate1-8(){
	echo Starting the MN1 to MN8 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn8/.rupayacore/rupaya.conf ~/rupaya8.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn8/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn8/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya8.conf /home/rupxmn8/.rupayacore/rupaya.conf
	sudo chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore
	sudo chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore/*
	echo Replication of the MN1 directories to the MN8 folders is complete.
	ls -lsha /home/rupxmn8/.rupayacore/
	echo starting the MN8 Daemon
	sudo runuser -l rupxmn8 -c 'rupayad -daemon'
}
alias rep1-8=replicate1-8
#
#Replicate MN1 to MN9
replicate1-9(){
	echo Starting the MN1 to MN9 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn9/.rupayacore/rupaya.conf ~/rupaya9.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn9/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn9/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya9.conf /home/rupxmn9/.rupayacore/rupaya.conf
	sudo chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore
	sudo chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore/*
	echo Replication of the MN1 directories to the MN9 folders is complete.
	ls -lsha /home/rupxmn9/.rupayacore/
	echo starting the MN9 Daemon
	sudo runuser -l rupxmn9 -c 'rupayad -daemon'
}
alias rep1-9=replicate1-9
#
#Replicate MN1 to MN10
replicate1-10(){
	echo Starting the MN1 to MN10 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn10/.rupayacore/rupaya.conf ~/rupaya10.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn10/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn10/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya10.conf /home/rupxmn10/.rupayacore/rupaya.conf
	sudo chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore
	sudo chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore/*
	echo Replication of the MN1 directories to the MN10 folders is complete.
	ls -lsha /home/rupxmn10/.rupayacore/
	echo starting the MN10 Daemon
	sudo runuser -l rupxmn10 -c 'rupayad -daemon'
}
alias rep1-10=replicate1-10
#
#Replicate MN1 to MN11
replicate1-11(){
	echo Starting the MN1 to MN11 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn11/.rupayacore/rupaya.conf ~/rupaya11.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn11/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn11/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya11.conf /home/rupxmn11/.rupayacore/rupaya.conf
	sudo chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore
	sudo chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore/*
	echo Replication of the MN1 directories to the MN11 folders is complete.
	ls -lsha /home/rupxmn11/.rupayacore/
	echo starting the MN11 Daemon
	sudo runuser -l rupxmn11 -c 'rupayad -daemon'
}
alias rep1-11=replicate1-11
#
#Replicate MN1 to MN12
replicate1-12(){
	echo Starting the MN1 to MN12 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn12/.rupayacore/rupaya.conf ~/rupaya12.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn12/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn12/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya12.conf /home/rupxmn12/.rupayacore/rupaya.conf
	sudo chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore
	sudo chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore/*
	echo Replication of the MN1 directories to the MN12 folders is complete.
	ls -lsha /home/rupxmn12/.rupayacore/
	echo starting the MN12 Daemon
	sudo runuser -l rupxmn12 -c 'rupayad -daemon'
}
alias rep1-12=replicate1-12
#
#Replicate MN1 to MN13
replicate1-13(){
	echo Starting the MN1 to MN13 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn13/.rupayacore/rupaya.conf ~/rupaya13.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn13/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn13/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya13.conf /home/rupxmn13/.rupayacore/rupaya.conf
	sudo chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore
	sudo chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore/*
	echo Replication of the MN1 directories to the MN13 folders is complete.
	ls -lsha /home/rupxmn13/.rupayacore/
	echo starting the MN13 Daemon
	sudo runuser -l rupxmn13 -c 'rupayad -daemon'
}
alias rep1-13=replicate1-13
#
#Replicate MN1 to MN14
replicate1-14(){
	echo Starting the MN1 to MN14 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn14/.rupayacore/rupaya.conf ~/rupaya14.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn14/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn14/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya14.conf /home/rupxmn14/.rupayacore/rupaya.conf
	sudo chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore
	sudo chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore/*
	echo Replication of the MN1 directories to the MN14 folders is complete.
	ls -lsha /home/rupxmn14/.rupayacore/
	echo starting the MN14 Daemon
	sudo runuser -l rupxmn14 -c 'rupayad -daemon'
}
alias rep1-14=replicate1-14
#
#Replicate MN1 to MN15
replicate1-15(){
	echo Starting the MN1 to MN15 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn15/.rupayacore/rupaya.conf ~/rupaya15.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn15/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn15/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya15.conf /home/rupxmn15/.rupayacore/rupaya.conf
	sudo chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore
	sudo chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore/*
	echo Replication of the MN1 directories to the MN15 folders is complete.
	ls -lsha /home/rupxmn15/.rupayacore/
	echo starting the MN15 Daemon
	sudo runuser -l rupxmn15 -c 'rupayad -daemon'
}
alias rep1-15=replicate1-15
#
#Replicate MN1 to MN16
replicate1-16(){
	echo Starting the MN1 to MN16 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn16/.rupayacore/rupaya.conf ~/rupaya16.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn16/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn16/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya16.conf /home/rupxmn16/.rupayacore/rupaya.conf
	sudo chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore
	sudo chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore/*
	echo Replication of the MN1 directories to the MN16 folders is complete.
	ls -lsha /home/rupxmn16/.rupayacore/
	echo starting the MN16 Daemon
	sudo runuser -l rupxmn16 -c 'rupayad -daemon'
}
alias rep1-16=replicate1-16
#
#Replicate MN1 to MN17
replicate1-17(){
	echo Starting the MN1 to MN17 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn17/.rupayacore/rupaya.conf ~/rupaya17.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn17/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn17/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya17.conf /home/rupxmn17/.rupayacore/rupaya.conf
	sudo chown rupxmn17:rupxmn17 -R /home/rupxmn17/.rupayacore
	sudo chown rupxmn17:rupxmn17 -R /home/rupxmn17/.rupayacore/*
	echo Replication of the MN1 directories to the MN17 folders is complete.
	ls -lsha /home/rupxmn17/.rupayacore/
	echo starting the MN17 Daemon
	sudo runuser -l rupxmn17 -c 'rupayad -daemon'
}
alias rep1-17=replicate1-17
#
#Replicate MN1 to MN18
replicate1-18(){
	echo Starting the MN1 to MN18 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn18/.rupayacore/rupaya.conf ~/rupaya18.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn18/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn18/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya18.conf /home/rupxmn18/.rupayacore/rupaya.conf
	sudo chown rupxmn18:rupxmn18 -R /home/rupxmn18/.rupayacore
	sudo chown rupxmn18:rupxmn18 -R /home/rupxmn18/.rupayacore/*
	echo Replication of the MN1 directories to the MN18 folders is complete.
	ls -lsha /home/rupxmn18/.rupayacore/
	echo starting the MN18 Daemon
	sudo runuser -l rupxmn18 -c 'rupayad -daemon'
}
alias rep1-18=replicate1-18
#
#Replicate MN1 to MN19
replicate1-19(){
	echo Starting the MN1 to MN19 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn19/.rupayacore/rupaya.conf ~/rupaya19.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn19/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn19/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya19.conf /home/rupxmn19/.rupayacore/rupaya.conf
	sudo chown rupxmn19:rupxmn19 -R /home/rupxmn19/.rupayacore
	sudo chown rupxmn19:rupxmn19 -R /home/rupxmn19/.rupayacore/*
	echo Replication of the MN1 directories to the MN19 folders is complete.
	ls -lsha /home/rupxmn19/.rupayacore/
	echo starting the MN19 Daemon
	sudo runuser -l rupxmn19 -c 'rupayad -daemon'
}
alias rep1-19=replicate1-19
#
#Replicate MN1 to MN20
replicate1-20(){
	echo Starting the MN1 to MN20 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn20/.rupayacore/rupaya.conf ~/rupaya20.conf
	echo Deleting the .rupayacore directory
	sudo rm -rf /home/rupxmn20/.rupayacore
	echo Copying over the MN1 directories
	sudo cp -R /home/rupxmn/.rupayacore /home/rupxmn20/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	sudo cp -i rupaya20.conf /home/rupxmn20/.rupayacore/rupaya.conf
	sudo chown rupxmn20:rupxmn20 -R /home/rupxmn20/.rupayacore
	sudo chown rupxmn20:rupxmn20 -R /home/rupxmn20/.rupayacore/*
	echo Replication of the MN1 directories to the MN20 folders is complete.
	ls -lsha /home/rupxmn20/.rupayacore/
	echo starting the MN20 Daemon
	sudo runuser -l rupxmn20 -c 'rupayad -daemon'
}
alias rep1-20=replicate1-20
#
#---------------------------------------------------------
#
#MN1 - Resyncing the rupxmn wallet.
resync1(){
	echo Resyncing the rupxmn wallet.
	sudo runuser -l rupxmn -c "rupayad -daemon -resync"
}
#
#MN2 - Resyncing the rupxmn2 wallet.
resync2(){
	echo Resyncing the rupxmn2 wallet.
	sudo runuser -l rupxmn2 -c "rupayad -daemon -resync"
}
#
#MN3 - Resyncing the rupxmn3 wallet.
resync3(){
	echo Resyncing the rupxmn3 wallet.
	sudo runuser -l rupxmn3 -c "rupayad -daemon -resync"
}
#
#MN4 - Resyncing the rupxmn4 wallet.
resync4(){
	echo Resyncing the rupxmn4 wallet.
	sudo runuser -l rupxmn4 -c "rupayad -daemon -resync"
}
#
#MN5 - Resyncing the rupxmn5 wallet.
resync5(){
	echo Resyncing the rupxmn5 wallet.
	sudo runuser -l rupxmn5 -c "rupayad -daemon -resync"
}
#
#MN6 - Resyncing the rupxmn6 wallet.
resync6(){
	echo Resyncing the rupxmn6 wallet.
	sudo runuser -l rupxmn6 -c "rupayad -daemon -resync"
}
#
#MN7 - Resyncing the rupxmn7 wallet.
resync7(){
	echo Resyncing the rupxmn7 wallet.
	sudo runuser -l rupxmn7 -c "rupayad -daemon -resync"
}
#
#MN8 - Resyncing the rupxmn8 wallet.
resync8(){
	echo Resyncing the rupxmn8 wallet.
	sudo runuser -l rupxmn8 -c "rupayad -daemon -resync"
}
#
#MN9 - Resyncing the rupxmn9 wallet.
resync9(){
	echo Resyncing the rupxmn9 wallet.
	sudo runuser -l rupxmn9 -c "rupayad -daemon -resync"
}
#
#MN10 - Resyncing the rupxmn10 wallet.
resync10(){
	echo Resyncing the rupxmn10 wallet.
	sudo runuser -l rupxmn10 -c "rupayad -daemon -resync"
}
#
#MN11 - Resyncing the rupxmn11 wallet.
resync11(){
	echo Resyncing the rupxmn11 wallet.
	sudo runuser -l rupxmn11 -c "rupayad -daemon -resync"
}
#
#MN12 - Resyncing the rupxmn12 wallet.
resync12(){
	echo Resyncing the rupxmn12 wallet.
	sudo runuser -l rupxmn12 -c "rupayad -daemon -resync"
}
#
#MN13 - Resyncing the rupxmn13 wallet.
resync13(){
	echo Resyncing the rupxmn13 wallet.
	sudo runuser -l rupxmn13 -c "rupayad -daemon -resync"
}
#
#MN14 - Resyncing the rupxmn14 wallet.
resync14(){
	echo Resyncing the rupxmn14 wallet.
	sudo runuser -l rupxmn14 -c "rupayad -daemon -resync"
}
#
#MN15 - Resyncing the rupxmn15 wallet.
resync15(){
	echo Resyncing the rupxmn15 wallet.
	sudo runuser -l rupxmn15 -c "rupayad -daemon -resync"
}
#
#MN16 - Resyncing the rupxmn16 wallet.
resync16(){
	echo Resyncing the rupxmn16 wallet.
	sudo runuser -l rupxmn16 -c "rupayad -daemon -resync"
}
#
#MN17 - Resyncing the rupxmn17 wallet.
resync17(){
	echo Resyncing the rupxmn17 wallet.
	sudo runuser -l rupxmn17 -c "rupayad -daemon -resync"
}
#
#MN18 - Resyncing the rupxmn18 wallet.
resync18(){
	echo Resyncing the rupxmn18 wallet.
	sudo runuser -l rupxmn18 -c "rupayad -daemon -resync"
}
#
#MN19 - Resyncing the rupxmn19 wallet.
resync19(){
	echo Resyncing the rupxmn19 wallet.
	sudo runuser -l rupxmn19 -c "rupayad -daemon -resync"
}
#
#MN20 - Resyncing the rupxmn20 wallet.
resync20(){
	echo Resyncing the rupxmn20 wallet.
	sudo runuser -l rupxmn20 -c "rupayad -daemon -resync"
}
#---------------------------------------------------------
#
#MN1-20 - Backing all of the rupaya.conf files
backupall(){
	echo Backing up all of the rupaya.conf files to /home/rupxmn/
	backup1
	backup2
	backup3
	backup4
	backup5
	backup6
	backup7
	backup8
	backup9
	backup10
	backup11
	backup12
	backup13
	backup14
	backup15
	backup16
	backup17
	backup18
	backup19
	backup20
	echo Backup of all config files complete
}
#MN1 - Backing up the rupaya.conf file
backup1(){
	echo Backing up the /home/rupxmn/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya1.conf
	sudo cp /home/rupxmn/.rupayacore/rupaya.conf ~/rupaya1.conf
	echo Backup complete
}
#
#MN2 - Backing up the rupaya.conf file
backup2(){
	echo Backing up the /home/rupxm2/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya2.conf
	sudo cp /home/rupxmn2/.rupayacore/rupaya.conf ~/rupaya2.conf
	echo Backup complete
}
#
#MN3 - Backing up the rupaya.conf file
backup3(){
	echo Backing up the /home/rupxmn3/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya3.conf
	sudo cp /home/rupxmn3/.rupayacore/rupaya.conf ~/rupaya3.conf
	echo Backup complete
}
#
#MN4 - Backing up the rupaya.conf file
backup4(){
	echo Backing up the /home/rupxmn4/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya4.conf
	sudo cp /home/rupxmn4/.rupayacore/rupaya.conf ~/rupaya4.conf
	echo Backup complete
}
#
#MN5 - Backing up the rupaya.conf file
backup5(){
	echo Backing up the /home/rupxmn5/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya5.conf
	sudo cp /home/rupxmn5/.rupayacore/rupaya.conf ~/rupaya5.conf
	echo Backup complete
}
#
#MN6 - Backing up the rupaya.conf file
backup6(){
	echo Backing up the /home/rupxmn6/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya6.conf
	sudo cp /home/rupxmn6/.rupayacore/rupaya.conf ~/rupaya6.conf
	echo Backup complete
}
#
#MN7 - Backing up the rupaya.conf file
backup7(){
	echo Backing up the /home/rupxmn7/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya7.conf
	sudo cp /home/rupxmn7/.rupayacore/rupaya.conf ~/rupaya7.conf
	echo Backup complete
}
#
#MN8 - Backing up the rupaya.conf file
backup8(){
	echo Backing up the /home/rupxmn8/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya8.conf
	sudo cp /home/rupxmn8/.rupayacore/rupaya.conf ~/rupaya8.conf
	echo Backup complete
}
#
#MN9 - Backing up the rupaya.conf file
backup9(){
	echo Backing up the /home/rupxmn9/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya9.conf
	sudo cp /home/rupxmn9/.rupayacore/rupaya.conf ~/rupaya9.conf
	echo Backup complete
}
#
#MN10 - Backing up the rupaya.conf file
backup10(){
	echo Backing up the /home/rupxmn10/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya10.conf
	sudo cp /home/rupxmn10/.rupayacore/rupaya.conf ~/rupaya10.conf
	echo Backup complete
}
#MN11 - Backing up the rupaya.conf file
backup11(){
	echo Backing up the /home/rupxmn11/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya11.conf
	sudo cp /home/rupxmn11/.rupayacore/rupaya.conf ~/rupaya11.conf
	echo Backup complete
}
#
#MN12 - Backing up the rupaya.conf file
backup12(){
	echo Backing up the /home/rupxm12/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya12.conf
	sudo cp /home/rupxmn12/.rupayacore/rupaya.conf ~/rupaya12.conf
	echo Backup complete
}
#
#MN13 - Backing up the rupaya.conf file
backup13(){
	echo Backing up the /home/rupxmn13/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya13.conf
	sudo cp /home/rupxmn13/.rupayacore/rupaya.conf ~/rupaya13.conf
	echo Backup complete
}
#
#MN14 - Backing up the rupaya.conf file
backup14(){
	echo Backing up the /home/rupxmn14/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya14.conf
	sudo cp /home/rupxmn14/.rupayacore/rupaya.conf ~/rupaya14.conf
	echo Backup complete
}
#
#MN15 - Backing up the rupaya.conf file
backup15(){
	echo Backing up the /home/rupxmn15/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya15.conf
	sudo cp /home/rupxmn15/.rupayacore/rupaya.conf ~/rupaya15.conf
	echo Backup complete
}
#
#MN16 - Backing up the rupaya.conf file
backup16(){
	echo Backing up the /home/rupxmn16/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya16.conf
	sudo cp /home/rupxmn16/.rupayacore/rupaya.conf ~/rupaya16.conf
	echo Backup complete
}
#
#MN17 - Backing up the rupaya.conf file
backup17(){
	echo Backing up the /home/rupxmn17/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya17.conf
	sudo cp /home/rupxmn17/.rupayacore/rupaya.conf ~/rupaya17.conf
	echo Backup complete
}
#
#MN18 - Backing up the rupaya.conf file
backup18(){
	echo Backing up the /home/rupxmn18/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya18.conf
	sudo cp /home/rupxmn18/.rupayacore/rupaya.conf ~/rupaya18.conf
	echo Backup complete
}
#
#MN19 - Backing up the rupaya.conf file
backup19(){
	echo Backing up the /home/rupxmn19/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya19.conf
	sudo cp /home/rupxmn19/.rupayacore/rupaya.conf ~/rupaya19.conf
	echo Backup complete
}
#
#MN20 - Backing up the rupaya.conf file
backup20(){
	echo Backing up the /home/rupxmn20/.rupayacore/rupaya.conf file to /home/rupxmn/rupaya20.conf
	sudo cp /home/rupxmn20/.rupayacore/rupaya.conf ~/rupaya20.conf
	echo Backup complete
}	
#---------------------------------------------------------
#
#MN1 - Restoring the rupaya.conf file
restore1(){
	echo Restoring the /root/rupaya1.conf file to /home/rupxmn/.rupayacore/rupaya.conf
	sudo cp rupaya1.conf /home/rupxmn/.rupayacore/rupaya.conf
	sudo chown rupxmn:rupxmn /home/rupxmn/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN2 - Restoring the rupaya.conf file
restore2(){
	echo Restoring the /root/rupaya2.conf file to /home/rupxmn2/.rupayacore/rupaya.conf
	sudo cp rupaya2.conf /home/rupxmn2/.rupayacore/rupaya.conf
	sudo chown rupxmn2:rupxmn2 /home/rupxmn2/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN3 - Restoring the rupaya.conf file
restore3(){
	echo Restoring the /root/rupaya3.conf file to /home/rupxmn3/.rupayacore/rupaya.conf
	sudo cp rupaya3.conf /home/rupxmn3/.rupayacore/rupaya.conf
	sudo chown rupxmn3:rupxmn3 /home/rupxmn3/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN4 - Restoring the rupaya.conf file
restore4(){
	echo Restoring the /root/rupaya4.conf file to /home/rupxmn4/.rupayacore/rupaya.conf
	sudo cp rupaya4.conf /home/rupxmn4/.rupayacore/rupaya.conf
	sudo chown rupxmn4:rupxmn4 /home/rupxmn4/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN5 - Restoring the rupaya.conf file
restore5(){
	echo Restoring the /root/rupaya5.conf file to /home/rupxmn5/.rupayacore/rupaya.conf
	sudo cp rupaya5.conf /home/rupxmn5/.rupayacore/rupaya.conf
	sudo chown rupxmn5:rupxmn5 /home/rupxmn5/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN6 - Restoring the rupaya.conf file
restore6(){
	echo Restoring the /root/rupaya6.conf file to /home/rupxmn6/.rupayacore/rupaya.conf
	sudo cp rupaya6.conf /home/rupxmn6/.rupayacore/rupaya.conf
	sudo chown rupxmn6:rupxmn6 /home/rupxmn6/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN7 - Restoring the rupaya.conf file
restore7(){
	echo Restoring the /root/rupaya7.conf file to /home/rupxmn7/.rupayacore/rupaya.conf
	sudo cp rupaya7.conf /home/rupxmn7/.rupayacore/rupaya.conf
	sudo chown rupxmn7:rupxmn7 /home/rupxmn7/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN8 - Restoring the rupaya.conf file
restore8(){
	echo Restoring the /root/rupaya8.conf file to /home/rupxmn8/.rupayacore/rupaya.conf
	sudo cp rupaya8.conf /home/rupxmn8/.rupayacore/rupaya.conf
	sudo chown rupxmn8:rupxmn8 /home/rupxmn8/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN9 - Restoring the rupaya.conf file
restore9(){
	echo Restoring the /root/rupaya9.conf file to /home/rupxmn9/.rupayacore/rupaya.conf
	sudo cp rupaya9.conf /home/rupxmn9/.rupayacore/rupaya.conf
	sudo chown rupxmn9:rupxmn9 /home/rupxmn9/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN10 - Restoring the rupaya.conf file
restore10(){
	echo Restoring the /root/rupaya10.conf file to /home/rupxmn10/.rupayacore/rupaya.conf
	sudo cp rupaya10.conf /home/rupxmn10/.rupayacore/rupaya.conf
	sudo chown rupxmn10:rupxmn10 /home/rupxmn10/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN11 - Restoring the rupaya.conf file
restore11(){
	echo Restoring the /root/rupaya11.conf file to /home/rupxmn11/.rupayacore/rupaya.conf
	sudo cp rupaya11.conf /home/rupxmn11/.rupayacore/rupaya.conf
	sudo chown rupxmn11:rupxmn11 /home/rupxmn11/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN12 - Restoring the rupaya.conf file
restore12(){
	echo Restoring the /root/rupaya12.conf file to /home/rupxmn12/.rupayacore/rupaya.conf
	sudo cp rupaya12.conf /home/rupxmn12/.rupayacore/rupaya.conf
	sudo chown rupxmn12:rupxmn12 /home/rupxmn12/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN13 - Restoring the rupaya.conf file
restore13(){
	echo Restoring the /root/rupaya13.conf file to /home/rupxmn13/.rupayacore/rupaya.conf
	sudo cp rupaya13.conf /home/rupxmn13/.rupayacore/rupaya.conf
	sudo chown rupxmn13:rupxmn13 /home/rupxmn13/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN14 - Restoring the rupaya.conf file
restore14(){
	echo Restoring the /root/rupaya14.conf file to /home/rupxmn14/.rupayacore/rupaya.conf
	sudo cp rupaya14.conf /home/rupxmn14/.rupayacore/rupaya.conf
	sudo chown rupxmn14:rupxmn14 /home/rupxmn14/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN15 - Restoring the rupaya.conf file
restore15(){
	echo Restoring the /root/rupaya15.conf file to /home/rupxmn15/.rupayacore/rupaya.conf
	sudo cp rupaya15.conf /home/rupxmn15/.rupayacore/rupaya.conf
	sudo chown rupxmn15:rupxmn15 /home/rupxmn15/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN16 - Restoring the rupaya.conf file
restore16(){
	echo Restoring the /root/rupaya16.conf file to /home/rupxmn16/.rupayacore/rupaya.conf
	sudo cp rupaya16.conf /home/rupxmn16/.rupayacore/rupaya.conf
	sudo chown rupxmn16:rupxmn16 /home/rupxmn16/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN17 - Restoring the rupaya.conf file
restore17(){
	echo Restoring the /root/rupaya17.conf file to /home/rupxmn17/.rupayacore/rupaya.conf
	sudo cp rupaya17.conf /home/rupxmn17/.rupayacore/rupaya.conf
	sudo chown rupxmn17:rupxmn17 /home/rupxmn17/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN18 - Restoring the rupaya.conf file
restore18(){
	echo Restoring the /root/rupaya18.conf file to /home/rupxmn18/.rupayacore/rupaya.conf
	sudo cp rupaya18.conf /home/rupxmn18/.rupayacore/rupaya.conf
	sudo chown rupxmn18:rupxmn18 /home/rupxmn18/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN19 - Restoring the rupaya.conf file
restore19(){
	echo Restoring the /root/rupaya19.conf file to /home/rupxmn19/.rupayacore/rupaya.conf
	sudo cp rupaya19.conf /home/rupxmn/.rupayacore19/rupaya.conf
	sudo chown rupxmn19:rupxmn19 /home/rupxmn19/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN20 - Restoring the rupaya.conf file
restore20(){
	echo Restoring the /root/rupaya20.conf file to /home/rupxmn20/.rupayacore/rupaya.conf
	sudo cp rupaya20.conf /home/rupxmn20/.rupayacore/rupaya.conf
	sudo chown rupxmn20:rupxmn20 /home/rupxmn20/.rupayacore/rupaya.conf
	echo Restore complete
}
#---------------------------------------------------------
#
#MN1 - Generating the Masternodeprivkey (aka. genkey).
genkey1(){
	echo 'MN1 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn -c "rupaya-cli stop"
}
#MN2 - Generating the Masternodeprivkey (aka. genkey).
genkey2(){
	echo 'MN2 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn2 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn2 -c "rupaya-cli stop"
}
#MN3 - Generating the Masternodeprivkey (aka. genkey).
genkey3(){
	echo 'MN3 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn3 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn3 -c "rupaya-cli stop"
}
#MN4 - Generating the Masternodeprivkey (aka. genkey).
genkey4(){
	echo 'MN4 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn4 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn4 -c "rupaya-cli stop"
}
#MN5 - Generating the Masternodeprivkey (aka. genkey).
genkey5(){
	echo 'MN5 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn5 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn5 -c "rupaya-cli stop"
}
#MN6 - Generating the Masternodeprivkey (aka. genkey).
genkey6(){
	echo 'MN6 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn6 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn6 -c "rupaya-cli stop"
}
#MN7 - Generating the Masternodeprivkey (aka. genkey).
genkey7(){
	echo 'MN7 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn7 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn7 -c "rupaya-cli stop"
}
#MN8 - Generating the Masternodeprivkey (aka. genkey).
genkey8(){
	echo 'MN8 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn8 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn8 -c "rupaya-cli stop"
}
#MN9 - Generating the Masternodeprivkey (aka. genkey).
genkey9(){
	echo 'MN9 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn9 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn9 -c "rupaya-cli stop"
}
#MN10 - Generating the Masternodeprivkey (aka. genkey).
genkey10(){
	echo 'MN10 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn10 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn10 -c "rupaya-cli stop"
}
#MN11 - Generating the Masternodeprivkey (aka. genkey).
genkey11(){
	echo 'MN11 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn11 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn11 -c "rupaya-cli stop"
}
#MN12 - Generating the Masternodeprivkey (aka. genkey).
genkey12(){
	echo 'MN12 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn12 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn12 -c "rupaya-cli stop"
}
#MN13 - Generating the Masternodeprivkey (aka. genkey).
genkey13(){
	echo 'MN13 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn13 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn13 -c "rupaya-cli stop"
}
#MN14 - Generating the Masternodeprivkey (aka. genkey).
genkey14(){
	echo 'MN14 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn14 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn14 -c "rupaya-cli stop"
}
#MN15 - Generating the Masternodeprivkey (aka. genkey).
genkey15(){
	echo 'MN15 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn15 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn15 -c "rupaya-cli stop"
}
#MN16 - Generating the Masternodeprivkey (aka. genkey).
genkey16(){
	echo 'MN16 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn16 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn16 -c "rupaya-cli stop"
}
#MN17 - Generating the Masternodeprivkey (aka. genkey).
genkey17(){
	echo 'MN17 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn17 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn17 -c "rupaya-cli stop"
}
#MN18 - Generating the Masternodeprivkey (aka. genkey).
genkey18(){
	echo 'MN18 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn18 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn18 -c "rupaya-cli stop"
}
#MN19 - Generating the Masternodeprivkey (aka. genkey).
genkey19(){
	echo 'MN19 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn19 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn19 -c "rupaya-cli stop"
}
#MN20 - Generating the Masternodeprivkey (aka. genkey).
genkey20(){
	echo 'MN20 - Generating the Masternodeprivkey (aka. genkey).'
	sudo runuser -l rupxmn20 -c "rupaya-cli masternode genkey"
	echo Stopping the daemon
	sudo runuser -l rupxmn20 -c "rupaya-cli stop"
}
#---------------------------------------------------------
#
#Commands to view the Rupaya folders and .conf files
#View commands for /home/rupxmn/
ls1(){
	ls -lsha /home/rupxmn/
}
ls1core(){
	ls -lsha /home/rupxmn/.rupayacore
}
cat1(){
	cat /home/rupxmn/.rupayacore/rupaya.conf
}
edit1(){
	sudo nano /home/rupxmn/.rupayacore/rupaya.conf
}
rm1conf(){
	sudo rm /home/rupxmn/.rupayacore/rupaya.conf
}
rm1core(){
	sudo rm -r /home/rupxmn/.rupayacore/
}
#
#View commands for /home/rupxmn2/
ls2(){
	ls -lsha /home/rupxmn2/
}
ls2core(){
	ls -lsha /home/rupxmn2/.rupayacore
}
cat2(){
	cat /home/rupxmn2/.rupayacore/rupaya.conf
}
edit2(){
	sudo nano /home/rupxmn2/.rupayacore/rupaya.conf
}
rm2conf(){
	sudo rm /home/rupxmn2/.rupayacore/rupaya.conf
}
rm2core(){
	sudo rm -r /home/rupxmn2/.rupayacore/
}
#
#View commands for /home/rupxmn3/
ls3(){
	ls -lsha /home/rupxmn3/
}
ls3core(){
	ls -lsha /home/rupxmn3/.rupayacore
}
cat3(){
	cat /home/rupxmn3/.rupayacore/rupaya.conf
}
edit3(){
	sudo nano /home/rupxmn3/.rupayacore/rupaya.conf
}
rm3conf(){
	sudo rm /home/rupxmn3/.rupayacore/rupaya.conf
}
rm3core(){
	sudo rm -r /home/rupxmn3/.rupayacore/
}
#
#View commands for /home/rupxmn4/
ls4(){
	ls -lsha /home/rupxmn4/
}
ls4core(){
	ls -lsha /home/rupxmn4/.rupayacore
}
cat4(){
	cat /home/rupxmn4/.rupayacore/rupaya.conf
}
edit4(){
	sudo nano /home/rupxmn4/.rupayacore/rupaya.conf
}
rm4conf(){
	sudo rm /home/rupxmn4/.rupayacore/rupaya.conf
}
rm4core(){
	sudo rm -r /home/rupxmn4/.rupayacore/
}
#
#View commands for /home/rupxmn5/
ls5(){
	ls -lsha /home/rupxmn5/
}
ls5core(){
	ls -lsha /home/rupxmn5/.rupayacore
}
cat5(){
	cat /home/rupxmn5/.rupayacore/rupaya.conf
}
edit5(){
	sudo nano /home/rupxmn5/.rupayacore/rupaya.conf
}
rm5conf(){
	sudo rm /home/rupxmn5/.rupayacore/rupaya.conf
}
rm5core(){
	sudo rm -r /home/rupxmn5/.rupayacore/
}
#
#View commands for /home/rupxmn6/
ls6(){
	ls -lsha /home/rupxmn6/
}
ls6core(){
	ls -lsha /home/rupxmn6/.rupayacore
}
cat6(){
	cat /home/rupxmn6/.rupayacore/rupaya.conf
}
edit6(){
	sudo nano /home/rupxmn6/.rupayacore/rupaya.conf
}
rm6conf(){
	sudo rm /home/rupxmn6/.rupayacore/rupaya.conf
}
rm6core(){
	sudo rm -r /home/rupxmn6/.rupayacore/
}
#
#View commands for /home/rupxmn7/
ls7(){
	ls -lsha /home/rupxmn7/
}
ls7core(){
	ls -lsha /home/rupxmn7/.rupayacore
}
cat7(){
	cat /home/rupxmn7/.rupayacore/rupaya.conf
}
edit7(){
	sudo nano /home/rupxmn7/.rupayacore/rupaya.conf
}
rm7conf(){
	sudo rm /home/rupxmn7/.rupayacore/rupaya.conf
}
rm7core(){
	sudo rm -r /home/rupxmn7/.rupayacore/
}
#
#View commands for /home/rupxmn8/
ls8(){
	ls -lsha /home/rupxmn8/
}
ls8core(){
	ls -lsha /home/rupxmn8/.rupayacore
}
cat8(){
	cat /home/rupxmn8/.rupayacore/rupaya.conf
}
edit8(){
	sudo nano /home/rupxmn8/.rupayacore/rupaya.conf
}
rm8conf(){
	sudo rm /home/rupxmn8/.rupayacore/rupaya.conf
}
rm8core(){
	sudo rm -r /home/rupxmn8/.rupayacore/
}
#
#View commands for /home/rupxmn9/
ls9(){
	ls -lsha /home/rupxmn9/
}
ls9core(){
	ls -lsha /home/rupxmn9/.rupayacore
}
cat9(){
	cat /home/rupxmn9/.rupayacore/rupaya.conf
}
edit9(){
	sudo nano /home/rupxmn9/.rupayacore/rupaya.conf
}
rm9conf(){
	sudo rm /home/rupxmn9/.rupayacore/rupaya.conf
}
rm9core(){
	sudo rm -r /home/rupxmn9/.rupayacore/
}
#
#View commands for /home/rupxmn10/
ls10(){
	ls -lsha /home/rupxmn10/
}
ls10core(){
	ls -lsha /home/rupxmn10/.rupayacore
}
cat10(){
	cat /home/rupxmn10/.rupayacore/rupaya.conf
}
edit10(){
	sudo nano /home/rupxmn10/.rupayacore/rupaya.conf
}
rm10conf(){
	sudo rm /home/rupxmn10/.rupayacore/rupaya.conf
}
rm10core(){
	sudo rm -r /home/rupxmn10/.rupayacore/
}
#
#View commands for /home/rupxmn11/
ls11(){
	ls -lsha /home/rupxmn11/
}
ls11core(){
	ls -lsha /home/rupxmn11/.rupayacore
}
cat11(){
	cat /home/rupxmn11/.rupayacore/rupaya.conf
}
edit11(){
	sudo nano /home/rupxmn11/.rupayacore/rupaya.conf
}
rm11conf(){
	sudo rm /home/rupxmn11/.rupayacore/rupaya.conf
}
rm11core(){
	sudo rm -r /home/rupxmn11/.rupayacore/
}
#
#View commands for /home/rupxmn12/
ls12(){
	ls -lsha /home/rupxmn12/
}
ls12core(){
	ls -lsha /home/rupxmn12/.rupayacore
}
cat12(){
	cat /home/rupxmn12/.rupayacore/rupaya.conf
}
edit12(){
	sudo nano /home/rupxmn12/.rupayacore/rupaya.conf
}
rm12conf(){
	sudo rm /home/rupxmn12/.rupayacore/rupaya.conf
}
rm12core(){
	sudo rm -r /home/rupxmn12/.rupayacore/
}
#
#View commands for /home/rupxmn13/
ls13(){
	ls -lsha /home/rupxmn13/
}
ls13core(){
	ls -lsha /home/rupxmn13/.rupayacore
}
cat13(){
	cat /home/rupxmn13/.rupayacore/rupaya.conf
}
edit13(){
	sudo nano /home/rupxmn13/.rupayacore/rupaya.conf
}
rm13conf(){
	sudo rm /home/rupxmn13/.rupayacore/rupaya.conf
}
rm13core(){
	sudo rm -r /home/rupxmn13/.rupayacore/
}
#
#View commands for /home/rupxmn14/
ls14(){
	ls -lsha /home/rupxmn14/
}
ls14core(){
	ls -lsha /home/rupxmn14/.rupayacore
}
cat14(){
	cat /home/rupxmn14/.rupayacore/rupaya.conf
}
edit14(){
	sudo nano /home/rupxmn14/.rupayacore/rupaya.conf
}
rm14conf(){
	sudo rm /home/rupxmn14/.rupayacore/rupaya.conf
}
rm14core(){
	sudo rm -r /home/rupxmn14/.rupayacore/
}
#
#View commands for /home/rupxmn15/
ls15(){
	ls -lsha /home/rupxmn15/
}
ls15core(){
	ls -lsha /home/rupxmn15/.rupayacore
}
cat15(){
	cat /home/rupxmn15/.rupayacore/rupaya.conf
}
edit15(){
	sudo nano /home/rupxmn15/.rupayacore/rupaya.conf
}
rm15conf(){
	sudo rm /home/rupxmn15/.rupayacore/rupaya.conf
}
rm15core(){
	sudo rm -r /home/rupxmn15/.rupayacore/
}
#
#View commands for /home/rupxmn16/
ls16(){
	ls -lsha /home/rupxmn16/
}
ls16core(){
	ls -lsha /home/rupxmn16/.rupayacore
}
cat16(){
	cat /home/rupxmn16/.rupayacore/rupaya.conf
}
edit16(){
	sudo nano /home/rupxmn16/.rupayacore/rupaya.conf
}
rm16conf(){
	sudo rm /home/rupxmn16/.rupayacore/rupaya.conf
}
rm16core(){
	sudo rm -r /home/rupxmn16/.rupayacore/
}
#
#View commands for /home/rupxmn17/
ls17(){
	ls -lsha /home/rupxmn17/
}
ls17core(){
	ls -lsha /home/rupxmn17/.rupayacore
}
cat17(){
	cat /home/rupxmn17/.rupayacore/rupaya.conf
}
edit17(){
	sudo nano /home/rupxmn17/.rupayacore/rupaya.conf
}
rm17conf(){
	sudo rm /home/rupxmn17/.rupayacore/rupaya.conf
}
rm17core(){
	sudo rm -r /home/rupxmn17/.rupayacore/
}
#
#View commands for /home/rupxmn18/
ls18(){
	ls -lsha /home/rupxmn18/
}
ls18core(){
	ls -lsha /home/rupxmn18/.rupayacore
}
cat18(){
	cat /home/rupxmn18/.rupayacore/rupaya.conf
}
edit18(){
	sudo nano /home/rupxmn18/.rupayacore/rupaya.conf
}
rm18conf(){
	sudo rm /home/rupxmn18/.rupayacore/rupaya.conf
}
rm18core(){
	sudo rm -r /home/rupxmn18/.rupayacore/
}
#
#View commands for /home/rupxmn19/
ls19(){
	ls -lsha /home/rupxmn19/
}
ls19core(){
	ls -lsha /home/rupxmn19/.rupayacore
}
cat19(){
	cat /home/rupxmn19/.rupayacore/rupaya.conf
}
edit19(){
	sudo nano /home/rupxmn19/.rupayacore/rupaya.conf
}
rm19conf(){
	sudo rm /home/rupxmn19/.rupayacore/rupaya.conf
}
rm19core(){
	sudo rm -r /home/rupxmn19/.rupayacore/
}
#
#View commands for /home/rupxmn20/
ls20(){
	ls -lsha /home/rupxmn20/
}
ls20core(){
	ls -lsha /home/rupxmn20/.rupayacore
}
cat20(){
	cat /home/rupxmn20/.rupayacore/rupaya.conf
}
edit20(){
	sudo nano /home/rupxmn20/.rupayacore/rupaya.conf
}
rm20conf(){
	sudo rm /home/rupxmn20/.rupayacore/rupaya.conf
}
rm20core(){
	sudo rm -r /home/rupxmn20/.rupayacore/
}
#
#---------------------------------------------------------
#
#Rupaya Scripted Commands Cheat Sheet
list(){
	echo **Rupaya Scripted Commands Cheat Sheet**
	echo ""
	echo **Wallet Commands to start/stop the wallet and verify the wallet/MN are running**
	echo ""
	echo ${bold}bc${normal} - Check the Block Count
	echo ${bold}checkall${normal} - Run all of the "Check" commands for all MNs	
	echo ${bold}log1${normal} - Search MN1 debug.log for the TXHASH
	echo ${bold}logall${normal} - Search all MNs debug.log for the TXHASH
	echo ${bold}mnstatus${normal} - Check the MN Status	
	echo ${bold}rinfo${normal} - Check the wallet version, block count, connections, and IP
	echo ${bold}rps${normal} - Verify if the Rupaya Daemon is running
	echo ${bold}start1${normal} -  Start the MN1 Rupaya Daemon
	echo ${bold}startall${normal} - Start all Rupaya MN Daemons
	echo ${bold}stop1${normal} -  Stop the MN1 Rupaya Daemon
	echo ${bold}stopall${normal} - Stop all Rupaya MN Daemons
	echo ""
	echo **Commands to view/edit/remove/resync the folders and config files**
	echo ""
	echo ${bold}backup1${normal} - Backup the rupaya.conf file
	echo ${bold}cat1${normal} - Display the contents of the MN1 configuration file /home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}clearpeers${normal} - Deletes the peers.dat files and restarts the daemons.
	echo "             "Run this every 2 months to clear out the peers.dat file
	echo ${bold}edit1${normal} - EDIT the contents of the MN1 configuration file ${bold}/home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}ls1${normal} - Display the contents of the MN1 directory ${bold}/home/rupxmn/${normal}
	echo ${bold}ls1core${normal} - Display the contents of MN1 directory ${bold}/home/rupxmn/.rupayacore${normal}
	echo ${bold}recreate1${normal} - Back up the rupaya.conf file and delete the .rupayacore directory
	echo ${bold}replicate1-2${normal} - Replicate the MN1 directories to the MN2 directories
	echo ${bold}restore1${normal} - Restore the rupaya.conf file
	echo ${bold}resync1${normal} - Resync the MN1 rupxmn wallet
	echo ${bold}rm1conf${normal} - Delete the MN1 configuration file ${bold}/home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}rm1core${normal} - Delete the entire MN1 directory ${bold}/home/rupxmn/.rupayacore${normal}
	echo ""
	echo ""
}
#End of file
