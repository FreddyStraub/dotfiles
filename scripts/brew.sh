#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew if not installed
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    # Make sure we're using the latest Homebrew.
    brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install Git
brew install git

# Install stow
# https://www.gnu.org/software/stow/
brew install stow

# Install Aerospace
# https://github.com/nikitabobko/AeroSpace
brew install --cask nikitabobko/tap/aerospace

# Install nvm
brew install nvm

# Install JankyBordrs
# to use with aerospace
# https://github.com/FelixKratz/JankyBorders
brew tap FelixKratz/formulae
brew install borders