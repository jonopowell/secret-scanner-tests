#!/usr/bin/env bash

pip install pre-commit

cd ..
git clone https://github.com/zricethezav/gitleaks.git

cd gitleaks
make build

cd ../secret-scanner-test
cp gitleaks/.pre-commit-config.yaml .
pre-commit install 

git config --global user.name "jonopowell"
git config --global user.email "jono.powell@contino.io"
git checkout -b gitleaks origin/gitleaks

echo "  " >> MyApp.py
echo "  " >> aws-gitleaks.json

git add *
git commit -m "gitleaks test"