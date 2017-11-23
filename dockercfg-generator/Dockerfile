FROM codeship/azure-base:latest
LABEL maintainer='Codeship Inc., <maintainers@codeship.com>'

RUN \
	apk add --no-cache docker

COPY azure_docker_creds.sh /bin
RUN chmod u+x /bin/azure_docker_creds.sh

ENTRYPOINT ["azure_docker_creds.sh"]
