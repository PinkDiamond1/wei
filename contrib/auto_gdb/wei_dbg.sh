#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.weicore/weid.pid file instead
export LC_ALL=C

wei_pid=$(<~/.weicore/testnet3/weid.pid)
sudo gdb -batch -ex "source debug.gdb" weid ${wei_pid}
