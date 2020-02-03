#!/bin/bash
NAME=rstudio

#docker build -t $NAME:1.0 .
docker load < rstudio.tar.gz
docker stop $NAME || true
docker rm -f $NAME || true
docker run -d --name $NAME --restart always -e PASSWORD=ds_sudad -p 8787:8787 $NAME:1.1
#docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
