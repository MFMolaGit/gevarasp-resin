#!/bin/bash

echo "Init run"
cd /usr/src/app/src/main/java
echo "----------------------------"
echo "In /usr/src/app/src/main/java/com path"
ls -al
echo "----------------------------"
echo "Ejecutando GevaRaspResin app"
java -cp . com.GevaRaspResin
