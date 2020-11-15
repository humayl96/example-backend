#!/bin/bash
runuser -l  bitnami -c 'cd /opt/bitnami/apache/htdocs/cert-master/ && npm install'
runuser -l  bitnami -c 'cd /opt/bitnami/apache/htdocs/cert-master/ && composer install'
cp /home/bitnami/.env /opt/bitnami/apache/htdocs/cert-master/.env
sudo chown -R bitnami:bitnami /opt/bitnami/apache/htdocs/cert-master/
sudo chown -R daemon:daemon /opt/bitnami/apache/htdocs/cert-master/storage/
