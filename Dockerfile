FROM ubuntu:latest
RUN apt update 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y tzdata 
RUN apt install -y build-essential git python3\
        && mkdir /script
	

COPY ./* /script

