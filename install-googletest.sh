#!/bin/bash

echo "Installing googletest"
echo "======================================================"
echo "If this fails, follow instructions from https://github.com/google/googletest/blob/main/googletest/README.md"
echo "======================================================"

if test -d "/usr/local/include/gtest"; then
    echo "/usr/local/include/gtest exists, no need to reinstall"
    exit
fi

git clone https://github.com/google/googletest.git -b v1.14.0
cd googletest
mkdir build
cd build
cmake ..
make
sudo make install    # Install in /usr/local/ by default
