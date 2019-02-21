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
# Internal script commands
#
# first arg: number or all
# second arg: command to run
WALLETS=16
COMMANDS="bc count info resync start status stop testnet"

for c in $COMMANDS; do
	if [ "$1" == "$c" ]; then
		$@
		break
	fi
done

run_as_rupxmn(){
    if [ "$1" == "all" ]; then
        printf "rupxmn " && sudo runuser -l "rupxmn" -c "$2"
        for i in $(seq 2 $WALLETS); do
            if [ $i -eq 1 ]; then
                printf "rupxmn " && sudo runuser -l "rupxmn" -c "$2"
            else
                printf "rupxmn$i " && sudo runuser -l "rupxmn$i" -c "$2"
            fi
        done
    elif [[ "$1" =~ ^[0-9]*$ ]]; then # check if $1 is an integer or nothing
        if [ $1 -eq 1 ]; then
            printf "rupxmn " && sudo runuser -l "rupxmn" -c "$2"
        else
            printf "rupxmn$1 " && sudo runuser -l "rupxmn$1" -c "$2"
        fi
    else
        echo 'The command failed because you need to enter a number or the word "all" after the command'
    fi
}

rpcli(){
	run_as_rupxmn $1 "rupaya-cli $2"
}
#---------------------------------------------------------
#Check the block count
#rupaya-cli getblockcount
bc(){
	echo Checking the Block Count
	rpcli $1 getblockcount
}
#---------------------------------------------------------
#Check the MN count
#rupaya-cli masternode count
count(){
	rpcli $1 "masternode count"
}
#---------------------------------------------------------
#Check the wallet info
#rupaya-cli getinfo
info(){
	echo Checking the Rupaya wallet version, block count, and connections
	rpcli $1 getinfo
}
#---------------------------------------------------------
#Resyncing the rupxmn wallet.
#rupayad -daemon -resync 
resync(){
	run_as_rupxmn $1 "rupayad -daemon -resync"
}
#---------------------------------------------------------
#Start the Rupaya Daemon
#rupayad -daemon
start(){
	run_as_rupxmn $1 "rupayad -daemon"
}
#---------------------------------------------------------
#Check the MN Status
#rupaya-cli masternode status
status(){
	rpcli $1 "masternode status"
}
#---------------------------------------------------------
#Stop the Rupaya MN1 Daemon
#rupaya-cli stop
stop() {
	rpcli $1 stop
}
#---------------------------------------------------------
#Start the Rupaya Daemon in the Testnet
#rupayad -daemon -testnet
testnet(){
	run_as_rupxmn $1 "rupayad -daemon -testnet"
}
#---------------------------------------------------------
#Rupaya Daemon Check
#ps -ef | grep rupayad
rps(){
	echo Checking to see if the Rupaya Daemon is running
	ps -ef | grep rupayad
}
#---------------------------------------------------------
#
#MN HotCold Output
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
}
#---------------------------------------------------------
#
#MN1 - Searching MN1 debug.log for the last 5 entries
catlog1(){
	echo ----------------------------------------------
	echo Searching MN1 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn/.rupayacore/debug.log | tail -5
}
#
#MN2 - Searching MN2 debug.log for the last 5 entries
catlog2(){
	echo ----------------------------------------------
	echo Searching MN2 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn2/.rupayacore/debug.log | tail -5
}
#
#MN3 - Searching MN3 debug.log for the last 5 entries
catlog3(){
	echo ----------------------------------------------
	echo Searching MN3 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn3/.rupayacore/debug.log | tail -5
}
#
#MN4 - Searching MN4 debug.log for the last 5 entries
catlog4(){
	echo ----------------------------------------------
	echo Searching MN4 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn4/.rupayacore/debug.log | tail -5
}
#
#MN5 - Searching MN5 debug.log for the last 5 entries
catlog5(){
	echo ----------------------------------------------
	echo Searching MN5 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn5/.rupayacore/debug.log | tail -5
}
#
#MN6 - Searching MN6 debug.log for the last 5 entries
catlog6(){
	echo ----------------------------------------------
	echo Searching MN6 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn6/.rupayacore/debug.log | tail -5
}
#
#MN7 - Searching MN7 debug.log for the last 5 entries
catlog7(){
	echo ----------------------------------------------
	echo Searching MN7 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn7/.rupayacore/debug.log | tail -5
}
#
#MN8 - Searching MN8 debug.log for the last 5 entries
catlog8(){
	echo ----------------------------------------------
	echo Searching MN8 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn8/.rupayacore/debug.log | tail -5
}
#
#MN9 - Searching MN9 debug.log for the last 5 entries
catlog9(){
	echo ----------------------------------------------
	echo Searching MN9 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn9/.rupayacore/debug.log | tail -5
}
#
#MN10 - Searching MN10 debug.log for the last 5 entries
catlog10(){
	echo ----------------------------------------------
	echo Searching MN10 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn10/.rupayacore/debug.log | tail -5
}
#MN11 - Searching MN11 debug.log for the last 5 entries
catlog11(){
	echo ----------------------------------------------
	echo Searching MN11 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn11/.rupayacore/debug.log | tail -5
}
#
#MN12 - Searching MN12 debug.log for the last 5 entries
catlog12(){
	echo ----------------------------------------------
	echo Searching MN12 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn12/.rupayacore/debug.log | tail -5
}
#
#MN13 - Searching MN13 debug.log for the last 5 entries
catlog13(){
	echo ----------------------------------------------
	echo Searching MN13 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn13/.rupayacore/debug.log | tail -5
}
#
#MN14 - Searching MN14 debug.log for the last 5 entries
catlog14(){
	echo ----------------------------------------------
	echo Searching MN14 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn14/.rupayacore/debug.log | tail -5
}
#
#MN15 - Searching MN15 debug.log for the last 5 entries
catlog15(){
	echo ----------------------------------------------
	echo Searching MN15 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn15/.rupayacore/debug.log | tail -5
}
#
#MN16 - Searching MN16 debug.log for the last 5 entries
catlog16(){
	echo ----------------------------------------------
	echo Searching MN16 debug.log for the last 5 entries
	echo ----------------------------------------------
	cat /home/rupxmn16/.rupayacore/debug.log | tail -5
}
#---------------------------------------------------------
#
#Delete all of the peers.dat files and restart the Rupaya Daemons for all MNs
clearpeers(){
	#Stopping the daemons
	stop all
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
	echo ---------------------------------------------------------
	#Starting the daemons
	start all
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
#---------------------------------------------------------
#
#Replicate MN1 to MN2
replicate1-2(){
        echo Starting the MN1 to MN2 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn2/.rupayacore/rupaya.conf ~/rupaya2.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn2/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn2/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya2.conf /home/rupxmn2/.rupayacore/rupaya.conf
	chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore
	chown rupxmn2:rupxmn2 -R /home/rupxmn2/.rupayacore/*
	echo Replication of the MN1 directories to the MN2 folders is complete.
	ls -lsha /home/rupxmn2/.rupayacore/
	echo starting the MN2 Daemon
	runuser -l rupxmn2 -c 'rupayad -daemon'
}
alias rep1-2=replicate1-2
#
#Replicate MN1 to MN3
replicate1-3(){
	echo Starting the MN1 to MN3 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn3/.rupayacore/rupaya.conf ~/rupaya3.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn3/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn3/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya3.conf /home/rupxmn3/.rupayacore/rupaya.conf
	chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore
	chown rupxmn3:rupxmn3 -R /home/rupxmn3/.rupayacore/*
	echo Replication of the MN1 directories to the MN3 folders is complete.
	ls -lsha /home/rupxmn3/.rupayacore/
	echo starting the MN3 Daemon
	runuser -l rupxmn3 -c 'rupayad -daemon'
}
alias rep1-3=replicate1-3
#
#Replicate MN1 to MN4
replicate1-4(){
	echo Starting the MN1 to MN4 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn4/.rupayacore/rupaya.conf ~/rupaya4.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn4/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn4/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya4.conf /home/rupxmn4/.rupayacore/rupaya.conf
	chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore
	chown rupxmn4:rupxmn4 -R /home/rupxmn4/.rupayacore/*
	echo Replication of the MN1 directories to the MN4 folders is complete.
	ls -lsha /home/rupxmn4/.rupayacore/
	echo starting the MN4 Daemon
	runuser -l rupxmn4 -c 'rupayad -daemon'
}
alias rep1-4=replicate1-4
#
#Replicate MN1 to MN5
replicate1-5(){
	echo Starting the MN1 to MN5 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn5/.rupayacore/rupaya.conf ~/rupaya5.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn5/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn5/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya5.conf /home/rupxmn5/.rupayacore/rupaya.conf
	chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore
	chown rupxmn5:rupxmn5 -R /home/rupxmn5/.rupayacore/*
	echo Replication of the MN1 directories to the MN5 folders is complete.
	ls -lsha /home/rupxmn5/.rupayacore/
	echo starting the MN5 Daemon
	runuser -l rupxmn5 -c 'rupayad -daemon'
}
alias rep1-5=replicate1-5
#
#Replicate MN1 to MN6
replicate1-6(){
	echo Starting the MN1 to MN6 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn6/.rupayacore/rupaya.conf ~/rupaya6.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn6/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn6/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya6.conf /home/rupxmn6/.rupayacore/rupaya.conf
	chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore
	chown rupxmn6:rupxmn6 -R /home/rupxmn6/.rupayacore/*
	echo Replication of the MN1 directories to the MN6 folders is complete.
	ls -lsha /home/rupxmn6/.rupayacore/
	echo starting the MN6 Daemon
	runuser -l rupxmn6 -c 'rupayad -daemon'
}
alias rep1-6=replicate1-6
#
#Replicate MN1 to MN7
replicate1-7(){
	echo Starting the MN1 to MN7 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn7/.rupayacore/rupaya.conf ~/rupaya7.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn7/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn7/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya7.conf /home/rupxmn7/.rupayacore/rupaya.conf
	chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore
	chown rupxmn7:rupxmn7 -R /home/rupxmn7/.rupayacore/*
	echo Replication of the MN1 directories to the MN7 folders is complete.
	ls -lsha /home/rupxmn7/.rupayacore/
	echo starting the MN7 Daemon
	runuser -l rupxmn7 -c 'rupayad -daemon'
}
alias rep1-7=replicate1-7
#
#Replicate MN1 to MN8
replicate1-8(){
	echo Starting the MN1 to MN8 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn8/.rupayacore/rupaya.conf ~/rupaya8.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn8/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn8/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya8.conf /home/rupxmn8/.rupayacore/rupaya.conf
	chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore
	chown rupxmn8:rupxmn8 -R /home/rupxmn8/.rupayacore/*
	echo Replication of the MN1 directories to the MN8 folders is complete.
	ls -lsha /home/rupxmn8/.rupayacore/
	echo starting the MN8 Daemon
	runuser -l rupxmn8 -c 'rupayad -daemon'
}
alias rep1-8=replicate1-8
#
#Replicate MN1 to MN9
replicate1-9(){
	echo Starting the MN1 to MN9 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn9/.rupayacore/rupaya.conf ~/rupaya9.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn9/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn9/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya9.conf /home/rupxmn9/.rupayacore/rupaya.conf
	chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore
	chown rupxmn9:rupxmn9 -R /home/rupxmn9/.rupayacore/*
	echo Replication of the MN1 directories to the MN9 folders is complete.
	ls -lsha /home/rupxmn9/.rupayacore/
	echo starting the MN9 Daemon
	runuser -l rupxmn9 -c 'rupayad -daemon'
}
alias rep1-9=replicate1-9
#
#Replicate MN1 to MN10
replicate1-10(){
	echo Starting the MN1 to MN10 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn10/.rupayacore/rupaya.conf ~/rupaya10.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn10/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn10/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya10.conf /home/rupxmn10/.rupayacore/rupaya.conf
	chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore
	chown rupxmn10:rupxmn10 -R /home/rupxmn10/.rupayacore/*
	echo Replication of the MN1 directories to the MN10 folders is complete.
	ls -lsha /home/rupxmn10/.rupayacore/
	echo starting the MN10 Daemon
	runuser -l rupxmn10 -c 'rupayad -daemon'
}
alias rep1-10=replicate1-10
#
#Replicate MN1 to MN11
replicate1-11(){
	echo Starting the MN1 to MN11 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn11/.rupayacore/rupaya.conf ~/rupaya11.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn11/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn11/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya11.conf /home/rupxmn11/.rupayacore/rupaya.conf
	chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore
	chown rupxmn11:rupxmn11 -R /home/rupxmn11/.rupayacore/*
	echo Replication of the MN1 directories to the MN11 folders is complete.
	ls -lsha /home/rupxmn11/.rupayacore/
	echo starting the MN11 Daemon
	runuser -l rupxmn11 -c 'rupayad -daemon'
}
alias rep1-11=replicate1-11
#
#Replicate MN1 to MN12
replicate1-12(){
	echo Starting the MN1 to MN12 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn12/.rupayacore/rupaya.conf ~/rupaya12.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn12/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn12/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya12.conf /home/rupxmn12/.rupayacore/rupaya.conf
	chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore
	chown rupxmn12:rupxmn12 -R /home/rupxmn12/.rupayacore/*
	echo Replication of the MN1 directories to the MN12 folders is complete.
	ls -lsha /home/rupxmn12/.rupayacore/
	echo starting the MN12 Daemon
	runuser -l rupxmn12 -c 'rupayad -daemon'
}
alias rep1-12=replicate1-12
#
#Replicate MN1 to MN13
replicate1-13(){
	echo Starting the MN1 to MN13 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn13/.rupayacore/rupaya.conf ~/rupaya13.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn13/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn13/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya13.conf /home/rupxmn13/.rupayacore/rupaya.conf
	chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore
	chown rupxmn13:rupxmn13 -R /home/rupxmn13/.rupayacore/*
	echo Replication of the MN1 directories to the MN13 folders is complete.
	ls -lsha /home/rupxmn13/.rupayacore/
	echo starting the MN13 Daemon
	runuser -l rupxmn13 -c 'rupayad -daemon'
}
alias rep1-13=replicate1-13
#
#Replicate MN1 to MN14
replicate1-14(){
	echo Starting the MN1 to MN14 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn14/.rupayacore/rupaya.conf ~/rupaya14.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn14/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn14/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya14.conf /home/rupxmn14/.rupayacore/rupaya.conf
	chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore
	chown rupxmn14:rupxmn14 -R /home/rupxmn14/.rupayacore/*
	echo Replication of the MN1 directories to the MN14 folders is complete.
	ls -lsha /home/rupxmn14/.rupayacore/
	echo starting the MN14 Daemon
	runuser -l rupxmn14 -c 'rupayad -daemon'
}
alias rep1-14=replicate1-14
#
#Replicate MN1 to MN15
replicate1-15(){
	echo Starting the MN1 to MN15 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn15/.rupayacore/rupaya.conf ~/rupaya15.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn15/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn15/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya15.conf /home/rupxmn15/.rupayacore/rupaya.conf
	chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore
	chown rupxmn15:rupxmn15 -R /home/rupxmn15/.rupayacore/*
	echo Replication of the MN1 directories to the MN15 folders is complete.
	ls -lsha /home/rupxmn15/.rupayacore/
	echo starting the MN15 Daemon
	runuser -l rupxmn15 -c 'rupayad -daemon'
}
alias rep1-15=replicate1-15
#
#Replicate MN1 to MN16
replicate1-16(){
	echo Starting the MN1 to MN16 Replication process.
	echo Backing up the rupaya.conf file
	cp -i /home/rupxmn16/.rupayacore/rupaya.conf ~/rupaya16.conf
	echo Deleting the .rupayacore directory
	rm -rf /home/rupxmn16/.rupayacore
	echo Copying over the MN1 directories
	cp -R /home/rupxmn/.rupayacore /home/rupxmn16/.rupayacore
	wait
	echo Restoring the rupaya.conf file && sleep 10
	cp -i rupaya16.conf /home/rupxmn16/.rupayacore/rupaya.conf
	chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore
	chown rupxmn16:rupxmn16 -R /home/rupxmn16/.rupayacore/*
	echo Replication of the MN1 directories to the MN16 folders is complete.
	ls -lsha /home/rupxmn16/.rupayacore/
	echo starting the MN16 Daemon
	runuser -l rupxmn16 -c 'rupayad -daemon'
}
alias rep1-16=replicate1-16
#---------------------------------------------------------
#
#MN1-20 - Backing all of the rupaya.conf files
backupall(){
	echo Backing up all of the rupaya.conf files to /root/rupaya1.conf
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
	echo Backup of all config files complete
}
#MN1 - Backing up the rupaya.conf file
backup1(){
	echo Backing up the /home/rupxmn/.rupayacore/rupaya.conf file to /root/rupaya1.conf
	cp /home/rupxmn/.rupayacore/rupaya.conf ~/rupaya1.conf
	echo Backup complete
}
#
#MN2 - Backing up the rupaya.conf file
backup2(){
	echo Backing up the /home/rupxm2/.rupayacore/rupaya.conf file to /root/rupaya2.conf
	cp /home/rupxmn2/.rupayacore/rupaya.conf ~/rupaya2.conf
	echo Backup complete
}
#
#MN3 - Backing up the rupaya.conf file
backup3(){
	echo Backing up the /home/rupxmn3/.rupayacore/rupaya.conf file to /root/rupaya3.conf
	cp /home/rupxmn3/.rupayacore/rupaya.conf ~/rupaya3.conf
	echo Backup complete
}
#
#MN4 - Backing up the rupaya.conf file
backup4(){
	echo Backing up the /home/rupxmn4/.rupayacore/rupaya.conf file to /root/rupaya4.conf
	cp /home/rupxmn4/.rupayacore/rupaya.conf ~/rupaya4.conf
	echo Backup complete
}
#
#MN5 - Backing up the rupaya.conf file
backup5(){
	echo Backing up the /home/rupxmn5/.rupayacore/rupaya.conf file to /root/rupaya5.conf
	cp /home/rupxmn5/.rupayacore/rupaya.conf ~/rupaya5.conf
	echo Backup complete
}
#
#MN6 - Backing up the rupaya.conf file
backup6(){
	echo Backing up the /home/rupxmn6/.rupayacore/rupaya.conf file to /root/rupaya6.conf
	cp /home/rupxmn6/.rupayacore/rupaya.conf ~/rupaya6.conf
	echo Backup complete
}
#
#MN7 - Backing up the rupaya.conf file
backup7(){
	echo Backing up the /home/rupxmn7/.rupayacore/rupaya.conf file to /root/rupaya7.conf
	cp /home/rupxmn7/.rupayacore/rupaya.conf ~/rupaya7.conf
	echo Backup complete
}
#
#MN8 - Backing up the rupaya.conf file
backup8(){
	echo Backing up the /home/rupxmn8/.rupayacore/rupaya.conf file to /root/rupaya8.conf
	cp /home/rupxmn8/.rupayacore/rupaya.conf ~/rupaya8.conf
	echo Backup complete
}
#
#MN9 - Backing up the rupaya.conf file
backup9(){
	echo Backing up the /home/rupxmn9/.rupayacore/rupaya.conf file to /root/rupaya9.conf
	cp /home/rupxmn9/.rupayacore/rupaya.conf ~/rupaya9.conf
	echo Backup complete
}
#
#MN10 - Backing up the rupaya.conf file
backup10(){
	echo Backing up the /home/rupxmn10/.rupayacore/rupaya.conf file to /root/rupaya10.conf
	cp /home/rupxmn10/.rupayacore/rupaya.conf ~/rupaya10.conf
	echo Backup complete
}
#MN11 - Backing up the rupaya.conf file
backup11(){
	echo Backing up the /home/rupxmn11/.rupayacore/rupaya.conf file to /root/rupaya11.conf
	cp /home/rupxmn11/.rupayacore/rupaya.conf ~/rupaya11.conf
	echo Backup complete
}
#
#MN12 - Backing up the rupaya.conf file
backup12(){
	echo Backing up the /home/rupxm12/.rupayacore/rupaya.conf file to /root/rupaya12.conf
	cp /home/rupxmn12/.rupayacore/rupaya.conf ~/rupaya12.conf
	echo Backup complete
}
#
#MN13 - Backing up the rupaya.conf file
backup13(){
	echo Backing up the /home/rupxmn13/.rupayacore/rupaya.conf file to /root/rupaya13.conf
	cp /home/rupxmn13/.rupayacore/rupaya.conf ~/rupaya13.conf
	echo Backup complete
}
#
#MN14 - Backing up the rupaya.conf file
backup14(){
	echo Backing up the /home/rupxmn14/.rupayacore/rupaya.conf file to /root/rupaya14.conf
	cp /home/rupxmn14/.rupayacore/rupaya.conf ~/rupaya14.conf
	echo Backup complete
}
#
#MN15 - Backing up the rupaya.conf file
backup15(){
	echo Backing up the /home/rupxmn15/.rupayacore/rupaya.conf file to /root/rupaya15.conf
	cp /home/rupxmn15/.rupayacore/rupaya.conf ~/rupaya15.conf
	echo Backup complete
}
#
#MN16 - Backing up the rupaya.conf file
backup16(){
	echo Backing up the /home/rupxmn16/.rupayacore/rupaya.conf file to /root/rupaya16.conf
	cp /home/rupxmn16/.rupayacore/rupaya.conf ~/rupaya16.conf
	echo Backup complete
}
#---------------------------------------------------------
#
#MN1 - Restoring the rupaya.conf file
restore1(){
	echo Restoring the /root/rupaya1.conf file to /home/rupxmn/.rupayacore/rupaya.conf
	cp rupaya1.conf /home/rupxmn/.rupayacore/rupaya.conf
	chown rupxmn:rupxmn /home/rupxmn/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN2 - Restoring the rupaya.conf file
restore2(){
	echo Restoring the /root/rupaya2.conf file to /home/rupxmn2/.rupayacore/rupaya.conf
	cp rupaya2.conf /home/rupxmn2/.rupayacore/rupaya.conf
	chown rupxmn2:rupxmn2 /home/rupxmn2/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN3 - Restoring the rupaya.conf file
restore3(){
	echo Restoring the /root/rupaya3.conf file to /home/rupxmn3/.rupayacore/rupaya.conf
	cp rupaya3.conf /home/rupxmn3/.rupayacore/rupaya.conf
	chown rupxmn3:rupxmn3 /home/rupxmn3/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN4 - Restoring the rupaya.conf file
restore4(){
	echo Restoring the /root/rupaya4.conf file to /home/rupxmn4/.rupayacore/rupaya.conf
	cp rupaya4.conf /home/rupxmn4/.rupayacore/rupaya.conf
	chown rupxmn4:rupxmn4 /home/rupxmn4/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN5 - Restoring the rupaya.conf file
restore5(){
	echo Restoring the /root/rupaya5.conf file to /home/rupxmn5/.rupayacore/rupaya.conf
	cp rupaya5.conf /home/rupxmn5/.rupayacore/rupaya.conf
	chown rupxmn5:rupxmn5 /home/rupxmn5/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN6 - Restoring the rupaya.conf file
restore6(){
	echo Restoring the /root/rupaya6.conf file to /home/rupxmn6/.rupayacore/rupaya.conf
	cp rupaya6.conf /home/rupxmn6/.rupayacore/rupaya.conf
	chown rupxmn6:rupxmn6 /home/rupxmn6/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN7 - Restoring the rupaya.conf file
restore7(){
	echo Restoring the /root/rupaya7.conf file to /home/rupxmn7/.rupayacore/rupaya.conf
	cp rupaya7.conf /home/rupxmn7/.rupayacore/rupaya.conf
	chown rupxmn7:rupxmn7 /home/rupxmn7/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN8 - Restoring the rupaya.conf file
restore8(){
	echo Restoring the /root/rupaya8.conf file to /home/rupxmn8/.rupayacore/rupaya.conf
	cp rupaya8.conf /home/rupxmn8/.rupayacore/rupaya.conf
	chown rupxmn8:rupxmn8 /home/rupxmn8/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN9 - Restoring the rupaya.conf file
restore9(){
	echo Restoring the /root/rupaya9.conf file to /home/rupxmn9/.rupayacore/rupaya.conf
	cp rupaya9.conf /home/rupxmn9/.rupayacore/rupaya.conf
	chown rupxmn9:rupxmn9 /home/rupxmn9/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN10 - Restoring the rupaya.conf file
restore10(){
	echo Restoring the /root/rupaya10.conf file to /home/rupxmn10/.rupayacore/rupaya.conf
	cp rupaya10.conf /home/rupxmn10/.rupayacore/rupaya.conf
	chown rupxmn10:rupxmn10 /home/rupxmn10/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN11 - Restoring the rupaya.conf file
restore11(){
	echo Restoring the /root/rupaya11.conf file to /home/rupxmn11/.rupayacore/rupaya.conf
	cp rupaya11.conf /home/rupxmn11/.rupayacore/rupaya.conf
	chown rupxmn11:rupxmn11 /home/rupxmn11/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN12 - Restoring the rupaya.conf file
restore12(){
	echo Restoring the /root/rupaya12.conf file to /home/rupxmn12/.rupayacore/rupaya.conf
	cp rupaya12.conf /home/rupxmn12/.rupayacore/rupaya.conf
	chown rupxmn12:rupxmn12 /home/rupxmn12/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN13 - Restoring the rupaya.conf file
restore13(){
	echo Restoring the /root/rupaya13.conf file to /home/rupxmn13/.rupayacore/rupaya.conf
	cp rupaya13.conf /home/rupxmn13/.rupayacore/rupaya.conf
	chown rupxmn13:rupxmn13 /home/rupxmn13/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN14 - Restoring the rupaya.conf file
restore14(){
	echo Restoring the /root/rupaya14.conf file to /home/rupxmn14/.rupayacore/rupaya.conf
	cp rupaya14.conf /home/rupxmn14/.rupayacore/rupaya.conf
	chown rupxmn14:rupxmn14 /home/rupxmn14/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN15 - Restoring the rupaya.conf file
restore15(){
	echo Restoring the /root/rupaya15.conf file to /home/rupxmn15/.rupayacore/rupaya.conf
	cp rupaya15.conf /home/rupxmn15/.rupayacore/rupaya.conf
	chown rupxmn15:rupxmn15 /home/rupxmn15/.rupayacore/rupaya.conf
	echo Restore complete
}
#MN16 - Restoring the rupaya.conf file
restore16(){
	echo Restoring the /root/rupaya16.conf file to /home/rupxmn16/.rupayacore/rupaya.conf
	cp rupaya16.conf /home/rupxmn16/.rupayacore/rupaya.conf
	chown rupxmn16:rupxmn16 /home/rupxmn16/.rupayacore/rupaya.conf
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
	nano /home/rupxmn/.rupayacore/rupaya.conf
}
rm1conf(){
	rm /home/rupxmn/.rupayacore/rupaya.conf
}
rm1core(){
	rm -r /home/rupxmn/.rupayacore/
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
	nano /home/rupxmn2/.rupayacore/rupaya.conf
}
rm2conf(){
	rm /home/rupxmn2/.rupayacore/rupaya.conf
}
rm2core(){
	rm -r /home/rupxmn2/.rupayacore/
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
	nano /home/rupxmn3/.rupayacore/rupaya.conf
}
rm3conf(){
	rm /home/rupxmn3/.rupayacore/rupaya.conf
}
rm3core(){
	rm -r /home/rupxmn3/.rupayacore/
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
	nano /home/rupxmn4/.rupayacore/rupaya.conf
}
rm4conf(){
	rm /home/rupxmn4/.rupayacore/rupaya.conf
}
rm4core(){
	rm -r /home/rupxmn4/.rupayacore/
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
	nano /home/rupxmn5/.rupayacore/rupaya.conf
}
rm5conf(){
	rm /home/rupxmn5/.rupayacore/rupaya.conf
}
rm5core(){
	rm -r /home/rupxmn5/.rupayacore/
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
	nano /home/rupxmn6/.rupayacore/rupaya.conf
}
rm6conf(){
	rm /home/rupxmn6/.rupayacore/rupaya.conf
}
rm6core(){
	rm -r /home/rupxmn6/.rupayacore/
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
	nano /home/rupxmn7/.rupayacore/rupaya.conf
}
rm7conf(){
	rm /home/rupxmn7/.rupayacore/rupaya.conf
}
rm7core(){
	rm -r /home/rupxmn7/.rupayacore/
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
	nano /home/rupxmn8/.rupayacore/rupaya.conf
}
rm8conf(){
	rm /home/rupxmn8/.rupayacore/rupaya.conf
}
rm8core(){
	rm -r /home/rupxmn8/.rupayacore/
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
	nano /home/rupxmn9/.rupayacore/rupaya.conf
}
rm9conf(){
	rm /home/rupxmn9/.rupayacore/rupaya.conf
}
rm9core(){
	rm -r /home/rupxmn9/.rupayacore/
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
	nano /home/rupxmn10/.rupayacore/rupaya.conf
}
rm10conf(){
	rm /home/rupxmn10/.rupayacore/rupaya.conf
}
rm10core(){
	rm -r /home/rupxmn10/.rupayacore/
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
	nano /home/rupxmn11/.rupayacore/rupaya.conf
}
rm11conf(){
	rm /home/rupxmn11/.rupayacore/rupaya.conf
}
rm11core(){
	rm -r /home/rupxmn11/.rupayacore/
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
	nano /home/rupxmn12/.rupayacore/rupaya.conf
}
rm12conf(){
	rm /home/rupxmn12/.rupayacore/rupaya.conf
}
rm12core(){
	rm -r /home/rupxmn12/.rupayacore/
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
	nano /home/rupxmn13/.rupayacore/rupaya.conf
}
rm13conf(){
	rm /home/rupxmn13/.rupayacore/rupaya.conf
}
rm13core(){
	rm -r /home/rupxmn13/.rupayacore/
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
	nano /home/rupxmn14/.rupayacore/rupaya.conf
}
rm14conf(){
	rm /home/rupxmn14/.rupayacore/rupaya.conf
}
rm14core(){
	rm -r /home/rupxmn14/.rupayacore/
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
	nano /home/rupxmn15/.rupayacore/rupaya.conf
}
rm15conf(){
	rm /home/rupxmn15/.rupayacore/rupaya.conf
}
rm15core(){
	rm -r /home/rupxmn15/.rupayacore/
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
	nano /home/rupxmn16/.rupayacore/rupaya.conf
}
rm16conf(){
	rm /home/rupxmn16/.rupayacore/rupaya.conf
}
rm16core(){
	rm -r /home/rupxmn16/.rupayacore/
}
#---------------------------------------------------------
#
#Add 5 users, copy the SSH keys from root, and grant admin priveleges
add5users(){
        echo Adding 5 users named rupxmn-rupxmn5, copying the SSH keys from root, and granting admin priveleges
                useradd -m -s /bin/bash rupxmn && usermod -aG sudo rupxmn && mkdir /home/rupxmn/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn/.ssh && chown -R rupxmn:rupxmn /home/rupxmn$i/.ssh && passwd rupxmn$i
        for i in {2..5}; do
                useradd -m -s /bin/bash rupxmn$i && usermod -aG sudo rupxmn$i && mkdir /home/rupxmn$i/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn$i/.ssh && chown -R rupxmn$i:rupxmn$i /home/rupxmn$i/.ssh && passwd rupxmn$i
        done
}
#Add 8 users, copy the SSH keys from root, and grant admin priveleges
add8users(){
        echo Adding 8 users named rupxmn-rupxmn8, copying the SSH keys from root, and granting admin priveleges
                useradd -m -s /bin/bash rupxmn && usermod -aG sudo rupxmn && mkdir /home/rupxmn/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn/.ssh && chown -R rupxmn:rupxmn /home/rupxmn$i/.ssh && passwd rupxmn$i
        for i in {2..8}; do
                useradd -m -s /bin/bash rupxmn$i && usermod -aG sudo rupxmn$i && mkdir /home/rupxmn$i/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn$i/.ssh && chown -R rupxmn$i:rupxmn$i /home/rupxmn$i/.ssh && passwd rupxmn$i
        done
}
#Add 16 users, copy the SSH keys from root, and grant admin priveleges
add16users(){
        echo Adding 16 users named rupxmn-rupxmn16, copying the SSH keys from root, and granting admin priveleges
                useradd -m -s /bin/bash rupxmn && usermod -aG sudo rupxmn && mkdir /home/rupxmn/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn/.ssh && chown -R rupxmn:rupxmn /home/rupxmn$i/.ssh && passwd rupxmn$i
        for i in {2..16}; do
                useradd -m -s /bin/bash rupxmn$i && usermod -aG sudo rupxmn$i && mkdir /home/rupxmn$i/.ssh && cp /root/.ssh/authorized_keys /home/rupxmn$i/.ssh && chown -R rupxmn$i:rupxmn$i /home/rupxmn$i/.ssh && passwd rupxmn$i
        done
}
#
#---------------------------------------------------------
#
#Rupaya Scripted Commands Cheat Sheet
list(){
	echo ${bold}Rupaya Scripted Commands Cheat Sheet${normal}
	echo ""
	echo ${bold}Wallet Commands to start/stop the wallet and verify the wallet/MN are running${normal}
	echo ""
	echo ${bold}bc all${normal} - Check the Block Count on all MNs
	echo ${bold}bc 1${normal} - Check the Block Count of MN1
	echo ${bold}count all${normal} - Check the MN Count on all MNs
	echo ${bold}count 1${normal} - Check the MN Count of MN1
	echo ${bold}info all${normal} - Check the wallet version, block count, and active connections  on all MNs
	echo ${bold}info 1${normal} - Check the wallet version, block count, and active connections of MN1
	echo ${bold}status all${normal} - Check the MN Status on all MNs
	echo ${bold}status 1${normal} - Check the MN Status of MN1	
	echo ${bold}rps${normal} - Verify if the Rupaya Daemon is running
	echo ${bold}start all${normal} - Start all Rupaya MN Daemons
	echo ${bold}start 1${normal} -  Start the MN1 Rupaya Daemon
	echo ${bold}stop all${normal} - Stop all Rupaya MN Daemons
	echo ${bold}stop 1${normal} -  Stop the MN1 Rupaya Daemon
	echo ${bold}testnet all${normal} -  Start all Rupaya Daemons in the Testnet
	echo ${bold}testnet 1${normal} -  Start the MN1 Rupaya Daemon in the Testnet
	echo ""
	echo ${bold}Commands to view/edit/remove/resync the folders, rupaya.conf files, and debug.log files${normal}
	echo ""
	echo ${bold}backupall${normal} - Backup the rupaya.conf file for all MNs
	echo ${bold}backup1${normal} - Backup the rupaya.conf file
	echo ${bold}cat1${normal} - Display the contents of the MN1 configuration file /home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}catlog1${normal} - Search MN1 debug.log for the last 5 entries
	echo ${bold}clearpeers${normal} - Deletes the peers.dat files and restarts the daemons.
	echo "             "Run this every 2 months to clear out the peers.dat file
	echo ${bold}edit1${normal} - EDIT the contents of the MN1 configuration file ${bold}/home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}log1${normal} - Search MN1 debug.log for the TXHASH
	echo ${bold}logall${normal} - Search all MNs debug.log for the TXHASH
	echo ${bold}ls1${normal} - Display the contents of the MN1 directory ${bold}/home/rupxmn/${normal}
	echo ${bold}ls1core${normal} - Display the contents of MN1 directory ${bold}/home/rupxmn/.rupayacore${normal}
	echo ${bold}recreate1${normal} - Back up the rupaya.conf file and delete the .rupayacore directory
	echo ${bold}replicate1-2${normal} - Replicate the MN1 directories to the MN2 directories
	echo ${bold}restore1${normal} - Restore the rupaya.conf file
	echo ${bold}resync1${normal} - Resync the MN1 rupxmn wallet
	echo ${bold}rm1conf${normal} - Delete the MN1 configuration file ${bold}/home/rupxmn/.rupayacore/rupaya.conf${normal}
	echo ${bold}rm1core${normal} - Delete the entire MN1 directory ${bold}/home/rupxmn/.rupayacore${normal}
	echo ""
	echo ${bold}Commands to assist in the VPS setup process${normal}
	echo ""
	echo ${bold}add5users${normal} - Create 5 new users named ${bold}rupxmn-rupxmn5${normal}
	echo ${bold}add8users${normal} - Create 8 new users named ${bold}rupxmn-rupxmn8${normal}
	echo ${bold}add16users${normal} - Create 16 new users named ${bold}rupxmn-rupxmn16${normal}
	echo ""
}
#End of file
