#!/bin/bash

apt update && apt install -y ansible git

git clone https://github.com/re-books/playbook-webserver.git

cd playbook-webserver || exit

echo "$(date +%s | sha256sum | base64 | head -c 32 ; echo)" > mysqlrootpassword

chmod 600 mysqlrootpassword

ansible-playbook -i hosts.ini playbook.yml \
  -e www_user=web \
  -e www_group=web \
  -e www_home=/home/web \
  -e php_version=8.1 \
  -e mysql_root_password="$(cat mysqlrootpassword)"
