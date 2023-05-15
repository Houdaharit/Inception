FROM debian:stable
RUN apt-get update
RUN apt-get -y install mariadb-server
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
RUN service mysql starT
CMD ["mysqld"]
