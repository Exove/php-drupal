FROM xoxoxo/php-composer:7.4-1.0

# Drush needs mysql connection outside PHP.
RUN apk add --no-cache 'mariadb-client=~10'

# Drush and Drupal console should be installed via composer
# (during composer create-project).
# However we'll install the drush launcher which will find that without
# hardcoded bash aliasees.
# @see https://github.com/drush-ops/drush-launcher
RUN wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/latest/download/drush.phar
RUN chmod +x drush.phar
RUN mv drush.phar /usr/local/bin/drush
# Run self update during the build.
RUN drush self-update

RUN php -v
RUN composer --version
