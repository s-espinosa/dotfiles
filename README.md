# My Dotfiles

I went and made it so that the dotfiles I care about could exist outside of the home directory.

To install on a new machine:

1. Install [homebrew](https://brew.sh/)
1. `brew update`
1. `brew install zsh zsh-completions`
1. `brew install antigen`
1. Clone this directory into `~/Documents/`
1. Add any environment variables to a `.env` file in the cloned directory.
1. Add the line below to your `.zshrc`

```sh
source "${HOME}/documents/dotfiles/.index"
```

1. `source ~/.zshrc`
1. `brew install vim`
1. `mkdir -p ~/Documents/dotfiles/.vim/bundle`
1. `mkdir ~/Documents/dotfiles/.vim/colors`
1. `git clone git@github.com:altercation/vim-colors-solarized.git`
1. `mv vim-colors-solarized/colors/solarized.vim ~/.vim/colors`
1. `rm -rf vim-colors-solarized`
1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. Open vim and run `:PluginInstall`

I think that should be it? Pull Requests accepted? Maybe? Kind of? Yes to fix things. Probably not to make changes. Fork and make your own.
