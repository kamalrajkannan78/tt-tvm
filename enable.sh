#!/usr/bin/env bash

if [ -n "$CI_PROJECT_DIR" ]; then
  if [ -z $PYBUDA_ROOT ]; then export PYBUDA_ROOT=$CI_PROJECT_DIR; fi
else
  if [ -z $PYBUDA_ROOT ]; then export PYBUDA_ROOT=`git rev-parse --show-toplevel`; fi
fi

export TVM_HOME=$PYBUDA_ROOT/third_party/tvm
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TVM_HOME/build

cd $PYBUDA_ROOT
