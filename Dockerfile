FROM ubuntu
MAINTAINER Kseniya Kondenko
RUN apt update 
RUN apt install nano 
RUN apt install fasm 
RUN apt install binutils 
RUN apt install gcc 
RUN apt install g++