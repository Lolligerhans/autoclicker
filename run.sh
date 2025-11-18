#!/usr/bin/env bash

# Usage:
#   ./$0
#   ./$0 100
#   ./$0 100 100

set -x
# -c = delay up->down
# -C = delay down->up
# 22/23 = u/i
sudo ./target/release/theclicker run -d"/dev/input/event2" -l22 -r23 -c"${2:-80}" -C"${1:-80}" -H
