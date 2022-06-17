# Playbook webserver

This playbook installs webserver (Nginx, Letsencrypt, Mariadb & PHP)

## Usage

Config
```bash
cp hosts.example.ini hosts.ini # copy config file then change values
touch deploy.pub # paste your ssh pub key for www_user
```

Then run playbook
```bash
ansible-playbook -i hosts.ini playbook.yml
```
