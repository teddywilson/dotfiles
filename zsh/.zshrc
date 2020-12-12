# REQUIRED
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export PROMPT='%F{blue}%1~%f %# '

export COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# REQUIRED
export DOTFILES=$HOME/dev/dotfiles

# Stash environment variables in ~/.localrc. This means they'll stay out of the  main 
# dotfiles repository.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# All of our zsh files
# *.local.zsh files will not be checked in to git
# TODO(teddywilson) maybe reference *.local.zsh from another directory in case repo moves
typeset -U config_files
alias_files=($DOTFILES/zsh/*.zsh)

# Source alias files
for file in ${(M)alias_files}
do
  source $file
done
