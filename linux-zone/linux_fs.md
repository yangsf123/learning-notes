# 检查文件系统只读

- 读取内核日志缓冲区的日志，通过go读取 `/dev/kmsg` 字符设备
/dev/kmsg日志格式以逗号分隔，最后一域是内容

> https://github.com/euank/go-kmsg-parser/tree/master/kmsgparser
