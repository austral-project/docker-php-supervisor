FROM australproject/php:8.0

LABEL maintainer="Matthieu Beurel <matthieu@yipikai.studio>"

RUN apk update && apk upgrade
RUN apk add --update --no-cache supervisor

EXPOSE 9900
STOPSIGNAL SIGQUIT

WORKDIR /home/www-data/website/var
CMD ["/usr/bin/supervisord", "-c", "/home/www-data/supervisord.conf"]