# Exports
export DOTFILES="$HOME/.dotfiles"
export PATH="/opt/homebrew/bin:$PATH"

# Prompt(s)
PROMPT='%1~ %L %# '
RPROMPT='%*'

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

precmd() {
  source "$DOTFILES/aliases.zsh"
}
