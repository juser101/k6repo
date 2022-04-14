#!/bin/bash
set -ex

cat setup_k6.sh
sudo yum update -y
if ! rpm -qa | grep k6-rpm ; then sudo yum install https://dl.k6.io/rpm/repo.rpm -y ; fi
#sudo yum install https://dl.k6.io/rpm/repo.rpm -y
sudo yum install k6  --nogpgcheck  -y
