#!/bin/sh -e

./build-ios.sh -e distribution && ./lipo-ios.sh && ./build-tv.sh -e distribution && ./lipo-tv.sh
