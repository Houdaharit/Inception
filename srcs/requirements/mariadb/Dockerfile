FROM debian:buster
RUN apt-get update
RUN apt-get -y install mariadb-server
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sql /tmp/
RUN service mysql start
RUN mysql < /tmp/script.sql
CMD ["mysqld"]
