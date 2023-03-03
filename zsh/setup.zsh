#!/usr/bin/env zsh

echo ""
echo "--- Starting Zsh Setup ---"

# See: https://stackoverflow.com/a/4749368
if grep -Fxq "$HOMEBREW_PREFIX/bin/zsh" "/etc/shells"; then
  echo "$HOMEBREW_PREFIX/bin/zsh already exists in /etc/shells..."
else
  echo "Enter superuser (sudo) password to edit /etc/shells..."
  echo "$HOMEBREW_PREFIX/bin/zsh" | sudo tee -a "/etc/shells" >/dev/null
fi

echo ""

if [ "$SHELL" = "$HOMEBREW_PREFIX/bin/zsh" ]; then
  echo "\$SHELL is already $HOMEBREW_PREFIX/bin/zsh"
else
  echo "Enter user password to change login shell..."
  chsh -s "$HOMEBREW_PREFIX/bin/zsh"
fi
