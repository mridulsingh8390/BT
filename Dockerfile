FROM centos:7
MAINTAINER Mridul
RUN yum -y install httpd
#RUN echo "Hello Apache server on CentOS7 Docker" > /var/www/html/index.html
COPY . /var/www/html/
#workdir /var/www/html
CMD [ "/usr/sbin/httpd" , "-D", "FOREGROUND"]
EXPOSE 80 
