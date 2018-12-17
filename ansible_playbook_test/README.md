#quick start

## how to start the testplaybook
### start the playbook with no password
ansible-playbook /appvol/ansible/ansible-examples/ansible_playbook_test/site.yml -u lihuanhuan80  --private-key /appvol/robin.private -e "ansible_become_exe='sudo su -'" -vvv
