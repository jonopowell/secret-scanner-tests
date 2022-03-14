FROM ubuntu:latest
RUN apt update \
	&& apt install -y build-essential git golang-go python3\
        && mkdir /script
	

COPY ./* /script

