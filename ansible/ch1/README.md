# 第一章 概述

> 理想中向客户交付软件只需要在一台服务器上装好软件就能搞定。实际上我们都慢慢变成了系统工程师
- 部署应用时需要把一组运行在分布式计算资源上的不同服务组合起来，并且使用不同的网络协议互相通信
    一个应用一般由Web服务、应用服务、内存缓存系统、任务队列、消息队列、SQL数据库、NoSQL数据库及负载均衡等几部分组成
    保证服务具有适当的冗余、，这样出现异常时，我们的软件可以平滑地处理这些异常
    配套辅助也需要区部署和维护.辅助服务:日志系统、监控系统、数据分析系统或其他第三方服务

    参考书: 
    - The Practice of Cloud System Administration
    - Designing Data-Intensive Application

> Ansible
    出自科幻小说，是虚构的一种以超光速传递信息的通讯装置。小说中Ansible可以跨越任何距离同时控制无数飞船，就好像在我们的世界控制海量远程服务器一样

    Ansible被定义为配置管理工具，当我们提到配置管理的时候，通常都会联想到编写一个描述所有服务器状态的配置文件，并使用工具确保所有服务器都保持在那个状态上。
    - 确保所有依赖的软件包被安装
    - 配置文件包含正确的内容和正确的权限
    - 相关服务被正确运行


    > 优点
    Ansible引入一种特定领域语言(Domain-specific language, DSL)，可以使用DSL来描述服务器的状态

    部署：将自研的软件编译成二进制文件、生成相关的静态资源、将所有必需的文件复制到服务器上并将服务启动起来这一完整过程

    - 编配(Orchestration)
    Ansible设计的初衷在若干服务器上从零开始执行所有必需的配置与操作，利用简洁的模型来控制各种操作按照所需顺序执行
    - 置备(Provisioning)
    置备就是指创建新的虚拟机实例

    > Ansible如何运作
    ansible脚本,playbook，所有主机并行地执行脚本文件中的任务

    > Ansible的设计
    -  语法易读
    - 远程主机无需安装任何依赖:使用Ansible管理的服务器需要安装ssh和Python2.5，或者安装simplejsonk库的Python2.4，除此以外，不再需要预装任何agent程序或其他软件
        控制主机-用于控制远程主机的那台主机，需要安装Python2.6或更高版本
    - 基于推送模式
        以Chef、Puppet为代表的使用agent程序的配置管理系统默认使用"拉取模式"，安装在服务器上的agent程序定期向中心服务报备状态并拉取相应的配置信息
        基于推送模式的优点：直接由你来控制变更在服务器上发生的时间，不需要等待计时器过期

        Ansible也支持拉取模式--使用ansible-pull工具，官方文档http://docs.ansible.com/playbook_intro.html#ansible-pull
    - Ansible管理小规模集群
        内置模块，声明式，幂等

> 关于收敛性(Convergence)
    https://groups.google.com/forum/#!msg/ansible-project/Dljs

> 配置管理工具对比
    Taste Test: Puppet, Chef, Salt, Ansible
    Using Ansible at Scale to Manage a Public Cloud(http://www.slideshare.net/JesseKeating/ansiblefest-rax)

## 预备知识
    - 使用ssh连接到远程服务器
    - 会处理Bash命令行的输入输出(管道和重定向)
    - 安装软件包
    - 使用sudo命令
    - 检查和设置文件权限
    - 启动和停止系统服务
    - 设置环境变量
    - 编写脚本(语言不限)

    Jinja2(http://modulejinja.pocoo.org/docs/dev/)


> ansible.cfg文件简化配置
    Ansible查找ansible.cfg文件的顺序:
    1.ANSIBLE_CONFIG环境变量所指定的文件
    2../ansible.cfg(当前目录下的ansible.cfg)
    3.~/.ansible.cfg(祝目录下的.ansible.cfg)
    4./etc/ansible/ansible.cfg
    
    通常把ansible.cfg与playbooks一起放到当前目录,可以放到同一个版本控制仓库中


