#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server asia-eth.2miners.com:2020 --user nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8.ace
