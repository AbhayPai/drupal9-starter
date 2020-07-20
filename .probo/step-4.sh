#!/bin/bash

cd $SRC_DIR && npm run lint:js:all

if (( $? > 1 ))
then
  exit 1;
fi
