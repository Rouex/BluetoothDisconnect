# Bluetooth Disconnector

A simple macOS script that disconnects my Bluetooth headphones and turns Bluetooth off automatically.

## Why?

I kept forgetting to turn off my headphones after using them. This project automates the process by running a scheduled script every evening.

## Requirements

* macOS
* blueutil

## Installation

```bash
git clone <repository-url>
cd BluetoothConnector

cp bleh.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/bleh.plist
```

## How it works

The LaunchAgent runs every day at 20:00 and:

1. Waits 10 seconds
2. Disconnects the configured Bluetooth device
3. Turns Bluetooth off

## Future Improvements

* Support multiple devices
* Add configuration options
* Add logging
* Add notifications
