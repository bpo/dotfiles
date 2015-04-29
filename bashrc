# .bashrc
# vim: sw=4 sts=4 et si filetype=sh

echo "Loading bashrc"

if [ -f ~/.secrets ]; then
  . ~/.secrets
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# The next line updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/path.bash.inc"
# The next line enables bash completion for gcloud.
source "$HOME/google-cloud-sdk/completion.bash.inc"

alias s="screen"
alias be="bundle exec"
alias migrate="be rake db:migrate && RAILS_ENV=test be rake db:migrate"

# Environment
export PS1=':\[\033[01;36m\]\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '
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

# ^l clear screen
bind -m vi-insert "\C-l":clear-screen
# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete

# Go
export GOROOT=/usr/local/Cellar/go/1.4.2/libexec
export GOPATH=/Users/bpo/stvp/go
export PATH=$PATH:${GOPATH//://bin:}/bin

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Hashicorp Tools
export PATH="$PATH:$HOME/sw/packer"
#export PACKER_LOG=1         # verbose mode
#export VAGRANT_LOG="warn"
#export VAGRANT_LOG="debug"  # verbose for vagrant
export VAGRANT_CHECKPOINT_DISABLE=1   # skip extra network calls
export PATH="$PATH:$HOME/sw/terraform"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
