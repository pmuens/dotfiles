#!/usr/bin/env zsh

# Replacements
alias ls=eza
alias grep=rg
alias rm='trash'
alias cp='cp -i'
alias mv='mv -i'

# Shorthands
alias e='exit'
alias c='clear'
alias l='eza -lah --git --icons'
alias s="source $HOME/.zshrc"
alias g='lazygit'
alias j='z'
alias v='nvim'
alias ..='cd ..'
alias ...='cd ../..'
alias dt="cd $HOME/Desktop"
alias dw="cd $HOME/Downloads"
alias co="cd $HOME/code"

# System Management
alias mb='mackup backup'
alias mr='mackup restore'
alias bbd="brew bundle dump --file $DOTFILES/homebrew/Brewfile --force --describe --no-vscode"
alias ug="$DOTFILES/install"

# Development
alias da='direnv allow'
alias ai='asdf install'

# Git
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'
alias gp='git pull'
alias gf='git fetch'
alias gpu='git push'
alias gfp='git fetch --prune'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gs='git stash'
alias gsp='git stash pop'

# Utils
alias trail='<<<${(F)path}'
alias ftrail='<<<${(F)fpath}'
alias trim="awk '{\$1=\$1;print}'"
alias jj='pbpaste | jsonpp | pbcopy'
alias serve='python3 -m http.server'

# Misc
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function note() {
  echo "date: $(date)" >> $HOME/drafts.txt
  echo "$@" >> $HOME/drafts.txt
  echo "" >> $HOME/drafts.txt
}
