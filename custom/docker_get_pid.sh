#!/bin/sh

docker inspect --format '{{ .State.Pid }}' "$@"
