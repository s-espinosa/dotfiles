#prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[$(tput setaf 9)\]"
RESET="\[$(tput sgr0)\]"

export PS1="${RED}\h:\W\$(parse_git_branch) $ ${RESET}"

#terminal behavior
alias cl="clear"
alias profile="vim ~/.bash_profile"
alias la="ls -alF"
alias cst="cs ~/Documents/web/school/turing/4module/"
function cs () {
  cd "$@" && ls
}
function mdc () {
  mkdir "$@" && cd "$@"
}

#git shortcuts
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gba="git branch -a"
alias gch="git checkout"
alias gbc="git checkout -b"
alias gd="git diff --patience --ignore-space-change"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpum="git pull origin master"
alias glog="git log --pretty=format:\"%Cgreen%h$Creset %Cblue%ad%Creset %s%C(yellow)%d%Creset %Cblue[%an]%Creset\" --graph --date=short"

#git autocomplete - run brew install bash-completion from the CLI
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
  __git_complete gch _git_checkout
  __git_complete gpo _git_push_origin
fi

#shortcuts for GitHub
alias hc="hub create"
alias hb="hub browse"

#Rails
alias be="bundle exec"
alias nuke="rake db:drop db:create db:migrate db:seed db:test:prepare"
alias migr="rails g migration"

#Ruby bencchmarking
alias rp="ruby-prof --printer=graph_html --sort=self --file=profile.html"

#Weather
alias weather="curl wttr.in/'Denver'"
