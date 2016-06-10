#!/bin/sh

docker run williamyeh/ansible:ubuntu14.04 \
  ansible-playbook -i hosts rancher.yml --connection=local --sudo
