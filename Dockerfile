# on afternoon, weekend, hanoi, vietnam
FROM ubuntu:14.04
MAINTAINER Nguyen Sy Thanh Son <thanhson1085@gmail.com>

RUN \
    apt-get update && \
    apt-get install -y python-pip rabbitmq-server python-dev

RUN apt-get install -y supervisor
RUN apt-get install -y libjpeg-dev

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /build
COPY . /build
RUN \
    pip install PIL --allow-external PIL --allow-unverified PIL && \
    sudo pip install -r requrements.txt

ENV C_FORCE_ROOT "true"
CMD ["/usr/bin/supervisord"]
