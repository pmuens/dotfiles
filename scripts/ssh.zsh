#!/usr/bin/env zsh

# Generate a new SSH Key.
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key
echo "Generating a new ed25519 SSH Key..."
ssh-keygen -t ed25519 -C "$1" -f ~/.ssh/id_ed25519

# Add the SSH Key to the ssh-agent.
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Add new SSH Key to services.
# https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
echo "Run \"pbcopy < ~/.ssh/id_ed25519.pub\" to copy the public key into the Clipboard."
