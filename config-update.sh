#!/usr/bin/env bash
set -e

pecl install apcu
docker-php-ext-enable apcu
pecl clear-cache

cd /usr/local/etc/php
sed -i -e "s|;date.timezone =|date.timezone = Europe/Brussels|" php.ini
sed -i -e "s|;cgi.fix_pathinfo=1|cgi.fix_pathinfo = 0|" php.ini
sed -i -e "s|;realpath_cache_size = 4096k|realpath_cache_size = 4096K|" php.ini
sed -i -e "s|;realpath_cache_ttl = 120|realpath_cache_ttl = 600|" php.ini

cd /usr/local/etc/php/conf.d
echo "apc.enabled=1" >> docker-php-ext-apcu.ini
echo "apc.shm_segments=1" >> docker-php-ext-apcu.ini
echo "apc.shm_size=128M" >> docker-php-ext-apcu.ini
echo "apc.ttl=7200" >> docker-php-ext-apcu.ini
echo "apc.enable_cli=0" >> docker-php-ext-apcu.ini

cd /usr/local/etc/php/conf.d
echo "opcache.enable=1" >> docker-php-ext-opcache.ini
echo "opcache.enable_cli=1" >> docker-php-ext-opcache.ini
echo "opcache.validate_timestamps=0" >> docker-php-ext-opcache.ini
echo "opcache.interned_strings_buffer=16" >> docker-php-ext-opcache.ini
echo "opcache.max_accelerated_files = 20000" >> docker-php-ext-opcache.ini
