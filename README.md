Docker image for PHP-FPM
========================

To override the `php.ini` or `www.conf` (PHP-FPM default pool configuration), you can retrieve the proper file from each directory, customize and mount its. Example `docker-compose.yml`:

```
version: '2.0'
services:
  php71:
    image: eaudeweb/php-fpm:7.1-1.0.1
    volumes:
      - ./config/custom-php.ini:/usr/local/etc/php/php.ini
      - ./config/custom-www.conf:/usr/local/etc/php-fpm.d/www.conf

```
