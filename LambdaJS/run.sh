#!/bin/bash
if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` infile.js"
  exit 65
fi

./dist/build/lambdaJS/lambdaJS --desugar --env es3.env < $1 | ../Redex/interp-shell.ss
