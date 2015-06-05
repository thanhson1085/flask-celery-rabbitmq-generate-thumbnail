If you are learning the way how to work with RABBITMQ + CELERY. This source code may help you.

This source code supports 2 ways to run it.

1. Using Docker
```
sudo docker build -t thanhson1085/flask-celery-rabbitmq-generate-thumbnail .
sudo docker run -i -t -p 5000:5000 thanhson1085/flask-celery-rabbitmq-generate-thumbnail
```

2. Install packets normally
I will show you how to run this source code from scratch. And i am using ubuntu server 14.04, installed virtualenv, pip.

Install RabbitMQ Server:
```
sudo apt-get install rabbitmq-server
```

Clone this source code to your local:
```
git clone https://github.com/thanhson1085/flask-celery-rabbitmq-generate-thumbnail.git
```

Create environment to run the application with virtualenv:
```
cd flask-celery-rabbitmq-generate-thumbnail
virtualenv /usr/bin/python3 env
source env/bin/activate
```

Install all packets required:
```
pip install -r requirement.txt
pip install --allow-external PIL
```

Run web server to upload files
```
./server_celery.py
```
Run the "generate thumbnail" task in Celery
```
./generate_thumbnail_celery
```

Now, it is ready for testing.
