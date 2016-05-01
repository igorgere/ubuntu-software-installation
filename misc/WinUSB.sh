# WinUSB
sudo add-apt-repository ppa:colingille/freshlight
sudo sh -c "sed -i 's/trusty/saucy/g' /etc/apt/sources.list.d/colingille-freshlight-trusty.list"
sudo apt-get update
sudo apt-get install winusb
