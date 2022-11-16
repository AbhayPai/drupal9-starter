#!/bin/bash
: ${WWW_UID:=33}
: ${WWW_GID:=33}
usermod -u $WWW_UID www-data
# groupmod -g $WWW_GID www-data
# Start supervisord and services

# sleep time depends on the size of the database 
#sleep 60
#composer global require drush/drush
#/var/www/.composer/vendor/bin/drush -y config-set system.performance css.preprocess 0 
#/var/www/.composer/vendor/bin/drush -y config-set system.performance js.preprocess 0 
#/var/www/.composer/vendor/bin/drush cr
exec /usr/bin/supervisord  -n -c /etc/supervisor/supervisord.conf
Collapse
