#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage : $0 <dossier_source>"
  exit 1
fi

SOURCE_DIR="$1"
DATE_DIR=$(date +%F) 
TARGET_DIR="$PWD/tmp/$DATE_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Erreur : le dossier source '$SOURCE_DIR' n'existe pas."
  exit 1
fi

mkdir -p "$TARGET_DIR"

mv -v "$SOURCE_DIR"/* "$TARGET_DIR"

echo "✅ Fichiers copiés dans $TARGET_DIR"
