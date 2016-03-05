#!/bin/bash
sudo su - deploy -c "/usr/local/bin/ansible-playbook -i /etc/ansible/hosts /home/deploy/playbooks/deploy.yml"
