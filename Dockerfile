FROM wordpress:latest
RUN a2enmod headers

COPY config/wp-config.php /var/www/html/wp-config.php

RUN curl -sLO https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
    && chmod +x mhsendmail_linux_amd64 \
    && mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail

COPY config/php-custom.ini /usr/local/etc/php/conf.d/php-custom.ini