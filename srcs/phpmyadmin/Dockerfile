FROM alpine:3.12

RUN apk update
RUN apk upgrade
WORKDIR	/var/www/
RUN apk add wget php7 php7-mysqli php7-fpm php7-pdo php7-gd php7-cli php7-mbstring php7-json php7-session nginx

RUN mkdir -p /run/nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin

COPY	./config.inc.php phpmyadmin/

COPY ./init.sh ./
RUN  chmod +x init.sh

EXPOSE 5000

CMD ["./init.sh"]