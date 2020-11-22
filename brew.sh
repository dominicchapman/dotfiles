#!/usr/bin/env bash

# fetch the newest version of homebrew
brew update

# upgrade outdated casks and formulae
brew upgrade

# install binaries
brew install autojump
brew install awscli
brew install dockutil
brew install gh
brew install git
brew install nvm
brew install postgresql
brew install starship
brew install tree
brew install yarn
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# install GUI macOS applications
brew cask install 1password
brew cask install docker
brew cask install figma
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install iterm2
brew cask install linear-linear
brew cask install loom
brew cask install miro
brew cask install notion
brew cask install slack
brew cask install spotify
brew cask install tableplus
brew cask install visual-studio-code
brew cask install zoomus

# install fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-fira-code-nerd-font
brew cask install font-input

# install terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# remove stale lock files and outdated downloads
brew cleanup