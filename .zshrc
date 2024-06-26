#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles

export PATH=$PATH:$DOTFILES/bin

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $DOTFILES/oh-my-posh/jenny-zeng.omp.toml)"
fi

eval $(thefuck --alias)

# Replace cd command with zoxide
eval "$(zoxide init zsh --cmd cd)"

# ZSH related config
source $DOTFILES/zsh/.zpmrc

source $DOTFILES/zsh/aliases.zsh

# Use fzf for default auto suggestion keybindings like ctrl-r
source <(fzf --zsh)

# Use nvim as default editor
export EDITOR=nvim