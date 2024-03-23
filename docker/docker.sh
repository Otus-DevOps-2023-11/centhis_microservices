#!/bin/bash

docker-machine rm docker-host

docker-machine create \
--driver generic \
--generic-ip-address=51.250.14.147 \
--generic-ssh-user ubuntu \
--generic-ssh-key ~/.ssh/centhis \
docker-host

eval $(docker-machine env docker-host)
