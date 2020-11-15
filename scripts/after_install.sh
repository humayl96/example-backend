#!/bin/bash
sudo chown -R daemon:daemon /opt/bitnami/apache/htdocs/cert-master/storage/
npm install
composer install
cp /home/bitnami/.env /opt/bitnami/apache/htdocs/cert-master/.env
php artisan migrate
