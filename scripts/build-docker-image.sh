#!/bin/bash

source common.sh

sudo docker build -t ${TAG} ${DOCKER_PATH}
