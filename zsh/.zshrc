export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export ZSH_THEME="robbyrussell"
export COMPLETION_WAITING_DOTS="true"

export DOTFILES=$HOME/dev/dotfiles

# Stash environment variables in ~/.localrc. This means they'll stay out of your main 
# dotfiles repository (which may be public, like this one), but you'll have access to them # in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# All of our zsh files
# *.local.zsh will not be checked in to git
typeset -U config_files
alias_files=($DOTFILES/zsh/*.zsh)

# Source alias files
for file in ${(M)config_files}
do
  source $file
done
