FROM debian:buster

RUN apt-get update

RUN apt-get -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sql /tmp/script.sql

RUN service mysql start && mysql < /tmp/script.sql

RUN rm -rf /tmp/script.sql 

RUN service mysql restart

EXPOSE 3306

CMD ["mysqld"]
