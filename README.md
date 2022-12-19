# Custom build of PHP for production.

See repository on [Docker Hub](https://hub.docker.com/r/yannickvh/php-prod)

# Supported tags and respective `Dockerfile` links

- [ `8.2-apache` (*8.2/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/main/apache/Dockerfile)
- [ `8.2-cli` (*8.2/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/main/cli/Dockerfile)
- [ `8.2-fpm` (*8.2/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/main/fpm/Dockerfile)
- [ `8.1-apache` (*8.1/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.1/apache/Dockerfile)
- [ `8.1-cli` (*8.1/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.1/cli/Dockerfile)
- [ `8.1-fpm` (*8.1/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.1/fpm/Dockerfile)
- [ `8.0-apache` (*8.0/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.0/apache/Dockerfile)
- [ `8.0-cli` (*8.0/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.0/cli/Dockerfile)
- [ `8.0-fpm` (*8.0/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/8.0/fpm/Dockerfile)
- [ `7.4-apache` (*7.4/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.4/apache/Dockerfile)
- [ `7.4-cli` (*7.4/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.4/cli/Dockerfile)
- [ `7.4-fpm` (*7.4/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.4/fpm/Dockerfile)
- [ `7.3-apache` (*7.3/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.3/apache/Dockerfile)
- [ `7.3-cli` (*7.3/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.3/cli/Dockerfile)
- [ `7.3-fpm` (*7.3/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.3/fpm/Dockerfile)
- [ `7.2-apache` (*7.2/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.2/apache/Dockerfile)
- [ `7.2-cli` (*7.2/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.2/cli/Dockerfile)
- [ `7.2-fpm` (*7.2/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.2/fpm/Dockerfile)
- [ `7.1-apache` (*7.1/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.1/apache/Dockerfile)
- [ `7.1-cli` (*7.1/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.1/cli/Dockerfile)
- [ `7.1-fpm` (*7.1/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.1/fpm/Dockerfile)
- [ `7.0-apache` (*7.0/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.0/apache/Dockerfile)
- [ `7.0-cli` (*7.0/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.0/cli/Dockerfile)
- [ `7.0-fpm` (*7.0/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/7.0/fpm/Dockerfile)
- [ `5.6-apache` (*5.6/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.6/apache/Dockerfile)
- [ `5.6-cli` (*5.6/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.6/cli/Dockerfile)
- [ `5.6-fpm` (*5.6/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.6/fpm/Dockerfile)
- [ `5.5-apache` (*5.5/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.5/apache/Dockerfile)
- [ `5.5-cli` (*5.5/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.5/cli/Dockerfile)
- [ `5.5-fpm` (*5.5/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.5/fpm/Dockerfile)
- [ `5.4-apache` (*5.4/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.4/apache/Dockerfile)
- [ `5.4-cli` (*5.4/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.4/cli/Dockerfile)
- [ `5.4-fpm` (*5.4/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.4/fpm/Dockerfile)
- [ `5.3-apache` (*5.3/apache/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.3/apache/Dockerfile)
- [ `5.3-cli` (*5.3/cli/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.3/cli/Dockerfile)
- [ `5.3-fpm` (*5.3/fpm/Dockerfile*)](https://github.com/yvh/docker-php-prod/blob/5.3/fpm/Dockerfile)

# Base image

[yannickvh/php](https://hub.docker.com/r/yannickvh/php)

# How to use this image

Same use as the [official PHP docker image](https://hub.docker.com/_/php/) and [yannickvh/php](https://hub.docker.com/r/yannickvh/php)

## Additional environment variables

`SERVER_NAME`

Define server name for apache

`SERVER_ALIAS`

Define server alias for apache

`WEB_DIR`

Define web directory for apache

`INSTALL_WP_CLI`

Install the last version of wp-cli (not available for `5.3*`)

`INSTALL_COMPOSER`

Install the last version of composer (not available for `5.3*`)

`COMPOSER_VERSION`

Choose composer version `--1` or `--2` (default `--2`)

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact me through a [GitHub issue](https://github.com/yvh/docker-php-prod/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/docker-library/php/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

## Documentation

Documentation for this image is stored in the [`php/` directory](https://github.com/docker-library/docs/tree/master/php) of the [`docker-library/docs` GitHub repo](https://github.com/docker-library/docs). Be sure to familiarize yourself with the [repository's `README.md` file](https://github.com/docker-library/docs/blob/master/README.md) before attempting a pull request.

## Credits

This image is based from the [official PHP docker image](https://hub.docker.com/_/php/)
