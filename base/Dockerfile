FROM debian:wheezy
MAINTAINER MeteorHacks Pvt Ltd.

ENV METEORD_DIR /opt/meteord
ENV RELEASE "1.2.0.2"

COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh
RUN bash $METEORD_DIR/lib/install_meteor.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
