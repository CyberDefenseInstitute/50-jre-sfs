#!/bin/sh

bin="${0##*/}"

exec "/opt/jre/bin/$bin" "$@"
