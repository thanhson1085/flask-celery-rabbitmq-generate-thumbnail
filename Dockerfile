# on afternoon, weekend, hanoi, vietnam
FROM ubuntu:14.04
MAINTAINER Nguyen Sy Thanh Son <thanhson1085@gmail.com>

RUN \
    apt-get update && \
    apt-get install -y python-pip rabbitmq-server python-dev

RUN apt-get install -y supervisor
RUN apt-get install -y libjpeg8-dev python-imaging

# To solve "JPEG support not available" in PIL
RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib

# Supervisort supports run multiprocess in Docker Image
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /build
ADD . /build
RUN \
    pip install PIL --allow-external PIL --allow-unverified PIL && \
    sudo pip install -r requrements.txt

# Run Celery with Root Account
ENV C_FORCE_ROOT "true"
CMD ["/usr/bin/supervisord"]
