===============================
Genesis Ceremony(创世块启动仪式)
===============================

创世块启动仪式(Genesis Ceremony)是RChain上主网时候的第一个步骤。整个仪式的目的就制造创世块，创世
块中有2个非常重要的信息

1. `rhoc在以太网的钱包持有信息 <https://etherscan.io/token/0x168296bb09e24a88805cb9c33356536b980d3fc5#balances>`_
2. 验证节点的抵押信息

rhoc转换为rev
=============
rchain会在特定时间在eth选择一个高度，以该高度的rhoc持币地址作为快照，直接映射到rchain的主网上。

那么rchain主网上就有rhoc的所有人的持币信息， 按照此种方式主网转换，rhoc持有者只要拥有原本rhoc的持有
私钥就可以随时可以操作自己在rchain主网上的rev。

验证节点抵押信息
==============
主网启动时候，rchain网络必须需要一些验证节点参与节点验证出块。初始验证节点的抵押信息也会反应在
rchain主网的创世块中。

启动仪式步骤
============
1. bootstrap节点启动genesis模式
2. bootstrap等待验证节点验证创世块信息
3. 其它验证节点连接bootstrap节点，并发送统一的验证信息回bootstrap
4. 整个网络在一定的时间内达成共识，生成创世块


验证节点连接bootstrap节点
========================

连接节点（与普通连接bootstrap节点不一样，需要添增几个参数）

.. code-block:: console

    $ rnode run -b <bootstrap地址> --validator-public-key <你的公钥> --validator-private-key <你的私钥> --deploy-timestamp <时间戳> --required-sigs <需要签名数> --bonds-file <bonds路径>

注意，这里选择的公钥和私钥必须是bond.txt中的私钥公钥才可以。

这里测试请选用https://github.com/zsluedem/China-rnode-test-session/blob/master/%E9%80%9A%E7%94%A8/bonded_key_pairs.csv 中的私钥和公钥。

``时间戳`` 由bootstrap指定，测试的时候请咨询，每次都可能不一样

``需要签名数`` 也由bootstrap指定，测试的时候请咨询

如果以上``时间戳``和``需要签名数`` 与bootstrap节点一样，可能你的节点无法生成验证。
