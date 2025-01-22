#!/bin/bash
set -eu
docker build --network host -t bpftrace-builder  -f Dockerfile-static.arm64 .
docker run --network host --rm -it -u $(id -u):$(id -g) -v $(pwd):$(pwd) bpftrace-builder "$(pwd)/build-static" Release "$@"
