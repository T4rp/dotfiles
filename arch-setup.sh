#!/bin/bash
DOTFILES="$(dirname "$(realpath "$0")")"
set -e

_pacman() {
    sudo pacman -Syu --needed - < "$DOTFILES/pacman.txt"
}

_suckless() {
    local base="$DOTFILES/suckless"
    sudo make -C "$base/dwm-6.6" install
    sudo make -C "$base/dmenu-5.4" install
    sudo make -C "$base/slstatus-1.1" install
    sudo make -C "$base/slock-1.6" install
}

_dots() {
    cp -r "$DOTFILES/.config/"* ~/.config
    cp -r "$DOTFILES/nvim" ~/.config
    cp "$DOTFILES/.xinitrc" ~/
    cp "$DOTFILES/.tmux.conf" ~/
    mkdir -p ~/.local/bin
    cp "$DOTFILES/scripts/"* ~/.local/bin/
}

_pacman
_suckless
_dots
