#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build
cd build
cmake ..
make -j$(nproc)
echo "Script by Shamp Dev"
echo "Shamp Dev is Congratulating you on command completion"
echo "Your Mining will start now"
echo "make sure to change the miner name in rig"
read -p "Enter Miner Name: " rigname
sudo ./xmrig -a rx -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbDTWt9VPeq8RJDabJUzY9y1DPnry5dgRGq."${rigname}" -p x --nicehash
