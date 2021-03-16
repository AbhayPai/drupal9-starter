#!/bin/bash

cd $SRC_DIR
./vendor/bin/phpcs -pv --colors --standard=automation/phpcs/themes.xml
phplintstatus=$?

if (( $phplintstatus > 1 ))
then
  exit 1;
else
  exit;
fi
