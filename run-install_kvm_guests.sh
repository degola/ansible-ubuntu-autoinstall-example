#!/usr/bin/env sh

ansible-playbook \
--connection=ssh \
-vv \
--extra-vars "ansible_password=${SSHPASS} ansible_user=${SSHUSER} ansible_sudo_pass=${SSHPASS}" \
--timeout=30 install-kvm-guests.yml -i inventory.yml
