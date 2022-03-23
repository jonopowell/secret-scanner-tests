#!/usr/bin/env bash

pip install pre-commit

cd ~
git clone https://github.com/zricethezav/gitleaks.git

cd gitleaks
make build

export PATH=${PATH}:~/gitleaks

cd ~/secret-scanner-test
cp gitleaks/.pre-commit-config.yaml .
pre-commit install 

git config --global user.email "security@contino.io"
git checkout -b gitleaks origin/gitleaks

echo "  " >> aws-gitleaks.json
echo "  " >> MyApp.py

git add *
git commit -m "gitleaks test"