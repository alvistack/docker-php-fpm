# Docker Image Packaging for PHP

[![Travis](https://img.shields.io/travis/com/alvistack/docker-php.svg)](https://travis-ci.com/alvistack/docker-php)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-php.svg)](https://github.com/alvistack/docker-php/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-php.svg)](https://github.com/alvistack/docker-php/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/php.svg)](https://hub.docker.com/r/alvistack/php/)

PHP is a popular general-purpose scripting language that is especially suited to web development.

Learn more about PHP: <https://php.net/>

## Supported Tags and Respective Packer Template Links

  - [`7.4`, `latest`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.4/packer.json)
  - [`7.4-fpm`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.4-fpm/packer.json)
  - [`7.3`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.3/packer.json)
  - [`7.3-fpm`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.3-fpm/packer.json)
  - [`7.2`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.2/packer.json)
  - [`7.2-fpm`](https://github.com/alvistack/docker-php/blob/master/packer/docker-7.2-fpm/packer.json)

## Overview

This Docker container makes it easy to get an instance of PHP up and running.

Based on [Official Ubuntu Docker Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Packaging by Packer Docker builder and Ansible provisioner in single layer
  - Handle `ENTRYPOINT` with [catatonit](https://github.com/openSUSE/catatonit)
  - Change `User` and `Group` to `www-data`
  - Change `DocumentRoot` to `/var/www/html`
  - Additional PHP extensions:
      - bcmath
      - bz2
      - calendar
      - exif
      - gd
      - gettext
      - iconv
      - imap
      - intl
      - json
      - ldap
      - mbstring
      - mysql
      - mysqli
      - opcache
      - pcntl
      - pdo\_mysql
      - pdo\_pgsql
      - pdo\_sqlite
      - pgsql
      - shmop
      - simplexml
      - soap
      - sockets
      - sysvmsg
      - sysvsem
      - sysvshm
      - tidy
      - wddx
      - xml
      - xmlrpc
      - xsl
      - zip
  - Additional PECL extensions:
      - apcu
      - apcu\_bc
      - geoip
      - imagick
      - memcached
      - redis
      - uuid

### Quick Start

For the `VOLUME` directory that is used to store the repository data (amongst other things) we recommend mounting a host directory as a [data volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes), or via a named volume if using a docker version \>= 1.9.

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

## Versioning

### `alvistack/php:latest`

The `latest` tag matches the most recent [GitHub Release](https://github.com/alvistack/docker-php/releases) of this repository. Thus using `alvistack/php:latest` or `alvistack/php` will ensure you are running the most up to date stable version of this image.

### `alvistack/php:<version>`

The version tags are rolling release rebuild by [Travis](https://travis-ci.com/alvistack/docker-php) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
