# ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# aliases for git commands #
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gb='git branch'
alias gc='git checkout'
alias gpu='git pull'
alias gcl='git clone'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

command_exists () {
  command -v "$1" > /dev/null 2>&1
}

if command_exists gdircolors; then
  alias dircolors='gdircolors'
fi

# enable color support of ls and also add handy aliases
if command_exists dircolors; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# alias for the python simple HTTP server
alias simpleserve='python2 -m SimpleHTTPServer'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Ruby aliases
alias bi='bundle install'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bes='bundle exec rspec'

# Docker Compose aliases
alias dc='docker-compose'
alias dce='docker-compose exec'
alias dcu='docker-compose up -d'

# Exit bash
alias ex='exit'

alias c=clear
