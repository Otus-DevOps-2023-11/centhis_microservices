#!/bin/bash

docker-machine rm docker-host

docker-machine create \
--driver generic \
--generic-ip-address=158.160.101.55 \
--generic-ssh-user ubuntu \
--generic-ssh-key ~/.ssh/centhis \
docker-host

eval $(docker-machine env docker-host)
