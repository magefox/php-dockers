FROM php:7.2-cli

MAINTAINER Magefox <magefoxtech@gmail.com>

RUN apt-get update && docker-php-ext-install -j$(nproc) mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version