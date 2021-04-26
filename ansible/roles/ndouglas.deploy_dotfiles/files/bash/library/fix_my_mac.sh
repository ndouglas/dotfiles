#!/usr/bin/env bash

# Run commands that will make my Mac do WTF I want it to do.
nd_fix_my_mac() {
  # Quit System Preferences -- it might interfere, otherwise.
  osascript -e 'tell application "System Preferences" to quit';

  # Let me just run the damn app, okay?
  sudo spctl --master-disable;

  # Always show scrollbars.
  defaults write NSGlobalDomain AppleShowScrollBars -string "Always";

  # Expand save panel by default
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true;
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true;

  # Expand print panel by default
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true;
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true;

  # Save to disk (not to iCloud) by default
  defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false;

  # Automatically quit printer app once the print jobs complete
  defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true;

  # Disable the “Are you sure you want to open this application?” dialog
  defaults write com.apple.LaunchServices LSQuarantine -bool false;

  # Disable automatic capitalization as it’s annoying when typing code
  defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false;

  # Disable smart dashes as they’re annoying when typing code
  defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false;

  # Disable automatic period substitution as it’s annoying when typing code
  defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false;

  # Disable smart quotes as they’re annoying when typing code
  defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false;

  # Disable auto-correct
  defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false;

  # Disable press-and-hold for keys in favor of key repeat
  defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false;

  # Set a blazingly fast keyboard repeat rate
  defaults write NSGlobalDomain KeyRepeat -int 1;
  defaults write NSGlobalDomain InitialKeyRepeat -int 10;

  # Avoid creating .DS_Store files on network or USB volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true;
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true;

  # Disable disk image verification
  defaults write com.apple.frameworks.diskimages skip-verify -bool true;
  defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true;
  defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true;

  # Disable automatic spell checking
  defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled";

  # Just stop indexing FFS.
  sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes";

  # Disable the annoying line marks
  defaults write com.apple.Terminal ShowLineMarks -int 0;

  # Use plain text mode for new TextEdit documents
  defaults write com.apple.TextEdit RichText -int 0;

  # Open and save files as UTF-8 in TextEdit
  defaults write com.apple.TextEdit PlainTextEncoding -int 4;
  defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4;

  # Enable the debug menu in Disk Utility
  defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true;
  defaults write com.apple.DiskUtility advanced-image-options -bool true;

  # Disable the all too sensitive backswipe on trackpads
  defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false;
  defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false;

  # Use the system-native print preview dialog
  defaults write com.google.Chrome DisablePrintPreview -bool true;
  defaults write com.google.Chrome.canary DisablePrintPreview -bool true;

  # Expand the print dialog by default
  defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true;
  defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true;

  # Use scroll gesture with the Ctrl (^) modifier key to zoom
  defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true;
  defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144;

  # Follow the keyboard focus while zoomed in
  defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true;

  # Stop iTunes from responding to the keyboard media keys
  launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

}




