FROM ubuntu
RUN apt update && apt install -y build-essential && apt install -y g++
COPY 4.1.cpp /
COPY 4.2.cpp /

