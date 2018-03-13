Docker Image Packaging for PHP
==============================

[![Travis](https://img.shields.io/travis/alvistack/docker-php.svg)](https://travis-ci.org/alvistack/docker-php)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-php.svg)](https://github.com/alvistack/docker-php/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-php.svg)](https://github.com/alvistack/docker-php/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/php.svg)](https://hub.docker.com/r/alvistack/php/)

PHP is a popular general-purpose scripting language that is especially suited to web development.

Learn more about PHP: <https://php.net/>

Supported Tags and Respective `Dockerfile` Links
------------------------------------------------

-   [`latest` (master/Dockerfile)](https://github.com/alvistack/docker-php/blob/master/Dockerfile)
-   [`7.2-cli` (7.2.x-cli/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.2.x-cli/Dockerfile)
-   [`7.2-fpm` (7.2.x-fpm/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.2.x-fpm/Dockerfile)
-   [`7.1-cli` (7.1.x-cli/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.1.x-cli/Dockerfile)
-   [`7.1-fpm` (7.1.x-fpm/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.1.x-fpm/Dockerfile)
-   [`7.0-cli` (7.0.x-cli/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.0.x-cli/Dockerfile)
-   [`7.0-fpm` (7.0.x-fpm/Dockerfile)](https://github.com/alvistack/docker-php/blob/7.0.x-fpm/Dockerfile)
-   [`5.6-cli` (5.6.x-cli/Dockerfile)](https://github.com/alvistack/docker-php/blob/5.6.x-cli/Dockerfile)
-   [`5.6-fpm` (5.6.x-fpm/Dockerfile)](https://github.com/alvistack/docker-php/blob/5.6.x-fpm/Dockerfile)

Overview
--------

This Docker container makes it easy to get an instance of PHP up and running.

Based on [Official PHP Docker Image](https://hub.docker.com/_/php/) with additional extensions enabled for CMS use cases, e.g. [Drupal](https://drupal.org/), [WordPress](https://wordpress.org/) or [Matomo](https://matomo.org/):

-   Handle `ENTRYPOINT` with [dumb-init](https://github.com/Yelp/dumb-init)
-   Enable additional PHP extensions
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
    -   mysqli
    -   opcache
    -   pcntl
    -   pdo
    -   pdo\_mysql
    -   pdo\_pgsql
    -   pdo\_sqlite
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
-   Enable additional PECL extensions
    -   apcu
    -   apcu\_bc
    -   geoip
    -   memcached
    -   redis
    -   uuid
-   Install [GeoLite Legacy City Database](https://dev.maxmind.com/geoip/legacy/geolite/)

### Quick Start

For the `VOLUME` directory that is used to store the repository data (amongst other things) we recommend mounting a host directory as a [data volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes), or via a named volume if using a docker version &gt;= 1.9.

Start PHP:

    # Pull latest image
    docker pull alvistack/php

    # Run with built-in web server
    docker run \
        -itd \
        --rm \
        --name php \
        --publish 8080:8080 \
        alvistack/php \
        php -S 0.0.0.0:8080 -t /var/www/html

**Success**. PHP is now available on <http://localhost:8080/phpinfo.php>

Versioning
----------

The `latest` tag matches the most recent version of this repository. Thus using `alvistack/php:latest` or `alvistack/php` will ensure you are running the most up to date version of this image.

License
-------

-   Code released under [Apache License 2.0](LICENSE)
-   Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

Author Information
------------------

-   Wong Hoi Sing Edison
    -   <https://twitter.com/hswong3i>
    -   <https://github.com/hswong3i>

