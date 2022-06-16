#!/bin/bash
#stupid script writen(writen?) by me stupid man

plgns="./plgns"
plugins_dir="$HOME/.local/share/zsh/plugins/"
github="https://github.com/"

if [[ ! -e $plugins_dir ]]; then
  mkdir -p $plugins_dir || exit 1
fi

readarray -t lesplugins < $plgns

for plg in ${lesplugins[@]}; do
  array=(${plg//\// })              #split plg by '/' to an array
  folder_name=${array[-1]}          #take the last element
  if [[ ! -e $plugins_dir$folder_name ]]; then
    git -C $plugins_dir clone $github$plg
  fi
done
