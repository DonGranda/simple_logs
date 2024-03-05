#!/bin/bash
#The variable log_file is assigned the value of the path of the file logs.txt located in the same directory as the script.
log_file="$(dirname "${BASH_SOURCE[0]}")/logs.txt"

#if the file cant be cannot be created for any particular reason ,create one
if [[ ! -e $log_file ]]; then
    touch "$log_file"
    echo "Log file created: $log_file"
fi

current_datetime=$(date +"%Y-%m-%d %H:%M:%S")
echo "Log entry at $current_datetime" >> $log_file
echo "Log Entry added successfully"









