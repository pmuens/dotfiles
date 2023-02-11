#!/usr/bin/env zsh

echo ""
echo "--- Starting Homebrew Setup ---"

if ! type brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed..."
fi

echo ""
