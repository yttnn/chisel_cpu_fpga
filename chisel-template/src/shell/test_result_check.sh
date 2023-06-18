#!/bin/bash

RESULT_FILES=/workspaces/chisel_cpu_fpga/chisel-template/results/*.txt

for f in $RESULT_FILES
do
  FILE_NAME="${f##*/}"
  WITHOUT_EXTENSION="${FILE_NAME%.*}"
  if grep success $f > /dev/null ; then # found
    echo "$WITHOUT_EXTENSION : success"
  else
    echo "$WITHOUT_EXTENSION : fail"
  fi
done
