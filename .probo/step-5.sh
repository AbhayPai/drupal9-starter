#!/bin/bash

cd $SRC_DIR
./vendor/bin/phpcs -pv --colors --standard=phpcs-themes.xml web/modules/custom/ web/themes/custom web/profiles/custom
phplintstatus=$?

if (( $phplintstatus > 1 ))
then
  exit 1;
else
  exit;
fi
