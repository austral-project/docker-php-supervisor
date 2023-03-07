# Austral Docker PHP 8.0

[![License](https://img.shields.io/github/license/austral-project/docker-php-supervisor)](https://img.shields.io/github/license/austral-project/docker-php-supervisor)
[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/australproject/php-supervisor/8.1)](https://img.shields.io/docker/v/australproject/php-supervisor/8.1)
[![Docker Automated build](https://img.shields.io/docker/automated/australproject/php-supervisor)](https://img.shields.io/docker/automated/australproject/php-supervisor)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/australproject/php-supervisor)](https://img.shields.io/docker/cloud/build/australproject/php-supervisor)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/australproject/php-supervisor)](https://img.shields.io/docker/image-size/australproject/php-supervisor)

View repository for the base image PHP 8.0 : [Docker Hub](https://hub.docker.com/r/australproject/php/) or [Gitub](https://github.com/austral-project/docker-php)

__Versions__
* PHP : 8.1.16
* PostgreSQL-client : 15.2
* MySQL-client : 10.6.12
* Supervisor : 4.2.5

__VARS defined :__
* APP_ENV : prod or dev
* APP_DEBUG : true or false
* XDEBUG -> to active php module

## Commit Messages

The commit message must follow the [Conventional Commits specification](https://www.conventionalcommits.org/).
The following types are allowed:

* `update`: Update
* `fix`: Bug fix
* `feat`: New feature
* `docs`: Change in the documentation
* `spec`: Spec change
* `test`: Test-related change
* `perf`: Performance optimization

Examples:

    update : Something

    fix: Fix something

    feat: Introduce X

    docs: Add docs for X

    spec: Z disambiguation

## License and Copyright
See [License](https://austral.dev/en/license)

## Credits
Created by [Matthieu Beurel](https://www.mbeurel.com). Sponsored by [Yipikai Studio](https://yipikai.studio).