#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist2 updated-gist

cd updated-gist
echo 'from run2' > bumpme2
date >> bumpme2

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
