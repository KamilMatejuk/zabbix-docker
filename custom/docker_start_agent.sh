#!/bin/sh

host=10.91.120.118
port=12345

docker rm -f some-zabbix-agent && \
docker run --name some-zabbix-agent \
    -e ZBX_SERVER_HOST=$host \
    -e ZBX_SERVER_PORT=$port \
    -e ZBX_LISTENPORT=$port \
    -e ZBX_PASSIVESERVERS=$host \
    -e ZBX_ACTIVESERVERS=$host \
    -e ZBX_DEBUGLEVEL=5 \
    --network host --privileged -d \
    zabbix-agent2:ubuntu-6.0.2
