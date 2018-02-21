#!/bin/bash
rm -rf Modèles
rm -rf Publics
rm -rf examples.desktop
mkdir Dev

echo "=======Update apt cache======="
sudo apt-get update
echo "=======Remove packages======="
sudo apt-get remove --purge -y onboard gnome-mines gnome-mahjongg xdiagnose unity-accessibility-profiles unity-scope-yelp checkbox-converged webbrowser-app xserver-xorg-input-wacom aisleriot gnome-orca gnome-accessibility-themes gnome-sudoku thunderbird rhythmbox deja-dup yelp brltty telepathy-mission-control-5 evolution-data-server
sudo apt-get autoremove
echo "=======Install softwares======="
sudo apt-get install -y vlc terminator chromium-browser virtualbox espeak mbrola mbrola-fr1 mbrola-fr4 ffmpeg gstreamer1.0-plugins-base gstreamer1.0-plugins-bad gstreamer1.00-plugins-ugly gstreamer1.0-plugins-good gstreamer1.0-ffmpeg build-essential gimp pocketsphinx-hmm-wsj1 pocketsphinx-lm-wsj python-pocketsphinx unrar moc gmtp moc-ffmpeg-plugin gstreamer1.0-fluendo-mp3 lm-sensors nmap git python-apt python-distutils-extra python-setuptools python-apt-dev python-dev libssl-dev libffi-dev libperl-dev jq android-tools-adb android-tools-fastboot golang golang-go
echo "=======Upgrade system======="
sudo apt-get dist-upgrade -y
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
sudo apt-get install -f

echo "=======Optimize battery usage======="
sudo mkdir -p /etc/pm/config.d/
echo -e "SATA_ALPM_ENABLE=true\nSATA_LINKPWR_ON_AC=max_performance\nSATA_LINKPWR_ON_BAT=min_power" | sudo tee /etc/pm/config.d/sata_alpm
