#!/bin/bash

ansible-playbook -i hosts.cfg -u ubuntu --private-key ~/.ssh/centhis kubernetes.yml
