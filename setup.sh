#!/bin/bash
source env.sh

cd PlotTools
mkdir build
cd build
cmake ..
make

cd ../../FCNCAnalysis
mkdir build
cd build
cmake ..
make install

cd ../..