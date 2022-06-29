#!/bin/bash
# Use this to make the llvmdev packages that are manylinux2010 compatible
srcdir=$( cd "$(dirname $0)/../.."  && pwd )
echo "srcdir=$srcdir"

echo "MINICONDA_FILE=$MINICONDA_FILE"
docker run -it -e "ARCH=$ARCH" -v $srcdir:/root/llvmlite quay.io/pypa/manylinux2014_${ARCH}@sha256:75ba3376a63a4d90e8fce2425d2cf8a2edee6e2715d306993780cbade3b73e44 ${PRECMD} /root/llvmlite/buildscripts/manylinux2014/$1 ${MINICONDA_FILE} $2
