FROM alpine:3.12

RUN apk update && apk upgrade

RUN apk add vsftpd openssl

RUN adduser -D mqueen && echo "mqueen:123" | chpasswd

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=21school/CN=mqueen" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt;

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY start.sh .

RUN  chmod +x start.sh
EXPOSE 21 30000

CMD ["./start.sh"]