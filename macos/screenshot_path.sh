# 更改擷取螢幕路徑 

#!/bin/bash
read -p "Please input routes: " route
defaults write com.apple.screencapture location "$route"
killall SystemUIServer


