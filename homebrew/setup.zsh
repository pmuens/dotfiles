#!/usr/bin/env zsh

echo ""
echo "--- Starting Homebrew Setup ---"

# See: https://stackoverflow.com/a/15371967
# See: https://developer.apple.com/forums/thread/698954
if ! xcode-select -p &> /dev/null; then
  xcode-select --install
else
  echo "Xcode Command Line Tools already installed..."
fi

echo ""

if ! exists brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed..."
fi

echo ""

# TODO: Currently there's no support for the `--no-quarantine` option.
# We've exported it in `zshrc` via `HOMEBREW_CASK_OPTS`.
# See: https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --file "$DOTFILES/homebrew/Brewfile" --verbose
