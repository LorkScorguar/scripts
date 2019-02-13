rm -rf Modèles
rm -rf Publics
mkdir Dev
cd Images && mkdir Wallpapers && cd Wallpapers && wget https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-744357.jpg && cd
nitrogen --set-auto Images/Wallpapers/wallhaven-744357.jpg
pacman -Syyu
pamac remove xfburn thunderbird gcolor2 timeshift manjaro-hello clonezilla mintstick xterm manjaro-documentation-en
#pamac install atom golang jq android-tools-adb android-tools-fastboot
openbox --reconfigure
openbox --restart
sensors-detect
