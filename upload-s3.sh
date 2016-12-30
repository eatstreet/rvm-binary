#!/usr/bin/env bash

cd binaries || exit 1
for binary in `find ubuntu -name '*.tar.bz2'`; do 
     aws s3 cp $binary s3://zoomer-devops-ruby/$binary; 
done
