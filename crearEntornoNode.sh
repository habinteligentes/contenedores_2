#!/bin/bash

PROJECT_FOLDER_BASE="mi_proyecto"
PROJECT_FOLDER="${PROJECT_FOLDER_BASE}"

if [ -d "${PROJECT_FOLDER}" ]; then
    i=1
    while [ -d "${PROJECT_FOLDER}_${i}" ]; do
        ((i++))
    done
    PROJECT_FOLDER="${PROJECT_FOLDER}_${i}"
fi

echo "Creando carpeta del proyecto: ${PROJECT_FOLDER}..."
mkdir ${PROJECT_FOLDER}
echo "Carpeta del proyecto creada."

echo "Copiando ${PACKAGE_FILE} e ${INDEX_FILE} a la carpeta del proyecto..."
cp "config_files/${PACKAGE_FILE}" "${PROJECT_FOLDER}/package.json"
cp "config_files/${INDEX_FILE}" "${PROJECT_FOLDER}/index.js"
echo "Archivos copiados."

cd ${PROJECT_FOLDER}

echo "Creando entorno virtual de Node.js..."
~/.local/bin/nodeenv --node=${NODE_VERSION} env
echo "Entorno virtual de Node.js creado."

echo "Activando entorno virtual de Node.js..."
source env/bin/activate
echo "Entorno virtual de Node.js activado."

./ejecutarScript.sh

