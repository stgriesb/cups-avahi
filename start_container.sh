#!/bin/bash

sudo docker run -d --network host --name cups-avahi --restart always \
-p 631:631/tcp \
-v /volume1/docker/cups-avahi/cfg/spool:/var/spool \
-v /volume1/docker/cups-avahi/cfg:/etc/cups \
-v /etc/localtime:/etc/localtime:ro \
-e "CUPS_ADMIN_USERNAME=ADMIN" \
-e "CUPS_ADMIN_PASSWORD=PASSWORD" \
cups:latest
