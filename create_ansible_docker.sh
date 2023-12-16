#!/bin/bash

# This is a simple example script
# Modify it according to your Ansible and Docker setup

# Install Ansible
sudo apt-get update
sudo apt-get install -y ansible

# Create an Ansible playbook
echo "---
- name: Your Ansible Playbook
  hosts: all
  tasks:
    - name: Your Ansible Task
      debug:
        msg: 'Hello from Ansible!'" > playbook.yml

# Run the Ansible playbook
ansible-playbook playbook.yml

# Install Docker
sudo apt-get install -y docker.io

# Run a Docker container
docker run -d -p 80:80 --name my-nginx nginx

# Display information
echo "Ansible and Docker setup complete!"
