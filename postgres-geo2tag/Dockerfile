FROM postgres:9.3
MAINTAINER ivashov@cs.petrsu.ru
ENV POSTGRES_PASSWORD geo2tag
ENV POSTGRES_USER geo2tag

ADD /db /pg
ADD setup-geo2tag.sh /docker-entrypoint-initdb.d/
