# 第三章 inventory: 描述你的服务器

Ansible中，描述主机的默认方法是将它们列在一个文本文件中，这个文件叫作Inventory文件.一个简单的inventory文件可能只包含一组主机名的列表
like this:
    ontario.example.com
    newhampshire.example.com
    maryland.example.com

    Ansible默认使用本地的SSH客户端，这意味着你在SSH配置文件中设置的别名都可以被识别到.
    Ansible认为localhost代表你的本机，所以在需要的时候它会直接在本机执行而不通过SSH连接
