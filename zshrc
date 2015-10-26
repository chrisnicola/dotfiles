source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle git-extras
antigen bundle git-prompt
antigen bundle rake-fast
antigen bundle rake
antigen bundle ruby
antigen bundle rbenv
antigen bundle tmux
antigen bundle brew
antigen bundle brew-cask
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle history-substring-search

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle chrissicool/zsh-256color

antigen theme halfo/lambda-mod-zsh-theme lambda-mod

antigen apply

alias vim=nvim

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR='vim'

export PATH="./bin:$HOME/bin:$PATH"
