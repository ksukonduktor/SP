FROM ubuntu
WORKDIR /home
COPY ./tcpserver.c .
COPY ./tcpclient.c .
RUN apt update
RUN apt install -y build-essential
RUN apt install -y nano
RUN gcc tcpserver.c -o tcpserver -g
RUN gcc tcpclient.c -o tcpclient -g
