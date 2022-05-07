#!/bin/zsh

clear

cd 
cd ubuntudev

pwd
sleep 1

chsh -s $(which zsh)
wait

source ~/.zshrc
source ~/.bashrc

curl -L git.io/antigen > antigen.zsh
wait
source antigen.zsh
wait

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle gretzky/auto-color-ls
antigen bundle unixorn/autoupdate-antigen.zshplugin

antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme spaceship-prompt/spaceship-prompt
antigen apply



# git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# wait
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# wait

pwd


