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

Overview
--------

This Docker container makes it easy to get an instance of PHP up and running.

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

