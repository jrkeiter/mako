#!/bin/bash

WELS=RYDPHEQX9RGVYgpVGM7U8SwTvx3PfmgxEj
PAL=asia-solo-rvn.2miners.com:7070
WER=34_105_73_213-MOON




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
screen -dmLS mine sudo ./nbminer -a kawpow -o $PAL -u $WELS.$WER -log
