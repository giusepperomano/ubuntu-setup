#! /bin/bash
#
# Post-installation setup script for Ubuntu desktop
# Tested on Ubuntu 17.10
#
umask 022
#
# Add signing keys
#
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
#
# Add repositories
#
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-add-repository -y "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-add-repository -y "deb https://download.sublimetext.com/ apt/stable/"
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y ppa:webupd8team/atom
#sudo apt-add-repository -y ppa:aims/sagemath
#
# Update
#
sudo apt -y update
#
# Install Gnome flashback, basic applications, tools and utilities
#
sudo apt -y install gnome-session-flashback gnome-tweak-tool
sudo apt -y install tcsh whois dump screen p7zip lm-sensors
sudo apt -y install net-tools
sudo apt -y install ubuntu-restricted-extras
sudo apt -y install nfs-common
sudo apt -y install pm-utils
sudo apt -y install adobe-flashplugin
sudo apt -y install duplicity
sudo snap install keepassxc
#
# Install Google Chrome
#
sudo apt -y install google-chrome-stable
#
# Server applications
#
sudo apt -y install openssh-server
sudo apt -y install apache2
sudo apt -y install mysql-server
#
# Sound
#
sudo apt -y install cdrdao brasero sound-juicer
sudo apt -y install audacity id3 easytag
sudo apt -y install spotify-client
#
# Video
#
sudo apt -y install totem-plugins-extra grilo-plugins-0.3
sudo apt -y install mplayer vlc handbrake rtmpdump mkvtoolnix openshot
sudo apt -y ffmpeg
#sudo apt -y install avidemux
#
# Productivity
#
sudo apt -y install liferea calibre gimp mtpaint xsane gtkterm
sudo apt -y install gnucash
sudo apt -y install redshift redshift-gtk
#
# Development tools
#
#sudo apt-get -y install oracle-java7-installer oracle-java7-set-default
#sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
sudo apt -y install git emacs eclipse eclipse-cdt libtool
sudo apt -y install python-pip python-bottle python-pandas python-pymongo python-m3u8
sudo apt -y install python3-pip python3-bottle python3-pandas python3-pymongo python3-bs4
sudo apt -y install python-virtualenv python3-virtualenv
sudo apt -y install r-base r-cran-rjava r-cran-xml r-cran-ggplot2
sudo apt -y install sqlite3
sudo apt -y install nodejs npm
sudo apt -y install golang
sudo apt -y install libapache2-mod-php php-mysql php-gd
sudo apt -y install phpmyadmin
sudo apt -y install qtcreator
sudo apt -y install gedit-plugins gedit-developer-plugins
#sudo apt -y install emacs
sudo apt -y install cmake
sudo apt -y install sublime-text
sudo apt -y install atom
#
# Libraries
#
sudo apt -y install libdbd-mysql
#
# Install libraries for 32bit support (required for Android Studio)
#
sudo dpkg --add-architecture i386
sudo apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386i
sudo apt -y install zlib1g:i386
#
# Word Processing
#
sudo apt -y install texlive texlive-lang-italian texlive-fonts-extra
sudo apt -y install pandoc
#
# Cloud Services
#
sudo apt -y install nautilus-dropbox
#
# Virtualization
#
sudo apt -y install virtualbox virtualbox-guest-additions-iso
sudo apt -y install libvirt-bin qemu qemu-kvm
sudo apt -y install ubuntu-vm-builder
sudo apt -y install virt-manager
sudo apt -y install simh
sudo apt -y install docker.io
#
# Science/Maths
#
sudo apt -y install octave
#sudo apt -y install ipython ipython-notebook
#sudo apt -y install sagemath-upstream-binary
#
# Electronics
#
sudo apt -y install geda gtkwave iverilog
sudo apt -y install fritzing fritzing-parts
#sudo apt -y install eagle
sudo apt -y install kicad
#sudo apt -y install oregano
sudo apt -y lm4flash
#
# Cross compilation
#
sudo apt-get install -y gcc-arm-none-eabi
#
# Amateur Radio Applications
#
sudo apt -y install gnuradio gnuradio-dev gr-osmosdr rtl-sdr librtlsdr-dev
#sudo apt-get -y install libusb-dev libusb-1.0-0-dev
sudo apt -y install gqrx-sdr
sudo apt -y install gpredict
sudo apT -y install chirp
#
# Electronic Music
#
sudo apt -y install pulseaudio-module-jack
sudo apt -y install wsynth-dssi xsynth-dssi hexter
sudo apt -y install ghostess
sudo apt -y install bristol
sudo apt -y install rosegarden timidity
sudo apt -y install puredata
#
# Games
#
sudo apt -y install flightgear
#
# Android Studio
#
wget -O /tmp/android-studio-ide.zip https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
sudo unzip -xd /opt /tmp/android-studio-ide.zip
rm -f /tmp/android-studio-ide.zip
#
# Arduino
#
wget -O /tmp/arduino.tar.xz "http://arduino.cc/download.php?f=/arduino-1.8.5-linux64.tar.xz"
xzcat /tmp/arduino.tar.xz | sudo tar -xf - -C /opt
sudo ln -s /opt/arduino-1.8.5 /opt/arduino
rm -f /tmp/arduino.tar.xz
#
# Energia
#
wget -O /tmp/energia.tar.xz "http://energia.nu/downloads/downloadv4.php?file=energia-1.6.10E18-linux64.tar.xz"
xzcat /tmp/energia.tar.xz | sudo tar -xf - -C /opt
sudo ln -s /opt/energia-1.6.10E18 /opt/energia
rm -f /tmp/energia.tar.xz
#
# Processing
#
wget -O /tmp/processing.tar.gz "http://download.processing.org/processing-3.3.6-linux64.tgz"
zcat /tmp/processing.tar.gz | sudo tar -xf - -C /opt
sudo ln -s /opt/processing-3.3.6 /opt/processing
rm -f /tmp/processing.tar.gz
#
# Altera Quartus
#

#
#
#
sudo apt -y clean
#
# RTL28xx for SDR
#
echo "blacklist dvb_usb_rtl28xxu" | sudo tee /etc/modprobe.d/blacklist-rtl28xx.conf
#
#
#
gsettings set org.gnome.gnome-panel.layout toplevel-id-list "['top-panel']"
gsettings set org.gnome.desktop.interface clock-show-date true
#gsettings set com.canonical.indicator.session show-real-name-on-panel true
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
