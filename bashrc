# .bashrc
# vim: sw=4 sts=4 et si filetype=sh

echo "Loading bashrc"

if [ -f ~/.secrets ]; then
  . ~/.secrets
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

alias s="screen"
alias be="bundle exec"
alias migrate="be rake db:migrate && RAILS_ENV=test be rake db:migrate"

# Environment
export PS1='\[\033[1;34m\]$(hms)\[\033[01;36m\]:\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '
g="\[\033[01;32m\]"
w="\[\033[00m\]"
export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
stty -ixon -ixoff

export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

set convert-meta on
export VMAIL_BROWSER="links"
export VMAIL_VIM="mvim"
export EDITOR="mvim"
export VIM_APP_DIR=/Applications

# ^l clear screen
bind -m vi-insert "\C-l":clear-screen
# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete

# Go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/bpo/go
export PATH=$PATH:${GOPATH//://bin:}/bin

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# CoreOS
export FLEETCTL_TUNNEL=docker.stvp.io

# boot2docker
export DOCKER_HOST=tcp://localhost:4243

# EC2 Tools
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.3.0/libexec"
export AWS_CLOUDFORMATION_HOME="/usr/local/Cellar/aws-cfn-tools/1.0.12/libexec"

# Docker
eval "$(docker-machine env default)"

# Buildbox
export UPSTREAM_BUILDS=/Users/bpo/stvp/upstream-builds

# GnuPG
export GPG_TTY=$(tty)
eval $(gpg-agent --daemon)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
