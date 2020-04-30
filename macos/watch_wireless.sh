# 查看指定無線網卡資訊

#!/bin/bash

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s

read -p "which device? " yn
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I "$yn"

