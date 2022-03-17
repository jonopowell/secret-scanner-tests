#!/usr/bin/env bash

cd 
git clone https://github.com/awslabs/git-secrets.git

export PATH=${PATH}:~/git-secrets

git-secrets --install

git config --global user.name "jonopowell"
git config --global user.email "jono.powell@contino.io"
git pull


echo "  " >> MyApp.py
echo "  " >> aws-gitleaks.json

git add *
git commit -m "git-secrets test"
