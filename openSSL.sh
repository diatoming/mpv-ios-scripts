#!/bin/sh -e

rm -rf ./openssl
rm -rf ./openssl-tv

git clone https://github.com/x2on/OpenSSL-for-iPhone.git openssl/

cd openssl
./build-libssl.sh

cd ..
mkdir openssl-tv/
mkdir openssl-tv/include/
mkdir openssl-tv/lib/
cp -r ./openssl/include/ ./openssl-tv/include/
cp ./openssl/lib/libcrypto-tvOS.a ./openssl-tv/lib/libcrypto.a
cp ./openssl/lib/libssl-tvOS.a ./openssl-tv/lib/libssl.a