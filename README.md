# My Dotfiles

I went and made it so that the dotfiles I care about could exist outside of the home directory.

To install on a new machine:

1. Clone this directory into `~/Documents/`
1. Install [homebrew](https://brew.sh/)
1. Use homebrew to install zsh (`brew install zsh`)
1. Make zsh your shell with `chsh -s /bin/zsh`
1. Install [Antigen](https://github.com/zsh-users/antigen)
1. Add the line below to your `.zshrc`

```sh
source "${HOME}/documents/dotfiles/.index"
```

Think that should be it? Pull Requests accepted? Maybe? Kind of? Yes to fix things. Probably not to make changes. Fork and make your own.

