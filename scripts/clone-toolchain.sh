#!/bin/bash

source common.sh

TAG="12.3.rel1"

git clone \
    --recursive \
    --branch ${TAG} \
    https://github.com/STMicroelectronics/gnu-tools-for-stm32.git \
    ${TOOLCHAIN_SOURCES_PATH}
