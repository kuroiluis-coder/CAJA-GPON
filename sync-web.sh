#!/bin/sh
# Copia la app web a la app Android (ejecutar si cambias algo en ../cajas-app)
# No borra assets/mapa (el mapa de calles sin conexión que se genera al compilar)
mkdir -p app/src/main/assets
find app/src/main/assets -mindepth 1 -maxdepth 1 ! -name mapa -exec rm -rf {} +
cp -r ../cajas-app/index.html ../cajas-app/sw.js ../cajas-app/css ../cajas-app/js ../cajas-app/lib ../cajas-app/data ../cajas-app/icons ../cajas-app/manifest.webmanifest app/src/main/assets/
