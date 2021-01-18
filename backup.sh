#!/bin/bash

user=$(whoami)
input=$(pwd)
output=${user}_$(basename "$input")_backup_$(date +%I-%M-%S_%p_%b_%d_%Y).tar.gz
tar -czf ../$output $input
echo "Backup of $input completed ! Details about the output backup file:"
ls -l ../$output 