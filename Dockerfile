FROM php:7.0-apache
RUN apt-get update
RUN apt-get install libssl-dev -y
RUN pecl install mongodb && docker-php-ext-enable mongodb
RUN echo "extension=mongo.so" > /usr/local/etc/php/conf.d/ext-mongo.ini
COPY . /var/www/html
