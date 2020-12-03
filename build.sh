#!/usr/bin/env bash

set -e

if [ "$1" == "" ]; then
	echo "Example usage: ./test-build.sh 1.0.3"
	exit 1
fi


echo "────────────────────────────────────────────────────"
echo "   Building image for eaudeweb/php-fpm:5.6-$1"
echo "────────────────────────────────────────────────────"
docker build --rm -t eaudeweb/php-fpm:5.6-$1 ./5.6/

echo "────────────────────────────────────────────────────"
echo "   Building image for eaudeweb/php-fpm:7.1-$1"
echo "────────────────────────────────────────────────────"
docker build --rm -t eaudeweb/php-fpm:7.1-$1 ./7.1/

echo "────────────────────────────────────────────────────"
echo "   Building image for eaudeweb/php-fpm:7.2-$1"
echo "────────────────────────────────────────────────────"
docker build --rm -t eaudeweb/php-fpm:7.2-$1 ./7.2/

echo "────────────────────────────────────────────────────"
echo "   Building image for eaudeweb/php-fpm:7.3-$1"
echo "────────────────────────────────────────────────────"
docker build --rm -t eaudeweb/php-fpm:7.3-$1 ./7.3/
