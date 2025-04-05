# MacOS Screencapture Fix

Temporary fix for weird bug that keeps reverting the `show thumbnail` option on the screenshot settings.

The main idea is to create a LaunchAgent that watches the `Preferences/com.apple.screencapture.plist` file, and forces the thumbnail option to stay false.

As always, use at your own risk and check any code you are running before doing so.

## Install
1. Clone or download this repository
2. (optional) rename all instances of `com.fran.screencapturefix` to `com.YOURUSERNAME.screencapturefix`
    > You will need to change this on the actual files as well
3. Put the `com.fran.screencapturefix/` **folder** inside `~/Library/Application Support/`
4. Take the `com.fran.screencapturefix.plist` **file** and place on `~/Library/LaunchAgents/`
    > You should see a notification, that the `screencapturefix.sh` script can run in the background
5. On Terminal, run `launchctl load ~/Library/LaunchAgents/com.fran.screencapturefix.plist`

To test everything is working you should run
`launchctl start com.fran.screencapturefix.plist`
and then check that you have some entries in the `screencapturelog.txt` file

## Debugging
There are several moving parts in this process that could cause the launch agent to fail.

- Ensure the script has execute permission, if not `chmod +x screencapturefix.sh`
- Check the `plist` is correct by running `plutil com.fran.screencapturefix.plist`, should return `OK`
- Check the last status of the agent by running `launctl list | grep screencapturefix`, `0` is a success
- Run the script from the terminal using `sh screencapturefix.sh`


## License
All code is under the MIT license
