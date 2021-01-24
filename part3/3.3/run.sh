#!/bin/bash

if [ ! $1 ]; then
    echo "First argument should be link to a git repository";
    exit
fi

git clone $1

export REPO_NAME=$(echo $1 | tr '/' '\n' | tail -n 1)

cd $REPO_NAME

docker build -t "$USER/$REPO_NAME-dockerpush" .

echo $PASSWORD | docker login -u $USER --password-stdin

docker push "tomveh/$(echo $REPO_NAME)-dockerpush"
