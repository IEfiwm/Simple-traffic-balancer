
#!/bin/bash
clear
echo -e "\e[37m         -------------------------========== Traffic balancer ==========-------------------------"
echo -e "\e[31m                                         ------ By IEfiwm ------"
sleep 3
clear
echo -e "\e[33m                                           .... Script Starting ....    "
echo -e "\e[39m"
sleep 2
echo "How many times you want download this file ?!"
read number
clear
echo "Give me url file: (dl.probinary.ir/file.zip)"
read url
clear
echo "Filename: (file.zip)"
read filename
clear
sleep 1
echo  "File will be download $number times from $url."

sleep 2
for i in $(seq 1 $number)
do
echo "Download is starting ... loop: $i"
wget $url
echo "File Donwload successfully!!"
rm -rf $filename
echo "File removed successfully!!"
done
