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
  module Cmq
    module V20190304
      # 死信队列策略
      class DeadLetterPolicy < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueue: 死信队列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterQueue: String
        # @param DeadLetterQueueName: 死信队列名字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterQueueName: String
        # @param MaxTimeToLive: 最大未消费过期时间。Policy为1时必选。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTimeToLive: Integer
        # @param Policy: 死信队列策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: Integer
        # @param MaxReceiveCount: 最大接收次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReceiveCount: Integer

        attr_accessor :DeadLetterQueue, :DeadLetterQueueName, :MaxTimeToLive, :Policy, :MaxReceiveCount

        def initialize(deadletterqueue=nil, deadletterqueuename=nil, maxtimetolive=nil, policy=nil, maxreceivecount=nil)
          @DeadLetterQueue = deadletterqueue
          @DeadLetterQueueName = deadletterqueuename
          @MaxTimeToLive = maxtimetolive
          @Policy = policy
          @MaxReceiveCount = maxreceivecount
        end

        def deserialize(params)
          @DeadLetterQueue = params['DeadLetterQueue']
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @MaxTimeToLive = params['MaxTimeToLive']
          @Policy = params['Policy']
          @MaxReceiveCount = params['MaxReceiveCount']
        end
      end

      # 死信源队列信息
      class DeadLetterSource < TencentCloud::Common::AbstractModel
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

      # DescribeQueueDetail请求参数结构体
      class DescribeQueueDetailRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签搜索
        # @type TagKey: String
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param QueueName: 精确匹配QueueName
        # @type QueueName: String
        # @param Filters: 筛选参数，目前支持QueueName筛选，且仅支持一个关键字
        # @type Filters: Array
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer

        attr_accessor :TagKey, :Limit, :QueueName, :Filters, :Offset

        def initialize(tagkey=nil, limit=nil, queuename=nil, filters=nil, offset=nil)
          @TagKey = tagkey
          @Limit = limit
          @QueueName = queuename
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @Limit = params['Limit']
          @QueueName = params['QueueName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeQueueDetail返回参数结构体
      class DescribeQueueDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总队列数。
        # @type TotalCount: Integer
        # @param QueueSet: 队列详情列表。
        # @type QueueSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              queueset_tmp = QueueSet.new
              queueset_tmp.deserialize(i)
              @QueueSet << queueset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicDetail请求参数结构体
      class DescribeTopicDetailRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签匹配。
        # @type TagKey: String
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param TopicName: 精确匹配TopicName。
        # @type TopicName: String
        # @param Filters: 目前只支持过滤TopicName ， 且只能填一个过滤值。
        # @type Filters: Array
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        # @type Offset: Integer

        attr_accessor :TagKey, :Limit, :TopicName, :Filters, :Offset

        def initialize(tagkey=nil, limit=nil, topicname=nil, filters=nil, offset=nil)
          @TagKey = tagkey
          @Limit = limit
          @TopicName = topicname
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @Limit = params['Limit']
          @TopicName = params['TopicName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeTopicDetail返回参数结构体
      class DescribeTopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主题列表总数。
        # @type TotalCount: Integer
        # @param TopicSet: 主题详情列表。
        # @type TopicSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TopicSet, :RequestId

        def initialize(totalcount=nil, topicset=nil, requestid=nil)
          @TotalCount = totalcount
          @TopicSet = topicset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicSet'].nil?
            @TopicSet = []
            params['TopicSet'].each do |i|
              topicset_tmp = TopicSet.new
              topicset_tmp.deserialize(i)
              @TopicSet << topicset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Values: 数值
        # @type Values: Array
        # @param Name: 过滤参数的名字
        # @type Name: String

        attr_accessor :Values, :Name

        def initialize(values=nil, name=nil)
          @Values = values
          @Name = name
        end

        def deserialize(params)
          @Values = params['Values']
          @Name = params['Name']
        end
      end

      # 批量queue属性信息
      class QueueSet < TencentCloud::Common::AbstractModel
        # @param QueueId: 消息队列ID。
        # @type QueueId: String
        # @param RewindSeconds: 回溯队列的消息回溯时间最大值，取值范围0 - 43200秒，0表示不开启消息回溯。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewindSeconds: Integer
        # @param CreateUin: 创建者Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: Integer
        # @param LastModifyTime: 最后一次修改队列属性的时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param VisibilityTimeout: 消息可见性超时。取值范围1 - 43200秒（即12小时内），默认值30。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VisibilityTimeout: Integer
        # @param QueueName: 消息队列名字。
        # @type QueueName: String
        # @param Trace: 消息轨迹。true表示开启，false表示不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trace: Boolean
        # @param Tags: 关联的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RewindMsgNum: 已调用 DelMsg 接口删除，但还在回溯保留时间内的消息数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewindMsgNum: Integer
        # @param MaxDelaySeconds: 飞行消息最大保留时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDelaySeconds: Integer
        # @param TransactionPolicy: 事务消息策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionPolicy: :class:`Tencentcloud::Cmq.v20190304.models.TransactionPolicy`
        # @param MsgRetentionSeconds: 消息保留周期。取值范围60-1296000秒（1min-15天），默认值345600秒（4 天）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRetentionSeconds: Integer
        # @param DelayMsgNum: 延迟消息数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayMsgNum: Integer
        # @param MaxMsgHeapNum: 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMsgHeapNum: Integer
        # @param PollingWaitSeconds: 消息接收长轮询等待时间。取值范围0 - 30秒，默认值0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PollingWaitSeconds: Integer
        # @param Bps: 带宽限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bps: Integer
        # @param InactiveMsgNum: 在队列中处于 Inactive 状态（正处于被消费状态）的消息总数，为近似值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InactiveMsgNum: Integer
        # @param DeadLetterPolicy: 死信队列策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterPolicy: :class:`Tencentcloud::Cmq.v20190304.models.DeadLetterPolicy`
        # @param ActiveMsgNum: 在队列中处于 Active 状态（不处于被消费状态）的消息总数，为近似值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveMsgNum: Integer
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576 Byte（即1K - 1024K），默认值65536。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMsgSize: Integer
        # @param MinMsgTime: 消息最小未消费时间，单位为秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinMsgTime: Integer
        # @param DeadLetterSource: 死信队列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterSource: Array
        # @param Transaction: 事务消息队列。true表示是事务消息，false表示不是事务消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transaction: Boolean
        # @param Qps: 每秒钟生产消息条数的限制，消费消息的大小是该值的1.1倍。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer
        # @param CreateTime: 队列的创建时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Migrate: 是否迁移到新版本。0 表示仅同步元数据，1 表示迁移中，2 表示已经迁移完毕，3 表示回切状态，曾经迁移过，4 未迁移。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Migrate: Integer

        attr_accessor :QueueId, :RewindSeconds, :CreateUin, :LastModifyTime, :VisibilityTimeout, :QueueName, :Trace, :Tags, :RewindMsgNum, :MaxDelaySeconds, :TransactionPolicy, :MsgRetentionSeconds, :DelayMsgNum, :MaxMsgHeapNum, :PollingWaitSeconds, :Bps, :InactiveMsgNum, :DeadLetterPolicy, :ActiveMsgNum, :MaxMsgSize, :MinMsgTime, :DeadLetterSource, :Transaction, :Qps, :CreateTime, :Migrate

        def initialize(queueid=nil, rewindseconds=nil, createuin=nil, lastmodifytime=nil, visibilitytimeout=nil, queuename=nil, trace=nil, tags=nil, rewindmsgnum=nil, maxdelayseconds=nil, transactionpolicy=nil, msgretentionseconds=nil, delaymsgnum=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, bps=nil, inactivemsgnum=nil, deadletterpolicy=nil, activemsgnum=nil, maxmsgsize=nil, minmsgtime=nil, deadlettersource=nil, transaction=nil, qps=nil, createtime=nil, migrate=nil)
          @QueueId = queueid
          @RewindSeconds = rewindseconds
          @CreateUin = createuin
          @LastModifyTime = lastmodifytime
          @VisibilityTimeout = visibilitytimeout
          @QueueName = queuename
          @Trace = trace
          @Tags = tags
          @RewindMsgNum = rewindmsgnum
          @MaxDelaySeconds = maxdelayseconds
          @TransactionPolicy = transactionpolicy
          @MsgRetentionSeconds = msgretentionseconds
          @DelayMsgNum = delaymsgnum
          @MaxMsgHeapNum = maxmsgheapnum
          @PollingWaitSeconds = pollingwaitseconds
          @Bps = bps
          @InactiveMsgNum = inactivemsgnum
          @DeadLetterPolicy = deadletterpolicy
          @ActiveMsgNum = activemsgnum
          @MaxMsgSize = maxmsgsize
          @MinMsgTime = minmsgtime
          @DeadLetterSource = deadlettersource
          @Transaction = transaction
          @Qps = qps
          @CreateTime = createtime
          @Migrate = migrate
        end

        def deserialize(params)
          @QueueId = params['QueueId']
          @RewindSeconds = params['RewindSeconds']
          @CreateUin = params['CreateUin']
          @LastModifyTime = params['LastModifyTime']
          @VisibilityTimeout = params['VisibilityTimeout']
          @QueueName = params['QueueName']
          @Trace = params['Trace']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RewindMsgNum = params['RewindMsgNum']
          @MaxDelaySeconds = params['MaxDelaySeconds']
          unless params['TransactionPolicy'].nil?
            @TransactionPolicy = TransactionPolicy.new
            @TransactionPolicy.deserialize(params['TransactionPolicy'])
          end
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @DelayMsgNum = params['DelayMsgNum']
          @MaxMsgHeapNum = params['MaxMsgHeapNum']
          @PollingWaitSeconds = params['PollingWaitSeconds']
          @Bps = params['Bps']
          @InactiveMsgNum = params['InactiveMsgNum']
          unless params['DeadLetterPolicy'].nil?
            @DeadLetterPolicy = DeadLetterPolicy.new
            @DeadLetterPolicy.deserialize(params['DeadLetterPolicy'])
          end
          @ActiveMsgNum = params['ActiveMsgNum']
          @MaxMsgSize = params['MaxMsgSize']
          @MinMsgTime = params['MinMsgTime']
          unless params['DeadLetterSource'].nil?
            @DeadLetterSource = []
            params['DeadLetterSource'].each do |i|
              deadlettersource_tmp = DeadLetterSource.new
              deadlettersource_tmp.deserialize(i)
              @DeadLetterSource << deadlettersource_tmp
            end
          end
          @Transaction = params['Transaction']
          @Qps = params['Qps']
          @CreateTime = params['CreateTime']
          @Migrate = params['Migrate']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # topic返回信息展示字段
      class TopicSet < TencentCloud::Common::AbstractModel
        # @param MsgCount: 当前该主题中消息数目（消息堆积数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgCount: Integer
        # @param TopicId: 主题的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param MaxMsgSize: 消息最大长度。取值范围1024 - 1048576Byte（即1 - 1024K），默认值为65536。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMsgSize: Integer
        # @param Trace: 消息轨迹。true表示开启，false表示不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trace: Boolean
        # @param Tags: 关联的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CreateUin: 创建者 Uin，CAM 鉴权 resource 由该字段组合而成。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: Integer
        # @param FilterType: 描述用户创建订阅时选择的过滤策略：
        # FilterType = 1表示用户使用 FilterTag 标签过滤;
        # FilterType = 2表示用户使用 BindingKey 过滤。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: Integer
        # @param TopicName: 主题名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param LastModifyTime: 最后一次修改主题属性的时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param MsgRetentionSeconds: 消息在主题中最长存活时间，从发送到该主题开始经过此参数指定的时间后，不论消息是否被成功推送给用户都将被删除，单位为秒。固定为一天（86400秒），该属性不能修改。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgRetentionSeconds: Integer
        # @param Qps: 每秒钟发布消息的条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer
        # @param CreateTime: 主题的创建时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Migrate: 是否迁移到新版本。0 表示未迁移，1 表示迁移中，2 表示已经迁移完毕，3 表示回切状态，曾经迁移过，4 未知状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Migrate: Integer

        attr_accessor :MsgCount, :TopicId, :MaxMsgSize, :Trace, :Tags, :CreateUin, :FilterType, :TopicName, :LastModifyTime, :MsgRetentionSeconds, :Qps, :CreateTime, :Migrate

        def initialize(msgcount=nil, topicid=nil, maxmsgsize=nil, trace=nil, tags=nil, createuin=nil, filtertype=nil, topicname=nil, lastmodifytime=nil, msgretentionseconds=nil, qps=nil, createtime=nil, migrate=nil)
          @MsgCount = msgcount
          @TopicId = topicid
          @MaxMsgSize = maxmsgsize
          @Trace = trace
          @Tags = tags
          @CreateUin = createuin
          @FilterType = filtertype
          @TopicName = topicname
          @LastModifyTime = lastmodifytime
          @MsgRetentionSeconds = msgretentionseconds
          @Qps = qps
          @CreateTime = createtime
          @Migrate = migrate
        end

        def deserialize(params)
          @MsgCount = params['MsgCount']
          @TopicId = params['TopicId']
          @MaxMsgSize = params['MaxMsgSize']
          @Trace = params['Trace']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateUin = params['CreateUin']
          @FilterType = params['FilterType']
          @TopicName = params['TopicName']
          @LastModifyTime = params['LastModifyTime']
          @MsgRetentionSeconds = params['MsgRetentionSeconds']
          @Qps = params['Qps']
          @CreateTime = params['CreateTime']
          @Migrate = params['Migrate']
        end
      end

      # 事务消息策略
      class TransactionPolicy < TencentCloud::Common::AbstractModel
        # @param MaxQueryCount: 最大查询次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxQueryCount: Integer
        # @param FirstQueryInterval: 第一次回查时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstQueryInterval: Integer

        attr_accessor :MaxQueryCount, :FirstQueryInterval

        def initialize(maxquerycount=nil, firstqueryinterval=nil)
          @MaxQueryCount = maxquerycount
          @FirstQueryInterval = firstqueryinterval
        end

        def deserialize(params)
          @MaxQueryCount = params['MaxQueryCount']
          @FirstQueryInterval = params['FirstQueryInterval']
        end
      end

    end
  end
end

