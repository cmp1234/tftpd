FROM alpine:latest

RUN apk add --no-cache tftp-hpa && mkdir /tftpboot

EXPOSE 69/udp

CMD ["/usr/sbin/in.tftpd", "-v", "-v", "-v", "-v", "-v", "--map-file", "/tftpboot/map-file", "/tftpboot"]
