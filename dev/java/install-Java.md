# Java

## Installing Oracle JDK (from PPA)

```bash
sudo apt-get purge openjdk-\*

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java6-installer
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java8-installer

# setup env
sudo update-alternatives --config java
sudo update-alternatives --config javac

sudo apt-get install oracle-java6-set-default
sudo apt-get install oracle-java7-set-default
sudo apt-get install oracle-java8-set-default
```

## Installing Oracle JDK (manual)

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
```

## Installing default JRE/JDK

```bash
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
```

## Installing OpenJDK 7

```bash
sudo apt-get install openjdk-7-jre
sudo apt-get install openjdk-7-jdk
``
