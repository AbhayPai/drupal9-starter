# build from debian:buster-slim from debian folder
FROM drupal:9.4.8-php7.4-fpm-buster
ENV PHP_VER 7.4

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# PHP Configuration
COPY --chown=www-data:www-data automation/docker-utils/php/php.ini /etc/php/${PHP_VER}/fpm/php.ini
COPY --chown=www-data:www-data automation/docker-utils/php/${PHP_VER}/pool.d/www.conf /etc/php/${PHP_VER}/fpm/pool.d/www.conf

# Apache configurations
COPY automation/docker-utils/apache2/app.conf /etc/apache2/sites-enabled/000-default.conf
COPY automation/docker-utils/apache2/ports.conf /etc/apache2/ports.conf

# Supervisord
COPY automation/docker-utils/supervisord/supervisord.conf /etc/supervisor/supervisord.conf
COPY automation/docker-utils/supervisord/conf.d/ /etc/supervisor/conf.d/
COPY automation/docker-utils/scripts/start.sh /start.sh
COPY automation/docker-utils/scripts/postscript /postscript

ENV  XDEBUG_PROFILER_ENABLE=0
RUN chown -R www-data:www-data /var/www \
    && chown www-data:www-data /start.sh \
    && chown www-data:www-data /postscript \
    && chmod +x /start.sh \
    && chmod +x /postscript

# Set Workdir
RUN  mkdir -p /var/www/html/ \
    && mkdir /var/run/php \
    && mkdir /var/run/apache2 \
    && touch /var/log/supervisord.log \
    && touch /var/log/php${PHP_VER}-fpm.log \
    && mkdir -p /var/www/html/web/sites/default/files/

COPY . /var/www/html/
WORKDIR /var/www/html/

EXPOSE 8088
# Permission settings
RUN chmod -R 777 /var/www/html/web/sites/default/files/ \
    && chown -R www-data:www-data /var/run/php \
    && chown -R www-data:www-data /var/run/apache2 \
    && chown -R www-data:www-data /var/log/apache2 \
    && chown -R www-data:www-data /var/www/html \
    && chown -R www-data:www-data /var/log/supervisord.log \
    && chown -R www-data:www-data /var/log/php${PHP_VER}-fpm.log

USER www-data

CMD ["/usr/bin/supervisord",  "-n", "-c", "/etc/supervisor/supervisord.conf"]
