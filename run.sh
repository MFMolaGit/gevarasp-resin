#!/bin/bash

echo "Init run"
cd /usr/src/app/src/main/java/com
echo "----------------------------"
echo "In /usr/src/app/src/main/java/com path"
ls -al
echo "----------------------------"
echo "Ejecutando GevaRaspResin app"
java -cp . GevaRaspResin
