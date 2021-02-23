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

        attr_accessor :ClusterId, :ClusterName, :Remark, :EndPointNum, :CreateTime, :Healthy, :HealthyInfo, :Status, :MaxNamespaceNum, :MaxTopicNum, :MaxQps, :MessageRetentionTime, :MaxStorageCapacity
        
        def initialize(clusterid=nil, clustername=nil, remark=nil, endpointnum=nil, createtime=nil, healthy=nil, healthyinfo=nil, status=nil, maxnamespacenum=nil, maxtopicnum=nil, maxqps=nil, messageretentiontime=nil, maxstoragecapacity=nil)
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
              @Tags << Tag.new.deserialize(i)
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

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :ClusterId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
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

        attr_accessor :EnvironmentId, :TopicName, :SubscriptionName, :IsIdempotent, :Remark, :ClusterId, :AutoCreatePolicyTopic
        
        def initialize(environmentid=nil, topicname=nil, subscriptionname=nil, isidempotent=nil, remark=nil, clusterid=nil, autocreatepolicytopic=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @IsIdempotent = isidempotent
          @Remark = remark
          @ClusterId = clusterid
          @AutoCreatePolicyTopic = autocreatepolicytopic
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @IsIdempotent = params['IsIdempotent']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
          @AutoCreatePolicyTopic = params['AutoCreatePolicyTopic']
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
        # @param TopicName: 主题名，不支持中字以及除了短线和下划线外的特殊字符且不超过32个字符。
        # @type TopicName: String
        # @param Partitions: 0：非分区topic，无分区；非0：具体分区topic的分区数，最大不允许超过128。
        # @type Partitions: Integer
        # @param TopicType: 0： 普通消息；
        # 1 ：全局顺序消息；
        # 2 ：局部顺序消息；
        # 3 ：重试队列；
        # 4 ：死信队列；
        # 5 ：事务消息。
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

        attr_accessor :SubscriptionTopicSets, :ClusterId, :EnvironmentId
        
        def initialize(subscriptiontopicsets=nil, clusterid=nil, environmentid=nil)
          @SubscriptionTopicSets = subscriptiontopicsets
          @ClusterId = clusterid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          unless params['SubscriptionTopicSets'].nil?
            @SubscriptionTopicSets = []
            params['SubscriptionTopicSets'].each do |i|
              @SubscriptionTopicSets << SubscriptionTopic.new.deserialize(i)
            end
          end
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
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
              @SubscriptionTopicSets << SubscriptionTopic.new.deserialize(i)
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

        attr_accessor :TopicSets, :ClusterId, :EnvironmentId
        
        def initialize(topicsets=nil, clusterid=nil, environmentid=nil)
          @TopicSets = topicsets
          @ClusterId = clusterid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          unless params['TopicSets'].nil?
            @TopicSets = []
            params['TopicSets'].each do |i|
              @TopicSets << TopicRecord.new.deserialize(i)
            end
          end
          @ClusterId = params['ClusterId']
          @EnvironmentId = params['EnvironmentId']
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
              @TopicSets << TopicRecord.new.deserialize(i)
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
              @ClusterSet << BindCluster.new.deserialize(i)
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
              @VpcSets << VpcBindRecord.new.deserialize(i)
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
            @ClusterSet = Cluster.new.deserialize(params['ClusterSet'])
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
              @ClusterSet << Cluster.new.deserialize(i)
            end
          end
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

        attr_accessor :EnvironmentId, :Offset, :Limit, :ClusterId, :RoleName
        
        def initialize(environmentid=nil, offset=nil, limit=nil, clusterid=nil, rolename=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @RoleName = rolename
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @RoleName = params['RoleName']
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
              @EnvironmentRoleSets << EnvironmentRole.new.deserialize(i)
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

        attr_accessor :EnvironmentId, :Offset, :Limit, :ClusterId
        
        def initialize(environmentid=nil, offset=nil, limit=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
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
              @EnvironmentSet << Environment.new.deserialize(i)
            end
          end
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
              @ProducerSets << Producer.new.deserialize(i)
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
              @Filters << FilterSubscription.new.deserialize(i)
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
              @SubscriptionSets << Subscription.new.deserialize(i)
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

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :TopicType, :ClusterId
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, topictype=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @TopicType = topictype
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicType = params['TopicType']
          @ClusterId = params['ClusterId']
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
              @TopicSets << Topic.new.deserialize(i)
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

        attr_accessor :EnvironmentId, :Remark, :MsgTTL, :CreateTime, :UpdateTime, :NamespaceId, :NamespaceName
        
        def initialize(environmentid=nil, remark=nil, msgttl=nil, createtime=nil, updatetime=nil, namespaceid=nil, namespacename=nil)
          @EnvironmentId = environmentid
          @Remark = remark
          @MsgTTL = msgttl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
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

      # 过滤订阅列表
      class FilterSubscription < TencentCloud::Common::AbstractModel
        # @param ConsumerHasCount: 是否仅展示包含真实消费者的订阅。
        # @type ConsumerHasCount: Boolean
        # @param ConsumerHasBacklog: 是否仅展示消息堆积的订阅。
        # @type ConsumerHasBacklog: Boolean
        # @param ConsumerHasExpired: 是否仅展示存在消息超期丢弃的订阅。
        # @type ConsumerHasExpired: Boolean

        attr_accessor :ConsumerHasCount, :ConsumerHasBacklog, :ConsumerHasExpired
        
        def initialize(consumerhascount=nil, consumerhasbacklog=nil, consumerhasexpired=nil)
          @ConsumerHasCount = consumerhascount
          @ConsumerHasBacklog = consumerhasbacklog
          @ConsumerHasExpired = consumerhasexpired
        end

        def deserialize(params)
          @ConsumerHasCount = params['ConsumerHasCount']
          @ConsumerHasBacklog = params['ConsumerHasBacklog']
          @ConsumerHasExpired = params['ConsumerHasExpired']
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

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :ClusterId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, clusterid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @ClusterId = clusterid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
          @ClusterId = params['ClusterId']
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
              @ConnectionSets << Connection.new.deserialize(i)
            end
          end
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
              @ConsumerSets << Consumer.new.deserialize(i)
            end
          end
          @IsOnline = params['IsOnline']
          unless params['ConsumersScheduleSets'].nil?
            @ConsumersScheduleSets = []
            params['ConsumersScheduleSets'].each do |i|
              @ConsumersScheduleSets << ConsumersSchedule.new.deserialize(i)
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

        attr_accessor :AverageMsgSize, :ConsumerCount, :LastConfirmedEntry, :LastLedgerCreatedTimestamp, :MsgRateIn, :MsgRateOut, :MsgThroughputIn, :MsgThroughputOut, :NumberOfEntries, :Partitions, :ProducerCount, :TotalSize, :SubTopicSets, :TopicType, :EnvironmentId, :TopicName, :Remark, :CreateTime, :UpdateTime
        
        def initialize(averagemsgsize=nil, consumercount=nil, lastconfirmedentry=nil, lastledgercreatedtimestamp=nil, msgratein=nil, msgrateout=nil, msgthroughputin=nil, msgthroughputout=nil, numberofentries=nil, partitions=nil, producercount=nil, totalsize=nil, subtopicsets=nil, topictype=nil, environmentid=nil, topicname=nil, remark=nil, createtime=nil, updatetime=nil)
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
              @SubTopicSets << PartitionsTopic.new.deserialize(i)
            end
          end
          @TopicType = params['TopicType']
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

