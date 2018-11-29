#!/bin/bash
VAGRANT=$(which vagrant)
GIT=$(which git)

case "$1" in
  "init")
    $VAGRANT up --provision --provider=virtualbox
  ;;
  "start")
    echo  "Starting employee"
    $VAGRANT resume
  ;;
  "stop")
    echo  "Suspending employee"
    $VAGRANT suspend
esac
