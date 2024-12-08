#!/bin/bash
set -e
# set -x

build_dir=build
arg=$1

cd $build_dir && source ./setup.bash

case $arg in
talk)
  ./cyber/examples/cyber_example_talker
  ;;
lis)
  ./cyber/examples/cyber_example_listener
  ;;
com)
  export APOLLO_DAG_PATH=$build_dir
  cyber_launch start share/examples/common_component_example/common.launch
  ;;
pred)
  ./cyber/examples/common_component_example/channel_prediction_writer
  ;;
test)
  ./cyber/examples/common_component_example/channel_test_writer
  ;;
*)
  echo "Unkown args: '$arg'"
  exit 1
  ;;
esac
