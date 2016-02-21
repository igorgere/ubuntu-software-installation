# NodeJS
sudo apt-get update
sudo apt-get install build-essential libssl-dev

curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh

source ~/.profile

nvm ls-remote
nvm install v0.12.2
nvm use v0.12.2

# what is installed
nvm ls
node -v
# default
nvm alias default v0.12.2
nvm use default
