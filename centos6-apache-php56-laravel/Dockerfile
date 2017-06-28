FROM centos:6
MAINTAINER Y.Arakawa <y_arakawa@pcp.co.jp>

USER root

# install httpd
RUN yum -y install httpd vim-enhanced bash-completion unzip

RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# remi repo
RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && \
    yum clean all
COPY remi.repo /etc/yum.repos.d/

# install php56
RUN yum -y install --enablerepo=remi --enablerepo=remi-php56 php php-devel php-common php-cli php-mbstring php-fpm php-pecl-apcu \
php-pear php-pdo php-opcache php-mcrypt php-pecl-xhprof php-xml php-pecl-memcached php-pecl-imagick php-pecl-mailparse php-mysqlnd

RUN yum clean all

COPY vhost.conf /etc/httpd/conf.d/vhost.conf
