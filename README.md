# MacOS Screencapture Fix

Temporary fix for weird bug that keeps reverting the "show thumbnail" option on the screenshot settings.

The main idea is to create a LaunchAgent that watches the `Preferences/com.apple.screencapture.plist` file, and forces the thumbnail option to stay false.

## Install
1. Clone or download this repository
2. (optional) rename all instances of `com.fran.screencapturefix` to `com.YOURUSERNAME.screencapturefix`
> You will need to change this on the actual files as well
3. Put the `com.fran.screencapturefix/` folder on `~/Library/Application Support/`
4. Take `com.fran.screencapturefix.plist` file and place on `~/Library/LaunchAgents/`
> You should see a notification, that the `screencapturefix.sh` script can run in the background
5. On Terminal, run `launchctl load ~/Library/LaunchAgents/com.fran.screencapturefix.plist`

To test everything is working you should run 
`launchctl start ~/Library/LaunchAgents/com.fran.screencapturefix.plist` 
and then check that you have some entries in the `screencapturelog.txt` file

## Debugging
There are several moving parts in this process that could cause the launch agent to fail

## License
All code is under the MIT license
