#!/bin/bash

clear

apt install sudo

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git npm yarnpkg curl wget build-essential tar gzip nano net-tools htop
sudo apt install -y vim zsh openssh-server ca-certificates software-properties-common
sudo apt autoremove -y
npm install -g yarn pnpm typescript prettier eslint tslib rimraf esbuild esbuild-register

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

bash 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'