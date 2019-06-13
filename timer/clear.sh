#!/bin/bash
docker rmi -f  `docker images | grep '<none>' | awk '{print $3}'`
docker rm `docker ps -a | grep Exited | awk '{print $1}'`
docker rm `docker ps -a | grep Created | awk '{print $1}'`
