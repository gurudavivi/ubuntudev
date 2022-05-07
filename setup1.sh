#!/bin/bash

clear



apt install sudo

sudo apt update -y
sudo apt install -y git curl wget nano vim htop zsh
sudo apt autoremove -y
wait

cd 
cd ubuntudev

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wait

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# echo "export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm" >> ~/.zshrc

sleep 1

nvm install node
wait
nvm install-latest-npm
wait

nvm install --lts
nvm install v10.24.1
nvm install v12.22.12
nvm install v14.19.2
nvm install v16.15.0

nvm use v16.15.0
wait
nvm default v16.15.0
wait 

sleep 1

node -v
npm -v
wait

npm install -g yarn pnpm typescript ts-node
wait

sleep 1

pnpm -v
yarn -v
wait

npm install 
wait

sudo apt-get install fonts-powerline -y
wait

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) -y"
wait
