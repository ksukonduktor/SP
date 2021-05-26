FROM ubuntu
WORKDIR /usr/assembler
RUN apt update
RUN apt install -y build-essential
RUN apt install -y nano

ENV TZ=Asia/Tomsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt install -y gdb
COPY ./lab2.s .
COPY ./lab2.c .
RUN gcc lab2.s -no-pie -o lab2 -g
RUN gcc lab2.c -o lab2c -g
ENTRYPOINT /bin/bash