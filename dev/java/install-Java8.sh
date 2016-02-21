# Java 8
sudo apt-get purge openjdk-\*

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

sudo apt-get install oracle-java8-set-default

# setup env
sudo update-alternatives --config java
sudo update-alternatives --config javac

java -version
javac -version
