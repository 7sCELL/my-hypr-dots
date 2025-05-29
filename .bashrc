#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source .aliases
clear
fastfetch
export PATH="$HOME/.cargo/bin:$PATH"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mod='flatpak run com.modrinth.ModrinthApp'
PS1='[\u@\h \W]\$ '
