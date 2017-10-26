#! /bin/sh
mkdir -p "$HOME/.config/sublime-text-3/Installed Packages"
mkdir -p $HOME/.config/sublime-text-3/Packages/User
#
# Download and install Package Control
#
wget -O "/tmp/Package Control.sublime-package" "https://packagecontrol.io/Package Control.sublime-package"
cp "/tmp/Package Control.sublime-package" "$HOME/.config/sublime-text-3/Installed Packages"
rm -f "/tmp/Package Control.sublime-package"
#
#
#
cp "Package Control.sublime-settings" $HOME/.config/sublime-text-3/Packages/User
cp Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User
cp Python.sublime-settings $HOME/.config/sublime-text-3/Packages/User
