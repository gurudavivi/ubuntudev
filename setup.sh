#!/bin/bash

clear

apt install sudo

sudo apt update -y
# sudo apt upgrade -y
sudo apt install -y git curl wget nano vim htop zsh
# sudo apt install -y openssh-server ca-certificates software-properties-common
sudo apt autoremove -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sleep 1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# echo "export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm" >> ~/.zshrc

bash

nvm install node
nvm install-latest-npm
nvm install --lts
nvm install v10.24.1
nvm install v12.22.12
nvm install v14.19.2
nvm install v16.15.0
nvm use v16.15.0
nvm default v16.15.0

node -v
npm -v
yarn -v
# pnpm -v

# yarn global add typescript prettier eslint tslib rimraf esbuild esbuild-register


