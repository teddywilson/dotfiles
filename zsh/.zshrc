export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

export DOTFILES=$HOME/dev/dotfiles

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi


# TODO(teddywilson) move to local alias config, unless java included in setup
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 10
java10

# TODO(teddywilson) move to local alias config
alias clr="${DEV_DIR}/clothesline-recordings"
alias d12="${DEV_DIR}/defund12"
alias dev="${DEV_DIR}"
alias drive="${GOOGLE_DRIVE_DIR}"

# TODO(teddywilson) move all file sourcing to loop
source $DOTFILES/zsh/git.zsh

