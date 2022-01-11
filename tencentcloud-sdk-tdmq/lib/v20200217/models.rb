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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Info, :Config, :Tags
        
        def initialize(info=nil, config=nil, tags=nil)
          @Info = info
          @Config = config
          @Tags = tags
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

      # AMQP集群近期使用量
      class AMQPClusterRecentStats < TencentCloud::Common::AbstractModel
        # @param QueueNum: Queue数量
        # @type QueueNum: Integer
        # @param ProducedMsgNum: 消息生产数
        # @type ProducedMsgNum: Integer
        # @param AccumulativeMsgNum: 消息堆积数
        # @type AccumulativeMsgNum: Integer
        # @param ExchangeNum: Exchange数量
        # @type ExchangeNum: Integer

        attr_accessor :QueueNum, :ProducedMsgNum, :AccumulativeMsgNum, :ExchangeNum
        
        def initialize(queuenum=nil, producedmsgnum=nil, accumulativemsgnum=nil, exchangenum=nil)
          @QueueNum = queuenum
          @ProducedMsgNum = producedmsgnum
          @AccumulativeMsgNum = accumulativemsgnum
          @ExchangeNum = exchangenum
        end

        def deserialize(params)
          @QueueNum = params['QueueNum']
          @ProducedMsgNum = params['ProducedMsgNum']
          @AccumulativeMsgNum = params['AccumulativeMsgNum']
          @ExchangeNum = params['ExchangeNum']
        end
      end

      # AMQP Exchange信息
      class AMQPExchange < TencentCloud::Common::AbstractModel
        # @param Name: Exchange名称
        # @type Name: String
        # @param Type: Exchange的类别，为枚举类型:Direct, Fanout, Topic
        # @type Type: String
        # @param SourceBindedNum: 主绑定数
        # @type SourceBindedNum: Integer
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param DestBindedNum: 被绑定数
        # @type DestBindedNum: Integer
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 创建时间，以毫秒为单位
        # @type UpdateTime: Integer
        # @param Internal: 是否为内部Exchange(以amq.前缀开头的)
        # @type Internal: Boolean

        attr_accessor :Name, :Type, :SourceBindedNum, :Remark, :DestBindedNum, :CreateTime, :UpdateTime, :Internal
        
        def initialize(name=nil, type=nil, sourcebindednum=nil, remark=nil, destbindednum=nil, createtime=nil, updatetime=nil, internal=nil)
          @Name = name
          @Type = type
          @SourceBindedNum = sourcebindednum
          @Remark = remark
          @DestBindedNum = destbindednum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Internal = internal
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @SourceBindedNum = params['SourceBindedNum']
          @Remark = params['Remark']
          @DestBindedNum = params['DestBindedNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Internal = params['Internal']
        end
      end

      # AMQP 队列信息
      class AMQPQueueDetail < TencentCloud::Common::AbstractModel
        # @param Name: Queue名称
        # @type Name: String
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param DestBindedNum: 被绑定数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestBindedNum: Integer
        # @param CreateTime: 创建时间，以毫秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 创建时间，以毫秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param OnlineConsumerNum: 在线消费者数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineConsumerNum: Integer
        # @param Tps: 每秒钟的事务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tps: Integer
        # @param AccumulativeMsgNum: 消息堆积数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccumulativeMsgNum: Integer
        # @param AutoDelete: 是否自动删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoDelete: Boolean
        # @param DeadLetterExchange: 死信交换机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: 死信交换机路由键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterRoutingKey: String

        attr_accessor :Name, :Remark, :DestBindedNum, :CreateTime, :UpdateTime, :OnlineConsumerNum, :Tps, :AccumulativeMsgNum, :AutoDelete, :DeadLetterExchange, :DeadLetterRoutingKey
        
        def initialize(name=nil, remark=nil, destbindednum=nil, createtime=nil, updatetime=nil, onlineconsumernum=nil, tps=nil, accumulativemsgnum=nil, autodelete=nil, deadletterexchange=nil, deadletterroutingkey=nil)
          @Name = name
          @Remark = remark
          @DestBindedNum = destbindednum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @OnlineConsumerNum = onlineconsumernum
          @Tps = tps
          @AccumulativeMsgNum = accumulativemsgnum
          @AutoDelete = autodelete
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @DestBindedNum = params['DestBindedNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @OnlineConsumerNum = params['OnlineConsumerNum']
          @Tps = params['Tps']
          @AccumulativeMsgNum = params['AccumulativeMsgNum']
          @AutoDelete = params['AutoDelete']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
        end
      end

      # AMQP路由关系
      class AMQPRouteRelation < TencentCloud::Common::AbstractModel
        # @param RouteRelationId: 路由关系ID
        # @type RouteRelationId: String
        # @param SourceExchange: 源Exchange
        # @type SourceExchange: String
        # @param DestType: 目标类型:Queue|Exchange
        # @type DestType: String
        # @param DestValue: 目标值
        # @type DestValue: String
        # @param RoutingKey: 绑定key
        # @type RoutingKey: String
        # @param SourceExchangeType: 源路由类型:Direct|Topic|Fanout
        # @type SourceExchangeType: String
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间，以毫秒为单位
        # @type UpdateTime: Integer
        # @param Remark: 说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :RouteRelationId, :SourceExchange, :DestType, :DestValue, :RoutingKey, :SourceExchangeType, :CreateTime, :UpdateTime, :Remark
        
        def initialize(routerelationid=nil, sourceexchange=nil, desttype=nil, destvalue=nil, routingkey=nil, sourceexchangetype=nil, createtime=nil, updatetime=nil, remark=nil)
          @RouteRelationId = routerelationid
          @SourceExchange = sourceexchange
          @DestType = desttype
          @DestValue = destvalue
          @RoutingKey = routingkey
          @SourceExchangeType = sourceexchangetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Remark = remark
        end

        def deserialize(params)
          @RouteRelationId = params['RouteRelationId']
          @SourceExchange = params['SourceExchange']
          @DestType = params['DestType']
          @DestValue = params['DestValue']
          @RoutingKey = params['RoutingKey']
          @SourceExchangeType = params['SourceExchangeType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Remark = params['Remark']
        end
      end

      # vhostd信息
      class AMQPVHost < TencentCloud::Common::AbstractModel
        # @param VHostId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type VHostId: String
        # @param MsgTtl: 未消费消息的保留时间，以毫秒单位，范围60秒到15天
        # @type MsgTtl: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，以毫秒为单位
        # @type UpdateTime: Integer
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :VHostId, :MsgTtl, :Remark, :CreateTime, :UpdateTime, :Username, :Password
        
        def initialize(vhostid=nil, msgttl=nil, remark=nil, createtime=nil, updatetime=nil, username=nil, password=nil)
          @VHostId = vhostid
          @MsgTtl = msgttl
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @VHostId = params['VHostId']
          @MsgTtl = params['MsgTtl']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Username = params['Username']
          @Password = params['Password']
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

        attr_accessor :ClusterId, :ClusterName, :Remark, :EndPointNum, :CreateTime, :Healthy, :HealthyInfo, :Status, :MaxNamespaceNum, :MaxTopicNum, :MaxQps, :MessageRetentionTime, :MaxStorageCapacity, :Version, :PublicEndPoint, :VpcEndPoint, :NamespaceNum, :UsedStorageBudget, :MaxPublishRateInMessages, :MaxDispatchRateInMessages, :MaxPublishRateInBytes, :MaxDispatchRateInBytes, :TopicNum, :MaxMessageDelayInSeconds, :PublicAccessEnabled, :Tags
        
        def initialize(clusterid=nil, clustername=nil, remark=nil, endpointnum=nil, createtime=nil, healthy=nil, healthyinfo=nil, status=nil, maxnamespacenum=nil, maxtopicnum=nil, maxqps=nil, messageretentiontime=nil, maxstoragecapacity=nil, version=nil, publicendpoint=nil, vpcendpoint=nil, namespacenum=nil, usedstoragebudget=nil, maxpublishrateinmessages=nil, maxdispatchrateinmessages=nil, maxpublishrateinbytes=nil, maxdispatchrateinbytes=nil, topicnum=nil, maxmessagedelayinseconds=nil, publicaccessenabled=nil, tags=nil)
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

      # CreateAMQPCluster请求参数结构体
      class CreateAMQPClusterRequest < TencentCloud::Common::AbstractModel
        # @param Name: 3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Name: String
        # @param Remark: 集群描述，128个字符以内
        # @type Remark: String

        attr_accessor :Name, :Remark
        
        def initialize(name=nil, remark=nil)
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # CreateAMQPCluster返回参数结构体
      class CreateAMQPClusterResponse < TencentCloud::Common::AbstractModel
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

      # CreateAMQPExchange请求参数结构体
      class CreateAMQPExchangeRequest < TencentCloud::Common::AbstractModel
        # @param Exchange: 交换机名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Exchange: String
        # @param VHosts: 交换机所在的vhost，目前支持在单个vhost下创建主题
        # @type VHosts: Array
        # @param Type: 交换机类型，可选值为Direct, Fanout, Topic
        # @type Type: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Remark: 交换机说明，最大128个字符
        # @type Remark: String
        # @param AlternateExchange: 备用交换机名称
        # @type AlternateExchange: String

        attr_accessor :Exchange, :VHosts, :Type, :ClusterId, :Remark, :AlternateExchange
        
        def initialize(exchange=nil, vhosts=nil, type=nil, clusterid=nil, remark=nil, alternateexchange=nil)
          @Exchange = exchange
          @VHosts = vhosts
          @Type = type
          @ClusterId = clusterid
          @Remark = remark
          @AlternateExchange = alternateexchange
        end

        def deserialize(params)
          @Exchange = params['Exchange']
          @VHosts = params['VHosts']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @AlternateExchange = params['AlternateExchange']
        end
      end

      # CreateAMQPExchange返回参数结构体
      class CreateAMQPExchangeResponse < TencentCloud::Common::AbstractModel
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

      # CreateAMQPQueue请求参数结构体
      class CreateAMQPQueueRequest < TencentCloud::Common::AbstractModel
        # @param Queue: 队列名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Queue: String
        # @param VHostId: 队列所在的vhost名称
        # @type VHostId: String
        # @param AutoDelete: 是否自动清除
        # @type AutoDelete: Boolean
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Remark: 队列说明，最大128个字符
        # @type Remark: String
        # @param DeadLetterExchange: 死信exchange
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: 路由键
        # @type DeadLetterRoutingKey: String

        attr_accessor :Queue, :VHostId, :AutoDelete, :ClusterId, :Remark, :DeadLetterExchange, :DeadLetterRoutingKey
        
        def initialize(queue=nil, vhostid=nil, autodelete=nil, clusterid=nil, remark=nil, deadletterexchange=nil, deadletterroutingkey=nil)
          @Queue = queue
          @VHostId = vhostid
          @AutoDelete = autodelete
          @ClusterId = clusterid
          @Remark = remark
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
        end

        def deserialize(params)
          @Queue = params['Queue']
          @VHostId = params['VHostId']
          @AutoDelete = params['AutoDelete']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
        end
      end

      # CreateAMQPQueue返回参数结构体
      class CreateAMQPQueueResponse < TencentCloud::Common::AbstractModel
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

      # CreateAMQPRouteRelation请求参数结构体
      class CreateAMQPRouteRelationRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: 交换机所在的vhost
        # @type VHostId: String
        # @param SourceExchange: 源Exchange名称
        # @type SourceExchange: String
        # @param DestType: 目标类型:Queue|Exchange
        # @type DestType: String
        # @param DestValue: 目标值
        # @type DestValue: String
        # @param Remark: 交换机说明，最大128个字符
        # @type Remark: String
        # @param RoutingKey: 绑定key,缺省值为default
        # @type RoutingKey: String

        attr_accessor :ClusterId, :VHostId, :SourceExchange, :DestType, :DestValue, :Remark, :RoutingKey
        
        def initialize(clusterid=nil, vhostid=nil, sourceexchange=nil, desttype=nil, destvalue=nil, remark=nil, routingkey=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @SourceExchange = sourceexchange
          @DestType = desttype
          @DestValue = destvalue
          @Remark = remark
          @RoutingKey = routingkey
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @SourceExchange = params['SourceExchange']
          @DestType = params['DestType']
          @DestValue = params['DestValue']
          @Remark = params['Remark']
          @RoutingKey = params['RoutingKey']
        end
      end

      # CreateAMQPRouteRelation返回参数结构体
      class CreateAMQPRouteRelationResponse < TencentCloud::Common::AbstractModel
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

      # CreateAMQPVHost请求参数结构体
      class CreateAMQPVHostRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: vhost名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type VHostId: String
        # @param MsgTtl: 未消费消息的保留时间，以毫秒为单位，60秒-15天
        # @type MsgTtl: Integer
        # @param Remark: 说明，最大128个字符
        # @type Remark: String

        attr_accessor :ClusterId, :VHostId, :MsgTtl, :Remark
        
        def initialize(clusterid=nil, vhostid=nil, msgttl=nil, remark=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @MsgTtl = msgttl
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @MsgTtl = params['MsgTtl']
          @Remark = params['Remark']
        end
      end

      # CreateAMQPVHost返回参数结构体
      class CreateAMQPVHostResponse < TencentCloud::Common::AbstractModel
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

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterName: 集群名称，不支持中字以及除了短线和下划线外的特殊字符且不超过16个字符。
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

      # CreateRocketMQCluster请求参数结构体
      class CreateRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param Name: 集群名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Name: String
        # @param Remark: 集群描述，128个字符以内
        # @type Remark: String

        attr_accessor :Name, :Remark
        
        def initialize(name=nil, remark=nil)
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # CreateRocketMQCluster返回参数结构体
      class CreateRocketMQClusterResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :GroupId, :Namespaces, :ReadEnable, :BroadcastEnable, :ClusterId, :Remark
        
        def initialize(groupid=nil, namespaces=nil, readenable=nil, broadcastenable=nil, clusterid=nil, remark=nil)
          @GroupId = groupid
          @Namespaces = namespaces
          @ReadEnable = readenable
          @BroadcastEnable = broadcastenable
          @ClusterId = clusterid
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Namespaces = params['Namespaces']
          @ReadEnable = params['ReadEnable']
          @BroadcastEnable = params['BroadcastEnable']
          @ClusterId = params['ClusterId']
          @Remark = params['Remark']
        end
      end

      # CreateRocketMQGroup返回参数结构体
      class CreateRocketMQGroupResponse < TencentCloud::Common::AbstractModel
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

      # CreateRocketMQNamespace请求参数结构体
      class CreateRocketMQNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 未消费消息的保留时间，以毫秒为单位，60秒-15天
        # @type Ttl: Integer
        # @param RetentionTime: 消息持久化后保留的时间，以毫秒为单位
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

      # CreateRocketMQTopic请求参数结构体
      class CreateRocketMQTopicRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type Topic: String
        # @param Namespaces: 主题所在的命名空间，目前支持在单个命名空间下创建主题
        # @type Namespaces: Array
        # @param Type: 主题类型，可选值为Normal, GlobalOrder, PartitionedOrder
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteAMQPCluster请求参数结构体
      class DeleteAMQPClusterRequest < TencentCloud::Common::AbstractModel
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

      # DeleteAMQPCluster返回参数结构体
      class DeleteAMQPClusterResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAMQPExchange请求参数结构体
      class DeleteAMQPExchangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param Exchange: 交换机名称
        # @type Exchange: String

        attr_accessor :ClusterId, :VHostId, :Exchange
        
        def initialize(clusterid=nil, vhostid=nil, exchange=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @Exchange = exchange
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @Exchange = params['Exchange']
        end
      end

      # DeleteAMQPExchange返回参数结构体
      class DeleteAMQPExchangeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAMQPQueue请求参数结构体
      class DeleteAMQPQueueRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param Queue: 队列名称
        # @type Queue: String

        attr_accessor :ClusterId, :VHostId, :Queue
        
        def initialize(clusterid=nil, vhostid=nil, queue=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @Queue = queue
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @Queue = params['Queue']
        end
      end

      # DeleteAMQPQueue返回参数结构体
      class DeleteAMQPQueueResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAMQPRouteRelation请求参数结构体
      class DeleteAMQPRouteRelationRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param RouteRelationId: 路由关系ID
        # @type RouteRelationId: String

        attr_accessor :ClusterId, :VHostId, :RouteRelationId
        
        def initialize(clusterid=nil, vhostid=nil, routerelationid=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @RouteRelationId = routerelationid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @RouteRelationId = params['RouteRelationId']
        end
      end

      # DeleteAMQPRouteRelation返回参数结构体
      class DeleteAMQPRouteRelationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAMQPVHost请求参数结构体
      class DeleteAMQPVHostRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: vhost名称
        # @type VHostId: String

        attr_accessor :ClusterId, :VHostId
        
        def initialize(clusterid=nil, vhostid=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
        end
      end

      # DeleteAMQPVHost返回参数结构体
      class DeleteAMQPVHostResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAMQPCluster请求参数结构体
      class DescribeAMQPClusterRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAMQPCluster返回参数结构体
      class DescribeAMQPClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Tdmq.v20200217.models.AMQPClusterInfo`
        # @param ClusterConfig: 集群配置
        # @type ClusterConfig: :class:`Tencentcloud::Tdmq.v20200217.models.AMQPClusterConfig`
        # @param ClusterStats: 集群最近使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStats: :class:`Tencentcloud::Tdmq.v20200217.models.AMQPClusterRecentStats`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @ClusterInfo = AMQPClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['ClusterConfig'].nil?
            @ClusterConfig = AMQPClusterConfig.new
            @ClusterConfig.deserialize(params['ClusterConfig'])
          end
          unless params['ClusterStats'].nil?
            @ClusterStats = AMQPClusterRecentStats.new
            @ClusterStats.deserialize(params['ClusterStats'])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAMQPCreateQuota请求参数结构体
      class DescribeAMQPCreateQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAMQPCreateQuota返回参数结构体
      class DescribeAMQPCreateQuotaResponse < TencentCloud::Common::AbstractModel
        # @param MaxClusterNum: 租户总共可使用集群数量
        # @type MaxClusterNum: Integer
        # @param UsedClusterNum: 租户已创建集群数量
        # @type UsedClusterNum: Integer
        # @param ExchangeCapacity: Exchange容量
        # @type ExchangeCapacity: Integer
        # @param QueueCapacity: Queue容量
        # @type QueueCapacity: Integer
        # @param MaxTpsPerVHost: 单Vhost TPS
        # @type MaxTpsPerVHost: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxClusterNum, :UsedClusterNum, :ExchangeCapacity, :QueueCapacity, :MaxTpsPerVHost, :RequestId
        
        def initialize(maxclusternum=nil, usedclusternum=nil, exchangecapacity=nil, queuecapacity=nil, maxtpspervhost=nil, requestid=nil)
          @MaxClusterNum = maxclusternum
          @UsedClusterNum = usedclusternum
          @ExchangeCapacity = exchangecapacity
          @QueueCapacity = queuecapacity
          @MaxTpsPerVHost = maxtpspervhost
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxClusterNum = params['MaxClusterNum']
          @UsedClusterNum = params['UsedClusterNum']
          @ExchangeCapacity = params['ExchangeCapacity']
          @QueueCapacity = params['QueueCapacity']
          @MaxTpsPerVHost = params['MaxTpsPerVHost']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAMQPExchanges请求参数结构体
      class DescribeAMQPExchangesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制数
        # @type Limit: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost ID
        # @type VHostId: String
        # @param FilterType: 按路由类型过滤查询结果，可选择Direct, Fanout, Topic
        # @type FilterType: Array
        # @param FilterName: 按exchange名称搜索，支持模糊查询
        # @type FilterName: String
        # @param FilterInternal: 过滤查询内部或者外部exchange
        # @type FilterInternal: Boolean

        attr_accessor :Offset, :Limit, :ClusterId, :VHostId, :FilterType, :FilterName, :FilterInternal
        
        def initialize(offset=nil, limit=nil, clusterid=nil, vhostid=nil, filtertype=nil, filtername=nil, filterinternal=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @VHostId = vhostid
          @FilterType = filtertype
          @FilterName = filtername
          @FilterInternal = filterinternal
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @FilterType = params['FilterType']
          @FilterName = params['FilterName']
          @FilterInternal = params['FilterInternal']
        end
      end

      # DescribeAMQPExchanges返回参数结构体
      class DescribeAMQPExchangesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Exchanges: 主题信息列表
        # @type Exchanges: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Exchanges, :RequestId
        
        def initialize(totalcount=nil, exchanges=nil, requestid=nil)
          @TotalCount = totalcount
          @Exchanges = exchanges
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Exchanges'].nil?
            @Exchanges = []
            params['Exchanges'].each do |i|
              amqpexchange_tmp = AMQPExchange.new
              amqpexchange_tmp.deserialize(i)
              @Exchanges << amqpexchange_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAMQPQueues请求参数结构体
      class DescribeAMQPQueuesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制数
        # @type Limit: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param NameKeyword: 按队列名称搜索，支持模糊查询
        # @type NameKeyword: String
        # @param SortOrder: 查询结果排序规则，ASC为升序，DESC为降序
        # @type SortOrder: String
        # @param SortedBy: 对查询结果排序，此为排序字段，目前支持Accumulative（消息堆积量）、Tps
        # @type SortedBy: String
        # @param FilterOneQueue: 队列名称，指定此参数后将只返回该队列信息
        # @type FilterOneQueue: String

        attr_accessor :Offset, :Limit, :ClusterId, :VHostId, :NameKeyword, :SortOrder, :SortedBy, :FilterOneQueue
        
        def initialize(offset=nil, limit=nil, clusterid=nil, vhostid=nil, namekeyword=nil, sortorder=nil, sortedby=nil, filteronequeue=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @VHostId = vhostid
          @NameKeyword = namekeyword
          @SortOrder = sortorder
          @SortedBy = sortedby
          @FilterOneQueue = filteronequeue
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @NameKeyword = params['NameKeyword']
          @SortOrder = params['SortOrder']
          @SortedBy = params['SortedBy']
          @FilterOneQueue = params['FilterOneQueue']
        end
      end

      # DescribeAMQPQueues返回参数结构体
      class DescribeAMQPQueuesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Queues: 队列信息列表
        # @type Queues: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Queues, :RequestId
        
        def initialize(totalcount=nil, queues=nil, requestid=nil)
          @TotalCount = totalcount
          @Queues = queues
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Queues'].nil?
            @Queues = []
            params['Queues'].each do |i|
              amqpqueuedetail_tmp = AMQPQueueDetail.new
              amqpqueuedetail_tmp.deserialize(i)
              @Queues << amqpqueuedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAMQPRouteRelations请求参数结构体
      class DescribeAMQPRouteRelationsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制数
        # @type Limit: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param FilterSourceExchange: 按源exchange名称过滤查询结果，支持模糊查询
        # @type FilterSourceExchange: String
        # @param FilterDestType: 按绑定的目标类型过滤查询结果，可选值:Exchange、Queue
        # @type FilterDestType: String
        # @param FilterDestValue: 按目标名称过滤查询结果，支持模糊查询
        # @type FilterDestValue: String

        attr_accessor :Offset, :Limit, :ClusterId, :VHostId, :FilterSourceExchange, :FilterDestType, :FilterDestValue
        
        def initialize(offset=nil, limit=nil, clusterid=nil, vhostid=nil, filtersourceexchange=nil, filterdesttype=nil, filterdestvalue=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @VHostId = vhostid
          @FilterSourceExchange = filtersourceexchange
          @FilterDestType = filterdesttype
          @FilterDestValue = filterdestvalue
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @FilterSourceExchange = params['FilterSourceExchange']
          @FilterDestType = params['FilterDestType']
          @FilterDestValue = params['FilterDestValue']
        end
      end

      # DescribeAMQPRouteRelations返回参数结构体
      class DescribeAMQPRouteRelationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RouteRelations: 路由关系列表
        # @type RouteRelations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteRelations, :RequestId
        
        def initialize(totalcount=nil, routerelations=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteRelations = routerelations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteRelations'].nil?
            @RouteRelations = []
            params['RouteRelations'].each do |i|
              amqprouterelation_tmp = AMQPRouteRelation.new
              amqprouterelation_tmp.deserialize(i)
              @RouteRelations << amqprouterelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAMQPVHosts请求参数结构体
      class DescribeAMQPVHostsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAMQPVHosts返回参数结构体
      class DescribeAMQPVHostsResponse < TencentCloud::Common::AbstractModel
        # @param VHosts: Vhost 列表
        # @type VHosts: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VHosts, :TotalCount, :RequestId
        
        def initialize(vhosts=nil, totalcount=nil, requestid=nil)
          @VHosts = vhosts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VHosts'].nil?
            @VHosts = []
            params['VHosts'].each do |i|
              amqpvhost_tmp = AMQPVHost.new
              amqpvhost_tmp.deserialize(i)
              @VHosts << amqpvhost_tmp
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param QueueNameList: CMQ 队列名称列表过滤
        # @type QueueNameList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为 true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤。
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
        # @param TopicNameList: CMQ 主题名称列表过滤
        # @type TopicNameList: Array
        # @param IsTagFilter: 标签过滤查找时，需要设置为 true
        # @type IsTagFilter: Boolean
        # @param Filters: 过滤器。目前支持按标签过滤。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ClusterStats: 集群最近使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStats: :class:`Tencentcloud::Tdmq.v20200217.models.RocketMQClusterRecentStats`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :ClusterId, :NamespaceId, :Offset, :Limit, :FilterTopic, :FilterGroup, :SortedBy, :SortOrder, :FilterOneGroup
        
        def initialize(clusterid=nil, namespaceid=nil, offset=nil, limit=nil, filtertopic=nil, filtergroup=nil, sortedby=nil, sortorder=nil, filteronegroup=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Offset = offset
          @Limit = limit
          @FilterTopic = filtertopic
          @FilterGroup = filtergroup
          @SortedBy = sortedby
          @SortOrder = sortorder
          @FilterOneGroup = filteronegroup
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
        end
      end

      # DescribeRocketMQGroups返回参数结构体
      class DescribeRocketMQGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Groups: 订阅组列表
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :Offset, :Limit, :ClusterId, :NamespaceId, :FilterType, :FilterName
        
        def initialize(offset=nil, limit=nil, clusterid=nil, namespaceid=nil, filtertype=nil, filtername=nil)
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @FilterType = filtertype
          @FilterName = filtername
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @FilterType = params['FilterType']
          @FilterName = params['FilterName']
        end
      end

      # DescribeRocketMQTopics返回参数结构体
      class DescribeRocketMQTopicsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Topics: 主题信息列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRoles请求参数结构体
      class DescribeRolesRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称，模糊查询
        # @type RoleName: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer
        # @param ClusterId: 必填字段，集群Id
        # @type ClusterId: String
        # @param Filters: * RoleName
        # 按照角色名进行过滤，精确查询。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :RoleName, :Offset, :Limit, :ClusterId, :Filters
        
        def initialize(rolename=nil, offset=nil, limit=nil, clusterid=nil, filters=nil)
          @RoleName = rolename
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @RoleName = params['RoleName']
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

      # DescribeRoles返回参数结构体
      class DescribeRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param RoleSets: 角色数组。
        # @type RoleSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RetentionPolicy: 消息保留策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionPolicy: :class:`Tencentcloud::Tdmq.v20200217.models.RetentionPolicy`

        attr_accessor :EnvironmentId, :Remark, :MsgTTL, :CreateTime, :UpdateTime, :NamespaceId, :NamespaceName, :TopicNum, :RetentionPolicy
        
        def initialize(environmentid=nil, remark=nil, msgttl=nil, createtime=nil, updatetime=nil, namespaceid=nil, namespacename=nil, topicnum=nil, retentionpolicy=nil)
          @EnvironmentId = environmentid
          @Remark = remark
          @MsgTTL = msgttl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @TopicNum = topicnum
          @RetentionPolicy = retentionpolicy
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

        attr_accessor :TenantId, :TenantName, :CustomerUin, :CustomerAppId, :ClusterName, :Type, :MaxNamespaces, :UsedNamespaces, :MaxTopics, :UsedTopics, :MaxPartitions, :UsedPartitions, :MaxMsgBacklogSize, :MaxPublishTps, :MaxRetention, :CreateTime, :UpdateTime, :MaxDispatchTps, :MaxDispatchRateInBytes, :MaxPublishRateInBytes, :MaxRetentionSizeInMB
        
        def initialize(tenantid=nil, tenantname=nil, customeruin=nil, customerappid=nil, clustername=nil, type=nil, maxnamespaces=nil, usednamespaces=nil, maxtopics=nil, usedtopics=nil, maxpartitions=nil, usedpartitions=nil, maxmsgbacklogsize=nil, maxpublishtps=nil, maxretention=nil, createtime=nil, updatetime=nil, maxdispatchtps=nil, maxdispatchrateinbytes=nil, maxpublishrateinbytes=nil, maxretentionsizeinmb=nil)
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
        end
      end

      # ModifyAMQPCluster请求参数结构体
      class ModifyAMQPClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 3-64个字符，只能包含字母、数字、“-”及“_”
        # @type ClusterName: String
        # @param Remark: 说明信息，不超过128个字符
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

      # ModifyAMQPCluster返回参数结构体
      class ModifyAMQPClusterResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAMQPExchange请求参数结构体
      class ModifyAMQPExchangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost间名称
        # @type VHostId: String
        # @param Exchange: 交换机名称
        # @type Exchange: String
        # @param Remark: 说明信息，最大128个字符
        # @type Remark: String

        attr_accessor :ClusterId, :VHostId, :Exchange, :Remark
        
        def initialize(clusterid=nil, vhostid=nil, exchange=nil, remark=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @Exchange = exchange
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @Exchange = params['Exchange']
          @Remark = params['Remark']
        end
      end

      # ModifyAMQPExchange返回参数结构体
      class ModifyAMQPExchangeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAMQPQueue请求参数结构体
      class ModifyAMQPQueueRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: Vhost名称
        # @type VHostId: String
        # @param Queue: 队列名称
        # @type Queue: String
        # @param AutoDelete: 是否自动清除
        # @type AutoDelete: Boolean
        # @param Remark: 说明信息，最大128个字符
        # @type Remark: String
        # @param DeadLetterExchange: 死信exchange
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: 路由键
        # @type DeadLetterRoutingKey: String

        attr_accessor :ClusterId, :VHostId, :Queue, :AutoDelete, :Remark, :DeadLetterExchange, :DeadLetterRoutingKey
        
        def initialize(clusterid=nil, vhostid=nil, queue=nil, autodelete=nil, remark=nil, deadletterexchange=nil, deadletterroutingkey=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @Queue = queue
          @AutoDelete = autodelete
          @Remark = remark
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @Queue = params['Queue']
          @AutoDelete = params['AutoDelete']
          @Remark = params['Remark']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
        end
      end

      # ModifyAMQPQueue返回参数结构体
      class ModifyAMQPQueueResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAMQPVHost请求参数结构体
      class ModifyAMQPVHostRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VHostId: vhost名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type VHostId: String
        # @param MsgTtl: 未消费消息的保留时间，以毫秒为单位，60秒-15天
        # @type MsgTtl: Integer
        # @param Remark: 说明，最大128个字符
        # @type Remark: String

        attr_accessor :ClusterId, :VHostId, :MsgTtl, :Remark
        
        def initialize(clusterid=nil, vhostid=nil, msgttl=nil, remark=nil)
          @ClusterId = clusterid
          @VHostId = vhostid
          @MsgTtl = msgttl
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VHostId = params['VHostId']
          @MsgTtl = params['MsgTtl']
          @Remark = params['Remark']
        end
      end

      # ModifyAMQPVHost返回参数结构体
      class ModifyAMQPVHostResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCluster请求参数结构体
      class ModifyClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: Pulsar 集群的ID，需要更新的集群Id。
        # @type ClusterId: String
        # @param ClusterName: 更新后的集群名称。
        # @type ClusterName: String
        # @param Remark: 说明信息。
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

      # ModifyRocketMQCluster请求参数结构体
      class ModifyRocketMQClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: RocketMQ集群ID
        # @type ClusterId: String
        # @param ClusterName: 3-64个字符，只能包含字母、数字、“-”及“_”
        # @type ClusterName: String
        # @param Remark: 说明信息，不超过128个字符
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

      # ModifyRocketMQCluster返回参数结构体
      class ModifyRocketMQClusterResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :ClusterId, :NamespaceId, :GroupId, :Remark, :ReadEnable, :BroadcastEnable
        
        def initialize(clusterid=nil, namespaceid=nil, groupid=nil, remark=nil, readenable=nil, broadcastenable=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @GroupId = groupid
          @Remark = remark
          @ReadEnable = readenable
          @BroadcastEnable = broadcastenable
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @GroupId = params['GroupId']
          @Remark = params['Remark']
          @ReadEnable = params['ReadEnable']
          @BroadcastEnable = params['BroadcastEnable']
        end
      end

      # ModifyRocketMQGroup返回参数结构体
      class ModifyRocketMQGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRocketMQNamespace请求参数结构体
      class ModifyRocketMQNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 未消费消息的保留时间，以毫秒为单位，60秒-15天
        # @type Ttl: Integer
        # @param RetentionTime: 消息持久化后保留的时间，以毫秒为单位
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

      # ModifyRocketMQNamespace返回参数结构体
      class ModifyRocketMQNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRole请求参数结构体
      class ModifyRoleRequest < TencentCloud::Common::AbstractModel
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

      # ModifyRole返回参数结构体
      class ModifyRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # RocketMQ集群配置
      class RocketMQClusterConfig < TencentCloud::Common::AbstractModel
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
        # @param MaxRetentionTime: 消息最大保留时间，以毫秒为单位
        # @type MaxRetentionTime: Integer
        # @param MaxLatencyTime: 消息最长延时，以毫秒为单位
        # @type MaxLatencyTime: Integer

        attr_accessor :MaxTpsPerNamespace, :MaxNamespaceNum, :UsedNamespaceNum, :MaxTopicNum, :UsedTopicNum, :MaxGroupNum, :UsedGroupNum, :MaxRetentionTime, :MaxLatencyTime
        
        def initialize(maxtpspernamespace=nil, maxnamespacenum=nil, usednamespacenum=nil, maxtopicnum=nil, usedtopicnum=nil, maxgroupnum=nil, usedgroupnum=nil, maxretentiontime=nil, maxlatencytime=nil)
          @MaxTpsPerNamespace = maxtpspernamespace
          @MaxNamespaceNum = maxnamespacenum
          @UsedNamespaceNum = usednamespacenum
          @MaxTopicNum = maxtopicnum
          @UsedTopicNum = usedtopicnum
          @MaxGroupNum = maxgroupnum
          @UsedGroupNum = usedgroupnum
          @MaxRetentionTime = maxretentiontime
          @MaxLatencyTime = maxlatencytime
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

        attr_accessor :Name, :ConsumerNum, :TPS, :TotalAccumulative, :ConsumptionMode, :ReadEnabled, :RetryPartitionNum, :CreateTime, :UpdateTime, :ClientProtocol, :Remark, :ConsumerType, :BroadcastEnabled
        
        def initialize(name=nil, consumernum=nil, tps=nil, totalaccumulative=nil, consumptionmode=nil, readenabled=nil, retrypartitionnum=nil, createtime=nil, updatetime=nil, clientprotocol=nil, remark=nil, consumertype=nil, broadcastenabled=nil)
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
        end
      end

      # RocketMQ命名空间信息
      class RocketMQNamespace < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        # @type NamespaceId: String
        # @param Ttl: 未消费消息的保留时间，以毫秒单位，范围60秒到15天
        # @type Ttl: Integer
        # @param RetentionTime: 消息持久化后保留的时间，以毫秒单位
        # @type RetentionTime: Integer
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :NamespaceId, :Ttl, :RetentionTime, :Remark
        
        def initialize(namespaceid=nil, ttl=nil, retentiontime=nil, remark=nil)
          @NamespaceId = namespaceid
          @Ttl = ttl
          @RetentionTime = retentiontime
          @Remark = remark
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Ttl = params['Ttl']
          @RetentionTime = params['RetentionTime']
          @Remark = params['Remark']
        end
      end

      # RocketMQ主题信息
      class RocketMQTopic < TencentCloud::Common::AbstractModel
        # @param Name: 主题名称
        # @type Name: String
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PartitionNum: 读写分区数
        # @type PartitionNum: Integer
        # @param CreateTime: 创建时间，以毫秒为单位
        # @type CreateTime: Integer
        # @param UpdateTime: 创建时间，以毫秒为单位
        # @type UpdateTime: Integer

        attr_accessor :Name, :Remark, :PartitionNum, :CreateTime, :UpdateTime
        
        def initialize(name=nil, remark=nil, partitionnum=nil, createtime=nil, updatetime=nil)
          @Name = name
          @Remark = remark
          @PartitionNum = partitionnum
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @PartitionNum = params['PartitionNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

        attr_accessor :RoleName, :Token, :Remark, :CreateTime, :UpdateTime
        
        def initialize(rolename=nil, token=nil, remark=nil, createtime=nil, updatetime=nil)
          @RoleName = rolename
          @Token = token
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Token = params['Token']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

