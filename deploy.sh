#!/bin/sh
targetDir="C:\ode-tomee-server-1.3.8\webapps\ode\WEB-INF\processes/"
logFile="C:\ode-tomee-server-1.3.8\logs\ode.log"
if [ -z "$1" ]
then 
  echo "Provide argument"
  exit
fi

if [ -e $1 ] 
then
  echo  "Starts deploying : $1"
  rm  -r -v "$targetDir$1"
  rm "$1/"*.cbp
  sleep 5
  echo "Copying directory to target "
  >  $logFile
  cp -r -v $1 $targetDir	
  sleep  5
  cat  "$logFile"
fi

