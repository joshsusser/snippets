# init postgresql db after brew install

initdb -U postgres --encoding=utf8 --locale=en_US -D "/usr/local/var/postgres"
