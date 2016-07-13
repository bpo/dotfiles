# vi: ft=sh

# For the prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

isreg() {
  whois $1 | grep -q 'No match' && echo "No" || echo "Yes"
}

hms() {
  TZ="UTC" date "+%H:%M:%S"
}
