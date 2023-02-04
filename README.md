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

### Exporting Keys

- `ls -lisa ~/.ssh`
- `mkdir -p ~/Downloads/keys`
- `cp ~/.ssh/id_rsa ~/Downloads/keys`
- `cp ~/.ssh/id_rsa.pub ~/Downloads/keys`
- `cp ~/.ssh/github-pmuens ~/Downloads/keys`
- `cp ~/.ssh/github-pmuens.pub ~/Downloads/keys`
- Repeat procedure for other keys
- `gpg --list-secret-keys --keyid-format=long`
- `gpg --export -a "Philipp Muens" > ~/Downloads/keys/philipp.muens.public.key`
- `gpg --export-secret-key -a "Philipp Muens" > ~/Downloads/keys/philipp.muens.private.key`
- Repeat procedure for other keys
- Zip and encrypt `keys` directory
- Move Zip file to storage device
- Remove `keys` directory

### Re-installing macOS

Go through the checklist above. Double check that everything is backed up.

Follow [this guide](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version. Note that since macOS Monterey there's the option to [restore the Mac to factory settings](https://support.apple.com/en-us/HT212749).

### During macOS Installation

- Change language to English (US)
- Change the computer's account name to `philipp`
- Change the computer's full name to `Philipp Muens`

## Setup

1. Install [Nix](https://nixos.org/guides/install-nix.html)
2. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
   1. Accept all prompts
3. Install [home-manager](https://github.com/nix-community/home-manager)
   1. Use the standalone installation
   2. Follow Nixpkgs `master` / unstable channel
4. Clone this repo to `~/dotfiles`
5. `rm ~/.nixpkgs/darwin-configuration.nix`
6. `ln -sf ~/dotfiles/darwin.nix ~/.nixpkgs/darwin-configuration.nix`
7. `rm ~/.config/nixpkgs/home.nix`
8. `ln -sf ~/dotfiles/home.nix ~/.config/nixpkgs/home.nix`
9. Update [`darwin.nix`](./darwin.nix) and [`home.nix`](./home.nix) with custom config (optional)
   1. E.g. add additional `programs.ssh` and `programs.git` config in [`home.nix`](./home.nix)
10. `darwin-rebuild switch`
11. `home-manager switch`
12. `nixfmt ~/dotfiles/darwin.nix`
13. `nixfmt ~/dotfiles/home.nix`
14. `mkdir -p ~/code/pmuens/pmuens`
15. Repeat procedure for other users
16. `git config --list`
17. Unzip and move `keys` directory to `~/Downloads`
18. `cp ~/Downloads/keys/id_rsa ~/.ssh`
19. `cp ~/Downloads/keys/id_rsa.pub ~/.ssh`
20. `cp ~/Downloads/keys/github-pmuens ~/.ssh`
21. `cp ~/Downloads/keys/github-pmuens.pub ~/.ssh`
22. Repeat procedure for other keys
23. `ls -lisa ~/.ssh`
24. `gpg --import ~/Downloads/keys/philipp.muens.public.key`
25. `gpg --import ~/Downloads/keys/philipp.muens.private.key`
26. Repeat procedure for other keys
27. `gpg --list-secret-keys --keyid-format=long`
28. Remove `keys` directory
29. `cd ~/dotfiles` and update the remote Git URL via `git remote set-url origin <url>`

## Post Setup

- macOS
  - Open Launchpad -> Move Installed Applications to Separate Window / Space
  - Right Click on Desktop -> Sort By -> Snap to Grid
  - System Preferences -> Language & Region -> Preferred languages -> [English (US) - Primary] and [German (Germany)]
  - System Preferences -> [Change Profile Picture via Drag and Drop]
  - System Preferences -> Touch ID -> [Rename Finger]
  - System Preferences -> Siri -> Enable Ask Siri -> [Uncheck]
  - System Preferences -> Desktop & Screen Saver -> "Screen Saver" Tab -> Show screen saver after -> [Uncheck]
  - System Preferences -> Trackpad -> "Point & Click" Tab -> Click -> Firm
  - System Preferences -> Trackpad -> "Point & Click" Tab -> Tab to click -> [Check]
  - System Preferences -> Battery -> Battery -> Turn display off after -> Never
  - System Preferences -> Battery -> Power Adapter -> Turn display off after -> Never
  - System Preferences -> Security & Privacy -> "General" Tab -> Require password [immediately] after sleep or screen saver begins
  - System Preferences -> Mission Control -> Automatically rearrange Spaces based on most recent use -> [Uncheck]
  - System Preferences -> Sound -> Show Sound in menu bar -> always
  - System Preferences -> Displays -> Night Shift... -> Schedule -> Sunset to Sunrise
  - System Preferences -> Internet Accounts -> [Activate E-Mail Accounts]
  - System Preferences -> Notifications & Focus -> [Configure Individual App Notifications]
  - System Preferences -> Bluetooth -> Show Bluetooth in menu bar -> [Check]
  - System Preferences -> Network -> Wi-Fi -> Advanced -> "DNS" Tab -> [Setup CloudFlare DNS](https://developers.cloudflare.com/1.1.1.1/setup-1.1.1.1/macos)
  - System Preferences -> Sharing -> Computer Name -> [Update]
  - System Preferences -> Sharing -> Computer Name -> Edit -> [Update]
  - System Preferences -> Apple ID -> Optimize Mac Storage -> [Uncheck]
- AdGuard for Safari
  - General -> Launch AdGuard for Safari at Login -> [Check]
  - Filters -> Annoyances -> [Check]
  - Filters -> Annoyances -> Fanboy's Annoyances
  - Filters -> Annoyances -> I don't care about cookies
  - Filters -> Language-specific -> [Check]
  - Filters -> Language-specific -> AdGuard German filter
- Amphetamine
  - Don't show this window again -> [Check]
  - Preferences —> General —> Launch Amphetamine at login -> [Check]
  - Preferences —> General —> Start session when Amphetamine launches -> [Check]
  - Preferences —> General —> Start session after waking from sleep -> [Check]
  - Preferences —> General —> Reduce motion -> [Check]
  - Preferences —> Appearance —> Menu Bar Image -> [Pill (outline)]
  - Preferences —> Appearance —> Use low opacity when inactive
  - Click on Icon -> Start New Session -> Indefinitely
- Brave
  - Settings -> Appearance -> Use wide address bar -> [Check]
  - Settings -> Appearance -> Show Brave Rewards icon in address bar -> [Uncheck]
  - Settings -> New tab page -> New tab pages shows -> Blank page
  - Settings -> Privacy and security -> Automatically send daily usage ping to Brave -> [Uncheck]
  - Settings -> Sync -> Start using sync -> [Sync Device(s)]
  - Settings -> Sync -> Manage your synced devices -> Sync Settings -> Sync everything -> [Check]
  - Settings -> Search engine -> Search engine used in the address bar -> Google
  - Settings -> Auto-fill -> Passwords -> Offer to save passwords -> [Uncheck]
  - Settings -> Auto-fill -> Passwords -> Auto Sign-in -> [Uncheck]
  - Settings -> Auto-fill -> Payment methods -> Save and fill payment methods -> [Uncheck]
  - Settings -> Auto-fill -> Payment methods -> Allow sites to check if you have payment methods saved -> [Uncheck]
  - Settings -> Auto-fill -> Addresses and more -> Save and fill addresses -> [Uncheck]
  - Settings -> Help tips -> Show warning before quitting with CMD + Q -> [Check]
- Finder
  - Preferences -> General -> New Finder windows show -> iCloud Drive
  - Preferences -> Tags -> [Check Tags]
  - Preferences -> Sidebar -> Favorites -> [Home Directory] -> [Check]
  - [Finder Window] -> View -> As List -> [Repeat for all Sidebar Elements]
  - [Finder Window] -> [Resize Window]
  - [Finder Window] -> [Sort by "Name" Ascending]
- Firefox
  - Preferences -> Sync -> Sign in to sync
  - Preferences -> General -> Startup -> Open previous windows and tabs -> [Check]
  - Preferences -> General -> Startup -> Always check if Firefox is your default browser -> [Uncheck]
  - Preferences -> General -> Tabs -> Confirm before quitting with CMD + Q -> [Check]
  - Preferences -> General -> Language -> English (United States)
  - Preferences -> Home -> New Windows and Tabs -> Homepage and new windows -> Blank Page
  - Preferences -> Home -> New Windows and Tabs -> New tabs -> Blank Page
  - Preferences -> Privacy & Security -> Firefox Data Collection and Use -> [Uncheck all]
  - Right Click next to Search Bar -> Customize Toolbar -> [Remove "Flexible Space"]
  - Right Click next to Search Bar -> Customize Toolbar -> [Remove "Save to Pocket"]
  - Right Click on Extension -> Remove from Toolbar
  - Open `about:config` -> Accept the Risk and Continue -> `extensions.pocket.enabled` -> [Click on Toggle]
- Flycut
  - Do not show this message again -> [Check]
  - System Preferences -> Security & Privacy -> "Privacy" Tab -> "Accessibility" Row -> [Add Flycut App]
  - Preferences -> General -> Launch Flycut on login
  - Preferences -> General -> Appearance -> Menu item icon -> Black scissors
- Mail
  - Preferences -> General -> Nes messages sound -> None
- NetNewsWire
  - Preferences -> Accounts -> [Deactivate "On My Mac"]
  - Preferences -> Accounts -> [Add and Activate iCloud]
- Rectangle
  - System Preferences -> Security & Privacy -> "Privacy" Tab -> "Accessibility" Row -> [Add Rectangle App]
  - Preferences -> Check for updates automatically -> [Check]
- Safari
  - Preferences -> General -> Open "safe" files after downloading -> [Uncheck]
  - Preferences -> General -> Safari opens with -> All windows from last session
  - Preferences -> General -> New windows open with -> Empty Page
  - Preferences -> General -> New tabs open with -> Empty Page
  - Preferences -> General -> Homepage -> [Remove Content]
  - Preferences -> Advanced -> Show full website address -> [Check]
  - Preferences -> AutoFill -> AutoFill web forms -> [Uncheck all]
  - View -> Show Status Bar
  - View -> Customize Toolbar -> [Drag iCloud Tabs icon into Toolbar]
  - View -> Customize Toolbar -> [Remove Flexible Space from Toolbar]
  - Sign In to Web Apps
- Terminal
  - Preferences -> Profiles -> Pro -> [Set as Default]
  - Preferences -> Profiles -> "Window" Tab -> Window Size -> Columns: 215
  - Preferences -> Profiles -> "Window" Tab -> Window Size -> Rows: 50
  - Preferences -> Profiles -> "Advanced" Tab -> Audible bell -> [Uncheck]
- Things
  - Preferences -> Things Cloud -> Turn On -> [Log In]
  - Preferences -> Calendar -> Show Calendar Events in Today and Upcoming lists -> [Check]
- Visual Studio Code
  - Show welcome page on startup -> [Uncheck]
  - Preferences -> Extensions -> [Install Extensions]
    - `formulahendry.auto-rename-tag`
    - `zhuangtongfa.material-theme`
    - `dbaeumer.vscode-eslint`
    - `file-icons.file-icons`
    - `eamodio.gitlens`
    - `vadimcn.vscode-lldb`
    - `prisma.prisma`
    - `esbenp.prettier-vscode`
    - `bbenoist.nix`
    - `ms-python.python`
    - `ms-python.vscode-pylance`
    - `rangav.vscode-thunder-client`
    - `standard.vscode-standard`
    - `mhutchie.git-graph`
    - `tombonnike.vscode-status-bar-format-toggle`
    - `editorconfig.editorconfig`
    - `streetsidesoftware.code-spell-checker`
    - `matklad.rust-analyzer`
    - `juanblanco.solidity`
    - `be5invis.toml`
    - `visualstudioexptteam.vscodeintellicode`
    - `yzhang.markdown-all-in-one`
    - `golang.go`
    - `bradlc.vscode-tailwindcss`
    - `jgclark.vscode-todo-highlight`
    - `tiehuis.zig`
    - `augusterame.zls-vscode`
    - `alygin.vscode-tlaplus`
    - `starkware.cairo`
  - Right Click on Explorer Pane —> Open Editors —> [Uncheck]
  - CMD + Shift + P —> "Shell Command: Install 'code' command in PATH"
  - CMD + Shift + P —> "Configure Display Language" —> en
  - Preferences [Search] -> `Explorer: Auto Reveal` -> false
  - Preferences [Search] -> `Editor: Render Whitespace` -> all
  - Preferences [Search] -> `Editor: Scroll Beyond Last Line` -> [Uncheck]
  - Preferences [Search] -> `Editor: Accept Suggestions On Enter` -> off
  - Preferences [Search] -> `Files: Insert Final Newline` -> [Check]
  - Preferences [Search] -> `Files: Trim Trailing Whitespace` -> [Check]
  - Preferences [Search] -> `Editor: Format On Save` -> [Check]
  - Preferences [Search] -> `Editor: Format On Paste` -> [Check]
  - Preferences [Search] -> `Editor: Tab Size` -> 2
  - Preferences [Search] -> `Editor: Default Formatter` -> Prettier - Code formatter
  - Preferences [Search] -> `Windows: Open Folders In New Window` -> on
  - Preferences [Search] -> `Windows: New Window Dimensions` -> maximized

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
- [Brave](https://brave.com)
- [Docker](https://docker.com)
- [Exporter](https://apps.apple.com/app/exporter/id1099120373)
- [Firefox](https://mozilla.org/firefox)
- [Flycut](https://apps.apple.com/app/flycut-clipboard-manager/id442160987)
- [GitUp](https://gitup.co)
- [Keynote](https://apple.com/keynote)
- [Noizio](https://noiz.io)
- [NetNewsWire](https://netnewswire.com)
- [Numbers](https://apple.com/numbers)
- [Pages](https://apple.com/pages)
- [Rectangle](https://rectangleapp.com)
- [Signal](https://signal.org)
- [Spotify](https://spotify.com)
- [TablePlus](https://tableplus.com)
- [Telegram](https://apps.apple.com/app/telegram/id747648890)
- [The Unarchiver](https://theunarchiver.com)
- [Things](https://culturedcode.com/things)
- [Visual Studio Code](https://code.visualstudio.com)
- [VLC](https://videolan.org/vlc)
- [WireGuard](https://www.wireguard.com)

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
