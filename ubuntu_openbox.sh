#!/bin/bash
rm -rf Modèles
rm -rf Publics
rm -rf examples.desktop
mkdir Scripts
cd Scripts
wget http://obkey.googlecode.com/files/obkey-1.0.tar.gz
tar xzf obkey-1.0.tar.gz
cd obkey-1.0
chmod +x obkey
cd ..
rm obkey-1.0.tar.gz

sudo apt-get update
sudo apt-get remove --purge onboard gnomine aisleriot bluez gnome-orca gnome-accessibility-themes gnome-sudoku thunderbird
sudo apt-get install obmenu openbox openbox-theme lxappearance nitrogen tint2 xcompmgr gtk2-engines-nodoka vlc terminator guake chromium-browser virtualbox python3.2 espeak mbrola mbrola-fr1 mbrola-fr4 ffmpeg ffmpeg2theora gstreamer0.10-plugins-base gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly gstreamer0.10-plugins-good gstreamer0.10-ffmpeg build-essential gimp lo-menubar conky-all compizconfig-settings-manager flashplugin-installer pocketsphinx-hmm-wsj1 pocketsphinx-lm-wsj python-pocketsphinx unrar moc gmtp moc-ffmpeg-plugin gstreamer0.10-fluendo-mp3 lm-sensors cowsay nmap 
sudo apt-get dist-upgrade
mv ../conkyrc ~/.conkyrc
mv autostart ~/.config/openbox/autostart
mv rc.xml ~/.config/openbox/rc.xml
mv menu.xml ~/.config/openbox/menu.xml

