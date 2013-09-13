#!/bin/bash


# Check if we launch the script with root privileges (aka sudo)
if [ "$UID" != "0" ]
then
        echo "You should start the script with sudo!"
        exit 1
fi

VERSION=$1
sudo cp -R /usr/local/shinken/libexec/* ~/backups/libexec/
sudo cp -R /usr/local/shinken/etc/* ~/backups/etc/
sudo cp -R /usr/local/shinken/var/* ~/backups/var/
cd sources/
wget http://shinken-monitoring.org/pub/shinken-$VERSION.tar.gz
tar xzf shinken-$VERSION.tar.gz
cd shinken-$VERSION/
sudo /etc/init.d/shinken stop
sudo ./install -d
sudo ./install -i
sudo cp -R ~/backups/var/* /usr/local/shinken/var/
sudo cp -R ~/backups/etc/* /usr/local/shinken/etc/
sudo cp -R ~/backups/libexec/* /usr/local/shinken/libexec/
sudo rm /usr/local/shinken/var/*.pid
sudo /etc/init.d/shinken start

