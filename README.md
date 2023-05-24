# Docker Image Packaging for PHP-FPM

<a href="https://alvistack.com" title="AlviStack" target="_blank"><img src="/alvistack.svg" height="75" alt="AlviStack"></a>

[![GitLab pipeline
status](https://img.shields.io/gitlab/pipeline/alvistack/docker-php-fpm/master)](https://gitlab.com/alvistack/docker-php-fpm/-/pipelines)
[![GitHub
tag](https://img.shields.io/github/tag/alvistack/docker-php-fpm.svg)](https://github.com/alvistack/docker-php-fpm/tags)
[![GitHub
license](https://img.shields.io/github/license/alvistack/docker-php-fpm.svg)](https://github.com/alvistack/docker-php-fpm/blob/master/LICENSE)
[![Docker
Pulls](https://img.shields.io/docker/pulls/alvistack/php-8.1-fpm.svg)](https://hub.docker.com/r/alvistack/php-8.1-fpm)

PHP is a popular general-purpose scripting language that is especially
suited to web development.

Learn more about PHP: <https://php.net/>

## Supported Tags and Respective Packer Template Links

-   [`alvistack/php-8.1-fpm`](https://hub.docker.com/r/alvistack/php-8.1-fpm)
    -   [`packer/docker-8.1-fpm/packer.json`](https://github.com/alvistack/docker-php-fpm/blob/master/packer/docker-8.1-fpm/packer.json)
-   [`alvistack/php-8.0-fpm`](https://hub.docker.com/r/alvistack/php-8.0-fpm)
    -   [`packer/docker-8.0-fpm/packer.json`](https://github.com/alvistack/docker-php-fpm/blob/master/packer/docker-8.0-fpm/packer.json)
-   [`alvistack/php-7.4-fpm`](https://hub.docker.com/r/alvistack/php-7.4-fpm)
    -   [`packer/docker-7.4-fpm/packer.json`](https://github.com/alvistack/docker-php-fpm/blob/master/packer/docker-7.4-fpm/packer.json)

## Overview

This Docker container makes it easy to get an instance of PHP up and
running.

Based on [Official Ubuntu Docker
Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

-   Packaging by Packer Docker builder and Ansible provisioner in single
    layer
-   Handle `ENTRYPOINT` with
    [catatonit](https://github.com/openSUSE/catatonit)
-   Change `User` and `Group` to `www-data`
-   Change `DocumentRoot` to `/var/www/html`
-   Additional PHP extensions:
    -   bcmath
    -   bz2
    -   calendar
    -   exif
    -   gd
    -   gettext
    -   iconv
    -   imap
    -   intl
    -   json
    -   ldap
    -   mbstring
    -   mysql
    -   mysqli
    -   opcache
    -   pcntl
    -   pdo_mysql
    -   pdo_pgsql
    -   pdo_sqlite
    -   pgsql
    -   shmop
    -   simplexml
    -   soap
    -   sockets
    -   sysvmsg
    -   sysvsem
    -   sysvshm
    -   tidy
    -   wddx
    -   xml
    -   xmlrpc
    -   xsl
    -   zip
-   Additional PECL extensions:
    -   apcu
    -   apcu_bc
    -   geoip
    -   imagick
    -   memcached
    -   redis
    -   uuid

### Quick Start

For the `VOLUME` directory that is used to store the repository data
(amongst other things) we recommend mounting a host directory as a [data
volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes),
or via a named volume if using a docker version \>= 1.9.

Start PHP:

    # Pull latest image
    docker pull alvistack/php-8.1-fpm

    # Run with built-in web server
    docker run \
        -itd \
        --rm \
        --name php \
        --publish 8080:8080 \
        alvistack/php-8.1-fpm \
        php -S 0.0.0.0:8080 -t /var/www/html

**Success**. PHP is now available on <http://localhost:8080/phpinfo.php>

## Versioning

### `YYYYMMDD.Y.Z`

Release tags could be find from [GitHub
Release](https://github.com/alvistack/docker-php-fpm/tags) of this
repository. Thus using these tags will ensure you are running the most
up to date stable version of this image.

### `YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab
pipeline](https://gitlab.com/alvistack/docker-php-fpm/-/pipelines) in
weekly basis. Thus using these tags will ensure you are running the
latest packages provided by the base image project.

## License

-   Code released under [Apache License 2.0](LICENSE)
-   Docs released under [CC BY
    4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

-   Wong Hoi Sing Edison
    -   <https://twitter.com/hswong3i>
    -   <https://github.com/hswong3i>
