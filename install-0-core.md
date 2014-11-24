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

Diodon
-----

```bash
sudo apt-get install diodon
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

Yosemite Theme
--------------

Make Ubuntu Look Like Mac OS X 10.10 Yosemite - Ubuntu 14.10/14.04
https://www.youtube.com/watch?v=DSf7aujD7tI

Install Unity Tweak Tool
        Make top bar semitransparent.

Download:
Theme: http://j.gs/4qTR
Icon(optional): http://j.gs/4qTS

