# Linux性能调优

- 体系结构相关概念
    - 分页
        - 4K in x86 and 16K in power
        - page table per-process
    - 线性地址
        - 页目录 + 页表项 + 页偏移
        - 线性地址空间 cat /proc/cpuinfo | grep "address sizes"
