#!/usr/bin/env zsh

echo ""
echo "--- Starting asdf Setup ---"

suppress_error asdf plugin add direnv https://github.com/asdf-community/asdf-direnv.git
suppress_error asdf install direnv latest
suppress_error asdf global direnv latest

suppress_error asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
