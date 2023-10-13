#!/usr/bin/env zsh

echo ""
echo "--- Starting Visual Studio Code Setup ---"

echo "Installing Visual Studio Code Extensions..."
echo ""
cat "$DOTFILES/vscode/extensions" | xargs -L 1 code --force --install-extension
