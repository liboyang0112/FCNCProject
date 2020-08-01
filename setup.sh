#!/bin/bash

git submodule init

git submodule update

source env.sh


for word in `root-config --cflags`
do
	if [[ "$word" =~ "-std=" ]] ; then
		CXX_STANDARD=`echo $word | tr -dc '0-9'`
		break;
	fi
done

echo "-- Detected root CXX standard:" $CXX_STANDARD

cd PlotTools
mkdir -p build
cd build
cmake .. -DCMAKE_CXX_STANDARD=$CXX_STANDARD
make

cd ../../FCNCAnalysis
mkdir -p build
cd build
cmake .. -DCMAKE_CXX_STANDARD=$CXX_STANDARD
make install

cd ../../TRExFitter

git submodule init

git submodule update

. setup.sh

cd ..