ARG PHP_BASE_IMAGE=

FROM $PHP_BASE_IMAGE

LABEL maintainer="Yannick Vanhaeren"

ARG DEBIAN_FRONTEND=noninteractive

COPY config-update.sh /config-update.sh

RUN /config-update.sh && rm /config-update.sh

RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data

RUN set -e; \
    chown -R www-data: /var/www/html
