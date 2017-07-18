#!/bin/bash
rm -rf Modèles
rm -rf Publics
rm -rf examples.desktop
mkdir Dev

echo "=======Update apt cache======="
sudo apt-get update
echo "=======Remove packages======="
sudo apt-get remove --purge onboard gnomine aisleriot gnome-orca gnome-accessibility-themes gnome-sudoku thunderbird brltty telepathy-mission-control-5 evolution-data-server
sudo apt-get autoremove
echo "=======Install softwares======="
sudo apt-get install gconf2 gconf-service vlc terminator chromium-browser virtualbox espeak mbrola mbrola-fr1 mbrola-fr4 ffmpeg ffmpeg2theora gstreamer0.10-plugins-base gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly gstreamer0.10-plugins-good gstreamer0.10-ffmpeg build-essential gimp flashplugin-installer pocketsphinx-hmm-wsj1 pocketsphinx-lm-wsj python-pocketsphinx unrar moc gmtp moc-ffmpeg-plugin gstreamer0.10-fluendo-mp3 lm-sensors nmap git python-apt python-distutils-extra python-setuptools python-apt-dev python-dev libssl-dev libffi-dev libperl-dev jq android-tools-adb android-tools-fastboot golang golang-go
echo "=======Upgrade system======="
sudo apt-get dist-upgrade
echo "=======Installing Atom======="
wget https://atom.io/download/deb
sudo dpkg -i deb
rm deb
echo "=======Installing Ansible======="
sudo apt-get remove python-pip --purge -y
easy_install pip
pip install -U pyopenssl ndg-httpsclient pyasnl
pip install -U pip ansible
sudo mkdir -p /etc/ansible
