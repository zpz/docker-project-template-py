#!/bin/bash

set -e

TINY=zppz/tiny:21.01.02
PARENT=$(bash -c "$(docker run --rm ${TINY} cat /usr/tools/find-image)" -- zppz/py3)
TAG=$(docker run --rm ${TINY} make-date-version)
MINI=$(bash -c "$(docker run --rm ${TINY} cat /usr/tools/find-image)" -- zppz/mini)
echo using MINI ${MINI}
echo
cmd="$(docker run --rm ${MINI} cat /usr/tools/build-docker-py)"

# If using namespace is desired (not necessary
# if the image is never going to be pushed to a remote
# Docker repository):
ns=zppz

bash -c "${cmd}" -- --build-arg PARENT=${PARENT} --tag ${TAG} --namespace ${ns}


