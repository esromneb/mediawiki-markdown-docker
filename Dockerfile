FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install apt-utils -y
RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y \
make wget unzip tar git curl



RUN apt-get update && apt-get install -y \
php php-curl

RUN apt-get update && apt-get install -y \
pandoc




RUN cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN git clone https://github.com/outofcontrol/mediawiki-to-gfm /tmp/mediawiki-to-gfm

RUN apt-get update && apt-get install -y \
php-xml php-mbstring

# RUN 
# RUN cd /tmp/mediawiki-to-gfm && php composer.json install
RUN cd /tmp/mediawiki-to-gfm && composer update --no-dev



# RUN ls /