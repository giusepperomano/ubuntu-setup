#! /bin/bash
#
# Post-installation setup script for Ubuntu 14.04 desktop computer
#
umask 022
#
# Add repositories
#
sudo add-apt-repository -y "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse"
sudo add-apt-repository -y ppa:ubuntu-lxc/lxd-stable
sudo apt-add-repository -y ppa:aims/sagemath
#
# Add signing keys
#
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA312927
#
#
#
sudo dpkg --add-architecture i386
#
# Update
#
sudo apt-get -y --force-yes update
#
# Install libraries for 32 bit support
#
sudo apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get -y install zlib1g:i386
#
# Install Gnome flashback, basic applications, tools and utilities
#
sudo apt-get -y install gnome-session-flashback
sudo apt-get -y install google-chrome-stable
sudo apt-get -y install tcsh dump whois screen p7zip
sudo apt-get -y install lm-sensors conky
sudo apt-get -y install liferea calibre gimp mtpaint xsane gtkterm
#
# Server applications
#
sudo apt-get -y install openssh-server
sudo apt-get -y install apache2
#sudo apt-get -y install mysql-server *** Asks for root password ***
sudo apt-get -y install mongodb-org
#
# Sound
#
sudo apt-get -y install cdrdao id3 easytag puddletag sound-juicer
sudo apt-get -y install spotify-client
#
# Video
#
sudo apt-get -y install totem-plugins-extra grilo-plugins-0.2
sudo apt-get -y install ubuntu-restricted-extras
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get -y install mplayer vlc avidemux handbrake rtmpdump mkvtoolnix
sudo apt-get -y install xmltv-util
#
# Development tools
#
sudo apt-get -y install oracle-java7-installer oracle-java7-set-default
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
sudo apt-get -y install octave git emacs eclipse eclipse-cdt libtool
sudo apt-get -y install python-pip python-bottle python-pandas python-pymongo
sudo apt-get -y install python3-pip python3-bottle python3-pandas python3-pymongo
sudo apt-get -y install python3-bs4
sudo apt-get -y install python-virtualenv
sudo apt-get -y install ipython ipython-notebook
sudo apt-get -y install r-base r-cran-rjava r-cran-xml r-cran-ggplot2
sudo apt-get -y install gnucash
sudo apt-get -y install texlive texlive-lang-italian texlive-fonts-extra
sudo apt-get -y install sqlite3
sudo apt-get -y install nodejs npm
sudo apt-get -y install golang
sudo apt-get -y install libapache2-mod-php5 php5-mysql php5-gd
sudo apt-get -y install phpmyadmin
sudo apt-get -y install qtcreator
sudo apt-get -y install gedit-plugins gedit-developer-plugins
sudo apt-get -y install emacs
sudo apt-get -y install cmake
sudo apt-get -y install sagemath-upstream-binary
#
# Libraries
#
sudo apt-get -y install libssh2-php libjpeg62 libcurl4-openssl-dev pslib-dev libjsoncpp-dev
sudo apt-get -y install libcrypto++-dev libav-tools libglib2.0-dev libsqlite3-dev
sudo apt-get -y install libpango1.0-dev libsoup2.4-dev libpeas-dev libxslt1-dev
sudo apt-get -y install libjson-glib-dev libwebkitgtk-3.0-dev
sudo apt-get -y install libsdl2-ttf-2.0-0
#
# Cloud Services
#
# ** ADD DROPBOX HERE ***
sudo apt-get install dropbox
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install grive
#sudo add-apt-repository ppa:paolorotolo/copy
#sudo apt-get update
#sudo apt-get install copy
#sudo /opt/copy-client/CopyAgent -installOverlay
#
# Virtualization
#
sudo apt-get -y install virtualbox virtualbox-guest-additions-iso
sudo apt-get install libvirt-bin
sudo apt-get install qemu qemu-kvm
sudo apt-get install ubuntu-vm-builder bridge-utils
sudo apt-get install virt-manager
sudo apt-get install openxenmanager
sudo apt-get -y install lxd
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
wget https://atom.io/download/deb -O /tmp/atom-amd64.deb
sudo dpkg -i /tmp/atom-amd64.deb
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
#
#
sudo apt-get -y clean
#
#
#
gsettings set org.gnome.gnome-panel.layout toplevel-id-list "['top-panel-0']"
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
