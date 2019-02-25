#Home customizations
rm -rf Modèles
rm -rf Publics
mkdir Dev
cd Images && mkdir Wallpapers && cd Wallpapers && wget https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-744357.jpg && cd
nitrogen --set-auto Images/Wallpapers/wallhaven-744357.jpg
echo "alias ll='ls -l --color=auto'" > ~/.zshrc

#Software installing/removing
pacman -Syyu
pamac remove xfburn thunderbird gcolor2 timeshift manjaro-hello clonezilla mintstick xterm manjaro-documentation-en synapse catfish
pamac install atom go jq android-tools manjaro-printer protobuf libmicrodns vlc transmission-cli transmission-gtk bash-completion

#System changes
openbox --reconfigure
openbox --restart
sensors-detect
sudo systemctl enable org.cups.cupsd.service
sudo systemctl start org.cups.cupsd.service
