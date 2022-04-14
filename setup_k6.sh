#!/bin/bash
set -ex

sudo yum update

sudo yum  install https://dl.k6.io/rpm/repo.rpm
sudo yum install k6

 
