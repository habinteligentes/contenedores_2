#!/bin/bash

PROJECT_FOLDER_BASE="mi_proyecto"
PROJECT_FOLDER="$PROJECT_FOLDER_BASE"
i=0

while [ -e "$PROJECT_FOLDER" ]; do
  i=$((i + 1))
  PROJECT_FOLDER="${PROJECT_FOLDER_BASE}_${i}"
done

echo "Creando carpeta del proyecto: $PROJECT_FOLDER..."
mkdir "$PROJECT_FOLDER"
echo "Carpeta del proyecto creada."

echo "Copiando ${PACKAGE_FILE} e ${INDEX_FILE} a la carpeta del proyecto..."
cp "config_files/${PACKAGE_FILE}" "$PROJECT_FOLDER/package.json"
cp "config_files/${INDEX_FILE}" "$PROJECT_FOLDER/index.js"
echo "Archivos copiados."

cd "$PROJECT_FOLDER"

echo "Creando entorno virtual de Node.js..."


python -m nodeenv --node="${NODE_VERSION}" env

echo "Entorno virtual de Node.js creado."

echo "Contenido de la carpeta actual:"
ls

echo "Activando entorno virtual de Node.js..."
source env/bin/activate
chmod +x ../ejecutarScript.sh
../ejecutarScript.sh

