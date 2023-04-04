#!/bin/bash

echo "Ejecutando el script en el entorno virtual..."
node index.js

echo "Mostrando paquetes instalados en el entorno virtual..."
npm list

echo "Mostrando node version ------"
node --version

echo "Desactivando entorno virtual de Node.js..."
exit
echo "Entorno virtual de Node.js desactivado."

echo "Eliminando entorno virtual..."
cd ..
rm -rf "$PROJECT_FOLDER"
echo "Entorno virtual eliminado."
