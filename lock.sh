#!/bin/bash
echo -n  "enter password: "
read -s password
echo
if [[ $password == "user" ]]
then
figlet welcome
else
figlet "enter correct password"
kill $(pgrep terminal)
fi
