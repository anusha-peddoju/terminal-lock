#!/bin/bash

read -s -p "Enter Terminal Password: " password #Reading Password from User
echo
sed "s/user/$password/g" lock.sh > setlock #Replacing current password in lock.sh file and putting it in setlock file.
rm lock.sh #removing lock.sh file
sudo chmod +x  setlock #giving excutable permission to setlock
sudo mv setlock /usr/bin #moving setlock to /usr/bin Directory
sudo echo setlock  >> $HOME/.bashrc #adding setlock file to .bashrc file in home to run start in terminal.
#here bashrc file only runs the file present in /usr/bin.
sudo rm -r ../set_terminal_lock #removing set_terminal lock directory.
