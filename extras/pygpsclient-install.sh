#!/bin/bash

# Bash shell script to install PyGPSClient on 64-bit Debian-based
# Linux environments, including Raspberry Pi and Ubuntu.
#
# Change shebang /bin/bash to /bin/zsh if running from zsh shell.
# NB: NOT for use on Windows or MacOS!
#
# Remember to run chmod +x pygpsclient_debian_install.sh to make this script executable.
#
# Full installation instructions:
# https://github.com/semuconsulting/PyGPSClient
#
# Created by semuadmin on 20 Sep 2023.
# 
# exit on error
set -e

PYVER="$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')"

echo "Installed Python version is $PYVER"

echo "PyGPSClient will be installed at /home/"$(logname)"/.pygpsclient/bin"
     
echo "Setting user permissions..."
sudo usermod -a -G tty "$(logname)"

echo "Creating virtual environment..."
cd /home/"$(logname)"
python3 -m venv .pygpsclient
source ".pygpsclient/bin/activate"
python3 -m pip install --upgrade pip pygpsclient
deactivate

echo "Adding directory to PATH..."
BASHPROF1=/home/"$(logname)"/.profile
BASHPROF2=/home/"$(logname)"/.bash_rc
ZSHPROF1=/home/"$(logname)"/.zprofile
ZSHPROF2=/home/"$(logname)"/.zshrc
if test -f $BASHPROF1
then
PROF=$BASHPROF1
elif test -f $BASHPROF2
then
PROF=$BASHPROF2
fi
if test -f $ZSHPROF1
then
PROF=$ZSHPROF1
elif test -f $ZSHPROF2
then
PROF=$ZSHPROF2
fi
sed -i '$a# Path to PyGPSClient executable\nexport PATH="/home/"$(logname)"/.pygpsclient/bin:$PATH"' $PROF
source $PROF # this will throw an error if running as bash script in zsh shell

echo "Installation complete"
