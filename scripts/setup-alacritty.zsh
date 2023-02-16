#!/usr/bin/env zsh

echo ""
echo "--- Starting Alacritty Setup ---"

# TODO: Change once Alacritty updated the icon.
# See: https://github.com/hmarr/dotfiles/blob/288b52eeec8a30e086dbb9ed0063c4b964b6a421/bin/update-alacritty-icon.sh

echo "Updating icon..."
icon_path="/Applications/Alacritty.app/Contents/Resources/alacritty.icns"

if [ ! -f "$icon_path" ]; then
  echo "Can't find existing Alacritty icon..."
  exit 1
fi

if ls /Applications/Alacritty.app/Contents/Resources/*.backup-* >/dev/null 2>&1; then
  echo "Icon already updated..."
  exit 0
fi

echo "Backing up existing icon..."
hash="$(sha3sum $icon_path | head -c 10)"
mv "$icon_path" "$icon_path.backup-$hash"

echo "Replacing old icon with new one..."
cp "$DOTFILES/alacritty/alacritty.icns" "$icon_path"

touch /Applications/Alacritty.app
killall Finder
killall Dock
