# MacOS Screencapture Fix

Temporary fix for weird bug that keeps reverting the "show thumbnail" option on the screenshot settings.

The main idea is to create a LaunchAgent that watches the `Preferences/com.apple.screencapture.plist` file, and forces the thumbnail option to stay false.

## Install
1. Clone or download this repository
2. (optional) rename all com.fran.screencapturefix to com.YOURNAME.screencapturefix



## License
All code is under the MIT license
