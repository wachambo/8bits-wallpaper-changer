#!/bin/sh

trap 'printf "Error\n"; exit' ERR


printf "[0/2] Disabling Daemons..."
systemctl --user disable wallpaper.timer &> /dev/null
systemctl --user disable wallpaper.service &> /dev/null
printf "ok\n"

printf "[1/2] Stopping Daemons..."
systemctl --user stop wallpaper.timer &> /dev/null
systemctl --user stop wallpaper.service &> /dev/null
printf "ok\n"

printf "[2/2] Removing files..."
rm -rf ${HOME}/sbin/8bits-wallpaper-changer
rm ${HOME}/.config/systemd/user/wallpaper.*
printf "ok\n"

printf "\nDone!\n"
