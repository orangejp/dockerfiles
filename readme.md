# Lamp Stack Using Docker

On the premise of using docker for mac of docker for Windows / Mac of Windows,
LAMP stack:

* CentOS 6.x / PHP 5.3
* CentOS 6.x / PHP 5.6 for laravel (DocumentRoot /var/www/app)
* CentOS 6.x / PHP 5.6 for laravel (DocumentRoot /var/www/app/public)

We have a Dockerfile for building the development environment of.

Using the image by Dockerfile recorded in this repository,
By launching with service.sh, you can debug like PHP embedded server.


## How to build docker image

* Move to the directory of the Lamp stack to use
* Execute the following command

```
$ Docker build ./ -t <image name>
```

`<Image name>` is easy to understand for the following.

| Stack Name | Image Name |
|-------|----------|
| CentOS 6.x / PHP 5.3 | centos6-apache-php53 |
| CentOS 6.x / PHP 5.6 | centos6-apache-php56 |
| CentOS 6.x / PHP 5.6 | centos6-apache-php56-laravel |

## Started by service.sh

Copy service.sh to the application root directory.
Change to the variable in service.sh, docker image name that uses `image_name`, 
and start the lamp stack with the following command.

```
$ cd <application root>
$ ./service.sh
```

