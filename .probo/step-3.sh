#!/bin/bash

cd $SRC_DIR && npm run lint:scss:all

if (( $? > 1 ))
then
  exit 1;
fi
