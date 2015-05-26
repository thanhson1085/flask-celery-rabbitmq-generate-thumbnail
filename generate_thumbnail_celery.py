import os, sys
import Image

size = 128, 128 

from celery import Celery
 
app= Celery()
 
@app.task
def generate(src_img,dest_img):
    im = Image.open(src_img)
    im.thumbnail(size)
    im.save(dest_img, "JPEG")
