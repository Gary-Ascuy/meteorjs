# Zio Software Development (ziosd) - Meteor Base Image

FROM node:4.6.2-alpine
MAINTAINER Gary Ascuy <gary.ascuy@gmail.com>

WORKDIR /root/app/bundle

ENV BUILD_PACKAGES="python make gcc g++ git libuv bash curl tar bzip2" \
    NODE_ENV=production \
    ROOT_URL=http://localhost:3000 \
    PORT=3000

ADD astral.tar.gz /root/app

RUN apk --update add ${BUILD_PACKAGES} \
  && mkdir -p /root/app/bundle \
  && (cd programs/server/ && npm i && npm run install) \
  && apk del --purge ${BUILD_PACKAGES}

EXPOSE 3000
CMD node main.js
