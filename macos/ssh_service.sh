# 是否啟動SSH Service
# Y 代表啟動
# N 代表關閉

#!/bin/bash

read -p "Please start SSH?? (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	sudo launchctl unload -w /System/Library/LaunchDaemons/ssh.plist
else
	echo "I don't know what you choice"
fi



