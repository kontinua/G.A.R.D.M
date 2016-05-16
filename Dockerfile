FROM williamyeh/ansible:ubuntu14.04

WORKDIR /tmp
COPY  .  /tmp

RUN echo localhost > inventory

RUN ansible-playbook -i inventory playbook.yml --connection=local --sudo
