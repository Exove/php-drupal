FROM xoxoxo/php-composer:7.3-1.3

# Drush needs mysql connection outside PHP.
RUN apk add --no-cache 'mariadb-client=~10'

# Drush and Drupal console should be installed via composer
# (during composer create-project).

RUN php -v
RUN composer --version
