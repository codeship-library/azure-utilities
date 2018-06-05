# https://hub.docker.com/r/microsoft/azure-cli/
FROM microsoft/azure-cli:2.0.25
LABEL maintainer='Codeship Inc., <maintainers@codeship.com>'

RUN \
	# upgrade libcurl to make sure it's the same version as curl
	apk upgrade --no-cache libcurl && \
	apk add --no-cache curl
