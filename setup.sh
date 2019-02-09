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
sudo apt -y install exfat-fuse exfat-utils
sudo apt -y install keepassxc
#sudo snap install keepassxc
sudo apt -y install mosquitto-clients
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
sudo apt -y install cdrdao brasero sound-juicer alsa-oss
sudo apt -y install audacity id3 easytag
sudo apt -y install spotify-client
#
# Video
#
sudo apt -y install totem-plugins-extra grilo-plugins-0.3
sudo apt -y install mplayer vlc handbrake rtmpdump mkvtoolnix openshot
sudo apt -y install ffmpeg
sudo apt -y install w-scan
#sudo apt -y install avidemux
#
# Productivity
#
sudo apt -y install liferea calibre gimp mtpaint xsane gtkterm exif
sudo apt -y install gnucash
sudo apt -y install redshift redshift-gtk
sudo apt -y install glabels
sudo apt -y install gscan2pdf
#
# Development tools
#
#sudo apt-get -y install oracle-java7-installer oracle-java7-set-default
#sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
sudo apt -y install git emacs eclipse eclipse-cdt libtool
sudo apt -y install python-pip python-bottle python-pandas python-pymongo python-m3u8
sudo apt -y install python3-pip python3-bottle python3-pandas python3-pymongo python3-bs4
sudo apt -y install python-virtualenv python3-virtualenv
sudo apt -y install python-configargparse python3-configargparse
sudo apt -y install r-base r-cran-rjava r-cran-xml r-cran-ggplot2
sudo apt -y install sqlite3
sudo apt -y install nodejs npm
sudo apt -y install golang
sudo apt -y install libapache2-mod-php php-mysql php-gd
sudo apt -y install phpmyadmin
sudo apt -y install qtcreator
sudo apt -y install gedit-plugins gedit-developer-plugins
sudo apt -y install cmake
sudo apt -y install sublime-text
sudo apt -y install atom
pip3 install datascience
sudo apt -y install qtbase5-dev qt5-qmake qt5-default
sudo apt -y install qtdeclarative5-dev qtmultimedia5-dev
sudo apt -y install qml-module-qtquick-controls2 qml-module-qtquick-dialogs qml-module-qtcharts qml-module-qt-labs-settings
#
# Libraries
#
sudo apt -y install libdbd-mysql
sudo apt -y install libfaad-dev libsndfile1-dev libsamplerate0-dev
sudo apt -y install libqt5opengl5 libqwt-qt5-dev libqt5charts5-dev
# Prerequisites for Grive2 compilation
sudo apt -y install libgcrypt20-dev libcurl4-openssl-dev libyajl-dev
#
# Install libraries for 32bit support (required for Android Studio)
#
sudo dpkg --add-architecture i386
sudo apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386i
sudo apt -y install zlib1g:i386
#
# Word Processing
#
sudo apt -y install texlive texlive-extra-utils
sudo apt -y install texlive-formats-extra texlive-plain-extra texlive-publishers texlive-publishers-doc texlive-science texlive-science-doc
sudo apt -y install texlive-fonts-extra
sudo apt -y install texlive-lang-italian
sudo apt -y install texlive-xetex texlive-luatex
sudo apt -y install texlive-metapost
sudo apt -y install pandoc
sudo apt -y install fonts-mplus
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
sudo apt -y install jupyter-notebook jupyter-core python-ipykernel
sudo apt -y install sagemath
#
# Electronics
#
sudo apt -y install geda gtkwave iverilog pcb
sudo apt -y install fritzing fritzing-parts
#sudo apt -y install eagle
sudo apt -y install kicad
#sudo apt -y install oregano
sudo apt -y lm4flash
#
# Cross compilation
#
#sudo apt -y install gcc-arm-none-eabi
sudo apt -y install openocd
#
# Amateur Radio Applications
#
sudo apt -y install gnuradio gnuradio-dev gr-osmosdr rtl-sdr librtlsdr-dev
sudo apt -y install libboost-all-dev
#sudo apt-get -y install libusb-dev libusb-1.0-0-dev
sudo apt -y install gqrx-sdr
sudo apt -y install gpredict
sudo apt -y install chirp
sudo apt -y install qsstv
#
# Electronic Music
#
sudo apt -y install pulseaudio-module-jack
sudo apt -y install wsynth-dssi xsynth-dssi hexter
sudo apt -y install ghostess
sudo apt -y install bristol
sudo apt -y install rosegarden timidity
sudo apt -y install puredata
sudo apt -y install zynaddsubfx
#
# Games
#
sudo apt -y install flightgear
#
# GCC 7.3.1 for ARM
#
wget -O /tmp/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 "https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2?revision=bc2c96c0-14b5-4bb4-9f18-bceb4050fee7?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,7-2018-q2-update"
bzcat /tmp/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 | sudo tar -xf - -C /opt 
rm -f /tmp/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
#
# Android Studio
#
wget -O /tmp/android-studio-ide.zip https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip
sudo unzip -xd /opt /tmp/android-studio-ide.zip
rm -f /tmp/android-studio-ide.zip
#
# Arduino IDE
#
wget -O /tmp/arduino.tar.xz "http://arduino.cc/download.php?f=/arduino-1.8.5-linux64.tar.xz"
xzcat /tmp/arduino.tar.xz | sudo tar -xf - -C /opt
sudo ln -s /opt/arduino-1.8.5 /opt/arduino
rm -f /tmp/arduino.tar.xz
#
# Energia IDE
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
# Fonts
#
fonts/fonts_setup.sh
