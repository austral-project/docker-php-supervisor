FROM australproject/php:8.1

LABEL maintainer="Matthieu Beurel <matthieu@yipikai.studio>"

RUN apk update && apk upgrade
RUN apk add --update --no-cache supervisor
RUN apk del nodejs npm --quiet

RUN rm -rf /var/cache/apk/*
RUN rm -rf /usr/lib/node_modules/

EXPOSE 9900
STOPSIGNAL SIGQUIT

WORKDIR /home/www-data/website/var
CMD ["/usr/bin/supervisord", "-c", "/home/www-data/supervisord.conf"]