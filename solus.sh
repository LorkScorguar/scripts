rm -rf Modèles Public
mkdir Dev
#remove uneeded programs
sudo eopkg remove -y thunderbird gnome-calculator bluez nvidia-304-glx-driver-modaliases nvidia-340-glx-driver-modaliases nvidia-glx-driver-modaliases orca xorg-driver-input-wacom -y
#install needed tools
sudo eopkg install -y atom terminator libreoffice-writer libreoffice-calc git moc unrar mtpfs lm_sensors nmap golang -y
#upgrade
sudo eopkg upgrade -y
#chrome dev
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-unstable/pspec.xml
sudo eopkg it google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg
#android tools
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/tools/android-tools/pspec.xml
sudo eopkg it android-tools*.eopkg;sudo rm android-tools*.eopkg
echo "export PATH=$PATH:/sbin" > ~/.bashrc
