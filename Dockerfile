FROM alpine:edge

RUN apk add --no-cache mongodb mongodb-tools

VOLUME /data/db /data/configdb /data/backup

EXPOSE 27017 28017

COPY run.sh /root
RUN chmod +x /root/run.sh
ENTRYPOINT [ "/root/run.sh" ]

CMD [ "mongod" ]
