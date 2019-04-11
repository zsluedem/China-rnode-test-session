图形化RChain上dag
=======================

复制vdag数据
--------------

在节点上运行

    $ rnode vdag

现实以下内容

    root@ubuntu-s-4vcpu-8gb-fra1-01:~# rnode vdag

    digraph "dag" {
      rankdir=BT
      node [width=0 height=0 margin=0.03 fontsize=8]
      splines=false
      "6026523ee5..." [style=filled shape=box]
      "6026523ee5..." -> "44347c5fe2..." [style=invis]
      subgraph "cluster_00322ba649..." {
        label = "00322ba649..."
        "44347c5fe2..." [shape=box]
      }
      "44347c5fe2..." -> "6026523ee5..." [constraint=false]
    }

打开网站: https://dreampuf.github.io/GraphvizOnline

将"diagraph"以下的所有内容复制到左边的编辑栏

如下图:

.. image:: 2.png
   :target: 2.png


