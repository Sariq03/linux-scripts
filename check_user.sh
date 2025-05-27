#!/bin/bash
read -p "Enter username: " username

if id "$username" &>/dev/null; then
  echo "User $username exists."
else
  echo "User $username does not exist."
fi
