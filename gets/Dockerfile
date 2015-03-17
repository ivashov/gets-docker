FROM php:5.4-apache
MAINTAINER ivashov@cs.petrsu.ru
RUN apt-get update
RUN apt-get install -y libpq-dev
RUN apt-get install -y libjson-c-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN docker-php-ext-install pgsql json curl
COPY /php.ini /usr/local/etc/php/
