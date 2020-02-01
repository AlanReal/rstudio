#!/bin/bash
NAME=rstudio

docker build -t $NAME:1.0 .
docker stop $NAME || true
docker rm -f $NAME || true
#docker run -d --name $NAME --restart always -e TZ=America/Sao_Paulo -p 9999:9999 $NAME:1.0
docker run -d --name $NAME --restart always -e PASSWORD=ds_sudad -p 8787:8787 $NAME:1.0