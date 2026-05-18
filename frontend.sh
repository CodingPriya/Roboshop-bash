#!/bin/bash

echo "Configuration Management for frontend in progress"

ID=$(id -u)

if [ $ID -ne 0 ]; then 
    echo -e "\e[35m Script has to be execeuted as a root user or with sudo\e[0m"
    echo -e "Example usage: \n\t \e[32msudo bash $0 or # bash $0\e[0m"
    exit 1
fi    


echo "Disabling the default nginx version"
dnf module disable nginx -y

echo "Enabling nginx version 1.24"
dnf module enable nginx:1.24 -y

echo "Installing nginx"
dnf install nginx -y