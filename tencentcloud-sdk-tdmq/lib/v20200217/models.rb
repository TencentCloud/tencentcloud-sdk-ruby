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

      # CreateEnvironment请求参数结构体
      class CreateEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称，不支持中字以及除了短线和下划线外的特殊字符且不超过16个字符。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最小60，最大1296000，（15天）。
        # @type MsgTTL: Integer
        # @param Remark: 说明，128个字符以内。
        # @type Remark: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :RequestId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, requestid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
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

        attr_accessor :EnvironmentId, :TopicName, :SubscriptionName, :IsIdempotent, :Remark
        
        def initialize(environmentid=nil, topicname=nil, subscriptionname=nil, isidempotent=nil, remark=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @SubscriptionName = subscriptionname
          @IsIdempotent = isidempotent
          @Remark = remark
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @SubscriptionName = params['SubscriptionName']
          @IsIdempotent = params['IsIdempotent']
          @Remark = params['Remark']
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

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :TopicType, :Remark
        
        def initialize(environmentid=nil, topicname=nil, partitions=nil, topictype=nil, remark=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @TopicType = topictype
          @Remark = remark
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @TopicType = params['TopicType']
          @Remark = params['Remark']
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

      # DeleteEnvironments请求参数结构体
      class DeleteEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentIds: 环境（命名空间）数组，每次最多删除20个。
        # @type EnvironmentIds: Array

        attr_accessor :EnvironmentIds
        
        def initialize(environmentids=nil)
          @EnvironmentIds = environmentids
        end

        def deserialize(params)
          @EnvironmentIds = params['EnvironmentIds']
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

        attr_accessor :SubscriptionTopicSets
        
        def initialize(subscriptiontopicsets=nil)
          @SubscriptionTopicSets = subscriptiontopicsets
        end

        def deserialize(params)
          @SubscriptionTopicSets = params['SubscriptionTopicSets']
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
          @SubscriptionTopicSets = params['SubscriptionTopicSets']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopics请求参数结构体
      class DeleteTopicsRequest < TencentCloud::Common::AbstractModel
        # @param TopicSets: 主题集合，每次最多删除20个。
        # @type TopicSets: Array

        attr_accessor :TopicSets
        
        def initialize(topicsets=nil)
          @TopicSets = topicsets
        end

        def deserialize(params)
          @TopicSets = params['TopicSets']
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
          @TopicSets = params['TopicSets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironmentAttributes请求参数结构体
      class DescribeEnvironmentAttributesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String

        attr_accessor :EnvironmentId
        
        def initialize(environmentid=nil)
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
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
        # @param EnvironmentId: 环境（命名空间）
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer

        attr_accessor :EnvironmentId, :Offset, :Limit
        
        def initialize(environmentid=nil, offset=nil, limit=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEnvironmentRoles返回参数结构体
      class DescribeEnvironmentRolesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数。
        # @type TotalCount: Integer
        # @param EnvironmentRoleSets: 环境角色集合。
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
          @EnvironmentRoleSets = params['EnvironmentRoleSets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称，模糊搜索。
        # @type EnvironmentId: String
        # @param Offset: 起始下标，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为10，最大值为20。
        # @type Limit: Integer

        attr_accessor :EnvironmentId, :Offset, :Limit
        
        def initialize(environmentid=nil, offset=nil, limit=nil)
          @EnvironmentId = environmentid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 环境（命名空间）记录数。
        # @type TotalCount: Integer
        # @param EnvironmentSet: 环境（命名空间）集合数组。
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
          @EnvironmentSet = params['EnvironmentSet']
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

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :ProducerName
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, producername=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @ProducerName = producername
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProducerName = params['ProducerName']
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
          @ProducerSets = params['ProducerSets']
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

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :SubscriptionName, :Filters
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, subscriptionname=nil, filters=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @SubscriptionName = subscriptionname
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubscriptionName = params['SubscriptionName']
          @Filters = params['Filters']
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
          @SubscriptionSets = params['SubscriptionSets']
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

        attr_accessor :EnvironmentId, :TopicName, :Offset, :Limit, :TopicType
        
        def initialize(environmentid=nil, topicname=nil, offset=nil, limit=nil, topictype=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @TopicType = topictype
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TopicType = params['TopicType']
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
          @TopicSets = params['TopicSets']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 环境信息
      class Environment < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称
        # @type EnvironmentId: String
        # @param Remark: 说明
        # @type Remark: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最大1296000（15天）
        # @type MsgTTL: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间
        # @type UpdateTime: String

        attr_accessor :EnvironmentId, :Remark, :MsgTTL, :CreateTime, :UpdateTime
        
        def initialize(environmentid=nil, remark=nil, msgttl=nil, createtime=nil, updatetime=nil)
          @EnvironmentId = environmentid
          @Remark = remark
          @MsgTTL = msgttl
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

      # ModifyEnvironmentAttributes请求参数结构体
      class ModifyEnvironmentAttributesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒，最大1296000。
        # @type MsgTTL: Integer
        # @param Remark: 备注，字符串最长不超过128。
        # @type Remark: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
          @Remark = params['Remark']
        end
      end

      # ModifyEnvironmentAttributes返回参数结构体
      class ModifyEnvironmentAttributesResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param MsgTTL: 未消费消息过期时间，单位：秒。
        # @type MsgTTL: Integer
        # @param Remark: 备注，字符串最长不超过128。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :MsgTTL, :Remark, :RequestId
        
        def initialize(environmentid=nil, msgttl=nil, remark=nil, requestid=nil)
          @EnvironmentId = environmentid
          @MsgTTL = msgttl
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @MsgTTL = params['MsgTTL']
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

        attr_accessor :EnvironmentId, :TopicName, :Partitions, :Remark
        
        def initialize(environmentid=nil, topicname=nil, partitions=nil, remark=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Partitions = partitions
          @Remark = remark
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Partitions = params['Partitions']
          @Remark = params['Remark']
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
          @ConnectionSets = params['ConnectionSets']
        end
      end

      # ResetMsgSubOffsetByTimestamp请求参数结构体
      class ResetMsgSubOffsetByTimestampRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境（命名空间）名称。
        # @type EnvironmentId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param Subscription: 订阅者名称。
        # @type Subscription: String
        # @param ToTimestamp: 时间戳，精确到毫秒。
        # @type ToTimestamp: Integer

        attr_accessor :EnvironmentId, :TopicName, :Subscription, :ToTimestamp
        
        def initialize(environmentid=nil, topicname=nil, subscription=nil, totimestamp=nil)
          @EnvironmentId = environmentid
          @TopicName = topicname
          @Subscription = subscription
          @ToTimestamp = totimestamp
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @TopicName = params['TopicName']
          @Subscription = params['Subscription']
          @ToTimestamp = params['ToTimestamp']
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
          @ConsumerSets = params['ConsumerSets']
          @IsOnline = params['IsOnline']
          @ConsumersScheduleSets = params['ConsumersScheduleSets']
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
          @SubTopicSets = params['SubTopicSets']
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

    end
  end
end

