#!/usr/bin/env zsh

echo ""
echo "--- Starting Xcode Setup ---"

# See: https://stackoverflow.com/a/15371967
# See: https://developer.apple.com/forums/thread/698954
if ! xcode-select -p &> /dev/null; then
  xcode-select --install
else
  echo "Xcode Command Line Tools already installed..."
fi
