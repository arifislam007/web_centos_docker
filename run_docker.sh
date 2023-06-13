#!/bin/bash
mkdir /webdata
docker build -t nginx:v1 .
docker run -itd --name web01 -p 95:80 -v /webdata:/var/www/html/ nginx:v1