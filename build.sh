cd $HOME/.cache_bytetrade
if [[ ! -f a ]]; then
    echo "huhu"
    echo "hahaha" >> a
fi
cd -

if [[ ! -f librdkafka-0.11.3.tar.gz ]]; then
    wget https://s3-ap-northeast-1.amazonaws.com/ccd1/librdkafka-0.11.3.tar.gz -O librdkafka-0.11.3.tar.gz
    tar -xzvf librdkafka-0.11.3.tar.gz
    cd librdkafka-0.11.3
    ./configure
    make -j$JOBS
    sudo make install
    cd -
else
    cd librdkafka-0.11.3
    sudo make install
    cd -
fi

g++ t.cpp 
