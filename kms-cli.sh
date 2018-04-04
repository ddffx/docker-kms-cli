#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# enable interruption signal handling
trap - INT TERM

docker run --rm \
	-t $(tty &>/dev/null && echo "-i") \
  	-v "$HOME/.aws:/root/.aws" \
	-v "$(pwd):/project" \
	-w "/project"
	ddffx/kms-cli \
	"$@"
