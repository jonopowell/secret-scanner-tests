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

RANDO =  `cat /dev/urandom | tr -dc '[:alnum:]' | fold -w ${1:-16} | head -n 1 |  awk '{print toupper($0)}'`

sed -i "s/\(\"Secret\": \"AKIA\)\(IMNOJVGFDXXXE4OAi\)\(\"\)/\1$RANDO\2/g" aws-gitleaks.json
sed -i 's///g' MyApp.py


git add *
git commit -m "gitleaks test"