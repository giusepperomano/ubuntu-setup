#! /bin/bash
#
#
# Setup script for my Ubuntu desktop computer
#
sudo apt-get install gnome-session-fallback
sudo apt-get tcsh
# Begin: Install libraries for 32 bit support
sudo dpkg --add-architecture i386
sudo apt-get update
sudo install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo install zlib1g:i386
# End: Install libraries for 32 bit support
sudo dpkg -i google-chrome-stable_current_i386.deb

#
# Utilities and tools
#
sudo apt-get install liferea
sudo apt-get install calibre
sudo apt-get install lm-sensors conky
#
# Multimedia
#
sudo apt-get install ubuntu-restricted-extras
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get install mplayer avidemux handbrake
#
# Development
#
sudo apt-get install octave git emacs eclipse eclipse-cdt libtool
sudo apt-get install python-pip python-bottle python-pandas python-pymongo
sudo apt-get install python3-pip python3-bottle python3-pandas python3-pymongo
sudo apt-get install python-virtualenv
sudo apt-get install ipython ipython-notebook
sudo apt-get install r-base r-cran-rjava r-cran-xml r-cran-ggplot2
sudo apt-get install gnucash
sudo apt-get install texlive texlive-lang-italian texlive-fonts-extra
sudo apt-get install sqlite3
sudo apt-get install nodejs npm
sudo apt-get install golang
#
# Libraries
#
sudo apt-get install libssh2-php libjpeg62 libcurl4-openssl-dev pslib-dev libjsoncpp-dev
sudo apt-get install libcrypto++-dev libav-tools libglib2.0-dev libsqlite3-dev
sudo apt-get install libpango1.0-dev libsoup2.4-dev libpeas-dev libxslt1-dev
sudo apt-get install libjson-glib-dev libwebkitgtk-3.0-dev
#
# Cloud Services
#
# ** ADD DROPBOX HERE ***
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install grive
sudo add-apt-repository ppa:paolorotolo/copy
sudo apt-get update
sudo apt-get install copy
sudo /opt/copy-client/CopyAgent -installOverlay
#
# Virtualization
#
sudo apt-get install virtualbox
sudo apt-get install libvirt-bin
sudo apt-get install qemu-kvm
sudo apt-get install ubuntu-vm-builder bridge-utils
sudo apt-get install virt-manager
sudo dpkg -i /tmp/vagrant_1.8.1_x86_64.deb
sudo apt-get install simh
#
# Server applications
#
sudo apt-get install openssh-server
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo apt-get install mongodb
#
# Electronics
#
sudo apt-get install geda
sudo apt-get install gtkwave
sudo apt-get install iverilog
sudo apt-get install fritzing
sudo apt-get install gcc-arm-none-eabi
sudo apt-get install arduino arduino-mk
sudo apt-get install eagle
#
# Amateur Radio Applications
#
sudo apt-get install gnuradio gnuradio-dev gr-osmosdr rtl-sdr librtlsdr-dev
sudo apt-get install libusb-dev libusb-1.0-0-dev
sudo apt-get install gqrx-sdr
sudo apt-get install gpredict
sudo apt-get install chirp

#
# Sublime Text 2
#

#
# Sublime Text 3
#

#
# Atom editor
#

#
# Android SDK
#

#
# Android Studio
#

#
# Energia
#

#
# Processing
#

#
# Wordpress
#

#
# Setup dotfiles in home directory
#
cp dotfiles/dot.profile ~/.profile
cp dotfiles/dot.cshrc ~/.cshrc
chmod 644 ~/.profile ~/.cshrc
