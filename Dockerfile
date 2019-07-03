# (c) Wong Hoi Sing Edison <hswong3i@pantarei-design.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM php:7.3-cli

ENV DUMB_INIT_DOWNLOAD_URL                  "https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64"
ENV DUMB_INIT_DOWNLOAD_CHECKSUM             "c16e45a301234c732af4c38be1e1000a2ce1cba8"
ENV MAXMIND_DB_READER_PHP_DOWNLOAD_URL      "https://github.com/maxmind/MaxMind-DB-Reader-php/archive/master.tar.gz"
ENV MAXMIND_DB_READER_PHP_DOWNLOAD_CHECKSUM "319910205a2794183dae2e2c57e9782567758e34"
ENV GEOLITE2_CITY_DOWNLOAD_URL              "https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz"
ENV GEOLITE2_CITY_DOWNLOAD_CHECKSUM         "5c57349a2460561246909c6652e57cfff3f947b4"

ENTRYPOINT [ "dumb-init", "--", "docker-php-entrypoint" ]
CMD        [ "php", "-a" ]

# Prepare APT dependencies
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y automake bison build-essential curl htop less libtool patch vim wget \
    && rm -rf /var/lib/apt/lists/*

# Install dumb-init
RUN set -ex \
    && curl -skL $DUMB_INIT_DOWNLOAD_URL > /usr/local/bin/dumb-init \
    && sha1sum /usr/local/bin/dumb-init \
    && echo "$DUMB_INIT_DOWNLOAD_CHECKSUM /usr/local/bin/dumb-init" | sha1sum -c - \
    && chmod 0755 /usr/local/bin/dumb-init

# Install standard PHP extensions
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libbz2-dev libicu-dev libmariadbclient-dev-compat libpq-dev libsqlite3-dev libtidy-dev libxml2-dev libxslt1-dev libzip-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install -j "$(nproc)" bcmath bz2 calendar exif gettext iconv intl json mbstring mysqli opcache pcntl pdo_mysql pdo_pgsql pdo_sqlite pgsql shmop simplexml soap sockets sysvmsg sysvsem sysvshm tidy wddx xml xmlrpc xsl zip

# Install GD
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libfreetype6-dev libjpeg-dev libpng-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ --with-freetype-dir=/usr/include/ \
    && docker-php-ext-install -j "$(nproc)" gd

# Install IMAP
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libc-client-dev libkrb5-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install -j "$(nproc)" imap

# Install LDAP
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libldap2-dev libsasl2-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure ldap --with-libdir=/lib/x86_64-linux-gnu/ \
    && docker-php-ext-install -j "$(nproc)" ldap

# Install standard PECL extensions
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y imagemagick libmagickwand-dev uuid-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install -f imagick redis uuid \
    && docker-php-ext-enable imagick redis uuid

# Install APCu
RUN set -ex \
    && pecl install -f apcu apcu_bc \
    && docker-php-ext-enable apcu \
    && docker-php-ext-enable apc --ini-name docker-php-ext-apcu_bc.ini

# Install memcached
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libmemcached-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install -f memcached \
    && docker-php-ext-enable memcached

# Install GeoIP2
RUN set -ex \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libmaxminddb-dev \
    && rm -rf /var/lib/apt/lists/* \
    && MAXMIND_DB_READER_PHP="`mktemp -d`" \
    && ARCHIVE="`mktemp --suffix=.tar.gz`" \
    && curl -skL $MAXMIND_DB_READER_PHP_DOWNLOAD_URL > $ARCHIVE \
    && sha1sum $ARCHIVE \
    && echo "$MAXMIND_DB_READER_PHP_DOWNLOAD_CHECKSUM $ARCHIVE" | sha1sum -c - \
    && tar zxf $ARCHIVE --strip-components 1 -C $MAXMIND_DB_READER_PHP \
    && docker-php-ext-configure $MAXMIND_DB_READER_PHP/ext \
    && docker-php-ext-install $MAXMIND_DB_READER_PHP/ext \
    && mkdir -p /usr/local/share/GeoIP \
    && ARCHIVE="`mktemp --suffix=.tar.gz`" \
    && curl -skL $GEOLITE2_CITY_DOWNLOAD_URL > $ARCHIVE \
    && sha1sum $ARCHIVE \
    && echo "$GEOLITE2_CITY_DOWNLOAD_CHECKSUM $ARCHIVE" | sha1sum -c - \
    && gunzip -c $ARCHIVE > /usr/local/share/GeoIP/GeoLite2-City.mmdb \
    && rm -rf /tmp/tmp.*

# Copy files
COPY files /
