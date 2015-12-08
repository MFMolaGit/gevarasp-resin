#!/bin/bash
dir

echo "Antes de acceder a ruta"
cd /usr/src/app/
dir
echo "Ejecutando GevaRaspResin app"
java -cp . /usr/src/app/src/main/java/GevaRaspResin
