# Dotfiles

## Fresh macOS install

### Before re-installing macOS

- [ ] Are all cloud services you're using fully synced?
- [ ] Did you commit and push any changes to this repo?
- [ ] Did you copy important files to an external HDD?
- [ ] Did you backup your public- and private keys?
- [ ] Did you sign out of accounts in all browsers?
- [ ] Did you remove your Mac from iCloud?
- [ ] Did you stop FileVault?
- [ ] Is the HDD fully decrypted?

### Re-installing macOS

Go through the checklist above. Double check that everything is backed up.

Follow [this guide](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version. Note that since macOS Monterey there's the option to [restore the Mac to factory settings](https://support.apple.com/en-us/HT212749).

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

## Dock

Order from left to right.

1. Finder
2. Launchpad
3. App Store
4. Safari
5. Mail
6. Preview
7. Calendar
8. Bitwarden
9. System Preferences
10. Terminal
11. Things
12. Visual Studio Code
13. Firefox
14. Notes

## Other Applications

- [AdGuard for Safari](https://adguard.com/adguard-safari/overview.html)
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

## Useful Resources

### Nix

- [NixOS Wiki](https://nixos.wiki)
- [Nix tutorial](https://gricad.github.io/calcul/nix/tuto/2017/07/04/nix-tutorial.html)
- [Don't Give Up on Nix Just Yet](https://dev.to/ryuheechul/don-t-give-up-on-nix-just-yet-37mh)
- [How to Learn Nix](https://ianthehenry.com/posts/how-to-learn-nix/)
- [A tour of Nix](https://nixcloud.io/tour/)
- [Nix.dev](https://nix.dev)
- [Nix as OS X Package Manager](https://ariya.io/2016/05/nix-as-os-x-package-manager)
- [What Is Nix](https://shopify.engineering/what-is-nix)
- [Nix by example](https://medium.com/@MrJamesFisher/nix-by-example-a0063a1a4c55)
- [Nix - A One Pager](https://github.com/tazjin/nix-1p)
- [Nix Please!](https://hardselius.github.io/2020/nix-please/)
- [Moving from Homebrew to Nix Package Manager](https://www.softinio.com/post/moving-from-homebrew-to-nix-package-manager/)
- [Moving to nix for dotfiles](https://discourse.nixos.org/t/moving-to-nix-for-dotfiles/811)
- [My NixOS Desktop Flow](https://christine.website/blog/nixos-desktop-flow-2020-04-25)
- [Using Nix to set up my new Mac](https://adrianhesketh.com/2020/07/03/mac-setup-with-nix-darwin/)
  - [a-h/dotfiles](https://github.com/a-h/dotfiles)
- [Tutorial: Getting started with Home Manager for Nix](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
- [Set up nix & home-manager in macoS Big Sur 11](https://gist.github.com/mandrean/65108e0898629e20afe1002d8bf4f223)
- [Status - YouTube](https://www.youtube.com/c/Statusim)
  - [Nix Fundamentals](https://www.youtube.com/watch?v=m4sv2M9jRLg) ([Slides](https://drive.google.com/file/d/1Tt5R7QOubudGiSuZIGxuFWB1OYgcThcL/edit))
  - [Nix in Status](https://www.youtube.com/watch?v=rEQ1EvRG8Wc) ([Slides](https://drive.google.com/file/d/1Ti0wppMoj40icCPdHy7mJcQj__DeaYBE/edit))
- [Burke Libbey - YouTube](https://www.youtube.com/channel/UCSW5DqTyfOI9sUvnFoCjBlQ)
  - [Nix: What Even is it Though](https://www.youtube.com/watch?v=6iVXaqUfHi4)
  - [Nix as a Homebrew replacement](https://www.youtube.com/watch?v=NYyImy-lqaA)
  - [NixOS, nix-darwin, and home-manager](https://www.youtube.com/watch?v=IUsQt4NRCnc)
  - [Installing home-manager](https://www.youtube.com/watch?v=Ubhc94lrfTo)
  - [Getting Started with home-manager](https://www.youtube.com/watch?v=OgUvDXxHlLs)
  - [From nix-env to home-manager](https://www.youtube.com/watch?v=PmD8Qe8z2sY)
  - [home-manager: Reading the Source](https://www.youtube.com/watch?v=CID_ZbwObJ8)
  - [Packaging a Gem as a Nix derivation](https://www.youtube.com/watch?v=61RCi_5IgEY)
- [Burke Libbey - burke/b](https://github.com/burke/b)
  - [Referencing own Packages / Derivations](https://github.com/burke/b/blob/4e2963f0f56367abc621e995bb00348995590344/etc/nix/darwin.nix#L6)
  - [Anki](https://github.com/burke/b/blob/4e2963f0f56367abc621e995bb00348995590344/src/apps/anki.nix)
  - [Arduino](https://github.com/burke/b/blob/4e2963f0f56367abc621e995bb00348995590344/src/apps/arduino.nix)
  - [Hammerspoon](https://github.com/burke/b/blob/4e2963f0f56367abc621e995bb00348995590344/src/apps/hammerspoon.nix)
- [Bruno Henriques - bphenriques/dotfiles](https://github.com/bphenriques/dotfiles)
  - [Apple Silicon Support PR](https://github.com/bphenriques/dotfiles/pull/7)

### Git

- [Sample of git config file](https://gist.github.com/pksunkara/988716)
- [Handling Multiple Github Accounts on MacOS](https://gist.github.com/Jonalogy/54091c98946cfe4f8cdab2bea79430f9)
- [Multiple github accounts on the same computer?](https://stackoverflow.com/questions/3860112/multiple-github-accounts-on-the-same-computer)
- [Developing with multiple GitHub accounts on one MacBook](https://medium.com/@ibrahimlawal/developing-with-multiple-github-accounts-on-one-macbook-94ff6d4ab9ca)
- [Generating a new GPG key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)
- [Telling Git about your signing key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/telling-git-about-your-signing-key)
- [Is there a way to "autosign" commits in Git with a GPG key?](https://stackoverflow.com/questions/10161198/is-there-a-way-to-autosign-commits-in-git-with-a-gpg-key)
- [Clean up my gnupg keyring?](https://superuser.com/questions/594116/clean-up-my-gnupg-keyring)

### Dotfiles

- [GitHub ❤ `~/`](https://dotfiles.github.io)
- [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles)
  - [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
  - [Everything You Need to Know About Dotfiles](https://laracasts.com/series/guest-spotlight/episodes/1)

### Misc

- [Eizo Monitor Test](https://www.eizo.de/monitortest/)
