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
    # Remove any pre-existing symlinks or files
    rm -f ~/.vim
    cd dotfiles
    ln -s $(pwd)/vim/.vim /Users/$(whoami)/.vim
    ```
2.  Create a `~/.vimrc` file with the following line:
    `source path/to/vim-config/.vimrc`
    * This is particularly useful if you wish to source multiple `.vimrc` files (e.g., a work
      configuration). If not, you can symlink it as well via:
      ```
      rm ~/.vimrc
      ln -s $(pwd)/vim/.vimrc ~/.vimrc
      ```
3.  Install [Vundle](https://github.com/VundleVim/Vundle.vim) in `~/.vim/bundle/Vundle.vim`.
    ```
    git clone \
      https://github.com/VundleVim/Vundle.vim.git \
      ~/.vim/bundle/Vundle.vim
    ```  
4.  Install Vundle plugins `vim +PluginInstall +qall`

### Brew
1.  Install [Brew](https://brew.sh).
2.  `cd macos && brew bundle`

NOTE: Search for apps [here](https://formulae.brew.sh/).

### Zsh
1.  Install [Oh My Zsh](https://ohmyz.sh/)
2.  Symlink `zsh/.zshrc` to `~/.zshrc`
    ```
    rm ~/.zshrc
    ln -s /path/to/dotfiles/zsh/.zshrc ~/.zshrc
    ```
3.  Local aliases created under `zsh/` will be automatically
    sourced and not checked into git. These must be suffixed
    with `local.zsh`. E.g., `aliases.local.zsh`.

## TODO
- [ ] Create script to initialize everything above
- [x] Add `.zshrc` and generalize it
