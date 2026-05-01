#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.local/bin/"

export EDITOR=nvim
export PAGER=less

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Gtk
export GTK_THEME="Adwaita:dark"

