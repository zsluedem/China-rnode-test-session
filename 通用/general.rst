通用操作
==========

连接bootstrap节点
------------------

    ``$ rnode run -b <bootstrap地址> --validator-public-key <你的公钥> --validator-private-key <你的私钥>``


将以上<>内容换成你的参数，比如说， 如果:

* ``<bootstrap地址>`` 是 ``"rnode://1efa82b543db29d84e936a57d7b5b53b11818498@206.189.155.255?protocol=40400&discovery=40404"``,
* ``<你的公钥>`` 是 ``16dc6cf7becdf919dfa2ff3fb6a1a435d8102a7db3127a0b9d2376dd2bbf8ffb``
* ``<你的私钥>`` 是 ``774149895133833120a34bab83927e34f03f32ed22949f48209de9335953d6c4``


则命令行为：

    ``rnode run -b "rnode://1efa82b543db29d84e936a57d7b5b53b11818498@206.189.155.255?protocol=40400&discovery=40404" --validator-public-key 16dc6cf7becdf919dfa2ff3fb6a1a435d8102a7db3127a0b9d2376dd2bbf8ffb --validator-private-key 774149895133833120a34bab83927e34f03f32ed22949f48209de9335953d6c4``


绑定成为验证节点（以下内容已过期，新的bonding 程序正在开发）
-----------------------------------------------------

请在下面文件随便选择一个私钥和公钥作为自己的key(左边私钥，右边公钥)

`未bonded的key <https://github.com/zsluedem/China-rnode-test-session/blob/master/%E9%80%9A%E7%94%A8/unbonded_key_pair
.csv>`_

连接bootstrap节点
-------------------
同上 第一种测试方式 连接bootstrap节点_


生成绑定合约
--------------

可读节点升级为验证节点需要部署两个合约---  bond_xxxx.rho 和 forward_xxxx.rho

这两个合约可以用一下命令生成:

    $ rnode generateFaucetBondingDeploys --amount <抵押数量> --private-key <你的私钥> --public-key <你的公钥> -s ed25519

此时当前目录生成两个文件

* bond_<你的公钥>.rho
* forward_<你的公钥>.rho

部署绑定合约
---------------

生成部署合约之后要把合约部署在验证节点上并让验证节点出块（注意，此时你的节点并不是验证节点，你需要把合约部署在别人的节点上）

    $ rnode --grpc-host 157.230.240.95 deploy --phlo-limit 10000000000 --phlo-price 1 <forward_合约>

    $ rnode --grpc-host 157.230.240.95 deploy --phlo-limit 10000000000 --phlo-price 1 <bond_合约>

然后等待验证节点出块。如果出块成功则并且你的公钥出现在最新出块的验证节点上，证明绑定成功。
