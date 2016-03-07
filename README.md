# ansibledeploy

deploy.yml is used to deploy the war file.


Ansible Directory structure with Roles:

/opt/ansible/playbooks/roles/appserver.yml
/opt/ansible/playbooks/roles/appservers/files
/opt/ansible/playbooks/roles/appservers/templates
/opt/ansible/playbooks/roles/appservers/tasks
/opt/ansible/playbooks/roles/appservers/handlers
/opt/ansible/playbooks/roles/appservers/meta
/opt/ansible/playbooks/roles/appservers/vars

In All of the above directories the by default file which gets called is main.yml


Some of the useful Ansible ad hoc commands

To list all of the hosts in ansible.. it will look for /etc/ansible/hosts file
ansible all --list-hosts


Gather facts and filter it:

ansible apacheweb -s -m setup -a filter="ans*ipv4*"

Execute the shell commands

ansible apacheweb -s -m shell -a 'yum list installed | grep lynx'
