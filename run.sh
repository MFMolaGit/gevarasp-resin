#!/bin/bash

echo "Antes de acceder a ruta"
cd /usr/src/app/
echo "Ejecutando GevaRaspResin app"
java -cp . src/main/java/GevaRaspResin
