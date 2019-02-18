#---------------------------------------------------------
#---------------------------------------------------------
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true

#---------------------------------------------------------
#Scripts to run int the /root/.profile
#Source file with all of the Rupaya variables
source /root/vars.bash
#---------------------------------------------------------
bold=$(tput bold)
normal=$(tput sgr0)
#---------------------------------------------------------
#
#Getinfo
rinfo(){
        echo Checking the Rupaya wallet version, block count, and connections
        rupaya-cli getinfo
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
#Block Count
bc(){
        echo Checking the Block Count
        rupaya-cli getblockcount
}
bc1(){
        echo Checking the Block Count
        rupaya-cli getblockcount
}
#---------------------------------------------------------
#
#MN Count
mncount(){
        echo Checking the MN Count
        rupaya-cli masternode count
}
#---------------------------------------------------------
#
#Start the Rupaya MN1 Daemon
start1(){
        echo Starting the Rupaya MN1 Daemon
		rupayad -daemon
}
#---------------------------------------------------------
#
#Stop the Rupaya MN1 Daemon
stop1(){
        echo Stopping the Rupaya MN1 Daemon
		rupaya-cli stop
}
#---------------------------------------------------------
#
#MN Status
mnstatus(){
        echo Checking MN Status
		rupaya-cli masternode status
}
#---------------------------------------------------------
#
#MN HotCold Output
hotcold(){
	echo Searching for the HotCold output in the debug.log file
	echo This is useful to verify the MN started correctly
	cat /root/.rupayacore/debug.log  | grep HotCold
}
#---------------------------------------------------------
#
#MN1 - Searching MN1 debug.log for the TXHASH
log1(){
	echo Searching MN1 debug.log for the TXHASH
	cat /root/.rupayacore/debug.log | grep -a $H1 | tail -5
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
	stop1
	sleep 2
	echo ---------------------------------------------------------
	echo Deleting all of the peers.dat files and restarting the Rupaya Daemon
	printf "peers.dat deleted" rm /root/.rupayacore/peers.dat && sleep 2 && echo  
	echo ---------------------------------------------------------
	#Starting the daemon
	start1
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
	echo Backing up the /root/.rupayacore/rupaya.conf file
	cp -i /root/.rupayacore/rupaya.conf ~/rupaya1.conf
	echo Deleting the /root/.rupayacore/ directory
	sudo rm -rf /root/.rupayacore
	sudo mkdir /root/.rupayacore
	echo Restoring the /root/.rupayacore/rupaya.conf file
	sudo cp rupaya1.conf /root/.rupayacore/rupaya.conf
	echo Recreation of the /root/.rupayacore/rupaya.conf file complete
}
#---------------------------------------------------------
#
#MN1 - Resyncing the rupxmn wallet.
resync1(){
	echo Resyncing the rupxmn wallet.
	rupayad -daemon -resync
}
#---------------------------------------------------------
#
#MN1 - Backing up the rupaya.conf file
backup1(){
	echo Backing up the /root/.rupayacore/rupaya.conf file to /root/rupaya1.conf
	cp /root/.rupayacore/rupaya.conf ~/rupaya1.conf
	echo Backup complete
}
#---------------------------------------------------------
#
#MN1 - Restoring the rupaya.conf file
restore1(){
	echo Restoring the /root/rupaya1.conf file to /root/.rupayacore/rupaya.conf
	cp rupaya1.conf /root/.rupayacore/rupaya.conf
	echo Restore complete
}
#---------------------------------------------------------
#
#Commands to view the Rupaya folders and .conf files
#View commands for /root/
ls1(){
	ls -lsha /root/
}
ls1core(){
	ls -lsha /root/.rupayacore
}
cat1(){
	cat /root/.rupayacore/rupaya.conf
}
edit1(){
	nano /root/.rupayacore/rupaya.conf
}
rm1conf(){
	rm /root/.rupayacore/rupaya.conf
}
rm1core(){
	rm -r /root/.rupayacore/
}
#---------------------------------------------------------
#
#Rupaya Scripted Commands Cheat Sheet
list(){
	echo ${bold}Rupaya Scripted Commands Cheat Sheet${normal}
	echo ""
	echo ${bold}Wallet Commands to start/stop the wallet and verify the wallet/MN are running${normal}
	echo ""
	echo ${bold}bc${normal} - Check the Block Count
	echo ${bold}checkall${normal} - Run all of the "Check" commands for all MNs	
	echo ${bold}log1${normal} - Search MN1 debug.log for the TXHASH
	echo ${bold}mnstatus${normal} - Check the MN Status
	echo ${bold}rinfo${normal} - Check the wallet version, block count, and active connections
	echo ${bold}rps${normal} - Verify if the Rupaya Daemon is running
	echo ${bold}start1${normal} -  Start the MN1 Rupaya Daemon
	echo ${bold}stop1${normal} -  Stop the MN1 Rupaya Daemon
	echo ""
	echo ${bold}Commands to view/edit/remove/resync the folders and config files${normal}
	echo ""
	echo ${bold}backup1${normal} - Backup the rupaya.conf file
	echo ${bold}cat1${normal} - Display the contents of the MN1 configuration file /root/.rupayacore/rupaya.conf${normal}
	echo ${bold}clearpeers${normal} - Deletes the peers.dat files and restarts the daemons.
	echo "             "Run this every 2 months to clear out the peers.dat file
	echo ${bold}edit1${normal} - EDIT the contents of the MN1 configuration file ${bold}/root/.rupayacore/rupaya.conf${normal}
	echo ${bold}ls1${normal} - Display the contents of the MN1 directory ${bold}/root/${normal}
	echo ${bold}ls1core${normal} - Display the contents of MN1 directory ${bold}/root/.rupayacore${normal}
	echo ${bold}recreate1${normal} - Back up the rupaya.conf file and delete the .rupayacore directory
	echo ${bold}restore1${normal} - Restore the rupaya.conf file
	echo ${bold}resync1${normal} - Resync the MN1 rupxmn wallet
	echo ${bold}rm1conf${normal} - Delete the MN1 configuration file ${bold}/root/.rupayacore/rupaya.conf${normal}
	echo ${bold}rm1core${normal} - Delete the entire MN1 directory ${bold}/root/.rupayacore${normal}
	echo ""
	echo ""
}
#End of file
