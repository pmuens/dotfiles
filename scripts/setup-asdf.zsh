#!/usr/bin/env zsh

echo ""
echo "--- Starting asdf Setup ---"

asdf plugin add direnv
asdf install direnv latest
asdf global direnv latest
