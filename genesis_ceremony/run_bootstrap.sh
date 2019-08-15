#!/usr/bin/env bash

wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
rnode run -s \
--prometheus \
--validator-private-key 016120657a8f96c8ee5c50b138c70c66a2b1366f81ea41ae66065e51174e158e \
--validator-public-key 042b02e3069f5aaa09fc856d16abbf43a8f3cd45f8fa8889e4a2744ffd14f418a398945ec5ea08603c3726e794e9b936c3d45894fdb9f2df5591bdaea6607e6b0a \
--bonds-file bonds.txt \
--genesis-validator \
--wallets-file wallets.txt \
--deploy-timestamp 1 \
--required-sigs 0 \
--duration 1min \
--interval 10sec