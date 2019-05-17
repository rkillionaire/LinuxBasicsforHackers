#!/bin/bash

#This script will scan IP addresses in the given range/
#for systems with Microsoft's SQL Server databases.

echo "What is the first IP address?"

read firstIP

echo "What is the last octet?"

read lastIP

nmap -sT "$firstIP-$lastIP" -p 1433 >/dev/null -oG scanResults

cat scanResults | grep open > scanResults2

cat scanResults 

cat scanResults2
