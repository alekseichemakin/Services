FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx openssl

COPY ./srcs/nginx.conf /etc/nginx/conf.d/default.conf


RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=21school/CN=mqueen" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

COPY ./srcs/init.sh ./
RUN  chmod +x init.sh
RUN mkdir -p /run/nginx
EXPOSE 80
EXPOSE 443

CMD ["./init.sh"]