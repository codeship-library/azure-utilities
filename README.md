# Microsoft Azure Utilities

## Deployment Container

**TODO**

## `dockercfg` Generator

Codeship supports using custom images to generate dockercfg files during the build process. To use this image to integrate with Azure Container Registry, simply define an entry in your services file for this image, and reference it from any steps or services which need to interact with an Azure Container Registry via the `dockercfg_service` field. You'll also need to provide the following environment variables using an [encrypted env file](https://codeship.com/documentation/docker/encryption/):

* AZURE_USERNAME - Your Azure username
* AZURE_PASSWORD - The password associated with the above username
* AZURE_REGISTRY - The name of the registry you want to access

Here is an example of using and ECR Dockercfg generator to authenticate pushing an image.

```yaml
# codeship-services.yml
app:
  build:
    image: codeship.azurecr.io/codeship-testing
    dockerfile_path: ./Dockerfile
azure_dockercfg:
  image: codeship/azure-dockercfg-generator
  add_docker: true
  encrypted_env_file: azure.env.encrypted
```

```yaml
# codeship-steps.yml
- service: app
  type: push
  tag: master
  image_name: codeship.azurecr.io/codeship-testing
  registry: codeship.azurecr.io
  dockercfg_service: azure_dockercfg:
```

You can also use this authentication to pull images, or use with caching, by defining the `dockercfg_service` field on groups of steps, or each individual step that pulls or pushes an image, or by adding the field to specific services.
