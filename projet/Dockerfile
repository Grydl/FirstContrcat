FROM node:8.2

MAINTAINER Charles Azanlekor <contact@grydl.com>

# environment
ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && \
        apt-get install -y curl unzip  && \
        apt-get install -y zip

RUN npm -v
RUN cd /
RUN mkdir projet
RUN cd /projet
RUN npm install -g truffle
RUN npm install -g eslint
