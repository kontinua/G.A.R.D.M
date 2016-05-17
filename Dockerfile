FROM williamyeh/ansible:ubuntu14.04

WORKDIR /tmp
COPY  ansible_files/.  /tmp

RUN echo localhost > inventory

RUN ansible-playbook -i inventory playbook.yml --connection=local --sudo
