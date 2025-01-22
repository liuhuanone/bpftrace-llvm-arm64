# bpftrace-llvm-arm64
while you want to build **static** bpftrace for arm64 ,use it.
the official recommendation is to use Nix when greater than 0.19.x. but nix generate musl-libc, not glibc.
note:docker needs to be installed before compiling.

# 0.19.x
if you want version <= 0.19.x， use bpftrace-arm64-0.19.x.
The official Docker image is for x86. Referring to the official version, I've provided two ARM64 Docker images. The diff between them is one based on Ubuntu 22.04 (with glibc 2.35), and the other is based on Ubuntu 20.04 (with glibc 2.31). you can also find them in docker hub ：[liuxinquan/bpftrace-llvm-arm64](https://hub.docker.com/repository/docker/liuxinquan/bpftrace-llvm-arm64).
### usage
1. need install qemu-user-static(eg: apt-get install -y qemu-user-static) if in x86.
2. Build bpftrace as a statically linked binary uses bpftrace-static.patch.

# 0.21.x
0.21.x requires LLVM version >=13, so provided a docker image with LLVM version 14.  use bpftrace-arm64-0.21.x， a **build-stat.sh** script for easier compilation. 
### usage
1. run build-static.sh, then generate build-static. 

