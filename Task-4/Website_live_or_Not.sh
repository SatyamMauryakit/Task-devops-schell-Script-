#!/bin/bash
echo "...Check your website is live or not...."
read -p " Enter your website " website

while true
do 
	if  ping -c 1 "${website}.com"  > /dev/null 2>&1 ; then 
		echo "Your website $website is now Live.."
	else
		echo " Your website $website is not Live.."
        fi
	sleep 3
done
