# PostgreSQL 服務 
# Y 代表啟動
# N 代表關閉

#!/bin/bash

read -p "Start/Stop PostgreSQL-9.3 service (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
        sudo launchctl start com.edb.launchd.postgresql-9.3
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
        sudo launchctl stop com.edb.launchd.postgresql-9.3
else
        echo "I don't know what you choice"
fi


