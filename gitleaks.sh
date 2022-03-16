#!/usr/bin/env bash

pip install pre-commit

cd ..
git clone https://github.com/zricethezav/gitleaks.git

cd gitleaks
make build

cd ../secret-scanner-test
cp gitleaks/.pre-commit-config.yaml .
pre-commit install 

