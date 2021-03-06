# Container image that runs your code
#FROM alpine:3.10
FROM node:alpine

# Install npms
RUN ["npm", "install", "-g", "redoc-cli@0.11.4"]
RUN ["npm", "install", "-g", "speccy"]

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
