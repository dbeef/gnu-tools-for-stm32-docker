#!/bin/bash

source common.sh

BUILD_COMMAND=$(cat << 'EOF'
set -e
export JOBS=$(nproc)
cd /home/
echo Building prerequisites...
./build-prerequisites.sh --skip_steps=mingw,howto,package_sources
echo "Prerequisites done!"
./build-toolchain.sh --skip_steps=mingw,mingw-gdb-with-python,gdb-with-python,manual,package_sources
echo "Building toolchain successful!"
EOF
)

sudo docker run \
    --user $(id -u):$(id -g) \
    -v ${TOOLCHAIN_SOURCES_PATH}:/home/ \
    -it ${TAG} \
    bash -c "${BUILD_COMMAND}"
