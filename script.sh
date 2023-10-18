#!/bin/bash

echo "Welcome to Broughtly Script"
echo "This script is for First Linux Setup"
echo "It will also work on Pre Working Linux"

sudo apt update
sudo apt upgrade
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
cd ~/
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build
cd build
cmake ..
make -j$(nproc)
echo "Your Miner is ready to use"
echo "When Launching second time run mine.sh script"
read -p "Enter Miner Name: " rigname
sudo ./xmrig -a rx -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbDTWt9VPeq8RJDabJUzY9y1DPnry5dgRGq."${rigname}" -p x --nicehash
