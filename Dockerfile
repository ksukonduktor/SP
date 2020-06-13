FROM ubuntu
RUN apt-get update
RUN apt-get -y install nano
COPY ./script.sh /home/script.sh
MAINTAINER Kseniya Kondenko <kkn98.fb@yandex.ru>