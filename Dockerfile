FROM williamyeh/ansible:ubuntu14.04

WORKDIR /tmp
COPY  ansible_files/.  /tmp

RUN echo localhost > host

RUN ansible-playbook -i host rancher.yml
