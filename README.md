# Playbook webserver

This playbook installs webserver (Nginx, Mariadb, PHP)

## Usage

```shell
# copy config file then change values
cp hosts.example.ini hosts.ini 

# run playbook
ansible-playbook -i hosts.ini playbook.yml --extra-vars "ssh_key=id.pub"
```
