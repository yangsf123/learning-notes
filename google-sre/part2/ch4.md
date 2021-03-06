# 第四章 服务质量目标

- 服务质量指标(SLI)
    > 指标
        SLI指服务质量指标(Indicator)--该服务的某项服务质量的一个具体量化指标
        请求延迟、错误率、系统吞吐量等。这些度量通常是汇总过的:在某一个度量时间范围内将原始数据收集起来，计算速率、平均值、百分比等汇总数据
        客户端的延迟数据经常是最直接的用户指标，但是由于条件限制可能只能监控服务端的延迟数据
        可用性(availability)是另外一个SRE重视的SLI，代表服务可用时间的百分比
        持久性(durability)--数据能够完整保存的时间，对数据存储系统来说也是一个重要指标
- 服务质量目标(SLO)
    > 目标
        服务的某个SLI的目标值，或者目标范围。SLO的定义是:SLI<=目标值，或者范围下限<= SLI <= 范围上限
- 服务质量协议(SLA)
    > 协议
        指服务与用户之间的一个明确的，或者不明确的协议，描述了在达到或者没有达到SLO之后的后果

## 指标在实践中的应用
理解用户对系统的真实需求才能真正决定哪些指标是否有用，一般来说，四五个具有代表性的指标对系统健康程度的评估和关注就足够了
常见的服务根据它们的SLI通常会归类为一下几个大类:
- 用户可见的服务系统
- 存储系统通常强调:延迟、可用性和数据持久性
- 大数据系统
- 所有的系统都应该关注:正确性。是否返回了正确的回复，是否读取了正确的数据，或者进行了正确的数据分析操作

## 指标的收集
利用某种监控系统，大部分指标数据都在服务器端被收集

## 指标标准化
建议标准化一些常见的SLI，以避免每次都要重新评估它们。任何一个符合标准定义模板的服务可以不需要再次自己定义SLI
- 汇总间隔:每1分总汇总一次
- 汇总范围:集群中的全部任务
- 度量频率:每10秒一次
- 包含哪些请求:从黑盒监控任务发来的HTTP GET请求
- 数据如何获取:通过监控系统获取服务器端信息得到
- 数据访问延迟:从收到请求到最后一个字节被发出

## 目标在实践中的应用
从想要的目标反相推导出具体的指标

## 目标的定义

## SLO可以建立用户预期
通过公布SLO可以设置用户对系统行为的预期
- 留出一定的安全区
- 实际SLO也不要过高
理解系统行为与预期的符合程度可以帮助决策是否需要投入力量优化系统，使其速度更快、更可用，或者更可靠
