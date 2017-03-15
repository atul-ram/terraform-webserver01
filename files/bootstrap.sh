#!/bin/bash
#
# Simple shell script to install Nginx
#
set -x

# Variables
LOGFILE=/var/log/user-data.log

# Make sure we have a log for the bootstrap process
test -d $LOGDIR || mkdir -p $LOGDIR
exec > >(tee -a $LOGFILE)
exec 2>&1

yum update ;
yum install -y httpd git;
git clone https://github.com/atul-ram/resume.git /var/www/html/;
service httpd start;
