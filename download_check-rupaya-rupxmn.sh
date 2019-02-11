#Download and run a bash script that will check for the Rupaya daemon and restart it if it is not running.
echo Downloading the bash script
wget https://github.com/BlockchainBrain/Rupaya_scripts/blob/master/check-rupaya-rupxmn.sh
wait
echo Updating the file to grant execution permissions
chmod +x check-rupaya-root.sh
echo Running the bash script
bash check-rupaya-root.sh
