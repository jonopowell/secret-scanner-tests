FROM debian:latest AS layer0
RUN apt update 
RUN apt upgrade
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y tzdata 
RUN apt install -y curl build-essential git python3 python3-pip vim nano unzip
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
        && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
RUN apt update \ 
	&& apt install gh
RUN curl -O https://dl.google.com/go/go1.17.8.linux-amd64.tar.gz \
	&& tar -C /usr/local/ -xzf go1.17.8.linux-amd64.tar.gz \
	&& echo export PATH=\"\${PATH}:/usr/local/go/bin\" >> $HOME/.bashrc 

FROM layer0 AS demo
ARG ghtoken
RUN echo $ghtoken | gh auth login --with-token \
	&& gh auth setup-git
RUN cd && git clone https://github.com/contino/secret-scanner-test.git
RUN git config --global user.email "info@contino.io"
