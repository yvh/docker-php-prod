ARG PHP_BASE_IMAGE=scratch

FROM $PHP_BASE_IMAGE

LABEL maintainer="Yannick Vanhaeren"

ARG DEBIAN_FRONTEND=noninteractive

COPY config-update.sh /config-update.sh

RUN /config-update.sh && rm /config-update.sh

ENV SERVER_NAME=localhost
ENV SERVER_ALIAS=''
ENV WEB_DIR=/var/www/html

COPY apache/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data

RUN set -e; \
    chown -R www-data: /var/www/html
