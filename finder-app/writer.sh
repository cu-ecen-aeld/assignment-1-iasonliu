#!/bin/sh

WRITEFILE=$1
WRITESTR=$2

if [ $# -ne 2 ]; then
  echo "error: invalid number of arguments"
  exit 1
fi

dirname=$(dirname "${WRITEFILE}")
mkdir -p "$dirname"

echo "${WRITESTR}" > "${WRITEFILE}"
