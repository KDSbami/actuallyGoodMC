#!/bin/bash

if [ -z "$serverVersion" ]; then
    $serverVersion = "1.20.1"
fi

echo "Server Version: $serverVersion"

if [ -e "./server/spigot-$serverVersion.jar" ]; then
    exit 0
else
  java -jar ./builder/BuildTools.jar --rev "$serverVersion"
  cp spigot-$serverVersion.jar ./server/spigot-$serverVersion.jar
fi