FROM debian:stable
RUN apt-get update
RUN apt-get install mariadb-server -y
COPY ./conf/my.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
COPY ./tools/script.sh .
RUN chmod +x ./script.sh
RUN ./script.sh
CMD ["mysqld"]
