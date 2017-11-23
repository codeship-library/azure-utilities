#!/bin/bash

set -e

: "${AZURE_USERNAME:?Need to set your AZURE_USERNAME}"
: "${AZURE_PASSWORD:?Need to set your AZURE_PASSWORD}"
: "${AZURE_REGISTRY_NAME:?You need to set the AZURE_REGISTRY_NAME}"

# Logging into Azure
echo "Logging into Microsoft Azure using credentials for ${AZURE_USERNAME}"
az login --username "${AZURE_USERNAME}" --password "${AZURE_PASSWORD}"

echo "Logging into '${AZURE_REGISTRY_NAME}' container registry"
az acr login --name ${AZURE_REGISTRY_NAME}

# writing aws docker creds to desired path
echo "Writing Docker creds to $1"
chmod 544 ~/.docker/config.json
cp ~/.docker/config.json $1
