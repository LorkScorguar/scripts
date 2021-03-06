rm -rf Modèles Public
mkdir Dev
#upgrade
sudo eopkg upgrade -y
#remove uneeded programs
sudo eopkg remove -y onboard evolution-data-server hexchat rhythmbox thunderbird gnome-calculator bluez nvidia-304-glx-driver-modaliases nvidia-340-glx-driver-modaliases nvidia-glx-driver-modaliases orca xorg-driver-input-wacom -y
#install needed tools
sudo eopkg install -y atom terminator libreoffice-writer libreoffice-calc git moc unrar mtpfs lm_sensors nmap golang -y
#modification for wireless to work
echo "install wl /sbin/modprobe cfg80211; /sbin/insmod /lib/modules/\$(/bin/uname -r)/kernel/drivers/net/wireless/wl.ko" | sudo tee /etc/modprobe.d/hackboot.conf
echo "wl" | sudo tee /etc/modules-load.d/wl.conf
#chrome dev
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-unstable/pspec.xml
sudo eopkg it google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg
#android tools
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/tools/android-tools/pspec.xml
sudo eopkg it android-tools*.eopkg;sudo rm android-tools*.eopkg
echo "export PATH=$PATH:/sbin" > ~/.bashrc
