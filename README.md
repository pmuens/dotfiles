# Dotfiles

## Setup

**Note:** Make sure that you follow the ["Fresh macOS Install"](./MACOS-INSTALL.md) guide when setting-up a new system.

1. Install the latest macOS updates
2. Install the Xcode Command Line Tools via `xcode-select --install`
3. Run `git clone https://github.com/pmuens/dotfiles.git ~/.dotfiles && cd ~/.dotfiles`
4. Log in to iCloud (if you haven't already during the macOS installation)
5. Disable Mac storage optimization in system settings
6. Wait until iCloud Drive is fully synced
7. Run `./install`
8. Run `cp config.zsh.example config.zsh` and update the file
9. Run `./macos/setup.zsh`
10. Restart Mac
11. Run `mackup restore`
12. Update [Dock](#dock)
13. Perform [manual steps](./MANUAL-STEPS.md)
14. Generate a new SSH key via [`./scripts/ssh.zsh email@example.com`](./scripts/ssh.zsh) (replace E-Mail address)
15. Run `pubkey` and add public key to (online) services
16. Run `git remote set-url origin git@github.com:pmuens/dotfiles.git`

## Dock

1. Finder
2. Launchpad
3. App Store
4. Safari
5. Mail
6. Preview
7. Calendar
8. Bitwarden
9. System Preferences
10. Ghostty
11. Things
12. Visual Studio Code
13. Firefox
14. Notes

## Useful Commands

```zsh
# Update / Synchronize system
ug

# Backup / Restore settings
mb
mr

# Update Brewfile
bbd

# Misc Commands
e
l
c

# Dotbot
./install

# Homebrew
brew search [--cask] <name>
brew install [--cask] <name>
brew update
brew upgrade [--cask] [<name>]
brew uninstall [--cask] <name>
brew reinstall [--cask] <name>
brew info [--cask] <name>
brew doctor

# Mas
mas search <name>
mas install <identifier>
sudo mas uninstall <identifier>
mas upgrade
mas list
mas signin
mas signout

# Mackup
mackup backup
mackup restore [--dry-run] [--verbose]
mackup uninstall
mackup list

# asdf
asdf install
asdf current
asdf plugin update --all
asdf list all <name>
asdf local <name> <version>

# Defaults
defaults read > defaults
defaults domains | tr " " "\n"
defaults read <domain>
defaults find <query>
```

## Useful Links

### Tools

- [asdf](https://asdf-vm.com)
- [Dotbot](https://github.com/anishathalye/dotbot)
- [mackup](https://github.com/lra/mackup)
- [mas-cli](https://github.com/mas-cli/mas)
- [Homebrew](https://brew.sh)
- [macOS Defaults](https://macos-defaults.com)

### Misc

- [Eizo Monitor Test](https://www.eizo.de/monitortest/)
- [JScreenFix](https://www.jscreenfix.com)

### Other `dotfiles`

The following is a list with `dotfiles` repositories I drew inspiration from.

- [holman/dotfiles](https://github.com/holman/dotfiles)
- [webpro/dotfiles](https://github.com/webpro/dotfiles)
- [bigolu/dotfiles](https://github.com/bigolu/dotfiles)
- [sobolevn/dotfiles](https://github.com/sobolevn/dotfiles)
- [Stratus3D/dotfiles](https://github.com/Stratus3D/dotfiles)
- [andrew8088/dotfiles](https://github.com/andrew8088/dotfiles)
- [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [eieioxyz/dotfiles_macos](https://github.dev/eieioxyz/dotfiles_macos)
