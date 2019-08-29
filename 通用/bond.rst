===================
绑定只读节点为验证节点
===================

如果你的节点为只读节点（非验证节点），那么你的节点只能接收区块， 并不能出块。 当你拥有一定的rev并且想成为
验证节点产生收益时候。你可以通过Bonding(绑定)来成为验证节点。

如果你按照安装教程完成安装。

你可以通过以下命令绑定自己的节点成为验证节点。

1. 先连接自己的节点到验证节点

.. code-block::

    $ rnode run -b "<bootstrap地址>" --validator-public-key <你的公钥> --validator-private-key <你的私钥>

2. 部署绑定合约

.. code-block::

    $ python cli.py --grpc-host <验证节点ip> bond --private-key <私钥> --bond-amount <抵押数量>

3. 确定自己的节点可以出块

你可以通过以下命令查询自己有多少rev

.. code-block::

    $ python cli.py check-balance --private-key <私钥>
    $ python cli.py check-balance --private-key <私钥>