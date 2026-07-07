#!/bin/bash

set -e

BASE_DIR="/docker"

COMPOSE_URL="https://raw.githubusercontent.com/gulliman9000/docker_ymls/main/downloadarr/docker_compose.yml"
SOULARR_CONFIG="https://raw.githubusercontent.com/gulliman9000/docker_ymls/main/downloadarr/soularr_config.ini"

echo "Creating directory structure..."

mkdir -p "$BASE_DIR"/{sabnzbd,prowlarr,qbittorrent,pinchflat,soularr,slskd,ytdlp}

echo "Downloading docker-compose.yml..."

curl -fsSL "$COMPOSE_URL" -o "$BASE_DIR/docker-compose.yml"
curl -fsSL "$SOULARR_CONFIG" -o "$BASE_DIR/soularr/config.ini"

echo
echo "Done!"
echo "Project created at: $BASE_DIR"