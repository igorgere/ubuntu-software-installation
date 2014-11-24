Installation of software on Ubuntu
==================================

CURL
----

```bash
sudo apt-get install curl
```

Git
---

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
git --version
```

Java
----

```bash
sudo apt-get java
```
or
```bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
# +
java -version
# setup env
sudo apt-get install oracle-java8-set-default
```
or
```bash
# http://www.wikihow.com/Install-Oracle-Java-on-Ubuntu-Linux
# Check OS and Java versions
file /sbin/init
java -version
# Remove OpenJDK
sudo apt-get purge openjdk-\*
# Download and copy Java
sudo mkdir -p /usr/local/java
cd /media/igor/Data/install/linux/dev/java
sudo cp -r jdk-8u20-linux-x64.tar.gz /usr/local/java
sudo cp -r jre-8u20-linux-x64.tar.gz /usr/local/java
cd /usr/local/java
sudo tar xvzf jdk-8u20-linux-x64.tar.gz
sudo tar xvzf jre-8u20-linux-x64.tar.gz
ls -a
	jdk1.8.0_20
	jre1.8.0_20
# Set environment vars
sudo gedit /etc/profile
sudo nano /etc/profile
	# Java
	JAVA_HOME=/usr/local/java/jdk1.8.0_20
	PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
	JRE_HOME=/usr/local/java/jdk1.8.0_20/jre
	PATH=$PATH:$HOME/bin:$JRE_HOME/bin
	JAVA_OPTS=
	export JAVA_HOME
	export JRE_HOME
	export PATH
	export JAVA_OPTS
# Inform your Ubuntu Linux system where your Oracle Java JDK/JRE is located
#	JDK
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_20/jre/bin/java" 1
#	? JRE ?
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.8.0_20/bin/java" 1
#	Javac
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_20/bin/javac" 1
#	JDK Web Start
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_20/bin/javaws" 1
#	? JRE Web Start ?
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jre1.8.0_20/bin/javaws" 1
# Inform your Ubuntu Linux system that Oracle Java JDK/JRE must be the default Java
#	JDK
sudo update-alternatives --set java /usr/local/java/jdk1.8.0_20/jre/bin/java
#	? JRE ?
sudo update-alternatives --set java /usr/local/java/jre1.8.0_20/bin/java 
#	Javac
sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_20/bin/javac
#	JDK Web Start
sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_20/bin/javaws
#	? JRE Web Start ?
sudo update-alternatives --set javaws /usr/local/java/jre1.8.0_20/bin/javaws
# Reload environment vars
. /etc/profile
# Test installation
java -version 
javac -version 

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

Tomcat
------

```bash
# Prepare
cd /media/igor/Data/install/linux/dev/java/srv
sudo cp -r apache-tomcat-*.zip /usr/local/java
cd /usr/local/java
sudo unzip apache-tomcat-version.zip
# Set environment vars
```

Ruby
----

```bash
# NO!
sudo apt-get install ruby
```
or
```bash
# NO!
sudo apt-get install ruby-rvm
```
or
```bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
# Run command as a login shell
# (enable this option in terminal)
rvm requirements
rvm install 2.1.4
rvm use 2.1.4
rvm --default use 2.1.4

gem install compass
gem install sass
```

NodeJS
------

```bash
sudo apt-get update
sudo apt-get install build-essential libssl-dev

curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh

source ~/.profile

nvm ls-remote
nvm install 0.11.14
nvm use 0.11.14

# what is installed
nvm ls 
node -v
# default
nvm alias default 0.11.14
nvm use default
```

MySQL
-----

```bash
sudo dpkg -i mysql-apt-config_0.3.1-1ubuntu14.04_all.deb
sudo apt-get update

sudo apt-get install mysql-server
	root
```

```bash
sudo service mysql status|start|stop|restart
```

