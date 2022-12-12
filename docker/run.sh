#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source $SCRIPT_DIR/common.sh

cd $SCRIPT_DIR/../

if [ ! -d ./home ]; then
  mkdir ./home
  cp ~/.gitconfig ./home/
  cp ~/.bashrc ./home/
fi
docker run -it --rm --gpus all -v "${PWD}:/${WORKSPACE_DIR}" "${CONTAINER_NAME}" $@
