# Zio Software Development (ziosd) - Meteor Base Image
# docker build -t meteorjs/meteor-alpine:latest

FROM node:4.6.2-alpine
MAINTAINER Gary Ascuy <gary.ascuy@gmail.com>

WORKDIR /root/app/bundle

ENV BUILD_PACKAGES="python make gcc g++ git libuv bash curl tar bzip2" \
    NODE_ENV=production \
    ROOT_URL=http://localhost:3000 \
    PORT=3000

RUN apk --update add ${BUILD_PACKAGES}
EXPOSE 3000
CMD node main.js
