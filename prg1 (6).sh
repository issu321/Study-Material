#!/bin/bash

echo "=== Current Date and Time ==="
date

echo "=== Calender ==="
cal

echo "\n=== Man Page Preview for 'who' ==="
man who | head -n 10

echo "\n=== Logged In Users ==="
who

echo "\n=== Current User ==="
whoami

echo "\n=== Finger Info for Current User ==="
finger $(whoami) 
