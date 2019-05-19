FROM jakzal/phpqa:alpine

LABEL maintainer="tolgakaprol@gmail.com"

RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN composer global require "wp-coding-standards/wpcs"

RUN phpcs --config-set installed_paths /tools/.composer/vendor/wp-coding-standards/wpcs

RUN phpcs --config-set default_standard WordPress-Extra

CMD php $TOOLBOX_TARGET_DIR/toolbox list-tools
