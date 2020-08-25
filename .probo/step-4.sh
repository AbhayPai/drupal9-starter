#!/bin/bash

cd $SRC_DIR && npm run lint:js:themes

if (( $? > 1 ))
then
  exit 1;
fi
