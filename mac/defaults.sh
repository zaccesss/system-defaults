#!/usr/bin/env bash
#
# macOS system preferences, each one read with `defaults read <domain> <key>` before being
# written here. Safe to run more than once, `defaults write` sets values outright. See
# guides/reference.md for what each setting does.

set -euo pipefail

echo "Applying macOS defaults..."

# --- Dock ---
defaults write com.apple.dock tilesize -int 128
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock wvous-br-corner -int 14
defaults write com.apple.dock wvous-br-corner-modifier -int 0

# --- Finder ---
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder FXDefaultSearchScope -string "SCev"
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# --- Global (all apps) ---
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# --- Trackpad ---
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true

# --- Screenshots ---
mkdir -p "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

# --- Menu bar clock ---
defaults write com.apple.menuextra.clock ShowAMPM -bool true
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true
defaults write com.apple.menuextra.clock ShowDate -int 0
defaults write com.apple.menuextra.clock ShowSeconds -bool false
defaults write com.apple.menuextra.clock IsAnalog -bool false
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

echo "Restarting Dock, Finder and SystemUIServer to pick up the changes..."
killall Dock 2>/dev/null || true
killall Finder 2>/dev/null || true
killall SystemUIServer 2>/dev/null || true

echo "Done."
