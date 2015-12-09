#!/bin/bash

echo "Init run"
cd /usr/src/app/src/main/java
echo "----------------------------"
echo "In /usr/src/app/src/main/java path"
echo "----------------------------"
echo "Ejecutando GevaRaspResin app"
java -cp -classpath .:classes:/opt/pi4j/lib/'*' com.GevaRaspResin