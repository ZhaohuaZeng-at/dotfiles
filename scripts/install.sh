#!/usr/bin/env bash

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

setup_wezterm() {
  # Create symbolic link for wezterm
if [ -f $HOME/.wezterm.lua ]; then
   info "$HOME/.wezterm.lua exists. Skipping wezterm setup."
else
   info "Configure wezterm.."
  ln -s $HOME/.dotfiles/wezterm/.wezterm.lua $HOME/.wezterm.lua
fi
}

info 'Install packages with brew'
brew bundle

setup_wezterm