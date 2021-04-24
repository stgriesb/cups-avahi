# docker build -t cups .
# docker save cups:latest | gzip > cups.tar.gz
# mv cups.tar.gz /mnt/Downloads

FROM ubuntu:latest

RUN apt-get update -qq && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        cups avahi-daemon printer-driver-cups-pdf && \
        apt-get clean && find /var/lib/apt/lists -type f -delete

COPY *.conf docker-entrypoint.sh /tmp/
RUN chmod +x /tmp/docker-entrypoint.sh

EXPOSE 631
VOLUME ["/etc/cups"]
VOLUME ["/var/spool"]
VOLUME ["/var/log/cups"]
VOLUME ["/var/cache/cups"]
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
