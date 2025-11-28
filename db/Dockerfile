FROM ubuntu

RUN apt update
RUN apt upgrade -y
RUN apt install mysql-server -y

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

COPY ecom2.sql /docker-entrypoint-initdb.d/init.sql

ENV MYSQL_ROOT_PASSWORD=Passord123
ENV MYSQL_DATABASE=tverr

RUN echo "bind-address = 0.0.0.0" >> /etc/mysql/mysql.conf.d/mysqld.cnf

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
