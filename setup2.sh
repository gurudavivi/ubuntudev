#!/bin/bash

clear

cd 
cd ubuntudev
git pull


pwd
sleep 1

chsh -s $(which zsh)
wait

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
wait
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
wait

pwd

