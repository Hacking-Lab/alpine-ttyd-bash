#!/bin/bash

rm -rf ./docker-alpine-libwebsockets-with-libuv
git clone https://github.com/matti/docker-alpine-libwebsockets-with-libuv.git

rm -rf ./app
mv ./docker-alpine-libwebsockets-with-libuv/app .

docker build --no-cache -t hackinglab/alpine-ttyd-bash:$1.0 -t hackinglab/alpine-ttyd-bash:$1 -t hackinglab/alpine-ttyd-bash:latest -f Dockerfile .

rm -rf ./docker-alpine-libwebsockets-with-libuv

docker push hackinglab/alpine-ttyd-bash
docker push hackinglab/alpine-ttyd-bash:$1
docker push hackinglab/alpine-ttyd-bash:$1.0