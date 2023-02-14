#!/usr/bin/env zsh

echo ""
echo "--- Starting Zsh Setup ---"

# See: https://stackoverflow.com/a/4749368
if grep -Fxq "$HOMEBREW_BIN_PATH/zsh" "/etc/shells"; then
  echo "$HOMEBREW_BIN_PATH/zsh already exists in /etc/shells..."
else
  echo "Enter superuser (sudo) password to edit /etc/shells..."
  echo "$HOMEBREW_BIN_PATH/zsh" | sudo tee -a "/etc/shells" >/dev/null
fi

echo ""

if [ "$SHELL" = "$HOMEBREW_BIN_PATH/zsh" ]; then
  echo "\$SHELL is already $HOMEBREW_BIN_PATH/zsh"
else
  echo "Enter user password to change login shell..."
  chsh -s "$HOMEBREW_BIN_PATH/zsh"
fi
