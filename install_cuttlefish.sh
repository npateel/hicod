sudo apt-get install libbz2-dev
git clone https://github.com/COMBINE-lab/cuttlefish.git
cd cuttlefish/ && git checkout develop
mkdir build && cd build/
cmake -DCMAKE_INSTALL_PREFIX=../ ..
make -j 8 install
cd ..