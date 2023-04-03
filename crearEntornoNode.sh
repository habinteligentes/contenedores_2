#!/bin/bash

project_folder_base="mi_proyecto"
project_folder="$project_folder_base"
i=0

while [ -e "$project_folder" ]; do
  i=$((i + 1))
  project_folder="${project_folder_base}_${i}"
done

echo "Creando carpeta del proyecto: $project_folder..."
mkdir "$project_folder"
echo "Carpeta del proyecto creada."

if [ $i -eq 0 ]; then
  echo "Obteniendo la versión de Node.js..."
  node_version=$(cat config_files/node_version.txt)
  echo "Versión de Node.js obtenida: $node_version."
  echo "Copiando package.json e index.js a la carpeta del proyecto..."
  cp config_files/package.json "$project_folder"
  cp config_files/index.js "$project_folder"
else
  echo "Obteniendo la versión de Node.js..."
  node_version=$(cat "config_files/node_version_${i}.txt")
  echo "Versión de Node.js obtenida: $node_version."
  echo "Copiando package_${i}.json e index_${i}.js a la carpeta del proyecto..."
  cp "config_files/package_${i}.json" "$project_folder/package.json"
  cp "config_files/index_${i}.js" "$project_folder/index.js"
fi
echo "Archivos copiados."

cd "$project_folder"

echo "Creando entorno virtual de Node.js..."
python -m nodeenv --node="$node_version" env
echo "Entorno virtual de Node.js creado."

echo "Activando entorno virtual de Node.js..."
source env/bin/activate
chmod +x ../ejecutarScript.sh
../ejecutarScript.sh
