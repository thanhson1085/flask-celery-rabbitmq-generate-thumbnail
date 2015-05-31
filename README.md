If you are learning the way how to work with RABBITMQ + CELERY. This source code may help you.

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
