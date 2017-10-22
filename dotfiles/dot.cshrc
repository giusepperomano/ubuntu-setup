#! /bin/csh
set path=( /bin /usr/bin /sbin /usr/sbin /usr/local/bin /usr/local/sbin /usr/games . ~/bin ~/Tools/bin )
if ( $?version ) then
   set prompt="%M:%~> "
else
   set prompt="`hostname -s`% "
endif

umask 022

set history=200
set notify
set nobeep

unset autologout

setenv ARDUINO_DIR /opt/arduino
setenv ARDMK_DIR /home/joe/Work/Arduino/Arduino-Makefile

alias ls ls -CF
alias rm rm -i
