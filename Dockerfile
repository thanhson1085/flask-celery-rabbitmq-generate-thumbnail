# on afternoon, weekend, hanoi, vietnam
FROM ubuntu:14.04
MAINTAINER Nguyen Sy Thanh Son <thanhson1085@gmail.com>

RUN \
    apt-get update && \
    apt-get install -y python-pip python-virtualenv rabbitmq-server python-dev

WORKDIR /build
ADD . /build
RUN \
    virtualenv -p /usr/bin/python env && \
    . env/bin/activate && \
    pip install PIL --allow-external PIL --allow-unverified PIL && \
    sudo pip install -r requrements.txt

CMD python server_celery.py
CMD celery worker -A generate_thumbnail_celery -l INFO
