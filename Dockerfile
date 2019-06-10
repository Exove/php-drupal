FROM xoxoxo/php-composer:7.2-composer-1.8.5

# Drush needs mysql connection outside PHP.
RUN apk add --no-cache mariadb-client

# Drush and Drupal console should be installed via composer
# (during composer create-project).
