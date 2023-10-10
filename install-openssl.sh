#!/bin/sh -e

OPENSSL_VERSION="1.1.1k"
IOS_SDK_VERSION=$(xcrun -sdk iphoneos --show-sdk-version)
TVOS_SDK_VERSION=$(xcrun -sdk appletvos --show-sdk-version)
TVOS_FOLDER="AppleTVOS$TVOS_SDK_VERSION-arm64.sdk"
IOS_FOLDER="iPhoneOS$IOS_SDK_VERSION-arm64.sdk"

rm -rf openssl
rm -rf openssl-src

git clone https://github.com/jasonacox/Build-OpenSSL-cURL.git openssl-src/
cd openssl-src

./build.sh -o $OPENSSL_VERSION

cd ..
mkdir -p openssl/$IOS_FOLDER
mkdir -p openssl/$TVOS_FOLDER
cp -r ./openssl-src/openssl/iOS-fat/ ./openssl/$IOS_FOLDER/
cp -r ./openssl-src/openssl/tvOS/ ./openssl/$TVOS_FOLDER/
