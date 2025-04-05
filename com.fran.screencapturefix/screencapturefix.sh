#!/bin/sh
# MIT Francisco Altimari @1742659178
# Fixes screenshot showing stupid ios thumbnail
LOCKFILE="~/Library/Application Support/com.fran.screencapturefix/filewatcher.lock"
WATCHED_FILE="~/Library/Preferences/com.apple.screencapture.plist"

# Prevent infinite loops
[ -f "$LOCKFILE" ] && exit 0
touch "$LOCKFILE"

# Toggle false show-thumbnail property and log the time
defaults write com.apple.screencapture show-thumbnail -bool FALSE && killall SystemUIServer
echo "$(date): Screenshot setting change" >> "~/Library/Application Support/com.fran.screencapturefix/screencapturelog.txt"


# Remove lock file
sleep 1
rm -f "$LOCKFILE"
