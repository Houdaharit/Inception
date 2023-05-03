FROM debian:stable
RUN apt-get update
RUN apt-get install mariadb-server -y
COPY ./conf/my.cnf /etc/mysql/my.cnf
CMD ["mariadb"]
