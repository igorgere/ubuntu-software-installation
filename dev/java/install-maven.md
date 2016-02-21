Maven
-----

```bash
sudo apt-get install maven
```
or
```bash
# Prepare
cd /media/igor/Data/install/linux/dev/java/tools
sudo cp -r apache-maven-3.2.3-bin.tar.gz /usr/local/java
cd /usr/local/java
sudo tar xvzf apache-maven-3.2.3-bin.tar.gz
# Set environment vars
sudo gedit /etc/profile
sudo nano /etc/profile
	# Maven
	MVN_HOME=/usr/local/java/apache-maven-3.2.3
	MVN_OPTS=
	PATH=$PATH:$HOME/bin:$MVN_HOME/bin
	export MVN_HOME
	export MVN_OPTS
	export PATH
# Reload environment vars
. /etc/profile
# Set maven remo
mkdir ~/.m2
cp /usr/local/java/apache-maven-3.2.3/conf/settings.xml ~/.m2
gedit ~/.m2/settings.xml
```
