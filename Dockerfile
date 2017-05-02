FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y samba 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
