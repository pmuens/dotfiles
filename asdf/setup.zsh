#!/usr/bin/env zsh

# TODO: Keep versions in sync with `tool-versions` file.

echo ""
echo "--- Starting asdf Setup ---"

suppress_error asdf plugin add direnv https://github.com/asdf-community/asdf-direnv.git
suppress_error asdf install direnv 2.32.2

suppress_error asdf plugin add python https://github.com/asdf-community/asdf-python.git
suppress_error asdf install python 3.11.2

suppress_error asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
suppress_error asdf install nodejs 19.8.1

suppress_error asdf plugin-add zig https://github.com/asdf-community/asdf-zig.git
suppress_error asdf install zig 0.10.1

suppress_error asdf plugin add rust https://github.com/asdf-community/asdf-rust.git
