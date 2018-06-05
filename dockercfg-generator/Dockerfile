FROM docker:18.03
LABEL maintainer='Codeship Inc., <maintainers@codeship.com>'

COPY azure_docker_creds.sh /bin
RUN chmod u+x /bin/azure_docker_creds.sh

ENTRYPOINT ["azure_docker_creds.sh"]
