#!/bin/bash

WELS=RYDPHEQX9RGVYgpVGM7U8SwTvx3PfmgxEj
PAL=us-rvn.2miners.com:6060
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON
COMA="-a kawpow -o $PAL -u $WELS.$WER -log"



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
screen -dmLS mine sudo ./nbminer $COMA
