#!/bin/bash
set -eu
docker build --network host  --build-arg BUILD_PATH="$(pwd)/build-static" --build-arg TYPE=Release -t bpftrace-builder  -f Dockerfile-static.arm64 .
docker run --network host --rm -it -u $(id -u):$(id -g) -v $(pwd):$(pwd) bpftrace-builder
