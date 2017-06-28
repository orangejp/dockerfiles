FROM centos:6
MAINTAINER Y.Arakawa <y_arakawa@pcp.co.jp>

# install httpd
RUN yum -y install httpd vim-enhanced bash-completion unzip

RUN echo "NETWORKING=yes" > /etc/sysconfig/network
# install php
RUN yum install -y php php-* | true
COPY vhost.conf /etc/httpd/conf.d/vhost.conf

mkdir -p /var/www/app

# RUN yum install -y python-pip | true && pip install "pip>=1.4,<1.5" --upgrade | true
# RUN pip install supervisor

# ADD supervisord.conf /etc/
# EXPOSE 22 80 443

# CMD ["supervisord", "-n"]

# RUN service httpd start
