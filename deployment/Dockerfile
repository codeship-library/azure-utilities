FROM codeship/azure-base:latest
LABEL maintainer='Codeship Inc., <maintainers@codeship.com>'

# Install the "kubectl" CLI
# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ARG KUBECTL_VERSION="v1.13.4"
RUN \
  curl -sSL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
  chmod +x /usr/local/bin/kubectl && \
  kubectl version --client
