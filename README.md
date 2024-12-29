# bpftrace-llvm-arm64
base docker image for arm64. while you want to build bpftrace(&lt;=0.19) for arm64 ,can use it. 
the official recommendation is to use Nix when bpftrace is greater than 19.

The official Docker image is for x86 architecture. Referring to the official version, I've provided two ARM64 Docker images. 
The difference between them is that one is based on Ubuntu 22.04 (with glibc 2.35), and the other is based on Ubuntu 20.04 (with glibc 2.31). If the glibc version of your system is relatively low (< 2.35 and ≥ 2.31), you can choose the Ubuntu 20.04-based image.


# use it
1. Build bpftrace as a statically linked binary uses bpftrace-static.patch.
2. you can choose docker image in build-docker-image.sh ：**liuxinquan/bpftrace-llvm-arm64:jammy-glibc235** or **liuxinquan/bpftrace-llvm-arm64:focal-glibc231**
