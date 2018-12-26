## how to use jenkins to run the ansible_playbook
read -s ansible_ssh_pass  
read -s ansible_become_pass  

ansible-playbook -i 'aliyun.lihuanhuan.net,' ./ansible_playbook_test/site.yml -e "instance_name='robinhhli' ansible_ssh_user='root' ansible_ssh_pass=${ansible_ssh_pass} ansible_become_pass=${ansible_become_pass} ansible_become_exe='sudo su -'" -vvv

or

ansible-playbook -i 'aliyun.lihuanhuan.net,' ./ansible_playbook_test/site.yml -e "instance_name='robinhhli' ansible_ssh_user='robin' ansible_ssh_pass=${ansible_ssh_pass} ansible_become_pass=${ansible_become_pass} ansible_become_exe='su -'" -vvv

## start the playbook with no password, it will run "sudo su - root" at the target first, only use the hosts of playbook
ansible-playbook -i hosts ~/ansible_playbook_test/site.yml -u lihuanhuan80 --private-key ~/robin.private -e "ansible_become_exe='sudo su -'" -vvv

## how to start the testplaybook and input password, it will run "sudo su - root" at the target first, only use the hosts of playbook
ansible-playbook -i hosts ~/ansible_playbook_test/site.yml -u root --ask-pass --ask-become-pass -e "ansible_become_exe='sudo su -'" -vvv

## how to start the playbook with hostname list and input the var with start command.
ansible-playbook -i 'aliyun.lihuanhuan.net,' ./ansible_playbook_test/site.yml --ask-pass --ask-become-pass -e "instance_name='robinhhli' ansible_ssh_user='root' ansible_become_exe='sudo su -'" -vvv
