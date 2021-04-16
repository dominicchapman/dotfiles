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
brew install --cask 1password
brew install --cask docker
brew install --cask figma
brew install --cask firefox
brew install --cask github
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask loom
brew install --cask miro
brew install --cask monodraw
brew install --cask notion
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask tableplus
brew install --cask visual-studio-code
brew install --cask zoomus

# install fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font
brew install font-input

# install terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# remove stale lock files and outdated downloads
brew cleanup