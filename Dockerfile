FROM williamyeh/ansible:ubuntu14.04

WORKDIR /tmp
COPY  ansible_files/.  /tmp

RUN echo localhost > inventory

RUN ansible-playbook -i hosts rancher.yml --connection=local --sudo
