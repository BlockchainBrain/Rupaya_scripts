#!/bin/bash
#
# Login as the user rupxmn before running this script.
# This script will download the files named vars.bash and profile-scripts-rupxmn-20MNs.profile 
# and will then overwrite the existing profile in /home/rupxmn/.profile
#
# The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet.
# The logall and log1 commands will not work unless the vars.bash file is filled in with the correct TXHash for each MN.
#
{
echo "Downloading the vars.bash file"
echo "You will need to edit this file manually to add in your MN TXHashes."
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/vars.bash >/dev/null
wait
sudo mv vars.bash /home/rupxmn/vars.bash >/dev/null
echo "Downloading the file named profile-scripts-rupxmn-20MNs.profile and overwriting the /home/rupxmn/.profile"
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/profile-scripts-rupxmn-20MNs.profile >/dev/null
wait
sudo rm /home/rupxmn/.profile >/dev/null
sudo mv profile-scripts-rupxmn-20MNs.profile /home/rupxmn/.profile
echo "Running the command: source /home/rupxmn/.profile"
echo "You will need to run this command again after you update the vars.bash file with your TXHashes"
wait
source ~/.profile
echo "The profile script download is complete"
echo "Run the following command to edit the varsh.bash file so you can add in your TXHashes:"
echo "The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet."
echo "nano /home/rupxmn/vars.bash"
echo ""
echo "To get a list of commands that you can now run, enter the command: list"
echo ""
}
