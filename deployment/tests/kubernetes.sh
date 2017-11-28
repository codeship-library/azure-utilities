#!/bin/bash

set -e

# login to Microsoft Azure via credentials provided via (encrypted) environment
# variables

: "${AZURE_USERNAME:?Need to set your AZURE_USERNAME}"
: "${AZURE_PASSWORD:?Need to set your AZURE_PASSWORD}"
: "${AZURE_RESOURCE_GROUP:?Need to set your AZURE_RESOURCE_GROUP}"
: "${AZURE_CLUSTER_NAME:?Need to set your AZURE_CLUSTER_NAME}"

# Logging into Azure
echo "Logging into Microsoft Azure using credentials for ${AZURE_USERNAME}"
az login --username "${AZURE_USERNAME}" --password "${AZURE_PASSWORD}"

# Configure kubectl
echo "Configuring access for kubectl"
az aks get-credentials --resource-group "${AZURE_RESOURCE_GROUP}" --name "${AZURE_CLUSTER_NAME}"

# run the commands required to deploy the application via `kubectl`
kubectl version
kubectl cluster-info
