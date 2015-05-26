```
virtualenv /usr/bin/python3 env
source env/bin/activate

pip install -r requirement.txt
pip install --allow-external PIL
./server_celery.py
./generate_thumbnail_celery
```
