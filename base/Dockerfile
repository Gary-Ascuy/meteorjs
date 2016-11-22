# Zio Software Development (ziosd) - Meteor Base
# docker build -t meteorjs/base:latest

FROM node:4.6.2-alpine
MAINTAINER Gary Ascuy <gary.ascuy@gmail.com>

WORKDIR /root/app/bundle

ENV NODE_ENV=production \
    ROOT_URL=http://localhost:3000 \
    PORT=3000

EXPOSE 3000
CMD node main.js
