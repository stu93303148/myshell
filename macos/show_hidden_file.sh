# 顯示資料夾隱藏檔 
# Y 代表顯示
# N 代表不顯示

#!/bin/bash

read -p "Please input (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	defaults write com.apple.finder AppleShowAllFiles TRUE;\killall Finder
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	defaults write com.apple.finder AppleShowAllFiles FALSE;\killall Finder
else
	echo "I don't know what you choice"
fi


