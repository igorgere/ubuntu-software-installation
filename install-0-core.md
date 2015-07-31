Installation of software on Ubuntu
==================================

exFAT support
-------------

```bash
sudo apt-add-repository ppa:relan/exfat && sudo apt-get update && sudo apt-get install exfat-fuse exfat-utils
```

nVidia 200
----------

```bash
sudo apt-add-repository ppa:xorg-edgers/ppa
sudo apt-add-repository ppa:ubuntu-x-swat/x-updates
sudo apt-get update
sudo apt-get install nvidia-current nvidia-settings
```

Choppy flash video
------------------

On youtube enable HTML5 video.

Hibernation & stand by
----------------------

```bash
sudo apt-get install uswsusp
sudo s2ram
sudo s2disk
```

In file:
/etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
Add this

```
[Re-enable hibernate by default in upower]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes

[Re-enable hibernate by default in logind]
Identity=unix-user:*
Action=org.freedesktop.login1.hibernate;org.freedesktop.login1.hibernate-multiple-sessions
ResultActive=yes
```


Glipper
-------

```bash
sudo apt-get install glipper
```

ClassicMenu Indicator
---------------------

```bash
sudo apt-add-repository ppa:diesch/testing && sudo apt-get update && sudo apt-get install classicmenu-indicator
```

Sticky Notes Indicator
----------------------

```bash
sudo add-apt-repository ppa:umang/indicator-stickynotes &&
sudo apt-get update && sudo apt-get install indicator-stickynotes
```

FluxGui Indicator
-----------------

```bash
sudo add-apt-repository ppa:kilian/f.lux && sudo apt-get update && sudo apt-get install fluxgui
```

System Monitor Indicator
------------------------
Textual with %.

```bash
sudo add-apt-repository ppa:noobslab/indicators && sudo apt-get update && sudo apt-get install indicator-sysmonitor
```

Multi-Load Indicator
--------------------
Graphical.

```bash
sudo add-apt-repository ppa:indicator-multiload/stable-daily && sudo apt-get update && sudo apt-get install indicator-multiload
```

Codecs
------

```bash
sudo apt-get install ubuntu-restricted-extras

sudo apt-get install libavcodec-extra

sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get install gstreamer0.10-ffmpeg
```

Open terminal in Nautilus
-------------------------

```bash
sudo apt-get install nautilus-open-terminal
nautilus -q
```

Oh my zsh
---------
http://ohmyz.sh/

```bash
apt-get install zsh
apt-get install git-core

sudo curl -L http://install.ohmyz.sh | sh
chsh -s `which zsh`

sudo shutdown -r 0
```

Yosemite Theme
--------------

Make Ubuntu Look Like Mac OS X 10.10 Yosemite - Ubuntu 14.10/14.04
https://www.youtube.com/watch?v=DSf7aujD7tI

Install Unity Tweak Tool
        Make top bar semitransparent.

Download:
Theme: http://j.gs/4qTR
Icon(optional): http://j.gs/4qTS
