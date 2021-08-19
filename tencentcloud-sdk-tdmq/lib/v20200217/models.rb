# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Tdmq
    module V20200217
      # AcknowledgeMessage请求参数结构体
      class AcknowledgeMessageRequest < TencentCloud::Common::AbstractModel
        # @param MessageId: 用作标识消息的唯一的ID（可从 receiveMessage 的返回值中获得）
        # @type MessageId: String
        # @param AckTopic: Topic 名字（可从 receiveMessage 的返回值中获得）这里尽量需要使用topic的全路径，即：tenant/namespace/topic。如果不指定，默认使用的是：public/default
        # @type AckTopic: String
        # @param SubName: 订阅者的名字，可以从receiveMessage的返回值中获取到。这里尽量与receiveMessage中的订阅者保持一致，否则没办法正确ack 接收回来的消息。
        # @type SubName: String

        attr_accessor :MessageId, :AckTopic, :SubName
        
        def initialize(messageid=nil, acktopic=nil, subname=nil)
          @MessageId = messageid
          @AckTopic = acktopic
          @SubName = subname
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @AckTopic = params['AckTopic']
          @SubName = params['SubName']
        end
      end

      # AcknowledgeMessage返回参数结构体
      class AcknowledgeMessageResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 如果为“”，则说明没有错误返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId
        
        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 用户专享集群信息
      class BindCluster < TencentCloud::Common::AbstractModel
        # @param ClusterName: 物理集群的名称
        # @type ClusterName: String

        attr_accessor :ClusterName
        
        def initialize(clustername=nil)
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
        end
      end

      # 运营端命名空间bundle实体
      class BundleSetOpt < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ClearCmqQueue请求参数结构体
      class ClearCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String

        attr_accessor :QueueName
        
        def initialize(queuename=nil)
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueName = params['QueueName']
        end
      end

      # ClearCmqQueue返回参数结构体
      class ClearCmqQueueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ClearCmqSubscriptionFilterTags请求参数结构体
      class ClearCmqSubscriptionFilterTagsRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type SubscriptionName: String

        attr_accessor :TopicName, :SubscriptionName
        
        def initialize(topicname=nil, subscriptionname=nil)
          @TopicName = topicname
          @SubscriptionName = subscriptionname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
        end
      end

      # ClearCmqSubscriptionFilterTags返回参数结构体
      class ClearCmqSubscriptionFilterTagsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 集群信息集合
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id。
        # @type ClusterId: String
        # @param ClusterName: 集群名称。
        # @type ClusterName: String
        # @param Remark: 说明信息。
        # @type Remark: String
        # @param EndPointNum: 接入点数量
        # @type EndPointNum: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Healthy: 集群是否健康，1表示健康，0表示异常
        # @type Healthy: Integer
        # @param HealthyInfo: 集群健康信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthyInfo: String
        # @param Status: 集群状态，0:创建中，1:正常，2:删除中，3:已删除，5:创建失败，6: 删除失败
        # @type Status: Integer
        # @param MaxNamespaceNum: 最大命名空间数量
        # @type MaxNamespaceNum: Integer
        # @param MaxTopicNum: 最大Topic数量
        # @type MaxTopicNum: Integer
        # @param MaxQps: 最大QPS
        # @type MaxQps: Integer
        # @param MessageRetentionTime: 消息保留时间
        # @type MessageRetentionTime: Integer
        # @param MaxStorageCapacity: 最大存储容量
        # @type MaxStorageCapacity: Integer
        # @param Version: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param PublicEndPoint: 公网访问接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicEndPoint: String
        # @param VpcEndPoint: VPC访问接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcEndPoint: String
        # @param NamespaceNum: 命名空间数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceNum: Integer

        attr_accessor :ClusterId, :ClusterName, :Remark, :EndPointNum, :CreateTime, :Healthy, :HealthyInfo, :Status, :MaxNamespaceNum, :MaxTopicNum, :MaxQps, :MessageRetentionTime, :MaxStorageCapacity, :Version, :PublicEndPoint, :VpcEndPoint, :NamespaceNum
        
        def initialize(clusterid=nil, clustername=nil, remark=nil, endpointnum=nil, createtime=nil, healthy=nil, healthyinfo=nil, status=nil, maxnamespacenum=nil, maxtopicnum=nil, maxqps=nil, messageretentiontime=nil, maxstoragecapacity=nil, version=nil, publicendpoint=nil, vpcendpoint=nil, namespacenum=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Remark = remark
          @EndPointNum = endpointnum
          @CreateTime = createtime
          @Healthy = healthy
          @HealthyInfo = healthyinfo
          @Status = status
          @MaxNamespaceNum = maxnamespacenum
          @MaxTopicNum = maxtopicnum
          @MaxQps = maxqps
          @MessageRetentionTime = messageretentiontime
          @MaxStorageCapacity = maxstoragecapacity
          @Version = version
          @PublicEndPoint = publicendpoint
          @VpcEndPoint = vpcendpoint
          @NamespaceNum = namespacenum
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @EndPointNum = params['EndPointNum']
          @CreateTime = params['CreateTime']
          @Healthy = params['Healthy']
          @HealthyInfo = params['HealthyInfo']
          @Status = params['Status']
          @MaxNamespaceNum = params['MaxNamespaceNum']
          @MaxTopicNum = params['MaxTopicNum']
          @MaxQps = params['MaxQps']
          @MessageRetentionTime = params['MessageRetentionTime']
          @MaxStorageCapacity = params['MaxStorageCapacity']
          @Version = params['Version']
          @PublicEndPoint = params['PublicEndPoint']
          @VpcEndPoint = params['VpcEndPoint']
          @NamespaceNum = params['NamespaceNum']
        end
      end

      # cmq DeadLetterPolicy
      class CmqDeadLetterPolicy < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueue: 死信队列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterQueue: String
        # @param Policy: 死信队列策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: Integer
        # @param MaxTimeToLive: 最大未消费过期时间。Policy为1时必选。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTimeToLive: Integer
        # @param MaxReceiveCount: 最大接收次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReceiveCount: Integer

        attr_accessor :DeadLetterQueue, :Policy, :MaxTimeToLive, :MaxReceiveCount
        
        def initialize(deadletterqueue=nil, policy=nil, maxtimetolive=nil, maxreceivecount=nil)
          @DeadLetterQueue = deadletterqueue
          @Policy = policy
          @MaxTimeToLive = maxtimetolive
          @MaxReceiveCount = maxreceivecount
        end

        def deserialize(params)
          @DeadLetterQueue = params['DeadLetterQueue']
          @Policy = params['Policy']
          @MaxTimeToLive = params['MaxTimeToLive']
          @MaxReceiveCount = params['MaxReceiveCount']
        end
      end

      # Cmq DeadLetterSource
      class CmqDeadLetterSource < TencentCloud::Common::AbstractModel
        # @param QueueId: 消息队列ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueId: String
        # @param QueueName: 消息队列名字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueName: String

        attr_accessor :QueueId, :QueueName
        
        def initialize(queueid=nil, queuename=nil)
          @QueueId = queueid
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueId = params['QueueId']
          @QueueName = params['QueueName']
        end
      end

      # cmq 批量queue属性信息
      class CmqQueue < TencentCloud::Common::AbstractModel
        # @param QueueId: 消息队列ID。
        # @type QueueId: String
        # @param QueueName: 消息队列名字。
        # @type QueueName: String
        # @param Qps: 每秒钟生产消息条数的限制，消费消息的大小是该值的1.1倍。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer
        # @param Bps: 带宽限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bps: Integer
        # @param MaxDelaySeconds: 飞行消息最大保留时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDelaySeconds: Integer
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围0 - 30秒，默认值0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PollingWaitSeconds: Integer
        # @param MsgRetentionSeconds: 消息保留周期。取值范围60-1296000秒（1min-15天），默认值345600秒（4 天）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRetentionSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围1 - 43200秒（即12小时内），默认值30。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576 Byte（即1K - 1024K），默认值65536。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMsgSize: Integer
        # @param RewindSeconds: 回溯队列的消息回溯时间最大值，取值范围0 - 43200秒，0表示不开启消息回溯。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewindSeconds: Integer
        # @param CreateTime: 队列的创建时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改队列属性的时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param ActiveMsgNum: 在队列中处于 Active 状态（不处于被消费状态）的消息总数，为近似值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveMsgNum: Integer
        # @param InactiveMsgNum: 在队列中处于 Inactive 状态（正处于被消费状态）的消息总数，为近似值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InactiveMsgNum: Integer
        # @param DelayMsgNum: 延迟消息数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayMsgNum: Integer
        # @param RewindMsgNum: 已调用 DelMsg 接口删除，但还在回溯保留时间内的消息数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewindMsgNum: Integer
        # @param MinMsgTime: 消息最小未消费时间，单位为秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinMsgTime: Integer
        # @param Transaction: 事务消息队列。true表示是事务消息，false表示不是事务消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transaction: Boolean
        # @param DeadLetterSource: 死信队列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterSource: Array
        # @param DeadLetterPolicy: 死信队列策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.CmqDeadLetterPolicy`
        # @param TransactionPolicy: 事务消息策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.CmqTransactionPolicy`
        # @param CreateUin: 创建者Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: Integer
        # @param Tags: 关联的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Trace: 消息轨迹。true表示开启，false表示不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trace: Boolean
        # @param TenantId: 租户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String

        attr_accessor :QueueId, :QueueName, :Qps, :Bps, :MaxDelaySeconds, :MaxMsgHeapNum, :PollingWaitSeconds, :MsgRetentionSeconds, :VisibilityTimeout, :MaxMsgSize, :RewindSeconds, :CreateTime, :LastModifyTime, :ActiveMsgNum, :InactiveMsgNum, :DelayMsgNum, :RewindMsgNum, :MinMsgTime, :Transaction, :DeadLetterSource, :DeadLetterPolicy, :TransactionPolicy, :CreateUin, :Tags, :Trace, :TenantId, :NamespaceName
        
        def initialize(queueid=nil, queuename=nil, qps=nil, bps=nil, maxdelayseconds=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, msgretentionseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, rewindseconds=nil, createtime=nil, lastmodifytime=nil, activemsgnum=nil, inactivemsgnum=nil, delaymsgnum=nil, rewindmsgnum=nil, minmsgtime=nil, transaction=nil, deadlettersource=nil, deadletterpolicy=nil, transactionpolicy=nil, createuin=nil, tags=nil, trace=nil, tenantid=nil, namespacename=nil)
          @QueueId = queueid
          @QueueName = queuename
          @Qps = qps
          @Bps = bps
          @MaxDelaySeconds = maxdelayseconds
          @MaxMsgHeapNum = maxmsgheapnum
          @PollingWaitSeconds = pollingwaitseconds
          @MsgRetentionSeconds = msgretentionseconds
          @VisibilityTimeout = visibilitytimeout
          @MaxMsgSize = maxmsgsize
          @RewindSeconds = rewindseconds
          @CreateTime = createtime
          @LastModifyTime = lastmodifytime
          @ActiveMsgNum = activemsgnum
          @InactiveMsgNum = inactivemsgnum
          @DelayMsgNum = delaymsgnum
          @RewindMsgNum = rewindmsgnum
          @MinMsgTime = minmsgtime
          @Transaction = transaction
          @DeadLetterSource = deadlettersource
          @DeadLetterPolicy = deadletterpolicy
          @TransactionPolicy = transactionpolicy
          @CreateUin = createuin
          @Tags = tags
          @Trace = trace
          @TenantId = tenantid
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @QueueId = params['QueueId']
          @QueueName = params['QueueName']
          @Qps = params['Qps']
          @Bps = params['Bps']
          @MaxDelaySeconds = params['MaxDelaySeconds']
          @MaxMsgHeapNum = params['MaxMsgHeapNum']
          @PollingWaitSeconds = params['PollingWaitSeconds']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @VisibilityTimeout = params['VisibilityTimeout']
          @MaxMsgSize = params['MaxMsgSize']
          @RewindSeconds = params['RewindSeconds']
          @CreateTime = params['CreateTime']
          @LastModifyTime = params['LastModifyTime']
          @ActiveMsgNum = params['ActiveMsgNum']
          @InactiveMsgNum = params['InactiveMsgNum']
          @DelayMsgNum = params['DelayMsgNum']
          @RewindMsgNum = params['RewindMsgNum']
          @MinMsgTime = params['MinMsgTime']
          @Transaction = params['Transaction']
          unless params['DeadLetterSource'].nil?
            @DeadLetterSource = []
            params['DeadLetterSource'].each do |i|
              cmqdeadlettersource_tmp = CmqDeadLetterSource.new
              cmqdeadlettersource_tmp.deserialize(i)
              @DeadLetterSource << cmqdeadlettersource_tmp
            end
          end
          unless params['DeadLetterPolicy'].nil?
            @DeadLetterPolicy = CmqDeadLetterPolicy.new
            @DeadLetterPolicy.deserialize(params['DeadLetterPolicy'])
          end
          unless params['TransactionPolicy'].nil?
            @TransactionPolicy = CmqTransactionPolicy.new
            @TransactionPolicy.deserialize(params['TransactionPolicy'])
          end
          @CreateUin = params['CreateUin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Trace = params['Trace']
          @TenantId = params['TenantId']
          @NamespaceName = params['NamespaceName']
        end
      end

      # cmq订阅返回参数
      class CmqSubscription < TencentCloud::Common::AbstractModel
        # @param SubscriptionName: 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionName: String
        # @param SubscriptionId: 订阅 ID。订阅 ID 在拉取监控数据时会用到。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionId: String
        # @param TopicOwner: 订阅拥有者的 APPID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicOwner: Integer
        # @param MsgCount: 该订阅待投递的消息数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgCount: Integer
        # @param LastModifyTime: 最后一次修改订阅属性的时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param CreateTime: 订阅的创建时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param BindingKey: 表示订阅接收消息的过滤策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingKey: Array
        # @param Endpoint: 接收通知的 endpoint，根据协议 protocol 区分：对于 HTTP，endpoint 必须以http://开头，host 可以是域名或 IP；对于 queue，则填 queueName。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoint: String
        # @param FilterTags: 描述用户创建订阅时选择的过滤策略：
        # filterType = 1表示用户使用 filterTag 标签过滤
        # filterType = 2表示用户使用 bindingKey 过滤。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterTags: Array
        # @param Protocol: 订阅的协议，目前支持两种协议：HTTP、queue。使用 HTTP 协议，用户需自己搭建接受消息的 Web Server。使用 queue，消息会自动推送到 CMQ queue，用户可以并发地拉取消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param NotifyStrategy: 向 endpoint 推送消息出现错误时，CMQ 推送服务器的重试策略。取值有：
        # （1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息；
        # （2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始 1s，后面是 2s，4s，8s...由于 Topic 消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是 EXPONENTIAL_DECAY_RETRY。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyStrategy: String
        # @param NotifyContentFormat: 推送内容的格式。取值：（1）JSON；（2）SIMPLIFIED，即 raw 格式。如果 protocol 是 queue，则取值必须为 SIMPLIFIED。如果 protocol 是 HTTP，两个值均可以，默认值是 JSON。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyContentFormat: String

        attr_accessor :SubscriptionName, :SubscriptionId, :TopicOwner, :MsgCount, :LastModifyTime, :CreateTime, :BindingKey, :Endpoint, :FilterTags, :Protocol, :NotifyStrategy, :NotifyContentFormat
        
        def initialize(subscriptionname=nil, subscriptionid=nil, topicowner=nil, msgcount=nil, lastmodifytime=nil, createtime=nil, bindingkey=nil, endpoint=nil, filtertags=nil, protocol=nil, notifystrategy=nil, notifycontentformat=nil)
          @SubscriptionName = subscriptionname
          @SubscriptionId = subscriptionid
          @TopicOwner = topicowner
          @MsgCount = msgcount
          @LastModifyTime = lastmodifytime
          @CreateTime = createtime
          @BindingKey = bindingkey
          @Endpoint = endpoint
          @FilterTags = filtertags
          @Protocol = protocol
          @NotifyStrategy = notifystrategy
          @NotifyContentFormat = notifycontentformat
        end

        def deserialize(params)
          @SubscriptionName = params['SubscriptionName']
          @SubscriptionId = params['SubscriptionId']
          @TopicOwner = params['TopicOwner']
          @MsgCount = params['MsgCount']
          @LastModifyTime = params['LastModifyTime']
          @CreateTime = params['CreateTime']
          @BindingKey = params['BindingKey']
          @Endpoint = params['Endpoint']
          @FilterTags = params['FilterTags']
          @Protocol = params['Protocol']
          @NotifyStrategy = params['NotifyStrategy']
          @NotifyContentFormat = params['NotifyContentFormat']
        end
      end

      # cmq topic返回信息展示字段
      class CmqTopic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 主题名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param MsgRetentionSeconds: 消息在主题中最长存活时间，从发送到该主题开始经过此参数指定的时间后，不论消息是否被成功推送给用户都将被删除，单位为秒。固定为一天（86400秒），该属性不能修改。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRetentionSeconds: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576Byte（即1 - 1024K），默认值为65536。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMsgSize: Integer
        # @param Qps: 每秒钟发布消息的条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer
        # @param FilterType: 描述用户创建订阅时选择的过滤策略：
        # FilterType = 1表示用户使用 FilterTag 标签过滤;
        # FilterType = 2表示用户使用 BindingKey 过滤。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: Integer
        # @param CreateTime: 主题的创建时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改主题属性的时间。返回 Unix 时间戳，精确到毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param MsgCount: 当前该主题中消息数目（消息堆积数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgCount: Integer
        # @param CreateUin: 创建者 Uin，CAM 鉴权 resource 由该字段组合而成。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: Integer
        # @param Tags: 关联的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Trace: 消息轨迹。true表示开启，false表示不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trace: Boolean
        # @param TenantId: 租户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String

        attr_accessor :TopicId, :TopicName, :MsgRetentionSeconds, :MaxMsgSize, :Qps, :FilterType, :CreateTime, :LastModifyTime, :MsgCount, :CreateUin, :Tags, :Trace, :TenantId, :NamespaceName
        
        def initialize(topicid=nil, topicname=nil, msgretentionseconds=nil, maxmsgsize=nil, qps=nil, filtertype=nil, createtime=nil, lastmodifytime=nil, msgcount=nil, createuin=nil, tags=nil, trace=nil, tenantid=nil, namespacename=nil)
          @TopicId = topicid
          @TopicName = topicname
          @MsgRetentionSeconds = msgretentionseconds
          @MaxMsgSize = maxmsgsize
          @Qps = qps
          @FilterType = filtertype
          @CreateTime = createtime
          @LastModifyTime = lastmodifytime
          @MsgCount = msgcount
          @CreateUin = createuin
          @Tags = tags
          @Trace = trace
          @TenantId = tenantid
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @MaxMsgSize = params['MaxMsgSize']
          @Qps = params['Qps']
          @FilterType = params['FilterType']
          @CreateTime = params['CreateTime']
          @LastModifyTime = params['LastModifyTime']
          @MsgCount = params['MsgCount']
          @CreateUin = params['CreateUin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Trace = params['Trace']
          @TenantId = params['TenantId']
          @NamespaceName = params['NamespaceName']
        end
      end

      # cmq TransactionPolicy
      class CmqTransactionPolicy < TencentCloud::Common::AbstractModel
        # @param FirstQueryInterval: 第一次回查时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstQueryInterval: Integer
        # @param MaxQueryCount: 最大查询次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxQueryCount: Integer

        attr_accessor :FirstQueryInterval, :MaxQueryCount
        
        def initialize(firstqueryinterval=nil, maxquerycount=nil)
          @FirstQueryInterval = firstqueryinterval
          @MaxQueryCount = maxquerycount
        end

        def deserialize(params)
          @FirstQueryInterval = params['FirstQueryInterval']
          @MaxQueryCount = params['MaxQueryCount']
        end
      end

      # 生产者连接实例
      class Connection < TencentCloud::Common::AbstractModel
        # @param Address: 生产者地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Partitions: 主题分区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Integer
        # @param ClientVersion: 生产者版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientVersion: String
        # @param ProducerName: 生产者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerName: String
        # @param ProducerId: 生产者ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerId: String
        # @param AverageMsgSize: 消息平均大小(byte)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageMsgSize: String
        # @param MsgThroughputIn: 生成速率(byte/秒)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputIn: String

        attr_accessor :Address, :Partitions, :ClientVersion, :ProducerName, :ProducerId, :AverageMsgSize, :MsgThroughputIn
        
        def initialize(address=nil, partitions=nil, clientversion=nil, producername=nil, producerid=nil, averagemsgsize=nil, msgthroughputin=nil)
          @Address = address
          @Partitions = partitions
          @ClientVersion = clientversion
          @ProducerName = producername
          @ProducerId = producerid
          @AverageMsgSize = averagemsgsize
          @MsgThroughputIn = msgthroughputin
        end

        def deserialize(params)
          @Address = params['Address']
          @Partitions = params['Partitions']
          @ClientVersion = params['ClientVersion']
          @ProducerName = params['ProducerName']
          @ProducerId = params['ProducerId']
          @AverageMsgSize = params['AverageMsgSize']
          @MsgThroughputIn = params['MsgThroughputIn']
        end
      end

      #  消费者
      class Consumer < TencentCloud::Common::AbstractModel
        # @param ConnectedSince: 消费者开始连接的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectedSince: String
        # @param ConsumerAddr: 消费者地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerAddr: String
        # @param ConsumerName: 消费者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerName: String
        # @param ClientVersion: 消费者版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientVersion: String

        attr_accessor :ConnectedSince, :ConsumerAddr, :ConsumerName, :ClientVersion
        
        def initialize(connectedsince=nil, consumeraddr=nil, consumername=nil, clientversion=nil)
          @ConnectedSince = connectedsince
          @ConsumerAddr = consumeraddr
          @ConsumerName = consumername
          @ClientVersion = clientversion
        end

        def deserialize(params)
          @ConnectedSince = params['ConnectedSince']
          @ConsumerAddr = params['ConsumerAddr']
          @ConsumerName = params['ConsumerName']
          @ClientVersion = params['ClientVersion']
        end
      end

      # 消费进度详情
      class ConsumersSchedule < TencentCloud::Common::AbstractModel
        # @param Partitions: 当前分区id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Integer
        # @param NumberOfEntries: 消息数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfEntries: Integer
        # @param MsgBacklog: 消息积压数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgBacklog: Integer
        # @param MsgRateOut: 消费者每秒分发消息的数量之和。
        # @type MsgRateOut: String
        # @param MsgThroughputOut: 消费者每秒消息的byte。
        # @type MsgThroughputOut: String
        # @param MsgRateExpired: 超时丢弃比例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateExpired: String

        attr_accessor :Partitions, :NumberOfEntries, :MsgBacklog, :MsgRateOut, :MsgThroughputOut, :MsgRateExpired
        
        def initialize(partitions=nil, numberofentries=nil, msgbacklog=nil, msgrateout=nil, msgthroughputout=nil, msgrateexpired=nil)
          @Partitions = partitions
          @NumberOfEntries = numberofentries
          @MsgBacklog = msgbacklog
          @MsgRateOut = msgrateout
          @MsgThroughputOut = msgthroughputout
          @MsgRateExpired = msgrateexpired
        end

        def deserialize(params)
          @Partitions = params['Partitions']
          @NumberOfEntries = params['NumberOfEntries']
          @MsgBacklog = params['MsgBacklog']
          @MsgRateOut = params['MsgRateOut']
          @MsgThroughputOut = params['MsgThroughputOut']
          @MsgRateExpired = params['MsgRateExpired']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterName: 集群名称，不支持中字以及除了短线和下划线外的特殊字符且不超过16个字符。
        # @type ClusterName: String
        # @param BindClusterId: 用户专享物理集群ID，如果不传，则默认在公共集群上创建用户集群资源。
        # @type BindClusterId: Integer
        # @param Remark: 说明，128个字符以内。
        # @type Remark: String
        # @param Tags: 集群的标签列表
        # @type Tags: Array

        attr_accessor :ClusterName, :BindClusterId, :Remark, :Tags
        
        def initialize(clustername=nil, bindclusterid=nil, remark=nil, tags=nil)
          @ClusterName = clustername
          @BindClusterId = bindclusterid
          @Remark = remark
          @Tags = tags
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @BindClusterId = params['BindClusterId']
          @Remark = params['Remark']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId
        
        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCmqQueue请求参数结构体
      class CreateCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        # @type PollingWaitSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        # @type MaxMsgSize: Integer
        # @param MsgRetentionSeconds: 消息保留周期。取值范围 60-1296000 秒（1min-15天），默认值 345600 (4 天)。
        # @type MsgRetentionSeconds: Integer
        # @param RewindSeconds: 队列是否开启回溯消息能力，该参数取值范围0-msgRetentionSeconds,即最大的回溯时间为消息在队列中的保留周期，0表示不开启。
        # @type RewindSeconds: Integer
        # @param Transaction: 1 表示事务队列，0 表示普通队列
        # @type Transaction: Integer
        # @param FirstQueryInterval: 第一次回查间隔
        # @type FirstQueryInterval: Integer
        # @param MaxQueryCount: 最大回查次数
        # @type MaxQueryCount: Integer
        # @param DeadLetterQueueName: 死信队列名称
        # @type DeadLetterQueueName: String
        # @param Policy: 死信策略。0为消息被多次消费未删除，1为Time-To-Live过期
        # @type Policy: Integer
        # @param MaxReceiveCount: 最大接收次数 1-1000
        # @type MaxReceiveCount: Integer
        # @param MaxTimeToLive: policy为1时必选。最大未消费过期时间。范围300-43200，单位秒，需要小于消息最大保留时间msgRetentionSeconds
        # @type MaxTimeToLive: Integer
        # @param Trace: 是否开启消息轨迹追踪，当不设置字段时，默认为不开启，该字段为true表示开启，为false表示不开启
        # @type Trace: Boolean

        attr_accessor :QueueName, :MaxMsgHeapNum, :PollingWaitSeconds, :VisibilityTimeout, :MaxMsgSize, :MsgRetentionSeconds, :RewindSeconds, :Transaction, :FirstQueryInterval, :MaxQueryCount, :DeadLetterQueueName, :Policy, :MaxReceiveCount, :MaxTimeToLive, :Trace
        
        def initialize(queuename=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, msgretentionseconds=nil, rewindseconds=nil, transaction=nil, firstqueryinterval=nil, maxquerycount=nil, deadletterqueuename=nil, policy=nil, maxreceivecount=nil, maxtimetolive=nil, trace=nil)
          @QueueName = queuename
          @MaxMsgHeapNum = maxmsgheapnum
          @PollingWaitSeconds = pollingwaitseconds
          @VisibilityTimeout = visibilitytimeout
          @MaxMsgSize = maxmsgsize
          @MsgRetentionSeconds = msgretentionseconds
          @RewindSeconds = rewindseconds
          @Transaction = transaction
          @FirstQueryInterval = firstqueryinterval
          @MaxQueryCount = maxquerycount
          @DeadLetterQueueName = deadletterqueuename
          @Policy = policy
          @MaxReceiveCount = maxreceivecount
          @MaxTimeToLive = maxtimetolive
          @Trace = trace
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @MaxMsgHeapNum = params['MaxMsgHeapNum']
          @PollingWaitSeconds = params['PollingWaitSeconds']
          @VisibilityTimeout = params['VisibilityTimeout']
          @MaxMsgSize = params['MaxMsgSize']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @RewindSeconds = params['RewindSeconds']
          @Transaction = params['Transaction']
          @FirstQueryInterval = params['FirstQueryInterval']
          @MaxQueryCount = params['MaxQueryCount']
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @Policy = params['Policy']
          @MaxReceiveCount = params['MaxReceiveCount']
          @MaxTimeToLive = params['MaxTimeToLive']
          @Trace = params['Trace']
        end
      end

      # CreateCmqQueue返回参数结构体
      class CreateCmqQueueResponse < TencentCloud::Common::AbstractModel
        # @param QueueId: 创建成功的queueId
        # @type QueueId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueId, :RequestId
        
        def initialize(queueid=nil, requestid=nil)
          @QueueId = queueid
          @RequestId = requestid
        end

        def deserialize(params)
          @QueueId = params['QueueId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCmqSubscribe请求参数结构体
      class CreateCmqSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type SubscriptionName: String
        # @param Protocol: 订阅的协议，目前支持两种协议：http、queue。使用http协议，用户需自己搭建接受消息的web server。使用queue，消息会自动推送到CMQ queue，用户可以并发地拉取消息。
        # @type Protocol: String
        # @param Endpoint: 接收通知的Endpoint，根据协议Protocol区分：对于http，Endpoint必须以“`http://`”开头，host可以是域名或IP；对于Queue，则填QueueName。 请注意，目前推送服务不能推送到私有网络中，因此Endpoint填写为私有网络域名或地址将接收不到推送的消息，目前支持推送到公网和基础网络。
        # @type Endpoint: String
        # @param NotifyStrategy: 向Endpoint推送消息出现错误时，CMQ推送服务器的重试策略。取值有：1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息；2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始1s，后面是2s，4s，8s...由于Topic消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是EXPONENTIAL_DECAY_RETRY。
        # @type NotifyStrategy: String
        # @param FilterTag: 消息正文。消息标签（用于消息过滤)。标签数量不能超过5个，每个标签不超过16个字符。与(Batch)PublishMessage的MsgTag参数配合使用，规则：1）如果FilterTag没有设置，则无论MsgTag是否有设置，订阅接收所有发布到Topic的消息；2）如果FilterTag数组有值，则只有数组中至少有一个值在MsgTag数组中也存在时（即FilterTag和MsgTag有交集），订阅才接收该发布到Topic的消息；3）如果FilterTag数组有值，但MsgTag没设置，则不接收任何发布到Topic的消息，可以认为是2）的一种特例，此时FilterTag和MsgTag没有交集。规则整体的设计思想是以订阅者的意愿为主。
        # @type FilterTag: Array
        # @param BindingKey: BindingKey数量不超过5个， 每个BindingKey长度不超过64字节，该字段表示订阅接收消息的过滤策略，每个BindingKey最多含有15个“.”， 即最多16个词组。
        # @type BindingKey: Array
        # @param NotifyContentFormat: 推送内容的格式。取值：1）JSON；2）SIMPLIFIED，即raw格式。如果Protocol是queue，则取值必须为SIMPLIFIED。如果Protocol是http，两个值均可以，默认值是JSON。
        # @type NotifyContentFormat: String

        attr_accessor :TopicName, :SubscriptionName, :Protocol, :Endpoint, :NotifyStrategy, :FilterTag, :BindingKey, :NotifyContentFormat
        
        def initialize(topicname=nil, subscriptionname=nil, protocol=nil, endpoint=nil, notifystrategy=nil, filtertag=nil, bindingkey=nil, notifycontentformat=nil)
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @Protocol = protocol
          @Endpoint = endpoint
          @NotifyStrategy = notifystrategy
          @FilterTag = filtertag
          @BindingKey = bindingkey
          @NotifyContentFormat = notifycontentformat
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @Protocol = params['Protocol']
          @Endpoint = params['Endpoint']
          @NotifyStrategy = params['NotifyStrategy']
          @FilterTag = params['FilterTag']
          @BindingKey = params['BindingKey']
          @NotifyContentFormat = params['NotifyContentFormat']
        end
      end

      # CreateCmqSubscribe返回参数结构体
      class CreateCmqSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param SubscriptionId: 订阅id
        # @type SubscriptionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscriptionId, :RequestId
        
        def initialize(subscriptionid=nil, requestid=nil)
          @SubscriptionId = subscriptionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscriptionId = params['SubscriptionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCmqTopic请求参数结构体
      class CreateCmqTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param MaxMsgSize: 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        # @type MaxMsgSize: Integer
        # @param FilterType: 用于指定主题的消息匹配策略。1：表示标签匹配策略；2：表示路由匹配策略，默认值为标签匹配策略。
        # @type FilterType: Integer
        # @param MsgRetentionSeconds: 消息保存时间。取值范围60 - 86400 s（即1分钟 - 1天），默认值86400。
        # @type MsgRetentionSeconds: Integer
        # @param Trace: 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        # @type Trace: Boolean

        attr_accessor :TopicName, :MaxMsgSize, :FilterType, :MsgRetentionSeconds, :Trace
        
        def initialize(topicname=nil, maxmsgsize=nil, filtertype=nil, msgretentionseconds=nil, trace=nil)
          @TopicName = topicname
          @MaxMsgSize = maxmsgsize
          @FilterType = filtertype
          @MsgRetentionSeconds = msgretentionseconds
          @Trace = trace
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @MaxMsgSize = params['MaxMsgSize']
          @FilterType = params['FilterType']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @Trace = params['Trace']
        end
      end

      # CreateCmqTopic返回参数结构体
      class CreateCmqTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题id
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :RequestId
        
        def initialize(topicid=nil, requestid=nil)
          @TopicId = topicid
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEnvironment请求参数结构体
      class CreateEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称，不支持中字以及除了短线和下划线外的特殊字符且不超过16个字符。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最小60，最大1296000，（15天）。
        # @type MsgTTL: Integer
        # @param Remark: 说明，128个字符以内。
        # @type Remark: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param RetentionPolicy: 消息保留策略
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :ClusterId, :RetentionPolicy
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, clusterid=nil, retentionpolicy=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @ClusterId = clusterid
          @RetentionPolicy = retentionpolicy
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
          unless params['RetentionPolicy'].nil?
            @RetentionPolicy = RetentionPolicy.new
            @RetentionPolicy.deserialize(params['RetentionPolicy'])
          end
        end
      end

      # CreateEnvironment返回参数结构体
      class CreateEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒。
        # @type MsgTTL: Integer
        # @param Remark: 说明，128个字符以内。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :NamespaceId, :RequestId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, namespaceid=nil, requestid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @NamespaceId = namespaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @NamespaceId = params['NamespaceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSubscription请求参数结构体
      class CreateSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param SubscriptionName: 订阅者名称，不支持中字以及除了短线和下划线外的特殊字符且不超过150个字符。
        # @type SubscriptionName: String
        # @param IsIdempotent: 是否幂等创建，若否不允许创建同名的订阅关系。
        # @type IsIdempotent: Boolean
        # @param Remark: 备注，128个字符以内。
        # @type Remark: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param AutoCreatePolicyTopic: 是否自动创建死信和重试主题，True 表示创建，False表示不创建，默认自动创建死信和重试主题。
        # @type AutoCreatePolicyTopic: Boolean
        # @param PostFixPattern: 指定死信和重试主题名称规范，LEGACY表示历史命名规则，COMMUNITY表示Pulsar社区命名规范
        # @type PostFixPattern: String

        attr_accessor :EnvironmentId, :TopicName, :SubscriptionName, :IsIdempotent, :Remark, :ClusterId, :AutoCreatePolicyTopic, :PostFixPattern
        
        def initialize(environmentid=nil, topicname=nil, subscriptionname=nil, isidempotent=nil, remark=nil, clusterid=nil, autocreatepolicytopic=nil, postfixpattern=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @IsIdempotent = isidempotent
          @Remark = remark
          @ClusterId = clusterid
          @AutoCreatePolicyTopic = autocreatepolicytopic
          @PostFixPattern = postfixpattern
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @IsIdempotent = params['IsIdempotent']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
          @AutoCreatePolicyTopic = params['AutoCreatePolicyTopic']
          @PostFixPattern = params['PostFixPattern']
        end
      end

      # CreateSubscription返回参数结构体
      class CreateSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名，不支持中字以及除了短线和下划线外的特殊字符且不超过64个字符。
        # @type TopicName: String
        # @param Partitions: 0：非分区topic，无分区；非0：具体分区topic的分区数，最大不允许超过128。
        # @type Partitions: Integer
        # @param TopicType: 0： 普通消息；
        # 1 ：全局顺序消息；
        # 2 ：局部顺序消息；
        # 3 ：重试队列；
        # 4 ：死信队列。
        # @type TopicType: Integer
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :TopicType, :Remark, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, partitions=nil, topictype=nil, remark=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @TopicType = topictype
          @Remark = remark
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @TopicType = params['TopicType']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param Partitions: 0：非分区topic，无分区；非0：具体分区topic的分区数。
        # @type Partitions: Integer
        # @param Remark: 备注，128字符以内。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TopicType: 0： 普通消息；
        # 1 ：全局顺序消息；
        # 2 ：局部顺序消息；
        # 3 ：重试队列；
        # 4 ：死信队列；
        # 5 ：事务消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :Remark, :TopicType, :RequestId
        
        def initialize(environmentid=nil, topicname=nil, partitions=nil, remark=nil, topictype=nil, requestid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @Remark = remark
          @TopicType = topictype
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @Remark = params['Remark']
          @TopicType = params['TopicType']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id，传入需要删除的集群Id。
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群的ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId
        
        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCmqQueue请求参数结构体
      class DeleteCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String

        attr_accessor :QueueName
        
        def initialize(queuename=nil)
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueName = params['QueueName']
        end
      end

      # DeleteCmqQueue返回参数结构体
      class DeleteCmqQueueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteCmqSubscribe请求参数结构体
      class DeleteCmqSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type SubscriptionName: String

        attr_accessor :TopicName, :SubscriptionName
        
        def initialize(topicname=nil, subscriptionname=nil)
          @TopicName = topicname
          @SubscriptionName = subscriptionname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
        end
      end

      # DeleteCmqSubscribe返回参数结构体
      class DeleteCmqSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteCmqTopic请求参数结构体
      class DeleteCmqTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type TopicName: String

        attr_accessor :TopicName
        
        def initialize(topicname=nil)
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
        end
      end

      # DeleteCmqTopic返回参数结构体
      class DeleteCmqTopicResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteEnvironments请求参数结构体
      class DeleteEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentIds: 环境（命名空间）数组，每次最多删除20个。
        # @type EnvironmentIds: Array
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentIds, :ClusterId
        
        def initialize(environmentids=nil, clusterid=nil)
          @EnvironmentIds = environmentids
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentIds = params['EnvironmentIds']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteEnvironments返回参数结构体
      class DeleteEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentIds: 成功删除的环境（命名空间）数组。
        # @type EnvironmentIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentIds, :RequestId
        
        def initialize(environmentids=nil, requestid=nil)
          @EnvironmentIds = environmentids
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentIds = params['EnvironmentIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSubscriptions请求参数结构体
      class DeleteSubscriptionsRequest < TencentCloud::Common::AbstractModel
        # @param SubscriptionTopicSets: 订阅关系集合，每次最多删除20个。
        # @type SubscriptionTopicSets: Array
        # @param ClusterId: pulsar集群Id。
        # @type ClusterId: String
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param Force: 是否强制删除，默认为false
        # @type Force: Boolean

        attr_accessor :SubscriptionTopicSets, :ClusterId, :EnvironmentId, :Force
        
        def initialize(subscriptiontopicsets=nil, clusterid=nil, environmentid=nil, force=nil)
          @SubscriptionTopicSets = subscriptiontopicsets
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @Force = force
        end

        def deserialize(params)
          unless params['SubscriptionTopicSets'].nil?
            @SubscriptionTopicSets = []
            params['SubscriptionTopicSets'].each do |i|
              subscriptiontopic_tmp = SubscriptionTopic.new
              subscriptiontopic_tmp.deserialize(i)
              @SubscriptionTopicSets << subscriptiontopic_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @Force = params['Force']
        end
      end

      # DeleteSubscriptions返回参数结构体
      class DeleteSubscriptionsResponse < TencentCloud::Common::AbstractModel
        # @param SubscriptionTopicSets: 成功删除的订阅关系数组。
        # @type SubscriptionTopicSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscriptionTopicSets, :RequestId
        
        def initialize(subscriptiontopicsets=nil, requestid=nil)
          @SubscriptionTopicSets = subscriptiontopicsets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubscriptionTopicSets'].nil?
            @SubscriptionTopicSets = []
            params['SubscriptionTopicSets'].each do |i|
              subscriptiontopic_tmp = SubscriptionTopic.new
              subscriptiontopic_tmp.deserialize(i)
              @SubscriptionTopicSets << subscriptiontopic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopics请求参数结构体
      class DeleteTopicsRequest < TencentCloud::Common::AbstractModel
        # @param TopicSets: 主题集合，每次最多删除20个。
        # @type TopicSets: Array
        # @param ClusterId: pulsar集群Id。
        # @type ClusterId: String
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param Force: 是否强制删除，默认为false
        # @type Force: Boolean

        attr_accessor :TopicSets, :ClusterId, :EnvironmentId, :Force
        
        def initialize(topicsets=nil, clusterid=nil, environmentid=nil, force=nil)
          @TopicSets = topicsets
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @Force = force
        end

        def deserialize(params)
          unless params['TopicSets'].nil?
            @TopicSets = []
            params['TopicSets'].each do |i|
              topicrecord_tmp = TopicRecord.new
              topicrecord_tmp.deserialize(i)
              @TopicSets << topicrecord_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @Force = params['Force']
        end
      end

      # DeleteTopics返回参数结构体
      class DeleteTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TopicSets: 被删除的主题数组。
        # @type TopicSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicSets, :RequestId
        
        def initialize(topicsets=nil, requestid=nil)
          @TopicSets = topicsets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicSets'].nil?
            @TopicSets = []
            params['TopicSets'].each do |i|
              topicrecord_tmp = TopicRecord.new
              topicrecord_tmp.deserialize(i)
              @TopicSets << topicrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindClusters请求参数结构体
      class DescribeBindClustersRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBindClusters返回参数结构体
      class DescribeBindClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 专享集群的数量
        # @type TotalCount: Integer
        # @param ClusterSet: 专享集群的列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId
        
        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              bindcluster_tmp = BindCluster.new
              bindcluster_tmp.deserialize(i)
              @ClusterSet << bindcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindVpcs请求参数结构体
      class DescribeBindVpcsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :Offset, :Limit, :ClusterId
        
        def initialize(offset=nil, limit=nil, clusterid=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBindVpcs返回参数结构体
      class DescribeBindVpcsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param VpcSets: Vpc集合。
        # @type VpcSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcSets, :RequestId
        
        def initialize(totalcount=nil, vpcsets=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcSets = vpcsets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcSets'].nil?
            @VpcSets = []
            params['VpcSets'].each do |i|
              vpcbindrecord_tmp = VpcBindRecord.new
              vpcbindrecord_tmp.deserialize(i)
              @VpcSets << vpcbindrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群的ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterSet: 集群的详细信息
        # @type ClusterSet: :class:`Tencentcloud::Tdmq.v20200217.models.Cluster`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterSet, :RequestId
        
        def initialize(clusterset=nil, requestid=nil)
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterSet'].nil?
            @ClusterSet = Cluster.new
            @ClusterSet.deserialize(params['ClusterSet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群列表数量
        # @type TotalCount: Integer
        # @param ClusterSet: 集群信息列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId
        
        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterSet << cluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqDeadLetterSourceQueues请求参数结构体
      class DescribeCmqDeadLetterSourceQueuesRequest < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueueName: 死信队列名称
        # @type DeadLetterQueueName: String
        # @param Limit: 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        # @type Limit: Integer
        # @param Offset: 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Offset: Integer
        # @param SourceQueueName: 根据SourceQueueName过滤
        # @type SourceQueueName: String

        attr_accessor :DeadLetterQueueName, :Limit, :Offset, :SourceQueueName
        
        def initialize(deadletterqueuename=nil, limit=nil, offset=nil, sourcequeuename=nil)
          @DeadLetterQueueName = deadletterqueuename
          @Limit = limit
          @Offset = offset
          @SourceQueueName = sourcequeuename
        end

        def deserialize(params)
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceQueueName = params['SourceQueueName']
        end
      end

      # DescribeCmqDeadLetterSourceQueues返回参数结构体
      class DescribeCmqDeadLetterSourceQueuesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足本次条件的队列个数
        # @type TotalCount: Integer
        # @param QueueSet: 死信队列源队列
        # @type QueueSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :QueueSet, :RequestId
        
        def initialize(totalcount=nil, queueset=nil, requestid=nil)
          @TotalCount = totalcount
          @QueueSet = queueset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['QueueSet'].nil?
            @QueueSet = []
            params['QueueSet'].each do |i|
              cmqdeadlettersource_tmp = CmqDeadLetterSource.new
              cmqdeadlettersource_tmp.deserialize(i)
              @QueueSet << cmqdeadlettersource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqQueueDetail请求参数结构体
      class DescribeCmqQueueDetailRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 精确匹配QueueName
        # @type QueueName: String

        attr_accessor :QueueName
        
        def initialize(queuename=nil)
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueName = params['QueueName']
        end
      end

      # DescribeCmqQueueDetail返回参数结构体
      class DescribeCmqQueueDetailResponse < TencentCloud::Common::AbstractModel
        # @param QueueDescribe: 队列详情列表。
        # @type QueueDescribe: :class:`Tencentcloud::Tdmq.v20200217.models.CmqQueue`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueDescribe, :RequestId
        
        def initialize(queuedescribe=nil, requestid=nil)
          @QueueDescribe = queuedescribe
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QueueDescribe'].nil?
            @QueueDescribe = CmqQueue.new
            @QueueDescribe.deserialize(params['QueueDescribe'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqQueues请求参数结构体
      class DescribeCmqQueuesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param QueueName: 根据QueueName进行过滤
        # @type QueueName: String

        attr_accessor :Offset, :Limit, :QueueName
        
        def initialize(offset=nil, limit=nil, queuename=nil)
          @Offset = offset
          @Limit = limit
          @QueueName = queuename
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueueName = params['QueueName']
        end
      end

      # DescribeCmqQueues返回参数结构体
      class DescribeCmqQueuesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param QueueList: 队列列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :QueueList, :RequestId
        
        def initialize(totalcount=nil, queuelist=nil, requestid=nil)
          @TotalCount = totalcount
          @QueueList = queuelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['QueueList'].nil?
            @QueueList = []
            params['QueueList'].each do |i|
              cmqqueue_tmp = CmqQueue.new
              cmqqueue_tmp.deserialize(i)
              @QueueList << cmqqueue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqSubscriptionDetail请求参数结构体
      class DescribeCmqSubscriptionDetailRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param Offset: 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param SubscriptionName: 根据SubscriptionName进行模糊搜索
        # @type SubscriptionName: String

        attr_accessor :TopicName, :Offset, :Limit, :SubscriptionName
        
        def initialize(topicname=nil, offset=nil, limit=nil, subscriptionname=nil)
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubscriptionName = params['SubscriptionName']
        end
      end

      # DescribeCmqSubscriptionDetail返回参数结构体
      class DescribeCmqSubscriptionDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SubscriptionSet: Subscription属性集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SubscriptionSet, :RequestId
        
        def initialize(totalcount=nil, subscriptionset=nil, requestid=nil)
          @TotalCount = totalcount
          @SubscriptionSet = subscriptionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SubscriptionSet'].nil?
            @SubscriptionSet = []
            params['SubscriptionSet'].each do |i|
              cmqsubscription_tmp = CmqSubscription.new
              cmqsubscription_tmp.deserialize(i)
              @SubscriptionSet << cmqsubscription_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqTopicDetail请求参数结构体
      class DescribeCmqTopicDetailRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 精确匹配TopicName。
        # @type TopicName: String

        attr_accessor :TopicName
        
        def initialize(topicname=nil)
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
        end
      end

      # DescribeCmqTopicDetail返回参数结构体
      class DescribeCmqTopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param TopicDescribe: 主题详情
        # @type TopicDescribe: :class:`Tencentcloud::Tdmq.v20200217.models.CmqTopic`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicDescribe, :RequestId
        
        def initialize(topicdescribe=nil, requestid=nil)
          @TopicDescribe = topicdescribe
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicDescribe'].nil?
            @TopicDescribe = CmqTopic.new
            @TopicDescribe.deserialize(params['TopicDescribe'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmqTopics请求参数结构体
      class DescribeCmqTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param TopicName: 根据TopicName进行模糊搜索
        # @type TopicName: String

        attr_accessor :Offset, :Limit, :TopicName
        
        def initialize(offset=nil, limit=nil, topicname=nil)
          @Offset = offset
          @Limit = limit
          @TopicName = topicname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicName = params['TopicName']
        end
      end

      # DescribeCmqTopics返回参数结构体
      class DescribeCmqTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TopicList: 主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 全量主题数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicList, :TotalCount, :RequestId
        
        def initialize(topiclist=nil, totalcount=nil, requestid=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              cmqtopic_tmp = CmqTopic.new
              cmqtopic_tmp.deserialize(i)
              @TopicList << cmqtopic_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironmentAttributes请求参数结构体
      class DescribeEnvironmentAttributesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :ClusterId
        
        def initialize(environmentid=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeEnvironmentAttributes返回参数结构体
      class DescribeEnvironmentAttributesResponse < TencentCloud::Common::AbstractModel
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最大1296000（15天）。
        # @type MsgTTL: Integer
        # @param RateInByte: 消费速率限制，单位：byte/秒，0：不限速。
        # @type RateInByte: Integer
        # @param RateInSize: 消费速率限制，单位：个数/秒，0：不限速。
        # @type RateInSize: Integer
        # @param RetentionHours: 已消费消息保存策略，单位：小时，0：消费完马上删除。
        # @type RetentionHours: Integer
        # @param RetentionSize: 已消费消息保存策略，单位：G，0：消费完马上删除。
        # @type RetentionSize: Integer
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param Replicas: 副本数。
        # @type Replicas: Integer
        # @param Remark: 备注。
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MsgTTL, :RateInByte, :RateInSize, :RetentionHours, :RetentionSize, :EnvironmentId, :Replicas, :Remark, :RequestId
        
        def initialize(msgttl=nil, rateinbyte=nil, rateinsize=nil, retentionhours=nil, retentionsize=nil, environmentid=nil, replicas=nil, remark=nil, requestid=nil)
          @MsgTTL = msgttl
          @RateInByte = rateinbyte
          @RateInSize = rateinsize
          @RetentionHours = retentionhours
          @RetentionSize = retentionsize
          @EnvironmentId = environmentid
          @Replicas = replicas
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @MsgTTL = params['MsgTTL']
          @RateInByte = params['RateInByte']
          @RateInSize = params['RateInSize']
          @RetentionHours = params['RetentionHours']
          @RetentionSize = params['RetentionSize']
          @EnvironmentId = params['EnvironmentId']
          @Replicas = params['Replicas']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironmentRoles请求参数结构体
      class DescribeEnvironmentRolesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Filters: * RoleName
        # 按照角色名进行过滤，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :EnvironmentId, :Offset, :Limit, :ClusterId, :RoleName, :Filters
        
        def initialize(environmentid=nil, offset=nil, limit=nil, clusterid=nil, rolename=nil, filters=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @RoleName = rolename
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @RoleName = params['RoleName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEnvironmentRoles返回参数结构体
      class DescribeEnvironmentRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param EnvironmentRoleSets: 命名空间角色集合。
        # @type EnvironmentRoleSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EnvironmentRoleSets, :RequestId
        
        def initialize(totalcount=nil, environmentrolesets=nil, requestid=nil)
          @TotalCount = totalcount
          @EnvironmentRoleSets = environmentrolesets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvironmentRoleSets'].nil?
            @EnvironmentRoleSets = []
            params['EnvironmentRoleSets'].each do |i|
              environmentrole_tmp = EnvironmentRole.new
              environmentrole_tmp.deserialize(i)
              @EnvironmentRoleSets << environmentrole_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间名称，模糊搜索。
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Filters: * EnvironmentId
        # 按照名称空间进行过滤，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :EnvironmentId, :Offset, :Limit, :ClusterId, :Filters
        
        def initialize(environmentid=nil, offset=nil, limit=nil, clusterid=nil, filters=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 命名空间记录数。
        # @type TotalCount: Integer
        # @param EnvironmentSet: 命名空间集合数组。
        # @type EnvironmentSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EnvironmentSet, :RequestId
        
        def initialize(totalcount=nil, environmentset=nil, requestid=nil)
          @TotalCount = totalcount
          @EnvironmentSet = environmentset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvironmentSet'].nil?
            @EnvironmentSet = []
            params['EnvironmentSet'].each do |i|
              environment_tmp = Environment.new
              environment_tmp.deserialize(i)
              @EnvironmentSet << environment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespaceBundlesOpt请求参数结构体
      class DescribeNamespaceBundlesOptRequest < TencentCloud::Common::AbstractModel
        # @param ClusterName: 物理集群名
        # @type ClusterName: String
        # @param TenantId: 虚拟集群（租户）ID
        # @type TenantId: String
        # @param NamespaceName: 命名空间名
        # @type NamespaceName: String
        # @param NeedMetrics: 是否需要监控指标，若传false，则不需要传Limit和Offset分页参数
        # @type NeedMetrics: Boolean
        # @param Limit: 查询限制条数
        # @type Limit: Integer
        # @param Offset: 查询偏移量
        # @type Offset: Integer

        attr_accessor :ClusterName, :TenantId, :NamespaceName, :NeedMetrics, :Limit, :Offset
        
        def initialize(clustername=nil, tenantid=nil, namespacename=nil, needmetrics=nil, limit=nil, offset=nil)
          @ClusterName = clustername
          @TenantId = tenantid
          @NamespaceName = namespacename
          @NeedMetrics = needmetrics
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @TenantId = params['TenantId']
          @NamespaceName = params['NamespaceName']
          @NeedMetrics = params['NeedMetrics']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNamespaceBundlesOpt返回参数结构体
      class DescribeNamespaceBundlesOptResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录条数
        # @type TotalCount: Integer
        # @param BundleSet: bundle列表
        # @type BundleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BundleSet, :RequestId
        
        def initialize(totalcount=nil, bundleset=nil, requestid=nil)
          @TotalCount = totalcount
          @BundleSet = bundleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BundleSet'].nil?
            @BundleSet = []
            params['BundleSet'].each do |i|
              bundlesetopt_tmp = BundleSetOpt.new
              bundlesetopt_tmp.deserialize(i)
              @BundleSet << bundlesetopt_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeHealthOpt请求参数结构体
      class DescribeNodeHealthOptRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 节点实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeNodeHealthOpt返回参数结构体
      class DescribeNodeHealthOptResponse < TencentCloud::Common::AbstractModel
        # @param NodeState: 0-异常；1-正常
        # @type NodeState: Integer
        # @param LatestHealthCheckTime: 最近一次健康检查的时间
        # @type LatestHealthCheckTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeState, :LatestHealthCheckTime, :RequestId
        
        def initialize(nodestate=nil, latesthealthchecktime=nil, requestid=nil)
          @NodeState = nodestate
          @LatestHealthCheckTime = latesthealthchecktime
          @RequestId = requestid
        end

        def deserialize(params)
          @NodeState = params['NodeState']
          @LatestHealthCheckTime = params['LatestHealthCheckTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProducers请求参数结构体
      class DescribeProducersRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ProducerName: 生产者名称，模糊匹配。
        # @type ProducerName: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :ProducerName, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, producername=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @ProducerName = producername
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProducerName = params['ProducerName']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeProducers返回参数结构体
      class DescribeProducersResponse < TencentCloud::Common::AbstractModel
        # @param ProducerSets: 生产者集合数组。
        # @type ProducerSets: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProducerSets, :TotalCount, :RequestId
        
        def initialize(producersets=nil, totalcount=nil, requestid=nil)
          @ProducerSets = producersets
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProducerSets'].nil?
            @ProducerSets = []
            params['ProducerSets'].each do |i|
              producer_tmp = Producer.new
              producer_tmp.deserialize(i)
              @ProducerSets << producer_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscriptions请求参数结构体
      class DescribeSubscriptionsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param SubscriptionName: 订阅者名称，模糊匹配。
        # @type SubscriptionName: String
        # @param Filters: 数据过滤条件。
        # @type Filters: Array
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :SubscriptionName, :Filters, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, subscriptionname=nil, filters=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
          @Filters = filters
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubscriptionName = params['SubscriptionName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtersubscription_tmp = FilterSubscription.new
              filtersubscription_tmp.deserialize(i)
              @Filters << filtersubscription_tmp
            end
          end
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeSubscriptions返回参数结构体
      class DescribeSubscriptionsResponse < TencentCloud::Common::AbstractModel
        # @param SubscriptionSets: 订阅者集合数组。
        # @type SubscriptionSets: Array
        # @param TotalCount: 数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscriptionSets, :TotalCount, :RequestId
        
        def initialize(subscriptionsets=nil, totalcount=nil, requestid=nil)
          @SubscriptionSets = subscriptionsets
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubscriptionSets'].nil?
            @SubscriptionSets = []
            params['SubscriptionSets'].each do |i|
              subscription_tmp = Subscription.new
              subscription_tmp.deserialize(i)
              @SubscriptionSets << subscription_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopics请求参数结构体
      class DescribeTopicsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名模糊匹配。
        # @type TopicName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param TopicType: topic类型描述：
        # 0：普通消息；
        # 1：全局顺序消息；
        # 2：局部顺序消息；
        # 3：重试队列；
        # 4：死信队列；
        # 5：事务消息。
        # @type TopicType: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Filters: * TopicName
        # 按照主题名字查询，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :TopicType, :ClusterId, :Filters
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, topictype=nil, clusterid=nil, filters=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @TopicType = topictype
          @ClusterId = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicType = params['TopicType']
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeTopics返回参数结构体
      class DescribeTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TopicSets: 主题集合数组。
        # @type TopicSets: Array
        # @param TotalCount: 主题数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicSets, :TotalCount, :RequestId
        
        def initialize(topicsets=nil, totalcount=nil, requestid=nil)
          @TopicSets = topicsets
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicSets'].nil?
            @TopicSets = []
            params['TopicSets'].each do |i|
              topic_tmp = Topic.new
              topic_tmp.deserialize(i)
              @TopicSets << topic_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 命名空间信息
      class Environment < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间名称
        # @type EnvironmentId: String
        # @param Remark: 说明
        # @type Remark: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最大1296000（15天）
        # @type MsgTTL: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间
        # @type UpdateTime: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param TopicNum: Topic数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNum: Integer

        attr_accessor :EnvironmentId, :Remark, :MsgTTL, :CreateTime, :UpdateTime, :NamespaceId, :NamespaceName, :TopicNum
        
        def initialize(environmentid=nil, remark=nil, msgttl=nil, createtime=nil, updatetime=nil, namespaceid=nil, namespacename=nil, topicnum=nil)
          @EnvironmentId = environmentid
          @Remark = remark
          @MsgTTL = msgttl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @TopicNum = topicnum
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @TopicNum = params['TopicNum']
        end
      end

      # 环境角色集合
      class EnvironmentRole < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）。
        # @type EnvironmentId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Permissions: 授权项，最多只能包含produce、consume两项的非空字符串数组。
        # @type Permissions: Array
        # @param RoleDescribe: 角色描述。
        # @type RoleDescribe: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :EnvironmentId, :RoleName, :Permissions, :RoleDescribe, :CreateTime, :UpdateTime
        
        def initialize(environmentid=nil, rolename=nil, permissions=nil, roledescribe=nil, createtime=nil, updatetime=nil)
          @EnvironmentId = environmentid
          @RoleName = rolename
          @Permissions = permissions
          @RoleDescribe = roledescribe
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleName = params['RoleName']
          @Permissions = params['Permissions']
          @RoleDescribe = params['RoleDescribe']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数的名字
        # @type Name: String
        # @param Values: 数值
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 过滤订阅列表
      class FilterSubscription < TencentCloud::Common::AbstractModel
        # @param ConsumerHasCount: 是否仅展示包含真实消费者的订阅。
        # @type ConsumerHasCount: Boolean
        # @param ConsumerHasBacklog: 是否仅展示消息堆积的订阅。
        # @type ConsumerHasBacklog: Boolean
        # @param ConsumerHasExpired: 是否仅展示存在消息超期丢弃的订阅。
        # @type ConsumerHasExpired: Boolean
        # @param SubscriptionNames: 按照订阅名过滤，精确查询。
        # @type SubscriptionNames: Array

        attr_accessor :ConsumerHasCount, :ConsumerHasBacklog, :ConsumerHasExpired, :SubscriptionNames
        
        def initialize(consumerhascount=nil, consumerhasbacklog=nil, consumerhasexpired=nil, subscriptionnames=nil)
          @ConsumerHasCount = consumerhascount
          @ConsumerHasBacklog = consumerhasbacklog
          @ConsumerHasExpired = consumerhasexpired
          @SubscriptionNames = subscriptionnames
        end

        def deserialize(params)
          @ConsumerHasCount = params['ConsumerHasCount']
          @ConsumerHasBacklog = params['ConsumerHasBacklog']
          @ConsumerHasExpired = params['ConsumerHasExpired']
          @SubscriptionNames = params['SubscriptionNames']
        end
      end

      # ModifyCluster请求参数结构体
      class ModifyClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: Pulsar 集群的ID，需要更新的集群Id。
        # @type ClusterId: String
        # @param ClusterName: 更新后的集群名称。
        # @type ClusterName: String
        # @param Remark: 说明信息。
        # @type Remark: String

        attr_accessor :ClusterId, :ClusterName, :Remark
        
        def initialize(clusterid=nil, clustername=nil, remark=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
        end
      end

      # ModifyCluster返回参数结构体
      class ModifyClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId
        
        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCmqQueueAttribute请求参数结构体
      class ModifyCmqQueueAttributeRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        # @type PollingWaitSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        # @type MaxMsgSize: Integer
        # @param MsgRetentionSeconds: 消息保留周期。取值范围 60-1296000 秒（1min-15天），默认值 345600 (4 天)。
        # @type MsgRetentionSeconds: Integer
        # @param RewindSeconds: 消息最长回溯时间，取值范围0-msgRetentionSeconds，消息的最大回溯之间为消息在队列中的保存周期，0表示不开启消息回溯。
        # @type RewindSeconds: Integer
        # @param FirstQueryInterval: 第一次查询时间
        # @type FirstQueryInterval: Integer
        # @param MaxQueryCount: 最大查询次数
        # @type MaxQueryCount: Integer
        # @param DeadLetterQueueName: 死信队列名称
        # @type DeadLetterQueueName: String
        # @param MaxTimeToLive: MaxTimeToLivepolicy为1时必选。最大未消费过期时间。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds
        # @type MaxTimeToLive: Integer
        # @param MaxReceiveCount: 最大接收次数
        # @type MaxReceiveCount: Integer
        # @param Policy: 死信队列策略
        # @type Policy: Integer
        # @param Trace: 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        # @type Trace: Boolean
        # @param Transaction: 是否开启事务，1开启，0不开启
        # @type Transaction: Integer

        attr_accessor :QueueName, :MaxMsgHeapNum, :PollingWaitSeconds, :VisibilityTimeout, :MaxMsgSize, :MsgRetentionSeconds, :RewindSeconds, :FirstQueryInterval, :MaxQueryCount, :DeadLetterQueueName, :MaxTimeToLive, :MaxReceiveCount, :Policy, :Trace, :Transaction
        
        def initialize(queuename=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, msgretentionseconds=nil, rewindseconds=nil, firstqueryinterval=nil, maxquerycount=nil, deadletterqueuename=nil, maxtimetolive=nil, maxreceivecount=nil, policy=nil, trace=nil, transaction=nil)
          @QueueName = queuename
          @MaxMsgHeapNum = maxmsgheapnum
          @PollingWaitSeconds = pollingwaitseconds
          @VisibilityTimeout = visibilitytimeout
          @MaxMsgSize = maxmsgsize
          @MsgRetentionSeconds = msgretentionseconds
          @RewindSeconds = rewindseconds
          @FirstQueryInterval = firstqueryinterval
          @MaxQueryCount = maxquerycount
          @DeadLetterQueueName = deadletterqueuename
          @MaxTimeToLive = maxtimetolive
          @MaxReceiveCount = maxreceivecount
          @Policy = policy
          @Trace = trace
          @Transaction = transaction
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @MaxMsgHeapNum = params['MaxMsgHeapNum']
          @PollingWaitSeconds = params['PollingWaitSeconds']
          @VisibilityTimeout = params['VisibilityTimeout']
          @MaxMsgSize = params['MaxMsgSize']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @RewindSeconds = params['RewindSeconds']
          @FirstQueryInterval = params['FirstQueryInterval']
          @MaxQueryCount = params['MaxQueryCount']
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @MaxTimeToLive = params['MaxTimeToLive']
          @MaxReceiveCount = params['MaxReceiveCount']
          @Policy = params['Policy']
          @Trace = params['Trace']
          @Transaction = params['Transaction']
        end
      end

      # ModifyCmqQueueAttribute返回参数结构体
      class ModifyCmqQueueAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyCmqSubscriptionAttribute请求参数结构体
      class ModifyCmqSubscriptionAttributeRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type SubscriptionName: String
        # @param NotifyStrategy: 向 Endpoint 推送消息出现错误时，CMQ 推送服务器的重试策略。取值如下：
        # （1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息。
        # （2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始1s，后面是2s，4s，8s···由于 Topic 消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是 EXPONENTIAL_DECAY_RETRY。
        # @type NotifyStrategy: String
        # @param NotifyContentFormat: 推送内容的格式。取值：（1）JSON；（2）SIMPLIFIED，即 raw 格式。如果 Protocol 是 queue，则取值必须为 SIMPLIFIED。如果 Protocol 是 HTTP，两个值均可以，默认值是 JSON。
        # @type NotifyContentFormat: String
        # @param FilterTags: 消息正文。消息标签（用于消息过滤)。标签数量不能超过5个，每个标签不超过16个字符。与(Batch)PublishMessage的MsgTag参数配合使用，规则：1）如果FilterTag没有设置，则无论MsgTag是否有设置，订阅接收所有发布到Topic的消息；2）如果FilterTag数组有值，则只有数组中至少有一个值在MsgTag数组中也存在时（即FilterTag和MsgTag有交集），订阅才接收该发布到Topic的消息；3）如果FilterTag数组有值，但MsgTag没设置，则不接收任何发布到Topic的消息，可以认为是2）的一种特例，此时FilterTag和MsgTag没有交集。规则整体的设计思想是以订阅者的意愿为主。
        # @type FilterTags: Array
        # @param BindingKey: BindingKey数量不超过5个， 每个BindingKey长度不超过64字节，该字段表示订阅接收消息的过滤策略，每个BindingKey最多含有15个“.”， 即最多16个词组。
        # @type BindingKey: Array

        attr_accessor :TopicName, :SubscriptionName, :NotifyStrategy, :NotifyContentFormat, :FilterTags, :BindingKey
        
        def initialize(topicname=nil, subscriptionname=nil, notifystrategy=nil, notifycontentformat=nil, filtertags=nil, bindingkey=nil)
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @NotifyStrategy = notifystrategy
          @NotifyContentFormat = notifycontentformat
          @FilterTags = filtertags
          @BindingKey = bindingkey
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @NotifyStrategy = params['NotifyStrategy']
          @NotifyContentFormat = params['NotifyContentFormat']
          @FilterTags = params['FilterTags']
          @BindingKey = params['BindingKey']
        end
      end

      # ModifyCmqSubscriptionAttribute返回参数结构体
      class ModifyCmqSubscriptionAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyCmqTopicAttribute请求参数结构体
      class ModifyCmqTopicAttributeRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type TopicName: String
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 65536 Byte（即1 - 64K），默认值65536。
        # @type MaxMsgSize: Integer
        # @param MsgRetentionSeconds: 消息保存时间。取值范围60 - 86400 s（即1分钟 - 1天），默认值86400。
        # @type MsgRetentionSeconds: Integer
        # @param Trace: 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        # @type Trace: Boolean

        attr_accessor :TopicName, :MaxMsgSize, :MsgRetentionSeconds, :Trace
        
        def initialize(topicname=nil, maxmsgsize=nil, msgretentionseconds=nil, trace=nil)
          @TopicName = topicname
          @MaxMsgSize = maxmsgsize
          @MsgRetentionSeconds = msgretentionseconds
          @Trace = trace
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @MaxMsgSize = params['MaxMsgSize']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @Trace = params['Trace']
        end
      end

      # ModifyCmqTopicAttribute返回参数结构体
      class ModifyCmqTopicAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyEnvironmentAttributes请求参数结构体
      class ModifyEnvironmentAttributesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间名称。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最大1296000。
        # @type MsgTTL: Integer
        # @param Remark: 备注，字符串最长不超过128。
        # @type Remark: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RetentionPolicy: 消息保留策略
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :ClusterId, :RetentionPolicy
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, clusterid=nil, retentionpolicy=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @ClusterId = clusterid
          @RetentionPolicy = retentionpolicy
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
          unless params['RetentionPolicy'].nil?
            @RetentionPolicy = RetentionPolicy.new
            @RetentionPolicy.deserialize(params['RetentionPolicy'])
          end
        end
      end

      # ModifyEnvironmentAttributes返回参数结构体
      class ModifyEnvironmentAttributesResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间名称。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒。
        # @type MsgTTL: Integer
        # @param Remark: 备注，字符串最长不超过128。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :NamespaceId, :RequestId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, namespaceid=nil, requestid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @NamespaceId = namespaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @NamespaceId = params['NamespaceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param Partitions: 分区数，必须大于或者等于原分区数，若想维持原分区数请输入原数目，修改分区数仅对非全局顺序消息起效果，不允许超过128个分区。
        # @type Partitions: Integer
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :Remark, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, partitions=nil, remark=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @Remark = remark
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区数
        # @type Partitions: Integer
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :Remark, :RequestId
        
        def initialize(partitions=nil, remark=nil, requestid=nil)
          @Partitions = partitions
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @Partitions = params['Partitions']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # 分区topic
      class PartitionsTopic < TencentCloud::Common::AbstractModel
        # @param AverageMsgSize: 最后一次间隔内发布消息的平均byte大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageMsgSize: String
        # @param ConsumerCount: 消费者数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerCount: String
        # @param LastConfirmedEntry: 被记录下来的消息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastConfirmedEntry: String
        # @param LastLedgerCreatedTimestamp: 最后一个ledger创建的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLedgerCreatedTimestamp: String
        # @param MsgRateIn: 本地和复制的发布者每秒发布消息的速率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateIn: String
        # @param MsgRateOut: 本地和复制的消费者每秒分发消息的数量之和。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateOut: String
        # @param MsgThroughputIn: 本地和复制的发布者每秒发布消息的byte。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputIn: String
        # @param MsgThroughputOut: 本地和复制的消费者每秒分发消息的byte。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputOut: String
        # @param NumberOfEntries: 被记录下来的消息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfEntries: String
        # @param Partitions: 子分区id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Integer
        # @param ProducerCount: 生产者数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerCount: String
        # @param TotalSize: 以byte计算的所有消息存储总量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: String
        # @param TopicType: topic类型描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicType: Integer

        attr_accessor :AverageMsgSize, :ConsumerCount, :LastConfirmedEntry, :LastLedgerCreatedTimestamp, :MsgRateIn, :MsgRateOut, :MsgThroughputIn, :MsgThroughputOut, :NumberOfEntries, :Partitions, :ProducerCount, :TotalSize, :TopicType
        
        def initialize(averagemsgsize=nil, consumercount=nil, lastconfirmedentry=nil, lastledgercreatedtimestamp=nil, msgratein=nil, msgrateout=nil, msgthroughputin=nil, msgthroughputout=nil, numberofentries=nil, partitions=nil, producercount=nil, totalsize=nil, topictype=nil)
          @AverageMsgSize = averagemsgsize
          @ConsumerCount = consumercount
          @LastConfirmedEntry = lastconfirmedentry
          @LastLedgerCreatedTimestamp = lastledgercreatedtimestamp
          @MsgRateIn = msgratein
          @MsgRateOut = msgrateout
          @MsgThroughputIn = msgthroughputin
          @MsgThroughputOut = msgthroughputout
          @NumberOfEntries = numberofentries
          @Partitions = partitions
          @ProducerCount = producercount
          @TotalSize = totalsize
          @TopicType = topictype
        end

        def deserialize(params)
          @AverageMsgSize = params['AverageMsgSize']
          @ConsumerCount = params['ConsumerCount']
          @LastConfirmedEntry = params['LastConfirmedEntry']
          @LastLedgerCreatedTimestamp = params['LastLedgerCreatedTimestamp']
          @MsgRateIn = params['MsgRateIn']
          @MsgRateOut = params['MsgRateOut']
          @MsgThroughputIn = params['MsgThroughputIn']
          @MsgThroughputOut = params['MsgThroughputOut']
          @NumberOfEntries = params['NumberOfEntries']
          @Partitions = params['Partitions']
          @ProducerCount = params['ProducerCount']
          @TotalSize = params['TotalSize']
          @TopicType = params['TopicType']
        end
      end

      # 生产者
      class Producer < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param CountConnect: 连接数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountConnect: Integer
        # @param ConnectionSets: 连接集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionSets: Array

        attr_accessor :EnvironmentId, :TopicName, :CountConnect, :ConnectionSets
        
        def initialize(environmentid=nil, topicname=nil, countconnect=nil, connectionsets=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @CountConnect = countconnect
          @ConnectionSets = connectionsets
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @CountConnect = params['CountConnect']
          unless params['ConnectionSets'].nil?
            @ConnectionSets = []
            params['ConnectionSets'].each do |i|
              connection_tmp = Connection.new
              connection_tmp.deserialize(i)
              @ConnectionSets << connection_tmp
            end
          end
        end
      end

      # PublishCmqMsg请求参数结构体
      class PublishCmqMsgRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名
        # @type TopicName: String
        # @param MsgContent: 消息内容
        # @type MsgContent: String
        # @param MsgTag: 消息标签
        # @type MsgTag: Array

        attr_accessor :TopicName, :MsgContent, :MsgTag
        
        def initialize(topicname=nil, msgcontent=nil, msgtag=nil)
          @TopicName = topicname
          @MsgContent = msgcontent
          @MsgTag = msgtag
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @MsgContent = params['MsgContent']
          @MsgTag = params['MsgTag']
        end
      end

      # PublishCmqMsg返回参数结构体
      class PublishCmqMsgResponse < TencentCloud::Common::AbstractModel
        # @param Result: true表示发送成功
        # @type Result: Boolean
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :MsgId, :RequestId
        
        def initialize(result=nil, msgid=nil, requestid=nil)
          @Result = result
          @MsgId = msgid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @MsgId = params['MsgId']
          @RequestId = params['RequestId']
        end
      end

      # ReceiveMessage请求参数结构体
      class ReceiveMessageRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 接收消息的topic的名字, 这里尽量需要使用topic的全路径，如果不指定，即：tenant/namespace/topic。默认使用的是：public/default
        # @type Topic: String
        # @param SubscriptionName: 订阅者的名字
        # @type SubscriptionName: String
        # @param ReceiverQueueSize: 默认值为1000，consumer接收的消息会首先存储到receiverQueueSize这个队列中，用作调优接收消息的速率
        # @type ReceiverQueueSize: Integer
        # @param SubInitialPosition: 默认值为：Latest。用作判定consumer初始接收消息的位置，可选参数为：Earliest, Latest
        # @type SubInitialPosition: String

        attr_accessor :Topic, :SubscriptionName, :ReceiverQueueSize, :SubInitialPosition
        
        def initialize(topic=nil, subscriptionname=nil, receiverqueuesize=nil, subinitialposition=nil)
          @Topic = topic
          @SubscriptionName = subscriptionname
          @ReceiverQueueSize = receiverqueuesize
          @SubInitialPosition = subinitialposition
        end

        def deserialize(params)
          @Topic = params['Topic']
          @SubscriptionName = params['SubscriptionName']
          @ReceiverQueueSize = params['ReceiverQueueSize']
          @SubInitialPosition = params['SubInitialPosition']
        end
      end

      # ReceiveMessage返回参数结构体
      class ReceiveMessageResponse < TencentCloud::Common::AbstractModel
        # @param MessageID: 用作标识消息的唯一主键
        # @type MessageID: String
        # @param MessagePayload: 接收消息的内容
        # @type MessagePayload: String
        # @param AckTopic: 提供给 Ack 接口，用来Ack哪一个topic中的消息
        # @type AckTopic: String
        # @param ErrorMsg: 返回的错误信息，如果为空，说明没有错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param SubName: 返回订阅者的名字，用来创建 ack consumer时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageID, :MessagePayload, :AckTopic, :ErrorMsg, :SubName, :RequestId
        
        def initialize(messageid=nil, messagepayload=nil, acktopic=nil, errormsg=nil, subname=nil, requestid=nil)
          @MessageID = messageid
          @MessagePayload = messagepayload
          @AckTopic = acktopic
          @ErrorMsg = errormsg
          @SubName = subname
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageID = params['MessageID']
          @MessagePayload = params['MessagePayload']
          @AckTopic = params['AckTopic']
          @ErrorMsg = params['ErrorMsg']
          @SubName = params['SubName']
          @RequestId = params['RequestId']
        end
      end

      # ResetMsgSubOffsetByTimestamp请求参数结构体
      class ResetMsgSubOffsetByTimestampRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param Subscription: 订阅者名称。
        # @type Subscription: String
        # @param ToTimestamp: 时间戳，精确到毫秒。
        # @type ToTimestamp: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :Subscription, :ToTimestamp, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, subscription=nil, totimestamp=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Subscription = subscription
          @ToTimestamp = totimestamp
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Subscription = params['Subscription']
          @ToTimestamp = params['ToTimestamp']
          @ClusterId = params['ClusterId']
        end
      end

      # ResetMsgSubOffsetByTimestamp返回参数结构体
      class ResetMsgSubOffsetByTimestampResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 消息保留策略
      class RetentionPolicy < TencentCloud::Common::AbstractModel
        # @param TimeInMinutes: 消息保留时长
        # @type TimeInMinutes: Integer
        # @param SizeInMB: 消息保留大小
        # @type SizeInMB: Integer

        attr_accessor :TimeInMinutes, :SizeInMB
        
        def initialize(timeinminutes=nil, sizeinmb=nil)
          @TimeInMinutes = timeinminutes
          @SizeInMB = sizeinmb
        end

        def deserialize(params)
          @TimeInMinutes = params['TimeInMinutes']
          @SizeInMB = params['SizeInMB']
        end
      end

      # RewindCmqQueue请求参数结构体
      class RewindCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String
        # @param StartConsumeTime: 设定该时间，则（Batch）receiveMessage接口，会按照生产消息的先后顺序消费该时间戳以后的消息。
        # @type StartConsumeTime: Integer

        attr_accessor :QueueName, :StartConsumeTime
        
        def initialize(queuename=nil, startconsumetime=nil)
          @QueueName = queuename
          @StartConsumeTime = startconsumetime
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @StartConsumeTime = params['StartConsumeTime']
        end
      end

      # RewindCmqQueue返回参数结构体
      class RewindCmqQueueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SendBatchMessages请求参数结构体
      class SendBatchMessagesRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 消息要发送的topic的名字, 这里尽量需要使用topic的全路径，即：tenant/namespace/topic。如果不指定，默认使用的是：public/default
        # @type Topic: String
        # @param Payload: 需要发送消息的内容
        # @type Payload: String
        # @param StringToken: String 类型的 token，可以不填，系统会自动获取
        # @type StringToken: String
        # @param ProducerName: producer 的名字，要求全局是唯一的，如果不设置，系统会自动生成
        # @type ProducerName: String
        # @param SendTimeout: 单位：s。消息发送的超时时间。默认值为：30s
        # @type SendTimeout: Integer
        # @param MaxPendingMessages: 内存中允许缓存的生产消息的最大数量，默认值：1000条
        # @type MaxPendingMessages: Integer
        # @param BatchingMaxMessages: 每一个batch中消息的最大数量，默认值：1000条/batch
        # @type BatchingMaxMessages: Integer
        # @param BatchingMaxPublishDelay: 每一个batch最大等待的时间，超过这个时间，不管是否达到指定的batch中消息的数量和大小，都会将该batch发送出去，默认：10ms
        # @type BatchingMaxPublishDelay: Integer
        # @param BatchingMaxBytes: 每一个batch中最大允许的消息的大小，默认：128KB
        # @type BatchingMaxBytes: Integer

        attr_accessor :Topic, :Payload, :StringToken, :ProducerName, :SendTimeout, :MaxPendingMessages, :BatchingMaxMessages, :BatchingMaxPublishDelay, :BatchingMaxBytes
        
        def initialize(topic=nil, payload=nil, stringtoken=nil, producername=nil, sendtimeout=nil, maxpendingmessages=nil, batchingmaxmessages=nil, batchingmaxpublishdelay=nil, batchingmaxbytes=nil)
          @Topic = topic
          @Payload = payload
          @StringToken = stringtoken
          @ProducerName = producername
          @SendTimeout = sendtimeout
          @MaxPendingMessages = maxpendingmessages
          @BatchingMaxMessages = batchingmaxmessages
          @BatchingMaxPublishDelay = batchingmaxpublishdelay
          @BatchingMaxBytes = batchingmaxbytes
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Payload = params['Payload']
          @StringToken = params['StringToken']
          @ProducerName = params['ProducerName']
          @SendTimeout = params['SendTimeout']
          @MaxPendingMessages = params['MaxPendingMessages']
          @BatchingMaxMessages = params['BatchingMaxMessages']
          @BatchingMaxPublishDelay = params['BatchingMaxPublishDelay']
          @BatchingMaxBytes = params['BatchingMaxBytes']
        end
      end

      # SendBatchMessages返回参数结构体
      class SendBatchMessagesResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 消息的唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: String
        # @param ErrorMsg: 错误消息，返回为 ""，代表没有错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :ErrorMsg, :RequestId
        
        def initialize(messageid=nil, errormsg=nil, requestid=nil)
          @MessageId = messageid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # SendCmqMsg请求参数结构体
      class SendCmqMsgRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名
        # @type QueueName: String
        # @param MsgContent: 消息内容
        # @type MsgContent: String
        # @param DelaySeconds: 延迟时间
        # @type DelaySeconds: Integer

        attr_accessor :QueueName, :MsgContent, :DelaySeconds
        
        def initialize(queuename=nil, msgcontent=nil, delayseconds=nil)
          @QueueName = queuename
          @MsgContent = msgcontent
          @DelaySeconds = delayseconds
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @MsgContent = params['MsgContent']
          @DelaySeconds = params['DelaySeconds']
        end
      end

      # SendCmqMsg返回参数结构体
      class SendCmqMsgResponse < TencentCloud::Common::AbstractModel
        # @param Result: true表示发送成功
        # @type Result: Boolean
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :MsgId, :RequestId
        
        def initialize(result=nil, msgid=nil, requestid=nil)
          @Result = result
          @MsgId = msgid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @MsgId = params['MsgId']
          @RequestId = params['RequestId']
        end
      end

      # SendMessages请求参数结构体
      class SendMessagesRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 消息要发送的topic的名字, 这里尽量需要使用topic的全路径，即：tenant/namespace/topic。如果不指定，默认使用的是：public/default
        # @type Topic: String
        # @param Payload: 要发送的消息的内容
        # @type Payload: String
        # @param StringToken: Token 是用来做鉴权使用的，可以不填，系统会自动获取
        # @type StringToken: String
        # @param ProducerName: 设置 producer 的名字，要求全局唯一，用户不配置，系统会随机生成
        # @type ProducerName: String
        # @param SendTimeout: 设置消息发送的超时时间，默认为30s
        # @type SendTimeout: Integer
        # @param MaxPendingMessages: 内存中缓存的最大的生产消息的数量，默认为1000条
        # @type MaxPendingMessages: Integer

        attr_accessor :Topic, :Payload, :StringToken, :ProducerName, :SendTimeout, :MaxPendingMessages
        
        def initialize(topic=nil, payload=nil, stringtoken=nil, producername=nil, sendtimeout=nil, maxpendingmessages=nil)
          @Topic = topic
          @Payload = payload
          @StringToken = stringtoken
          @ProducerName = producername
          @SendTimeout = sendtimeout
          @MaxPendingMessages = maxpendingmessages
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Payload = params['Payload']
          @StringToken = params['StringToken']
          @ProducerName = params['ProducerName']
          @SendTimeout = params['SendTimeout']
          @MaxPendingMessages = params['MaxPendingMessages']
        end
      end

      # SendMessages返回参数结构体
      class SendMessagesResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 消息的messageID, 是全局唯一的，用来标识消息的元数据信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: String
        # @param ErrorMsg: 返回的错误消息，如果返回为 “”，说明没有错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :ErrorMsg, :RequestId
        
        def initialize(messageid=nil, errormsg=nil, requestid=nil)
          @MessageId = messageid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # SendMsg请求参数结构体
      class SendMsgRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称，如果是分区topic需要指定具体分区，如果没有指定则默认发到0分区，例如：my_topic-partition-0。
        # @type TopicName: String
        # @param MsgContent: 消息内容，不能为空且大小不得大于5242880个byte。
        # @type MsgContent: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :MsgContent, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, msgcontent=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @MsgContent = msgcontent
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @MsgContent = params['MsgContent']
          @ClusterId = params['ClusterId']
        end
      end

      # SendMsg返回参数结构体
      class SendMsgResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 订阅者
      class Subscription < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param ConnectedSince: 消费者开始连接的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectedSince: String
        # @param ConsumerAddr: 消费者地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerAddr: String
        # @param ConsumerCount: 消费者数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerCount: String
        # @param ConsumerName: 消费者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerName: String
        # @param MsgBacklog: 堆积的消息数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgBacklog: String
        # @param MsgRateExpired: 于TTL，此订阅下没有被发送而是被丢弃的比例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateExpired: String
        # @param MsgRateOut: 消费者每秒分发消息的数量之和。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateOut: String
        # @param MsgThroughputOut: 消费者每秒消息的byte。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputOut: String
        # @param SubscriptionName: 订阅名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionName: String
        # @param ConsumerSets: 消费者集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerSets: Array
        # @param IsOnline: 是否在线。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOnline: Boolean
        # @param ConsumersScheduleSets: 消费进度集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumersScheduleSets: Array
        # @param Remark: 备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :TopicName, :EnvironmentId, :ConnectedSince, :ConsumerAddr, :ConsumerCount, :ConsumerName, :MsgBacklog, :MsgRateExpired, :MsgRateOut, :MsgThroughputOut, :SubscriptionName, :ConsumerSets, :IsOnline, :ConsumersScheduleSets, :Remark, :CreateTime, :UpdateTime
        
        def initialize(topicname=nil, environmentid=nil, connectedsince=nil, consumeraddr=nil, consumercount=nil, consumername=nil, msgbacklog=nil, msgrateexpired=nil, msgrateout=nil, msgthroughputout=nil, subscriptionname=nil, consumersets=nil, isonline=nil, consumersschedulesets=nil, remark=nil, createtime=nil, updatetime=nil)
          @TopicName = topicname
          @EnvironmentId = environmentid
          @ConnectedSince = connectedsince
          @ConsumerAddr = consumeraddr
          @ConsumerCount = consumercount
          @ConsumerName = consumername
          @MsgBacklog = msgbacklog
          @MsgRateExpired = msgrateexpired
          @MsgRateOut = msgrateout
          @MsgThroughputOut = msgthroughputout
          @SubscriptionName = subscriptionname
          @ConsumerSets = consumersets
          @IsOnline = isonline
          @ConsumersScheduleSets = consumersschedulesets
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @EnvironmentId = params['EnvironmentId']
          @ConnectedSince = params['ConnectedSince']
          @ConsumerAddr = params['ConsumerAddr']
          @ConsumerCount = params['ConsumerCount']
          @ConsumerName = params['ConsumerName']
          @MsgBacklog = params['MsgBacklog']
          @MsgRateExpired = params['MsgRateExpired']
          @MsgRateOut = params['MsgRateOut']
          @MsgThroughputOut = params['MsgThroughputOut']
          @SubscriptionName = params['SubscriptionName']
          unless params['ConsumerSets'].nil?
            @ConsumerSets = []
            params['ConsumerSets'].each do |i|
              consumer_tmp = Consumer.new
              consumer_tmp.deserialize(i)
              @ConsumerSets << consumer_tmp
            end
          end
          @IsOnline = params['IsOnline']
          unless params['ConsumersScheduleSets'].nil?
            @ConsumersScheduleSets = []
            params['ConsumersScheduleSets'].each do |i|
              consumersschedule_tmp = ConsumersSchedule.new
              consumersschedule_tmp.deserialize(i)
              @ConsumersScheduleSets << consumersschedule_tmp
            end
          end
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 订阅关系
      class SubscriptionTopic < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名称。
        # @type SubscriptionName: String

        attr_accessor :EnvironmentId, :TopicName, :SubscriptionName
        
        def initialize(environmentid=nil, topicname=nil, subscriptionname=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @SubscriptionName = subscriptionname
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
        end
      end

      # 标签的key/value的类型
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的key的值
        # @type TagKey: String
        # @param TagValue: 标签的Value的值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 主题实例
      class Topic < TencentCloud::Common::AbstractModel
        # @param AverageMsgSize: 最后一次间隔内发布消息的平均byte大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageMsgSize: String
        # @param ConsumerCount: 消费者数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerCount: String
        # @param LastConfirmedEntry: 被记录下来的消息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastConfirmedEntry: String
        # @param LastLedgerCreatedTimestamp: 最后一个ledger创建的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLedgerCreatedTimestamp: String
        # @param MsgRateIn: 本地和复制的发布者每秒发布消息的速率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateIn: String
        # @param MsgRateOut: 本地和复制的消费者每秒分发消息的数量之和。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateOut: String
        # @param MsgThroughputIn: 本地和复制的发布者每秒发布消息的byte。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputIn: String
        # @param MsgThroughputOut: 本地和复制的消费者每秒分发消息的byte。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputOut: String
        # @param NumberOfEntries: 被记录下来的消息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfEntries: String
        # @param Partitions: 分区数<=0：topic下无子分区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Integer
        # @param ProducerCount: 生产者数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerCount: String
        # @param TotalSize: 以byte计算的所有消息存储总量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: String
        # @param SubTopicSets: 分区topic里面的子分区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubTopicSets: Array
        # @param TopicType: topic类型描述：
        # 0：普通消息；
        # 1：全局顺序消息；
        # 2：局部顺序消息；
        # 3：重试队列；
        # 4：死信队列；
        # 5：事务消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicType: Integer
        # @param EnvironmentId: 环境（命名空间）名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param Remark: 说明，128个字符以内。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ProducerLimit: 生产者上限。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerLimit: String
        # @param ConsumerLimit: 消费者上限。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLimit: String

        attr_accessor :AverageMsgSize, :ConsumerCount, :LastConfirmedEntry, :LastLedgerCreatedTimestamp, :MsgRateIn, :MsgRateOut, :MsgThroughputIn, :MsgThroughputOut, :NumberOfEntries, :Partitions, :ProducerCount, :TotalSize, :SubTopicSets, :TopicType, :EnvironmentId, :TopicName, :Remark, :CreateTime, :UpdateTime, :ProducerLimit, :ConsumerLimit
        
        def initialize(averagemsgsize=nil, consumercount=nil, lastconfirmedentry=nil, lastledgercreatedtimestamp=nil, msgratein=nil, msgrateout=nil, msgthroughputin=nil, msgthroughputout=nil, numberofentries=nil, partitions=nil, producercount=nil, totalsize=nil, subtopicsets=nil, topictype=nil, environmentid=nil, topicname=nil, remark=nil, createtime=nil, updatetime=nil, producerlimit=nil, consumerlimit=nil)
          @AverageMsgSize = averagemsgsize
          @ConsumerCount = consumercount
          @LastConfirmedEntry = lastconfirmedentry
          @LastLedgerCreatedTimestamp = lastledgercreatedtimestamp
          @MsgRateIn = msgratein
          @MsgRateOut = msgrateout
          @MsgThroughputIn = msgthroughputin
          @MsgThroughputOut = msgthroughputout
          @NumberOfEntries = numberofentries
          @Partitions = partitions
          @ProducerCount = producercount
          @TotalSize = totalsize
          @SubTopicSets = subtopicsets
          @TopicType = topictype
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ProducerLimit = producerlimit
          @ConsumerLimit = consumerlimit
        end

        def deserialize(params)
          @AverageMsgSize = params['AverageMsgSize']
          @ConsumerCount = params['ConsumerCount']
          @LastConfirmedEntry = params['LastConfirmedEntry']
          @LastLedgerCreatedTimestamp = params['LastLedgerCreatedTimestamp']
          @MsgRateIn = params['MsgRateIn']
          @MsgRateOut = params['MsgRateOut']
          @MsgThroughputIn = params['MsgThroughputIn']
          @MsgThroughputOut = params['MsgThroughputOut']
          @NumberOfEntries = params['NumberOfEntries']
          @Partitions = params['Partitions']
          @ProducerCount = params['ProducerCount']
          @TotalSize = params['TotalSize']
          unless params['SubTopicSets'].nil?
            @SubTopicSets = []
            params['SubTopicSets'].each do |i|
              partitionstopic_tmp = PartitionsTopic.new
              partitionstopic_tmp.deserialize(i)
              @SubTopicSets << partitionstopic_tmp
            end
          end
          @TopicType = params['TopicType']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ProducerLimit = params['ProducerLimit']
          @ConsumerLimit = params['ConsumerLimit']
        end
      end

      # 主题关键信息
      class TopicRecord < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String

        attr_accessor :EnvironmentId, :TopicName
        
        def initialize(environmentid=nil, topicname=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
        end
      end

      # UnbindCmqDeadLetter请求参数结构体
      class UnbindCmqDeadLetterRequest < TencentCloud::Common::AbstractModel
        # @param SourceQueueName: 死信策略源队列名称，调用本接口会清空该队列的死信队列策略。
        # @type SourceQueueName: String

        attr_accessor :SourceQueueName
        
        def initialize(sourcequeuename=nil)
          @SourceQueueName = sourcequeuename
        end

        def deserialize(params)
          @SourceQueueName = params['SourceQueueName']
        end
      end

      # UnbindCmqDeadLetter返回参数结构体
      class UnbindCmqDeadLetterResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # vcp绑定记录
      class VpcBindRecord < TencentCloud::Common::AbstractModel
        # @param UniqueVpcId: 租户Vpc Id
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 租户Vpc子网Id
        # @type UniqueSubnetId: String
        # @param RouterId: 路由Id
        # @type RouterId: String
        # @param Ip: Vpc的Id
        # @type Ip: String
        # @param Port: Vpc的Port
        # @type Port: Integer
        # @param Remark: 说明，128个字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :UniqueVpcId, :UniqueSubnetId, :RouterId, :Ip, :Port, :Remark
        
        def initialize(uniquevpcid=nil, uniquesubnetid=nil, routerid=nil, ip=nil, port=nil, remark=nil)
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @RouterId = routerid
          @Ip = ip
          @Port = port
          @Remark = remark
        end

        def deserialize(params)
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @RouterId = params['RouterId']
          @Ip = params['Ip']
          @Port = params['Port']
          @Remark = params['Remark']
        end
      end

    end
  end
end

