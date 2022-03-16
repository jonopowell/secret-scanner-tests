FROM ubuntu:latest
ARG ghtoken
RUN apt update 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y tzdata 
RUN apt install -y curl build-essential git python3\
        && mkdir /script

RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
        && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
RUN apt update \ 
	&& apt install gh
RUN echo $ghtoken | gh auth login --with-token
	
COPY ./* /script

