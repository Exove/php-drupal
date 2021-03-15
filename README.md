# php-drupal

Drupal local development tool, Docker image

This is a container for local Drupal development. 

PHP extensions are listed in 
https://github.com/Exove/php-container/tree/7.4/

Composer version is inherited from
https://github.com/Exove/php-composer/tree/7.4

See https://github.com/Exove/local-docker/

        $ docker run xoxoxo/php-drupal:7.4-1.0 bash -c 'php -v; composer --version; drush --version'
        PHP 7.4.16 (cli) (built: Mar  6 2021 04:31:10) ( NTS )
        Copyright (c) The PHP Group
        Zend Engine v3.4.0, Copyright (c) Zend Technologies
            with Zend OPcache v7.4.16, Copyright (c), by Zend Technologies
            with Xdebug v3.0.3, Copyright (c) 2002-2021, by Derick Rethans
        Composer version 2.0.11 2021-02-24 14:57:23
        Drush Launcher Version: 0.9.0
        The Drush launcher could not find a Drupal site to operate on. Please do *one* of the following:
          - Navigate to any where within your Drupal project and try again.
          - Add --root=/path/to/drupal so Drush knows where your site is located.