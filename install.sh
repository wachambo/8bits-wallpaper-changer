#!/bin/sh

trap 'printf "Error\n"; exit' ERR


printf "[0/2] Copying files..."
mkdir -p ${HOME}/sbin/8bits-wallpaper-changer
cp *.png *.py ${HOME}/sbin/8bits-wallpaper-changer
cp wallpaper.service wallpaper.timer ${HOME}/.config/systemd/user
printf "ok\n"

printf "[1/2] Enabling Daemons..."
systemctl --user enable wallpaper.timer &> /dev/null
systemctl --user enable wallpaper.service &> /dev/null
systemctl --user daemon-reload &> /dev/null
printf "ok\n"

printf "[2/2] Starging Daemons..."
systemctl --user start wallpaper.timer &> /dev/null
systemctl --user start wallpaper.service &> /dev/null
printf "ok\n"

printf "\nDone!\n"
