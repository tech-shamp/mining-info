#!/bin/bash

TDir="~/xmrig/build"
CDir=$(pwd)

if [ "$CDir" != "$TDir" ]; then
  cd "$TDir"
  read -p "Enter Miner Name: " rigname
  sudo ./xmrig -a rx -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbDTWt9VPeq8RJDabJUzY9y1DPnry5dgRGq."${rigname}" -p x --nicehash
else
  read -p "Enter Miner Name: " rigname
  sudo ./xmrig -a rx -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbDTWt9VPeq8RJDabJUzY9y1DPnry5dgRGq."${rigname}" -p x --nicehash
fi
