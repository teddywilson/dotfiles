if [[ $UID != 0 ]]; then
  echo "Please run this script with sudo:"
  exit 1
fi
#######
# Vim #
#######
echo "Removing preexisting vim config..."
rm -f ~/.vim
rm ~/.vimrc
echo "Symlinking vim config to local machine..."
ln -s $(pwd)/vim/.vim /Users/$(whoami)/.vim
ln -s $(pwd)/vim/.vimrc ~/.vimrc
echo "Installing vundle..."
git clone \
  https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim
echo "Installing vim plugins..."
vim +PluginInstall +qall
###########
# Z Shell #
###########
echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Removing preexisting zshell config..."
rm ~/.zshrc
echo "Symlinking dotfiles zshell config to local machine..."
ln -s /path/to/dotfiles/zsh/.zshrc ~/.zshrc
############
# Homebrew #
############
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Installing homebrew dependencies..."
cd $(pwd)/macos && brew bundle && cd ../
