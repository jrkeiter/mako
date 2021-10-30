#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server ethash-eu.unmineable.com:3333 --user SHIB:0x9ffded4cf417cbf75ed73e4bbe3ee7df30d9ec46.ace
