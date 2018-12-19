#quick start

## start the playbook with no password, it will run "sudo su - root" at the target first.
## and only use the hosts of playbook
ansible-playbook -i hosts ~/ansible_playbook_test/site.yml -u lihuanhuan80 --private-key ~/robin.private -e "ansible_become_exe='sudo su -'" -vvv

## how to start the testplaybook and input password, it will run "sudo su - root" at the target first.
## and only use the hosts of playbook
ansible-playbook -i hosts ~/ansible_playbook_test/site.yml -u root --ask-pass -e "ansible_become_exe='sudo su -'" -vvv
