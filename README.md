<p align="center">
  <a href="https://www.github.com/teddywilson/dotfiles">
    <img alt="Cool Mint Crunch" src="cool-mint-crunch.jpg" width=200 />
  </a>
</p>
<h1 align="center">
  Dotfiles
</h1>
My local dotfiles.

## Usage
1.  Clone the repository

### Vim
1.  Symlink repository's `vim/.vim/` directory to `~/.vim/`
    ```
    rm -rf ~/.vim
    ln -s /path/to/dotfiles/vim/.vim /Users/$(whoami)/.vim
    ```
2.  Create a `~/.vimrc` file with the following line:
    `source path/to/vim-config/.vimrc`
3.  Install [Vundle](https://github.com/VundleVim/Vundle.vim) in `~/.vim/bundle/Vundle.vim`.
    ```
    git clone \
      https://github.com/VundleVim/Vundle.vim.git \
      ~/.vim/bundle/Vundle.vim`
    ```  
4.  Install Vundle plugins `vim +PluginInstall +qall`

### Brew
1.  `cd macos && brew bundle`

NOTE: Search for apps [here](https://formulae.brew.sh/).
