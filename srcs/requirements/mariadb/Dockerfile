FROM debian:stable
RUN apt-get update
COPY ./tools/script.sh .
RUN apt-get install mariadb-server -y
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
RUN chmod +x ./script.sh
ENTRYPOINT ["./script.sh"]
CMD ["mysqld"]
