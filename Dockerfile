FROM xoxoxo/php-composer:7.1-composer-1.8.5

# Drush needs mysql connection outside PHP. Composer needs git.
RUN apk add --no-cache mariadb-client git

# Drush and Drupal console should be installed via composer
# (during composer create-project).
