# Docker Image Packaging for PHP-FPM

## YYYYMMDD.Y.Z - TBC

### Major Changes

## 20230301.1.1 - 2023-03-01

### Major Changes

-   Support Ansible community package 7.3.0

## 20230201.1.1 - 2023-02-01

### Major Changes

-   Support Ansible community package 7.2.0

## 20221209.1.1 - 2022-12-09

### Major Changes

-   Support Ansible community package 7.1.0

## 20221126.1.1 - 2022-11-26

### Major Changes

-   Support Ansible community package 7.0.0

## 20221110.1.1 - 2022-11-10

### Major Changes

-   Support Ansible community package 6.6.0

## 20221014.1.1 - 2022-10-14

### Major Changes

-   Support Ansible community package 6.5.0
-   Simplify with PHP-FPM only

## 20220915.1.1 - 2022-09-15

### Major Changes

-   Support Ansible community package 6.4.0

## 20220824.1.1 - 2022-08-24

### Major Changes

-   Support Ansible community package 6.3.0

## 20220803.1.1 - 2022-08-03

### Major Changes

-   Support Ansible community package 6.2.0

## 20220714.1.1 - 2022-07-14

### Major Changes

-   Support Ansible community package 6.1.0
-   Remove Ubuntu 21.10 support

## 20220622.1.1 - 2022-06-22

### Major Changes

-   Support Ansible community package 6.0.0

## 20220608.1.1 - 2022-06-08

### Major Changes

-   Support Ansible community package 5.9.0

## 20220520.1.1 - 2022-05-20

### Major Changes

-   Support Ansible community package 5.8.0
-   Remove Fedora 34 support

## 20220427.1.1 - 2022-04-27

### Major Changes

-   Rename Ansible Role with FQCN
-   Support Ansible community package 5.7.0
-   Ubuntu 22.04 based
-   Support RHEL 9
-   Support CentOS 9 Stream
-   Support openSUSE Leap 15.4

## 20220407.1.2 - 2022-04-07

### Major Changes

-   Support Ansible community package 5.6.0
-   Support Fedora 36
-   Support Ubuntu 22.04
-   Support Ansible community package 5.5.0
-   Support Ansible community package 5.4.0

## 20220211.1.1 - 2022-02-11

### Major Changes

-   Remove Ubuntu 21.04 support
-   Skip package upgrade before running molecule
-   Support PHP 8.1
-   Remove PHP 7.3 support

## 20211231.1.3 - 2021-12-31

### Major Changes

-   Support Fedora Rawhide
-   Support Debian Testing
-   Remove openSUSE Leap 15.2 support
-   Upgrade minimal Ansible community package support to 4.10

## 20211020.1.1 - 2021-10-20

### Major Changes

-   Install dependencies with package manager
-   Upgrade minimal Ansible community package support to 4.7.0

## 20210718.1.1 - 2021-07-18

### Major Changes

-   Upgrade minimal Ansible community package support to 4.2.0

## 20210602.1.1 - 2021-06-02

### Major Changes

-   Upgrade minimal Ansible support to 4.0.0
-   Support PHP 8.0

## 20210313.1.1 - 2021-03-13

### Major Changes

-   Bugfix [ansible-lint `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
-   Bugfix [ansible-lint `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
-   Bugfix [ansible-lint `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)
-   Change GIT tag as per Vagrant Box naming and versioning limitation

## 7.4.12-4alvistack2 - 2020-12-09

### Major Changes

-   Migrate from Travis CI to GitLab CI
-   Revamp with Packer

## 7.4.11-4alvistack1 - 2020-10-14

### Major Changes

-   Refine Molecule matrix

## 7.4.9-4alvistack2 - 2020-08-26

### Major Changes

-   Upgrade minimal Ansible Lint support to 4.3.2
-   Upgrade Travis CI test as Ubuntu Focal based
-   Upgrade minimal Ansible support to 2.10.0

## 7.4.6-4alvistack4 - 2020-06-10

### Major Changes

-   Revamp `create`, `side_effect`, `verify` and `destroy` logic
-   Replace `tini` with `catatonit`
-   Rename `post_tasks.yml` as `side_effect.yml`
-   Upgrade base image to Ubuntu 20.04

## 7.4.3-4alvistack4 - 2020-03-05

### Major Changes

-   Revamp with Molecule and `docker commit`
-   Consolidate molecule tests into `default` (noop)
-   Hotfix for systemd

## 7.4.1-3alvistack1 - 2020-01-15

### Major Changes

-   Replace `dumb-init` with `tini`, as like as `docker --init`
-   Include release specific vars and tasks
-   Revamp template for `/etc/php/`

## 7.4.1-2alvistack1 - 2019-12-27

### Major Changes

-   Add 7.4 support
-   Remove unsupported 7.1

## 7.3.11-2alvistack1 - 2019-11-05

### Major Changes

-   Upgrade minimal Ansible support to 2.9.0
-   Upgrade Travis CI test as Ubuntu Bionic based
-   Default with Python 3
-   Hotfix for en_US.utf8 locale

## 7.3.10-1alvistack1 - 2019-10-13

### Major Changes

-   Revamp as Ansible based

## 7.3.5-0alvistack2 - 2019-05-20

### Major Changes

-   Bugfix "Build times out because no output was received"

## 7.3.4-0alvistack3 - 2019-04-16

### Major Changes

-   Remove legacy 5.6/7.0 support as upstream image
-   Improve checksum handling

## 7.3.3-0alvistack1 - 2019-03-18

### Major Changes

-   Upgrade memcached.so for PHP 7.3 (<https://github.com/php-memcached-dev/php-memcached/issues/408>)
-   Upgrade to GeoLite2 (<https://support.maxmind.com/geolite-legacy-discontinuation-notice/>)
-   Align ENTRYPOINT as upstream image
-   Add some debug utils
-   Add checksum for curl

## 7.3.0-0alvistack2 - 2018-12-15

### Major Changes

-   Add PHP 7.3 support

### PHP \>= 7.0

-   Install memcached from master (<https://github.com/php-memcached-dev/php-memcached/issues/408>)

### PHP 5.6

-   Enable mysql extension

## 7.2.11-0alvistack1 - 2018-10-29

### Major Changes

-   Upgrade Docker base image to php:7.2-cli
-   Update dumb-init to v.1.2.2
-   Add ImageMagick support

## 7.1.15-0alvistack1 - 2018-03-13

-   Running PHP with Docker
-   Official PHP docker image based
-   Handle ENTRYPOINT with dumb-init
-   Add common PHP extensions
