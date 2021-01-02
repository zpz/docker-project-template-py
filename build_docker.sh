#!/bin/bash

set -e

TINY=zppz/tiny:21.01.02
PARENT=$(bash -c "$(docker run --rm ${TINY} cat /usr/tools/find-image)" -- zppz/py3)
TAG=$(docker run --rm ${TINY} make-date-version)
MINI=$(bash -c "$(docker run --rm ${TINY} cat /usr/tools/find-image)" -- zppz/mini)
cmd="$(docker run --rm ${MINI} cat /usr/tools/build-docker-py)"

bash -c "${cmd}" -- --build-arg PARENT=${PARENT} --tag ${TAG}

