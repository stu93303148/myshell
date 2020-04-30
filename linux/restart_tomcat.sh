#!/bin/bash

########################################################
## Shudown tomcat service, but does not kill process. ##                            
##            				              ##
## by Kuoying					      ##
#############################################################################
## CMD: sh restart_tomcat.sh 2>&1 | tee $(date +%F_%R)-restart_tomcat.log  ##
## Need to install plugin: lsof                                            ##
#############################################################################

function run() {
  for i in {10..1}
  do
      echo "$i"
      sleep 1s
  done
}

echo "##########################################"
echo "Date: " `date` 


echo "======== (SHUTDOWN RUN) ========"
sh /opt/tomcat/bin/shutdown.sh
run
STAT=`/usr/sbin/ss -tnlp | grep 8080 | awk '{print $1}'`

if [[ -n "$STAT" ]]; then
  echo "------- (KILL PROCESS) -------"
  /usr/sbin/lsof -t -i:8080
  echo "------- (KILLING) -------"
  kill $(/usr/sbin/lsof -t -i:8080)
  run
  /usr/sbin/ss -tnlp | grep 8080
  echo "------- (KILLED) -------"
fi


echo "---------------------------------"
echo "---------------------------------"
echo "---------------------------------"
echo "---------------------------------"
echo "---------------------------------"
echo "---------------------------------"


CHECK=`/usr/sbin/ss -tnlp | grep 8080`
if [[ -z "$CHECK" ]]; then

  echo "======== (START RUN) ========"
  sh /opt/tomcat/bin/startup.sh 
  run
fi

/usr/sbin/ss -tnlp | grep 8080
echo "##########################################"
