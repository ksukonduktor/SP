FROM ubuntu
RUN apt-get update && apt-get install -y g++
COPY 6.cpp /


