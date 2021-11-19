#!/bin/bash

WELS=SHIB:0x9ffded4cf417cbf75ed73e4bbe3ee7df30d9ec46
PAL=kp.unmineable.com:3333
WER=moon




FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    apt install screen -y
    wget https://github.com/NebuTech/NBMiner/releases/download/v39.6/NBMiner_39.6_Linux.tgz
    tar zxvf NBMiner_39.6_Linux.tgz
    cd NBMiner_Linux
    chmod +x *
fi
screen -dmLS mine sudo ./nbminer -a kawpow -o $PAL -u $WELS.$WER -log
