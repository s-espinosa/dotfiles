# My Dotfiles

I went and made it so that the dotfiles I care about could exist outside of the home directory.

To install on a new machine:

1. `brew update`
1. `brew install zsh zsh-completions`
1. `mkdir /usr/local/share/antigen`
1. Install [Antigen](https://github.com/zsh-users/antigen): `curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh`
1. Clone this directory into `~/Documents/`
1. Add the line below to your `.zshrc`

```sh
source "${HOME}/documents/dotfiles/.index"
```

