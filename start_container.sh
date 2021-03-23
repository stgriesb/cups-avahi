#!/bin/bash

sudo docker run -d --network host --name cups --restart always \
-p 631:631/tcp \
-v /volume1/docker/cups/cfg/spool:/var/spool:rw \
-v /volume1/docker/cups/cfg:/etc/cups:rw \
-v /etc/localtime:/etc/localtime:ro \
-e "CUPS_ADMIN_USERNAME=admin" \
-e "CUPS_ADMIN_PASSWORD=j0x8rT4%sG" \
cups:latest 