#!/bin/bash
#stupid script writen(writen?) by me stupid man

plgns="./plgns"
plugins_dir="$HOME/.local/share/zsh/plugins"
github="https://github.com/"

if [[ ! -e $plugins_dir ]]; then
  mkdir -p $plugins_dir || exit 1
fi

readarray -t lesplugins < $plgns

cd $plugins_dir
for plg in ${lesplugins[@]}; do
  array=(${plg//\// })              #split plg by '/' to an array
  folder_name=${array[-1]}          #take the last element
  if [[ ! -e $folder_name ]]; then
    git clone $github$plg
  fi
done
