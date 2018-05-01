#! /bin/bash
#
#
#
mkdir ~/.fonts
#
# Monaco
#
mkdir ~/.fonts/Monaco
wget -O /tmp/monaco.zip https://github.com/todylu/monaco.ttf/archive/master.zip
unzip -xd /tmp /tmp/monaco.zip
cp /tmp/monaco.ttf-master/* ~/.fonts/Monaco
rm -rf /tmp/monaco.zip /tmp/monaco.ttf-master
#
# Hermit
#
mkdir ~/.fonts/Hermit
wget -O /tmp/hermit.tar.gz https://pcaro.es/d/otf-hermit-1.21.tar.gz
tar -C ~/.fonts/Hermit -xzf /tmp/hermit.tar.gz
rm -f /tmp/hermit.tar.gz
#
# Google Fonts
#
mkdir ~/.fonts/Google
wget -O /tmp/googlefonts.zip wget https://github.com/google/fonts/archive/master.zip
wget -O /tmp /tmp/googlefonts.zip
cp -r /tmp/fonts-master/ofl/* ~/.fonts/Google
rm -rf /tmp/googlefonts.zip /tmp/fonts-master

#
# Mozilla Fira Sans
#
mkdir ~/.fonts/FiraSans
wget -O /tmp/fira.zip https://github.com/mozilla/Fira/archive/4.202.zip
unzip -xd /tmp /tmp/fira.zip
cp /tmp/Fira-4.202/ttf/* ~/.fonts/FiraSans
cp /tmp/Fira-4.202/otf/Fira* ~/.fonts/FiraSans
rm -rf /tmp/fira.zip /tmp/Fira-4.202
#
#
#
sudo fc-cache -f -v

