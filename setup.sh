#! /bin/bash
#
# Setup script for Ubuntu 14.04 desktop computer
#
umask 022
#
# Add repositories
#
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free"
#
#
#
sudo apt-get -y --force-yes update
#
#
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
sudo apt-get install gimp
sudo apt-get install mtpaint
sudo apt-get install dump
sudo apt-get install whois
sudo apt-get install screen
sudo apt-get install lm-sensors conky
sudo apt-get install gtkterm
sudo apt-get install xsane
sudo apt-get install unrar p7zip
#
# Server applications
#
sudo apt-get install openssh-server
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

#
# Sound
#
sudo apt-get install cdrdao id3 easytag puddletag
sudo apt-get install sound-juicer
#
# Video
#
sudo apt-get install totem-plugins-extras
sudo apt-get install grilo-plugins-0.2
sudo apt-get install ubuntu-restricted-extras
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get install mplayer vlc avidemux handbrake rtmpdump mkvtoolnix
sudo apt-get install xmltv-util
#
# Software development
#
sudo apt-get install octave git emacs eclipse eclipse-cdt libtool
sudo apt-get install python-pip python-bottle python-pandas python-pymongo
sudo apt-get install python3-pip python3-bottle python3-pandas python3-pymongo
sudo apt-get install python3-bs4
sudo apt-get install python-virtualenv
sudo apt-get install ipython ipython-notebook
sudo apt-get install r-base r-cran-rjava r-cran-xml r-cran-ggplot2
sudo apt-get install gnucash
sudo apt-get install texlive texlive-lang-italian texlive-fonts-extra
sudo apt-get install sqlite3
sudo apt-get install nodejs npm
sudo apt-get install golang
sudo apt-get install libapache2-mod-php5 php5-mysql php5-gd
sudo apt-get install phpmyadmin
sudo apt-get install qtcreator
sudo apt-get install gedit-plugins gedit-developer-plugins
sudo apt-get install emacs
sudo apt-get install cmake
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
sudo apt-get install qemu qemu-kvm
sudo apt-get install ubuntu-vm-builder bridge-utils
sudo apt-get install virt-manager
sudo dpkg -i /tmp/vagrant_1.8.1_x86_64.deb
sudo apt-get install simh
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
sudo apt-get install xastir
#
# Electronic Music
#
sudo apt-get install ghostess
#
# Games
#
sudo apt-get install flightgear
sudo apt-get install wsynth-dssi xsynth-dssi hexter
sudo apt-get install pulseaudio-module-jack
sudo apt-get install bristol
#
# Sublime Text 2
#
#wget https://download.sublimetext.com/Sublime%20Text%202.0.2%20x64.tar.bz2 -O /tmp/sublime2.tar.bz2
#sudo mkdir /opt/SublimeText2
#bzcat /tmp/sublime2.tar.bz2 | sudo tar -xv -C /opt/SublimeText2 -f -
#
# Sublime Text 3
#
wget https://download.sublimetext.com/sublime_text_3_build_3103_x64.tar.bz2 -O /tmp/sublime3.tar.bz2
sudo mkdir /opt/sublime_text_3
bzcat /tmp/sublime2.tar.bz2 | sudo tar -xv -C /opt/sublime_text_3 -f -
wget https://packagecontrol.io/Package%20Control.sublime-package -O "/tmp/Package Control.sublime-package"
mkdir ~/.config/sublime-text-3
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
#
#
#
mkdir ~/.fonts
cp -r fonts ~/.fonts
sudo fc-cache -f -v
