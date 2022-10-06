FROM php:7.0-apache

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/espaciorural/testing.git /var/www/html

RUN echo "ServerName localhost:8081" >> /etc/apache2/apache2.conf
COPY . /var/www/html/
EXPOSE 80