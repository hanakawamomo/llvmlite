#!/bin/bash
# Use this to make the llvmdev packages that are manylinux2010 compatible
srcdir=$( cd "$(dirname $0)/../.."  && pwd )
echo "srcdir=$srcdir"

echo "MINICONDA_FILE=$MINICONDA_FILE"
docker run --rm -v $srcdir:/root/llvmlite quay.io/pypa/manylinux2010_${ARCH}@sha256:d02389c35c7e9b6c51a21d71e9e98e6fd57c1225f7a782b3965d5a1e1b3585d4 ${PRECMD} /root/llvmlite/buildscripts/manylinux2010/$1 ${MINICONDA_FILE} $2

