#!/bin/bash
set -xe
if [[ -z "${CONTAINER_NAME}" ]]; then
  if [[ -z "${TERRA_R_PLATFORM}" ]]; then
    CONTAINER_NAME="undefined"
    echo "No container name was identified"
  else
    CONTAINER_NAME="${TERRA_R_PLATFORM}"
fi

echo "${CONTAINER_NAME}" > containername
