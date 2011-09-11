# .bashrc
# vim: sw=4 sts=4 et si filetype=sh

echo "Loading bashrc"

if [ -f ~/.secrets ]; then
  . ~/.secrets
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# Environment
export PS1=':\[\033[01;36m\]\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '
g="\[\033[01;32m\]"
w="\[\033[00m\]"
export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH=~/bin:/usr/local/bin:$PATH
stty -ixon -ixoff

# vi mode
set -o vi
set editing-mode vi
set keymap vi
set convert-meta on

# ^l clear screen
bind -m vi-insert "\C-l":clear-screen
# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete


