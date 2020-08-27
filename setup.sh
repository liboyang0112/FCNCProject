#!/bin/bash

source env.sh

cd PlotTools
. setup.sh

cd ../FCNCAnalysis
. setup.sh

cd ../TRExFitter

git submodule init

git submodule update

./setup.sh

cd ..