#!/usr/bin/env bash
#clear

trap "echo oh;exit" SIGTERM SIGINT
echo $google_main > /root/g00g
# echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf
#echo "nameserver 8.8.8.8" >  /etc/resolv.conf
#echo "nameserver 8.8.4.4" >>  /etc/resolv.conf
echo $US_PS
cd /root/SDA_ALL/
git reset --hard
git pull
#cd /root/SDA_ALL/main_oct0pus/


chmod +x *
#ngrok authtoken $NGROK_TOKENS
#ngrok http 9001 > /dev/null &
#export WEBHOOK_URL="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")" && echo $WEBHOOK_URL
while true
do
	echo "NEW ..............."
	dbus-uuidgen > /var/lib/dbus/machine-id
	cd /root/SDA_ALL/n_main_oct0pus/
	timeout 60m python3 google_let.py
done
