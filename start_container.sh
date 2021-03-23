#!/bin/bash

sudo docker run -d --network host --name cups --restart always \
-p 631:631/tcp \
-v /docker/cups/cfg/spool:/var/spool:rw \
-v /docker/cups/cfg:/etc/cups:rw \
-v /etc/localtime:/etc/localtime:ro \
-e "CUPS_ADMIN_USERNAME=ADMIN" \
-e "CUPS_ADMIN_PASSWORD=PASSWORD" \
cups:latest 
