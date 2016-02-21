# Tor
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
