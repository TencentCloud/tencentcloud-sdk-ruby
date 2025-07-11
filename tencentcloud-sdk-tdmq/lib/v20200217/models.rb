# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
      # AMQP集群配置
      class AMQPClusterConfig < TencentCloud::Common::AbstractModel
        # @param MaxTpsPerVHost: 单Vhost TPS上限
        # @type MaxTpsPerVHost: Integer
        # @param MaxConnNumPerVHost: 单Vhost客户端连接数上限
        # @type MaxConnNumPerVHost: Integer
        # @param MaxVHostNum: 最大Vhost数量
        # @type MaxVHostNum: Integer
        # @param MaxExchangeNum: 最大exchange数量
        # @type MaxExchangeNum: Integer
        # @param MaxQueueNum: 最大Queue数量
        # @type MaxQueueNum: Integer
        # @param MaxRetentionTime: 消息最大保留时间，以毫秒为单位
        # @type MaxRetentionTime: Integer
        # @param UsedVHostNum: 已使用Vhost数量
        # @type UsedVHostNum: Integer
        # @param UsedExchangeNum: 已使用exchange数量
        # @type UsedExchangeNum: Integer
        # @param UsedQueueNum: 已使用queue数量
        # @type UsedQueueNum: Integer

        attr_accessor :MaxTpsPerVHost, :MaxConnNumPerVHost, :MaxVHostNum, :MaxExchangeNum, :MaxQueueNum, :MaxRetentionTime, :UsedVHostNum, :UsedExchangeNum, :UsedQueueNum

        def initialize(maxtpspervhost=nil, maxconnnumpervhost=nil, maxvhostnum=nil, maxexchangenum=nil, maxqueuenum=nil, maxretentiontime=nil, usedvhostnum=nil, usedexchangenum=nil, usedqueuenum=nil)
          @MaxTpsPerVHost = maxtpspervhost
          @MaxConnNumPerVHost = maxconnnumpervhost
          @MaxVHostNum = maxvhostnum
          @MaxExchangeNum = maxexchangenum
          @MaxQueueNum = maxqueuenum
          @MaxRetentionTime = maxretentiontime
          @UsedVHostNum = usedvhostnum
          @UsedExchangeNum = usedexchangenum
          @UsedQueueNum = usedqueuenum
        end

        def deserialize(params)
          @MaxTpsPerVHost = params['MaxTpsPerVHost']
          @MaxConnNumPerVHost = params['MaxConnNumPerVHost']
          @MaxVHostNum = params['MaxVHostNum']
          @MaxExchangeNum = params['MaxExchangeNum']
          @MaxQueueNum = params['MaxQueueNum']
          @MaxRetentionTime = params['MaxRetentionTime']
          @UsedVHostNum = params['UsedVHostNum']
          @UsedExchangeNum = params['UsedExchangeNum']
          @UsedQueueNum = params['UsedQueueNum']
        end
      end

      # 租户AMQP集群详细信息
      class AMQPClusterDetail < TencentCloud::Common::AbstractModel
        # @param Info: 集群基本信息
        # @type Info: :class:`Tencentcloud::Tdmq.v20200217.models.AMQPClusterInfo`
        # @param Config: 集群配置信息
        # @type Config: :class:`Tencentcloud::Tdmq.v20200217.models.AMQPClusterConfig`
        # @param Tags: 标签
        # @type Tags: Array
        # @param Status: 集群状态，0:创建中，1:正常，2:销毁中，3:已删除，4: 隔离中，5:创建失败，6: 删除失败
        # @type Status: Integer

        attr_accessor :Info, :Config, :Tags, :Status

        def initialize(info=nil, config=nil, tags=nil, status=nil)
          @Info = info
          @Config = config
          @Tags = tags
          @Status = status
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = AMQPClusterInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['Config'].nil?
            @Config = AMQPClusterConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # AMQP集群基本信息
      class AMQPClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域信息
        # @type Region: String
        # @param CreateTime: 创建时间，毫秒为单位
        # @type CreateTime: Integer
        # @param Remark: 集群说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PublicEndPoint: 公网接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicEndPoint: String
        # @param VpcEndPoint: VPC接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcEndPoint: String

        attr_accessor :ClusterId, :ClusterName, :Region, :CreateTime, :Remark, :PublicEndPoint, :VpcEndPoint

        def initialize(clusterid=nil, clustername=nil, region=nil, createtime=nil, remark=nil, publicendpoint=nil, vpcendpoint=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @CreateTime = createtime
          @Remark = remark
          @PublicEndPoint = publicendpoint
          @VpcEndPoint = vpcendpoint
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
          @PublicEndPoint = params['PublicEndPoint']
          @VpcEndPoint = params['VpcEndPoint']
        end
      end

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
        # @param ErrorMsg: 如果为""，则说明没有错误返回，否则返回具体的错误信息。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # Pulsar集群TLS证书信息
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param CertificateId: SSL证书管理中的id
        # @type CertificateId: String
        # @param ExpireTime: 证书到期时间
        # @type ExpireTime: String
        # @param DomainName: 证书绑定的域名
        # @type DomainName: String
        # @param Status: 证书状态：0 已签发
        # 1 即将过期
        # 2 未启用
        # 3 已过期
        # 4 不可用
        # @type Status: String
        # @param Type: 证书类型：0：根证书，1：服务端证书
        # @type Type: String
        # @param Origin: TencentCloud：SSL证书；Default：TDMQ官方默认证书
        # @type Origin: String
        # @param ModifyTime: 证书添加/更新时间
        # @type ModifyTime: String

        attr_accessor :CertificateId, :ExpireTime, :DomainName, :Status, :Type, :Origin, :ModifyTime

        def initialize(certificateid=nil, expiretime=nil, domainname=nil, status=nil, type=nil, origin=nil, modifytime=nil)
          @CertificateId = certificateid
          @ExpireTime = expiretime
          @DomainName = domainname
          @Status = status
          @Type = type
          @Origin = origin
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ExpireTime = params['ExpireTime']
          @DomainName = params['DomainName']
          @Status = params['Status']
          @Type = params['Type']
          @Origin = params['Origin']
          @ModifyTime = params['ModifyTime']
        end
      end

      # ClearCmqQueue请求参数结构体
      class ClearCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一账号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一账号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 客户端订阅详情，可用于辅助判断哪些客户端订阅关系不一致
      class ClientSubscriptionInfo < TencentCloud::Common::AbstractModel
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param ClientAddr: 客户端IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientAddr: String
        # @param Topic: 订阅主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param SubString: 订阅表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubString: String
        # @param ExpressionType: 订阅方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpressionType: String

        attr_accessor :ClientId, :ClientAddr, :Topic, :SubString, :ExpressionType

        def initialize(clientid=nil, clientaddr=nil, topic=nil, substring=nil, expressiontype=nil)
          @ClientId = clientid
          @ClientAddr = clientaddr
          @Topic = topic
          @SubString = substring
          @ExpressionType = expressiontype
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @ClientAddr = params['ClientAddr']
          @Topic = params['Topic']
          @SubString = params['SubString']
          @ExpressionType = params['ExpressionType']
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
        # @param Status: 集群状态，0:创建中，1:正常，2:销毁中，3:已删除，4: 隔离中，5:创建失败，6: 删除失败
        # @type Status: Integer
        # @param MaxNamespaceNum: 最大命名空间数量
        # @type MaxNamespaceNum: Integer
        # @param MaxTopicNum: 最大Topic数量
        # @type MaxTopicNum: Integer
        # @param MaxQps: 最大QPS
        # @type MaxQps: Integer
        # @param MessageRetentionTime: 最大消息保留时间，秒为单位
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
        # @param UsedStorageBudget: 已使用存储限制，MB为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedStorageBudget: Integer
        # @param MaxPublishRateInMessages: 最大生产消息速率，以条数为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPublishRateInMessages: Integer
        # @param MaxDispatchRateInMessages: 最大推送消息速率，以条数为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDispatchRateInMessages: Integer
        # @param MaxPublishRateInBytes: 最大生产消息速率，以字节为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPublishRateInBytes: Integer
        # @param MaxDispatchRateInBytes: 最大推送消息速率，以字节为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDispatchRateInBytes: Integer
        # @param TopicNum: 已创建主题数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNum: Integer
        # @param MaxMessageDelayInSeconds: 最长消息延时，以秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMessageDelayInSeconds: Integer
        # @param PublicAccessEnabled: 是否开启公网访问，不填时默认开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccessEnabled: Boolean
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param PayMode: 计费模式：
        # 0: 按量计费
        # 1: 包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param UpgradeProInstance: 是否支持升级专业版实例
        # @type UpgradeProInstance: Boolean

        attr_accessor :ClusterId, :ClusterName, :Remark, :EndPointNum, :CreateTime, :Healthy, :HealthyInfo, :Status, :MaxNamespaceNum, :MaxTopicNum, :MaxQps, :MessageRetentionTime, :MaxStorageCapacity, :Version, :PublicEndPoint, :VpcEndPoint, :NamespaceNum, :UsedStorageBudget, :MaxPublishRateInMessages, :MaxDispatchRateInMessages, :MaxPublishRateInBytes, :MaxDispatchRateInBytes, :TopicNum, :MaxMessageDelayInSeconds, :PublicAccessEnabled, :Tags, :PayMode, :ProjectId, :ProjectName, :UpgradeProInstance

        def initialize(clusterid=nil, clustername=nil, remark=nil, endpointnum=nil, createtime=nil, healthy=nil, healthyinfo=nil, status=nil, maxnamespacenum=nil, maxtopicnum=nil, maxqps=nil, messageretentiontime=nil, maxstoragecapacity=nil, version=nil, publicendpoint=nil, vpcendpoint=nil, namespacenum=nil, usedstoragebudget=nil, maxpublishrateinmessages=nil, maxdispatchrateinmessages=nil, maxpublishrateinbytes=nil, maxdispatchrateinbytes=nil, topicnum=nil, maxmessagedelayinseconds=nil, publicaccessenabled=nil, tags=nil, paymode=nil, projectid=nil, projectname=nil, upgradeproinstance=nil)
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
          @UsedStorageBudget = usedstoragebudget
          @MaxPublishRateInMessages = maxpublishrateinmessages
          @MaxDispatchRateInMessages = maxdispatchrateinmessages
          @MaxPublishRateInBytes = maxpublishrateinbytes
          @MaxDispatchRateInBytes = maxdispatchrateinbytes
          @TopicNum = topicnum
          @MaxMessageDelayInSeconds = maxmessagedelayinseconds
          @PublicAccessEnabled = publicaccessenabled
          @Tags = tags
          @PayMode = paymode
          @ProjectId = projectid
          @ProjectName = projectname
          @UpgradeProInstance = upgradeproinstance
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
          @UsedStorageBudget = params['UsedStorageBudget']
          @MaxPublishRateInMessages = params['MaxPublishRateInMessages']
          @MaxDispatchRateInMessages = params['MaxDispatchRateInMessages']
          @MaxPublishRateInBytes = params['MaxPublishRateInBytes']
          @MaxDispatchRateInBytes = params['MaxDispatchRateInBytes']
          @TopicNum = params['TopicNum']
          @MaxMessageDelayInSeconds = params['MaxMessageDelayInSeconds']
          @PublicAccessEnabled = params['PublicAccessEnabled']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @PayMode = params['PayMode']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @UpgradeProInstance = params['UpgradeProInstance']
        end
      end

      # cmq DeadLetterPolicy
      class CmqDeadLetterPolicy < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueue: 死信队列。
        # @type DeadLetterQueue: String
        # @param Policy: 死信队列策略。0:最大接收次数;1:最大未消费时间
        # @type Policy: Integer
        # @param MaxTimeToLive: 最大未消费过期时间。Policy为1时必选。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds。
        # @type MaxTimeToLive: Integer
        # @param MaxReceiveCount: 最大接收次数。Policy为0时必选，范围在1到1000。
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
        # @type Qps: Integer
        # @param Bps: 带宽限制。
        # @type Bps: Integer
        # @param MaxDelaySeconds: 飞行消息最大保留时间，需要小于消息保留周期。
        # @type MaxDelaySeconds: Integer
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围0 - 30秒，默认值0。
        # @type PollingWaitSeconds: Integer
        # @param MsgRetentionSeconds: 消息保留周期。取值范围60-1296000秒（1min-15天），默认值345600秒（4 天）。
        # @type MsgRetentionSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围1 - 43200秒（即12小时内），默认值30。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576 Byte（即1K - 1024K），默认值65536。
        # @type MaxMsgSize: Integer
        # @param RewindSeconds: 回溯队列的消息回溯时间最大值，取值范围0 - 43200秒，0表示不开启消息回溯。
        # @type RewindSeconds: Integer
        # @param CreateTime: 队列的创建时间。返回 Unix 时间戳，精确到毫秒。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改队列属性的时间。返回 Unix 时间戳，精确到毫秒。
        # @type LastModifyTime: Integer
        # @param ActiveMsgNum: 在队列中处于 Active 状态（不处于被消费状态）的消息总数，为近似值。
        # @type ActiveMsgNum: Integer
        # @param InactiveMsgNum: 在队列中处于 Inactive 状态（正处于被消费状态）的消息总数，为近似值。
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
        # @type TenantId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Status: 集群状态，0:创建中，1:正常，2:销毁中，3:已删除，4: 隔离中，5:创建失败，6: 删除失败
        # @type Status: Integer
        # @param MaxUnackedMsgNum: 最大未确认消息数量
        # @type MaxUnackedMsgNum: Integer
        # @param MaxMsgBacklogSize: 最大消息堆积大小（字节）
        # @type MaxMsgBacklogSize: Integer
        # @param RetentionSizeInMB: 队列可回溯存储空间，取值范围1024MB - 10240MB，0表示不开启
        # @type RetentionSizeInMB: Integer

        attr_accessor :QueueId, :QueueName, :Qps, :Bps, :MaxDelaySeconds, :MaxMsgHeapNum, :PollingWaitSeconds, :MsgRetentionSeconds, :VisibilityTimeout, :MaxMsgSize, :RewindSeconds, :CreateTime, :LastModifyTime, :ActiveMsgNum, :InactiveMsgNum, :DelayMsgNum, :RewindMsgNum, :MinMsgTime, :Transaction, :DeadLetterSource, :DeadLetterPolicy, :TransactionPolicy, :CreateUin, :Tags, :Trace, :TenantId, :NamespaceName, :Status, :MaxUnackedMsgNum, :MaxMsgBacklogSize, :RetentionSizeInMB

        def initialize(queueid=nil, queuename=nil, qps=nil, bps=nil, maxdelayseconds=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, msgretentionseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, rewindseconds=nil, createtime=nil, lastmodifytime=nil, activemsgnum=nil, inactivemsgnum=nil, delaymsgnum=nil, rewindmsgnum=nil, minmsgtime=nil, transaction=nil, deadlettersource=nil, deadletterpolicy=nil, transactionpolicy=nil, createuin=nil, tags=nil, trace=nil, tenantid=nil, namespacename=nil, status=nil, maxunackedmsgnum=nil, maxmsgbacklogsize=nil, retentionsizeinmb=nil)
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
          @Status = status
          @MaxUnackedMsgNum = maxunackedmsgnum
          @MaxMsgBacklogSize = maxmsgbacklogsize
          @RetentionSizeInMB = retentionsizeinmb
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
          @Status = params['Status']
          @MaxUnackedMsgNum = params['MaxUnackedMsgNum']
          @MaxMsgBacklogSize = params['MaxMsgBacklogSize']
          @RetentionSizeInMB = params['RetentionSizeInMB']
        end
      end

      # cmq订阅返回参数
      class CmqSubscription < TencentCloud::Common::AbstractModel
        # @param SubscriptionName: 订阅名字，在单个地域同一账号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type SubscriptionName: String
        # @param SubscriptionId: 订阅 ID。订阅 ID 在拉取监控数据时会用到。
        # @type SubscriptionId: String
        # @param TopicOwner: 订阅拥有者的 APPID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicOwner: Integer
        # @param MsgCount: 该订阅待投递的消息数。
        # @type MsgCount: Integer
        # @param LastModifyTime: 最后一次修改订阅属性的时间。返回 Unix 时间戳，精确到毫秒。
        # @type LastModifyTime: Integer
        # @param CreateTime: 订阅的创建时间。返回 Unix 时间戳，精确到毫秒。
        # @type CreateTime: Integer
        # @param BindingKey: 表示订阅接收消息的过滤策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingKey: Array
        # @param Endpoint: 接收通知的 endpoint，根据协议 protocol 区分：对于 HTTP，endpoint 必须以http://开头，host 可以是域名或 IP；对于 queue，则填 queueName。
        # @type Endpoint: String
        # @param FilterTags: 描述用户创建订阅时选择的过滤策略：
        # filterType = 1表示用户使用 filterTag 标签过滤
        # filterType = 2表示用户使用 bindingKey 过滤。
        # @type FilterTags: Array
        # @param Protocol: 订阅的协议，目前支持两种协议：HTTP、queue。使用 HTTP 协议，用户需自己搭建接受消息的 Web Server。使用 queue，消息会自动推送到 CMQ queue，用户可以并发地拉取消息。
        # @type Protocol: String
        # @param NotifyStrategy: 向 endpoint 推送消息出现错误时，CMQ 推送服务器的重试策略。取值有：
        # （1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息；
        # （2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始 1s，后面是 2s，4s，8s...由于 Topic 消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是 EXPONENTIAL_DECAY_RETRY。
        # @type NotifyStrategy: String
        # @param NotifyContentFormat: 推送内容的格式。取值：（1）JSON；（2）SIMPLIFIED，即 raw 格式。如果 protocol 是 queue，则取值必须为 SIMPLIFIED。如果 protocol 是 HTTP，两个值均可以，默认值是 JSON。
        # @type NotifyContentFormat: String
        # @param TopicName: 订阅所属的主题名称
        # @type TopicName: String

        attr_accessor :SubscriptionName, :SubscriptionId, :TopicOwner, :MsgCount, :LastModifyTime, :CreateTime, :BindingKey, :Endpoint, :FilterTags, :Protocol, :NotifyStrategy, :NotifyContentFormat, :TopicName

        def initialize(subscriptionname=nil, subscriptionid=nil, topicowner=nil, msgcount=nil, lastmodifytime=nil, createtime=nil, bindingkey=nil, endpoint=nil, filtertags=nil, protocol=nil, notifystrategy=nil, notifycontentformat=nil, topicname=nil)
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
          @TopicName = topicname
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
          @TopicName = params['TopicName']
        end
      end

      # cmq topic返回信息展示字段
      class CmqTopic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题的 ID。
        # @type TopicId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param MsgRetentionSeconds: 消息在主题中最长存活时间，从发送到该主题开始经过此参数指定的时间后，不论消息是否被成功推送给用户都将被删除，单位为秒。固定为一天（86400秒），该属性不能修改。
        # @type MsgRetentionSeconds: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576Byte（即1 - 1024K），默认值为1048576。
        # @type MaxMsgSize: Integer
        # @param Qps: 每秒钟发布消息的条数。
        # @type Qps: Integer
        # @param FilterType: 描述用户创建订阅时选择的过滤策略：
        # FilterType = 1表示用户使用 FilterTag 标签过滤;
        # FilterType = 2表示用户使用 BindingKey 过滤。
        # @type FilterType: Integer
        # @param CreateTime: 主题的创建时间。返回 Unix 时间戳，精确到毫秒。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改主题属性的时间。返回 Unix 时间戳，精确到毫秒。
        # @type LastModifyTime: Integer
        # @param MsgCount: 当前该主题中消息数目（消息堆积数）。
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
        # @type TenantId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Status: 集群状态，0:创建中，1:正常，2:销毁中，3:已删除，4: 隔离中，5:创建失败，6: 删除失败
        # @type Status: Integer
        # @param BrokerType: 0表示pulsar，1表示rocketmq
        # @type BrokerType: Integer
        # @param SubscriptionCount: 订阅数量
        # @type SubscriptionCount: Integer

        attr_accessor :TopicId, :TopicName, :MsgRetentionSeconds, :MaxMsgSize, :Qps, :FilterType, :CreateTime, :LastModifyTime, :MsgCount, :CreateUin, :Tags, :Trace, :TenantId, :NamespaceName, :Status, :BrokerType, :SubscriptionCount

        def initialize(topicid=nil, topicname=nil, msgretentionseconds=nil, maxmsgsize=nil, qps=nil, filtertype=nil, createtime=nil, lastmodifytime=nil, msgcount=nil, createuin=nil, tags=nil, trace=nil, tenantid=nil, namespacename=nil, status=nil, brokertype=nil, subscriptioncount=nil)
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
          @Status = status
          @BrokerType = brokertype
          @SubscriptionCount = subscriptioncount
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
          @Status = params['Status']
          @BrokerType = params['BrokerType']
          @SubscriptionCount = params['SubscriptionCount']
        end
      end

      # cmq TransactionPolicy
      class CmqTransactionPolicy < TencentCloud::Common::AbstractModel
        # @param FirstQueryInterval: 第一次回查时间。
        # @type FirstQueryInterval: Integer
        # @param MaxQueryCount: 最大查询次数。
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

      # 消费者
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
        # @param Partition: 消费者连接的主题分区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: Integer

        attr_accessor :ConnectedSince, :ConsumerAddr, :ConsumerName, :ClientVersion, :Partition

        def initialize(connectedsince=nil, consumeraddr=nil, consumername=nil, clientversion=nil, partition=nil)
          @ConnectedSince = connectedsince
          @ConsumerAddr = consumeraddr
          @ConsumerName = consumername
          @ClientVersion = clientversion
          @Partition = partition
        end

        def deserialize(params)
          @ConnectedSince = params['ConnectedSince']
          @ConsumerAddr = params['ConsumerAddr']
          @ConsumerName = params['ConsumerName']
          @ClientVersion = params['ClientVersion']
          @Partition = params['Partition']
        end
      end

      # 消费日志
      class ConsumerLog < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ConsumerGroup: 消费组。
        # @type ConsumerGroup: String
        # @param ConsumerName: 消费者名称。
        # @type ConsumerName: String
        # @param ConsumeTime: 消费时间。
        # @type ConsumeTime: String
        # @param ConsumerAddr: 消费者客户端地址。
        # @type ConsumerAddr: String
        # @param ConsumeUseTime: 消费耗时（毫秒）。
        # @type ConsumeUseTime: Integer
        # @param Status: 消费状态。
        # @type Status: String

        attr_accessor :MsgId, :ConsumerGroup, :ConsumerName, :ConsumeTime, :ConsumerAddr, :ConsumeUseTime, :Status

        def initialize(msgid=nil, consumergroup=nil, consumername=nil, consumetime=nil, consumeraddr=nil, consumeusetime=nil, status=nil)
          @MsgId = msgid
          @ConsumerGroup = consumergroup
          @ConsumerName = consumername
          @ConsumeTime = consumetime
          @ConsumerAddr = consumeraddr
          @ConsumeUseTime = consumeusetime
          @Status = status
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @ConsumerGroup = params['ConsumerGroup']
          @ConsumerName = params['ConsumerName']
          @ConsumeTime = params['ConsumeTime']
          @ConsumerAddr = params['ConsumerAddr']
          @ConsumeUseTime = params['ConsumeUseTime']
          @Status = params['Status']
        end
      end

      # 消费信息
      class ConsumerLogs < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ConsumerLogSets: 消费日志。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLogSets: Array

        attr_accessor :TotalCount, :ConsumerLogSets

        def initialize(totalcount=nil, consumerlogsets=nil)
          @TotalCount = totalcount
          @ConsumerLogSets = consumerlogsets
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConsumerLogSets'].nil?
            @ConsumerLogSets = []
            params['ConsumerLogSets'].each do |i|
              consumerlog_tmp = ConsumerLog.new
              consumerlog_tmp.deserialize(i)
              @ConsumerLogSets << consumerlog_tmp
            end
          end
        end
      end

      # 消费详情
      class ConsumerStats < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param BrokerName: 所属Broker
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerName: String
        # @param QueueId: 队列编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueId: Integer
        # @param ConsumerClientId: 消费者ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerClientId: String
        # @param ConsumerOffset: 消费位点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerOffset: Integer
        # @param BrokerOffset: 服务端位点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerOffset: Integer
        # @param DiffTotal: 消息堆积条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiffTotal: Integer
        # @param LastTimestamp: 最近消费时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTimestamp: Integer

        attr_accessor :TopicName, :BrokerName, :QueueId, :ConsumerClientId, :ConsumerOffset, :BrokerOffset, :DiffTotal, :LastTimestamp

        def initialize(topicname=nil, brokername=nil, queueid=nil, consumerclientid=nil, consumeroffset=nil, brokeroffset=nil, difftotal=nil, lasttimestamp=nil)
          @TopicName = topicname
          @BrokerName = brokername
          @QueueId = queueid
          @ConsumerClientId = consumerclientid
          @ConsumerOffset = consumeroffset
          @BrokerOffset = brokeroffset
          @DiffTotal = difftotal
          @LastTimestamp = lasttimestamp
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @BrokerName = params['BrokerName']
          @QueueId = params['QueueId']
          @ConsumerClientId = params['ConsumerClientId']
          @ConsumerOffset = params['ConsumerOffset']
          @BrokerOffset = params['BrokerOffset']
          @DiffTotal = params['DiffTotal']
          @LastTimestamp = params['LastTimestamp']
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
        # @param ClusterName: 集群名称，不支持中字以及除了短线和下划线外的特殊字符且不超过64个字符。
        # @type ClusterName: String
        # @param BindClusterId: 用户专享物理集群ID，如果不传，则默认在公共集群上创建用户集群资源。
        # @type BindClusterId: Integer
        # @param Remark: 说明，128个字符以内。
        # @type Remark: String
        # @param Tags: 集群的标签列表(已废弃)
        # @type Tags: Array
        # @param PublicAccessEnabled: 是否开启公网访问，不填时默认开启
        # @type PublicAccessEnabled: Boolean

        attr_accessor :ClusterName, :BindClusterId, :Remark, :Tags, :PublicAccessEnabled

        def initialize(clustername=nil, bindclusterid=nil, remark=nil, tags=nil, publicaccessenabled=nil)
          @ClusterName = clustername
          @BindClusterId = bindclusterid
          @Remark = remark
          @Tags = tags
          @PublicAccessEnabled = publicaccessenabled
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
          @PublicAccessEnabled = params['PublicAccessEnabled']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param QueueName: 队列名字，在单个地域同一账号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        # @type PollingWaitSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围 1024-1048576 Byte（即1-1024K），默认值 1048576。
        # @type MaxMsgSize: Integer
        # @param MsgRetentionSeconds: 消息最长未确认时间。取值范围 30-43200 秒（30秒~12小时），默认值 3600 (1 小时)。
        # @type MsgRetentionSeconds: Integer
        # @param RewindSeconds: 队列是否开启回溯消息能力，该参数取值范围0-1296000，0表示不开启。
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
        # @param Tags: 标签数组
        # @type Tags: Array
        # @param RetentionSizeInMB: 队列可回溯存储空间：若开启消息回溯，取值范围：10240MB - 512000MB，若不开启消息回溯，取值：0
        # @type RetentionSizeInMB: Integer

        attr_accessor :QueueName, :MaxMsgHeapNum, :PollingWaitSeconds, :VisibilityTimeout, :MaxMsgSize, :MsgRetentionSeconds, :RewindSeconds, :Transaction, :FirstQueryInterval, :MaxQueryCount, :DeadLetterQueueName, :Policy, :MaxReceiveCount, :MaxTimeToLive, :Trace, :Tags, :RetentionSizeInMB

        def initialize(queuename=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, msgretentionseconds=nil, rewindseconds=nil, transaction=nil, firstqueryinterval=nil, maxquerycount=nil, deadletterqueuename=nil, policy=nil, maxreceivecount=nil, maxtimetolive=nil, trace=nil, tags=nil, retentionsizeinmb=nil)
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
          @Tags = tags
          @RetentionSizeInMB = retentionsizeinmb
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RetentionSizeInMB = params['RetentionSizeInMB']
        end
      end

      # CreateCmqQueue返回参数结构体
      class CreateCmqQueueResponse < TencentCloud::Common::AbstractModel
        # @param QueueId: 创建成功的queueId
        # @type QueueId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一账号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param MaxMsgSize: 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        # @type MaxMsgSize: Integer
        # @param FilterType: 用于指定主题的消息匹配策略。1：表示标签匹配策略；2：表示路由匹配策略，默认值为标签匹配策略。
        # @type FilterType: Integer
        # @param MsgRetentionSeconds: 消息保存时间。取值范围60 - 86400 s（即1分钟 - 1天），默认值86400。
        # @type MsgRetentionSeconds: Integer
        # @param Trace: 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        # @type Trace: Boolean
        # @param Tags: 标签数组
        # @type Tags: Array

        attr_accessor :TopicName, :MaxMsgSize, :FilterType, :MsgRetentionSeconds, :Trace, :Tags

        def initialize(topicname=nil, maxmsgsize=nil, filtertype=nil, msgretentionseconds=nil, trace=nil, tags=nil)
          @TopicName = topicname
          @MaxMsgSize = maxmsgsize
          @FilterType = filtertype
          @MsgRetentionSeconds = msgretentionseconds
          @Trace = trace
          @Tags = tags
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @MaxMsgSize = params['MaxMsgSize']
          @FilterType = params['FilterType']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @Trace = params['Trace']
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

      # CreateCmqTopic返回参数结构体
      class CreateCmqTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题id
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param MsgTTL: 未消费消息过期时间，单位：秒，取值范围：60秒~15天。
        # @type MsgTTL: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Remark: 说明，128个字符以内。
        # @type Remark: String
        # @param RetentionPolicy: 消息保留策略
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`
        # @param AutoSubscriptionCreation: 是否开启自动创建订阅
        # @type AutoSubscriptionCreation: Boolean

        attr_accessor :EnvironmentId, :MsgTTL, :ClusterId, :Remark, :RetentionPolicy, :AutoSubscriptionCreation

        def initialize(environmentid=nil, msgttl=nil, clusterid=nil, remark=nil, retentionpolicy=nil, autosubscriptioncreation=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @ClusterId = clusterid
          @Remark = remark
          @RetentionPolicy = retentionpolicy
          @AutoSubscriptionCreation = autosubscriptioncreation
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          unless params['RetentionPolicy'].nil?
            @RetentionPolicy = RetentionPolicy.new
            @RetentionPolicy.deserialize(params['RetentionPolicy'])
          end
          @AutoSubscriptionCreation = params['AutoSubscriptionCreation']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateEnvironmentRole请求参数结构体
      class CreateEnvironmentRoleRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Permissions: 授权项，最多只能包含produce、consume两项的非空字符串数组。
        # @type Permissions: Array
        # @param ClusterId: 必填字段，集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :RoleName, :Permissions, :ClusterId

        def initialize(environmentid=nil, rolename=nil, permissions=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @RoleName = rolename
          @Permissions = permissions
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleName = params['RoleName']
          @Permissions = params['Permissions']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateEnvironmentRole返回参数结构体
      class CreateEnvironmentRoleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateProCluster请求参数结构体
      class CreateProClusterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneIds: 多可用区部署选择三个可用区，示例[200002,200003,200004]

        # 单可用区部署选择一个可用区，示例[200002]
        # @type ZoneIds: Array
        # @param ProductName: 集群规格代号
        # 参考 [专业集群规格](https://cloud.tencent.com/document/product/1179/83705)
        # @type ProductName: String
        # @param StorageSize: 存储规格
        # 参考 [专业集群规格](https://cloud.tencent.com/document/product/1179/83705)
        # @type StorageSize: Integer
        # @param AutoRenewFlag: 1: true，开启自动按月续费

        # 0: false，关闭自动按月续费
        # @type AutoRenewFlag: Integer
        # @param TimeSpan: 购买时长，取值范围：1～50
        # @type TimeSpan: Integer
        # @param ClusterName: 集群名称，不支持中字以及除了短线和下划线外的特殊字符且不超过64个字符。
        # @type ClusterName: String
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param Vpc: vpc网络标签
        # @type Vpc: :class:`Tencentcloud::Tdmq.v20200217.models.VpcInfo`
        # @param Tags: 集群的标签列表(已废弃)
        # @type Tags: Array

        attr_accessor :ZoneIds, :ProductName, :StorageSize, :AutoRenewFlag, :TimeSpan, :ClusterName, :AutoVoucher, :Vpc, :Tags

        def initialize(zoneids=nil, productname=nil, storagesize=nil, autorenewflag=nil, timespan=nil, clustername=nil, autovoucher=nil, vpc=nil, tags=nil)
          @ZoneIds = zoneids
          @ProductName = productname
          @StorageSize = storagesize
          @AutoRenewFlag = autorenewflag
          @TimeSpan = timespan
          @ClusterName = clustername
          @AutoVoucher = autovoucher
          @Vpc = vpc
          @Tags = tags
        end

        def deserialize(params)
          @ZoneIds = params['ZoneIds']
          @ProductName = params['ProductName']
          @StorageSize = params['StorageSize']
          @AutoRenewFlag = params['AutoRenewFlag']
          @TimeSpan = params['TimeSpan']
          @ClusterName = params['ClusterName']
          @AutoVoucher = params['AutoVoucher']
          unless params['Vpc'].nil?
            @Vpc = VpcInfo.new
            @Vpc.deserialize(params['Vpc'])
          end
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

      # CreateProCluster返回参数结构体
      class CreateProClusterResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 子订单号
        # @type DealName: String
        # @param BigDealId: 订单号
        # @type BigDealId: String
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :BigDealId, :ClusterId, :ClusterName, :RequestId

        def initialize(dealname=nil, bigdealid=nil, clusterid=nil, clustername=nil, requestid=nil)
          @DealName = dealname
          @BigDealId = bigdealid
          @ClusterId = clusterid
          @ClusterName = clustername
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @BigDealId = params['BigDealId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQBinding请求参数结构体
      class CreateRabbitMQBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param Source: 源exchange
        # @type Source: String
        # @param DestinationType: 目标类型,取值queue或exchange
        # @type DestinationType: String
        # @param Destination: 目标
        # @type Destination: String
        # @param RoutingKey: 路由键
        # @type RoutingKey: String

        attr_accessor :InstanceId, :VirtualHost, :Source, :DestinationType, :Destination, :RoutingKey

        def initialize(instanceid=nil, virtualhost=nil, source=nil, destinationtype=nil, destination=nil, routingkey=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Source = source
          @DestinationType = destinationtype
          @Destination = destination
          @RoutingKey = routingkey
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Source = params['Source']
          @DestinationType = params['DestinationType']
          @Destination = params['Destination']
          @RoutingKey = params['RoutingKey']
        end
      end

      # CreateRabbitMQBinding返回参数结构体
      class CreateRabbitMQBindingResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param VirtualHost: vhost名称
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :BindingId, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQUser请求参数结构体
      class CreateRabbitMQUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param Password: 密码，登录时使用。规范：不能为空，8-64个字符，至少要包含小写字母、大写字母、数字、特殊字符【()`~!@#$%^&*_=|{}[]:;',.?/】中的两项
        # @type Password: String
        # @param Description: 描述
        # @type Description: String
        # @param Tags: 用户标签，用于决定改用户访问RabbitMQ Management的权限范围
        # management：普通控制台用户，monitoring：管理型控制台用户，其他值：非控制台用户
        # @type Tags: Array
        # @param MaxConnections: 该用户的最大连接数，不填写则不限制
        # @type MaxConnections: Integer
        # @param MaxChannels: 该用户的最大channel数，不填写则不限制
        # @type MaxChannels: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :MaxConnections, :MaxChannels

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, maxconnections=nil, maxchannels=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
        end
      end

      # CreateRabbitMQUser返回参数结构体
      class CreateRabbitMQUserResponse < TencentCloud::Common::AbstractModel
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId

        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          @User = params['User']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQVipInstance请求参数结构体
      class CreateRabbitMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneIds: 可用区
        # @type ZoneIds: Array
        # @param VpcId: 私有网络ID，形如 vpc-xxx。有效的 VpcId 可通过登录[私有网络](https://console.cloud.tencent.com/vpc/vpc?rid=1)控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372)，从接口返回中的 unVpcId 字段获取。若在创建子机时 VpcId 与 SubnetId 同时传入 DEFAULT，则强制使用默认 vpc 网络。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网 ID，形如 subnet-xxx。有效的私有网络子网 ID 可通过登录[子网控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口 [DescribeSubnets](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的 unSubnetId 字段获取。若在创建子机时 SubnetId 与 VpcId 同时传入 DEFAULT，则强制使用默认 vpc 网络。
        # @type SubnetId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param NodeSpec: 集群的节点规格，需要输入对应的规格标识：
        # 2C8G：rabbit-vip-basic-2c8g
        # 4C16G：rabbit-vip-basic-4c16g
        # 8C32G：rabbit-vip-basic-8c32g
        # 16C32G：rabbit-vip-basic-4
        # 16C64G：rabbit-vip-basic-16c64g
        # 2C4G：rabbit-vip-basic-5
        # 4C8G：rabbit-vip-basic-1
        # 8C16G（已售罄）：rabbit-vip-basic-2
        # 不传默认为 4C8G：rabbit-vip-basic-1
        # @type NodeSpec: String
        # @param NodeNum: 节点数量,多可用区最少为3节点。不传默认单可用区为1,多可用区为3
        # @type NodeNum: Integer
        # @param StorageSize: 单节点存储规格,不传默认为200G
        # @type StorageSize: Integer
        # @param EnableCreateDefaultHaMirrorQueue: 是否开启默认镜像队列，true 表示为开启，false 表示为不开启。不传默认为 false
        # @type EnableCreateDefaultHaMirrorQueue: Boolean
        # @param AutoRenewFlag: 仅预付费集群（PayMode 参数为 1 时）使用该参数，表示是否自动续费，true 表示打开自动续费。不传默认为 true
        # @type AutoRenewFlag: Boolean
        # @param TimeSpan: 购买时长,不传默认为1(月)
        # @type TimeSpan: Integer
        # @param PayMode: 付费方式，0 为后付费，即按量计费；1 为预付费，即包年包月。默认包年包月
        # @type PayMode: Integer
        # @param ClusterVersion: 集群版本，不传默认为 3.8.30，可选值为 3.8.30 和 3.11.8
        # @type ClusterVersion: String
        # @param IsIntl: 是否国际站请求，默认 false
        # @type IsIntl: Boolean
        # @param ResourceTags: 资源标签列表
        # @type ResourceTags: Array
        # @param Bandwidth: 公网带宽大小，单位 Mbps
        # @type Bandwidth: Integer
        # @param EnablePublicAccess: 是否打开公网接入，不传默认为false
        # @type EnablePublicAccess: Boolean
        # @param EnableDeletionProtection: 是否打开集群删除保护，不传默认为 false
        # @type EnableDeletionProtection: Boolean

        attr_accessor :ZoneIds, :VpcId, :SubnetId, :ClusterName, :NodeSpec, :NodeNum, :StorageSize, :EnableCreateDefaultHaMirrorQueue, :AutoRenewFlag, :TimeSpan, :PayMode, :ClusterVersion, :IsIntl, :ResourceTags, :Bandwidth, :EnablePublicAccess, :EnableDeletionProtection

        def initialize(zoneids=nil, vpcid=nil, subnetid=nil, clustername=nil, nodespec=nil, nodenum=nil, storagesize=nil, enablecreatedefaulthamirrorqueue=nil, autorenewflag=nil, timespan=nil, paymode=nil, clusterversion=nil, isintl=nil, resourcetags=nil, bandwidth=nil, enablepublicaccess=nil, enabledeletionprotection=nil)
          @ZoneIds = zoneids
          @VpcId = vpcid
          @SubnetId = subnetid
          @ClusterName = clustername
          @NodeSpec = nodespec
          @NodeNum = nodenum
          @StorageSize = storagesize
          @EnableCreateDefaultHaMirrorQueue = enablecreatedefaulthamirrorqueue
          @AutoRenewFlag = autorenewflag
          @TimeSpan = timespan
          @PayMode = paymode
          @ClusterVersion = clusterversion
          @IsIntl = isintl
          @ResourceTags = resourcetags
          @Bandwidth = bandwidth
          @EnablePublicAccess = enablepublicaccess
          @EnableDeletionProtection = enabledeletionprotection
        end

        def deserialize(params)
          @ZoneIds = params['ZoneIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ClusterName = params['ClusterName']
          @NodeSpec = params['NodeSpec']
          @NodeNum = params['NodeNum']
          @StorageSize = params['StorageSize']
          @EnableCreateDefaultHaMirrorQueue = params['EnableCreateDefaultHaMirrorQueue']
          @AutoRenewFlag = params['AutoRenewFlag']
          @TimeSpan = params['TimeSpan']
          @PayMode = params['PayMode']
          @ClusterVersion = params['ClusterVersion']
          @IsIntl = params['IsIntl']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @Bandwidth = params['Bandwidth']
          @EnablePublicAccess = params['EnablePublicAccess']
          @EnableDeletionProtection = params['EnableDeletionProtection']
        end
      end

      # CreateRabbitMQVipInstance返回参数结构体
      class CreateRabbitMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 订单号 ID
        # @type TranId: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :InstanceId, :RequestId

        def initialize(tranid=nil, instanceid=nil, requestid=nil)
          @TranId = tranid
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQVirtualHost请求参数结构体
      class CreateRabbitMQVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param Description: 描述
        # @type Description: String
        # @param TraceFlag: 消息轨迹开关,true打开,false关闭,默认关闭
        # @type TraceFlag: Boolean
        # @param MirrorQueuePolicyFlag: 是否创建镜像队列策略，默认值 true
        # @type MirrorQueuePolicyFlag: Boolean

        attr_accessor :InstanceId, :VirtualHost, :Description, :TraceFlag, :MirrorQueuePolicyFlag

        def initialize(instanceid=nil, virtualhost=nil, description=nil, traceflag=nil, mirrorqueuepolicyflag=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @TraceFlag = traceflag
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @TraceFlag = params['TraceFlag']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
        end
      end

      # CreateRabbitMQVirtualHost返回参数结构体
      class CreateRabbitMQVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VirtualHost, :RequestId

        def initialize(virtualhost=nil, requestid=nil)
          @VirtualHost = virtualhost
          @RequestId = requestid
        end

        def deserialize(params)
          @VirtualHost = params['VirtualHost']
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQCluster请求参数结构体
      class CreateRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param Name: 集群名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Name: String
        # @param Remark: 集群描述，128个字符以内
        # @type Remark: String
        # @param TagList: 标签列表
        # @type TagList: Array

        attr_accessor :Name, :Remark, :TagList

        def initialize(name=nil, remark=nil, taglist=nil)
          @Name = name
          @Remark = remark
          @TagList = taglist
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
        end
      end

      # CreateRocketMQCluster返回参数结构体
      class CreateRocketMQClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRocketMQEnvironmentRole请求参数结构体
      class CreateRocketMQEnvironmentRoleRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 命名空间
        # @type EnvironmentId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Permissions: 授权项，最多只能包含produce、consume两项的非空字符串数组。
        # @type Permissions: Array
        # @param ClusterId: 必填字段，集群的ID
        # @type ClusterId: String
        # @param DetailedPerms: Topic&Group维度权限配置
        # @type DetailedPerms: Array

        attr_accessor :EnvironmentId, :RoleName, :Permissions, :ClusterId, :DetailedPerms

        def initialize(environmentid=nil, rolename=nil, permissions=nil, clusterid=nil, detailedperms=nil)
          @EnvironmentId = environmentid
          @RoleName = rolename
          @Permissions = permissions
          @ClusterId = clusterid
          @DetailedPerms = detailedperms
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleName = params['RoleName']
          @Permissions = params['Permissions']
          @ClusterId = params['ClusterId']
          unless params['DetailedPerms'].nil?
            @DetailedPerms = []
            params['DetailedPerms'].each do |i|
              detailedroleperm_tmp = DetailedRolePerm.new
              detailedroleperm_tmp.deserialize(i)
              @DetailedPerms << detailedroleperm_tmp
            end
          end
        end
      end

      # CreateRocketMQEnvironmentRole返回参数结构体
      class CreateRocketMQEnvironmentRoleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQGroup请求参数结构体
      class CreateRocketMQGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: Group名称，8~64个字符
        # @type GroupId: String
        # @param Namespaces: 命名空间，目前只支持单个命名空间
        # @type Namespaces: Array
        # @param ReadEnable: 是否开启消费
        # @type ReadEnable: Boolean
        # @param BroadcastEnable: 是否开启广播消费
        # @type BroadcastEnable: Boolean
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Remark: 说明信息，最长128个字符
        # @type Remark: String
        # @param GroupType: Group类型（TCP/HTTP）
        # @type GroupType: String
        # @param RetryMaxTimes: Group最大重试次数
        # @type RetryMaxTimes: Integer

        attr_accessor :GroupId, :Namespaces, :ReadEnable, :BroadcastEnable, :ClusterId, :Remark, :GroupType, :RetryMaxTimes

        def initialize(groupid=nil, namespaces=nil, readenable=nil, broadcastenable=nil, clusterid=nil, remark=nil, grouptype=nil, retrymaxtimes=nil)
          @GroupId = groupid
          @Namespaces = namespaces
          @ReadEnable = readenable
          @BroadcastEnable = broadcastenable
          @ClusterId = clusterid
          @Remark = remark
          @GroupType = grouptype
          @RetryMaxTimes = retrymaxtimes
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Namespaces = params['Namespaces']
          @ReadEnable = params['ReadEnable']
          @BroadcastEnable = params['BroadcastEnable']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @GroupType = params['GroupType']
          @RetryMaxTimes = params['RetryMaxTimes']
        end
      end

      # CreateRocketMQGroup返回参数结构体
      class CreateRocketMQGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQNamespace请求参数结构体
      class CreateRocketMQNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 已废弃
        # @type Ttl: Integer
        # @param RetentionTime: 已废弃
        # @type RetentionTime: Integer
        # @param Remark: 说明，最大128个字符
        # @type Remark: String

        attr_accessor :ClusterId, :NamespaceId, :Ttl, :RetentionTime, :Remark

        def initialize(clusterid=nil, namespaceid=nil, ttl=nil, retentiontime=nil, remark=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Ttl = ttl
          @RetentionTime = retentiontime
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Ttl = params['Ttl']
          @RetentionTime = params['RetentionTime']
          @Remark = params['Remark']
        end
      end

      # CreateRocketMQNamespace返回参数结构体
      class CreateRocketMQNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQRole请求参数结构体
      class CreateRocketMQRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称，不支持中字以及除了短线和下划线外的特殊字符且长度必须大于0且小等于32。
        # @type RoleName: String
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param Remark: 备注说明，长度必须大等于0且小等于128。
        # @type Remark: String
        # @param PermType: 角色授权类型（集群：Cluster; 主题或消费组：TopicAndGroup）
        # @type PermType: String

        attr_accessor :RoleName, :ClusterId, :Remark, :PermType

        def initialize(rolename=nil, clusterid=nil, remark=nil, permtype=nil)
          @RoleName = rolename
          @ClusterId = clusterid
          @Remark = remark
          @PermType = permtype
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @PermType = params['PermType']
        end
      end

      # CreateRocketMQRole返回参数结构体
      class CreateRocketMQRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Token: 角色token
        # @type Token: String
        # @param Remark: 备注说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleName, :Token, :Remark, :RequestId

        def initialize(rolename=nil, token=nil, remark=nil, requestid=nil)
          @RoleName = rolename
          @Token = token
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Token = params['Token']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQTopic请求参数结构体
      class CreateRocketMQTopicRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Topic: String
        # @param Namespaces: 主题所在的命名空间，目前支持在单个命名空间下创建主题
        # @type Namespaces: Array
        # @param Type: 主题类型，可选值为Normal, GlobalOrder, PartitionedOrder, Transaction, DelayScheduled。Transaction仅在专享版支持。
        # @type Type: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Remark: 主题说明，最大128个字符
        # @type Remark: String
        # @param PartitionNum: 分区数，全局顺序无效
        # @type PartitionNum: Integer

        attr_accessor :Topic, :Namespaces, :Type, :ClusterId, :Remark, :PartitionNum

        def initialize(topic=nil, namespaces=nil, type=nil, clusterid=nil, remark=nil, partitionnum=nil)
          @Topic = topic
          @Namespaces = namespaces
          @Type = type
          @ClusterId = clusterid
          @Remark = remark
          @PartitionNum = partitionnum
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Namespaces = params['Namespaces']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @PartitionNum = params['PartitionNum']
        end
      end

      # CreateRocketMQTopic返回参数结构体
      class CreateRocketMQTopicResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateRocketMQVipInstance请求参数结构体
      class CreateRocketMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 实例名称
        # @type Name: String
        # @param Spec: 集群规格，支持规格有 1.通用型:rocket-vip-basic-0; 2.基础型:rocket-vip-basic-1; 3.标准型:rocket-vip-basic-2; 4.高阶Ⅰ型:rocket-vip-basic-3; 5.高阶Ⅱ型:rocket-vip-basic-4
        # @type Spec: String
        # @param NodeCount: 节点数量，最小2，最大20
        # @type NodeCount: Integer
        # @param StorageSize: 单节点存储空间，GB为单位，最低200GB
        # @type StorageSize: Integer
        # @param ZoneIds: 节点部署的区域ID列表，如广州一区，则是100001，具体可查询腾讯云官网
        # @type ZoneIds: Array
        # @param VpcInfo: VPC信息
        # @type VpcInfo: :class:`Tencentcloud::Tdmq.v20200217.models.VpcInfo`
        # @param TimeSpan: 购买时长，月为单位
        # @type TimeSpan: Integer
        # @param SupportsMigrateToCloud: 是否用于迁移上云，默认为false
        # @type SupportsMigrateToCloud: Boolean
        # @param EnablePublic: 是否开启公网
        # @type EnablePublic: Boolean
        # @param Bandwidth: 公网带宽，在开启公网情况下为必传字段
        # @type Bandwidth: Integer
        # @param IpRules: 公网白名单
        # @type IpRules: Array
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Name, :Spec, :NodeCount, :StorageSize, :ZoneIds, :VpcInfo, :TimeSpan, :SupportsMigrateToCloud, :EnablePublic, :Bandwidth, :IpRules, :Tags

        def initialize(name=nil, spec=nil, nodecount=nil, storagesize=nil, zoneids=nil, vpcinfo=nil, timespan=nil, supportsmigratetocloud=nil, enablepublic=nil, bandwidth=nil, iprules=nil, tags=nil)
          @Name = name
          @Spec = spec
          @NodeCount = nodecount
          @StorageSize = storagesize
          @ZoneIds = zoneids
          @VpcInfo = vpcinfo
          @TimeSpan = timespan
          @SupportsMigrateToCloud = supportsmigratetocloud
          @EnablePublic = enablepublic
          @Bandwidth = bandwidth
          @IpRules = iprules
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Spec = params['Spec']
          @NodeCount = params['NodeCount']
          @StorageSize = params['StorageSize']
          @ZoneIds = params['ZoneIds']
          unless params['VpcInfo'].nil?
            @VpcInfo = VpcInfo.new
            @VpcInfo.deserialize(params['VpcInfo'])
          end
          @TimeSpan = params['TimeSpan']
          @SupportsMigrateToCloud = params['SupportsMigrateToCloud']
          @EnablePublic = params['EnablePublic']
          @Bandwidth = params['Bandwidth']
          unless params['IpRules'].nil?
            @IpRules = []
            params['IpRules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @IpRules << publicaccessrule_tmp
            end
          end
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

      # CreateRocketMQVipInstance返回参数结构体
      class CreateRocketMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRole请求参数结构体
      class CreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称，不支持中字以及除了短线和下划线外的特殊字符且长度必须大于0且小等于32。
        # @type RoleName: String
        # @param Remark: 备注说明，长度必须大等于0且小等于128。
        # @type Remark: String
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String

        attr_accessor :RoleName, :Remark, :ClusterId

        def initialize(rolename=nil, remark=nil, clusterid=nil)
          @RoleName = rolename
          @Remark = remark
          @ClusterId = clusterid
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateRole返回参数结构体
      class CreateRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Token: 角色token
        # @type Token: String
        # @param Remark: 备注说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param EnvironmentRoleSets: 批量绑定名字空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentRoleSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleName, :Token, :Remark, :EnvironmentRoleSets, :RequestId

        def initialize(rolename=nil, token=nil, remark=nil, environmentrolesets=nil, requestid=nil)
          @RoleName = rolename
          @Token = token
          @Remark = remark
          @EnvironmentRoleSets = environmentrolesets
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Token = params['Token']
          @Remark = params['Remark']
          unless params['EnvironmentRoleSets'].nil?
            @EnvironmentRoleSets = []
            params['EnvironmentRoleSets'].each do |i|
              environmentroleset_tmp = EnvironmentRoleSet.new
              environmentroleset_tmp.deserialize(i)
              @EnvironmentRoleSets << environmentroleset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSubscription请求参数结构体
      class CreateSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param SubscriptionName: 订阅者名称，不超过128个字符。
        # @type SubscriptionName: String
        # @param IsIdempotent: 是否幂等创建，若否不允许创建同名的订阅关系。
        # @type IsIdempotent: Boolean
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Remark: 备注，128个字符以内。
        # @type Remark: String
        # @param AutoCreatePolicyTopic: 是否自动创建死信和重试主题，True 表示创建，False表示不创建，默认自动创建死信和重试主题。
        # @type AutoCreatePolicyTopic: Boolean
        # @param PostFixPattern: 指定死信和重试主题名称规范，LEGACY表示历史命名规则，COMMUNITY表示Pulsar社区命名规范
        # @type PostFixPattern: String

        attr_accessor :EnvironmentId, :TopicName, :SubscriptionName, :IsIdempotent, :ClusterId, :Remark, :AutoCreatePolicyTopic, :PostFixPattern

        def initialize(environmentid=nil, topicname=nil, subscriptionname=nil, isidempotent=nil, clusterid=nil, remark=nil, autocreatepolicytopic=nil, postfixpattern=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @IsIdempotent = isidempotent
          @ClusterId = clusterid
          @Remark = remark
          @AutoCreatePolicyTopic = autocreatepolicytopic
          @PostFixPattern = postfixpattern
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @IsIdempotent = params['IsIdempotent']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @AutoCreatePolicyTopic = params['AutoCreatePolicyTopic']
          @PostFixPattern = params['PostFixPattern']
        end
      end

      # CreateSubscription返回参数结构体
      class CreateSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Partitions: 入参为1，即是创建非分区topic，无分区；入参大于1，表示分区topic的分区数，最大不允许超过32。
        # @type Partitions: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param TopicType: 该入参将逐步弃用，可切换至PulsarTopicType参数
        # 0： 普通消息；
        # 1 ：全局顺序消息；
        # 2 ：局部顺序消息；
        # 3 ：重试队列；
        # 4 ：死信队列。
        # @type TopicType: Integer
        # @param PulsarTopicType: Pulsar 主题类型
        # 0: 非持久非分区
        # 1: 非持久分区
        # 2: 持久非分区
        # 3: 持久分区
        # @type PulsarTopicType: Integer
        # @param MsgTTL: 未消费消息过期时间，单位：秒，取值范围：60秒~15天。
        # @type MsgTTL: Integer
        # @param UnackPolicy: 不传默认是原生策略，DefaultPolicy表示当订阅下达到最大未确认消息数 5000 时，服务端将不再向当前订阅下的所有消费者推送消息，DynamicPolicy表示动态调整订阅下的最大未确认消息数，具体配额是在 5000 和消费者数量*20之间取最大值。每个消费者默认最大 unack 消息数为 20，超过该限制时仅影响该消费者，不影响其他消费者。
        # @type UnackPolicy: String
        # @param IsolateConsumerEnable: 是否开启异常消费者隔离
        # @type IsolateConsumerEnable: Boolean
        # @param AckTimeOut: 消费者 Ack 超时时间，单位：秒，范围60-（3600*24）
        # @type AckTimeOut: Integer

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :ClusterId, :Remark, :TopicType, :PulsarTopicType, :MsgTTL, :UnackPolicy, :IsolateConsumerEnable, :AckTimeOut

        def initialize(environmentid=nil, topicname=nil, partitions=nil, clusterid=nil, remark=nil, topictype=nil, pulsartopictype=nil, msgttl=nil, unackpolicy=nil, isolateconsumerenable=nil, acktimeout=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @ClusterId = clusterid
          @Remark = remark
          @TopicType = topictype
          @PulsarTopicType = pulsartopictype
          @MsgTTL = msgttl
          @UnackPolicy = unackpolicy
          @IsolateConsumerEnable = isolateconsumerenable
          @AckTimeOut = acktimeout
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @TopicType = params['TopicType']
          @PulsarTopicType = params['PulsarTopicType']
          @MsgTTL = params['MsgTTL']
          @UnackPolicy = params['UnackPolicy']
          @IsolateConsumerEnable = params['IsolateConsumerEnable']
          @AckTimeOut = params['AckTimeOut']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param Partitions: 0或1：非分区topic，无分区；大于1：具体分区topic的分区数。（存量非分区主题返回0，增量非分区主题返回1）
        # @type Partitions: Integer
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param TopicType: 0： 普通消息；
        # 1 ：全局顺序消息；
        # 2 ：局部顺序消息；
        # 3 ：重试队列；
        # 4 ：死信队列；
        # @type TopicType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param QueueName: 队列名字，在单个地域同一账号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一账号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteEnvironmentRoles请求参数结构体
      class DeleteEnvironmentRolesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param RoleNames: 角色名称数组。
        # @type RoleNames: Array
        # @param ClusterId: 必填字段，集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :RoleNames, :ClusterId

        def initialize(environmentid=nil, rolenames=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @RoleNames = rolenames
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleNames = params['RoleNames']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteEnvironmentRoles返回参数结构体
      class DeleteEnvironmentRolesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteProCluster请求参数结构体
      class DeleteProClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteProCluster返回参数结构体
      class DeleteProClusterResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 退还实例订单号
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQBinding请求参数结构体
      class DeleteRabbitMQBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer

        attr_accessor :InstanceId, :VirtualHost, :BindingId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
        end
      end

      # DeleteRabbitMQBinding返回参数结构体
      class DeleteRabbitMQBindingResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param VirtualHost: vhost参数
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :BindingId, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQPermission请求参数结构体
      class DeleteRabbitMQPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到 Vhost 名称。
        # @type VirtualHost: String

        attr_accessor :InstanceId, :User, :VirtualHost

        def initialize(instanceid=nil, user=nil, virtualhost=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
        end
      end

      # DeleteRabbitMQPermission返回参数结构体
      class DeleteRabbitMQPermissionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQUser请求参数结构体
      class DeleteRabbitMQUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String

        attr_accessor :InstanceId, :User

        def initialize(instanceid=nil, user=nil)
          @InstanceId = instanceid
          @User = user
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
        end
      end

      # DeleteRabbitMQUser返回参数结构体
      class DeleteRabbitMQUserResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQVipInstance请求参数结构体
      class DeleteRabbitMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param IsIntl: 是否国际站请求，默认 false
        # @type IsIntl: Boolean

        attr_accessor :InstanceId, :IsIntl

        def initialize(instanceid=nil, isintl=nil)
          @InstanceId = instanceid
          @IsIntl = isintl
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsIntl = params['IsIntl']
        end
      end

      # DeleteRabbitMQVipInstance返回参数结构体
      class DeleteRabbitMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 订单号 ID
        # @type TranId: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :InstanceId, :RequestId

        def initialize(tranid=nil, instanceid=nil, requestid=nil)
          @TranId = tranid
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQVirtualHost请求参数结构体
      class DeleteRabbitMQVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String

        attr_accessor :InstanceId, :VirtualHost

        def initialize(instanceid=nil, virtualhost=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
        end
      end

      # DeleteRabbitMQVirtualHost返回参数结构体
      class DeleteRabbitMQVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQCluster请求参数结构体
      class DeleteRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除的集群Id。
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteRocketMQCluster返回参数结构体
      class DeleteRocketMQClusterResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQEnvironmentRoles请求参数结构体
      class DeleteRocketMQEnvironmentRolesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param RoleNames: 角色名称数组。
        # @type RoleNames: Array
        # @param ClusterId: 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :RoleNames, :ClusterId

        def initialize(environmentid=nil, rolenames=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @RoleNames = rolenames
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleNames = params['RoleNames']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteRocketMQEnvironmentRoles返回参数结构体
      class DeleteRocketMQEnvironmentRolesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQGroup请求参数结构体
      class DeleteRocketMQGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupId: 消费组名称
        # @type GroupId: String

        attr_accessor :ClusterId, :NamespaceId, :GroupId

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteRocketMQGroup返回参数结构体
      class DeleteRocketMQGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQNamespace请求参数结构体
      class DeleteRocketMQNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String

        attr_accessor :ClusterId, :NamespaceId

        def initialize(clusterid=nil, namespaceid=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
        end
      end

      # DeleteRocketMQNamespace返回参数结构体
      class DeleteRocketMQNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQRoles请求参数结构体
      class DeleteRocketMQRolesRequest < TencentCloud::Common::AbstractModel
        # @param RoleNames: 角色名称数组。
        # @type RoleNames: Array
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String

        attr_accessor :RoleNames, :ClusterId

        def initialize(rolenames=nil, clusterid=nil)
          @RoleNames = rolenames
          @ClusterId = clusterid
        end

        def deserialize(params)
          @RoleNames = params['RoleNames']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteRocketMQRoles返回参数结构体
      class DeleteRocketMQRolesResponse < TencentCloud::Common::AbstractModel
        # @param RoleNames: 成功删除的角色名称数组。
        # @type RoleNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleNames, :RequestId

        def initialize(rolenames=nil, requestid=nil)
          @RoleNames = rolenames
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleNames = params['RoleNames']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQTopic请求参数结构体
      class DeleteRocketMQTopicRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param Topic: 主题名称
        # @type Topic: String

        attr_accessor :ClusterId, :NamespaceId, :Topic

        def initialize(clusterid=nil, namespaceid=nil, topic=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Topic = topic
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Topic = params['Topic']
        end
      end

      # DeleteRocketMQTopic返回参数结构体
      class DeleteRocketMQTopicResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRocketMQVipInstance请求参数结构体
      class DeleteRocketMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 实例的集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteRocketMQVipInstance返回参数结构体
      class DeleteRocketMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRoles请求参数结构体
      class DeleteRolesRequest < TencentCloud::Common::AbstractModel
        # @param RoleNames: 角色名称数组。
        # @type RoleNames: Array
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String

        attr_accessor :RoleNames, :ClusterId

        def initialize(rolenames=nil, clusterid=nil)
          @RoleNames = rolenames
          @ClusterId = clusterid
        end

        def deserialize(params)
          @RoleNames = params['RoleNames']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteRoles返回参数结构体
      class DeleteRolesResponse < TencentCloud::Common::AbstractModel
        # @param RoleNames: 成功删除的角色名称数组。
        # @type RoleNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleNames, :RequestId

        def initialize(rolenames=nil, requestid=nil)
          @RoleNames = rolenames
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleNames = params['RoleNames']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAMQPClusters请求参数结构体
      class DescribeAMQPClustersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param IdKeyword: 按照集群ID关键字搜索
        # @type IdKeyword: String
        # @param NameKeyword: 按照集群名称关键字搜索
        # @type NameKeyword: String
        # @param ClusterIdList: 集群ID列表过滤
        # @type ClusterIdList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :IdKeyword, :NameKeyword, :ClusterIdList, :IsTagFilter, :Filters

        def initialize(offset=nil, limit=nil, idkeyword=nil, namekeyword=nil, clusteridlist=nil, istagfilter=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @IdKeyword = idkeyword
          @NameKeyword = namekeyword
          @ClusterIdList = clusteridlist
          @IsTagFilter = istagfilter
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IdKeyword = params['IdKeyword']
          @NameKeyword = params['NameKeyword']
          @ClusterIdList = params['ClusterIdList']
          @IsTagFilter = params['IsTagFilter']
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

      # DescribeAMQPClusters返回参数结构体
      class DescribeAMQPClustersResponse < TencentCloud::Common::AbstractModel
        # @param ClusterList: 集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterList: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterList, :TotalCount, :RequestId

        def initialize(clusterlist=nil, totalcount=nil, requestid=nil)
          @ClusterList = clusterlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              amqpclusterdetail_tmp = AMQPClusterDetail.new
              amqpclusterdetail_tmp.deserialize(i)
              @ClusterList << amqpclusterdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllTenants请求参数结构体
      class DescribeAllTenantsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制条数
        # @type Limit: Integer
        # @param ClusterName: 物理集群名称
        # @type ClusterName: String
        # @param TenantId: 虚拟集群ID
        # @type TenantId: String
        # @param TenantName: 虚拟集群名称
        # @type TenantName: String
        # @param Types: 协议类型数组
        # @type Types: Array
        # @param SortBy: 排序字段名，支持createTime，updateTime
        # @type SortBy: String
        # @param SortOrder: 升序排列ASC，降序排列DESC
        # @type SortOrder: String

        attr_accessor :Offset, :Limit, :ClusterName, :TenantId, :TenantName, :Types, :SortBy, :SortOrder

        def initialize(offset=nil, limit=nil, clustername=nil, tenantid=nil, tenantname=nil, types=nil, sortby=nil, sortorder=nil)
          @Offset = offset
          @Limit = limit
          @ClusterName = clustername
          @TenantId = tenantid
          @TenantName = tenantname
          @Types = types
          @SortBy = sortby
          @SortOrder = sortorder
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterName = params['ClusterName']
          @TenantId = params['TenantId']
          @TenantName = params['TenantName']
          @Types = params['Types']
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeAllTenants返回参数结构体
      class DescribeAllTenantsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Tenants: 虚拟集群列表
        # @type Tenants: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tenants, :RequestId

        def initialize(totalcount=nil, tenants=nil, requestid=nil)
          @TotalCount = totalcount
          @Tenants = tenants
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tenants'].nil?
            @Tenants = []
            params['Tenants'].each do |i|
              internaltenant_tmp = InternalTenant.new
              internaltenant_tmp.deserialize(i)
              @Tenants << internaltenant_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ClusterIdList: 集群ID列表过滤
        # @type ClusterIdList: Array
        # @param IsTagFilter: 是否标签过滤
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :ClusterIdList, :IsTagFilter, :Filters

        def initialize(offset=nil, limit=nil, clusteridlist=nil, istagfilter=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @ClusterIdList = clusteridlist
          @IsTagFilter = istagfilter
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterIdList = params['ClusterIdList']
          @IsTagFilter = params['IsTagFilter']
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

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群列表数量
        # @type TotalCount: Integer
        # @param ClusterSet: 集群信息列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param QueueNameList: CMQ 队列名称列表过滤
        # @type QueueNameList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为 true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤，标签的Name需要加前缀“tag:”，例如：tag:负责人、tag:环境、tag:业务
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :QueueName, :QueueNameList, :IsTagFilter, :Filters

        def initialize(offset=nil, limit=nil, queuename=nil, queuenamelist=nil, istagfilter=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @QueueName = queuename
          @QueueNameList = queuenamelist
          @IsTagFilter = istagfilter
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueueName = params['QueueName']
          @QueueNameList = params['QueueNameList']
          @IsTagFilter = params['IsTagFilter']
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

      # DescribeCmqQueues返回参数结构体
      class DescribeCmqQueuesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param QueueList: 队列列表
        # @type QueueList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param Offset: 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param SubscriptionName: 根据SubscriptionName进行模糊搜索
        # @type SubscriptionName: String
        # @param QueueName: 队列名称，订阅绑定的endpoint
        # @type QueueName: String
        # @param QueryType: 查询类型。取值：（1）topic；（2）queue。
        # 默认值是topic。如果 queryType 是 topic，则查询主题下的订阅列表；如果 queryType 是 queue，则查询队列绑定的订阅列表。
        # @type QueryType: String

        attr_accessor :TopicName, :Offset, :Limit, :SubscriptionName, :QueueName, :QueryType

        def initialize(topicname=nil, offset=nil, limit=nil, subscriptionname=nil, queuename=nil, querytype=nil)
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
          @QueueName = queuename
          @QueryType = querytype
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubscriptionName = params['SubscriptionName']
          @QueueName = params['QueueName']
          @QueryType = params['QueryType']
        end
      end

      # DescribeCmqSubscriptionDetail返回参数结构体
      class DescribeCmqSubscriptionDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SubscriptionSet: Subscription属性集合
        # @type SubscriptionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicNameList: CMQ 主题名称列表过滤
        # @type TopicNameList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为 true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤，标签的Name需要加前缀“tag:”，例如：tag:负责人、tag:环境、tag:业务
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :TopicName, :TopicNameList, :IsTagFilter, :Filters

        def initialize(offset=nil, limit=nil, topicname=nil, topicnamelist=nil, istagfilter=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @TopicName = topicname
          @TopicNameList = topicnamelist
          @IsTagFilter = istagfilter
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicName = params['TopicName']
          @TopicNameList = params['TopicNameList']
          @IsTagFilter = params['IsTagFilter']
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

      # DescribeCmqTopics返回参数结构体
      class DescribeCmqTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TopicList: 主题列表
        # @type TopicList: Array
        # @param TotalCount: 全量主题数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param EnvironmentId: 必填字段，环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: 必填字段，Pulsar 集群的ID
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间名称，模糊搜索。
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param Filters: * EnvironmentId
        # 按照名称空间进行过滤，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :ClusterId, :EnvironmentId, :Offset, :Limit, :Filters

        def initialize(clusterid=nil, environmentid=nil, offset=nil, limit=nil, filters=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeMqMsgTrace请求参数结构体
      class DescribeMqMsgTraceRequest < TencentCloud::Common::AbstractModel
        # @param Protocol: pulsar、rocketmq、rabbitmq、cmq
        # @type Protocol: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param ClusterId: 集群id，cmq为空
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间，cmq为空
        # @type EnvironmentId: String
        # @param TopicName: 主题，cmq为空，rocketmq查询死信时值为groupId
        # @type TopicName: String
        # @param QueueName: cmq必填，其他协议填空
        # @type QueueName: String
        # @param GroupName: 消费组、订阅
        # @type GroupName: String
        # @param QueryDlqMsg: 查询死信时该值为true，只对Rocketmq有效
        # @type QueryDlqMsg: Boolean
        # @param ProduceTime: 生产时间
        # @type ProduceTime: String

        attr_accessor :Protocol, :MsgId, :ClusterId, :EnvironmentId, :TopicName, :QueueName, :GroupName, :QueryDlqMsg, :ProduceTime

        def initialize(protocol=nil, msgid=nil, clusterid=nil, environmentid=nil, topicname=nil, queuename=nil, groupname=nil, querydlqmsg=nil, producetime=nil)
          @Protocol = protocol
          @MsgId = msgid
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @TopicName = topicname
          @QueueName = queuename
          @GroupName = groupname
          @QueryDlqMsg = querydlqmsg
          @ProduceTime = producetime
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @MsgId = params['MsgId']
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @QueueName = params['QueueName']
          @GroupName = params['GroupName']
          @QueryDlqMsg = params['QueryDlqMsg']
          @ProduceTime = params['ProduceTime']
        end
      end

      # DescribeMqMsgTrace返回参数结构体
      class DescribeMqMsgTraceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 消息内容
        # @type Result: Array
        # @param ShowTopicName: 消息轨迹页展示的topic名称
        # @type ShowTopicName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ShowTopicName, :RequestId

        def initialize(result=nil, showtopicname=nil, requestid=nil)
          @Result = result
          @ShowTopicName = showtopicname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              traceresult_tmp = TraceResult.new
              traceresult_tmp.deserialize(i)
              @Result << traceresult_tmp
            end
          end
          @ShowTopicName = params['ShowTopicName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMsg请求参数结构体
      class DescribeMsgRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :MsgId, :TopicName, :ClusterId

        def initialize(environmentid=nil, msgid=nil, topicname=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @MsgId = msgid
          @TopicName = topicname
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgId = params['MsgId']
          @TopicName = params['TopicName']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeMsg返回参数结构体
      class DescribeMsgResponse < TencentCloud::Common::AbstractModel
        # @param Properties: 消息属性。
        # @type Properties: String
        # @param Body: 消息体。
        # @type Body: String
        # @param BatchId: 批次ID。
        # @type BatchId: String
        # @param ProduceTime: 生产时间。
        # @type ProduceTime: String
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ProducerName: 生产者名称。
        # @type ProducerName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Properties, :Body, :BatchId, :ProduceTime, :MsgId, :ProducerName, :RequestId

        def initialize(properties=nil, body=nil, batchid=nil, producetime=nil, msgid=nil, producername=nil, requestid=nil)
          @Properties = properties
          @Body = body
          @BatchId = batchid
          @ProduceTime = producetime
          @MsgId = msgid
          @ProducerName = producername
          @RequestId = requestid
        end

        def deserialize(params)
          @Properties = params['Properties']
          @Body = params['Body']
          @BatchId = params['BatchId']
          @ProduceTime = params['ProduceTime']
          @MsgId = params['MsgId']
          @ProducerName = params['ProducerName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMsgTrace请求参数结构体
      class DescribeMsgTraceRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）。
        # @type EnvironmentId: String
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ProduceTime: 消息生产时间。
        # @type ProduceTime: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param SubscriptionName: 消费组名称模糊匹配。
        # @type SubscriptionName: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :MsgId, :ProduceTime, :Offset, :Limit, :SubscriptionName, :ClusterId

        def initialize(environmentid=nil, msgid=nil, producetime=nil, offset=nil, limit=nil, subscriptionname=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @MsgId = msgid
          @ProduceTime = producetime
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgId = params['MsgId']
          @ProduceTime = params['ProduceTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubscriptionName = params['SubscriptionName']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeMsgTrace返回参数结构体
      class DescribeMsgTraceResponse < TencentCloud::Common::AbstractModel
        # @param ProducerLog: 生产信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerLog: :class:`Tencentcloud::Tdmq.v20200217.models.ProducerLog`
        # @param ServerLog: 服务方信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerLog: :class:`Tencentcloud::Tdmq.v20200217.models.ServerLog`
        # @param ConsumerLogs: 消费信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLogs: :class:`Tencentcloud::Tdmq.v20200217.models.ConsumerLogs`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProducerLog, :ServerLog, :ConsumerLogs, :RequestId

        def initialize(producerlog=nil, serverlog=nil, consumerlogs=nil, requestid=nil)
          @ProducerLog = producerlog
          @ServerLog = serverlog
          @ConsumerLogs = consumerlogs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProducerLog'].nil?
            @ProducerLog = ProducerLog.new
            @ProducerLog.deserialize(params['ProducerLog'])
          end
          unless params['ServerLog'].nil?
            @ServerLog = ServerLog.new
            @ServerLog.deserialize(params['ServerLog'])
          end
          unless params['ConsumerLogs'].nil?
            @ConsumerLogs = ConsumerLogs.new
            @ConsumerLogs.deserialize(params['ConsumerLogs'])
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
        # @param Bundle: 过滤的 bundle
        # @type Bundle: String
        # @param OwnerBroker: bundle 所属的 broker IP 地址，支持模糊查询
        # @type OwnerBroker: String
        # @param Tenant: 租户(如果没有自定义租户名称，和 tenantId 相同；如果有配置自定义租户名称，则为自定义租户名 user_tenant)
        # @type Tenant: String

        attr_accessor :ClusterName, :TenantId, :NamespaceName, :NeedMetrics, :Limit, :Offset, :Bundle, :OwnerBroker, :Tenant

        def initialize(clustername=nil, tenantid=nil, namespacename=nil, needmetrics=nil, limit=nil, offset=nil, bundle=nil, ownerbroker=nil, tenant=nil)
          @ClusterName = clustername
          @TenantId = tenantid
          @NamespaceName = namespacename
          @NeedMetrics = needmetrics
          @Limit = limit
          @Offset = offset
          @Bundle = bundle
          @OwnerBroker = ownerbroker
          @Tenant = tenant
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @TenantId = params['TenantId']
          @NamespaceName = params['NamespaceName']
          @NeedMetrics = params['NeedMetrics']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Bundle = params['Bundle']
          @OwnerBroker = params['OwnerBroker']
          @Tenant = params['Tenant']
        end
      end

      # DescribeNamespaceBundlesOpt返回参数结构体
      class DescribeNamespaceBundlesOptResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePublisherSummary请求参数结构体
      class DescribePublisherSummaryRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Topic: 主题名称
        # @type Topic: String

        attr_accessor :ClusterId, :Namespace, :Topic

        def initialize(clusterid=nil, namespace=nil, topic=nil)
          @ClusterId = clusterid
          @Namespace = namespace
          @Topic = topic
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @Topic = params['Topic']
        end
      end

      # DescribePublisherSummary返回参数结构体
      class DescribePublisherSummaryResponse < TencentCloud::Common::AbstractModel
        # @param MsgRateIn: 生产速率（条/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateIn: Float
        # @param MsgThroughputIn: 生产速率（字节/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputIn: Float
        # @param PublisherCount: 生产者数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublisherCount: Integer
        # @param StorageSize: 消息存储大小，以字节为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MsgRateIn, :MsgThroughputIn, :PublisherCount, :StorageSize, :RequestId

        def initialize(msgratein=nil, msgthroughputin=nil, publishercount=nil, storagesize=nil, requestid=nil)
          @MsgRateIn = msgratein
          @MsgThroughputIn = msgthroughputin
          @PublisherCount = publishercount
          @StorageSize = storagesize
          @RequestId = requestid
        end

        def deserialize(params)
          @MsgRateIn = params['MsgRateIn']
          @MsgThroughputIn = params['MsgThroughputIn']
          @PublisherCount = params['PublisherCount']
          @StorageSize = params['StorageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribePublishers请求参数结构体
      class DescribePublishersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Filters: 参数过滤器，支持ProducerName，Address字段
        # @type Filters: Array
        # @param Offset: 查询偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 查询条数，默认为20
        # @type Limit: Integer
        # @param Sort: 排序器
        # @type Sort: :class:`Tencentcloud::Tdmq.v20200217.models.Sort`

        attr_accessor :ClusterId, :Namespace, :Topic, :Filters, :Offset, :Limit, :Sort

        def initialize(clusterid=nil, namespace=nil, topic=nil, filters=nil, offset=nil, limit=nil, sort=nil)
          @ClusterId = clusterid
          @Namespace = namespace
          @Topic = topic
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Sort = sort
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @Topic = params['Topic']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribePublishers返回参数结构体
      class DescribePublishersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Publishers: 生产者信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Publishers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Publishers, :RequestId

        def initialize(totalcount=nil, publishers=nil, requestid=nil)
          @TotalCount = totalcount
          @Publishers = publishers
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Publishers'].nil?
            @Publishers = []
            params['Publishers'].each do |i|
              publisher_tmp = Publisher.new
              publisher_tmp.deserialize(i)
              @Publishers << publisher_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePulsarProInstanceDetail请求参数结构体
      class DescribePulsarProInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribePulsarProInstanceDetail返回参数结构体
      class DescribePulsarProInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Tdmq.v20200217.models.PulsarProClusterInfo`
        # @param NetworkAccessPointInfos: 集群网络接入点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAccessPointInfos: Array
        # @param ClusterSpecInfo: 集群规格信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterSpecInfo: :class:`Tencentcloud::Tdmq.v20200217.models.PulsarProClusterSpecInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterInfo, :NetworkAccessPointInfos, :ClusterSpecInfo, :RequestId

        def initialize(clusterinfo=nil, networkaccesspointinfos=nil, clusterspecinfo=nil, requestid=nil)
          @ClusterInfo = clusterinfo
          @NetworkAccessPointInfos = networkaccesspointinfos
          @ClusterSpecInfo = clusterspecinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterInfo'].nil?
            @ClusterInfo = PulsarProClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['NetworkAccessPointInfos'].nil?
            @NetworkAccessPointInfos = []
            params['NetworkAccessPointInfos'].each do |i|
              pulsarnetworkaccesspointinfo_tmp = PulsarNetworkAccessPointInfo.new
              pulsarnetworkaccesspointinfo_tmp.deserialize(i)
              @NetworkAccessPointInfos << pulsarnetworkaccesspointinfo_tmp
            end
          end
          unless params['ClusterSpecInfo'].nil?
            @ClusterSpecInfo = PulsarProClusterSpecInfo.new
            @ClusterSpecInfo.deserialize(params['ClusterSpecInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePulsarProInstances请求参数结构体
      class DescribePulsarProInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Limit: 查询数目上限，默认20
        # @type Limit: Integer
        # @param Offset: 查询起始位置
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePulsarProInstances返回参数结构体
      class DescribePulsarProInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 未分页的总数目
        # @type TotalCount: Integer
        # @param Instances: 实例信息列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              pulsarproinstance_tmp = PulsarProInstance.new
              pulsarproinstance_tmp.deserialize(i)
              @Instances << pulsarproinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQBindings请求参数结构体
      class DescribeRabbitMQBindingsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param Offset: 分页 offset，默认 0
        # @type Offset: Integer
        # @param Limit: 分页 limit，默认 20
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词，根据源exchange名称/目标资源名称/绑定key进行模糊搜索
        # @type SearchWord: String
        # @param SourceExchange: 根据源Exchange精准搜索过滤
        # @type SourceExchange: String
        # @param QueueName: 根据目标队列名精准搜索过滤，和 DestinationExchange 过滤不可同时设置
        # @type QueueName: String
        # @param DestinationExchange: 根据目标Exchange精准搜索过滤，和QueueName过滤不可同时设置
        # @type DestinationExchange: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :SourceExchange, :QueueName, :DestinationExchange

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, sourceexchange=nil, queuename=nil, destinationexchange=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @SourceExchange = sourceexchange
          @QueueName = queuename
          @DestinationExchange = destinationexchange
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @SourceExchange = params['SourceExchange']
          @QueueName = params['QueueName']
          @DestinationExchange = params['DestinationExchange']
        end
      end

      # DescribeRabbitMQBindings返回参数结构体
      class DescribeRabbitMQBindingsResponse < TencentCloud::Common::AbstractModel
        # @param BindingInfoList: 路由关系列表
        # @type BindingInfoList: Array
        # @param TotalCount: 路由关系数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindingInfoList, :TotalCount, :RequestId

        def initialize(bindinginfolist=nil, totalcount=nil, requestid=nil)
          @BindingInfoList = bindinginfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindingInfoList'].nil?
            @BindingInfoList = []
            params['BindingInfoList'].each do |i|
              rabbitmqbindinglistinfo_tmp = RabbitMQBindingListInfo.new
              rabbitmqbindinglistinfo_tmp.deserialize(i)
              @BindingInfoList << rabbitmqbindinglistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQExchanges请求参数结构体
      class DescribeRabbitMQExchangesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param Offset: 分页 offset，默认 0
        # @type Offset: Integer
        # @param Limit: 分页 limit，默认 20
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词, 支持模糊匹配
        # @type SearchWord: String
        # @param ExchangeTypeFilters: 筛选 exchange 类型, 数组中每个元素为选中的过滤类型，仅支持 direct、fanout、topic、header
        # @type ExchangeTypeFilters: Array
        # @param ExchangeCreatorFilters: 筛选 exchange 创建来源,  "system":"系统创建", "user":"用户创建"
        # @type ExchangeCreatorFilters: Array
        # @param ExchangeName: exchange 名称，用于精确匹配
        # @type ExchangeName: String
        # @param SortElement: 排序依据的字段：
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # ascend：升序
        # descend：降序
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :ExchangeTypeFilters, :ExchangeCreatorFilters, :ExchangeName, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, exchangetypefilters=nil, exchangecreatorfilters=nil, exchangename=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @ExchangeTypeFilters = exchangetypefilters
          @ExchangeCreatorFilters = exchangecreatorfilters
          @ExchangeName = exchangename
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @ExchangeTypeFilters = params['ExchangeTypeFilters']
          @ExchangeCreatorFilters = params['ExchangeCreatorFilters']
          @ExchangeName = params['ExchangeName']
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQExchanges返回参数结构体
      class DescribeRabbitMQExchangesResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeInfoList: 策略列表信息
        # @type ExchangeInfoList: Array
        # @param TotalCount: 策略结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeInfoList, :TotalCount, :RequestId

        def initialize(exchangeinfolist=nil, totalcount=nil, requestid=nil)
          @ExchangeInfoList = exchangeinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExchangeInfoList'].nil?
            @ExchangeInfoList = []
            params['ExchangeInfoList'].each do |i|
              rabbitmqexchangelistinfo_tmp = RabbitMQExchangeListInfo.new
              rabbitmqexchangelistinfo_tmp.deserialize(i)
              @ExchangeInfoList << rabbitmqexchangelistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQNodeList请求参数结构体
      class DescribeRabbitMQNodeListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认值 0
        # @type Offset: Integer
        # @param Limit: 一页限制，默认值 20
        # @type Limit: Integer
        # @param NodeName: 模糊搜索节点名字
        # @type NodeName: String
        # @param Filters: 过滤参数的名字和数值，当前仅支持根据节点状态筛选。
        # "Name": "nodeStatus"
        # "Value": running or down
        # @type Filters: Array
        # @param SortElement: 按指定元素排序，现在只有2个
        # cpuUsage：节点CPU利用率
        # diskUsage：节点磁盘利用率
        # @type SortElement: String
        # @param SortOrder: 升序/降序
        # ascend/descend
        # @type SortOrder: String

        attr_accessor :InstanceId, :Offset, :Limit, :NodeName, :Filters, :SortElement, :SortOrder

        def initialize(instanceid=nil, offset=nil, limit=nil, nodename=nil, filters=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @NodeName = nodename
          @Filters = filters
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NodeName = params['NodeName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQNodeList返回参数结构体
      class DescribeRabbitMQNodeListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群节点数量
        # @type TotalCount: Integer
        # @param NodeList: 集群节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodeList, :RequestId

        def initialize(totalcount=nil, nodelist=nil, requestid=nil)
          @TotalCount = totalcount
          @NodeList = nodelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              rabbitmqprivatenode_tmp = RabbitMQPrivateNode.new
              rabbitmqprivatenode_tmp.deserialize(i)
              @NodeList << rabbitmqprivatenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQPermission请求参数结构体
      class DescribeRabbitMQPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到 Vhost 名称。
        # @type VirtualHost: String
        # @param Offset: 分页 Offset，默认 0
        # @type Offset: Integer
        # @param Limit: 分页 Limit，默认 20
        # @type Limit: Integer

        attr_accessor :InstanceId, :User, :VirtualHost, :Offset, :Limit

        def initialize(instanceid=nil, user=nil, virtualhost=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRabbitMQPermission返回参数结构体
      class DescribeRabbitMQPermissionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回权限数量
        # @type TotalCount: Integer
        # @param RabbitMQPermissionList: 权限详情列表
        # @type RabbitMQPermissionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RabbitMQPermissionList, :RequestId

        def initialize(totalcount=nil, rabbitmqpermissionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @RabbitMQPermissionList = rabbitmqpermissionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RabbitMQPermissionList'].nil?
            @RabbitMQPermissionList = []
            params['RabbitMQPermissionList'].each do |i|
              rabbitmqpermission_tmp = RabbitMQPermission.new
              rabbitmqpermission_tmp.deserialize(i)
              @RabbitMQPermissionList << rabbitmqpermission_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQQueueDetail请求参数结构体
      class DescribeRabbitMQQueueDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到 Vhost 名称
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
        end
      end

      # DescribeRabbitMQQueueDetail返回参数结构体
      class DescribeRabbitMQQueueDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param QueueType: 队列类型,取值classic或quorum
        # @type QueueType: String
        # @param Consumers: 在线消费者数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consumers: Integer
        # @param Durable: 持久标记
        # @type Durable: Boolean
        # @param AutoDelete: 自动清除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoDelete: Boolean
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param MessageTTL: MessageTTL参数,classic类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTTL: Integer
        # @param AutoExpire: AutoExpire参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoExpire: Integer
        # @param MaxLength: MaxLength参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxLength: Integer
        # @param MaxLengthBytes: MaxLengthBytes参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxLengthBytes: Integer
        # @param DeliveryLimit: DeliveryLimit参数,quorum类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliveryLimit: Integer
        # @param OverflowBehaviour: OverflowBehaviour参数,取值为drop-head, reject-publish或reject-publish-dlx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverflowBehaviour: String
        # @param DeadLetterExchange: DeadLetterExchange参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: DeadLetterRoutingKey参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterRoutingKey: String
        # @param SingleActiveConsumer: SingleActiveConsumer参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleActiveConsumer: Boolean
        # @param MaximumPriority: MaximumPriority参数,classic类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumPriority: Integer
        # @param LazyMode: LazyMode参数,classic类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LazyMode: Boolean
        # @param MasterLocator: MasterLocator参数,classic类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterLocator: String
        # @param MaxInMemoryLength: MaxInMemoryLength参数,quorum类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInMemoryLength: Integer
        # @param MaxInMemoryBytes: MaxInMemoryBytes参数,quorum类型专用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInMemoryBytes: Integer
        # @param CreateTime: 创建时间戳,单位秒
        # @type CreateTime: Integer
        # @param Node: 节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Node: String
        # @param DeadLetterStrategy: 仲裁队列死信一致性策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterStrategy: String
        # @param QueueLeaderLocator: 仲裁队列的领导者选举策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueLeaderLocator: String
        # @param QuorumInitialGroupSize: 仲裁队列的初始副本组大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuorumInitialGroupSize: Integer
        # @param Exclusive: 是否为独占队列
        # @type Exclusive: Boolean
        # @param Policy: 生效的策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value
        # @type Arguments: String
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName, :QueueType, :Consumers, :Durable, :AutoDelete, :Remark, :MessageTTL, :AutoExpire, :MaxLength, :MaxLengthBytes, :DeliveryLimit, :OverflowBehaviour, :DeadLetterExchange, :DeadLetterRoutingKey, :SingleActiveConsumer, :MaximumPriority, :LazyMode, :MasterLocator, :MaxInMemoryLength, :MaxInMemoryBytes, :CreateTime, :Node, :DeadLetterStrategy, :QueueLeaderLocator, :QuorumInitialGroupSize, :Exclusive, :Policy, :Arguments, :CreateTs, :ModifyTs, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil, queuetype=nil, consumers=nil, durable=nil, autodelete=nil, remark=nil, messagettl=nil, autoexpire=nil, maxlength=nil, maxlengthbytes=nil, deliverylimit=nil, overflowbehaviour=nil, deadletterexchange=nil, deadletterroutingkey=nil, singleactiveconsumer=nil, maximumpriority=nil, lazymode=nil, masterlocator=nil, maxinmemorylength=nil, maxinmemorybytes=nil, createtime=nil, node=nil, deadletterstrategy=nil, queueleaderlocator=nil, quoruminitialgroupsize=nil, exclusive=nil, policy=nil, arguments=nil, createts=nil, modifyts=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
          @QueueType = queuetype
          @Consumers = consumers
          @Durable = durable
          @AutoDelete = autodelete
          @Remark = remark
          @MessageTTL = messagettl
          @AutoExpire = autoexpire
          @MaxLength = maxlength
          @MaxLengthBytes = maxlengthbytes
          @DeliveryLimit = deliverylimit
          @OverflowBehaviour = overflowbehaviour
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
          @SingleActiveConsumer = singleactiveconsumer
          @MaximumPriority = maximumpriority
          @LazyMode = lazymode
          @MasterLocator = masterlocator
          @MaxInMemoryLength = maxinmemorylength
          @MaxInMemoryBytes = maxinmemorybytes
          @CreateTime = createtime
          @Node = node
          @DeadLetterStrategy = deadletterstrategy
          @QueueLeaderLocator = queueleaderlocator
          @QuorumInitialGroupSize = quoruminitialgroupsize
          @Exclusive = exclusive
          @Policy = policy
          @Arguments = arguments
          @CreateTs = createts
          @ModifyTs = modifyts
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
          @QueueType = params['QueueType']
          @Consumers = params['Consumers']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Remark = params['Remark']
          @MessageTTL = params['MessageTTL']
          @AutoExpire = params['AutoExpire']
          @MaxLength = params['MaxLength']
          @MaxLengthBytes = params['MaxLengthBytes']
          @DeliveryLimit = params['DeliveryLimit']
          @OverflowBehaviour = params['OverflowBehaviour']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
          @SingleActiveConsumer = params['SingleActiveConsumer']
          @MaximumPriority = params['MaximumPriority']
          @LazyMode = params['LazyMode']
          @MasterLocator = params['MasterLocator']
          @MaxInMemoryLength = params['MaxInMemoryLength']
          @MaxInMemoryBytes = params['MaxInMemoryBytes']
          @CreateTime = params['CreateTime']
          @Node = params['Node']
          @DeadLetterStrategy = params['DeadLetterStrategy']
          @QueueLeaderLocator = params['QueueLeaderLocator']
          @QuorumInitialGroupSize = params['QuorumInitialGroupSize']
          @Exclusive = params['Exclusive']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQQueues请求参数结构体
      class DescribeRabbitMQQueuesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param Offset: 分页 Offset，默认 0
        # @type Offset: Integer
        # @param Limit: 分页 Limit，默认 20
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String
        # @param QueueType: 队列类型筛选，不填或 "all"：筛选普通队列 和 quorum 队列；"classic"：筛选 classic(普通) 队列；"quorum"：筛选 quorum 队列
        # @type QueueType: String
        # @param SortElement: 排序依据的字段：
        # ConsumerNumber - 在线消费者数量；
        # MessageHeapCount - 消息堆积数；
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # ascend：升序
        # descend：降序
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :QueueType, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, queuetype=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @QueueType = queuetype
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @QueueType = params['QueueType']
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQQueues返回参数结构体
      class DescribeRabbitMQQueuesResponse < TencentCloud::Common::AbstractModel
        # @param QueueInfoList: 队列列表信息
        # @type QueueInfoList: Array
        # @param TotalCount: 队列数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueInfoList, :TotalCount, :RequestId

        def initialize(queueinfolist=nil, totalcount=nil, requestid=nil)
          @QueueInfoList = queueinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QueueInfoList'].nil?
            @QueueInfoList = []
            params['QueueInfoList'].each do |i|
              rabbitmqqueuelistinfo_tmp = RabbitMQQueueListInfo.new
              rabbitmqqueuelistinfo_tmp.deserialize(i)
              @QueueInfoList << rabbitmqqueuelistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQUser请求参数结构体
      class DescribeRabbitMQUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param SearchUser: 用户名检索，支持前缀匹配，后缀匹配
        # @type SearchUser: String
        # @param Offset: 分页 Offset，默认 0
        # @type Offset: Integer
        # @param Limit: 分页 Limit，默认 20
        # @type Limit: Integer
        # @param User: 用户名，精确查询
        # @type User: String
        # @param Tags: 用户标签，用于决定改用户访问 RabbitMQ Management 的权限范围
        # management：普通控制台用户，monitoring：管理型控制台用户，其他值：非控制台用户
        # @type Tags: Array

        attr_accessor :InstanceId, :SearchUser, :Offset, :Limit, :User, :Tags

        def initialize(instanceid=nil, searchuser=nil, offset=nil, limit=nil, user=nil, tags=nil)
          @InstanceId = instanceid
          @SearchUser = searchuser
          @Offset = offset
          @Limit = limit
          @User = user
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchUser = params['SearchUser']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @User = params['User']
          @Tags = params['Tags']
        end
      end

      # DescribeRabbitMQUser返回参数结构体
      class DescribeRabbitMQUserResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的User数量
        # @type TotalCount: Integer
        # @param RabbitMQUserList: 当前已创建的RabbitMQ用户列表
        # @type RabbitMQUserList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RabbitMQUserList, :RequestId

        def initialize(totalcount=nil, rabbitmquserlist=nil, requestid=nil)
          @TotalCount = totalcount
          @RabbitMQUserList = rabbitmquserlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RabbitMQUserList'].nil?
            @RabbitMQUserList = []
            params['RabbitMQUserList'].each do |i|
              rabbitmquser_tmp = RabbitMQUser.new
              rabbitmquser_tmp.deserialize(i)
              @RabbitMQUserList << rabbitmquser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQVipInstance请求参数结构体
      class DescribeRabbitMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRabbitMQVipInstance返回参数结构体
      class DescribeRabbitMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQClusterInfo`
        # @param ClusterSpecInfo: 集群规格信息
        # @type ClusterSpecInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQClusterSpecInfo`
        # @param ClusterNetInfo: 集群访问
        # @type ClusterNetInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQClusterAccessInfo`
        # @param ClusterWhiteListInfo: 集群白名单
        # @type ClusterWhiteListInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQClusterWhiteListInfo`
        # @param VirtualHostQuota: vhost配额信息
        # @type VirtualHostQuota: :class:`Tencentcloud::Tdmq.v20200217.models.VirtualHostQuota`
        # @param ExchangeQuota: exchange配额信息
        # @type ExchangeQuota: :class:`Tencentcloud::Tdmq.v20200217.models.ExchangeQuota`
        # @param QueueQuota: queue配额信息
        # @type QueueQuota: :class:`Tencentcloud::Tdmq.v20200217.models.QueueQuota`
        # @param UserQuota: 用户配额信息
        # @type UserQuota: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQUserQuota`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterInfo, :ClusterSpecInfo, :ClusterNetInfo, :ClusterWhiteListInfo, :VirtualHostQuota, :ExchangeQuota, :QueueQuota, :UserQuota, :RequestId

        def initialize(clusterinfo=nil, clusterspecinfo=nil, clusternetinfo=nil, clusterwhitelistinfo=nil, virtualhostquota=nil, exchangequota=nil, queuequota=nil, userquota=nil, requestid=nil)
          @ClusterInfo = clusterinfo
          @ClusterSpecInfo = clusterspecinfo
          @ClusterNetInfo = clusternetinfo
          @ClusterWhiteListInfo = clusterwhitelistinfo
          @VirtualHostQuota = virtualhostquota
          @ExchangeQuota = exchangequota
          @QueueQuota = queuequota
          @UserQuota = userquota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterInfo'].nil?
            @ClusterInfo = RabbitMQClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['ClusterSpecInfo'].nil?
            @ClusterSpecInfo = RabbitMQClusterSpecInfo.new
            @ClusterSpecInfo.deserialize(params['ClusterSpecInfo'])
          end
          unless params['ClusterNetInfo'].nil?
            @ClusterNetInfo = RabbitMQClusterAccessInfo.new
            @ClusterNetInfo.deserialize(params['ClusterNetInfo'])
          end
          unless params['ClusterWhiteListInfo'].nil?
            @ClusterWhiteListInfo = RabbitMQClusterWhiteListInfo.new
            @ClusterWhiteListInfo.deserialize(params['ClusterWhiteListInfo'])
          end
          unless params['VirtualHostQuota'].nil?
            @VirtualHostQuota = VirtualHostQuota.new
            @VirtualHostQuota.deserialize(params['VirtualHostQuota'])
          end
          unless params['ExchangeQuota'].nil?
            @ExchangeQuota = ExchangeQuota.new
            @ExchangeQuota.deserialize(params['ExchangeQuota'])
          end
          unless params['QueueQuota'].nil?
            @QueueQuota = QueueQuota.new
            @QueueQuota.deserialize(params['QueueQuota'])
          end
          unless params['UserQuota'].nil?
            @UserQuota = RabbitMQUserQuota.new
            @UserQuota.deserialize(params['UserQuota'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQVipInstances请求参数结构体
      class DescribeRabbitMQVipInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Limit: 查询数目上限，默认 20
        # @type Limit: Integer
        # @param Offset: 查询起始位置，默认 0
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRabbitMQVipInstances返回参数结构体
      class DescribeRabbitMQVipInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 未分页的总数目
        # @type TotalCount: Integer
        # @param Instances: 实例信息列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              rabbitmqvipinstance_tmp = RabbitMQVipInstance.new
              rabbitmqvipinstance_tmp.deserialize(i)
              @Instances << rabbitmqvipinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQVirtualHost请求参数结构体
      class DescribeRabbitMQVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名,不传则查询全部
        # @type VirtualHost: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Filters: search-virtual-host：vhost名称模糊查询，之前前缀和后缀匹配
        # @type Filters: :class:`Tencentcloud::Tdmq.v20200217.models.Filter`
        # @param SortElement: 排序依据的字段：
        # MessageHeapCount - 消息堆积数；
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :Filters, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, filters=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQVirtualHost返回参数结构体
      class DescribeRabbitMQVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回vhost数量
        # @type TotalCount: Integer
        # @param VirtualHostList: vhost详情列表
        # @type VirtualHostList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VirtualHostList, :RequestId

        def initialize(totalcount=nil, virtualhostlist=nil, requestid=nil)
          @TotalCount = totalcount
          @VirtualHostList = virtualhostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VirtualHostList'].nil?
            @VirtualHostList = []
            params['VirtualHostList'].each do |i|
              rabbitmqvirtualhostinfo_tmp = RabbitMQVirtualHostInfo.new
              rabbitmqvirtualhostinfo_tmp.deserialize(i)
              @VirtualHostList << rabbitmqvirtualhostinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQCluster请求参数结构体
      class DescribeRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRocketMQCluster返回参数结构体
      class DescribeRocketMQClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterInfo`
        # @param ClusterConfig: 集群配置
        # @type ClusterConfig: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterConfig`
        # @param ClusterStats: 集群最近使用量，即将废弃，请使用腾讯云可观测平台获取相关数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStats: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterRecentStats`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterInfo, :ClusterConfig, :ClusterStats, :RequestId

        def initialize(clusterinfo=nil, clusterconfig=nil, clusterstats=nil, requestid=nil)
          @ClusterInfo = clusterinfo
          @ClusterConfig = clusterconfig
          @ClusterStats = clusterstats
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterInfo'].nil?
            @ClusterInfo = RocketMQClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['ClusterConfig'].nil?
            @ClusterConfig = RocketMQClusterConfig.new
            @ClusterConfig.deserialize(params['ClusterConfig'])
          end
          unless params['ClusterStats'].nil?
            @ClusterStats = RocketMQClusterRecentStats.new
            @ClusterStats.deserialize(params['ClusterStats'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQClusters请求参数结构体
      class DescribeRocketMQClustersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param IdKeyword: 按照集群ID关键字搜索
        # @type IdKeyword: String
        # @param NameKeyword: 按照集群名称关键字搜索
        # @type NameKeyword: String
        # @param ClusterIdList: 集群ID列表过滤
        # @type ClusterIdList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持标签过滤。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :IdKeyword, :NameKeyword, :ClusterIdList, :IsTagFilter, :Filters

        def initialize(offset=nil, limit=nil, idkeyword=nil, namekeyword=nil, clusteridlist=nil, istagfilter=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @IdKeyword = idkeyword
          @NameKeyword = namekeyword
          @ClusterIdList = clusteridlist
          @IsTagFilter = istagfilter
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IdKeyword = params['IdKeyword']
          @NameKeyword = params['NameKeyword']
          @ClusterIdList = params['ClusterIdList']
          @IsTagFilter = params['IsTagFilter']
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

      # DescribeRocketMQClusters返回参数结构体
      class DescribeRocketMQClustersResponse < TencentCloud::Common::AbstractModel
        # @param ClusterList: 集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterList: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterList, :TotalCount, :RequestId

        def initialize(clusterlist=nil, totalcount=nil, requestid=nil)
          @ClusterList = clusterlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              rocketmqclusterdetail_tmp = RocketMQClusterDetail.new
              rocketmqclusterdetail_tmp.deserialize(i)
              @ClusterList << rocketmqclusterdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQConsumeStats请求参数结构体
      class DescribeRocketMQConsumeStatsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 实例ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param ConsumerGroup: 消费组
        # @type ConsumerGroup: String

        attr_accessor :ClusterId, :NamespaceId, :ConsumerGroup

        def initialize(clusterid=nil, namespaceid=nil, consumergroup=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @ConsumerGroup = consumergroup
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @ConsumerGroup = params['ConsumerGroup']
        end
      end

      # DescribeRocketMQConsumeStats返回参数结构体
      class DescribeRocketMQConsumeStatsResponse < TencentCloud::Common::AbstractModel
        # @param ConsumerStatsList: 消费详情列表
        # @type ConsumerStatsList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsumerStatsList, :RequestId

        def initialize(consumerstatslist=nil, requestid=nil)
          @ConsumerStatsList = consumerstatslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConsumerStatsList'].nil?
            @ConsumerStatsList = []
            params['ConsumerStatsList'].each do |i|
              consumerstats_tmp = ConsumerStats.new
              consumerstats_tmp.deserialize(i)
              @ConsumerStatsList << consumerstats_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQConsumerConnectionDetail请求参数结构体
      class DescribeRocketMQConsumerConnectionDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupId: 消费组名称
        # @type GroupId: String
        # @param ClientId: 消费端实例ID
        # @type ClientId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param FilterType: 按主题类型过滤查询结果，可选择Normal, GlobalOrder, PartitionedOrder, Retry, Transaction, DeadLetter
        # @type FilterType: Array

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :ClientId, :Offset, :Limit, :FilterType

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, clientid=nil, offset=nil, limit=nil, filtertype=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @ClientId = clientid
          @Offset = offset
          @Limit = limit
          @FilterType = filtertype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @ClientId = params['ClientId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterType = params['FilterType']
        end
      end

      # DescribeRocketMQConsumerConnectionDetail返回参数结构体
      class DescribeRocketMQConsumerConnectionDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Details: 消费端主题信息列表
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              rocketmqconsumertopic_tmp = RocketMQConsumerTopic.new
              rocketmqconsumertopic_tmp.deserialize(i)
              @Details << rocketmqconsumertopic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQConsumerConnections请求参数结构体
      class DescribeRocketMQConsumerConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupId: 消费组ID
        # @type GroupId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param SortedBy: 对查询结果排序，此为排序字段，目前支持Accumulative（消息堆积量）
        # @type SortedBy: String
        # @param SortOrder: 查询结果排序规则，ASC为升序，DESC为降序
        # @type SortOrder: String

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :Offset, :Limit, :SortedBy, :SortOrder

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, offset=nil, limit=nil, sortedby=nil, sortorder=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @SortedBy = sortedby
          @SortOrder = sortorder
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortedBy = params['SortedBy']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRocketMQConsumerConnections返回参数结构体
      class DescribeRocketMQConsumerConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param Connections: 在线消费者信息
        # @type Connections: Array
        # @param GroupDetail: 订阅组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupDetail: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQGroup`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Connections, :GroupDetail, :RequestId

        def initialize(totalcount=nil, connections=nil, groupdetail=nil, requestid=nil)
          @TotalCount = totalcount
          @Connections = connections
          @GroupDetail = groupdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Connections'].nil?
            @Connections = []
            params['Connections'].each do |i|
              rocketmqconsumerconnection_tmp = RocketMQConsumerConnection.new
              rocketmqconsumerconnection_tmp.deserialize(i)
              @Connections << rocketmqconsumerconnection_tmp
            end
          end
          unless params['GroupDetail'].nil?
            @GroupDetail = RocketMQGroup.new
            @GroupDetail.deserialize(params['GroupDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQEnvironmentRoles请求参数结构体
      class DescribeRocketMQEnvironmentRolesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 必填字段，RocketMQ集群的ID
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Filters: RoleName按照角色名进行过滤，精确查询。类型：String必选：否
        # @type Filters: Array

        attr_accessor :ClusterId, :EnvironmentId, :Offset, :Limit, :RoleName, :Filters

        def initialize(clusterid=nil, environmentid=nil, offset=nil, limit=nil, rolename=nil, filters=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @RoleName = rolename
          @Filters = filters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeRocketMQEnvironmentRoles返回参数结构体
      class DescribeRocketMQEnvironmentRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param EnvironmentRoleSets: 命名空间角色集合。
        # @type EnvironmentRoleSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRocketMQGroups请求参数结构体
      class DescribeRocketMQGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param FilterTopic: 主题名称，输入此参数可查询该主题下所有的订阅组
        # @type FilterTopic: String
        # @param FilterGroup: 按消费组名称查询消费组，支持模糊查询
        # @type FilterGroup: String
        # @param SortedBy: 按照指定字段排序，可选值为tps，accumulative
        # @type SortedBy: String
        # @param SortOrder: 按升序或降序排列，可选值为asc，desc
        # @type SortOrder: String
        # @param FilterOneGroup: 订阅组名称，指定此参数后将只返回该订阅组信息
        # @type FilterOneGroup: String
        # @param Types: group类型
        # @type Types: Array

        attr_accessor :ClusterId, :NamespaceId, :Offset, :Limit, :FilterTopic, :FilterGroup, :SortedBy, :SortOrder, :FilterOneGroup, :Types

        def initialize(clusterid=nil, namespaceid=nil, offset=nil, limit=nil, filtertopic=nil, filtergroup=nil, sortedby=nil, sortorder=nil, filteronegroup=nil, types=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Offset = offset
          @Limit = limit
          @FilterTopic = filtertopic
          @FilterGroup = filtergroup
          @SortedBy = sortedby
          @SortOrder = sortorder
          @FilterOneGroup = filteronegroup
          @Types = types
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterTopic = params['FilterTopic']
          @FilterGroup = params['FilterGroup']
          @SortedBy = params['SortedBy']
          @SortOrder = params['SortOrder']
          @FilterOneGroup = params['FilterOneGroup']
          @Types = params['Types']
        end
      end

      # DescribeRocketMQGroups返回参数结构体
      class DescribeRocketMQGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Groups: 订阅组列表
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Groups, :RequestId

        def initialize(totalcount=nil, groups=nil, requestid=nil)
          @TotalCount = totalcount
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              rocketmqgroup_tmp = RocketMQGroup.new
              rocketmqgroup_tmp.deserialize(i)
              @Groups << rocketmqgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQMigratingTopicList请求参数结构体
      class DescribeRocketMQMigratingTopicListRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 迁移任务名称
        # @type TaskId: String
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: 查询过滤器，支持topicname、MigrationStatus查询
        # @type Filters: Array

        attr_accessor :TaskId, :Limit, :Offset, :Filters

        def initialize(taskid=nil, limit=nil, offset=nil, filters=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeRocketMQMigratingTopicList返回参数结构体
      class DescribeRocketMQMigratingTopicListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param MigrateTopics: 迁移topic列表
        # @type MigrateTopics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MigrateTopics, :RequestId

        def initialize(totalcount=nil, migratetopics=nil, requestid=nil)
          @TotalCount = totalcount
          @MigrateTopics = migratetopics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MigrateTopics'].nil?
            @MigrateTopics = []
            params['MigrateTopics'].each do |i|
              migratetopic_tmp = MigrateTopic.new
              migratetopic_tmp.deserialize(i)
              @MigrateTopics << migratetopic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQMsg请求参数结构体
      class DescribeRocketMQMsgRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间
        # @type EnvironmentId: String
        # @param TopicName: 主题，查询死信时传groupId
        # @type TopicName: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param PulsarMsgId: pulsar消息id
        # @type PulsarMsgId: String
        # @param QueryDlqMsg: 查询死信时该值为true，只对Rocketmq有效
        # @type QueryDlqMsg: Boolean
        # @param QueryDeadLetterMessage: 查询死信时该值为true，只对Rocketmq有效
        # @type QueryDeadLetterMessage: Boolean
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param FilterTrackGroup: 根据消费组名称过滤消费详情
        # @type FilterTrackGroup: String

        attr_accessor :ClusterId, :EnvironmentId, :TopicName, :MsgId, :PulsarMsgId, :QueryDlqMsg, :QueryDeadLetterMessage, :Offset, :Limit, :FilterTrackGroup
        extend Gem::Deprecate
        deprecate :QueryDlqMsg, :none, 2025, 7
        deprecate :QueryDlqMsg=, :none, 2025, 7

        def initialize(clusterid=nil, environmentid=nil, topicname=nil, msgid=nil, pulsarmsgid=nil, querydlqmsg=nil, querydeadlettermessage=nil, offset=nil, limit=nil, filtertrackgroup=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @TopicName = topicname
          @MsgId = msgid
          @PulsarMsgId = pulsarmsgid
          @QueryDlqMsg = querydlqmsg
          @QueryDeadLetterMessage = querydeadlettermessage
          @Offset = offset
          @Limit = limit
          @FilterTrackGroup = filtertrackgroup
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @MsgId = params['MsgId']
          @PulsarMsgId = params['PulsarMsgId']
          @QueryDlqMsg = params['QueryDlqMsg']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterTrackGroup = params['FilterTrackGroup']
        end
      end

      # DescribeRocketMQMsg返回参数结构体
      class DescribeRocketMQMsgResponse < TencentCloud::Common::AbstractModel
        # @param Body: 消息体
        # @type Body: String
        # @param Properties: 详情参数
        # @type Properties: String
        # @param ProduceTime: 生产时间
        # @type ProduceTime: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param ProducerAddr: 生产者地址
        # @type ProducerAddr: String
        # @param MessageTracks: 消费组消费情况列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTracks: Array
        # @param ShowTopicName: 详情页展示的topic名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowTopicName: String
        # @param MessageTracksCount: 消费组消费情况列表总数
        # @type MessageTracksCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Body, :Properties, :ProduceTime, :MsgId, :ProducerAddr, :MessageTracks, :ShowTopicName, :MessageTracksCount, :RequestId

        def initialize(body=nil, properties=nil, producetime=nil, msgid=nil, produceraddr=nil, messagetracks=nil, showtopicname=nil, messagetrackscount=nil, requestid=nil)
          @Body = body
          @Properties = properties
          @ProduceTime = producetime
          @MsgId = msgid
          @ProducerAddr = produceraddr
          @MessageTracks = messagetracks
          @ShowTopicName = showtopicname
          @MessageTracksCount = messagetrackscount
          @RequestId = requestid
        end

        def deserialize(params)
          @Body = params['Body']
          @Properties = params['Properties']
          @ProduceTime = params['ProduceTime']
          @MsgId = params['MsgId']
          @ProducerAddr = params['ProducerAddr']
          unless params['MessageTracks'].nil?
            @MessageTracks = []
            params['MessageTracks'].each do |i|
              rocketmqmessagetrack_tmp = RocketMQMessageTrack.new
              rocketmqmessagetrack_tmp.deserialize(i)
              @MessageTracks << rocketmqmessagetrack_tmp
            end
          end
          @ShowTopicName = params['ShowTopicName']
          @MessageTracksCount = params['MessageTracksCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQMsgTrace请求参数结构体
      class DescribeRocketMQMsgTraceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间
        # @type EnvironmentId: String
        # @param TopicName: 主题，rocketmq查询死信时值为groupId
        # @type TopicName: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param GroupName: 消费组、订阅
        # @type GroupName: String
        # @param QueryDLQMsg: 查询死信时该值为true
        # @type QueryDLQMsg: Boolean
        # @param QueryDeadLetterMessage: 查询死信时该值为true
        # @type QueryDeadLetterMessage: String

        attr_accessor :ClusterId, :EnvironmentId, :TopicName, :MsgId, :GroupName, :QueryDLQMsg, :QueryDeadLetterMessage
        extend Gem::Deprecate
        deprecate :QueryDLQMsg, :none, 2025, 7
        deprecate :QueryDLQMsg=, :none, 2025, 7

        def initialize(clusterid=nil, environmentid=nil, topicname=nil, msgid=nil, groupname=nil, querydlqmsg=nil, querydeadlettermessage=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @TopicName = topicname
          @MsgId = msgid
          @GroupName = groupname
          @QueryDLQMsg = querydlqmsg
          @QueryDeadLetterMessage = querydeadlettermessage
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @MsgId = params['MsgId']
          @GroupName = params['GroupName']
          @QueryDLQMsg = params['QueryDLQMsg']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
        end
      end

      # DescribeRocketMQMsgTrace返回参数结构体
      class DescribeRocketMQMsgTraceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 轨迹详情列表
        # @type Result: Array
        # @param ShowTopicName: 消息轨迹页展示的topic名称
        # @type ShowTopicName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ShowTopicName, :RequestId

        def initialize(result=nil, showtopicname=nil, requestid=nil)
          @Result = result
          @ShowTopicName = showtopicname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              traceresult_tmp = TraceResult.new
              traceresult_tmp.deserialize(i)
              @Result << traceresult_tmp
            end
          end
          @ShowTopicName = params['ShowTopicName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQNamespaces请求参数结构体
      class DescribeRocketMQNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param NameKeyword: 按名称搜索
        # @type NameKeyword: String

        attr_accessor :ClusterId, :Offset, :Limit, :NameKeyword

        def initialize(clusterid=nil, offset=nil, limit=nil, namekeyword=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @NameKeyword = namekeyword
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NameKeyword = params['NameKeyword']
        end
      end

      # DescribeRocketMQNamespaces返回参数结构体
      class DescribeRocketMQNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Namespaces: 命名空间列表
        # @type Namespaces: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Namespaces, :TotalCount, :RequestId

        def initialize(namespaces=nil, totalcount=nil, requestid=nil)
          @Namespaces = namespaces
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Namespaces'].nil?
            @Namespaces = []
            params['Namespaces'].each do |i|
              rocketmqnamespace_tmp = RocketMQNamespace.new
              rocketmqnamespace_tmp.deserialize(i)
              @Namespaces << rocketmqnamespace_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQPublicAccessMonitorData请求参数结构体
      class DescribeRocketMQPublicAccessMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 专享集群ID
        # @type InstanceId: String
        # @param MetricName: 指标名称，仅支持单指标拉取。目前仅支持：ClientIntraffic; ClientOuttraffic
        # @type MetricName: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间，默认为当前时间
        # @type EndTime: String
        # @param Period: 监控统计周期，如60。默认为取值为300，单位为s。
        # @type Period: Integer

        attr_accessor :InstanceId, :MetricName, :StartTime, :EndTime, :Period

        def initialize(instanceid=nil, metricname=nil, starttime=nil, endtime=nil, period=nil)
          @InstanceId = instanceid
          @MetricName = metricname
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MetricName = params['MetricName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeRocketMQPublicAccessMonitorData返回参数结构体
      class DescribeRocketMQPublicAccessMonitorDataResponse < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param Period: 监控统计周期，如60。默认为取值为300，单位为s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Integer
        # @param StartTime: 起始时间，如2018-09-22T19:51:23+08:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间，如2018-09-22T20:51:23+08:00，默认为当前时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param DataPoints: 数据点数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPoints: Array
        # @param Msg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricName, :Period, :StartTime, :EndTime, :DataPoints, :Msg, :RequestId

        def initialize(metricname=nil, period=nil, starttime=nil, endtime=nil, datapoints=nil, msg=nil, requestid=nil)
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @DataPoints = datapoints
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              rocketmqdatapoint_tmp = RocketMQDataPoint.new
              rocketmqdatapoint_tmp.deserialize(i)
              @DataPoints << rocketmqdatapoint_tmp
            end
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQPublicAccessPoint请求参数结构体
      class DescribeRocketMQPublicAccessPointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，当前只支持专享集群
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRocketMQPublicAccessPoint返回参数结构体
      class DescribeRocketMQPublicAccessPointResponse < TencentCloud::Common::AbstractModel
        # @param Status: 公网接入点状态：
        # 0， 已开启
        # 1， 已关闭
        # 2，开启中
        # 3，关闭中
        # 4，修改中
        # @type Status: Integer
        # @param PayStatus: 支付状态：
        # 0, 未知
        # 1，正常
        # 2，欠费
        # @type PayStatus: Integer
        # @param AccessUrl: 接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessUrl: String
        # @param Rules: 安全访问规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param Bandwidth: 带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param PayMode: 付费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param BillingFlow: 公网是否按流量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingFlow: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :PayStatus, :AccessUrl, :Rules, :Bandwidth, :PayMode, :BillingFlow, :RequestId

        def initialize(status=nil, paystatus=nil, accessurl=nil, rules=nil, bandwidth=nil, paymode=nil, billingflow=nil, requestid=nil)
          @Status = status
          @PayStatus = paystatus
          @AccessUrl = accessurl
          @Rules = rules
          @Bandwidth = bandwidth
          @PayMode = paymode
          @BillingFlow = billingflow
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @PayStatus = params['PayStatus']
          @AccessUrl = params['AccessUrl']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @Rules << publicaccessrule_tmp
            end
          end
          @Bandwidth = params['Bandwidth']
          @PayMode = params['PayMode']
          @BillingFlow = params['BillingFlow']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQRoles请求参数结构体
      class DescribeRocketMQRolesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param RoleName: 角色名称，模糊查询
        # @type RoleName: String
        # @param Filters: RoleName按照角色名进行过滤，精确查询。类型：String必选：否
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :ClusterId, :RoleName, :Filters

        def initialize(offset=nil, limit=nil, clusterid=nil, rolename=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @RoleName = rolename
          @Filters = filters
        end

        def deserialize(params)
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

      # DescribeRocketMQRoles返回参数结构体
      class DescribeRocketMQRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param RoleSets: 角色数组。
        # @type RoleSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RoleSets, :RequestId

        def initialize(totalcount=nil, rolesets=nil, requestid=nil)
          @TotalCount = totalcount
          @RoleSets = rolesets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RoleSets'].nil?
            @RoleSets = []
            params['RoleSets'].each do |i|
              role_tmp = Role.new
              role_tmp.deserialize(i)
              @RoleSets << role_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQSmoothMigrationTaskList请求参数结构体
      class DescribeRocketMQSmoothMigrationTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大数量
        # @type Limit: Integer
        # @param Filters: 查询过滤器，
        # 支持的字段如下
        # TaskStatus, 支持多选
        # ConnectionType，支持多选
        # ClusterId，精确搜索
        # TaskName，支持模糊搜索
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeRocketMQSmoothMigrationTaskList返回参数结构体
      class DescribeRocketMQSmoothMigrationTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param Data: 任务列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              rocketmqsmoothmigrationtaskitem_tmp = RocketMQSmoothMigrationTaskItem.new
              rocketmqsmoothmigrationtaskitem_tmp.deserialize(i)
              @Data << rocketmqsmoothmigrationtaskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQSmoothMigrationTask请求参数结构体
      class DescribeRocketMQSmoothMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeRocketMQSmoothMigrationTask返回参数结构体
      class DescribeRocketMQSmoothMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ClusterId: 目标集群ID
        # @type ClusterId: String
        # @param SourceClusterName: 源集群名称
        # @type SourceClusterName: String
        # @param ConnectionType: 网络连接类型，
        # PUBLIC 公网
        # VPC 私有网络
        # OTHER 其它
        # @type ConnectionType: String
        # @param SourceClusterNameServer: 源集群NameServer地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceClusterNameServer: String
        # @param VpcId: 源集群所在私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 源集群所在子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param EnableACL: 是否开启ACL
        # @type EnableACL: Boolean
        # @param AccessKey: 源集群AccessKey
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: String
        # @param SecretKey: 元集群SecretKey
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param TaskError: 配置源集群时发生的错误
        # TIMEOUT 连接超时，
        # SERVER_ERROR 服务错误，
        # INTERNAL_ERROR 内部错误，
        # CONNECT_NAMESERVER_ERROR 连接nameserver错误
        # CONNECT_BROKER_ERROR 连接broker错误
        # ACL_WRONG ACL信息不正确

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskError: String
        # @param TaskStatus: 任务状态
        # Configuration 迁移配置
        # SourceConnecting 连接源集群中
        # SourceConnectionFailure 连接源集群失败
        # MetaDataImport 元数据导入
        # EndpointSetup 切换接入点
        # ServiceMigration 切流中
        # Completed 已完成
        # Cancelled 已取消
        # @type TaskStatus: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TopicTypeDistribution: 主题类型分布情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicTypeDistribution: Array
        # @param TopicStageDistribution: 主题迁移进度分布情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicStageDistribution: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskName, :ClusterId, :SourceClusterName, :ConnectionType, :SourceClusterNameServer, :VpcId, :SubnetId, :EnableACL, :AccessKey, :SecretKey, :TaskError, :TaskStatus, :TaskId, :TopicTypeDistribution, :TopicStageDistribution, :RequestId

        def initialize(taskname=nil, clusterid=nil, sourceclustername=nil, connectiontype=nil, sourceclusternameserver=nil, vpcid=nil, subnetid=nil, enableacl=nil, accesskey=nil, secretkey=nil, taskerror=nil, taskstatus=nil, taskid=nil, topictypedistribution=nil, topicstagedistribution=nil, requestid=nil)
          @TaskName = taskname
          @ClusterId = clusterid
          @SourceClusterName = sourceclustername
          @ConnectionType = connectiontype
          @SourceClusterNameServer = sourceclusternameserver
          @VpcId = vpcid
          @SubnetId = subnetid
          @EnableACL = enableacl
          @AccessKey = accesskey
          @SecretKey = secretkey
          @TaskError = taskerror
          @TaskStatus = taskstatus
          @TaskId = taskid
          @TopicTypeDistribution = topictypedistribution
          @TopicStageDistribution = topicstagedistribution
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ClusterId = params['ClusterId']
          @SourceClusterName = params['SourceClusterName']
          @ConnectionType = params['ConnectionType']
          @SourceClusterNameServer = params['SourceClusterNameServer']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EnableACL = params['EnableACL']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @TaskError = params['TaskError']
          @TaskStatus = params['TaskStatus']
          @TaskId = params['TaskId']
          unless params['TopicTypeDistribution'].nil?
            @TopicTypeDistribution = []
            params['TopicTypeDistribution'].each do |i|
              rocketmqtopicdistribution_tmp = RocketMQTopicDistribution.new
              rocketmqtopicdistribution_tmp.deserialize(i)
              @TopicTypeDistribution << rocketmqtopicdistribution_tmp
            end
          end
          unless params['TopicStageDistribution'].nil?
            @TopicStageDistribution = []
            params['TopicStageDistribution'].each do |i|
              rocketmqmigrationtopicdistribution_tmp = RocketMQMigrationTopicDistribution.new
              rocketmqmigrationtopicdistribution_tmp.deserialize(i)
              @TopicStageDistribution << rocketmqmigrationtopicdistribution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQSourceClusterGroupList请求参数结构体
      class DescribeRocketMQSourceClusterGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param TaskId: 迁移任务名称
        # @type TaskId: String
        # @param Filters: 查询过滤器，支持字段groupName，imported
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :TaskId, :Filters

        def initialize(limit=nil, offset=nil, taskid=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @TaskId = taskid
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TaskId = params['TaskId']
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

      # DescribeRocketMQSourceClusterGroupList返回参数结构体
      class DescribeRocketMQSourceClusterGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Groups: group列表
        # @type Groups: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :TotalCount, :RequestId

        def initialize(groups=nil, totalcount=nil, requestid=nil)
          @Groups = groups
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              rocketmqgroupconfigoutput_tmp = RocketMQGroupConfigOutput.new
              rocketmqgroupconfigoutput_tmp.deserialize(i)
              @Groups << rocketmqgroupconfigoutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQSourceClusterTopicList请求参数结构体
      class DescribeRocketMQSourceClusterTopicListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param TaskId: 迁移任务名
        # @type TaskId: String
        # @param Filters: 查询过滤器，支持字段如下
        # TopicName,
        # Type，Imported
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :TaskId, :Filters

        def initialize(limit=nil, offset=nil, taskid=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @TaskId = taskid
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TaskId = params['TaskId']
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

      # DescribeRocketMQSourceClusterTopicList返回参数结构体
      class DescribeRocketMQSourceClusterTopicListResponse < TencentCloud::Common::AbstractModel
        # @param Topics: topic层列表
        # @type Topics: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topics, :TotalCount, :RequestId

        def initialize(topics=nil, totalcount=nil, requestid=nil)
          @Topics = topics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              rocketmqtopicconfigoutput_tmp = RocketMQTopicConfigOutput.new
              rocketmqtopicconfigoutput_tmp.deserialize(i)
              @Topics << rocketmqtopicconfigoutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQSubscriptions请求参数结构体
      class DescribeRocketMQSubscriptionsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Group: 消费组名称
        # @type Group: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询限制条数
        # @type Limit: Integer

        attr_accessor :ClusterId, :Namespace, :Group, :Offset, :Limit

        def initialize(clusterid=nil, namespace=nil, group=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Namespace = namespace
          @Group = group
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRocketMQSubscriptions返回参数结构体
      class DescribeRocketMQSubscriptionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Subscriptions: 订阅关系列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subscriptions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Subscriptions, :RequestId

        def initialize(totalcount=nil, subscriptions=nil, requestid=nil)
          @TotalCount = totalcount
          @Subscriptions = subscriptions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Subscriptions'].nil?
            @Subscriptions = []
            params['Subscriptions'].each do |i|
              rocketmqsubscription_tmp = RocketMQSubscription.new
              rocketmqsubscription_tmp.deserialize(i)
              @Subscriptions << rocketmqsubscription_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQTopUsages请求参数结构体
      class DescribeRocketMQTopUsagesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param MetricName: 指标名称，支持以下：
        # consumeLag，消费组堆积数量
        # deadLetterCount，死信数量
        # topicRateIn,   Topic生产速率
        # topicRateOut，Topic消费速率
        # topicStorageSize，Topic存储空间
        # topicApiCalls，Topic API调用次数
        # @type MetricName: String
        # @param Limit: 排序数量，最大20
        # @type Limit: Integer

        attr_accessor :ClusterId, :MetricName, :Limit

        def initialize(clusterid=nil, metricname=nil, limit=nil)
          @ClusterId = clusterid
          @MetricName = metricname
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MetricName = params['MetricName']
          @Limit = params['Limit']
        end
      end

      # DescribeRocketMQTopUsages返回参数结构体
      class DescribeRocketMQTopUsagesResponse < TencentCloud::Common::AbstractModel
        # @param Values: 指标值列表
        # @type Values: Array
        # @param Dimensions: 指标值对应的维度组合，本接口存在以下几个维度：
        # tenant，namespace，group，topic
        # @type Dimensions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Values, :Dimensions, :RequestId

        def initialize(values=nil, dimensions=nil, requestid=nil)
          @Values = values
          @Dimensions = dimensions
          @RequestId = requestid
        end

        def deserialize(params)
          @Values = params['Values']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimensioninstance_tmp = DimensionInstance.new
              dimensioninstance_tmp.deserialize(i)
              @Dimensions << dimensioninstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQTopicMsgs请求参数结构体
      class DescribeRocketMQTopicMsgsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param EnvironmentId: 命名空间
        # @type EnvironmentId: String
        # @param TopicName: 主题名称，查询死信时为groupId
        # @type TopicName: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MsgId: 消息 ID
        # @type MsgId: String
        # @param MsgKey: 消息 key
        # @type MsgKey: String
        # @param Offset: 查询偏移
        # @type Offset: Integer
        # @param Limit: 查询限额
        # @type Limit: Integer
        # @param TaskRequestId: 标志一次分页事务
        # @type TaskRequestId: String
        # @param QueryDlqMsg: 死信查询时该值为true，只对Rocketmq有效
        # @type QueryDlqMsg: Boolean
        # @param NumOfLatestMsg: 查询最近N条消息 最大不超过1024，默认-1为其他查询条件
        # @type NumOfLatestMsg: Integer
        # @param Tag: TAG表达式
        # @type Tag: String
        # @param QueryDeadLetterMessage: 死信查询时该值为true，只对Rocketmq有效
        # @type QueryDeadLetterMessage: Boolean

        attr_accessor :ClusterId, :EnvironmentId, :TopicName, :StartTime, :EndTime, :MsgId, :MsgKey, :Offset, :Limit, :TaskRequestId, :QueryDlqMsg, :NumOfLatestMsg, :Tag, :QueryDeadLetterMessage
        extend Gem::Deprecate
        deprecate :QueryDlqMsg, :none, 2025, 7
        deprecate :QueryDlqMsg=, :none, 2025, 7

        def initialize(clusterid=nil, environmentid=nil, topicname=nil, starttime=nil, endtime=nil, msgid=nil, msgkey=nil, offset=nil, limit=nil, taskrequestid=nil, querydlqmsg=nil, numoflatestmsg=nil, tag=nil, querydeadlettermessage=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @TopicName = topicname
          @StartTime = starttime
          @EndTime = endtime
          @MsgId = msgid
          @MsgKey = msgkey
          @Offset = offset
          @Limit = limit
          @TaskRequestId = taskrequestid
          @QueryDlqMsg = querydlqmsg
          @NumOfLatestMsg = numoflatestmsg
          @Tag = tag
          @QueryDeadLetterMessage = querydeadlettermessage
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MsgId = params['MsgId']
          @MsgKey = params['MsgKey']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TaskRequestId = params['TaskRequestId']
          @QueryDlqMsg = params['QueryDlqMsg']
          @NumOfLatestMsg = params['NumOfLatestMsg']
          @Tag = params['Tag']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
        end
      end

      # DescribeRocketMQTopicMsgs返回参数结构体
      class DescribeRocketMQTopicMsgsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param TopicMsgLogSets: 消息列表
        # @type TopicMsgLogSets: Array
        # @param TaskRequestId: 标志一次分页事务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TopicMsgLogSets, :TaskRequestId, :RequestId

        def initialize(totalcount=nil, topicmsglogsets=nil, taskrequestid=nil, requestid=nil)
          @TotalCount = totalcount
          @TopicMsgLogSets = topicmsglogsets
          @TaskRequestId = taskrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicMsgLogSets'].nil?
            @TopicMsgLogSets = []
            params['TopicMsgLogSets'].each do |i|
              rocketmqmsglog_tmp = RocketMQMsgLog.new
              rocketmqmsglog_tmp.deserialize(i)
              @TopicMsgLogSets << rocketmqmsglog_tmp
            end
          end
          @TaskRequestId = params['TaskRequestId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQTopicStats请求参数结构体
      class DescribeRocketMQTopicStatsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 实例ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param TopicName: 主题名
        # @type TopicName: String

        attr_accessor :ClusterId, :NamespaceId, :TopicName

        def initialize(clusterid=nil, namespaceid=nil, topicname=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @TopicName = topicname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeRocketMQTopicStats返回参数结构体
      class DescribeRocketMQTopicStatsResponse < TencentCloud::Common::AbstractModel
        # @param TopicStatsList: 生产详情列表
        # @type TopicStatsList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicStatsList, :RequestId

        def initialize(topicstatslist=nil, requestid=nil)
          @TopicStatsList = topicstatslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicStatsList'].nil?
            @TopicStatsList = []
            params['TopicStatsList'].each do |i|
              topicstats_tmp = TopicStats.new
              topicstats_tmp.deserialize(i)
              @TopicStatsList << topicstats_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQTopicsByGroup请求参数结构体
      class DescribeRocketMQTopicsByGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupId: 消费组名称
        # @type GroupId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :Offset, :Limit

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRocketMQTopicsByGroup返回参数结构体
      class DescribeRocketMQTopicsByGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Topics: 主题列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Topics, :RequestId

        def initialize(totalcount=nil, topics=nil, requestid=nil)
          @TotalCount = totalcount
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Topics = params['Topics']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQTopics请求参数结构体
      class DescribeRocketMQTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制数
        # @type Limit: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param FilterType: 按主题类型过滤查询结果，可选择Normal, GlobalOrder, PartitionedOrder, Transaction
        # @type FilterType: Array
        # @param FilterName: 按主题名称搜索，支持模糊查询
        # @type FilterName: String
        # @param FilterGroup: 按订阅消费组名称过滤
        # @type FilterGroup: String

        attr_accessor :Offset, :Limit, :ClusterId, :NamespaceId, :FilterType, :FilterName, :FilterGroup

        def initialize(offset=nil, limit=nil, clusterid=nil, namespaceid=nil, filtertype=nil, filtername=nil, filtergroup=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @FilterType = filtertype
          @FilterName = filtername
          @FilterGroup = filtergroup
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @FilterType = params['FilterType']
          @FilterName = params['FilterName']
          @FilterGroup = params['FilterGroup']
        end
      end

      # DescribeRocketMQTopics返回参数结构体
      class DescribeRocketMQTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Topics: 主题信息列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Topics, :RequestId

        def initialize(totalcount=nil, topics=nil, requestid=nil)
          @TotalCount = totalcount
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              rocketmqtopic_tmp = RocketMQTopic.new
              rocketmqtopic_tmp.deserialize(i)
              @Topics << rocketmqtopic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQVipInstanceDetail请求参数结构体
      class DescribeRocketMQVipInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRocketMQVipInstanceDetail返回参数结构体
      class DescribeRocketMQVipInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterInfo`
        # @param InstanceConfig: 集群配置
        # @type InstanceConfig: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQInstanceConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterInfo, :InstanceConfig, :RequestId

        def initialize(clusterinfo=nil, instanceconfig=nil, requestid=nil)
          @ClusterInfo = clusterinfo
          @InstanceConfig = instanceconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterInfo'].nil?
            @ClusterInfo = RocketMQClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['InstanceConfig'].nil?
            @InstanceConfig = RocketMQInstanceConfig.new
            @InstanceConfig.deserialize(params['InstanceConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRocketMQVipInstances请求参数结构体
      class DescribeRocketMQVipInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件过滤器，支持的查询条件如下：
        # instanceIds - 实例ID
        # instanceName - 实例名称
        # status - 实例状态
        # @type Filters: Array
        # @param Limit: 查询数目上限，默认20
        # @type Limit: Integer
        # @param Offset: 查询起始位置
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRocketMQVipInstances返回参数结构体
      class DescribeRocketMQVipInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 未分页的总数目
        # @type TotalCount: Integer
        # @param Instances: 实例信息列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              rocketmqvipinstance_tmp = RocketMQVipInstance.new
              rocketmqvipinstance_tmp.deserialize(i)
              @Instances << rocketmqvipinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoles请求参数结构体
      class DescribeRolesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param RoleName: 角色名称，模糊查询
        # @type RoleName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param Filters: * RoleName
        # 按照角色名进行过滤，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :ClusterId, :RoleName, :Offset, :Limit, :Filters

        def initialize(clusterid=nil, rolename=nil, offset=nil, limit=nil, filters=nil)
          @ClusterId = clusterid
          @RoleName = rolename
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RoleName = params['RoleName']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeRoles返回参数结构体
      class DescribeRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param RoleSets: 角色数组。
        # @type RoleSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RoleSets, :RequestId

        def initialize(totalcount=nil, rolesets=nil, requestid=nil)
          @TotalCount = totalcount
          @RoleSets = rolesets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RoleSets'].nil?
            @RoleSets = []
            params['RoleSets'].each do |i|
              role_tmp = Role.new
              role_tmp.deserialize(i)
              @RoleSets << role_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscriptions请求参数结构体
      class DescribeSubscriptionsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param SubscriptionName: 订阅者名称，模糊匹配。
        # @type SubscriptionName: String
        # @param Filters: 数据过滤条件。
        # @type Filters: Array

        attr_accessor :EnvironmentId, :TopicName, :ClusterId, :Offset, :Limit, :SubscriptionName, :Filters

        def initialize(environmentid=nil, topicname=nil, clusterid=nil, offset=nil, limit=nil, subscriptionname=nil, filters=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @ClusterId = params['ClusterId']
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
        end
      end

      # DescribeSubscriptions返回参数结构体
      class DescribeSubscriptionsResponse < TencentCloud::Common::AbstractModel
        # @param SubscriptionSets: 订阅者集合数组。
        # @type SubscriptionSets: Array
        # @param TotalCount: 数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTopicMsgs请求参数结构体
      class DescribeTopicMsgsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :TopicName, :StartTime, :EndTime, :Offset, :Limit, :MsgId, :ClusterId

        def initialize(environmentid=nil, topicname=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, msgid=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @MsgId = msgid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MsgId = params['MsgId']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeTopicMsgs返回参数结构体
      class DescribeTopicMsgsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数。
        # @type TotalCount: Integer
        # @param TopicMsgLogSets: 消息日志列表。
        # @type TopicMsgLogSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TopicMsgLogSets, :RequestId

        def initialize(totalcount=nil, topicmsglogsets=nil, requestid=nil)
          @TotalCount = totalcount
          @TopicMsgLogSets = topicmsglogsets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicMsgLogSets'].nil?
            @TopicMsgLogSets = []
            params['TopicMsgLogSets'].each do |i|
              msglog_tmp = MsgLog.new
              msglog_tmp.deserialize(i)
              @TopicMsgLogSets << msglog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopics请求参数结构体
      class DescribeTopicsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param TopicName: 主题名模糊匹配。
        # @type TopicName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param TopicType: topic类型描述：
        # 0：非持久非分区主题类型；
        # 1：非持久分区主题类型；
        # 2：持久非分区主题类型；
        # 3：持久分区主题类型；
        # @type TopicType: Integer
        # @param Filters: * TopicName
        # 按照主题名字查询，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array
        # @param TopicCreator: 创建来源：
        # 1：用户创建
        # 2：系统创建
        # @type TopicCreator: Integer

        attr_accessor :EnvironmentId, :ClusterId, :TopicName, :Offset, :Limit, :TopicType, :Filters, :TopicCreator

        def initialize(environmentid=nil, clusterid=nil, topicname=nil, offset=nil, limit=nil, topictype=nil, filters=nil, topiccreator=nil)
          @EnvironmentId = environmentid
          @ClusterId = clusterid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @TopicType = topictype
          @Filters = filters
          @TopicCreator = topiccreator
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterId = params['ClusterId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicType = params['TopicType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @TopicCreator = params['TopicCreator']
        end
      end

      # DescribeTopics返回参数结构体
      class DescribeTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TopicSets: 主题集合数组。
        # @type TopicSets: Array
        # @param TotalCount: 主题数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # Topic&Group维度的权限配置
      class DetailedRolePerm < TencentCloud::Common::AbstractModel
        # @param Resource: 权限对应的资源
        # @type Resource: String
        # @param PermWrite: 是否开启生产权限
        # @type PermWrite: Boolean
        # @param PermRead: 是否开启消费权限
        # @type PermRead: Boolean
        # @param ResourceType: 授权资源类型（Topic:主题; Group:消费组）
        # @type ResourceType: String
        # @param Remark: 资源备注
        # @type Remark: String

        attr_accessor :Resource, :PermWrite, :PermRead, :ResourceType, :Remark

        def initialize(resource=nil, permwrite=nil, permread=nil, resourcetype=nil, remark=nil)
          @Resource = resource
          @PermWrite = permwrite
          @PermRead = permread
          @ResourceType = resourcetype
          @Remark = remark
        end

        def deserialize(params)
          @Resource = params['Resource']
          @PermWrite = params['PermWrite']
          @PermRead = params['PermRead']
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
        end
      end

      # 实例维度组合数组
      class DimensionInstance < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例的维度组合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: Array

        attr_accessor :Dimensions

        def initialize(dimensions=nil)
          @Dimensions = dimensions
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimensionopt_tmp = DimensionOpt.new
              dimensionopt_tmp.deserialize(i)
              @Dimensions << dimensionopt_tmp
            end
          end
        end
      end

      # 指标维度对象
      class DimensionOpt < TencentCloud::Common::AbstractModel
        # @param Name: 查询的维度名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 查询维度的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
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
        # @param RetentionPolicy: 消息保留策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`
        # @param AutoSubscriptionCreation: 是否自动创建订阅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSubscriptionCreation: Boolean

        attr_accessor :EnvironmentId, :Remark, :MsgTTL, :CreateTime, :UpdateTime, :NamespaceId, :NamespaceName, :TopicNum, :RetentionPolicy, :AutoSubscriptionCreation

        def initialize(environmentid=nil, remark=nil, msgttl=nil, createtime=nil, updatetime=nil, namespaceid=nil, namespacename=nil, topicnum=nil, retentionpolicy=nil, autosubscriptioncreation=nil)
          @EnvironmentId = environmentid
          @Remark = remark
          @MsgTTL = msgttl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @TopicNum = topicnum
          @RetentionPolicy = retentionpolicy
          @AutoSubscriptionCreation = autosubscriptioncreation
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
          unless params['RetentionPolicy'].nil?
            @RetentionPolicy = RetentionPolicy.new
            @RetentionPolicy.deserialize(params['RetentionPolicy'])
          end
          @AutoSubscriptionCreation = params['AutoSubscriptionCreation']
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

      # 批量绑定名字空间和角色权限关系
      class EnvironmentRoleSet < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 需要绑定的命名空间Id，不重复且存在资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param Permissions: 名字空间需要绑定的权限，枚举为 "consume" "produce" 组合，但是不为空

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: Array

        attr_accessor :EnvironmentId, :Permissions

        def initialize(environmentid=nil, permissions=nil)
          @EnvironmentId = environmentid
          @Permissions = permissions
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Permissions = params['Permissions']
        end
      end

      # exchange使用配额信息
      class ExchangeQuota < TencentCloud::Common::AbstractModel
        # @param MaxExchange: 可创建最大exchange数
        # @type MaxExchange: Integer
        # @param UsedExchange: 已创建exchange数
        # @type UsedExchange: Integer

        attr_accessor :MaxExchange, :UsedExchange

        def initialize(maxexchange=nil, usedexchange=nil)
          @MaxExchange = maxexchange
          @UsedExchange = usedexchange
        end

        def deserialize(params)
          @MaxExchange = params['MaxExchange']
          @UsedExchange = params['UsedExchange']
        end
      end

      # ExportRocketMQMessageDetail请求参数结构体
      class ExportRocketMQMessageDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param EnvironmentId: 应用命名空间
        # @type EnvironmentId: String
        # @param TopicName: Topic名称
        # 如果是死信消息 isDlqMsg=true
        # @type TopicName: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param IncludeMsgBody: 是否包含消息体
        # @type IncludeMsgBody: Boolean
        # @param DeadLetterMsg: 是否死信消息
        # @type DeadLetterMsg: Boolean

        attr_accessor :ClusterId, :EnvironmentId, :TopicName, :MsgId, :IncludeMsgBody, :DeadLetterMsg

        def initialize(clusterid=nil, environmentid=nil, topicname=nil, msgid=nil, includemsgbody=nil, deadlettermsg=nil)
          @ClusterId = clusterid
          @EnvironmentId = environmentid
          @TopicName = topicname
          @MsgId = msgid
          @IncludeMsgBody = includemsgbody
          @DeadLetterMsg = deadlettermsg
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @MsgId = params['MsgId']
          @IncludeMsgBody = params['IncludeMsgBody']
          @DeadLetterMsg = params['DeadLetterMsg']
        end
      end

      # ExportRocketMQMessageDetail返回参数结构体
      class ExportRocketMQMessageDetailResponse < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param BornTimestamp: 消息生成时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BornTimestamp: Integer
        # @param StoreTimestamp: 消息存储时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoreTimestamp: Integer
        # @param BornHost: 消息生产客户端地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BornHost: String
        # @param MsgTag: 消息Tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgTag: String
        # @param MsgKey: 消息Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgKey: String
        # @param Properties: 消息属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: String
        # @param ReConsumeTimes: 消息重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReConsumeTimes: Integer
        # @param MsgBody: Base64编码格式字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgBody: String
        # @param MsgBodyCRC: 消息内容的CRC32 Code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgBodyCRC: Integer
        # @param MsgBodySize: 消息体大小（单位K）
        # 当大于2048时不返回消息
        # @type MsgBodySize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MsgId, :BornTimestamp, :StoreTimestamp, :BornHost, :MsgTag, :MsgKey, :Properties, :ReConsumeTimes, :MsgBody, :MsgBodyCRC, :MsgBodySize, :RequestId

        def initialize(msgid=nil, borntimestamp=nil, storetimestamp=nil, bornhost=nil, msgtag=nil, msgkey=nil, properties=nil, reconsumetimes=nil, msgbody=nil, msgbodycrc=nil, msgbodysize=nil, requestid=nil)
          @MsgId = msgid
          @BornTimestamp = borntimestamp
          @StoreTimestamp = storetimestamp
          @BornHost = bornhost
          @MsgTag = msgtag
          @MsgKey = msgkey
          @Properties = properties
          @ReConsumeTimes = reconsumetimes
          @MsgBody = msgbody
          @MsgBodyCRC = msgbodycrc
          @MsgBodySize = msgbodysize
          @RequestId = requestid
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @BornTimestamp = params['BornTimestamp']
          @StoreTimestamp = params['StoreTimestamp']
          @BornHost = params['BornHost']
          @MsgTag = params['MsgTag']
          @MsgKey = params['MsgKey']
          @Properties = params['Properties']
          @ReConsumeTimes = params['ReConsumeTimes']
          @MsgBody = params['MsgBody']
          @MsgBodyCRC = params['MsgBodyCRC']
          @MsgBodySize = params['MsgBodySize']
          @RequestId = params['RequestId']
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

      # GetTopicList请求参数结构体
      class GetTopicListRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer

        attr_accessor :EnvironmentId, :ClusterId, :Offset, :Limit

        def initialize(environmentid=nil, clusterid=nil, offset=nil, limit=nil)
          @EnvironmentId = environmentid
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetTopicList返回参数结构体
      class GetTopicListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主题数量。
        # @type TotalCount: Integer
        # @param TopicList: 主题列表
        # @type TopicList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TopicList, :RequestId

        def initialize(totalcount=nil, topiclist=nil, requestid=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              topic_simplification_tmp = Topic_Simplification.new
              topic_simplification_tmp.deserialize(i)
              @TopicList << topic_simplification_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ImportRocketMQConsumerGroups请求参数结构体
      class ImportRocketMQConsumerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Groups: 导入topic
        # @type Groups: Array
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :Groups, :TaskId

        def initialize(groups=nil, taskid=nil)
          @Groups = groups
          @TaskId = taskid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              rocketmqgroupconfig_tmp = RocketMQGroupConfig.new
              rocketmqgroupconfig_tmp.deserialize(i)
              @Groups << rocketmqgroupconfig_tmp
            end
          end
          @TaskId = params['TaskId']
        end
      end

      # ImportRocketMQConsumerGroups返回参数结构体
      class ImportRocketMQConsumerGroupsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ImportRocketMQTopics请求参数结构体
      class ImportRocketMQTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Topics: 导入topic
        # @type Topics: Array
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :Topics, :TaskId

        def initialize(topics=nil, taskid=nil)
          @Topics = topics
          @TaskId = taskid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              rocketmqtopicconfig_tmp = RocketMQTopicConfig.new
              rocketmqtopicconfig_tmp.deserialize(i)
              @Topics << rocketmqtopicconfig_tmp
            end
          end
          @TaskId = params['TaskId']
        end
      end

      # ImportRocketMQTopics返回参数结构体
      class ImportRocketMQTopicsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 实例节点分布信息
      class InstanceNodeDistribution < TencentCloud::Common::AbstractModel
        # @param ZoneName: 可用区
        # @type ZoneName: String
        # @param ZoneId: 可用区id
        # @type ZoneId: String
        # @param NodeCount: 节点数
        # @type NodeCount: Integer
        # @param NodePermWipeFlag: 有调度任务且没有切回的可用区，此标识为true
        # @type NodePermWipeFlag: Boolean
        # @param ZoneStatus: 可用区状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneStatus: String

        attr_accessor :ZoneName, :ZoneId, :NodeCount, :NodePermWipeFlag, :ZoneStatus

        def initialize(zonename=nil, zoneid=nil, nodecount=nil, nodepermwipeflag=nil, zonestatus=nil)
          @ZoneName = zonename
          @ZoneId = zoneid
          @NodeCount = nodecount
          @NodePermWipeFlag = nodepermwipeflag
          @ZoneStatus = zonestatus
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @NodeCount = params['NodeCount']
          @NodePermWipeFlag = params['NodePermWipeFlag']
          @ZoneStatus = params['ZoneStatus']
        end
      end

      # 面向运营端的虚拟集群信息
      class InternalTenant < TencentCloud::Common::AbstractModel
        # @param TenantId: 虚拟集群ID
        # @type TenantId: String
        # @param TenantName: 虚拟集群名称
        # @type TenantName: String
        # @param CustomerUin: 客户UIN
        # @type CustomerUin: String
        # @param CustomerAppId: 客户的APPID
        # @type CustomerAppId: String
        # @param ClusterName: 物理集群名称
        # @type ClusterName: String
        # @param Type: 集群协议类型，支持的值为TDMQ，ROCKETMQ，AMQP，CMQ
        # @type Type: String
        # @param MaxNamespaces: 命名空间配额
        # @type MaxNamespaces: Integer
        # @param UsedNamespaces: 已使用命名空间配额
        # @type UsedNamespaces: Integer
        # @param MaxTopics: Topic配额
        # @type MaxTopics: Integer
        # @param UsedTopics: 已使用Topic配额
        # @type UsedTopics: Integer
        # @param MaxPartitions: Topic分区数配额
        # @type MaxPartitions: Integer
        # @param UsedPartitions: 已使用Topic分区数配额
        # @type UsedPartitions: Integer
        # @param MaxMsgBacklogSize: 存储配额, byte为单位
        # @type MaxMsgBacklogSize: Integer
        # @param MaxPublishTps: 命名空间最大生产TPS
        # @type MaxPublishTps: Integer
        # @param MaxRetention: 消息最大保留时间，秒为单位
        # @type MaxRetention: Integer
        # @param CreateTime: 创建时间，毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间，毫秒为单位
        # @type UpdateTime: Integer
        # @param MaxDispatchTps: 命名空间最大消费TPS
        # @type MaxDispatchTps: Integer
        # @param MaxDispatchRateInBytes: 命名空间最大消费带宽，byte为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDispatchRateInBytes: Integer
        # @param MaxPublishRateInBytes: 命名空间最大生产带宽，byte为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPublishRateInBytes: Integer
        # @param MaxRetentionSizeInMB: 消息最大保留空间，MB为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetentionSizeInMB: Integer
        # @param PublicAccessEnabled: public Access Enabled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccessEnabled: Boolean

        attr_accessor :TenantId, :TenantName, :CustomerUin, :CustomerAppId, :ClusterName, :Type, :MaxNamespaces, :UsedNamespaces, :MaxTopics, :UsedTopics, :MaxPartitions, :UsedPartitions, :MaxMsgBacklogSize, :MaxPublishTps, :MaxRetention, :CreateTime, :UpdateTime, :MaxDispatchTps, :MaxDispatchRateInBytes, :MaxPublishRateInBytes, :MaxRetentionSizeInMB, :PublicAccessEnabled

        def initialize(tenantid=nil, tenantname=nil, customeruin=nil, customerappid=nil, clustername=nil, type=nil, maxnamespaces=nil, usednamespaces=nil, maxtopics=nil, usedtopics=nil, maxpartitions=nil, usedpartitions=nil, maxmsgbacklogsize=nil, maxpublishtps=nil, maxretention=nil, createtime=nil, updatetime=nil, maxdispatchtps=nil, maxdispatchrateinbytes=nil, maxpublishrateinbytes=nil, maxretentionsizeinmb=nil, publicaccessenabled=nil)
          @TenantId = tenantid
          @TenantName = tenantname
          @CustomerUin = customeruin
          @CustomerAppId = customerappid
          @ClusterName = clustername
          @Type = type
          @MaxNamespaces = maxnamespaces
          @UsedNamespaces = usednamespaces
          @MaxTopics = maxtopics
          @UsedTopics = usedtopics
          @MaxPartitions = maxpartitions
          @UsedPartitions = usedpartitions
          @MaxMsgBacklogSize = maxmsgbacklogsize
          @MaxPublishTps = maxpublishtps
          @MaxRetention = maxretention
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MaxDispatchTps = maxdispatchtps
          @MaxDispatchRateInBytes = maxdispatchrateinbytes
          @MaxPublishRateInBytes = maxpublishrateinbytes
          @MaxRetentionSizeInMB = maxretentionsizeinmb
          @PublicAccessEnabled = publicaccessenabled
        end

        def deserialize(params)
          @TenantId = params['TenantId']
          @TenantName = params['TenantName']
          @CustomerUin = params['CustomerUin']
          @CustomerAppId = params['CustomerAppId']
          @ClusterName = params['ClusterName']
          @Type = params['Type']
          @MaxNamespaces = params['MaxNamespaces']
          @UsedNamespaces = params['UsedNamespaces']
          @MaxTopics = params['MaxTopics']
          @UsedTopics = params['UsedTopics']
          @MaxPartitions = params['MaxPartitions']
          @UsedPartitions = params['UsedPartitions']
          @MaxMsgBacklogSize = params['MaxMsgBacklogSize']
          @MaxPublishTps = params['MaxPublishTps']
          @MaxRetention = params['MaxRetention']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MaxDispatchTps = params['MaxDispatchTps']
          @MaxDispatchRateInBytes = params['MaxDispatchRateInBytes']
          @MaxPublishRateInBytes = params['MaxPublishRateInBytes']
          @MaxRetentionSizeInMB = params['MaxRetentionSizeInMB']
          @PublicAccessEnabled = params['PublicAccessEnabled']
        end
      end

      # 迁移topic列表数据
      class MigrateTopic < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param TopicName: topic名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param MigrationStatus: 迁移状态
        # S_RW_D_NA 源集群读写
        # S_RW_D_R 源集群读写目标集群读
        # S_RW_D_RW 源集群读写目标集群读写
        # S_R_D_RW 源集群读目标集群读写
        # S_NA_D_RW 目标集群读写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrationStatus: String
        # @param HealthCheckPassed: 是否完成健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckPassed: Boolean
        # @param HealthCheckError: 上次健康检查返回的错误信息，仅在HealthCheckPassed为false时有效。
        # NotChecked 未执行检查，
        # Unknown 未知错误,
        # TopicNotImported 主题未导入,
        #  TopicNotExistsInSourceCluster  主题在源集群中不存在,
        #     TopicNotExistsInTargetCluster 主题在目标集群中不存在,
        #     ConsumerConnectedOnTarget 目标集群上存在消费者连接,
        #     SourceTopicHasNewMessagesIn5Minutes 源集群主题前5分钟内有新消息写入,
        # TargetTopicHasNewMessagesIn5Minutes 目标集群主题前5分钟内有新消息写入,
        #     SourceTopicHasNoMessagesIn5Minutes 源集群前5分钟内没有新消息写入,
        # TargetTopicHasNoMessagesIn5Minutes 源集群前5分钟内没有新消息写入,
        #     ConsumerGroupCountNotMatch 订阅组数量不一致,
        #     SourceTopicHasUnconsumedMessages 源集群主题存在未消费消息,
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckError: String

        attr_accessor :Namespace, :TopicName, :MigrationStatus, :HealthCheckPassed, :HealthCheckError

        def initialize(namespace=nil, topicname=nil, migrationstatus=nil, healthcheckpassed=nil, healthcheckerror=nil)
          @Namespace = namespace
          @TopicName = topicname
          @MigrationStatus = migrationstatus
          @HealthCheckPassed = healthcheckpassed
          @HealthCheckError = healthcheckerror
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @TopicName = params['TopicName']
          @MigrationStatus = params['MigrationStatus']
          @HealthCheckPassed = params['HealthCheckPassed']
          @HealthCheckError = params['HealthCheckError']
        end
      end

      # ModifyCluster请求参数结构体
      class ModifyClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: Pulsar 集群的ID，需要更新的集群Id。
        # @type ClusterId: String
        # @param ClusterName: 更新后的集群名称。
        # @type ClusterName: String
        # @param Remark: 说明信息。长度限制为 128 字节
        # @type Remark: String
        # @param PublicAccessEnabled: 开启公网访问，只能为true
        # @type PublicAccessEnabled: Boolean

        attr_accessor :ClusterId, :ClusterName, :Remark, :PublicAccessEnabled

        def initialize(clusterid=nil, clustername=nil, remark=nil, publicaccessenabled=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Remark = remark
          @PublicAccessEnabled = publicaccessenabled
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @PublicAccessEnabled = params['PublicAccessEnabled']
        end
      end

      # ModifyCluster返回参数结构体
      class ModifyClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param QueueName: 队列名字，在单个地域同一账号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        # @type QueueName: String
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        # @type PollingWaitSeconds: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        # @type VisibilityTimeout: Integer
        # @param MaxMsgSize: 消息最大长度，新版CMQ新建的队列默认1024KB，不支持修改
        # @type MaxMsgSize: Integer
        # @param MsgRetentionSeconds: 消息最长未确认时间。取值范围 30-43200 秒（30秒~12小时），默认值 3600 (1 小时)。
        # @type MsgRetentionSeconds: Integer
        # @param RewindSeconds: 队列是否开启回溯消息能力，该参数取值范围0-1296000，0表示不开启。
        # @type RewindSeconds: Integer
        # @param FirstQueryInterval: 第一次查询时间
        # @type FirstQueryInterval: Integer
        # @param MaxQueryCount: 最大查询次数
        # @type MaxQueryCount: Integer
        # @param DeadLetterQueueName: 死信队列名称
        # @type DeadLetterQueueName: String
        # @param MaxTimeToLive: policy为1时必选。最大未消费过期时间。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds
        # @type MaxTimeToLive: Integer
        # @param MaxReceiveCount: 最大接收次数
        # @type MaxReceiveCount: Integer
        # @param Policy: 死信队列策略
        # @type Policy: Integer
        # @param Trace: 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        # @type Trace: Boolean
        # @param Transaction: 是否开启事务，1开启，0不开启
        # @type Transaction: Integer
        # @param RetentionSizeInMB: 队列可回溯存储空间：若开启消息回溯，取值范围：10240MB - 512000MB，若不开启消息回溯，取值：0
        # @type RetentionSizeInMB: Integer

        attr_accessor :QueueName, :MaxMsgHeapNum, :PollingWaitSeconds, :VisibilityTimeout, :MaxMsgSize, :MsgRetentionSeconds, :RewindSeconds, :FirstQueryInterval, :MaxQueryCount, :DeadLetterQueueName, :MaxTimeToLive, :MaxReceiveCount, :Policy, :Trace, :Transaction, :RetentionSizeInMB

        def initialize(queuename=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, msgretentionseconds=nil, rewindseconds=nil, firstqueryinterval=nil, maxquerycount=nil, deadletterqueuename=nil, maxtimetolive=nil, maxreceivecount=nil, policy=nil, trace=nil, transaction=nil, retentionsizeinmb=nil)
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
          @RetentionSizeInMB = retentionsizeinmb
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
          @RetentionSizeInMB = params['RetentionSizeInMB']
        end
      end

      # ModifyCmqQueueAttribute返回参数结构体
      class ModifyCmqQueueAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param SubscriptionName: 订阅名字，在单个地域同一账号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicName: 主题名字，在单个地域同一账号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param MsgTTL: 未消费消息过期时间，单位：秒，范围60秒~15天。
        # @type MsgTTL: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Remark: 备注，字符串最长不超过128。
        # @type Remark: String
        # @param RetentionPolicy: 消息保留策略
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`
        # @param AutoSubscriptionCreation: 是否开启自动创建订阅
        # @type AutoSubscriptionCreation: Boolean

        attr_accessor :EnvironmentId, :MsgTTL, :ClusterId, :Remark, :RetentionPolicy, :AutoSubscriptionCreation

        def initialize(environmentid=nil, msgttl=nil, clusterid=nil, remark=nil, retentionpolicy=nil, autosubscriptioncreation=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @ClusterId = clusterid
          @Remark = remark
          @RetentionPolicy = retentionpolicy
          @AutoSubscriptionCreation = autosubscriptioncreation
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          unless params['RetentionPolicy'].nil?
            @RetentionPolicy = RetentionPolicy.new
            @RetentionPolicy.deserialize(params['RetentionPolicy'])
          end
          @AutoSubscriptionCreation = params['AutoSubscriptionCreation']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyEnvironmentRole请求参数结构体
      class ModifyEnvironmentRoleRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Permissions: 授权项，最多只能包含produce、consume两项的非空字符串数组。
        # @type Permissions: Array
        # @param ClusterId: 必填字段，集群的ID
        # @type ClusterId: String

        attr_accessor :EnvironmentId, :RoleName, :Permissions, :ClusterId

        def initialize(environmentid=nil, rolename=nil, permissions=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @RoleName = rolename
          @Permissions = permissions
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleName = params['RoleName']
          @Permissions = params['Permissions']
          @ClusterId = params['ClusterId']
        end
      end

      # ModifyEnvironmentRole返回参数结构体
      class ModifyEnvironmentRoleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyPublicNetworkSecurityPolicy请求参数结构体
      class ModifyPublicNetworkSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PolicyList: 策略列表
        # @type PolicyList: Array

        attr_accessor :InstanceId, :PolicyList

        def initialize(instanceid=nil, policylist=nil)
          @InstanceId = instanceid
          @PolicyList = policylist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              securitypolicy_tmp = SecurityPolicy.new
              securitypolicy_tmp.deserialize(i)
              @PolicyList << securitypolicy_tmp
            end
          end
        end
      end

      # ModifyPublicNetworkSecurityPolicy返回参数结构体
      class ModifyPublicNetworkSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ModifyResult: SUCCESS或者FAILURE
        # @type ModifyResult: String
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModifyResult, :InstanceId, :RequestId

        def initialize(modifyresult=nil, instanceid=nil, requestid=nil)
          @ModifyResult = modifyresult
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModifyResult = params['ModifyResult']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQPermission请求参数结构体
      class ModifyRabbitMQPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param ConfigRegexp: 权限类型，declare相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ConfigRegexp: String
        # @param WriteRegexp: 权限类型，消息写入相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type WriteRegexp: String
        # @param ReadRegexp: 权限类型，消息读取相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ReadRegexp: String

        attr_accessor :InstanceId, :User, :VirtualHost, :ConfigRegexp, :WriteRegexp, :ReadRegexp

        def initialize(instanceid=nil, user=nil, virtualhost=nil, configregexp=nil, writeregexp=nil, readregexp=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @ConfigRegexp = configregexp
          @WriteRegexp = writeregexp
          @ReadRegexp = readregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @ConfigRegexp = params['ConfigRegexp']
          @WriteRegexp = params['WriteRegexp']
          @ReadRegexp = params['ReadRegexp']
        end
      end

      # ModifyRabbitMQPermission返回参数结构体
      class ModifyRabbitMQPermissionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQUser请求参数结构体
      class ModifyRabbitMQUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String
        # @param Password: 密码，登录时使用。规范：不能为空，8-64个字符，至少要包含小写字母、大写字母、数字、特殊字符【()`~!@#$%^&*_=|{}[]:;',.?/】中的两项
        # @type Password: String
        # @param Description: 描述，不传则不修改
        # @type Description: String
        # @param Tags: 用户标签，用于决定改用户访问 RabbitMQ Management 的权限范围
        # management：普通控制台用户，monitoring：管理型控制台用户，其他值：非控制台用户
        # @type Tags: Array
        # @param MaxConnections: 该用户的最大连接数，不传则不修改
        # @type MaxConnections: Integer
        # @param MaxChannels: 该用户的最大channel数，不传则不修改
        # @type MaxChannels: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :MaxConnections, :MaxChannels

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, maxconnections=nil, maxchannels=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
        end
      end

      # ModifyRabbitMQUser返回参数结构体
      class ModifyRabbitMQUserResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQVipInstance请求参数结构体
      class ModifyRabbitMQVipInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ClusterName: 集群名称，不填则不修改。非空字符串时必须 3-64 个字符，只能包含数字、字母、“-”和“_”
        # @type ClusterName: String
        # @param Remark: 备注，不填则不修改
        # @type Remark: String
        # @param EnableDeletionProtection: 是否开启删除保护，不填则不修改
        # @type EnableDeletionProtection: Boolean

        attr_accessor :InstanceId, :ClusterName, :Remark, :EnableDeletionProtection

        def initialize(instanceid=nil, clustername=nil, remark=nil, enabledeletionprotection=nil)
          @InstanceId = instanceid
          @ClusterName = clustername
          @Remark = remark
          @EnableDeletionProtection = enabledeletionprotection
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @EnableDeletionProtection = params['EnableDeletionProtection']
        end
      end

      # ModifyRabbitMQVipInstance返回参数结构体
      class ModifyRabbitMQVipInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQVirtualHost请求参数结构体
      class ModifyRabbitMQVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到Vhost名称。
        # @type VirtualHost: String
        # @param Description: Virtual Host 描述
        # @type Description: String
        # @param TraceFlag: 消息轨迹开关,true打开,false关闭
        # @type TraceFlag: Boolean

        attr_accessor :InstanceId, :VirtualHost, :Description, :TraceFlag

        def initialize(instanceid=nil, virtualhost=nil, description=nil, traceflag=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @TraceFlag = traceflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @TraceFlag = params['TraceFlag']
        end
      end

      # ModifyRabbitMQVirtualHost返回参数结构体
      class ModifyRabbitMQVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQCluster请求参数结构体
      class ModifyRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: RocketMQ集群ID
        # @type ClusterId: String
        # @param ClusterName: 3-64个字符，只能包含字母、数字、“-”及“_”
        # @type ClusterName: String
        # @param Remark: 说明信息，不超过128个字符
        # @type Remark: String
        # @param PublicAccessEnabled: 是否开启HTTP公网访问
        # @type PublicAccessEnabled: Boolean

        attr_accessor :ClusterId, :ClusterName, :Remark, :PublicAccessEnabled

        def initialize(clusterid=nil, clustername=nil, remark=nil, publicaccessenabled=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Remark = remark
          @PublicAccessEnabled = publicaccessenabled
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @PublicAccessEnabled = params['PublicAccessEnabled']
        end
      end

      # ModifyRocketMQCluster返回参数结构体
      class ModifyRocketMQClusterResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQEnvironmentRole请求参数结构体
      class ModifyRocketMQEnvironmentRoleRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Permissions: 授权项，最多只能包含produce、consume两项的非空字符串数组。
        # @type Permissions: Array
        # @param ClusterId: 必填字段，集群的ID
        # @type ClusterId: String
        # @param DetailedPerms: Topic&Group维度权限配置
        # @type DetailedPerms: Array

        attr_accessor :EnvironmentId, :RoleName, :Permissions, :ClusterId, :DetailedPerms

        def initialize(environmentid=nil, rolename=nil, permissions=nil, clusterid=nil, detailedperms=nil)
          @EnvironmentId = environmentid
          @RoleName = rolename
          @Permissions = permissions
          @ClusterId = clusterid
          @DetailedPerms = detailedperms
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @RoleName = params['RoleName']
          @Permissions = params['Permissions']
          @ClusterId = params['ClusterId']
          unless params['DetailedPerms'].nil?
            @DetailedPerms = []
            params['DetailedPerms'].each do |i|
              detailedroleperm_tmp = DetailedRolePerm.new
              detailedroleperm_tmp.deserialize(i)
              @DetailedPerms << detailedroleperm_tmp
            end
          end
        end
      end

      # ModifyRocketMQEnvironmentRole返回参数结构体
      class ModifyRocketMQEnvironmentRoleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQGroup请求参数结构体
      class ModifyRocketMQGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param GroupId: 消费组名称
        # @type GroupId: String
        # @param Remark: 说明信息，最长128个字符
        # @type Remark: String
        # @param ReadEnable: 是否开启消费
        # @type ReadEnable: Boolean
        # @param BroadcastEnable: 是否开启广播消费
        # @type BroadcastEnable: Boolean
        # @param RetryMaxTimes: 最大重试次数
        # @type RetryMaxTimes: Integer

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :Remark, :ReadEnable, :BroadcastEnable, :RetryMaxTimes

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, remark=nil, readenable=nil, broadcastenable=nil, retrymaxtimes=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @Remark = remark
          @ReadEnable = readenable
          @BroadcastEnable = broadcastenable
          @RetryMaxTimes = retrymaxtimes
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @Remark = params['Remark']
          @ReadEnable = params['ReadEnable']
          @BroadcastEnable = params['BroadcastEnable']
          @RetryMaxTimes = params['RetryMaxTimes']
        end
      end

      # ModifyRocketMQGroup返回参数结构体
      class ModifyRocketMQGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQInstance请求参数结构体
      class ModifyRocketMQInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 专享实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param Remark: 实例备注信息
        # @type Remark: String
        # @param MessageRetention: 实例消息保留时间，小时为单位
        # @type MessageRetention: Integer
        # @param EnableDeletionProtection: 是否开启删除保护
        # @type EnableDeletionProtection: Boolean

        attr_accessor :InstanceId, :Name, :Remark, :MessageRetention, :EnableDeletionProtection

        def initialize(instanceid=nil, name=nil, remark=nil, messageretention=nil, enabledeletionprotection=nil)
          @InstanceId = instanceid
          @Name = name
          @Remark = remark
          @MessageRetention = messageretention
          @EnableDeletionProtection = enabledeletionprotection
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Remark = params['Remark']
          @MessageRetention = params['MessageRetention']
          @EnableDeletionProtection = params['EnableDeletionProtection']
        end
      end

      # ModifyRocketMQInstance返回参数结构体
      class ModifyRocketMQInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQInstanceSpec请求参数结构体
      class ModifyRocketMQInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 专享实例ID
        # @type InstanceId: String
        # @param Specification: 实例规格，
        # rocket-vip-basic-1 基础型
        # rocket-vip-basic-2 标准型
        # rocket-vip-basic-3 高阶Ⅰ型
        # rocket-vip-basic-4 高阶Ⅱ型
        # @type Specification: String
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param StorageSize: 存储空间，GB为单位
        # @type StorageSize: Integer

        attr_accessor :InstanceId, :Specification, :NodeCount, :StorageSize

        def initialize(instanceid=nil, specification=nil, nodecount=nil, storagesize=nil)
          @InstanceId = instanceid
          @Specification = specification
          @NodeCount = nodecount
          @StorageSize = storagesize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Specification = params['Specification']
          @NodeCount = params['NodeCount']
          @StorageSize = params['StorageSize']
        end
      end

      # ModifyRocketMQInstanceSpec返回参数结构体
      class ModifyRocketMQInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :RequestId

        def initialize(orderid=nil, requestid=nil)
          @OrderId = orderid
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQNamespace请求参数结构体
      class ModifyRocketMQNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 已废弃
        # @type Ttl: Integer
        # @param RetentionTime: 已废弃
        # @type RetentionTime: Integer
        # @param Remark: 说明，最大128个字符
        # @type Remark: String
        # @param PublicAccessEnabled: 是否开启公网访问
        # @type PublicAccessEnabled: Boolean

        attr_accessor :ClusterId, :NamespaceId, :Ttl, :RetentionTime, :Remark, :PublicAccessEnabled

        def initialize(clusterid=nil, namespaceid=nil, ttl=nil, retentiontime=nil, remark=nil, publicaccessenabled=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Ttl = ttl
          @RetentionTime = retentiontime
          @Remark = remark
          @PublicAccessEnabled = publicaccessenabled
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Ttl = params['Ttl']
          @RetentionTime = params['RetentionTime']
          @Remark = params['Remark']
          @PublicAccessEnabled = params['PublicAccessEnabled']
        end
      end

      # ModifyRocketMQNamespace返回参数结构体
      class ModifyRocketMQNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQRole请求参数结构体
      class ModifyRocketMQRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称，不支持中字以及除了短线和下划线外的特殊字符且长度必须大于0且小等于32。
        # @type RoleName: String
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param Remark: 备注说明，长度必须大等于0且小等于128。
        # @type Remark: String
        # @param PermType: 权限类型，默认按集群授权（Cluster：集群级别；TopicAndGroup：主题&消费组级别）
        # @type PermType: String

        attr_accessor :RoleName, :ClusterId, :Remark, :PermType

        def initialize(rolename=nil, clusterid=nil, remark=nil, permtype=nil)
          @RoleName = rolename
          @ClusterId = clusterid
          @Remark = remark
          @PermType = permtype
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @PermType = params['PermType']
        end
      end

      # ModifyRocketMQRole返回参数结构体
      class ModifyRocketMQRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleName, :Remark, :RequestId

        def initialize(rolename=nil, remark=nil, requestid=nil)
          @RoleName = rolename
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRocketMQTopic请求参数结构体
      class ModifyRocketMQTopicRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 说明信息，最大128个字符
        # @type Remark: String
        # @param PartitionNum: 分区数，全局类型无效，不可小于当前分区数
        # @type PartitionNum: Integer

        attr_accessor :ClusterId, :NamespaceId, :Topic, :Remark, :PartitionNum

        def initialize(clusterid=nil, namespaceid=nil, topic=nil, remark=nil, partitionnum=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Topic = topic
          @Remark = remark
          @PartitionNum = partitionnum
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Topic = params['Topic']
          @Remark = params['Remark']
          @PartitionNum = params['PartitionNum']
        end
      end

      # ModifyRocketMQTopic返回参数结构体
      class ModifyRocketMQTopicResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRole请求参数结构体
      class ModifyRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称，不支持中字以及除了短线和下划线外的特殊字符且长度必须大于0且小等于32。
        # @type RoleName: String
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param Remark: 备注说明，长度必须大等于0且小等于128。
        # @type Remark: String
        # @param EnvironmentRoleSets: 批量绑定名字空间信息
        # @type EnvironmentRoleSets: Array
        # @param UnbindAllEnvironment: 全部解绑名字空间，设置为 true
        # @type UnbindAllEnvironment: Boolean

        attr_accessor :RoleName, :ClusterId, :Remark, :EnvironmentRoleSets, :UnbindAllEnvironment

        def initialize(rolename=nil, clusterid=nil, remark=nil, environmentrolesets=nil, unbindallenvironment=nil)
          @RoleName = rolename
          @ClusterId = clusterid
          @Remark = remark
          @EnvironmentRoleSets = environmentrolesets
          @UnbindAllEnvironment = unbindallenvironment
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          unless params['EnvironmentRoleSets'].nil?
            @EnvironmentRoleSets = []
            params['EnvironmentRoleSets'].each do |i|
              environmentroleset_tmp = EnvironmentRoleSet.new
              environmentroleset_tmp.deserialize(i)
              @EnvironmentRoleSets << environmentroleset_tmp
            end
          end
          @UnbindAllEnvironment = params['UnbindAllEnvironment']
        end
      end

      # ModifyRole返回参数结构体
      class ModifyRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleName, :Remark, :RequestId

        def initialize(rolename=nil, remark=nil, requestid=nil)
          @RoleName = rolename
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名。
        # @type TopicName: String
        # @param Partitions: 分区数，必须大于或者等于原分区数，若想维持原分区数请输入原数目，修改分区数仅对非全局顺序消息起效果，不允许超过32个分区。
        # @type Partitions: Integer
        # @param ClusterId: Pulsar 集群的ID
        # @type ClusterId: String
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，取值范围：60秒~15天。
        # @type MsgTTL: Integer
        # @param UnackPolicy: 不传默认是原生策略，DefaultPolicy表示当订阅下达到最大未确认消息数 5000 时，服务端将不再向当前订阅下的所有消费者推送消息，DynamicPolicy表示动态调整订阅下的最大未确认消息数，具体配额是在 5000 和消费者数量*20之间取最大值。每个消费者默认最大 unack 消息数为 20，超过该限制时仅影响该消费者，不影响其他消费者。
        # @type UnackPolicy: String
        # @param IsolateConsumerEnable: 是否开启异常消费者隔离
        # @type IsolateConsumerEnable: Boolean
        # @param AckTimeOut: 消费者 Ack 超时时间，单位：秒，范围60-（3600*24
        # @type AckTimeOut: Integer

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :ClusterId, :Remark, :MsgTTL, :UnackPolicy, :IsolateConsumerEnable, :AckTimeOut

        def initialize(environmentid=nil, topicname=nil, partitions=nil, clusterid=nil, remark=nil, msgttl=nil, unackpolicy=nil, isolateconsumerenable=nil, acktimeout=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @ClusterId = clusterid
          @Remark = remark
          @MsgTTL = msgttl
          @UnackPolicy = unackpolicy
          @IsolateConsumerEnable = isolateconsumerenable
          @AckTimeOut = acktimeout
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
          @UnackPolicy = params['UnackPolicy']
          @IsolateConsumerEnable = params['IsolateConsumerEnable']
          @AckTimeOut = params['AckTimeOut']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区数
        # @type Partitions: Integer
        # @param Remark: 备注，128字符以内。
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 消息日志
      class MsgLog < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ProducerName: 生产者名称。
        # @type ProducerName: String
        # @param ProduceTime: 生产时间。
        # @type ProduceTime: String
        # @param ProducerAddr: 生产客户端地址。
        # @type ProducerAddr: String

        attr_accessor :MsgId, :ProducerName, :ProduceTime, :ProducerAddr

        def initialize(msgid=nil, producername=nil, producetime=nil, produceraddr=nil)
          @MsgId = msgid
          @ProducerName = producername
          @ProduceTime = producetime
          @ProducerAddr = produceraddr
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @ProducerName = params['ProducerName']
          @ProduceTime = params['ProduceTime']
          @ProducerAddr = params['ProducerAddr']
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

      # 消息生产信息
      class ProducerLog < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID。
        # @type MsgId: String
        # @param ProducerName: 生产者名称。
        # @type ProducerName: String
        # @param ProduceTime: 消息生产时间。
        # @type ProduceTime: String
        # @param ProducerAddr: 生产者客户端。
        # @type ProducerAddr: String
        # @param ProduceUseTime: 生产耗时（秒）。
        # @type ProduceUseTime: Integer
        # @param Status: 状态。
        # @type Status: String

        attr_accessor :MsgId, :ProducerName, :ProduceTime, :ProducerAddr, :ProduceUseTime, :Status

        def initialize(msgid=nil, producername=nil, producetime=nil, produceraddr=nil, produceusetime=nil, status=nil)
          @MsgId = msgid
          @ProducerName = producername
          @ProduceTime = producetime
          @ProducerAddr = produceraddr
          @ProduceUseTime = produceusetime
          @Status = status
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @ProducerName = params['ProducerName']
          @ProduceTime = params['ProduceTime']
          @ProducerAddr = params['ProducerAddr']
          @ProduceUseTime = params['ProduceUseTime']
          @Status = params['Status']
        end
      end

      # rabbitmq Prometheus信息
      class PrometheusEndpointInfo < TencentCloud::Common::AbstractModel
        # @param PrometheusEndpointStatus: Prometheus开关的状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrometheusEndpointStatus: String
        # @param VpcPrometheusEndpoint: prometheus信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcPrometheusEndpoint: Array
        # @param NodePrometheusAddress: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePrometheusAddress: Array
        # @param VpcEndpointInfo: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcEndpointInfo: :class:`Tencentcloud::Tdmq.v20200217.models.VpcEndpointInfo`

        attr_accessor :PrometheusEndpointStatus, :VpcPrometheusEndpoint, :NodePrometheusAddress, :VpcEndpointInfo

        def initialize(prometheusendpointstatus=nil, vpcprometheusendpoint=nil, nodeprometheusaddress=nil, vpcendpointinfo=nil)
          @PrometheusEndpointStatus = prometheusendpointstatus
          @VpcPrometheusEndpoint = vpcprometheusendpoint
          @NodePrometheusAddress = nodeprometheusaddress
          @VpcEndpointInfo = vpcendpointinfo
        end

        def deserialize(params)
          @PrometheusEndpointStatus = params['PrometheusEndpointStatus']
          @VpcPrometheusEndpoint = params['VpcPrometheusEndpoint']
          @NodePrometheusAddress = params['NodePrometheusAddress']
          unless params['VpcEndpointInfo'].nil?
            @VpcEndpointInfo = VpcEndpointInfo.new
            @VpcEndpointInfo.deserialize(params['VpcEndpointInfo'])
          end
        end
      end

      # 公网访问安全规则
      class PublicAccessRule < TencentCloud::Common::AbstractModel
        # @param IpRule: ip网段信息
        # @type IpRule: String
        # @param Allow: 允许或者拒绝
        # @type Allow: Boolean
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :IpRule, :Allow, :Remark

        def initialize(iprule=nil, allow=nil, remark=nil)
          @IpRule = iprule
          @Allow = allow
          @Remark = remark
        end

        def deserialize(params)
          @IpRule = params['IpRule']
          @Allow = params['Allow']
          @Remark = params['Remark']
        end
      end

      # PublishCmqMsg请求参数结构体
      class PublishCmqMsgRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名
        # @type TopicName: String
        # @param MsgContent: 消息内容，消息总大小需不大于1024K
        # @type MsgContent: String
        # @param MsgTag: 消息标签，支持传递多标签或单路由，单个标签、路由长度不能超过64个字符。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 生产者信息
      class Publisher < TencentCloud::Common::AbstractModel
        # @param ProducerId: 生产者id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerId: Integer
        # @param ProducerName: 生产者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerName: String
        # @param Address: 生产者地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param ClientVersion: 客户端版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientVersion: String
        # @param MsgRateIn: 消息生产速率（条/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRateIn: Float
        # @param MsgThroughputIn: 消息生产吞吐速率（字节/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgThroughputIn: Float
        # @param AverageMsgSize: 平均消息大小（字节）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageMsgSize: Float
        # @param ConnectedSince: 连接时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectedSince: String
        # @param Partition: 生产者连接的主题分区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: Integer

        attr_accessor :ProducerId, :ProducerName, :Address, :ClientVersion, :MsgRateIn, :MsgThroughputIn, :AverageMsgSize, :ConnectedSince, :Partition

        def initialize(producerid=nil, producername=nil, address=nil, clientversion=nil, msgratein=nil, msgthroughputin=nil, averagemsgsize=nil, connectedsince=nil, partition=nil)
          @ProducerId = producerid
          @ProducerName = producername
          @Address = address
          @ClientVersion = clientversion
          @MsgRateIn = msgratein
          @MsgThroughputIn = msgthroughputin
          @AverageMsgSize = averagemsgsize
          @ConnectedSince = connectedsince
          @Partition = partition
        end

        def deserialize(params)
          @ProducerId = params['ProducerId']
          @ProducerName = params['ProducerName']
          @Address = params['Address']
          @ClientVersion = params['ClientVersion']
          @MsgRateIn = params['MsgRateIn']
          @MsgThroughputIn = params['MsgThroughputIn']
          @AverageMsgSize = params['AverageMsgSize']
          @ConnectedSince = params['ConnectedSince']
          @Partition = params['Partition']
        end
      end

      # Pulsar 网络接入点信息
      class PulsarNetworkAccessPointInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id，支撑网和公网接入点，该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网id，支撑网和公网接入点，该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Endpoint: 接入地址
        # @type Endpoint: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param RouteType: 接入点类型：
        # 0：支撑网接入点
        # 1：VPC接入点
        # 2：公网接入点
        # @type RouteType: Integer
        # @param OperationType: 0：本地域访问，由于并没有配置跨地域容灾，所该类型的接入点，无法进行异地切换、异地访问切回；
        # 1：本地域访问，由于配置了跨地域容灾，随时可以进行异地切换，该状态用于主集群的接入点
        # 2：跨地域访问，已经完成了异地切换，该状态用于源集群的接入点，该状态下的接入点不可删除
        # 3：跨地域访问，随时可以进行异地访问切回，该状态用于目标集群的接入点，该状态下的接入点不可删除
        # 4:跨地域访问，目标集群已经完成异地切回，等待删除状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationType: Integer
        # @param AccessPointsType: 接入点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessPointsType: String
        # @param Bandwidth: 带宽，目前只有公网会有这个值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param SecurityPolicy: 类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityPolicy: Array
        # @param StandardAccessPoint: 是否是标准的接入点 true是标准的 false不是标准的
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardAccessPoint: Boolean
        # @param ZoneName: 可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param Tls: 是否开启TLS加密
        # @type Tls: Boolean
        # @param CustomUrl: 接入点自定义域名
        # @type CustomUrl: String

        attr_accessor :VpcId, :SubnetId, :Endpoint, :InstanceId, :RouteType, :OperationType, :AccessPointsType, :Bandwidth, :SecurityPolicy, :StandardAccessPoint, :ZoneName, :Tls, :CustomUrl

        def initialize(vpcid=nil, subnetid=nil, endpoint=nil, instanceid=nil, routetype=nil, operationtype=nil, accesspointstype=nil, bandwidth=nil, securitypolicy=nil, standardaccesspoint=nil, zonename=nil, tls=nil, customurl=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Endpoint = endpoint
          @InstanceId = instanceid
          @RouteType = routetype
          @OperationType = operationtype
          @AccessPointsType = accesspointstype
          @Bandwidth = bandwidth
          @SecurityPolicy = securitypolicy
          @StandardAccessPoint = standardaccesspoint
          @ZoneName = zonename
          @Tls = tls
          @CustomUrl = customurl
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Endpoint = params['Endpoint']
          @InstanceId = params['InstanceId']
          @RouteType = params['RouteType']
          @OperationType = params['OperationType']
          @AccessPointsType = params['AccessPointsType']
          @Bandwidth = params['Bandwidth']
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = []
            params['SecurityPolicy'].each do |i|
              securitypolicy_tmp = SecurityPolicy.new
              securitypolicy_tmp.deserialize(i)
              @SecurityPolicy << securitypolicy_tmp
            end
          end
          @StandardAccessPoint = params['StandardAccessPoint']
          @ZoneName = params['ZoneName']
          @Tls = params['Tls']
          @CustomUrl = params['CustomUrl']
        end
      end

      # Pulsar专业版集群信息
      class PulsarProClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id。
        # @type ClusterId: String
        # @param ClusterName: 集群名称。
        # @type ClusterName: String
        # @param Remark: 说明信息。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Status: 集群状态，0:创建中，1:正常，2:隔离
        # @type Status: Integer
        # @param Version: 集群版本
        # @type Version: String
        # @param NodeDistribution: 节点分布情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeDistribution: Array
        # @param MaxStorage: 最大储存容量，单位：MB
        # @type MaxStorage: Integer
        # @param CanEditRoute: 是否可以修改路由
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanEditRoute: Boolean
        # @param BillingLabelVersion: 代表是专业版和小规格专业版的不同计费规格PULSAR.P1固定存储PULSAR.P2弹性存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingLabelVersion: String
        # @param ExpireTime: 实例到期时间戳，毫秒级精度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param AutoCreateTopicStatus: 是否开启自动创建主题
        # true就是开启了，false是关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoCreateTopicStatus: Boolean
        # @param DefaultPartitionNumber: 自动创建主题的默认分区数，如果没开启就是0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultPartitionNumber: Integer
        # @param Tenant: 用户自定义的租户别名，如果没有，会复用专业集群 ID
        # @type Tenant: String
        # @param DeleteProtection: 删除保护开关标识
        # @type DeleteProtection: Integer

        attr_accessor :ClusterId, :ClusterName, :Remark, :CreateTime, :Status, :Version, :NodeDistribution, :MaxStorage, :CanEditRoute, :BillingLabelVersion, :ExpireTime, :AutoCreateTopicStatus, :DefaultPartitionNumber, :Tenant, :DeleteProtection

        def initialize(clusterid=nil, clustername=nil, remark=nil, createtime=nil, status=nil, version=nil, nodedistribution=nil, maxstorage=nil, caneditroute=nil, billinglabelversion=nil, expiretime=nil, autocreatetopicstatus=nil, defaultpartitionnumber=nil, tenant=nil, deleteprotection=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Remark = remark
          @CreateTime = createtime
          @Status = status
          @Version = version
          @NodeDistribution = nodedistribution
          @MaxStorage = maxstorage
          @CanEditRoute = caneditroute
          @BillingLabelVersion = billinglabelversion
          @ExpireTime = expiretime
          @AutoCreateTopicStatus = autocreatetopicstatus
          @DefaultPartitionNumber = defaultpartitionnumber
          @Tenant = tenant
          @DeleteProtection = deleteprotection
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @Version = params['Version']
          unless params['NodeDistribution'].nil?
            @NodeDistribution = []
            params['NodeDistribution'].each do |i|
              instancenodedistribution_tmp = InstanceNodeDistribution.new
              instancenodedistribution_tmp.deserialize(i)
              @NodeDistribution << instancenodedistribution_tmp
            end
          end
          @MaxStorage = params['MaxStorage']
          @CanEditRoute = params['CanEditRoute']
          @BillingLabelVersion = params['BillingLabelVersion']
          @ExpireTime = params['ExpireTime']
          @AutoCreateTopicStatus = params['AutoCreateTopicStatus']
          @DefaultPartitionNumber = params['DefaultPartitionNumber']
          @Tenant = params['Tenant']
          @DeleteProtection = params['DeleteProtection']
        end
      end

      # Pulsar专业版集群规格信息
      class PulsarProClusterSpecInfo < TencentCloud::Common::AbstractModel
        # @param SpecName: 集群规格名称
        # @type SpecName: String
        # @param MaxTps: 峰值tps
        # @type MaxTps: Integer
        # @param MaxBandWidth: 峰值带宽。单位：mbps
        # @type MaxBandWidth: Integer
        # @param MaxNamespaces: 最大命名空间个数
        # @type MaxNamespaces: Integer
        # @param MaxTopics: 最大主题分区数
        # @type MaxTopics: Integer
        # @param ScalableTps: 规格外弹性TPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalableTps: Integer
        # @param MaxPartitions: 32或者128
        # 当前集群topic的最大分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPartitions: Integer
        # @param MaxDelayedMessages: 商品最大延迟消息数量。0代表没有限制
        # @type MaxDelayedMessages: Integer

        attr_accessor :SpecName, :MaxTps, :MaxBandWidth, :MaxNamespaces, :MaxTopics, :ScalableTps, :MaxPartitions, :MaxDelayedMessages

        def initialize(specname=nil, maxtps=nil, maxbandwidth=nil, maxnamespaces=nil, maxtopics=nil, scalabletps=nil, maxpartitions=nil, maxdelayedmessages=nil)
          @SpecName = specname
          @MaxTps = maxtps
          @MaxBandWidth = maxbandwidth
          @MaxNamespaces = maxnamespaces
          @MaxTopics = maxtopics
          @ScalableTps = scalabletps
          @MaxPartitions = maxpartitions
          @MaxDelayedMessages = maxdelayedmessages
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @MaxTps = params['MaxTps']
          @MaxBandWidth = params['MaxBandWidth']
          @MaxNamespaces = params['MaxNamespaces']
          @MaxTopics = params['MaxTopics']
          @ScalableTps = params['ScalableTps']
          @MaxPartitions = params['MaxPartitions']
          @MaxDelayedMessages = params['MaxDelayedMessages']
        end
      end

      # Pulsar专业版实例信息
      class PulsarProInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceVersion: 实例版本
        # @type InstanceVersion: String
        # @param Status: 实例状态，0-创建中，1-正常，2-隔离中，3-已销毁，4 - 异常, 5 - 发货失败，6-变配中，7-变配失败
        # @type Status: Integer
        # @param ConfigDisplay: 实例配置规格名称
        # @type ConfigDisplay: String
        # @param MaxTps: 峰值TPS
        # @type MaxTps: Integer
        # @param MaxStorage: 存储容量，GB为单位
        # @type MaxStorage: Integer
        # @param ExpireTime: 实例到期时间，毫秒为单位
        # @type ExpireTime: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param PayMode: 0-后付费，1-预付费
        # @type PayMode: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param SpecName: 实例配置ID
        # @type SpecName: String
        # @param ScalableTps: 规格外弹性TPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalableTps: Integer
        # @param VpcId: VPC的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param MaxBandWidth: 峰值带宽。单位：mbps
        # @type MaxBandWidth: Integer
        # @param Tags: 集群的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CreateTime: 集群创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param BillingLabelVersion: 代表是专业版和小规格专业版的不同计费规格PULSAR.P1固定存储PULSAR.P2弹性存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingLabelVersion: String
        # @param Tenant: 自定义租户
        # @type Tenant: String
        # @param CertificateList: 集群的证书列表
        # @type CertificateList: Array

        attr_accessor :InstanceId, :InstanceName, :InstanceVersion, :Status, :ConfigDisplay, :MaxTps, :MaxStorage, :ExpireTime, :AutoRenewFlag, :PayMode, :Remark, :SpecName, :ScalableTps, :VpcId, :SubnetId, :MaxBandWidth, :Tags, :CreateTime, :BillingLabelVersion, :Tenant, :CertificateList

        def initialize(instanceid=nil, instancename=nil, instanceversion=nil, status=nil, configdisplay=nil, maxtps=nil, maxstorage=nil, expiretime=nil, autorenewflag=nil, paymode=nil, remark=nil, specname=nil, scalabletps=nil, vpcid=nil, subnetid=nil, maxbandwidth=nil, tags=nil, createtime=nil, billinglabelversion=nil, tenant=nil, certificatelist=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceVersion = instanceversion
          @Status = status
          @ConfigDisplay = configdisplay
          @MaxTps = maxtps
          @MaxStorage = maxstorage
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @PayMode = paymode
          @Remark = remark
          @SpecName = specname
          @ScalableTps = scalabletps
          @VpcId = vpcid
          @SubnetId = subnetid
          @MaxBandWidth = maxbandwidth
          @Tags = tags
          @CreateTime = createtime
          @BillingLabelVersion = billinglabelversion
          @Tenant = tenant
          @CertificateList = certificatelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceVersion = params['InstanceVersion']
          @Status = params['Status']
          @ConfigDisplay = params['ConfigDisplay']
          @MaxTps = params['MaxTps']
          @MaxStorage = params['MaxStorage']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PayMode = params['PayMode']
          @Remark = params['Remark']
          @SpecName = params['SpecName']
          @ScalableTps = params['ScalableTps']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MaxBandWidth = params['MaxBandWidth']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @BillingLabelVersion = params['BillingLabelVersion']
          @Tenant = params['Tenant']
          unless params['CertificateList'].nil?
            @CertificateList = []
            params['CertificateList'].each do |i|
              certificateinfo_tmp = CertificateInfo.new
              certificateinfo_tmp.deserialize(i)
              @CertificateList << certificateinfo_tmp
            end
          end
        end
      end

      # queue使用配额信息
      class QueueQuota < TencentCloud::Common::AbstractModel
        # @param MaxQueue: 可创建最大Queue数
        # @type MaxQueue: Integer
        # @param UsedQueue: 已创建Queue数
        # @type UsedQueue: Integer

        attr_accessor :MaxQueue, :UsedQueue

        def initialize(maxqueue=nil, usedqueue=nil)
          @MaxQueue = maxqueue
          @UsedQueue = usedqueue
        end

        def deserialize(params)
          @MaxQueue = params['MaxQueue']
          @UsedQueue = params['UsedQueue']
        end
      end

      # RabbitMQ 路由关系列表成员
      class RabbitMQBindingListInfo < TencentCloud::Common::AbstractModel
        # @param BindingId: 路由关系id
        # @type BindingId: Integer
        # @param VirtualHost: VhostName
        # @type VirtualHost: String
        # @param Source: 源exchange名称
        # @type Source: String
        # @param DestinationType: 目标类型,queue或exchange
        # @type DestinationType: String
        # @param Destination: 目标资源名称
        # @type Destination: String
        # @param RoutingKey: 绑定key
        # @type RoutingKey: String
        # @param SourceExchangeType: 源exchange类型
        # @type SourceExchangeType: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :BindingId, :VirtualHost, :Source, :DestinationType, :Destination, :RoutingKey, :SourceExchangeType, :CreateTime, :ModifyTime, :CreateTs, :ModifyTs

        def initialize(bindingid=nil, virtualhost=nil, source=nil, destinationtype=nil, destination=nil, routingkey=nil, sourceexchangetype=nil, createtime=nil, modifytime=nil, createts=nil, modifyts=nil)
          @BindingId = bindingid
          @VirtualHost = virtualhost
          @Source = source
          @DestinationType = destinationtype
          @Destination = destination
          @RoutingKey = routingkey
          @SourceExchangeType = sourceexchangetype
          @CreateTime = createtime
          @ModifyTime = modifytime
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @BindingId = params['BindingId']
          @VirtualHost = params['VirtualHost']
          @Source = params['Source']
          @DestinationType = params['DestinationType']
          @Destination = params['Destination']
          @RoutingKey = params['RoutingKey']
          @SourceExchangeType = params['SourceExchangeType']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # RabbitMQ集群访问信息
      class RabbitMQClusterAccessInfo < TencentCloud::Common::AbstractModel
        # @param PublicAccessEndpoint: 集群公网接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccessEndpoint: String
        # @param WebConsoleEndpoint: 集群控制台访问地址
        # @type WebConsoleEndpoint: String
        # @param WebConsoleUsername: 集群控制台登录用户名
        # @type WebConsoleUsername: String
        # @param WebConsolePassword: 集群控制台登录密码
        # @type WebConsolePassword: String
        # @param PublicAccessEndpointStatus: 已废弃
        # @type PublicAccessEndpointStatus: Boolean
        # @param PublicControlConsoleSwitchStatus: 已废弃
        # @type PublicControlConsoleSwitchStatus: Boolean
        # @param VpcControlConsoleSwitchStatus: 已废弃
        # @type VpcControlConsoleSwitchStatus: Boolean
        # @param VpcWebConsoleEndpoint: Vpc管控台访问地址，示例值，http://1.1.1.1:15672
        # @type VpcWebConsoleEndpoint: String
        # @param PublicWebConsoleSwitchStatus: 公网管控台开关状态，示例值，OFF/ON/CREATING/DELETING
        # @type PublicWebConsoleSwitchStatus: String
        # @param VpcWebConsoleSwitchStatus: Vpc管控台开关状态，示例值，
        # OFF/ON/CREATING/DELETING
        # @type VpcWebConsoleSwitchStatus: String
        # @param PublicDataStreamStatus: 公网管控台开关状态，示例值，OFF/ON/CREATING/DELETING
        # @type PublicDataStreamStatus: String
        # @param PrometheusEndpointInfo: Prometheus信息
        # @type PrometheusEndpointInfo: :class:`Tencentcloud::Tdmq.v20200217.models.PrometheusEndpointInfo`
        # @param WebConsoleDomainEndpoint: 公网域名接入点
        # @type WebConsoleDomainEndpoint: String
        # @param ControlPlaneEndpointInfo: 控制面所使用的VPC信息
        # @type ControlPlaneEndpointInfo: :class:`Tencentcloud::Tdmq.v20200217.models.VpcEndpointInfo`
        # @param PublicTlsAccessEndpoint: TLS加密的数据流公网接入点
        # @type PublicTlsAccessEndpoint: String

        attr_accessor :PublicAccessEndpoint, :WebConsoleEndpoint, :WebConsoleUsername, :WebConsolePassword, :PublicAccessEndpointStatus, :PublicControlConsoleSwitchStatus, :VpcControlConsoleSwitchStatus, :VpcWebConsoleEndpoint, :PublicWebConsoleSwitchStatus, :VpcWebConsoleSwitchStatus, :PublicDataStreamStatus, :PrometheusEndpointInfo, :WebConsoleDomainEndpoint, :ControlPlaneEndpointInfo, :PublicTlsAccessEndpoint

        def initialize(publicaccessendpoint=nil, webconsoleendpoint=nil, webconsoleusername=nil, webconsolepassword=nil, publicaccessendpointstatus=nil, publiccontrolconsoleswitchstatus=nil, vpccontrolconsoleswitchstatus=nil, vpcwebconsoleendpoint=nil, publicwebconsoleswitchstatus=nil, vpcwebconsoleswitchstatus=nil, publicdatastreamstatus=nil, prometheusendpointinfo=nil, webconsoledomainendpoint=nil, controlplaneendpointinfo=nil, publictlsaccessendpoint=nil)
          @PublicAccessEndpoint = publicaccessendpoint
          @WebConsoleEndpoint = webconsoleendpoint
          @WebConsoleUsername = webconsoleusername
          @WebConsolePassword = webconsolepassword
          @PublicAccessEndpointStatus = publicaccessendpointstatus
          @PublicControlConsoleSwitchStatus = publiccontrolconsoleswitchstatus
          @VpcControlConsoleSwitchStatus = vpccontrolconsoleswitchstatus
          @VpcWebConsoleEndpoint = vpcwebconsoleendpoint
          @PublicWebConsoleSwitchStatus = publicwebconsoleswitchstatus
          @VpcWebConsoleSwitchStatus = vpcwebconsoleswitchstatus
          @PublicDataStreamStatus = publicdatastreamstatus
          @PrometheusEndpointInfo = prometheusendpointinfo
          @WebConsoleDomainEndpoint = webconsoledomainendpoint
          @ControlPlaneEndpointInfo = controlplaneendpointinfo
          @PublicTlsAccessEndpoint = publictlsaccessendpoint
        end

        def deserialize(params)
          @PublicAccessEndpoint = params['PublicAccessEndpoint']
          @WebConsoleEndpoint = params['WebConsoleEndpoint']
          @WebConsoleUsername = params['WebConsoleUsername']
          @WebConsolePassword = params['WebConsolePassword']
          @PublicAccessEndpointStatus = params['PublicAccessEndpointStatus']
          @PublicControlConsoleSwitchStatus = params['PublicControlConsoleSwitchStatus']
          @VpcControlConsoleSwitchStatus = params['VpcControlConsoleSwitchStatus']
          @VpcWebConsoleEndpoint = params['VpcWebConsoleEndpoint']
          @PublicWebConsoleSwitchStatus = params['PublicWebConsoleSwitchStatus']
          @VpcWebConsoleSwitchStatus = params['VpcWebConsoleSwitchStatus']
          @PublicDataStreamStatus = params['PublicDataStreamStatus']
          unless params['PrometheusEndpointInfo'].nil?
            @PrometheusEndpointInfo = PrometheusEndpointInfo.new
            @PrometheusEndpointInfo.deserialize(params['PrometheusEndpointInfo'])
          end
          @WebConsoleDomainEndpoint = params['WebConsoleDomainEndpoint']
          unless params['ControlPlaneEndpointInfo'].nil?
            @ControlPlaneEndpointInfo = VpcEndpointInfo.new
            @ControlPlaneEndpointInfo.deserialize(params['ControlPlaneEndpointInfo'])
          end
          @PublicTlsAccessEndpoint = params['PublicTlsAccessEndpoint']
        end
      end

      # RabbitMQ 集群基本信息
      class RabbitMQClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域信息
        # @type Region: String
        # @param CreateTime: 创建时间，毫秒为单位。unix 时间戳
        # @type CreateTime: Integer
        # @param Remark: 集群说明信息
        # @type Remark: String
        # @param Vpcs: VPC及网络信息
        # @type Vpcs: Array
        # @param ZoneIds: 可用区信息
        # @type ZoneIds: Array
        # @param VirtualHostNumber: 虚拟主机数量
        # @type VirtualHostNumber: Integer
        # @param QueueNumber: 队列数量
        # @type QueueNumber: Integer
        # @param MessagePublishRate: 每秒生产消息数 单位：条/秒
        # @type MessagePublishRate: Float
        # @param MessageStackNumber: 堆积消息数 单位：条
        # @type MessageStackNumber: Integer
        # @param ExpireTime: 实例到期时间，按量付费的资源该值为 0，毫秒为单位。unix 时间戳
        # @type ExpireTime: Integer
        # @param ChannelNumber: Channel数量
        # @type ChannelNumber: Integer
        # @param ConnectionNumber: Connection数量
        # @type ConnectionNumber: Integer
        # @param ConsumerNumber: Consumer数量
        # @type ConsumerNumber: Integer
        # @param ExchangeNumber: Exchang数量
        # @type ExchangeNumber: Integer
        # @param ExceptionInformation: 集群异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionInformation: String
        # @param ClusterStatus: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # @type ClusterStatus: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param MirrorQueuePolicyFlag: 是否开启镜像队列策略。1表示开启，0表示没开启。
        # @type MirrorQueuePolicyFlag: Integer
        # @param MessageConsumeRate: 每秒消费消息数 单位：条/秒
        # @type MessageConsumeRate: Float
        # @param ClusterVersion: 集群版本信息
        # @type ClusterVersion: String
        # @param PayMode: 计费模式，0-后付费，1-预付费
        # @type PayMode: Integer
        # @param InstanceType: 实例类型，0 专享版、1 Serverless 版
        # @type InstanceType: Integer
        # @param IsolatedTime: 开始隔离时间。unix 时间戳
        # @type IsolatedTime: Integer
        # @param Container: 是否为容器实例，默认 true
        # @type Container: Boolean
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param EnableDeletionProtection: 是否已开启删除保护
        # @type EnableDeletionProtection: Boolean

        attr_accessor :ClusterId, :ClusterName, :Region, :CreateTime, :Remark, :Vpcs, :ZoneIds, :VirtualHostNumber, :QueueNumber, :MessagePublishRate, :MessageStackNumber, :ExpireTime, :ChannelNumber, :ConnectionNumber, :ConsumerNumber, :ExchangeNumber, :ExceptionInformation, :ClusterStatus, :AutoRenewFlag, :MirrorQueuePolicyFlag, :MessageConsumeRate, :ClusterVersion, :PayMode, :InstanceType, :IsolatedTime, :Container, :Tags, :EnableDeletionProtection

        def initialize(clusterid=nil, clustername=nil, region=nil, createtime=nil, remark=nil, vpcs=nil, zoneids=nil, virtualhostnumber=nil, queuenumber=nil, messagepublishrate=nil, messagestacknumber=nil, expiretime=nil, channelnumber=nil, connectionnumber=nil, consumernumber=nil, exchangenumber=nil, exceptioninformation=nil, clusterstatus=nil, autorenewflag=nil, mirrorqueuepolicyflag=nil, messageconsumerate=nil, clusterversion=nil, paymode=nil, instancetype=nil, isolatedtime=nil, container=nil, tags=nil, enabledeletionprotection=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @CreateTime = createtime
          @Remark = remark
          @Vpcs = vpcs
          @ZoneIds = zoneids
          @VirtualHostNumber = virtualhostnumber
          @QueueNumber = queuenumber
          @MessagePublishRate = messagepublishrate
          @MessageStackNumber = messagestacknumber
          @ExpireTime = expiretime
          @ChannelNumber = channelnumber
          @ConnectionNumber = connectionnumber
          @ConsumerNumber = consumernumber
          @ExchangeNumber = exchangenumber
          @ExceptionInformation = exceptioninformation
          @ClusterStatus = clusterstatus
          @AutoRenewFlag = autorenewflag
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
          @MessageConsumeRate = messageconsumerate
          @ClusterVersion = clusterversion
          @PayMode = paymode
          @InstanceType = instancetype
          @IsolatedTime = isolatedtime
          @Container = container
          @Tags = tags
          @EnableDeletionProtection = enabledeletionprotection
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              vpcendpointinfo_tmp = VpcEndpointInfo.new
              vpcendpointinfo_tmp.deserialize(i)
              @Vpcs << vpcendpointinfo_tmp
            end
          end
          @ZoneIds = params['ZoneIds']
          @VirtualHostNumber = params['VirtualHostNumber']
          @QueueNumber = params['QueueNumber']
          @MessagePublishRate = params['MessagePublishRate']
          @MessageStackNumber = params['MessageStackNumber']
          @ExpireTime = params['ExpireTime']
          @ChannelNumber = params['ChannelNumber']
          @ConnectionNumber = params['ConnectionNumber']
          @ConsumerNumber = params['ConsumerNumber']
          @ExchangeNumber = params['ExchangeNumber']
          @ExceptionInformation = params['ExceptionInformation']
          @ClusterStatus = params['ClusterStatus']
          @AutoRenewFlag = params['AutoRenewFlag']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
          @MessageConsumeRate = params['MessageConsumeRate']
          @ClusterVersion = params['ClusterVersion']
          @PayMode = params['PayMode']
          @InstanceType = params['InstanceType']
          @IsolatedTime = params['IsolatedTime']
          @Container = params['Container']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @EnableDeletionProtection = params['EnableDeletionProtection']
        end
      end

      # RabbitMQ集群规格信息
      class RabbitMQClusterSpecInfo < TencentCloud::Common::AbstractModel
        # @param SpecName: 集群规格名称
        # @type SpecName: String
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param MaxTps: 峰值tps
        # @type MaxTps: Integer
        # @param MaxBandWidth: 峰值带宽。单位：mbps
        # @type MaxBandWidth: Integer
        # @param MaxStorage: 存储容量。单位：GB
        # @type MaxStorage: Integer
        # @param PublicNetworkTps: 公网带宽tps。单位：Mbps
        # @type PublicNetworkTps: Integer

        attr_accessor :SpecName, :NodeCount, :MaxTps, :MaxBandWidth, :MaxStorage, :PublicNetworkTps

        def initialize(specname=nil, nodecount=nil, maxtps=nil, maxbandwidth=nil, maxstorage=nil, publicnetworktps=nil)
          @SpecName = specname
          @NodeCount = nodecount
          @MaxTps = maxtps
          @MaxBandWidth = maxbandwidth
          @MaxStorage = maxstorage
          @PublicNetworkTps = publicnetworktps
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @NodeCount = params['NodeCount']
          @MaxTps = params['MaxTps']
          @MaxBandWidth = params['MaxBandWidth']
          @MaxStorage = params['MaxStorage']
          @PublicNetworkTps = params['PublicNetworkTps']
        end
      end

      # RabbiteMQ集群白名单信息
      class RabbitMQClusterWhiteListInfo < TencentCloud::Common::AbstractModel
        # @param WhiteList: 废弃
        # @type WhiteList: String
        # @param PublicControlConsoleWhiteList: 公网管控台白名单
        # @type PublicControlConsoleWhiteList: String
        # @param PublicDataStreamWhiteList: 公网数据流白名单
        # @type PublicDataStreamWhiteList: String
        # @param PublicControlConsoleWhiteListStatus: 公网管控台白名单状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicControlConsoleWhiteListStatus: String
        # @param PublicDataStreamWhiteListStatus: 公网数据流白名单状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicDataStreamWhiteListStatus: String

        attr_accessor :WhiteList, :PublicControlConsoleWhiteList, :PublicDataStreamWhiteList, :PublicControlConsoleWhiteListStatus, :PublicDataStreamWhiteListStatus

        def initialize(whitelist=nil, publiccontrolconsolewhitelist=nil, publicdatastreamwhitelist=nil, publiccontrolconsolewhiteliststatus=nil, publicdatastreamwhiteliststatus=nil)
          @WhiteList = whitelist
          @PublicControlConsoleWhiteList = publiccontrolconsolewhitelist
          @PublicDataStreamWhiteList = publicdatastreamwhitelist
          @PublicControlConsoleWhiteListStatus = publiccontrolconsolewhiteliststatus
          @PublicDataStreamWhiteListStatus = publicdatastreamwhiteliststatus
        end

        def deserialize(params)
          @WhiteList = params['WhiteList']
          @PublicControlConsoleWhiteList = params['PublicControlConsoleWhiteList']
          @PublicDataStreamWhiteList = params['PublicDataStreamWhiteList']
          @PublicControlConsoleWhiteListStatus = params['PublicControlConsoleWhiteListStatus']
          @PublicDataStreamWhiteListStatus = params['PublicDataStreamWhiteListStatus']
        end
      end

      # RabbitMQ exchange列表成员信息
      class RabbitMQExchangeListInfo < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param Remark: 备注说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param ExchangeType: exchange 类型, 支持 "fanout","direct","topic","headers"
        # @type ExchangeType: String
        # @param VirtualHost: 交换机所属 Virtual Host 名称
        # @type VirtualHost: String
        # @param ExchangeCreator: exchange 创建者, "system":"系统创建", "user":"用户创建"
        # @type ExchangeCreator: String
        # @param CreateTimeStamp: exchange 创建时间
        # @type CreateTimeStamp: String
        # @param ModTimeStamp: exchange 修改时间
        # @type ModTimeStamp: String
        # @param MessageRateIn: 输入消息速率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageRateIn: Float
        # @param MessageRateOut: 输出消息速率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageRateOut: Float
        # @param Durable: 是否为持久化交换机，true 为持久化，false 为非持久化
        # @type Durable: Boolean
        # @param AutoDelete: 是否为自动删除交换机，true 为自动删除，false 为非自动删除
        # @type AutoDelete: Boolean
        # @param Internal: 是否为内部交换机，true 为内部交换机
        # @type Internal: Boolean
        # @param InstanceId: 交换机所属实例 ID
        # @type InstanceId: String
        # @param Policy: 生效的策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value 对象
        # @type Arguments: String
        # @param MessagesDelayed: 未调度的延时消息数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessagesDelayed: Integer
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :ExchangeName, :Remark, :ExchangeType, :VirtualHost, :ExchangeCreator, :CreateTimeStamp, :ModTimeStamp, :MessageRateIn, :MessageRateOut, :Durable, :AutoDelete, :Internal, :InstanceId, :Policy, :Arguments, :MessagesDelayed, :CreateTs, :ModifyTs

        def initialize(exchangename=nil, remark=nil, exchangetype=nil, virtualhost=nil, exchangecreator=nil, createtimestamp=nil, modtimestamp=nil, messageratein=nil, messagerateout=nil, durable=nil, autodelete=nil, internal=nil, instanceid=nil, policy=nil, arguments=nil, messagesdelayed=nil, createts=nil, modifyts=nil)
          @ExchangeName = exchangename
          @Remark = remark
          @ExchangeType = exchangetype
          @VirtualHost = virtualhost
          @ExchangeCreator = exchangecreator
          @CreateTimeStamp = createtimestamp
          @ModTimeStamp = modtimestamp
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @Durable = durable
          @AutoDelete = autodelete
          @Internal = internal
          @InstanceId = instanceid
          @Policy = policy
          @Arguments = arguments
          @MessagesDelayed = messagesdelayed
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @Remark = params['Remark']
          @ExchangeType = params['ExchangeType']
          @VirtualHost = params['VirtualHost']
          @ExchangeCreator = params['ExchangeCreator']
          @CreateTimeStamp = params['CreateTimeStamp']
          @ModTimeStamp = params['ModTimeStamp']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Internal = params['Internal']
          @InstanceId = params['InstanceId']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @MessagesDelayed = params['MessagesDelayed']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # RabbitMQ权限详情
      class RabbitMQPermission < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，形如 admin。有效的 User 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，点击集群列表中的集群，进入集群详情，并在用户与权限页签中找到用户列表，从而找到用户名称。
        # @type User: String
        # @param VirtualHost: VirtualHost 名称，形如 testvhost。有效的 VirtualHost 名称可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询，在左侧导航栏点击 Vhost，并在 Vhost 列表中找到 Vhost 名称。
        # @type VirtualHost: String
        # @param ConfigRegexp: 权限类型，declare相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ConfigRegexp: String
        # @param WriteRegexp: 权限类型，消息写入相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type WriteRegexp: String
        # @param ReadRegexp: 权限类型，消息读取相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ReadRegexp: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :InstanceId, :User, :VirtualHost, :ConfigRegexp, :WriteRegexp, :ReadRegexp, :CreateTime, :ModifyTime, :CreateTs, :ModifyTs

        def initialize(instanceid=nil, user=nil, virtualhost=nil, configregexp=nil, writeregexp=nil, readregexp=nil, createtime=nil, modifytime=nil, createts=nil, modifyts=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @ConfigRegexp = configregexp
          @WriteRegexp = writeregexp
          @ReadRegexp = readregexp
          @CreateTime = createtime
          @ModifyTime = modifytime
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @ConfigRegexp = params['ConfigRegexp']
          @WriteRegexp = params['WriteRegexp']
          @ReadRegexp = params['ReadRegexp']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # RabbitMQ 节点信息
      class RabbitMQPrivateNode < TencentCloud::Common::AbstractModel
        # @param NodeName: 节点名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param NodeStatus: 节点状态，running 运行中，down 异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeStatus: String
        # @param CPUUsage: CPU使用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPUUsage: String
        # @param Memory: 内存使用情况，单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param DiskUsage: 磁盘使用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskUsage: String
        # @param ProcessNumber: Rabbitmq的Erlang进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessNumber: Integer

        attr_accessor :NodeName, :NodeStatus, :CPUUsage, :Memory, :DiskUsage, :ProcessNumber

        def initialize(nodename=nil, nodestatus=nil, cpuusage=nil, memory=nil, diskusage=nil, processnumber=nil)
          @NodeName = nodename
          @NodeStatus = nodestatus
          @CPUUsage = cpuusage
          @Memory = memory
          @DiskUsage = diskusage
          @ProcessNumber = processnumber
        end

        def deserialize(params)
          @NodeName = params['NodeName']
          @NodeStatus = params['NodeStatus']
          @CPUUsage = params['CPUUsage']
          @Memory = params['Memory']
          @DiskUsage = params['DiskUsage']
          @ProcessNumber = params['ProcessNumber']
        end
      end

      # RabbitMQ队列列表消费者信息
      class RabbitMQQueueListConsumerDetailInfo < TencentCloud::Common::AbstractModel
        # @param ConsumersNumber: 消费者数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumersNumber: Integer

        attr_accessor :ConsumersNumber

        def initialize(consumersnumber=nil)
          @ConsumersNumber = consumersnumber
        end

        def deserialize(params)
          @ConsumersNumber = params['ConsumersNumber']
        end
      end

      # RabbitMQ队列列表成员信息
      class RabbitMQQueueListInfo < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名
        # @type QueueName: String
        # @param Remark: 备注说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param ConsumerDetail: 消费者信息
        # @type ConsumerDetail: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQQueueListConsumerDetailInfo`
        # @param QueueType: 队列类型，取值 "classic"，"quorum"
        # @type QueueType: String
        # @param MessageHeapCount: 消息堆积数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageHeapCount: Integer
        # @param MessageRateIn: 消息生产速率，每秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageRateIn: Float
        # @param MessageRateOut: 消息消费速率，每秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageRateOut: Float
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Durable: 队列是否持久化，true 为持久化，false 为非持久化
        # @type Durable: Boolean
        # @param AutoDelete: 队列是否为自动删除队列，true 为自动删除，false 为非自动删除
        # @type AutoDelete: Boolean
        # @param InstanceId: 队列所属实例 ID
        # @type InstanceId: String
        # @param VirtualHost: 队列所属虚拟主机名称
        # @type VirtualHost: String
        # @param Node: 队列所在主节点名称
        # @type Node: String
        # @param Policy: 生效的策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value 对象
        # @type Arguments: String
        # @param Exclusive: 是否独占队列
        # @type Exclusive: Boolean
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :QueueName, :Remark, :ConsumerDetail, :QueueType, :MessageHeapCount, :MessageRateIn, :MessageRateOut, :CreateTime, :ModifyTime, :Durable, :AutoDelete, :InstanceId, :VirtualHost, :Node, :Policy, :Arguments, :Exclusive, :CreateTs, :ModifyTs

        def initialize(queuename=nil, remark=nil, consumerdetail=nil, queuetype=nil, messageheapcount=nil, messageratein=nil, messagerateout=nil, createtime=nil, modifytime=nil, durable=nil, autodelete=nil, instanceid=nil, virtualhost=nil, node=nil, policy=nil, arguments=nil, exclusive=nil, createts=nil, modifyts=nil)
          @QueueName = queuename
          @Remark = remark
          @ConsumerDetail = consumerdetail
          @QueueType = queuetype
          @MessageHeapCount = messageheapcount
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Durable = durable
          @AutoDelete = autodelete
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Node = node
          @Policy = policy
          @Arguments = arguments
          @Exclusive = exclusive
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @Remark = params['Remark']
          unless params['ConsumerDetail'].nil?
            @ConsumerDetail = RabbitMQQueueListConsumerDetailInfo.new
            @ConsumerDetail.deserialize(params['ConsumerDetail'])
          end
          @QueueType = params['QueueType']
          @MessageHeapCount = params['MessageHeapCount']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Node = params['Node']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @Exclusive = params['Exclusive']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # RabbitMQ用户实体详情
      class RabbitMQUser < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如 amqp-xxxxxxxx。有效的 InstanceId 可通过登录 [TDMQ RabbitMQ 控制台](https://console.cloud.tencent.com/trabbitmq/cluster?rid=1)查询。
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param Password: 密码，登录时使用
        # @type Password: String
        # @param Description: 用户描述
        # @type Description: String
        # @param Tags: 用户标签，用于决定改用户访问RabbitMQ Management的权限范围
        # @type Tags: Array
        # @param CreateTime: 用户创建时间
        # @type CreateTime: String
        # @param ModifyTime: 用户最后修改时间
        # @type ModifyTime: String
        # @param Type: 用户类型，System：系统创建，User：用户创建
        # @type Type: String
        # @param MaxConnections: 单个用户最大可用连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConnections: Integer
        # @param MaxChannels: 单个用户最大可用通道数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxChannels: Integer
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :CreateTime, :ModifyTime, :Type, :MaxConnections, :MaxChannels, :CreateTs, :ModifyTs

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, createtime=nil, modifytime=nil, type=nil, maxconnections=nil, maxchannels=nil, createts=nil, modifyts=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Type = type
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Type = params['Type']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # RabbitMQ 实例用户配额信息
      class RabbitMQUserQuota < TencentCloud::Common::AbstractModel
        # @param MaxUser: 最大可创建用户数
        # @type MaxUser: Integer
        # @param UsedUser: 已使用用户数
        # @type UsedUser: Integer

        attr_accessor :MaxUser, :UsedUser

        def initialize(maxuser=nil, useduser=nil)
          @MaxUser = maxuser
          @UsedUser = useduser
        end

        def deserialize(params)
          @MaxUser = params['MaxUser']
          @UsedUser = params['UsedUser']
        end
      end

      # RabbitMQ 托管版实例信息
      class RabbitMQVipInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceVersion: 实例版本
        # @type InstanceVersion: String
        # @param Status: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # @type Status: Integer
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param ConfigDisplay: 实例配置规格名称
        # @type ConfigDisplay: String
        # @param MaxTps: 峰值TPS
        # @type MaxTps: Integer
        # @param MaxBandWidth: 峰值带宽，Mbps为单位
        # @type MaxBandWidth: Integer
        # @param MaxStorage: 存储容量，GB为单位
        # @type MaxStorage: Integer
        # @param ExpireTime: 实例到期时间，按量付费的资源该值为 0，毫秒为单位。unix 时间戳
        # @type ExpireTime: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param PayMode: 1 表示预付费，0 表示后付费
        # @type PayMode: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param SpecName: 集群的节点规格，需要输入对应的规格标识：
        # 2C8G：rabbit-vip-basic-2c8g
        # 4C16G：rabbit-vip-basic-4c16g
        # 8C32G：rabbit-vip-basic-8c32g
        # 16C32G：rabbit-vip-basic-4
        # 16C64G：rabbit-vip-basic-16c64g
        # 2C4G：rabbit-vip-basic-5
        # 4C8G：rabbit-vip-basic-1
        # 8C16G（已售罄）：rabbit-vip-basic-2
        # 不传默认为4C8G：rabbit-vip-basic-1
        # @type SpecName: String
        # @param ExceptionInformation: 集群异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionInformation: String
        # @param ClusterStatus: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # 为了和计费区分开，额外开启一个状态位，用于显示。
        # @type ClusterStatus: Integer
        # @param PublicAccessEndpoint: 公网接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccessEndpoint: String
        # @param Vpcs: VPC 接入点列表
        # @type Vpcs: Array
        # @param CreateTime: 创建时间，毫秒为单位。unix 时间戳
        # @type CreateTime: Integer
        # @param InstanceType: 实例类型，0 托管版、1 Serverless 版
        # @type InstanceType: Integer
        # @param IsolatedTime: 隔离时间，毫秒为单位。unix 时间戳
        # @type IsolatedTime: Integer
        # @param EnableDeletionProtection: 是否已开启删除保护
        # @type EnableDeletionProtection: Boolean
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :InstanceId, :InstanceName, :InstanceVersion, :Status, :NodeCount, :ConfigDisplay, :MaxTps, :MaxBandWidth, :MaxStorage, :ExpireTime, :AutoRenewFlag, :PayMode, :Remark, :SpecName, :ExceptionInformation, :ClusterStatus, :PublicAccessEndpoint, :Vpcs, :CreateTime, :InstanceType, :IsolatedTime, :EnableDeletionProtection, :Tags

        def initialize(instanceid=nil, instancename=nil, instanceversion=nil, status=nil, nodecount=nil, configdisplay=nil, maxtps=nil, maxbandwidth=nil, maxstorage=nil, expiretime=nil, autorenewflag=nil, paymode=nil, remark=nil, specname=nil, exceptioninformation=nil, clusterstatus=nil, publicaccessendpoint=nil, vpcs=nil, createtime=nil, instancetype=nil, isolatedtime=nil, enabledeletionprotection=nil, tags=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceVersion = instanceversion
          @Status = status
          @NodeCount = nodecount
          @ConfigDisplay = configdisplay
          @MaxTps = maxtps
          @MaxBandWidth = maxbandwidth
          @MaxStorage = maxstorage
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @PayMode = paymode
          @Remark = remark
          @SpecName = specname
          @ExceptionInformation = exceptioninformation
          @ClusterStatus = clusterstatus
          @PublicAccessEndpoint = publicaccessendpoint
          @Vpcs = vpcs
          @CreateTime = createtime
          @InstanceType = instancetype
          @IsolatedTime = isolatedtime
          @EnableDeletionProtection = enabledeletionprotection
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceVersion = params['InstanceVersion']
          @Status = params['Status']
          @NodeCount = params['NodeCount']
          @ConfigDisplay = params['ConfigDisplay']
          @MaxTps = params['MaxTps']
          @MaxBandWidth = params['MaxBandWidth']
          @MaxStorage = params['MaxStorage']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PayMode = params['PayMode']
          @Remark = params['Remark']
          @SpecName = params['SpecName']
          @ExceptionInformation = params['ExceptionInformation']
          @ClusterStatus = params['ClusterStatus']
          @PublicAccessEndpoint = params['PublicAccessEndpoint']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              vpcendpointinfo_tmp = VpcEndpointInfo.new
              vpcendpointinfo_tmp.deserialize(i)
              @Vpcs << vpcendpointinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @InstanceType = params['InstanceType']
          @IsolatedTime = params['IsolatedTime']
          @EnableDeletionProtection = params['EnableDeletionProtection']
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

      # RabbitMQ的vhost详情
      class RabbitMQVirtualHostInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param Description: vhost描述信息
        # @type Description: String
        # @param Tags: vhost标签
        # @type Tags: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param VirtualHostStatistics: vhost概览统计信息
        # @type VirtualHostStatistics: :class:`Tencentcloud::Tdmq.v20200217.models.RabbitMQVirtualHostStatistics`
        # @param TraceFlag: 消息轨迹开关,true打开,false关闭
        # @type TraceFlag: Boolean
        # @param Status: vhost状态，与原生控制台对应，有running、partial、stopped、unknown
        # @type Status: String
        # @param MessageHeapCount: 消息堆积数
        # @type MessageHeapCount: Integer
        # @param MessageRateIn: 输入消息速率
        # @type MessageRateIn: Float
        # @param MessageRateOut: 输出消息速率
        # @type MessageRateOut: Float
        # @param MirrorQueuePolicyFlag: 是否存在镜像队列策略，true 为存在，false 为不存
        # @type MirrorQueuePolicyFlag: Boolean
        # @param CreateTs: 创建时间时间戳
        # @type CreateTs: Integer
        # @param ModifyTs: 修改时间时间戳
        # @type ModifyTs: Integer

        attr_accessor :InstanceId, :VirtualHost, :Description, :Tags, :CreateTime, :ModifyTime, :VirtualHostStatistics, :TraceFlag, :Status, :MessageHeapCount, :MessageRateIn, :MessageRateOut, :MirrorQueuePolicyFlag, :CreateTs, :ModifyTs

        def initialize(instanceid=nil, virtualhost=nil, description=nil, tags=nil, createtime=nil, modifytime=nil, virtualhoststatistics=nil, traceflag=nil, status=nil, messageheapcount=nil, messageratein=nil, messagerateout=nil, mirrorqueuepolicyflag=nil, createts=nil, modifyts=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @Tags = tags
          @CreateTime = createtime
          @ModifyTime = modifytime
          @VirtualHostStatistics = virtualhoststatistics
          @TraceFlag = traceflag
          @Status = status
          @MessageHeapCount = messageheapcount
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
          @CreateTs = createts
          @ModifyTs = modifyts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @Tags = params['Tags']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          unless params['VirtualHostStatistics'].nil?
            @VirtualHostStatistics = RabbitMQVirtualHostStatistics.new
            @VirtualHostStatistics.deserialize(params['VirtualHostStatistics'])
          end
          @TraceFlag = params['TraceFlag']
          @Status = params['Status']
          @MessageHeapCount = params['MessageHeapCount']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
          @CreateTs = params['CreateTs']
          @ModifyTs = params['ModifyTs']
        end
      end

      # vhost概览统计信息
      class RabbitMQVirtualHostStatistics < TencentCloud::Common::AbstractModel
        # @param CurrentQueues: 当前vhost的queue数量
        # @type CurrentQueues: Integer
        # @param CurrentExchanges: 当前vhost的exchange数量
        # @type CurrentExchanges: Integer
        # @param CurrentConnections: 当前vhost的连接数量
        # @type CurrentConnections: Integer
        # @param CurrentChannels: 当前vhost的channel数量
        # @type CurrentChannels: Integer
        # @param CurrentUsers: 当前vhost的用户数量
        # @type CurrentUsers: Integer

        attr_accessor :CurrentQueues, :CurrentExchanges, :CurrentConnections, :CurrentChannels, :CurrentUsers

        def initialize(currentqueues=nil, currentexchanges=nil, currentconnections=nil, currentchannels=nil, currentusers=nil)
          @CurrentQueues = currentqueues
          @CurrentExchanges = currentexchanges
          @CurrentConnections = currentconnections
          @CurrentChannels = currentchannels
          @CurrentUsers = currentusers
        end

        def deserialize(params)
          @CurrentQueues = params['CurrentQueues']
          @CurrentExchanges = params['CurrentExchanges']
          @CurrentConnections = params['CurrentConnections']
          @CurrentChannels = params['CurrentChannels']
          @CurrentUsers = params['CurrentUsers']
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
        # @param SubInitialPosition: 默认值为：Earliest。用作判定consumer初始接收消息的位置，可选参数为：Earliest, Latest
        # @type SubInitialPosition: String
        # @param MaxNumMessages: 用于设置BatchReceivePolicy，指在一次batch中最多接收多少条消息，默认是 0。即不开启BatchReceivePolicy
        # @type MaxNumMessages: Integer
        # @param MaxNumBytes: 用于设置BatchReceivePolicy，指在一次batch中最多接收的消息体有多大，单位是 bytes。默认是 0，即不开启BatchReceivePolicy
        # @type MaxNumBytes: Integer
        # @param Timeout: 用于设置BatchReceivePolicy，指在一次batch消息的接收z中最多等待的超时时间，单位是毫秒。默认是 0，即不开启BatchReceivePolicy
        # @type Timeout: Integer

        attr_accessor :Topic, :SubscriptionName, :ReceiverQueueSize, :SubInitialPosition, :MaxNumMessages, :MaxNumBytes, :Timeout

        def initialize(topic=nil, subscriptionname=nil, receiverqueuesize=nil, subinitialposition=nil, maxnummessages=nil, maxnumbytes=nil, timeout=nil)
          @Topic = topic
          @SubscriptionName = subscriptionname
          @ReceiverQueueSize = receiverqueuesize
          @SubInitialPosition = subinitialposition
          @MaxNumMessages = maxnummessages
          @MaxNumBytes = maxnumbytes
          @Timeout = timeout
        end

        def deserialize(params)
          @Topic = params['Topic']
          @SubscriptionName = params['SubscriptionName']
          @ReceiverQueueSize = params['ReceiverQueueSize']
          @SubInitialPosition = params['SubInitialPosition']
          @MaxNumMessages = params['MaxNumMessages']
          @MaxNumBytes = params['MaxNumBytes']
          @Timeout = params['Timeout']
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
        # @type ErrorMsg: String
        # @param SubName: 返回订阅者的名字，用来创建 ack consumer时使用
        # @type SubName: String
        # @param MessageIDList: BatchReceivePolicy 一次性返回的多条消息的 MessageID，用 ‘###’ 来区分不同的 MessageID
        # @type MessageIDList: String
        # @param MessagesPayload: BatchReceivePolicy 一次性返回的多条消息的消息内容，用 ‘###’ 来区分不同的消息内容
        # @type MessagesPayload: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageID, :MessagePayload, :AckTopic, :ErrorMsg, :SubName, :MessageIDList, :MessagesPayload, :RequestId

        def initialize(messageid=nil, messagepayload=nil, acktopic=nil, errormsg=nil, subname=nil, messageidlist=nil, messagespayload=nil, requestid=nil)
          @MessageID = messageid
          @MessagePayload = messagepayload
          @AckTopic = acktopic
          @ErrorMsg = errormsg
          @SubName = subname
          @MessageIDList = messageidlist
          @MessagesPayload = messagespayload
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageID = params['MessageID']
          @MessagePayload = params['MessagePayload']
          @AckTopic = params['AckTopic']
          @ErrorMsg = params['ErrorMsg']
          @SubName = params['SubName']
          @MessageIDList = params['MessageIDList']
          @MessagesPayload = params['MessagesPayload']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ResetRocketMQConsumerOffSet请求参数结构体
      class ResetRocketMQConsumerOffSetRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupId: 消费组名称
        # @type GroupId: String
        # @param Type: 重置方式，0表示从最新位点开始，1表示从指定时间点开始
        # @type Type: Integer
        # @param Topic: 主题名称
        # @type Topic: String
        # @param ResetTimestamp: 重置指定的时间戳，仅在 Type 为1是生效，以毫秒为单位
        # @type ResetTimestamp: Integer

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :Type, :Topic, :ResetTimestamp

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, type=nil, topic=nil, resettimestamp=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @Type = type
          @Topic = topic
          @ResetTimestamp = resettimestamp
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @Type = params['Type']
          @Topic = params['Topic']
          @ResetTimestamp = params['ResetTimestamp']
        end
      end

      # ResetRocketMQConsumerOffSet返回参数结构体
      class ResetRocketMQConsumerOffSetResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
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

      # RetryRocketMQDlqMessage请求参数结构体
      class RetryRocketMQDlqMessageRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称
        # @type NamespaceId: String
        # @param GroupName: group名称
        # @type GroupName: String
        # @param MessageIds: 死信消息ID
        # @type MessageIds: Array

        attr_accessor :ClusterId, :NamespaceId, :GroupName, :MessageIds

        def initialize(clusterid=nil, namespaceid=nil, groupname=nil, messageids=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupName = groupname
          @MessageIds = messageids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupName = params['GroupName']
          @MessageIds = params['MessageIds']
        end
      end

      # RetryRocketMQDlqMessage返回参数结构体
      class RetryRocketMQDlqMessageResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # RewindCmqQueue请求参数结构体
      class RewindCmqQueueRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名字，在单个地域同一账号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # RocketMQ集群配置
      class RocketMQClusterConfig < TencentCloud::Common::AbstractModel
        # @param MaxTpsPerNamespace: 单命名空间TPS上限
        # @type MaxTpsPerNamespace: Integer
        # @param MaxNamespaceNum: 最大命名空间数量
        # @type MaxNamespaceNum: Integer
        # @param UsedNamespaceNum: 已使用命名空间数量
        # @type UsedNamespaceNum: Integer
        # @param MaxTopicNum: 最大Topic数量
        # @type MaxTopicNum: Integer
        # @param UsedTopicNum: 已使用Topic数量
        # @type UsedTopicNum: Integer
        # @param MaxGroupNum: 最大Group数量
        # @type MaxGroupNum: Integer
        # @param UsedGroupNum: 已使用Group数量
        # @type UsedGroupNum: Integer
        # @param MaxRetentionTime: 消息最大保留时间，以毫秒为单位
        # @type MaxRetentionTime: Integer
        # @param MaxLatencyTime: 消息最长延时，以毫秒为单位
        # @type MaxLatencyTime: Integer
        # @param MaxQueuesPerTopic: 单个主题最大队列数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxQueuesPerTopic: Integer
        # @param TopicDistribution: topic分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicDistribution: Array
        # @param MaxRoleNum: 最大角色数量
        # @type MaxRoleNum: Integer
        # @param MaxTpsLimit: TPS限额
        # @type MaxTpsLimit: Integer

        attr_accessor :MaxTpsPerNamespace, :MaxNamespaceNum, :UsedNamespaceNum, :MaxTopicNum, :UsedTopicNum, :MaxGroupNum, :UsedGroupNum, :MaxRetentionTime, :MaxLatencyTime, :MaxQueuesPerTopic, :TopicDistribution, :MaxRoleNum, :MaxTpsLimit
        extend Gem::Deprecate
        deprecate :MaxTpsPerNamespace, :none, 2025, 7
        deprecate :MaxTpsPerNamespace=, :none, 2025, 7

        def initialize(maxtpspernamespace=nil, maxnamespacenum=nil, usednamespacenum=nil, maxtopicnum=nil, usedtopicnum=nil, maxgroupnum=nil, usedgroupnum=nil, maxretentiontime=nil, maxlatencytime=nil, maxqueuespertopic=nil, topicdistribution=nil, maxrolenum=nil, maxtpslimit=nil)
          @MaxTpsPerNamespace = maxtpspernamespace
          @MaxNamespaceNum = maxnamespacenum
          @UsedNamespaceNum = usednamespacenum
          @MaxTopicNum = maxtopicnum
          @UsedTopicNum = usedtopicnum
          @MaxGroupNum = maxgroupnum
          @UsedGroupNum = usedgroupnum
          @MaxRetentionTime = maxretentiontime
          @MaxLatencyTime = maxlatencytime
          @MaxQueuesPerTopic = maxqueuespertopic
          @TopicDistribution = topicdistribution
          @MaxRoleNum = maxrolenum
          @MaxTpsLimit = maxtpslimit
        end

        def deserialize(params)
          @MaxTpsPerNamespace = params['MaxTpsPerNamespace']
          @MaxNamespaceNum = params['MaxNamespaceNum']
          @UsedNamespaceNum = params['UsedNamespaceNum']
          @MaxTopicNum = params['MaxTopicNum']
          @UsedTopicNum = params['UsedTopicNum']
          @MaxGroupNum = params['MaxGroupNum']
          @UsedGroupNum = params['UsedGroupNum']
          @MaxRetentionTime = params['MaxRetentionTime']
          @MaxLatencyTime = params['MaxLatencyTime']
          @MaxQueuesPerTopic = params['MaxQueuesPerTopic']
          unless params['TopicDistribution'].nil?
            @TopicDistribution = []
            params['TopicDistribution'].each do |i|
              rocketmqtopicdistribution_tmp = RocketMQTopicDistribution.new
              rocketmqtopicdistribution_tmp.deserialize(i)
              @TopicDistribution << rocketmqtopicdistribution_tmp
            end
          end
          @MaxRoleNum = params['MaxRoleNum']
          @MaxTpsLimit = params['MaxTpsLimit']
        end
      end

      # 租户RocketMQ集群详细信息
      class RocketMQClusterDetail < TencentCloud::Common::AbstractModel
        # @param Info: 集群基本信息
        # @type Info: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterInfo`
        # @param Config: 集群配置信息
        # @type Config: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterConfig`
        # @param Status: 集群状态，0:创建中，1:正常，2:销毁中，3:已删除，4: 隔离中，5:创建失败，6: 删除失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Info, :Config, :Status

        def initialize(info=nil, config=nil, status=nil)
          @Info = info
          @Config = config
          @Status = status
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = RocketMQClusterInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['Config'].nil?
            @Config = RocketMQClusterConfig.new
            @Config.deserialize(params['Config'])
          end
          @Status = params['Status']
        end
      end

      # RocketMQ集群基本信息
      class RocketMQClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域信息
        # @type Region: String
        # @param CreateTime: 创建时间，毫秒为单位
        # @type CreateTime: Integer
        # @param Remark: 集群说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PublicEndPoint: 公网接入地址
        # @type PublicEndPoint: String
        # @param VpcEndPoint: VPC接入地址
        # @type VpcEndPoint: String
        # @param SupportNamespaceEndpoint: 是否支持命名空间接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportNamespaceEndpoint: Boolean
        # @param Vpcs: VPC信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vpcs: Array
        # @param IsVip: 是否为专享实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param RocketMQFlag: Rocketmq集群标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RocketMQFlag: Boolean
        # @param Status: 计费状态，1表示正常，2表示已停服，3表示已销毁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsolateTime: 欠费停服时间，毫秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: Integer
        # @param HttpPublicEndpoint: HTTP协议公网接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpPublicEndpoint: String
        # @param HttpVpcEndpoint: HTTP协议VPC接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpVpcEndpoint: String
        # @param InternalEndpoint: TCP内部接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalEndpoint: String
        # @param HttpInternalEndpoint: HTTP协议内部接入地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpInternalEndpoint: String
        # @param AclEnabled: 是否开启ACL鉴权，专享实例支持关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclEnabled: Boolean
        # @param PublicClbId: 公网CLB实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicClbId: String
        # @param Vip: vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param VpcId: 所属VPC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SupportMigration: 是否支持迁移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportMigration: Boolean
        # @param InstanceStatus: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败，6 - 变配中，7 - 变配失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: Integer
        # @param ZoneId: 集群所属可用区，表明集群归属的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneIds: 集群节点所在的可用区，若该集群为跨可用区集群，则包含该集群节点所在的多个可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array
        # @param IsFrozen: 是否已冻结
        # @type IsFrozen: Boolean

        attr_accessor :ClusterId, :ClusterName, :Region, :CreateTime, :Remark, :PublicEndPoint, :VpcEndPoint, :SupportNamespaceEndpoint, :Vpcs, :IsVip, :RocketMQFlag, :Status, :IsolateTime, :HttpPublicEndpoint, :HttpVpcEndpoint, :InternalEndpoint, :HttpInternalEndpoint, :AclEnabled, :PublicClbId, :Vip, :VpcId, :SupportMigration, :InstanceStatus, :ZoneId, :ZoneIds, :IsFrozen

        def initialize(clusterid=nil, clustername=nil, region=nil, createtime=nil, remark=nil, publicendpoint=nil, vpcendpoint=nil, supportnamespaceendpoint=nil, vpcs=nil, isvip=nil, rocketmqflag=nil, status=nil, isolatetime=nil, httppublicendpoint=nil, httpvpcendpoint=nil, internalendpoint=nil, httpinternalendpoint=nil, aclenabled=nil, publicclbid=nil, vip=nil, vpcid=nil, supportmigration=nil, instancestatus=nil, zoneid=nil, zoneids=nil, isfrozen=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @CreateTime = createtime
          @Remark = remark
          @PublicEndPoint = publicendpoint
          @VpcEndPoint = vpcendpoint
          @SupportNamespaceEndpoint = supportnamespaceendpoint
          @Vpcs = vpcs
          @IsVip = isvip
          @RocketMQFlag = rocketmqflag
          @Status = status
          @IsolateTime = isolatetime
          @HttpPublicEndpoint = httppublicendpoint
          @HttpVpcEndpoint = httpvpcendpoint
          @InternalEndpoint = internalendpoint
          @HttpInternalEndpoint = httpinternalendpoint
          @AclEnabled = aclenabled
          @PublicClbId = publicclbid
          @Vip = vip
          @VpcId = vpcid
          @SupportMigration = supportmigration
          @InstanceStatus = instancestatus
          @ZoneId = zoneid
          @ZoneIds = zoneids
          @IsFrozen = isfrozen
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
          @PublicEndPoint = params['PublicEndPoint']
          @VpcEndPoint = params['VpcEndPoint']
          @SupportNamespaceEndpoint = params['SupportNamespaceEndpoint']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              vpcconfig_tmp = VpcConfig.new
              vpcconfig_tmp.deserialize(i)
              @Vpcs << vpcconfig_tmp
            end
          end
          @IsVip = params['IsVip']
          @RocketMQFlag = params['RocketMQFlag']
          @Status = params['Status']
          @IsolateTime = params['IsolateTime']
          @HttpPublicEndpoint = params['HttpPublicEndpoint']
          @HttpVpcEndpoint = params['HttpVpcEndpoint']
          @InternalEndpoint = params['InternalEndpoint']
          @HttpInternalEndpoint = params['HttpInternalEndpoint']
          @AclEnabled = params['AclEnabled']
          @PublicClbId = params['PublicClbId']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SupportMigration = params['SupportMigration']
          @InstanceStatus = params['InstanceStatus']
          @ZoneId = params['ZoneId']
          @ZoneIds = params['ZoneIds']
          @IsFrozen = params['IsFrozen']
        end
      end

      # RocketMQ近期使用量
      class RocketMQClusterRecentStats < TencentCloud::Common::AbstractModel
        # @param TopicNum: Topic数量
        # @type TopicNum: Integer
        # @param ProducedMsgNum: 消息生产数
        # @type ProducedMsgNum: Integer
        # @param ConsumedMsgNum: 消息消费数
        # @type ConsumedMsgNum: Integer
        # @param AccumulativeMsgNum: 消息堆积数
        # @type AccumulativeMsgNum: Integer

        attr_accessor :TopicNum, :ProducedMsgNum, :ConsumedMsgNum, :AccumulativeMsgNum

        def initialize(topicnum=nil, producedmsgnum=nil, consumedmsgnum=nil, accumulativemsgnum=nil)
          @TopicNum = topicnum
          @ProducedMsgNum = producedmsgnum
          @ConsumedMsgNum = consumedmsgnum
          @AccumulativeMsgNum = accumulativemsgnum
        end

        def deserialize(params)
          @TopicNum = params['TopicNum']
          @ProducedMsgNum = params['ProducedMsgNum']
          @ConsumedMsgNum = params['ConsumedMsgNum']
          @AccumulativeMsgNum = params['AccumulativeMsgNum']
        end
      end

      # 在线消费者情况
      class RocketMQConsumerConnection < TencentCloud::Common::AbstractModel
        # @param ClientId: 消费者实例ID
        # @type ClientId: String
        # @param ClientAddr: 消费者实例的地址和端口
        # @type ClientAddr: String
        # @param Language: 消费者应用的语言版本
        # @type Language: String
        # @param Accumulative: 消息堆积量
        # @type Accumulative: Integer
        # @param Version: 消费端版本
        # @type Version: String

        attr_accessor :ClientId, :ClientAddr, :Language, :Accumulative, :Version

        def initialize(clientid=nil, clientaddr=nil, language=nil, accumulative=nil, version=nil)
          @ClientId = clientid
          @ClientAddr = clientaddr
          @Language = language
          @Accumulative = accumulative
          @Version = version
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @ClientAddr = params['ClientAddr']
          @Language = params['Language']
          @Accumulative = params['Accumulative']
          @Version = params['Version']
        end
      end

      # 消费者详情中的主题信息
      class RocketMQConsumerTopic < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Type: 主题类型，Normal表示普通，GlobalOrder表示全局顺序，PartitionedOrder表示局部顺序，Transaction表示事务，Retry表示重试，DeadLetter表示死信
        # @type Type: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param Accumulative: 消息堆积数
        # @type Accumulative: Integer
        # @param LastConsumptionTime: 最后消费时间，以毫秒为单位
        # @type LastConsumptionTime: Integer
        # @param SubRule: 订阅规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubRule: String

        attr_accessor :Topic, :Type, :PartitionNum, :Accumulative, :LastConsumptionTime, :SubRule

        def initialize(topic=nil, type=nil, partitionnum=nil, accumulative=nil, lastconsumptiontime=nil, subrule=nil)
          @Topic = topic
          @Type = type
          @PartitionNum = partitionnum
          @Accumulative = accumulative
          @LastConsumptionTime = lastconsumptiontime
          @SubRule = subrule
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Type = params['Type']
          @PartitionNum = params['PartitionNum']
          @Accumulative = params['Accumulative']
          @LastConsumptionTime = params['LastConsumptionTime']
          @SubRule = params['SubRule']
        end
      end

      # 监控数据点
      class RocketMQDataPoint < TencentCloud::Common::AbstractModel
        # @param Timestamps: 监控值数组，该数组和Timestamps一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamps: Array
        # @param Values: 监控数据点位置，比如一天按分钟划分有1440个点，每个点的序号是0 - 1439之间的一个数，当某个序号不在该数组中，说明掉点了
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Timestamps, :Values

        def initialize(timestamps=nil, values=nil)
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # RocketMQ消费组信息
      class RocketMQGroup < TencentCloud::Common::AbstractModel
        # @param Name: 消费组名称
        # @type Name: String
        # @param ConsumerNum: 在线消费者数量
        # @type ConsumerNum: Integer
        # @param TPS: 消费TPS
        # @type TPS: Integer
        # @param TotalAccumulative: 总堆积数量
        # @type TotalAccumulative: Integer
        # @param ConsumptionMode: 0表示集群消费模式，1表示广播消费模式，-1表示未知
        # @type ConsumptionMode: Integer
        # @param ReadEnabled: 是否允许消费
        # @type ReadEnabled: Boolean
        # @param RetryPartitionNum: 重试队列分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryPartitionNum: Integer
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间，以毫秒为单位
        # @type UpdateTime: Integer
        # @param ClientProtocol: 客户端协议
        # @type ClientProtocol: String
        # @param Remark: 说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param ConsumerType: 消费者类型，枚举值ACTIVELY, PASSIVELY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerType: String
        # @param BroadcastEnabled: 是否开启广播消费
        # @type BroadcastEnabled: Boolean
        # @param GroupType: Group类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param RetryMaxTimes: 重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryMaxTimes: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String

        attr_accessor :Name, :ConsumerNum, :TPS, :TotalAccumulative, :ConsumptionMode, :ReadEnabled, :RetryPartitionNum, :CreateTime, :UpdateTime, :ClientProtocol, :Remark, :ConsumerType, :BroadcastEnabled, :GroupType, :RetryMaxTimes, :InstanceId, :Namespace

        def initialize(name=nil, consumernum=nil, tps=nil, totalaccumulative=nil, consumptionmode=nil, readenabled=nil, retrypartitionnum=nil, createtime=nil, updatetime=nil, clientprotocol=nil, remark=nil, consumertype=nil, broadcastenabled=nil, grouptype=nil, retrymaxtimes=nil, instanceid=nil, namespace=nil)
          @Name = name
          @ConsumerNum = consumernum
          @TPS = tps
          @TotalAccumulative = totalaccumulative
          @ConsumptionMode = consumptionmode
          @ReadEnabled = readenabled
          @RetryPartitionNum = retrypartitionnum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClientProtocol = clientprotocol
          @Remark = remark
          @ConsumerType = consumertype
          @BroadcastEnabled = broadcastenabled
          @GroupType = grouptype
          @RetryMaxTimes = retrymaxtimes
          @InstanceId = instanceid
          @Namespace = namespace
        end

        def deserialize(params)
          @Name = params['Name']
          @ConsumerNum = params['ConsumerNum']
          @TPS = params['TPS']
          @TotalAccumulative = params['TotalAccumulative']
          @ConsumptionMode = params['ConsumptionMode']
          @ReadEnabled = params['ReadEnabled']
          @RetryPartitionNum = params['RetryPartitionNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClientProtocol = params['ClientProtocol']
          @Remark = params['Remark']
          @ConsumerType = params['ConsumerType']
          @BroadcastEnabled = params['BroadcastEnabled']
          @GroupType = params['GroupType']
          @RetryMaxTimes = params['RetryMaxTimes']
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
        end
      end

      # RocketMQ消费组配置信息
      class RocketMQGroupConfig < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param GroupName: 消费组名称
        # @type GroupName: String
        # @param ConsumeBroadcastEnable: 是否开启广播消费
        # @type ConsumeBroadcastEnable: Boolean
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param Remark: 备注信息
        # @type Remark: String
        # @param ConsumerGroupType: 协议类型，支持以下枚举值
        # TCP;
        # HTTP;
        # @type ConsumerGroupType: String

        attr_accessor :Namespace, :GroupName, :ConsumeBroadcastEnable, :ConsumeEnable, :Remark, :ConsumerGroupType

        def initialize(namespace=nil, groupname=nil, consumebroadcastenable=nil, consumeenable=nil, remark=nil, consumergrouptype=nil)
          @Namespace = namespace
          @GroupName = groupname
          @ConsumeBroadcastEnable = consumebroadcastenable
          @ConsumeEnable = consumeenable
          @Remark = remark
          @ConsumerGroupType = consumergrouptype
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @GroupName = params['GroupName']
          @ConsumeBroadcastEnable = params['ConsumeBroadcastEnable']
          @ConsumeEnable = params['ConsumeEnable']
          @Remark = params['Remark']
          @ConsumerGroupType = params['ConsumerGroupType']
        end
      end

      # RocketMQ消费组配置信息
      class RocketMQGroupConfigOutput < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param GroupName: 消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Imported: 是否已导入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imported: Boolean
        # @param Remark: remark
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Namespace, :GroupName, :Imported, :Remark

        def initialize(namespace=nil, groupname=nil, imported=nil, remark=nil)
          @Namespace = namespace
          @GroupName = groupname
          @Imported = imported
          @Remark = remark
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @GroupName = params['GroupName']
          @Imported = params['Imported']
          @Remark = params['Remark']
        end
      end

      # RocketMQ专享集群实例配置
      class RocketMQInstanceConfig < TencentCloud::Common::AbstractModel
        # @param MaxTpsPerNamespace: 单命名空间TPS上线
        # @type MaxTpsPerNamespace: Integer
        # @param MaxNamespaceNum: 最大命名空间数量
        # @type MaxNamespaceNum: Integer
        # @param UsedNamespaceNum: 已使用命名空间数量
        # @type UsedNamespaceNum: Integer
        # @param MaxTopicNum: 最大Topic数量
        # @type MaxTopicNum: Integer
        # @param UsedTopicNum: 已使用Topic数量
        # @type UsedTopicNum: Integer
        # @param MaxGroupNum: 最大Group数量
        # @type MaxGroupNum: Integer
        # @param UsedGroupNum: 已使用Group数量
        # @type UsedGroupNum: Integer
        # @param ConfigDisplay: 集群类型
        # @type ConfigDisplay: String
        # @param NodeCount: 集群节点数
        # @type NodeCount: Integer
        # @param NodeDistribution: 节点分布情况
        # @type NodeDistribution: Array
        # @param TopicDistribution: topic分布情况
        # @type TopicDistribution: Array
        # @param MaxQueuesPerTopic: 每个主题最大队列数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxQueuesPerTopic: Integer
        # @param MaxRetention: 最大可设置消息保留时间，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetention: Integer
        # @param MinRetention: 最小可设置消息保留时间，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinRetention: Integer
        # @param Retention: 实例消息保留时间，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param TopicNumLowerLimit: Topic个数最小配额，即免费额度，默认为集群规格单节点最小配额*节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumLowerLimit: Integer
        # @param TopicNumUpperLimit: Topic个数最大配额，默认为集群规格单节点最大配额*节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumUpperLimit: Integer

        attr_accessor :MaxTpsPerNamespace, :MaxNamespaceNum, :UsedNamespaceNum, :MaxTopicNum, :UsedTopicNum, :MaxGroupNum, :UsedGroupNum, :ConfigDisplay, :NodeCount, :NodeDistribution, :TopicDistribution, :MaxQueuesPerTopic, :MaxRetention, :MinRetention, :Retention, :TopicNumLowerLimit, :TopicNumUpperLimit

        def initialize(maxtpspernamespace=nil, maxnamespacenum=nil, usednamespacenum=nil, maxtopicnum=nil, usedtopicnum=nil, maxgroupnum=nil, usedgroupnum=nil, configdisplay=nil, nodecount=nil, nodedistribution=nil, topicdistribution=nil, maxqueuespertopic=nil, maxretention=nil, minretention=nil, retention=nil, topicnumlowerlimit=nil, topicnumupperlimit=nil)
          @MaxTpsPerNamespace = maxtpspernamespace
          @MaxNamespaceNum = maxnamespacenum
          @UsedNamespaceNum = usednamespacenum
          @MaxTopicNum = maxtopicnum
          @UsedTopicNum = usedtopicnum
          @MaxGroupNum = maxgroupnum
          @UsedGroupNum = usedgroupnum
          @ConfigDisplay = configdisplay
          @NodeCount = nodecount
          @NodeDistribution = nodedistribution
          @TopicDistribution = topicdistribution
          @MaxQueuesPerTopic = maxqueuespertopic
          @MaxRetention = maxretention
          @MinRetention = minretention
          @Retention = retention
          @TopicNumLowerLimit = topicnumlowerlimit
          @TopicNumUpperLimit = topicnumupperlimit
        end

        def deserialize(params)
          @MaxTpsPerNamespace = params['MaxTpsPerNamespace']
          @MaxNamespaceNum = params['MaxNamespaceNum']
          @UsedNamespaceNum = params['UsedNamespaceNum']
          @MaxTopicNum = params['MaxTopicNum']
          @UsedTopicNum = params['UsedTopicNum']
          @MaxGroupNum = params['MaxGroupNum']
          @UsedGroupNum = params['UsedGroupNum']
          @ConfigDisplay = params['ConfigDisplay']
          @NodeCount = params['NodeCount']
          unless params['NodeDistribution'].nil?
            @NodeDistribution = []
            params['NodeDistribution'].each do |i|
              instancenodedistribution_tmp = InstanceNodeDistribution.new
              instancenodedistribution_tmp.deserialize(i)
              @NodeDistribution << instancenodedistribution_tmp
            end
          end
          unless params['TopicDistribution'].nil?
            @TopicDistribution = []
            params['TopicDistribution'].each do |i|
              rocketmqtopicdistribution_tmp = RocketMQTopicDistribution.new
              rocketmqtopicdistribution_tmp.deserialize(i)
              @TopicDistribution << rocketmqtopicdistribution_tmp
            end
          end
          @MaxQueuesPerTopic = params['MaxQueuesPerTopic']
          @MaxRetention = params['MaxRetention']
          @MinRetention = params['MinRetention']
          @Retention = params['Retention']
          @TopicNumLowerLimit = params['TopicNumLowerLimit']
          @TopicNumUpperLimit = params['TopicNumUpperLimit']
        end
      end

      # Rocketmq消息消费track信息
      class RocketMQMessageTrack < TencentCloud::Common::AbstractModel
        # @param Group: 消费者组
        # @type Group: String
        # @param ConsumeStatus: 消费状态,
        # CONSUMED: 已消费
        # CONSUMED_BUT_FILTERED: 已过滤
        # NOT_CONSUME: 未消费
        # ENTER_RETRY: 进入重试队列
        # ENTER_DLQ: 进入死信队列
        # UNKNOWN: 查询不到消费状态
        # @type ConsumeStatus: String
        # @param TrackType: 消息track类型
        # @type TrackType: String
        # @param ExceptionDesc: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionDesc: String

        attr_accessor :Group, :ConsumeStatus, :TrackType, :ExceptionDesc

        def initialize(group=nil, consumestatus=nil, tracktype=nil, exceptiondesc=nil)
          @Group = group
          @ConsumeStatus = consumestatus
          @TrackType = tracktype
          @ExceptionDesc = exceptiondesc
        end

        def deserialize(params)
          @Group = params['Group']
          @ConsumeStatus = params['ConsumeStatus']
          @TrackType = params['TrackType']
          @ExceptionDesc = params['ExceptionDesc']
        end
      end

      # 迁移主题的阶段分布
      class RocketMQMigrationTopicDistribution < TencentCloud::Common::AbstractModel
        # @param Stage: 迁移主题阶段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stage: String
        # @param Count: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :Stage, :Count

        def initialize(stage=nil, count=nil)
          @Stage = stage
          @Count = count
        end

        def deserialize(params)
          @Stage = params['Stage']
          @Count = params['Count']
        end
      end

      # rocketmq消息日志
      class RocketMQMsgLog < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param MsgTag: 消息tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgTag: String
        # @param MsgKey: 消息key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgKey: String
        # @param ProducerAddr: 客户端地址
        # @type ProducerAddr: String
        # @param ProduceTime: 消息发送时间
        # @type ProduceTime: String
        # @param PulsarMsgId: pulsar消息id
        # @type PulsarMsgId: String
        # @param DeadLetterResendTimes: 死信重发次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterResendTimes: Integer
        # @param ResendSuccessCount: 死信重发成功次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResendSuccessCount: Integer

        attr_accessor :MsgId, :MsgTag, :MsgKey, :ProducerAddr, :ProduceTime, :PulsarMsgId, :DeadLetterResendTimes, :ResendSuccessCount

        def initialize(msgid=nil, msgtag=nil, msgkey=nil, produceraddr=nil, producetime=nil, pulsarmsgid=nil, deadletterresendtimes=nil, resendsuccesscount=nil)
          @MsgId = msgid
          @MsgTag = msgtag
          @MsgKey = msgkey
          @ProducerAddr = produceraddr
          @ProduceTime = producetime
          @PulsarMsgId = pulsarmsgid
          @DeadLetterResendTimes = deadletterresendtimes
          @ResendSuccessCount = resendsuccesscount
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @MsgTag = params['MsgTag']
          @MsgKey = params['MsgKey']
          @ProducerAddr = params['ProducerAddr']
          @ProduceTime = params['ProduceTime']
          @PulsarMsgId = params['PulsarMsgId']
          @DeadLetterResendTimes = params['DeadLetterResendTimes']
          @ResendSuccessCount = params['ResendSuccessCount']
        end
      end

      # RocketMQ命名空间信息
      class RocketMQNamespace < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 已废弃，未消费消息的保留时间，以毫秒单位，范围60秒到15天
        # @type Ttl: Integer
        # @param RetentionTime: 消息持久化后保留的时间，以毫秒单位
        # @type RetentionTime: Integer
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PublicEndpoint: 公网接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicEndpoint: String
        # @param VpcEndpoint: VPC接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcEndpoint: String
        # @param InternalEndpoint: 内部接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalEndpoint: String

        attr_accessor :NamespaceId, :Ttl, :RetentionTime, :Remark, :PublicEndpoint, :VpcEndpoint, :InternalEndpoint

        def initialize(namespaceid=nil, ttl=nil, retentiontime=nil, remark=nil, publicendpoint=nil, vpcendpoint=nil, internalendpoint=nil)
          @NamespaceId = namespaceid
          @Ttl = ttl
          @RetentionTime = retentiontime
          @Remark = remark
          @PublicEndpoint = publicendpoint
          @VpcEndpoint = vpcendpoint
          @InternalEndpoint = internalendpoint
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Ttl = params['Ttl']
          @RetentionTime = params['RetentionTime']
          @Remark = params['Remark']
          @PublicEndpoint = params['PublicEndpoint']
          @VpcEndpoint = params['VpcEndpoint']
          @InternalEndpoint = params['InternalEndpoint']
        end
      end

      # RocketMQ平滑迁移任务
      class RocketMQSmoothMigrationTaskItem < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param SourceClusterName: 源集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceClusterName: String
        # @param ClusterId: 目标集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ConnectionType: 网络连接类型，
        # PUBLIC 公网
        # VPC 私有网络
        # OTHER 其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionType: String
        # @param SourceNameServer: 源集群NameServer地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceNameServer: String
        # @param TaskStatus: 任务状态
        # Configuration 迁移配置
        # SourceConnecting 连接源集群中
        # MetaDataImport 元数据导入
        # EndpointSetup 切换接入点
        # ServiceMigration 切流中
        # Completed 已完成
        # Cancelled 已取消
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String

        attr_accessor :TaskId, :TaskName, :SourceClusterName, :ClusterId, :ConnectionType, :SourceNameServer, :TaskStatus

        def initialize(taskid=nil, taskname=nil, sourceclustername=nil, clusterid=nil, connectiontype=nil, sourcenameserver=nil, taskstatus=nil)
          @TaskId = taskid
          @TaskName = taskname
          @SourceClusterName = sourceclustername
          @ClusterId = clusterid
          @ConnectionType = connectiontype
          @SourceNameServer = sourcenameserver
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @SourceClusterName = params['SourceClusterName']
          @ClusterId = params['ClusterId']
          @ConnectionType = params['ConnectionType']
          @SourceNameServer = params['SourceNameServer']
          @TaskStatus = params['TaskStatus']
        end
      end

      # RocketMQ消费组订阅信息
      class RocketMQSubscription < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Type: 主题类型：
        # Normal 普通,
        # GlobalOrder 全局顺序,
        # PartitionedOrder 局部顺序,
        # Transaction 事务消息,
        # DelayScheduled 延时消息,
        # Retry 重试,
        # DeadLetter 死信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param PartitionNum: 分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNum: Integer
        # @param ExpressionType: 过滤模式，TAG，SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpressionType: String
        # @param SubString: 过滤表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubString: String
        # @param Status: 订阅状态：
        # 0，订阅关系一致
        # 1，订阅关系不一致
        # 2，未知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ConsumerLag: 消费堆积数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLag: Integer
        # @param ClusterId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ConsumerGroup: 消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerGroup: String
        # @param IsOnline: 是否在线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOnline: Boolean
        # @param ConsumeType: 消费类型
        # 0: 广播消费
        # 1: 集群消费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumeType: Integer
        # @param Consistency: 订阅一致性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: Integer
        # @param LastUpdateTime: 最后消费进度更新时间，秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param MaxRetryTimes: 最大重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryTimes: Integer
        # @param ClientProtocol: 协议类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientProtocol: String
        # @param ClientSubscriptionInfos: 客户端订阅详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientSubscriptionInfos: Array

        attr_accessor :Topic, :Type, :PartitionNum, :ExpressionType, :SubString, :Status, :ConsumerLag, :ClusterId, :ConsumerGroup, :IsOnline, :ConsumeType, :Consistency, :LastUpdateTime, :MaxRetryTimes, :ClientProtocol, :ClientSubscriptionInfos

        def initialize(topic=nil, type=nil, partitionnum=nil, expressiontype=nil, substring=nil, status=nil, consumerlag=nil, clusterid=nil, consumergroup=nil, isonline=nil, consumetype=nil, consistency=nil, lastupdatetime=nil, maxretrytimes=nil, clientprotocol=nil, clientsubscriptioninfos=nil)
          @Topic = topic
          @Type = type
          @PartitionNum = partitionnum
          @ExpressionType = expressiontype
          @SubString = substring
          @Status = status
          @ConsumerLag = consumerlag
          @ClusterId = clusterid
          @ConsumerGroup = consumergroup
          @IsOnline = isonline
          @ConsumeType = consumetype
          @Consistency = consistency
          @LastUpdateTime = lastupdatetime
          @MaxRetryTimes = maxretrytimes
          @ClientProtocol = clientprotocol
          @ClientSubscriptionInfos = clientsubscriptioninfos
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Type = params['Type']
          @PartitionNum = params['PartitionNum']
          @ExpressionType = params['ExpressionType']
          @SubString = params['SubString']
          @Status = params['Status']
          @ConsumerLag = params['ConsumerLag']
          @ClusterId = params['ClusterId']
          @ConsumerGroup = params['ConsumerGroup']
          @IsOnline = params['IsOnline']
          @ConsumeType = params['ConsumeType']
          @Consistency = params['Consistency']
          @LastUpdateTime = params['LastUpdateTime']
          @MaxRetryTimes = params['MaxRetryTimes']
          @ClientProtocol = params['ClientProtocol']
          unless params['ClientSubscriptionInfos'].nil?
            @ClientSubscriptionInfos = []
            params['ClientSubscriptionInfos'].each do |i|
              clientsubscriptioninfo_tmp = ClientSubscriptionInfo.new
              clientsubscriptioninfo_tmp.deserialize(i)
              @ClientSubscriptionInfos << clientsubscriptioninfo_tmp
            end
          end
        end
      end

      # RocketMQ主题信息
      class RocketMQTopic < TencentCloud::Common::AbstractModel
        # @param Name: 主题名称
        # @type Name: String
        # @param Type: 主题的类别，为枚举类型，Normal，GlobalOrder，PartitionedOrder，Transaction，Retry及DeadLetter
        # @type Type: String
        # @param GroupNum: 订阅组数量
        # @type GroupNum: Integer
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PartitionNum: 读写分区数
        # @type PartitionNum: Integer
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 创建时间，以毫秒为单位
        # @type UpdateTime: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param LastUpdateTime: 最后写入时间，单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param SubscriptionCount: 订阅数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionCount: Integer
        # @param SubscriptionData: 订阅关系列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionData: Array

        attr_accessor :Name, :Type, :GroupNum, :Remark, :PartitionNum, :CreateTime, :UpdateTime, :InstanceId, :Namespace, :LastUpdateTime, :SubscriptionCount, :SubscriptionData

        def initialize(name=nil, type=nil, groupnum=nil, remark=nil, partitionnum=nil, createtime=nil, updatetime=nil, instanceid=nil, namespace=nil, lastupdatetime=nil, subscriptioncount=nil, subscriptiondata=nil)
          @Name = name
          @Type = type
          @GroupNum = groupnum
          @Remark = remark
          @PartitionNum = partitionnum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @InstanceId = instanceid
          @Namespace = namespace
          @LastUpdateTime = lastupdatetime
          @SubscriptionCount = subscriptioncount
          @SubscriptionData = subscriptiondata
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @GroupNum = params['GroupNum']
          @Remark = params['Remark']
          @PartitionNum = params['PartitionNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @LastUpdateTime = params['LastUpdateTime']
          @SubscriptionCount = params['SubscriptionCount']
          unless params['SubscriptionData'].nil?
            @SubscriptionData = []
            params['SubscriptionData'].each do |i|
              rocketmqsubscription_tmp = RocketMQSubscription.new
              rocketmqsubscription_tmp.deserialize(i)
              @SubscriptionData << rocketmqsubscription_tmp
            end
          end
        end
      end

      # RocketMQ主题配置信息
      class RocketMQTopicConfig < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param Type: 主题类型：
        # Normal，普通
        # PartitionedOrder, 分区顺序
        # Transaction，事务消息
        # DelayScheduled，延迟/定时消息
        # @type Type: String
        # @param Partitions: 分区个数
        # @type Partitions: Integer
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :Namespace, :TopicName, :Type, :Partitions, :Remark

        def initialize(namespace=nil, topicname=nil, type=nil, partitions=nil, remark=nil)
          @Namespace = namespace
          @TopicName = topicname
          @Type = type
          @Partitions = partitions
          @Remark = remark
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @TopicName = params['TopicName']
          @Type = params['Type']
          @Partitions = params['Partitions']
          @Remark = params['Remark']
        end
      end

      # RocketMQ主题配置信息
      class RocketMQTopicConfigOutput < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param TopicName: 主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param Type: 主题类型：
        # Normal，普通
        # GlobalOrder， 全局顺序
        # PartitionedOrder, 分区顺序
        # Transaction，事务消息
        # DelayScheduled，延迟/定时消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Partitions: 分区个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Imported: 是否导入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imported: Boolean

        attr_accessor :Namespace, :TopicName, :Type, :Partitions, :Remark, :Imported

        def initialize(namespace=nil, topicname=nil, type=nil, partitions=nil, remark=nil, imported=nil)
          @Namespace = namespace
          @TopicName = topicname
          @Type = type
          @Partitions = partitions
          @Remark = remark
          @Imported = imported
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @TopicName = params['TopicName']
          @Type = params['Type']
          @Partitions = params['Partitions']
          @Remark = params['Remark']
          @Imported = params['Imported']
        end
      end

      # RocketMQtopic分布情况
      class RocketMQTopicDistribution < TencentCloud::Common::AbstractModel
        # @param TopicType: topic类型
        # @type TopicType: String
        # @param Count: topic数量
        # @type Count: Integer

        attr_accessor :TopicType, :Count

        def initialize(topictype=nil, count=nil)
          @TopicType = topictype
          @Count = count
        end

        def deserialize(params)
          @TopicType = params['TopicType']
          @Count = params['Count']
        end
      end

      # RocketMQ专享实例信息
      class RocketMQVipInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceVersion: 实例版本
        # @type InstanceVersion: String
        # @param Status: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败，6 - 变配中，7 - 变配失败
        # @type Status: Integer
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param ConfigDisplay: 实例配置规格名称
        # @type ConfigDisplay: String
        # @param MaxTps: 峰值TPS
        # @type MaxTps: Integer
        # @param MaxBandWidth: 峰值带宽，Mbps为单位
        # @type MaxBandWidth: Integer
        # @param MaxStorage: 存储容量，GB为单位
        # @type MaxStorage: Integer
        # @param ExpireTime: 实例到期时间，毫秒为单位
        # @type ExpireTime: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param PayMode: 0-后付费，1-预付费
        # @type PayMode: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param SpecName: 实例配置ID
        # @type SpecName: String
        # @param MaxRetention: 最大可设置消息保留时间，小时为单位
        # @type MaxRetention: Integer
        # @param MinRetention: 最小可设置消息保留时间，小时为单位
        # @type MinRetention: Integer
        # @param Retention: 实例消息保留时间，小时为单位
        # @type Retention: Integer
        # @param AclEnabled: 是否开启ACL鉴权
        # @type AclEnabled: Boolean
        # @param DestroyTime: 销毁时间
        # @type DestroyTime: Integer

        attr_accessor :InstanceId, :InstanceName, :InstanceVersion, :Status, :NodeCount, :ConfigDisplay, :MaxTps, :MaxBandWidth, :MaxStorage, :ExpireTime, :AutoRenewFlag, :PayMode, :Remark, :SpecName, :MaxRetention, :MinRetention, :Retention, :AclEnabled, :DestroyTime

        def initialize(instanceid=nil, instancename=nil, instanceversion=nil, status=nil, nodecount=nil, configdisplay=nil, maxtps=nil, maxbandwidth=nil, maxstorage=nil, expiretime=nil, autorenewflag=nil, paymode=nil, remark=nil, specname=nil, maxretention=nil, minretention=nil, retention=nil, aclenabled=nil, destroytime=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceVersion = instanceversion
          @Status = status
          @NodeCount = nodecount
          @ConfigDisplay = configdisplay
          @MaxTps = maxtps
          @MaxBandWidth = maxbandwidth
          @MaxStorage = maxstorage
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @PayMode = paymode
          @Remark = remark
          @SpecName = specname
          @MaxRetention = maxretention
          @MinRetention = minretention
          @Retention = retention
          @AclEnabled = aclenabled
          @DestroyTime = destroytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceVersion = params['InstanceVersion']
          @Status = params['Status']
          @NodeCount = params['NodeCount']
          @ConfigDisplay = params['ConfigDisplay']
          @MaxTps = params['MaxTps']
          @MaxBandWidth = params['MaxBandWidth']
          @MaxStorage = params['MaxStorage']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PayMode = params['PayMode']
          @Remark = params['Remark']
          @SpecName = params['SpecName']
          @MaxRetention = params['MaxRetention']
          @MinRetention = params['MinRetention']
          @Retention = params['Retention']
          @AclEnabled = params['AclEnabled']
          @DestroyTime = params['DestroyTime']
        end
      end

      # 角色实例
      class Role < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称。
        # @type RoleName: String
        # @param Token: 角色token值。
        # @type Token: String
        # @param Remark: 备注说明。
        # @type Remark: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param PermType: 授权类型（Cluster：集群；TopicAndGroup：主题或消费组）
        # @type PermType: String

        attr_accessor :RoleName, :Token, :Remark, :CreateTime, :UpdateTime, :PermType

        def initialize(rolename=nil, token=nil, remark=nil, createtime=nil, updatetime=nil, permtype=nil)
          @RoleName = rolename
          @Token = token
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @PermType = permtype
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Token = params['Token']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @PermType = params['PermType']
        end
      end

      # 安全策略
      class SecurityPolicy < TencentCloud::Common::AbstractModel
        # @param Route: ip或者网段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Route: String
        # @param Policy: 策略 true就是允许，白名单或者 false 拒绝 黑名单

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: Boolean
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Route, :Policy, :Remark

        def initialize(route=nil, policy=nil, remark=nil)
          @Route = route
          @Policy = policy
          @Remark = remark
        end

        def deserialize(params)
          @Route = params['Route']
          @Policy = params['Policy']
          @Remark = params['Remark']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param DelaySeconds: 延迟时间。单位为秒，默认值为0秒，最大不能超过队列配置的消息最长未确认时间。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ProducerName: 设置 producer 的名字，要求全局唯一。该参数建议用户无需手动配置，此时系统会随机生成，如果手动设置有可能会造成创建 Producer 失败进而导致消息发送失败。
        # 该参数主要用于某些特定场景下，只允许特定的 Producer 生产消息时设置，用户的大部分场景使用不到该特性。
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
        # @type MessageId: String
        # @param ErrorMsg: 返回的错误消息，如果返回为 “”，说明没有错误
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SendRocketMQMessage请求参数结构体
      class SendRocketMQMessageRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param TopicName: topic名称
        # @type TopicName: String
        # @param MsgBody: 信息内容
        # @type MsgBody: String
        # @param MsgKey: 消息key信息
        # @type MsgKey: String
        # @param MsgTag: 消息tag信息
        # @type MsgTag: String

        attr_accessor :ClusterId, :NamespaceId, :TopicName, :MsgBody, :MsgKey, :MsgTag

        def initialize(clusterid=nil, namespaceid=nil, topicname=nil, msgbody=nil, msgkey=nil, msgtag=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @TopicName = topicname
          @MsgBody = msgbody
          @MsgKey = msgkey
          @MsgTag = msgtag
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @TopicName = params['TopicName']
          @MsgBody = params['MsgBody']
          @MsgKey = params['MsgKey']
          @MsgTag = params['MsgTag']
        end
      end

      # SendRocketMQMessage返回参数结构体
      class SendRocketMQMessageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 发送结果
        # @type Result: Boolean
        # @param MsgId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 服务方信息
      class ServerLog < TencentCloud::Common::AbstractModel
        # @param SaveTime: 存储时间。
        # @type SaveTime: String
        # @param Status: 状态。
        # @type Status: String

        attr_accessor :SaveTime, :Status

        def initialize(savetime=nil, status=nil)
          @SaveTime = savetime
          @Status = status
        end

        def deserialize(params)
          @SaveTime = params['SaveTime']
          @Status = params['Status']
        end
      end

      # SetRocketMQPublicAccessPoint请求参数结构体
      class SetRocketMQPublicAccessPointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，当前只支持专享集群
        # @type InstanceId: String
        # @param Enabled: 开启或关闭访问
        # @type Enabled: Boolean
        # @param Bandwidth: 带宽大小，开启或者调整公网时必须指定，Mbps为单位
        # @type Bandwidth: Integer
        # @param PayMode: 付费模式，开启公网时必须指定，0为按小时计费，1为包年包月，当前只支持按小时计费
        # @type PayMode: Integer
        # @param Rules: 公网访问安全规则列表，Enabled为true时必须传入
        # @type Rules: Array
        # @param BillingFlow: 公网是否按流量计费
        # @type BillingFlow: Boolean

        attr_accessor :InstanceId, :Enabled, :Bandwidth, :PayMode, :Rules, :BillingFlow

        def initialize(instanceid=nil, enabled=nil, bandwidth=nil, paymode=nil, rules=nil, billingflow=nil)
          @InstanceId = instanceid
          @Enabled = enabled
          @Bandwidth = bandwidth
          @PayMode = paymode
          @Rules = rules
          @BillingFlow = billingflow
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Enabled = params['Enabled']
          @Bandwidth = params['Bandwidth']
          @PayMode = params['PayMode']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @Rules << publicaccessrule_tmp
            end
          end
          @BillingFlow = params['BillingFlow']
        end
      end

      # SetRocketMQPublicAccessPoint返回参数结构体
      class SetRocketMQPublicAccessPointResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 排序器
      class Sort < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段
        # @type Name: String
        # @param Order: 升序ASC，降序DESC
        # @type Order: String

        attr_accessor :Name, :Order

        def initialize(name=nil, order=nil)
          @Name = name
          @Order = order
        end

        def deserialize(params)
          @Name = params['Name']
          @Order = params['Order']
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
        # @param SubType: 订阅类型，Exclusive，Shared，Failover， Key_Shared，空或NULL表示未知，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param BlockedSubscriptionOnUnackedMsgs: 是否由于未 ack 数到达上限而被 block
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockedSubscriptionOnUnackedMsgs: Boolean
        # @param MaxUnackedMsgNum: 未 ack 消息数上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxUnackedMsgNum: Integer

        attr_accessor :TopicName, :EnvironmentId, :ConnectedSince, :ConsumerAddr, :ConsumerCount, :ConsumerName, :MsgBacklog, :MsgRateExpired, :MsgRateOut, :MsgThroughputOut, :SubscriptionName, :ConsumerSets, :IsOnline, :ConsumersScheduleSets, :Remark, :CreateTime, :UpdateTime, :SubType, :BlockedSubscriptionOnUnackedMsgs, :MaxUnackedMsgNum

        def initialize(topicname=nil, environmentid=nil, connectedsince=nil, consumeraddr=nil, consumercount=nil, consumername=nil, msgbacklog=nil, msgrateexpired=nil, msgrateout=nil, msgthroughputout=nil, subscriptionname=nil, consumersets=nil, isonline=nil, consumersschedulesets=nil, remark=nil, createtime=nil, updatetime=nil, subtype=nil, blockedsubscriptiononunackedmsgs=nil, maxunackedmsgnum=nil)
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
          @SubType = subtype
          @BlockedSubscriptionOnUnackedMsgs = blockedsubscriptiononunackedmsgs
          @MaxUnackedMsgNum = maxunackedmsgnum
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
          @SubType = params['SubType']
          @BlockedSubscriptionOnUnackedMsgs = params['BlockedSubscriptionOnUnackedMsgs']
          @MaxUnackedMsgNum = params['MaxUnackedMsgNum']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签的Value的值
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param PulsarTopicType: 0: 非持久非分区
        # 1: 非持久分区
        # 2: 持久非分区
        # 3: 持久分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PulsarTopicType: Integer
        # @param MsgTTL: 未消费消息过期时间，单位：秒

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgTTL: Integer
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Tenant: 用户自定义的租户别名，如果没有，会复用专业集群 ID
        # @type Tenant: String
        # @param IsolateConsumerEnable: 是否开启异常消费者隔离
        # @type IsolateConsumerEnable: Boolean
        # @param AckTimeOut: 消费者 Ack 超时时间，单位：秒
        # @type AckTimeOut: Integer

        attr_accessor :AverageMsgSize, :ConsumerCount, :LastConfirmedEntry, :LastLedgerCreatedTimestamp, :MsgRateIn, :MsgRateOut, :MsgThroughputIn, :MsgThroughputOut, :NumberOfEntries, :Partitions, :ProducerCount, :TotalSize, :SubTopicSets, :TopicType, :EnvironmentId, :TopicName, :Remark, :CreateTime, :UpdateTime, :ProducerLimit, :ConsumerLimit, :PulsarTopicType, :MsgTTL, :ClusterId, :Tenant, :IsolateConsumerEnable, :AckTimeOut

        def initialize(averagemsgsize=nil, consumercount=nil, lastconfirmedentry=nil, lastledgercreatedtimestamp=nil, msgratein=nil, msgrateout=nil, msgthroughputin=nil, msgthroughputout=nil, numberofentries=nil, partitions=nil, producercount=nil, totalsize=nil, subtopicsets=nil, topictype=nil, environmentid=nil, topicname=nil, remark=nil, createtime=nil, updatetime=nil, producerlimit=nil, consumerlimit=nil, pulsartopictype=nil, msgttl=nil, clusterid=nil, tenant=nil, isolateconsumerenable=nil, acktimeout=nil)
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
          @PulsarTopicType = pulsartopictype
          @MsgTTL = msgttl
          @ClusterId = clusterid
          @Tenant = tenant
          @IsolateConsumerEnable = isolateconsumerenable
          @AckTimeOut = acktimeout
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
          @PulsarTopicType = params['PulsarTopicType']
          @MsgTTL = params['MsgTTL']
          @ClusterId = params['ClusterId']
          @Tenant = params['Tenant']
          @IsolateConsumerEnable = params['IsolateConsumerEnable']
          @AckTimeOut = params['AckTimeOut']
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

      # Topic状态
      class TopicStats < TencentCloud::Common::AbstractModel
        # @param BrokerName: 所属Broker节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerName: String
        # @param QueueId: 队列编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueId: Integer
        # @param MinOffset: 最小位点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinOffset: Integer
        # @param MaxOffset: 最大位点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOffset: Integer
        # @param MessageCount: 消息条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageCount: Integer
        # @param LastUpdateTimestamp: 消息最后写入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTimestamp: Integer

        attr_accessor :BrokerName, :QueueId, :MinOffset, :MaxOffset, :MessageCount, :LastUpdateTimestamp

        def initialize(brokername=nil, queueid=nil, minoffset=nil, maxoffset=nil, messagecount=nil, lastupdatetimestamp=nil)
          @BrokerName = brokername
          @QueueId = queueid
          @MinOffset = minoffset
          @MaxOffset = maxoffset
          @MessageCount = messagecount
          @LastUpdateTimestamp = lastupdatetimestamp
        end

        def deserialize(params)
          @BrokerName = params['BrokerName']
          @QueueId = params['QueueId']
          @MinOffset = params['MinOffset']
          @MaxOffset = params['MaxOffset']
          @MessageCount = params['MessageCount']
          @LastUpdateTimestamp = params['LastUpdateTimestamp']
        end
      end

      # 主题实例
      class Topic_Simplification < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param PulsarTopicType: 0: 非持久非分区
        # 1: 非持久分区
        # 2: 持久非分区
        # 3: 持久分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PulsarTopicType: Integer

        attr_accessor :TopicName, :PulsarTopicType

        def initialize(topicname=nil, pulsartopictype=nil)
          @TopicName = topicname
          @PulsarTopicType = pulsartopictype
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @PulsarTopicType = params['PulsarTopicType']
        end
      end

      # 消息轨迹结果
      class TraceResult < TencentCloud::Common::AbstractModel
        # @param Stage: 阶段
        # @type Stage: String
        # @param Data: 内容详情
        # @type Data: String

        attr_accessor :Stage, :Data

        def initialize(stage=nil, data=nil)
          @Stage = stage
          @Data = data
        end

        def deserialize(params)
          @Stage = params['Stage']
          @Data = params['Data']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # VerifyRocketMQConsume请求参数结构体
      class VerifyRocketMQConsumeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NamespaceId: 命名空间
        # @type NamespaceId: String
        # @param GroupId: 消费组ID
        # @type GroupId: String
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param TopicName: 主题名称
        # @type TopicName: String

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :MsgId, :ClientId, :TopicName

        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, msgid=nil, clientid=nil, topicname=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @MsgId = msgid
          @ClientId = clientid
          @TopicName = topicname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @MsgId = params['MsgId']
          @ClientId = params['ClientId']
          @TopicName = params['TopicName']
        end
      end

      # VerifyRocketMQConsume返回参数结构体
      class VerifyRocketMQConsumeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # vhost使用配额信息
      class VirtualHostQuota < TencentCloud::Common::AbstractModel
        # @param MaxVirtualHost: 允许创建最大vhost数
        # @type MaxVirtualHost: Integer
        # @param UsedVirtualHost: 已创建vhost数
        # @type UsedVirtualHost: Integer
        # @param MaxConnectionPerVhost: 单个 vhost 下允许的最大连接数
        # @type MaxConnectionPerVhost: Integer
        # @param MaxExchangePerVhost: 单个 vhost 下允许的最大交换机数
        # @type MaxExchangePerVhost: Integer
        # @param MaxQueuePerVhost: 单个 vhost 下允许的最大队列机数
        # @type MaxQueuePerVhost: Integer

        attr_accessor :MaxVirtualHost, :UsedVirtualHost, :MaxConnectionPerVhost, :MaxExchangePerVhost, :MaxQueuePerVhost

        def initialize(maxvirtualhost=nil, usedvirtualhost=nil, maxconnectionpervhost=nil, maxexchangepervhost=nil, maxqueuepervhost=nil)
          @MaxVirtualHost = maxvirtualhost
          @UsedVirtualHost = usedvirtualhost
          @MaxConnectionPerVhost = maxconnectionpervhost
          @MaxExchangePerVhost = maxexchangepervhost
          @MaxQueuePerVhost = maxqueuepervhost
        end

        def deserialize(params)
          @MaxVirtualHost = params['MaxVirtualHost']
          @UsedVirtualHost = params['UsedVirtualHost']
          @MaxConnectionPerVhost = params['MaxConnectionPerVhost']
          @MaxExchangePerVhost = params['MaxExchangePerVhost']
          @MaxQueuePerVhost = params['MaxQueuePerVhost']
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

      # VPC配置信息
      class VpcConfig < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # VPC接入点信息
      class VpcEndpointInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param VpcEndpoint: vpc接入点信息
        # @type VpcEndpoint: String
        # @param VpcDataStreamEndpointStatus: vpc接入点状态 OFF/ON/CREATING/DELETING
        # @type VpcDataStreamEndpointStatus: String
        # @param VpcTlsEndpoint: TLS加密的数据流接入点
        # @type VpcTlsEndpoint: String

        attr_accessor :VpcId, :SubnetId, :VpcEndpoint, :VpcDataStreamEndpointStatus, :VpcTlsEndpoint

        def initialize(vpcid=nil, subnetid=nil, vpcendpoint=nil, vpcdatastreamendpointstatus=nil, vpctlsendpoint=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @VpcEndpoint = vpcendpoint
          @VpcDataStreamEndpointStatus = vpcdatastreamendpointstatus
          @VpcTlsEndpoint = vpctlsendpoint
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VpcEndpoint = params['VpcEndpoint']
          @VpcDataStreamEndpointStatus = params['VpcDataStreamEndpointStatus']
          @VpcTlsEndpoint = params['VpcTlsEndpoint']
        end
      end

      # vpc信息（由UniqVpcId和UniqSubnetId组成）
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc信息
        # @type VpcId: String
        # @param SubnetId: 子网信息
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

