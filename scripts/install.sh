#!/bin/zsh
set -eoxu pipefail

brew install $(<brew-packages.txt)

# Create symbolic link for wezterm
ln -s $HOME/.dotfiles/wezterm/.wezterm.lua $HOME/.wezterm.lua