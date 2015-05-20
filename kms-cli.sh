#!/bin/bash
docker run --rm --env-file $HOME/.kms-env ddffx/kms-cli /usr/local/bin/kms-cli "$@"
