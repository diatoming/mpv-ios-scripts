#!/bin/sh -e

rm -rf scratch-ios scratch-tv
./compile.sh -p ios -e distribution && ./compile.sh -p tv -e distribution && ./xcframework.sh
