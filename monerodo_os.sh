#!/bin/bash
#MONERODO operating script to load upon login

#make username variable global
export u="$USER"
export current_ip="$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')"


######### Checks if this is first time running, forces change of password and setting up pool wallet

first_time="$(awk '{print;}' /monerodo/first_time.txt)"
if [ "$first_time" = 'yes' ]; then
	echo "This must be your first time using the Monerodo. You will be asked to setup some files."
	echo "Please enter the sudo password if requested"
	./setup_pool_wallet.sh
	./change_password.sh
	echo "no" > /monerodo/first_time.txt
fi

#Bring scripts up to date.
echo "Performing git pull from repository"
cd /home/$u/monerodo/
#REMOVE COMMENT BELOW WHEN RELEASE SOFTWARE!!!
#git pull
chmod +x *.sh

#Menu
while true
do
	echo "================="
	echo "Monerodo Menu"
	echo "================="
	echo "[1] Monerodo device management"
	echo "[2] Manage or create your account with Monero Core"
	echo "[3] Manage or create your account with Monerodo Guided Wallet"
	echo "[4] Make QR codes"
	echo "[5] Restore your account from mneumonic seed"
	echo "[6] Generate view only wallet from viewkey"
	echo "[q] Quit to the terminal"
	echo -e "\n"
	echo -e "Enter your selection \c"
	read answer
	case "$answer" in
		1) ./device_management.sh;;
		2) ./monero_simplewallet.sh;;
		3) ./monerodo_wallet.sh;;
		4) ./qr_codes.sh;;
		5) ./restore.sh;;
		6) ./viewkey.sh;;
		q) exit ;;
	esac
	echo -e "Press enter to continue \c"
	read input
	clear
done