#!/bin/sh

VM=Minds-Server

if ! VBoxManage list runningvms | grep $VM > /dev/null; then
  VBoxManage startvm $VM --type headless
fi

ssh minds@192.168.99.101
