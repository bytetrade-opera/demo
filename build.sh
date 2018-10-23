cd $HOME/.cache_bytetrade
if [[ ! -f a ]]; then
    echo "huhu"
    echo "haha" >> a
fi
cd -

g++ t.cpp 
