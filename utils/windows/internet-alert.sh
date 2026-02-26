#!/bin/bash

while true; 
do date && ping -i 2 -W 30 1.1.1.1 -c 4  &&  powershell.exe -c "[console]::beep(3000, 9999999)" && break || sleep 60 ; done;
