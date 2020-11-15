#!/bin/bash
npm install
composer install
cp /home/bitnami/.env /opt/bitnami/apache/htdocs/cert-master/.env
