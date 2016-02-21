Gradle
------

```bash
# Prepare
cd /media/igor/Data/install/linux/dev/java/tools
sudo cp -r gradle-2.1-all.zip /usr/local/java
cd /usr/local/java
sudo unzip gradle-2.1-all.zip
# Set environment vars
sudo gedit /etc/profile
sudo nano /etc/profile
	GRADLE_HOME=/usr/local/java/gradle-2.1
	GRADLE_OPTS=
	PATH=$PATH:$HOME/bin:$GRADLE_HOME/bin
	export GRADLE_HOME
	export GRADLE_OPTS
	export PATH
# Reload environment vars
. /etc/profile
```
