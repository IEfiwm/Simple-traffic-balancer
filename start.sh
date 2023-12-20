#!/bin/bash

clear
echo -e "\e[37m-------------------------========== Traffic balancer ==========-------------------------"
echo -e "\e[31m                               ------ By IEfiwm ------"
sleep 3
clear
echo -e "\e[33m.... Script Starting ...."
echo -e "\e[39m"
sleep 2

echo "How many times do you want to download this file?"
read number
clear

echo "Give me the file URL (e.g., http://dl.probinary.ir/file.zip):"
read url
clear

echo "Specify the filename (e.g., file.zip):"
read filename
clear

# Determine the fastest speedtest server
echo "Finding the fastest speedtest server..."
speedtest --list | tail -n +2 | awk '{print $2, $3, $4}' | sed 's/,//' > speedtest_servers.txt
fastest_server=$(speedtest --list | tail -n +2 | sort -n -k 2 | head -n 1 | awk '{print $1}')
echo "Fastest server: $fastest_server"

sleep 1
echo "File will be downloaded $number times from $url using the fastest server."

sleep 2

for i in $(seq 1 $number)
do
    echo "Download is starting... Loop: $i"
    wget --quiet --show-progress --report-speed=bits $url
    echo "File Downloaded successfully!!"
    rm -f $filename
    echo "File removed successfully!!"
done

# Clean up the speedtest_servers.txt file
rm -f speedtest_servers.txt
