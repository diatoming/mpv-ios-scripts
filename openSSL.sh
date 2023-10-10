#!/bin/sh -e

rm -rf ./openssl-ios
rm -rf ./openssl-tv

git clone https://github.com/x2on/OpenSSL-for-iPhone.git openssl-ios/

cd openssl-ios
./build-libssl.sh

cd ..
mkdir openssl-tv/
mkdir openssl-tv/include/
mkdir openssl-tv/lib/

cp -r ./openssl-ios/include/ ./openssl-tv/include/
cp ./openssl-ios/lib/libcrypto-tvOS.a ./openssl-tv/lib/libcrypto.a
cp ./openssl-ios/lib/libssl-tvOS.a ./openssl-tv/lib/libssl.a