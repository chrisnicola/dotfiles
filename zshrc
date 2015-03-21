DEFAULT_USER=chrisnicola

# Path to your oh-my-zsh configuration.

TERM=xterm-256color
#
eval "$(rbenv init -)"

# Customize to your needs...
export PATH=bin:~/bin:~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin

# Add Postgres.app bin folder for Heroku postgres
PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH

# Add the current path bin folder for Rail 4.0
PATH=./bin:$PATH

# Add GCC 4.2

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

### Added by the Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

export EDITOR=vim
