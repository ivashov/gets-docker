FROM debian:jessie
MAINTAINER ivashov@cs.petrsu.ru
RUN apt-get update 

RUN apt-get install --no-install-recommends -y librdf0-dev make libexpat1-dev uuid-dev \
        libglib2.0-dev libdbus-1-dev  libdbus-glib-1-dev unixodbc-dev \
        librasqal-dev libraptor2-dev gawk
RUN apt-get install --no-install-recommends -y qtbase5-dev
RUN apt-get install --no-install-recommends -y wget
RUN apt-get install --no-install-recommends -y gcc autotools-dev autoconf automake libtool
RUN apt-get install --no-install-recommends -y qt5-default qt5-qmake
RUN apt-get install --no-install-recommends -y g++
RUN apt-get install --no-install-recommends -y patch

COPY setup.sh /setup.sh
COPY pro-patch.diff /pro-patch.diff
RUN /setup.sh
RUN ldconfig
COPY run.sh /run.sh
CMD ["/bin/bash", "/run.sh"]
