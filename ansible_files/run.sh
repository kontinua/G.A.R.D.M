#!/bin/sh

echo localhost > inventory.ini

docker run \
--rm --name ansible-runner \
-v "$PWD"/playbook.yml:/playbook.yml \
-v "$PWD"/inventory.ini:/etc/ansible/hosts \
-v "$PWD"/hosts:/hosts \
-v "$PWD"/group_vars:/group_vars \
-v "$PWD"/roles:/roles \
williamyeh/ansible:ubuntu14.04-onbuild \
ansible-playbook-wrapper --connection=local --sudo
