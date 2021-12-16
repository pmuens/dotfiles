# Dotfiles

## Fresh macOS install

### Before re-installing macOS

- Are all cloud services you're using fully synced?
- Did you commit and push any changes to this repo?
- Did you copy important files to an external HDD?
- Did you backup your public- and private keys?
- Did you sign out of accounts in all browsers?
- Did you remove your Mac from iCloud?
- Did you stop FileVault?
- Is the HDD fully decrypted?

### Re-installing macOS

Go through the checklist above. Double check that everything is backed up.

Follow [this guide](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version.

## Setup

1. Install [Nix](https://nixos.org/guides/install-nix.html)
2. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
3. Install [home-manager](https://github.com/nix-community/home-manager)
4. Clone this repo to `~/dotfiles`
5. `rm ~/.nixpkgs/darwin-configuration.nix`
6. `ln -sf ~/dotfiles/darwin.nix ~/.nixpkgs/darwin-configuration.nix`
7. `rm ~/.config/nixpkgs/home.nix`
8. `ln -sf ~/dotfiles/home.nix ~/.config/nixpkgs/home.nix`
9. Update `darwin.nix` and `home.nix` with custom config (optional)
10. `darwin-rebuild switch`
11. `home-manager switch`

## Other Applications

- [Amphetamine](https://apps.apple.com/app/amphetamine/id937984704)
- [AppCleaner](https://freemacsoft.net/appcleaner)
- [Bitwarden](https://bitwarden.com)
- [Docker](https://docker.com)
- [Exporter](https://apps.apple.com/de/app/exporter/id1099120373)
- [Firefox](https://mozilla.org/firefox)
- [Flycut](https://apps.apple.com/app/flycut-clipboard-manager/id442160987)
- [GitUp](https://gitup.co)
- [Keynote](https://apple.com/keynote)
- [Noizio](https://noiz.io)
- [Numbers](https://apple.com/numbers)
- [Pages](https://apple.com/pages)
- [Rectangle](https://rectangleapp.com)
- [Spotify](https://spotify.com)
- [TablePlus](https://tableplus.com)
- [The Unarchiver](https://theunarchiver.com)
- [Things](https://culturedcode.com/things)
- [Visual Studio Code](https://code.visualstudio.com)
- [VLC](https://videolan.org/vlc)
