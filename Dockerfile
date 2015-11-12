FROM debian:wheezy
MAINTAINER <jeroen@peetersweb.nl>

ENV METEORD_DIR /opt/meteord
ENV RELEASE "1.2.1"

COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh
RUN bash $METEORD_DIR/install-meteor.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/lib/build_app.sh
