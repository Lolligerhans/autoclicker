#!/usr/bin/env bash

# Usage:
#   ./$0
#   ./$0 100
#   ./$0 100 100

# -c = delay up->down
# -C = delay down->up
# 22/23 = u/i

echo 5: Device: CHICONY USB Keyboard-event6
set -x
sudo ./target/release/theclicker run -d"/dev/input/event6" -l22 -r23 -c"${2:-80}" -C"${1:-80}" -H
