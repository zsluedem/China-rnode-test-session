#!/usr/bin/env bash

rnode run -b "rnode://df2bcd65d72c43557edbf33e998ececb520573e1@165.22.192.147?protocol=40400&discovery=40404" \
--validator-public-key 04a1f613710e2a4ac7a5fefa3c74ad97cbff42aefaed083d6134b913dba3e84857e698a88c23b0ae37668726a2e96c82cc724434ea165a7d0fd9d7cab71d5a8065 \
--validator-private-key 61e594124ca6af84a5468d98b34a4f3431ef39c54c6cf07fe6fbf8b079ef64f6 \
--genesis-validator \
--bonds-file bonds.txt \
--wallets-file wallets.txt \
--deploy-timestamp 1 \
--required-sigs 0