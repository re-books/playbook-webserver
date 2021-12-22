# Playbook webserver

This playbook installs webserver (Nginx, Mariadb, PHP)

## Usage

```shell
cp hosts.example.ini hosts.ini # change config values
touch deploy.sub # paste your ssh pub key for www_user

ansible-playbook -i hosts.ini playbook.yml # run playbook
```
