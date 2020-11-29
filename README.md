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
    * On Mac OSX, e.g.: `rm -rf ~/.vim && ln -s ln -s /path/to/dotfiles/vim/.vim /Users/$(whoami)/.vim`
2.  Create a `~/.vimrc` file with the following line:
    `source path/to/dotfiles/vim/.vimrc`

### Brew
1.  `cd macos && brew bundle`

NOTE: Search for apps [here](https://formulae.brew.sh/).
