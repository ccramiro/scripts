#!/bin/bash

# Script to override git push to ask for confirmation

day=$(date +"%A")
if [ $1 == "push" ];
then
  read -p "Are you sure? (y/n)" yn
  case $yn in
  [Yy]* )
    # Are you sure? feature for certain days
    if [ $day == "Wednesday" ];
    then
      read -p "Remember... today is branch off day"
    fi
  git "$@"
  esac
else
  git "$@"
fi
