FROM php:5.6-apache

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
    git \
    wget \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install mysqli

RUN git clone git://github.com/box/Anemometer.git /var/www/html/anemometer

RUN wget -P /usr/local/bin --no-check-certificate percona.com/get/pt-visual-explain \
    && chmod +x /usr/local/bin/pt-visual-explain

COPY conf/config.inc.php /var/www/html/anemometer/conf/
