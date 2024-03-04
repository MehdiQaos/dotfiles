#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $HOME/.config/shell/shell_exports
source $HOME/.config/shell/shell_aliases
source $HOME/.config/shell/shell_functions

#PS1=" \[\e[00;34m\]λ \W \[\e[0m\]"
PS1='\[\e[32m\u\] \[\e[36m\w\] \[\e[33m\]\[\e[1m\]$ \[\e[0m\]'

PATH=~/.console-ninja/.bin:$PATH