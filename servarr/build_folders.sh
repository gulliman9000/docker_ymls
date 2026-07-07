#!/bin/bash

set -e

BASE_DIR="/docker"
COMPOSE_URL="https://raw.githubusercontent.com/gulliman9000/docker_ymls/main/servarr/docker_compose.yml"

echo "Creating directory structure..."

mkdir -p "$BASE_DIR"/{
  sonarr,
  radarr,
  lidarr,
  sportarr
}

echo "Downloading docker-compose.yml..."

curl -fsSL "$COMPOSE_URL" -o "$BASE_DIR/docker-compose.yml"

echo
echo "Done!"
echo "Project created at: $BASE_DIR"