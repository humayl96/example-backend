#!/bin/bash
cd /opt/bitnami/apache/htdocs/cert-master/
npm install
composer install
cp /home/bitnami/.env /opt/bitnami/apache/htdocs/cert-master/.env
sudo chown -R bitnami:bitnami /opt/bitnami/apache/htdocs/cert-master/storage/
sudo chown -R daemon:daemon /opt/bitnami/apache/htdocs/cert-master/storage/
