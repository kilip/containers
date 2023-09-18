ARG VERSION

FROM php:${VERSION}-fpm-alpine AS app_php

ENV APP_ENV=prod
ENV PUID=1000
ENV PGID=1000

WORKDIR /srv/app

# php extensions installer: https://github.com/mlocati/docker-php-extension-installer
COPY --from=mlocati/php-extension-installer --link /usr/bin/install-php-extensions /usr/local/bin/

# persistent / runtime deps
RUN apk add --no-cache \
	acl \
	fcgi \
	file \
	gettext \
	git \
	openssh \
	;

RUN set -eux; \
	install-php-extensions \
	intl \
	zip \
	apcu \
	opcache \
  pdo_pgsql \
  pdo_mysql \
  xdebug \
  redis \
;

# https://getcomposer.org/doc/03-cli.md#composer-allow-superuser
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV PATH="${PATH}:/root/.composer/vendor/bin"

COPY --from=composer/composer:2-bin --link /composer /usr/bin/composer
