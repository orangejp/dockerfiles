#!/bin/bash

container_name=httpd56
image_name=centos6-apache-php56-laravel
port=8000

docker run --name $container_name \
    --rm \
    -p $port:80 \
    -v $(pwd):/var/www/app $image_name \
    /usr/sbin/httpd -d /etc/httpd -DFOREGROUND
