1. Follow [these instructions](https://heyfocus.com/blog/how-to-turn-on-mac-focus-mode-from-the-terminal/) through 'Turn on Focus Mode with Shortcuts'.
3. Rename this shortcut 'Focus On'.
4. Create a shortcut for 'Focus Off' by following the same steps but switching 'On' to 'Off' in the Shortcut.
5. Create a shortcut for 'Get Focus' from 'Get Current Focus'.
6. Edit the `plist` file in this folder, changing `/PATH/TO/REPO` to the path to this repository.
7. Copy `com.davidhorstman.utilities.focus.plist` to `~/Library/LaunchAgents`
8. Run `launchctl load ~/Library/LaunchAgents/com.davidhorstman.utilities.focus.plist` to start the service.
9. Now focus mode will be automatically set when the laptop's lid is closed while on AC power (ie when used with an external monitor) and unset when it is open (on a 5-minute interval).

