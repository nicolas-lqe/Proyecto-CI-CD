#!/bin/bash

# Actualizar el sistema
apt-get update

# Instalar paquetes necesarios
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Agregar la clave GPG de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Agregar el repositorio de Docker
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Actualizar el índice de paquetes
apt-get update

# Instalar Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Instalar Docker Compose
DOCKER_COMPOSE_VERSION=1.29.2  # Cambia a la versión deseada
curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Verificación de la instalación
docker --version
docker-compose --version

# Instalar Docker CLI (si es necesario)
apt-get install -y docker-cli

echo "Docker y Docker Compose han sido instalados correctamente."
