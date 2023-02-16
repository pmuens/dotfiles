#!/usr/bin/env zsh

echo ""
echo "--- Starting asdf Setup ---"

suppress_error asdf plugin add direnv
suppress_error asdf install direnv latest
suppress_error asdf global direnv latest

suppress_error asdf plugin add nodejs
