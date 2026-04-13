#!/bin/bash
echo "...check user the exist if not then create...."
read -p "Enter user : " name
if [ /etc/passwd | cut -d: -f1 -eq $name ] ; then 
	echo "User exist alredy"
else
	sudo useradd -m -s /bin/bash $name
	pass=$(openssl rand -base64 8)
	echo "$name:$pass" | sudo chpasswd
	echo "Username:$name Password:$pass" >>Userinfo.txt
       echo "User crested successfully"
fi       
