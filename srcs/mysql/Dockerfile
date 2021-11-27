FROM alpine:3.12

RUN apk update && apk upgrade

RUN apk add mysql mysql-client openrc

COPY srcs/start.sh ./
RUN  chmod +x ./start.sh
COPY srcs/my.cnf /etc/mysql/
COPY wordpress.sql ./
EXPOSE 3306

CMD ["./start.sh"]