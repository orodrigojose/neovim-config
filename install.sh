#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

function setupConfig() {
  [[ ! -e './autoload' ]] && mkdir autoload
  wget -q -O ./autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo -e "$GREEN[✓] Vim-Plug has been installed!$ENDCOLOR"

  read -p "You want to move your files to $HOME/.config?(y/n) " confirm

  if [[ $confirm == 'y' || $confirm == 'yes' || -z $confirm ]] then
    if [[ ! -e "$HOME/.config" ]] then
      mkdir "$HOME/.config"
      echo -e "$YELLOW[!] Folder .config was created in $HOME$ENDCOLOR"
    fi

    [[ ! -e "$HOME/.config/nvim" ]] && mkdir "$HOME/.config/nvim"

    config_path = "$HOME/.config/nvim/"
    mv ./lua $config_path
    mv ./init.lua $config_path
    mv ./autoload $config_path
    mv ./coc-settings.json $config_path

    echo -e "$GREEN[✓] Files was moved to $HOME/.config/nvim!$ENDCOLOR"
  else
    echo -e "$YELLOW[!] Files will stay here!$ENDCOLOR"
  fi
}

setupConfig
