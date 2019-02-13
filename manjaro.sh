pacman -Syyu
pamac remove xfburn thunderbird gcolor2 timeshift manjaro-hello clonezilla mintstick xterm manjaro-documentation-en
cd Images && mkdir Wallpapers && cd Wallpapers && wget https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-744357.jpg && cd
nitrogen --set-auto Images/Wallpapers/wallhaven-744357.jpg
openbox --reconfigure
openbox --restart
