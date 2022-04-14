#!/bin/bash
set -ex

cat setup_k6.sh
sudo yum update -y

sudo amazon-linux-extras install epel
sudo yum install snapd -y
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install k6
