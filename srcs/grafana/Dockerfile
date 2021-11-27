FROM alpine:3.12

RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

EXPOSE	3000

WORKDIR	/usr/share/grafana
COPY grafana.db ./data/
COPY ./start.sh ./
RUN  chmod +x start.sh

CMD ["./start.sh"]