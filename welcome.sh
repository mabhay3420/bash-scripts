#!/bin/bash

greeting="Welcome"
day=$(date +%A )
year=$(date +%Y)
month=$(date +%B)
digit=$(date +%d)

echo "$greeting back ${whoami}!. The time is $(date +%r) and the date is $month $digit $year.
Today is $day which is your favourite day.
Wait Does that mean every day is your favourite day? "
