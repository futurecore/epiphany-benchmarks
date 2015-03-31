#!/bin/bash

cd /home/dev
mkdir -p working
cd working
wget https://github.com/futurecore/epiphany-benchmarks/archive/master.zip
unzip master.zip
mv -f epiphany-benchmarks-master epiphany-benchmarks
rm master.zip
