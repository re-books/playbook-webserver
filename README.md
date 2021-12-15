# Playbook webserver

This playbook installs webserver (Nginx, Mariadb, PHP)

## Installation

Copy init file and edit values

```shell
cp hosts.example.ini hosts.ini
```

Then run playbook

```shell
ansible-playbook -i hosts.ini playbook.yml
```
