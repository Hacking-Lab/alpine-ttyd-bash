#!/bin/bash

docker build --no-cache -t hackinglab/alpine-ttyd-bash:$1.0 -t hackinglab/alpine-ttyd-bash:$1 -t hackinglab/alpine-ttyd-bash:latest -f Dockerfile .

docker push hackinglab/alpine-ttyd-bash
docker push hackinglab/alpine-ttyd-bash:$1
docker push hackinglab/alpine-ttyd-bash:$1.0
