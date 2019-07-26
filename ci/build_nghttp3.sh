#!/bin/sh
#build nghttp3 (for Travis)

cd ..
git clone https://github.com/ngtcp2/nghttp3
cd nghttp3
# for draft-20
git checkout a46f2898d6faf8
autoreconf -i
./configure --prefix=$PWD/build --enable-lib-only
make -j$(nproc) check
make install
cd ..
