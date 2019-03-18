# Docker Image Packaging for PHP

## 7.3.x-0alvistack1 - TBC

### Major Changes

  - Upgrade memcached.so for PHP 7.3 (https://github.com/php-memcached-dev/php-memcached/issues/408)
  - Upgrade to GeoLite2 (https://support.maxmind.com/geolite-legacy-discontinuation-notice/)
  - Align ENTRYPOINT as upstream image
  - Add some debug utils
  - Add checksum for curl

## 7.3.0-0alvistack2 - 2018-12-15

### Major Changes

  - Add PHP 7.3 support

### PHP \>= 7.0

  - Install memcached from master (<https://github.com/php-memcached-dev/php-memcached/issues/408>)

### PHP 5.6

  - Enable mysql extension

## 7.2.11-0alvistack1 - 2018-10-29

### Major Changes

  - Upgrade Docker base image to php:7.2-cli
  - Update dumb-init to v.1.2.2
  - Add ImageMagick support

## 7.1.15-0alvistack1 - 2018-03-13

  - Running PHP with Docker
  - Official PHP docker image based
  - Handle ENTRYPOINT with dumb-init
  - Add common PHP extensions
