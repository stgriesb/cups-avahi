#!/bin/bash

sudo docker run -d --network host --name cups-avahi --restart always \
-p 631:631/tcp \
-v /docker/cups-avahi/cfg/spool:/var/spool:rw \
-v /docker/cups-avahi/cfg:/etc/cups:rw \
-v /etc/localtime:/etc/localtime:ro \
-e "CUPS_ADMIN_USERNAME=ADMIN" \
-e "CUPS_ADMIN_PASSWORD=PASSWORD" \
cups:latest 
