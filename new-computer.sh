#!/bin/bash

# tiny bash script to install everything I need on a new macbook

# Install Homebrew
curl -sSLf -o homebrew-installer https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
bash homebrew-installer
rm homebrew-installer
echo '$PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"' >> ~/.bashrc

echo Homebrew should be installed now. Installing packages...

# Install Homebrew packages
brew install \
 git \
 google-chrome \
 keeper-password-manager \
 iterm2 \
 visual-studio-code \
 discord \
 signal \
 spotify \
 microsoft-outlook \
 pyenv \

# Setup Pyenv for zsh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init - zsh)"' >> ~/.zshrc

brew install openssl readline sqlite3 xz zlib tcl-tk@8 libb2

# Install Python 3.10 and configure it as global
pyenv install 3.10

pyenv global 3.10

# Refresh the shell, because apparently thats needed
exec "$SHELL"

# Update pip
pip install --upgrade pip