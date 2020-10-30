ARG DOCKER_REGISTRY=amazon
ARG DOCKER_IMAGE_NAME=aws-cli
ARG TAG=igor

FROM ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${TAG} as app

RUN \
  curl -s "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" && \
  yum install -y session-manager-plugin.rpm
  
ENTRYPOINT ["/bin/bash"]
