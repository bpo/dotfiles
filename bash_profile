# .bash_profile
# vim: sw=4 sts=4 et si filetype=sh

echo "Loading ~/.bash_profile"

# Default profile setup
if [ -f ~/.profile ]; then
  . ~/.profile
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
