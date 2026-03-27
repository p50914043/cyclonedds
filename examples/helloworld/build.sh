#!/bin/bash
set -e

if [ ! -d "build" ]; then
  mkdir build
fi
cd build

if [ ! -d "install" ]; then
  mkdir install
fi
ls ../../../../
cmake .. -DCMAKE_PREFIX_PATH=../../../../ -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=install
make  -j$(nproc)