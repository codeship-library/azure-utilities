# https://hub.docker.com/r/azuresdk/azure-cli-python/
FROM azuresdk/azure-cli-python:2.0.25
LABEL maintainer='Codeship Inc., <maintainers@codeship.com>'

RUN \
	# upgrade libcurl to make sure it's the same version as curl
	apk upgrade --no-cache libcurl && \
	apk add --no-cache curl
