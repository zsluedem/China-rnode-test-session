#!/usr/bin/env bash

wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
rnode run -s \
--prometheus \
--validator-private-key 901b1f0837b7e891d7c2ea0047f502fd95637e450b0226c39a97d68dd951c8a7 \
--validator-public-key 00322ba649cebf90d8bd0eeb0658ea7957bcc59ecee0676c86f4fec517c06251 \
--bonds-file bonds.txt \
--deploy-timestamp 1 \
--required-sigs 5 \
--duration 5min \
--interval 10sec