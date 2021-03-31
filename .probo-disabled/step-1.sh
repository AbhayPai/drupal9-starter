#!/bin/bash

sudo apt-get purge --auto-remove nodejs -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
