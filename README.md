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

### Zsh
1.  Install [Oh My Zsh](https://ohmyz.sh/)
2.  Update environment variables in `zsh/.zshrc`
    * `$ZSH` and `$DOTFILES`
    * TODO(teddywilson) improve this?
3.  Symlink `zsh/.zshrc` to `~/.zshrc`
    ```
    rm ~/.zshrc
    ln -s /path/to/dotfiles/zsh/.zshrc ~/.zshrc
    ```
4.  Local aliases created under `zsh/` will be automatically
    sourced and not checked into git. These must be suffixed
    with `local.zsh`. E.g., `aliases.local.zsh`.

## TODO
- [ ] Create script to initialize everything above
- [ ] Add `.zshrc` and generalize it
