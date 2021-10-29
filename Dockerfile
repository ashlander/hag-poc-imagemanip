FROM ubuntu:20.04

RUN     mkdir -p /opt/game/config
RUN     mkdir -p /opt/game/css
RUN     mkdir -p /opt/game/img
RUN     mkdir -p /opt/game/bin

COPY ["config", "/opt/game/config"]
COPY ["css",    "/opt/game/css"]
COPY ["img",    "/opt/game/img"]
COPY ["bin",    "/opt/game/bin"]

ENTRYPOINT ["/opt/game/bin/entrypoint.sh"]

