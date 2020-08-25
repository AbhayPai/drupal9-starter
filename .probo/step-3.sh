#!/bin/bash

cd $SRC_DIR && npm run lint:scss:themes

if (( $? > 1 ))
then
  exit 1;
fi
