FROM yipikay/php:8.0

LABEL maintainer="Matthieu Beurel <matthieu@yipikai.studio>"

RUN apk update && apk upgrade
RUN apk add --update --no-cache supervisor

RUN apk add --update --no-cache bash \
  postgresql-client=9.6.13-r0 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.6/main \
  php8-pdo_pgsql \
  php8-pgsql \
  mysql-client \
  php8-pdo_mysql


COPY docker-entrypoint.sh /
RUN chmod -R 755 /docker-entrypoint.sh
#  Init Workdir, Entrypoint, CMD
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 9900
STOPSIGNAL SIGQUIT

WORKDIR /home/www-data/website/var
CMD ["/usr/bin/supervisord", "-c", "/home/www-data/supervisord.conf"]