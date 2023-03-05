cd /dockerstartup/

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
wget -q https://github.com/thingst0d0/g00rm/raw/main/ocs-url_3.1.0-0ubuntu1_amd64.deb
#########################################################################################


echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session


echo "$US_PS"
username="pythony"
password="pythony"




#####
useradd -m $username
adduser $username sudo
echo $username':'$password | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
mkdir -p /home/pythony/.config
chown pythony:pythony /home/pythony/.config
apt install --assume-yes xfce4 desktop-base xfce4-terminal nano google-chrome-stable
apt remove --assume-yes gnome-terminal
apt --assume-yes autoremove
apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb
apt install --assume-yes ./google-chrome-stable_current_amd64.deb
#ocs-url_3.1.0-0ubuntu1_amd64.deb
#apt install --assume-yes ./
adduser pythony chrome-remote-desktop
#DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AWgavderlsPEPkuGg1tVHX7LWh9qB_d9gaOKvHil56EE-4QJ1_SoJBToV5Khe01x2eQECQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=001122
wget -O ~/wall.jpg https://w.wallhaven.cc/full/9m/wallhaven-9m7l2k.jpg
xfconf-query --create xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s ~/wall.jpg

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s ~/wall.jpg
export $(dbus-launch)
