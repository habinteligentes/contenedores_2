#!/bin/bash

echo "Ejecutando el script en el entorno virtual..."
node index.js

echo "Mostrando paquetes instalados en el entorno virtual..."
npm list

echo "Desactivando entorno virtual de Node.js..."
deactivate_node
echo "Entorno virtual de Node.js desactivado."

echo "Eliminando entorno virtual..."
cd ..
rm -rf "$project_folder"
echo "Entorno virtual eliminado."
