# REQUIRED
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
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
typeset -U config_files
alias_files=($DOTFILES/zsh/*.zsh)

# Source alias files
for file in ${(M)config_files}
do
  source $file
done
