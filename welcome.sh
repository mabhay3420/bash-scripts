#!/bin/bash

greeting="Welcome"
user="Abhay Mishra"
day=$(date +%A )
year=$(date +%Y)
month=$(date +%B)
digit=$(date +%d)

echo "$greeting back $user!. The time is $(date +%r) and the date is $month $digit $year.
Today is $day which is your favourite day.
Wait Does that mean every day is your favourte day? "
