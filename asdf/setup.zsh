#!/usr/bin/env zsh

echo ""
echo "--- Starting asdf Setup ---"

suppress_error asdf plugin add bun https://github.com/cometkim/asdf-bun.git
suppress_error asdf plugin add deno https://github.com/asdf-community/asdf-deno.git
suppress_error asdf plugin add direnv https://github.com/asdf-community/asdf-direnv.git
suppress_error asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
suppress_error asdf plugin add make https://github.com/yacchi/asdf-make.git
suppress_error asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
suppress_error asdf plugin add python https://github.com/asdf-community/asdf-python.git
suppress_error asdf plugin add rust https://github.com/code-lever/asdf-rust.git
suppress_error asdf plugin add zig https://github.com/asdf-community/asdf-zig.git

suppress_error asdf install
