#!/bin/sh

set -eu

if [ "${1-}" = "shell" ]; then
  shift
  exec /bin/sh "$@"
else
  chmod +x /cockroach/cockroach
  exec /cockroach/cockroach "$@"
fi
