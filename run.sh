#!/bin/bash

echo "Init run"
cd /usr/src/app/src/main/java
echo "----------------------------"
echo "In /usr/src/app/src/main/java path"
echo "----------------------------"
echo "Ejecutando GevaRaspResin app"
echo "java -cp -classpath .:classes:/opt/pi4j/lib/'*' com.GevaRaspResin"
java -jar gevarasp-resin-1.0-SNAPSHOT-jar-with-dependencies.jar