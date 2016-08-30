#!/bin/bash
set -e
cd `dirname $0`
m4 -DPADDLE_WITH_GPU=ON -DPADDLE_IS_DEVEL=OFF -DPADDLE_WITH_DEMO=OFF \
   -DPADDLE_BASE_IMAGE=nvidia/cuda:7.5-cudnn5-devel-ubuntu14.04 \
   Dockerfile.m4 > gpu/Dockerfile
cp build.sh gpu/
