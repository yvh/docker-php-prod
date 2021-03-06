FROM yannickvh/php:8.0-apache
LABEL maintainer="Yannick Vanhaeren"

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN set -eux; \
    apt-get update && apt-get install -y --no-install-recommends \
        git \
        less \
        vim \
        unzip \
        openssh-client; \
    apt-get clean; \
    rm -r /var/lib/apt/lists/*

# Add php extensions
RUN set -eux; \
    pecl install apcu; \
    docker-php-ext-enable apcu; \
    pecl clear-cache

RUN set -eux; \
    cd /usr/local/etc/php; \
    sed -i -e "s|;date.timezone =|date.timezone = Europe/Brussels|" php.ini; \
    sed -i -e "s|;cgi.fix_pathinfo=1|cgi.fix_pathinfo = 0|" php.ini; \
    sed -i -e "s|;realpath_cache_size = 4096k|realpath_cache_size = 4096K|" php.ini; \
    sed -i -e "s|;realpath_cache_ttl = 120|realpath_cache_ttl = 600|" php.ini

RUN set -eux; \
    cd /usr/local/etc/php/conf.d; \
    echo "apc.enabled=1" >> docker-php-ext-apcu.ini; \
    echo "apc.shm_segments=1" >> docker-php-ext-apcu.ini; \
    echo "apc.shm_size=128M" >> docker-php-ext-apcu.ini; \
    echo "apc.ttl=7200" >> docker-php-ext-apcu.ini; \
    echo "apc.enable_cli=0" >> docker-php-ext-apcu.ini

RUN set -eux; \
    cd /usr/local/etc/php/conf.d; \
    echo "opcache.enable=1" >> docker-php-ext-opcache.ini; \
    echo "opcache.enable_cli=1" >> docker-php-ext-opcache.ini; \
    echo "opcache.validate_timestamps=0" >> docker-php-ext-opcache.ini; \
    echo "opcache.interned_strings_buffer=16" >> docker-php-ext-opcache.ini; \
    echo "opcache.max_accelerated_files = 20000" >> docker-php-ext-opcache.ini

ENV SERVER_NAME localhost
ENV SERVER_ALIAS ''
ENV WEB_DIR /var/www/html

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Set user permissions
RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data

RUN set -eux; \
    chown -R www-data: /var/www/html

ENV INSTALL_WP_CLI false
ENV INSTALL_COMPOSER false
ENV COMPOSER_VERSION --2

COPY docker-php-* /usr/local/bin/
