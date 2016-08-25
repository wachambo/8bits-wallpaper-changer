8bits wallpaper changer
=======================

This wallpaper changes automatically depending on the time of the day.
Edit the `update-wallpaper.py` timing variable on your preference.

This program was inspired by this [Redit post](http://www.reddit.com/r/wallpapers/comments/1tqe9k/update_new_version_of_the_8bit_day_wallpaper_set/)

But rewritten in **Python** and using **Systemd/timers** instead of cron. If you need a good reason,
take a look at this discussion:
[Systemd a cron replacement](https://wiki.archlinux.org/index.php/Systemd/Timers#As_a_cron_replacement)

### How to install
You may have to install `feh` before install.
```
# pacman -S feh
$ ./install.sh
```

