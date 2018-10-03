# 第二章 Playbook: 一切的开端

> 使用ansible时，绝大部分时间将花在编写playbook上
    - playbook:  用于配置管理的脚本

> example: 安装Nginx Web服务器并将其配置为可用于安全通信的状态
    完成本范例，会生成如下文件列表:
    - playbooks/ansible.cfg
    - playbooks/hosts
    - playbooks/Vagrantfile
    - playbooks/web-notls.yml
    - playbooks/web-tls.yml
    - playbooks/files/nginx.key
    - playbooks/files/nginx.crt
    - playbooks/files/nginx.conf
    - playbooks/templates/index.html.j2
    - playbooks/templates/nginx.conf.j2

    > 0.准备工作
        暴露80和443端口，通过配置Vagrant实现对本地机器的8080端口和8443端口的请求转发到Vagrant虚拟机的80端口和443端口
