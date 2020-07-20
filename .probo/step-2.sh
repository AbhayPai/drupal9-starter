#!/bin/bash

cd $SRC_DIR
npm install
composer self-update
composer install
$SRC_DIR/vendor/bin/phpcs --config-set installed_paths $SRC_DIR/vendor/drupal/coder/coder_sniffer
