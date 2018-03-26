FROM alpine:3.6

# Installs runit and socklog
# make the "en_US.UTF-8" locale so postgres will be utf-8 enabled by default
# change timezone to UTC

RUN set -x \
  && apk add --update --no-cache ca-certificates su-exec runit socklog tzdata openrc \
  && rm -rf /etc/sv /etc/service \
  && echo 'Etc/UTC' > /etc/timezone

ENV TZ     :/etc/localtime
ENV LANG   en_US.utf8

# Setup runit scripts
COPY sv /etc/sv/
RUN ln -s /etc/sv /etc/service

COPY runit.sh /runit.sh
ENTRYPOINT ["/runit.sh"]
