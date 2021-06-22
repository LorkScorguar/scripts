sudo apt-get remove io.elementary.calendar
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install adb fastboot chromium-browser build-essential unrar gimp git 
rm .config/plank/dock1/launchers/io.elementary.calendar.dockitem
rm .config/plank/dock1/launchers/io.elementary.mail.dockitem
rm .config/plank/dock1/launchers/io.elementary.photos.dockitem
rm .config/plank/dock1/launchers/io.elementary.videos.dockitem
sudo apt-get autoremove
