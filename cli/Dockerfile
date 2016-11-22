# Zio Software Development (ziosd) - Meteor Base
# docker build -t meteorjs/cli:latest .

FROM meteorjs/meteor-alpine
MAINTAINER Gary Ascuy <gary.ascuy@gmail.com>

ADD plugins /plugins
WORKDIR /plugins
ENV METEORJS_HOME /plugins/
RUN ln -s /plugins/cli.sh /usr/local/bin/cli \
    && ln -s /plugins/config.sh /usr/local/bin/xconfig

ENTRYPOINT ["cli"]
CMD ["about", "--plugin", "gary"]
