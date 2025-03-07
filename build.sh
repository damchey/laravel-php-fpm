#!/bin/bash
if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi
echo 'Building Laravel PHP-FPM Image'
docker build -f src/docker/Dockerfile-$tag -t drukhost/laravel-php-fpm:$tag .
