#!/bin/bash
rm -rf Modèles
rm -rf Publics
rm -rf examples.desktop
mkdir Dev

sudo apt-get update
sudo apt-get remove --purge onboard gnomine aisleriot bluez gnome-orca gnome-accessibility-themes gnome-sudoku thunderbird ppp pptp-linux network-manager-pptp network-manager-pptp-gnome bluez-alsa brltty telepathy-idle telepathy-logger telepathy-mission-control-5 telepathy-indicator telepathy-salut telepathy-gabble evolution-data-server
sudo apt-get autoremove
sudo apt-get install vlc terminator chromium-browser virtualbox python3.2 espeak mbrola mbrola-fr1 mbrola-fr4 ffmpeg ffmpeg2theora gstreamer0.10-plugins-base gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly gstreamer0.10-plugins-good gstreamer0.10-ffmpeg build-essential gimp flashplugin-installer pocketsphinx-hmm-wsj1 pocketsphinx-lm-wsj python-pocketsphinx unrar moc gmtp moc-ffmpeg-plugin gstreamer0.10-fluendo-mp3 lm-sensors nmap git python-apt python-distutils-extra python-setuptools python-apt-dev python-dev libssl-dev libffi-dev libperl-dev jq
sudo apt-get dist-upgrade
echo "Installing Atom"
wget https://atom.io/download/deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb
echo "Installing Ansible"
sudo apt-get remove python-pip --purge -y
easy_install pip
pip install -U pyopenssl ndg-httpsclient pyasnl
pip install -U pip ansible
mkdir -p /etc/ansible
