#!/bin/bash
set -ex

cat setup_k6.sh
sudo yum update -y
sudo yum install https://dl.k6.io/rpm/repo.rpm
sudo yum install k6  --nogpgcheck 
