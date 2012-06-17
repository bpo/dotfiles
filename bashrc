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

# Environment
export PS1=':\[\033[01;36m\]\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '
g="\[\033[01;32m\]"
w="\[\033[00m\]"
export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
stty -ixon -ixoff

# vi mode
set -o vi
set editing-mode vi
set keymap vi
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

# Android
export ANDROID_SDK=~/Tools/android-sdk-macosx
export ANDROID_NDK=~/Tools/android-ndk-r6b
export PATH=$ANDROID_SDK/tools:$PATH
export PATH=$ANDROID_SDK/platform-tools:$PATH
export PATH=$ANDROID_NDK:$PATH

# Rhodes
export XCODEBUILD=/usr/bin/xcodebuild
export RHO_HOME=/Users/bpo/.rbenv/versions/1.9.2-p290/lib/ruby/gems/1.9.1/bundler/gems/rhodes-1debce68cc61
export PATH=$RHO_HOME/bin:$PATH

# Cabal
export PATH=$PATH:$HOME/.cabal/bin

# Go
export GOROOT=/usr/local/Cellar/go/1
export PATH=$PATH:$GOROOT/bin:/Users/bpo/stvp/redisgreen/go/path/bin
export GOPATH=$GOROOT:/Users/bpo/stvp/redisgreen/go/path

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Postgres
export PATH="$HOME/Developer/Cellar/postgresql/9.0.1/bin:$PATH"
export WURL_POSTGRES_ARGS="-k $HOME/wurl/wurl-server/tmp/pg_sock -p 6432"
