Installation of software on Ubuntu
==================================

Skype
-----

```bash
sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype
```

VLC
---

```bash
sudo apt-get install vlc vlc-plugin-pulse
```

Dropbox
-------

```bash
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
```

VirtualBox
----------

```bash
wget http://download.virtualbox.org/virtualbox/4.3.16/virtualbox-4.3_4.3.16-95972~Ubuntu~raring_amd64.deb
sha256sum <tab>
	fa8729d807acb96695e084956549405852446ffde74adc5525f3a98bb7f44ffe
```

Tor
---

```bash
#Step 1
# List Ubuntu release version
lsb_release -c
deb http://deb.torproject.org/torproject.org <DISTRIBUTION> main
# deb http://deb.torproject.org/torproject.org trusty main
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get update
sudo apt-get install tor

#Step 2
gpg --keyserver x-hkp://pgp.mit.edu --recv-keys 0x63FEE659
gpg --fingerprint 0x63FEE659
gpg --verify tor-browser-linux64-4.0_en-US.tar.xz.asc tor-browser-linux64-4.0_en-US.tar.xz
pub   2048R/63FEE659 2003-10-16
#	      Key fingerprint = 8738 A680 B84B 3031 A630  F2DB 416F 0610 63FE E659
#	uid                  Erinn Clark <erinn@torproject.org>
#	uid                  Erinn Clark <erinn@debian.org>
#	uid                  Erinn Clark <erinn@double-helix.org>
#	sub   2048R/EB399FD7 2003-10-16
tar -xvJf tor-browser-linux64-4.0_en-US.tar.xz

```

Chrome
------

Download and install deb file.

WinUSB
------

```
sudo add-apt-repository ppa:colingille/freshlight
sudo sh -c "sed -i 's/trusty/saucy/g' /etc/apt/sources.list.d/colingille-freshlight-trusty.list"
sudo apt-get update
sudo apt-get install winusb
```

F.lux
-----

```
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get update
sudo apt-get install fluxgui
```
