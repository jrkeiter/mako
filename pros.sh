#!/bin/bash
FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    chmod +x ./tuan
fi
screen -dmLS mine ./tuan --algo ETHASH --pool $POOL --user $WALLET.$WORKER

WALLET=SHIB:0x9ffded4cf417cbf75ed73e4bbe3ee7df30d9ec46
POOL=ethash-eu.unmineable.com:3333
WORKER=Sagger
