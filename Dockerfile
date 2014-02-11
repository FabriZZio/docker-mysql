FROM ubuntu:latest
MAINTAINER Dieter Provoost <dieter.provoost@marlon.be>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y mysql-server
RUN apt-get clean

RUN chown -R mysql.mysql /var/run/mysqld
RUN chown -R mysql.mysql /var/lib/mysql
RUN chown -R mysql.mysql /var/log/mysql

USER mysql

RUN apt-get clean -y

ADD start.sh start.sh

EXPOSE 3306

CMD ["sh", "start.sh"]

