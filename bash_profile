eval "$(rbenv init -)"

export MYSQL_USERNAME=root
export MYSQL_PASSWORD=admin

export DEFERRED_GARBAGE_COLLECTION=true

export EDITOR=vim

alias less="less -r -f"

# Aliases
alias cgs="clear && git status"
alias gs="git status"
alias gd="git diff"
alias g="git"
alias c="commit"
alias co="git checkout"
alias be="bundle exec"
alias dj="bundle exec rake jobs:work"
alias pdfs="bundle exec fuji_pdf_server start"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias run="be rails s"
alias runt="bundle exec thin start -p 3035 --threaded"
alias runtm="bundle exec thin start -p 3000 --threaded"
alias runta="bundle exec thin start -p 3032 --threaded"
alias gg="git grep"
alias f='open -a Finder ./'
alias edit='atom'

# Git auto-complete
source ~/git-completion.bash

# Branch auto-complete

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Sets title of iTerm Window
function title {
    echo -ne "\033]0;"$*"\007"
}

# Set the base PS1
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# Source the git bash completion file
if [ -f ~/.git-prompt.sh ]; then
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[01;32m\]\t | \[$(tput setaf 4)\]\w \[$(tput setaf 5)\]$(__git_ps1 " (%s)") \[$(tput setaf 0)\]: '
fi

export PS1
function docker_start() {
  docker-machine start default
    docker-machine env
      eval "$(docker-machine env default)"
        eval "$(aws ecr get-login --region eu-west-1)"
      }
