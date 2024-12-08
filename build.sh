#!/bin/sh
set -e

source install/setup.bash
rm -rf build
cmake -S . -B build \
  -DCMAKE_BUILD_TYPE=Debug
cmake --build build -j 10
