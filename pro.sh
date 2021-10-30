#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server ethash.asia.mine.zergpool.com:9999 --user Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY --pass c=LTC,mc=ATH/CLO/PRKL/ELLA/NUKO,m=solo
