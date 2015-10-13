FROM debian:jessie
MAINTAINER ivashov@cs.petrsu.ru
RUN apt-get update && apt-get install --no-install-recommends -y \
        dbus libdbus-1-3 \
        libdbus-1-dev \
        libdbus-glib-1-2 \
        libdbus-glib-1-dev \
        \
        autotools-dev \
        autoconf \
        automake \
        libtool \
        gcc \
        libexpat1 \
        libexpat1-dev \
        \
        uuid-runtime \
        libuuid1 \
        uuid-dev \
        \
        wget \
        \
        make dbus-x11 librdf-dev

COPY setup.sh /setup.sh
RUN /setup.sh

COPY run.sh /run.sh
CMD ["/bin/bash", "/run.sh"]
