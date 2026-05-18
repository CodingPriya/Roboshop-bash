#!/bin/bash

echo "Configuration Management for frontend in progress"
echo "Disabling the default nginx version"
dnf module disable nginx -y
echo "Enabling nginx version 1.24"
dnf module enable nginx:1.24 -y
echo "Installing nginx"
dnf install nginx -y