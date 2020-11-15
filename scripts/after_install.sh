#!/bin/bash
sudo chown -R bitnami:bitnami /opt/bitnami/apache/htdocs/cert-master/
sudo chown -R daemon:daemon /opt/bitnami/apache/htdocs/cert-master/storage/
runuser -l  bitnami -c 'cd /opt/bitnami/apache/htdocs/cert-master/ && npm install'
runuser -l  bitnami -c 'cd /opt/bitnami/apache/htdocs/cert-master/ && composer install'
runuser -l  bitnami -c 'cp /home/bitnami/.env /opt/bitnami/apache/htdocs/cert-master/.env'

