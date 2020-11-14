########################################
# ui                                   #
########################################

# show battery percentage in menu bar
defaults write com.apple.menuextra.battery ShowPercent YES

########################################
# trackpad, mouse, bluetooth           #
########################################

# enable tap to click for current user
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# set trackpad speed
defaults write com.apple.trackpad.scaling 2.5
defaults write com.apple.mouse.scaling 2.5

########################################
# screen                               #
########################################

# require password immediately after sleep
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# save screenshots to desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

########################################
# finder                               #
########################################

# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# always open in list view
# four-letter codes for other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

########################################
# dock                                 #
########################################

# automatically hide and show the dock
defaults write com.apple.dock autohide -bool true

# do not animate opening applications in the dock
defaults write com.apple.dock launchanim -bool false

# do not show recently used applications in the dock
defaults write com.Apple.Dock show-recents -bool false

# prevent bouncing icons
defaults write com.apple.dock no-bouncing -bool true

########################################
# software updates                     #
########################################

# enable automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# check for software updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -bool true

# download newly available updates in the background
defaults write com.apple.SoftwareUpdate AutomaticDownload -bool true

# install system data files amd security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

########################################
# kill affected applications           #
########################################

for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "iCal"; do
  killall "${app}" &> /dev/null
done