#!/usr/bin/env bash

# Fetch the newest version of homebrew
brew update

# Upgrade outdated casks and formulae
brew upgrade

# Install binaries
brew install autojump
brew install awscli
brew install dockutil
brew install gh
brew install git
brew install postgresql
brew install starship
brew install terraform
brew install tree
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Install macOS applications
brew install --cask 1password
brew install --cask docker
brew install --cask figma
brew install --cask firefox
brew install --cask github
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask loom
brew install --cask notion
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask tableplus
brew install --cask visual-studio-code
brew install --cask zoom

# Install fonts
brew tap homebrew/cask-fonts
brew install font-input

# Remove stale lock files and outdated downloads
brew cleanup