#!/bin/bash

purpose="Run qemu-img to create a virtual hard disk"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  gbsizeDefault="10"
  
  read -p "Enter size in GB, default is ${!gbsizeDefault} : " gbsize

  
  if [ "$gbsize" = "" ]; then
    gbsize=$gbsizeDefault
  fi
  
  echo "You selected $gbsize"
  
  cmd="qemu-img create -f qcow2 disk.qcow ${gbsize}G"
  
  echo "running $cmd"
  
  $cmd
  
  echo "Done executing $cmd"
  
else
  echo "Exiting script without performing $purpose"
fi
