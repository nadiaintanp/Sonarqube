#!/bin/sh
sleep 30

apt-get -y update
apt-get -y install curl

curl -u admin:admin -X POST 'http://localhost:9000/api/users/change_password' \
  -d 'login=admin' \
  -d 'password=root'