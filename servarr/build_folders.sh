#!/bin/bash

set -e

BASE_DIR="/docker"

COMPOSE_URL="https://raw.githubusercontent.com/gulliman9000/docker_ymls/main/servarr/docker_compose.yml"

echo "Creating directory structure..."

DIRS=(
    "sonarr"
    "radarr"
    "sonarr4k"
    "radarr4k"
    "lidarr"
    "sportarr"
    "seerr"
    "musicseerr"
    "musicseerr/cache"
    "configarr"
    "configarr/dockerrepos"
    "configarr/cfs"
    "configarr/templates"
)

for dir in "${DIRS[@]}"; do
    mkdir -p "$BASE_DIR/$dir"
done

echo "Downloading docker-compose.yml..."

curl -fsSL "$COMPOSE_URL" -o "$BASE_DIR/docker-compose.yml"

echo
echo "Done!"
echo "Project created at: $BASE_DIR"