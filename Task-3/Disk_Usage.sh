#!/bin/bash
echo ".........Show all the dist usages........."
df -h 

echo " .....check disk > 50%......"
usages=$(df -h | grep '^/' | awk '{print $5}' | tr -d '%')
for i in $usages;  do 


      if [ $i -gt 50 ] ; then
	echo " disk Usages $i is more then 50%"
	echo ".....file use more disk use......"
	sudo du -h --max-depth=1 $partition 2>/dev/null | sort -rh | head -5
      else
	      echo " your Disk use is lessthen %50 and real disk use is $i"

	exit 0
      fi


done
