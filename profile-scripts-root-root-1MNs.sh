#!/bin/bash
#
# Login as the user root before running this script.
# This script will download the files named vars.bash and profile-scripts-root-root-1MN.profile 
# and will then overwrite the existing profile in /root/.profile
#
# The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet.
# The logall and log1 commands will not work unless the vars.bash file is filled in with the correct TXHash for each MN.
#
bold=$(tput bold)
normal=$(tput sgr0)
{
echo "Downloading the vars.bash file"
echo "You will need to edit this file manually to add in your MN TXHashes."
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/vars.bash
wait
sudo mv vars.bash /root/vars.bash
echo "Downloading the file named profile-scripts-root-root-1MN.profile and overwriting the /root/.profile"
wget https://raw.githubusercontent.com/BlockchainBrain/Rupaya_scripts/master/profile-scripts-root-root-1MN.profile
wait
sudo rm /root/.profile
sudo mv profile-scripts-root-root-1MN.profile /root/.profile
echo ""
echo "The profile script download is complete"
echo "Run the following command to edit the varsh.bash file so you can add in your TXHashes:"
echo "NOTE: The TXHash for each MN can be found in the masternode.conf file on the PC running the Cold Wallet,"
echo "and the logall and log1 commands will not work unless the vars.bash file is filled in with the correct TXHash for each MN."
echo "${bold}nano /root/vars.bash${normal}"
echo ""
echo "You must run the following command to enable the profile scripts:"
echo "${bold}source /root/.profile${normal}"
echo ""
echo "To view a list of the commands that you can now run, enter the command:"
echo "${bold}list${normal}"
echo ""
}
