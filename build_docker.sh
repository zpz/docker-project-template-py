#!/bin/bash

set -e

MINI=$(bash -c "$(docker run --rm zppz/tiny:21.01.02 cat /usr/tools/find-image)" -- zppz/mini)
cmd="$(docker run --rm ${MINI} cat /usr/tools/build-docker)"
bash -c "${cmd}" -- $@
