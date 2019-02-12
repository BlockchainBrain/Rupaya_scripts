#!/bin/bash
#
# This script will download the files named vars.bash and profile-scripts-rupxmn-20MNs.profile 
# and will then overwrite the existing profile in /home/rupxmn/.profile
#
# The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet.
# The logall and log1 commands will not work unless the vars.bash file is filled in with the correct TXHash for each MN.
#
echo Downloading the vars.bash file
echo You will need to edit this file manually to add in your MN TXHashes.
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/vars.bash
wait
sudo mv vars.bash /home/rupxmn/vars.bash
echo Downloading the file named profile-scripts-rupxmn-20MNs.profile and overwriting the /home/rupxmn/.profile
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/profile-scripts-rupxmn-20MNs.profile
wait
sudo rm /home/rupxmn/.profile
sudo cp profile-scripts-rupxmn-20MNs.profile /home/rupxmn/.profile
echo Running the command: source /home/rupxmn/.profile
echo You will need to run this command again after you update the vars.bash file with your TXHashes
source /home/rupxmn/.profile
echo the profile script download is complete
echo Run the following command to edit the varsh.bash file so you can add in your TXHashes:
echo The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet.
echo nano /home/rupxmn/vars.bash
