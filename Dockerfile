# Apache puro DockerFile 
#FROM docker.io/darksheer/centos:latest
FROM ubi7/ubi:7.7
#ENV GOPATH=/root/buildah 

RUN yum -y install \ 
     httpd \ 
     git \ 
     php
 
EXPOSE 80
ENV LogLevel "info" 
COPY ./src/teste.* /var/www/html 
USER root
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
