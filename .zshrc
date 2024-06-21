export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/zsh

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $DOTFILES/oh-my-posh/jenny-zeng.omp.toml)"
fi
# ZSH related config
# assumed the location of antigen.zsh from https://github.com/zsh-users/antigen
source ~/antigen.zsh
antigen init $ZSH/.antigenrc

eval $(thefuck --alias)
eval "$(zoxide init zsh --cmd cd)"