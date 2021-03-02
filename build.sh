#!/bin/bash

docker build --no-cache -t hackinglab/alpine-ttyd-bash:3.2.0 -t hackinglab/alpine-ttyd-bash:3.2 -t hackinglab/alpine-ttyd-bash:latest -f Dockerfile .

