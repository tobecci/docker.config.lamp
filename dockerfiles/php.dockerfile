FROM php:7.0.19-apache

WORKDIR /var/www/html

COPY ../ .

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN docker-php-ext-enable pdo pdo_mysql mysqli

RUN a2enmod rewrite

EXPOSE 80/tcp

CMD ["apache2-foreground"]