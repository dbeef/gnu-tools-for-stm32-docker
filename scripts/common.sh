#!/bin/bash

set -e
set -u

REPO_ROOT=$(realpath ..)
TOOLCHAIN_SOURCES_PATH="${REPO_ROOT}/sources"
DOCKER_PATH="${REPO_ROOT}/docker"
SCRIPTS_PATH="${REPO_ROOT}/scripts"
TAG="stm32-toolchain"
