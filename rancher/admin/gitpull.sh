#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi
cd "$1"
for d in */ ; do
  echo "$d"
  cd "$d"
  git fetch origin +refs/heads/*:refs/heads/*
  git reset --soft
  cd ..
done
