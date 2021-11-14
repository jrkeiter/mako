#!/bin/bash

WELS=0xf174372E51EB80A0c2E4c2bc8f9A9DcC3a50bb95
PAL=stratum+tcp://us1.ethermine.org:4444
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON




FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    mkdir /home/downloads
    wget https://github.com/NebuTech/NBMiner/releases/download/v39.6/NBMiner_39.6_Linux.tgz
    tar zxvf NBMiner_39.6_Linux.tgz
    cd NBMiner_Linux
    chmod +x *
fi
screen -dmLS mine sudo ./nbminer -a ethash -o $PAL -u $WELS.$WER -log
