#!/bin/bash
echo 'please input value of ansible_ssh_pass'
read -s ansible_ssh_pass
echo 'please pinut value of ansible_become_pass'
read -s ansible_become_pass

ansible-playbook -i 'aliyun.lihuanhuan.net,' ~/workspace/ansible-examples/ansible_playbook_test/site.yml -e "instance_name='robinhhli' ansible_ssh_user='robin' ansible_ssh_pass=${ansible_ssh_pass} ansible_become_pass=${ansible_become_pass} ansible_become_exe='su -'"
