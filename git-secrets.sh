#!/usr/bin/env bash


git config --global user.name "jonopowell"
git config --global user.email "jono.powell@contino.io"
git checkout -b gitleaks origin/gitleaks

echo "  " >> MyApp.py
echo "  " >> aws-gitleaks.json

git add *
git commit -m "git-secrets test"
