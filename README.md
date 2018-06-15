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

# Installed tools

- PHP extensions: `gd, gettext, imap, intl, ldap, memcached, mysqli, opcache, pdo_mysql, sockets, xmlrpc, zip`
- Composer - 1.6.5
- Drush 8.1.16 - https://www.drush.org/
- Drupal Console 8.1.16 - https://drupalconsole.com/
- SSMTP - `sendmail` replacement, use with `eaudeweb/mailtrap` / external SMTP
- Command line utilities: git vim wget unzip nodejs grunt

# Build images on local

```
cd 5.6
docker build -t eaudeweb/php-fpm:5.6-1.0.2 .
docker run  --name test56 --rm eaudeweb/php-fpm:5.6-1.0.2
docker exec -ti test56 bash

cd 7.1
docker build -t eaudeweb/php-fpm:7.1-1.0.2 .
docker run  --name test71 --rm eaudeweb/php-fpm:7.1-1.0.2
docker exec -ti test71 bash

cd 7.2
docker build -t eaudeweb/php-fpm:7.2-1.0.2 .
docker run  --name test72 --rm eaudeweb/php-fpm:7.2-1.0.2
docker exec -ti test72 bash

```
