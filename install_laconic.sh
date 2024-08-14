#!/bin/bash

# Display logo and message
curl -s https://raw.githubusercontent.com/zrhraJETTOKOSUTA/bash-nobi.sh/main/bash%20logo.sh | bash
echo "Join the Airdrop Nobi Telegram channel: https://t.me/airdropnobi"
sleep 4

# Update package lists
sudo apt update

# Install curl
sudo apt install curl git wget htop tmux build-essential jq make lz4 gcc unzip -y
echo "Installation complete!"
sleep 3

# Install go
cd $HOME
VER="1.22.2"
wget "https://golang.org/dl/go$VER.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "go$VER.linux-amd64.tar.gz"
rm "go$VER.linux-amd64.tar.gz"
[ ! -f ~/.bash_profile ] && touch ~/.bash_profile
echo "export PATH=$PATH:/usr/local/go/bin:~/go/bin" >> ~/.bash_profile
source $HOME/.bash_profile
[ ! -d ~/go/bin ] && mkdir -p ~/go/bin

echo "Installation complete!"
sleep 3

# Install go
cd $home
sudo apt update
sudo apt install golang-go

echo "Installation complete!"
sleep 3

cd $home
git clone https://git.vdb.to/cerc-io/laconicd.git
cd laconicd
make install

echo "Installation complete!"
sleep 3
