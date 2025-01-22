#!/bin/bash
set -e
# build bcc
git clone --recurse-submodules https://github.com/iovisor/bcc.git
cd bcc && mkdir build 
cmake -B build -DENABLE_MAN=0 -DENABLE_EXAMPLES=0 -DENABLE_TESTS=0 -DENABLE_LIBDEBUGINFOD=0 -DENABLE_LLVM_NATIVECODEGEN=0
make -C build -j$(nproc) install

mkdir -p "$1"
#build bpftrace
git clone https://github.com/bpftrace/bpftrace.git -b release/0.21.x
cd bpftrace && cmake -B "$1" -DBUILD_TESTING=OFF -DCMAKE_BUILD_TYPE="$2" -DBUILD_ASAN:BOOL=OFF -DWARNINGS_AS_ERRORS:BOOL=OFF \
 -DALLOW_UNSAFE_PROBE:BOOL=ON -DVENDOR_GTEST=0 -DSTATIC_LINKING=ON 
make -C "$1" -j$(nproc) install
