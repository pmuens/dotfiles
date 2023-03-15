#!/usr/bin/env zsh

echo ""
echo "--- Starting macOS Setup ---"

# TODO: This is used as a hack so that Finder can open iCloud as the default location.
ln -sf "$HOME/Library/Mobile Documents/com~apple~CloudDocs" "$HOME/iCloud"
ln -sf "$HOME/code" "$HOME/Desktop/code"

config_file_path="$DOTFILES/config.zsh"
macos_file_path="$DOTFILES/macos/macos.zsh"

source "$config_file_path"
source "$macos_file_path"
