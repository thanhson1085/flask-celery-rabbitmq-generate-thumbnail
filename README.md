If you are learning the way how to work with RABBITMQ + CELERY. This source code may help you.

This source code supports 2 ways to run it.

At the first, clone this source code to your local:
```
git clone https://github.com/thanhson1085/flask-celery-rabbitmq-generate-thumbnail.git
```

### Using Docker
Build from Dockerfile
```
sudo docker build -t thanhson1085/flask-celery-rabbitmq-example .
```
Or pull from Docker Repo
```
sudo docker pull thanhson1085/flask-celery-rabbitmq-example
```
Run Docker image
```
sudo docker run -i -t -p 5000:5000 thanhson1085/flask-celery-rabbitmq-example
```
And waiting for the output as below
```
celery_task stderr | [2015-07-29 06:04:52,580: INFO/MainProcess] Connected to amqp://guest:**@127.0.0.1:5672//
```

### Install packets normally (Ubuntu 14.04)
I will show you how to run this source code from scratch. And i am using ubuntu server 14.04, installed virtualenv, pip.

Install RabbitMQ Server
```
sudo apt-get install rabbitmq-server libjpeg8-dev python-imaging
```

Fix the issue of PIL
```
ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
```

Create environment to run the application with virtualenv
```
cd flask-celery-rabbitmq-generate-thumbnail
virtualenv env
source env/bin/activate
```

Install all packets required
```
pip install -r requirement.txt
pip install PIL --allow-external PIL --allow-unverified PIL
```

Run web server to upload files
```
python ./server_celery.py
```
Run the "generate thumbnail" task in Celery
```
celery worker -A generate_thumbnail_celery -l INFO
```

Now, it is ready for testing.
(http://localhost:5000)

The page should be:

![alt tag](https://sonnguyen.ws/wp-content/uploads/2015/06/29-07-2015-1-07-40-CH.png)

### License

The MIT License (MIT)

Copyright (c) 2015 Nguyen Sy Thanh Son



