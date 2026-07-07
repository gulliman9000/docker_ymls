#!/bin/bash

set -e

# ===== Configuration =====
BASE_DIR="/docker"

# GitHub raw URL to the docker compose file
COMPOSE_URL="https://raw.githubusercontent.com/gulliman9000/docker_ymls/refs/heads/main/servarr/docker_compose.yml"

# =========================

echo "Creating directory structure..."

mkdir -p "$BASE_DIR"/{
sonarr,
radarr,
lidarr,
sportarr
}

echo "Downloading docker-compose.yml..."

curl -L "$COMPOSE_URL" -o "$BASE_DIR/docker-compose.yml"

echo "Done."

echo ""
echo "Project created at:"
echo "  $BASE_DIR"