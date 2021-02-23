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
      # ClearQueue请求参数结构体
      class ClearQueueRequest < TencentCloud::Common::AbstractModel
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

      # ClearQueue返回参数结构体
      class ClearQueueResponse < TencentCloud::Common::AbstractModel
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

      # ClearSubscriptionFilterTags请求参数结构体
      class ClearSubscriptionFilterTagsRequest < TencentCloud::Common::AbstractModel
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

      # ClearSubscriptionFilterTags返回参数结构体
      class ClearSubscriptionFilterTagsResponse < TencentCloud::Common::AbstractModel
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

      # CreateQueue请求参数结构体
      class CreateQueueRequest < TencentCloud::Common::AbstractModel
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

      # CreateQueue返回参数结构体
      class CreateQueueResponse < TencentCloud::Common::AbstractModel
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

      # CreateSubscribe请求参数结构体
      class CreateSubscribeRequest < TencentCloud::Common::AbstractModel
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

      # CreateSubscribe返回参数结构体
      class CreateSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param SubscriptionId: SubscriptionId
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

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
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

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: TopicName
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

      # DeadLetterPolicy
      class DeadLetterPolicy < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueueName: 死信队列名字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterQueueName: String
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

        attr_accessor :DeadLetterQueueName, :DeadLetterQueue, :Policy, :MaxTimeToLive, :MaxReceiveCount
        
        def initialize(deadletterqueuename=nil, deadletterqueue=nil, policy=nil, maxtimetolive=nil, maxreceivecount=nil)
          @DeadLetterQueueName = deadletterqueuename
          @DeadLetterQueue = deadletterqueue
          @Policy = policy
          @MaxTimeToLive = maxtimetolive
          @MaxReceiveCount = maxreceivecount
        end

        def deserialize(params)
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @DeadLetterQueue = params['DeadLetterQueue']
          @Policy = params['Policy']
          @MaxTimeToLive = params['MaxTimeToLive']
          @MaxReceiveCount = params['MaxReceiveCount']
        end
      end

      # DeadLetterSource
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

      # DeleteQueue请求参数结构体
      class DeleteQueueRequest < TencentCloud::Common::AbstractModel
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

      # DeleteQueue返回参数结构体
      class DeleteQueueResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSubscribe请求参数结构体
      class DeleteSubscribeRequest < TencentCloud::Common::AbstractModel
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

      # DeleteSubscribe返回参数结构体
      class DeleteSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
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

      # DeleteTopic返回参数结构体
      class DeleteTopicResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeadLetterSourceQueues请求参数结构体
      class DescribeDeadLetterSourceQueuesRequest < TencentCloud::Common::AbstractModel
        # @param DeadLetterQueueName: 死信队列名称
        # @type DeadLetterQueueName: String
        # @param Limit: 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        # @type Limit: Integer
        # @param Offset: 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Offset: Integer
        # @param Filters: 过滤死信队列源队列名称，目前仅支持SourceQueueName过滤
        # @type Filters: Array

        attr_accessor :DeadLetterQueueName, :Limit, :Offset, :Filters
        
        def initialize(deadletterqueuename=nil, limit=nil, offset=nil, filters=nil)
          @DeadLetterQueueName = deadletterqueuename
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @DeadLetterQueueName = params['DeadLetterQueueName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeDeadLetterSourceQueues返回参数结构体
      class DescribeDeadLetterSourceQueuesResponse < TencentCloud::Common::AbstractModel
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
              @QueueSet << DeadLetterSource.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQueueDetail请求参数结构体
      class DescribeQueueDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param Filters: 筛选参数，目前支持QueueName筛选，且仅支持一个关键字
        # @type Filters: Array
        # @param TagKey: 标签搜索
        # @type TagKey: String
        # @param QueueName: 精确匹配QueueName
        # @type QueueName: String

        attr_accessor :Offset, :Limit, :Filters, :TagKey, :QueueName
        
        def initialize(offset=nil, limit=nil, filters=nil, tagkey=nil, queuename=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @TagKey = tagkey
          @QueueName = queuename
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @TagKey = params['TagKey']
          @QueueName = params['QueueName']
        end
      end

      # DescribeQueueDetail返回参数结构体
      class DescribeQueueDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总队列数。
        # @type TotalCount: Integer
        # @param QueueSet: 队列详情列表。
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
              @QueueSet << QueueSet.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscriptionDetail请求参数结构体
      class DescribeSubscriptionDetailRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        # @type TopicName: String
        # @param Offset: 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        # @type Offset: Integer
        # @param Limit: 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param Filters: 筛选参数，目前只支持SubscriptionName，且仅支持一个关键字。
        # @type Filters: Array

        attr_accessor :TopicName, :Offset, :Limit, :Filters
        
        def initialize(topicname=nil, offset=nil, limit=nil, filters=nil)
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeSubscriptionDetail返回参数结构体
      class DescribeSubscriptionDetailResponse < TencentCloud::Common::AbstractModel
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
              @SubscriptionSet << Subscription.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicDetail请求参数结构体
      class DescribeTopicDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        # @type Offset: Integer
        # @param Limit: 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        # @type Limit: Integer
        # @param Filters: 目前只支持过滤TopicName ， 且只能填一个过滤值。
        # @type Filters: Array
        # @param TagKey: 标签匹配。
        # @type TagKey: String
        # @param TopicName: 精确匹配TopicName。
        # @type TopicName: String

        attr_accessor :Offset, :Limit, :Filters, :TagKey, :TopicName
        
        def initialize(offset=nil, limit=nil, filters=nil, tagkey=nil, topicname=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @TagKey = tagkey
          @TopicName = topicname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @TagKey = params['TagKey']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicDetail返回参数结构体
      class DescribeTopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主题列表总数。
        # @type TotalCount: Integer
        # @param TopicSet: 主题详情列表。
        # @type TopicSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @TopicSet << TopicSet.new.deserialize(i)
            end
          end
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

      # ModifyQueueAttribute请求参数结构体
      class ModifyQueueAttributeRequest < TencentCloud::Common::AbstractModel
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

        attr_accessor :QueueName, :MaxMsgHeapNum, :PollingWaitSeconds, :VisibilityTimeout, :MaxMsgSize, :MsgRetentionSeconds, :RewindSeconds, :FirstQueryInterval, :MaxQueryCount, :DeadLetterQueueName, :MaxTimeToLive, :MaxReceiveCount, :Policy, :Trace
        
        def initialize(queuename=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, msgretentionseconds=nil, rewindseconds=nil, firstqueryinterval=nil, maxquerycount=nil, deadletterqueuename=nil, maxtimetolive=nil, maxreceivecount=nil, policy=nil, trace=nil)
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
        end
      end

      # ModifyQueueAttribute返回参数结构体
      class ModifyQueueAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscriptionAttribute请求参数结构体
      class ModifySubscriptionAttributeRequest < TencentCloud::Common::AbstractModel
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

      # ModifySubscriptionAttribute返回参数结构体
      class ModifySubscriptionAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTopicAttribute请求参数结构体
      class ModifyTopicAttributeRequest < TencentCloud::Common::AbstractModel
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

      # ModifyTopicAttribute返回参数结构体
      class ModifyTopicAttributeResponse < TencentCloud::Common::AbstractModel
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

      # 批量queue属性信息
      class QueueSet < TencentCloud::Common::AbstractModel
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param CreateTime: 队列的创建时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改队列属性的时间。返回 Unix 时间戳，精确到秒。
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
        # @type DeadLetterPolicy: :class:`Tencentcloud::Cmq.v20190304.models.DeadLetterPolicy`
        # @param TransactionPolicy: 事务消息策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionPolicy: :class:`Tencentcloud::Cmq.v20190304.models.TransactionPolicy`
        # @param CreateUin: 创建者Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: Integer
        # @param Tags: 关联的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Trace: 消息轨迹。true表示开启，false表示不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trace: Boolean

        attr_accessor :QueueId, :QueueName, :Qps, :Bps, :MaxDelaySeconds, :MaxMsgHeapNum, :PollingWaitSeconds, :MsgRetentionSeconds, :VisibilityTimeout, :MaxMsgSize, :RewindSeconds, :CreateTime, :LastModifyTime, :ActiveMsgNum, :InactiveMsgNum, :DelayMsgNum, :RewindMsgNum, :MinMsgTime, :Transaction, :DeadLetterSource, :DeadLetterPolicy, :TransactionPolicy, :CreateUin, :Tags, :Trace
        
        def initialize(queueid=nil, queuename=nil, qps=nil, bps=nil, maxdelayseconds=nil, maxmsgheapnum=nil, pollingwaitseconds=nil, msgretentionseconds=nil, visibilitytimeout=nil, maxmsgsize=nil, rewindseconds=nil, createtime=nil, lastmodifytime=nil, activemsgnum=nil, inactivemsgnum=nil, delaymsgnum=nil, rewindmsgnum=nil, minmsgtime=nil, transaction=nil, deadlettersource=nil, deadletterpolicy=nil, transactionpolicy=nil, createuin=nil, tags=nil, trace=nil)
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
              @DeadLetterSource << DeadLetterSource.new.deserialize(i)
            end
          end
          unless params['DeadLetterPolicy'].nil?
            @DeadLetterPolicy = DeadLetterPolicy.new.deserialize(params['DeadLetterPolicy'])
          end
          unless params['TransactionPolicy'].nil?
            @TransactionPolicy = TransactionPolicy.new.deserialize(params['TransactionPolicy'])
          end
          @CreateUin = params['CreateUin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          @Trace = params['Trace']
        end
      end

      # RewindQueue请求参数结构体
      class RewindQueueRequest < TencentCloud::Common::AbstractModel
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

      # RewindQueue返回参数结构体
      class RewindQueueResponse < TencentCloud::Common::AbstractModel
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

      # 订阅返回参数
      class Subscription < TencentCloud::Common::AbstractModel
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
        # @param LastModifyTime: 最后一次修改订阅属性的时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: Integer
        # @param CreateTime: 订阅的创建时间。返回 Unix 时间戳，精确到秒。
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
        # @param CreateTime: 主题的创建时间。返回 Unix 时间戳，精确到秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param LastModifyTime: 最后一次修改主题属性的时间。返回 Unix 时间戳，精确到秒。
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

        attr_accessor :TopicId, :TopicName, :MsgRetentionSeconds, :MaxMsgSize, :Qps, :FilterType, :CreateTime, :LastModifyTime, :MsgCount, :CreateUin, :Tags, :Trace
        
        def initialize(topicid=nil, topicname=nil, msgretentionseconds=nil, maxmsgsize=nil, qps=nil, filtertype=nil, createtime=nil, lastmodifytime=nil, msgcount=nil, createuin=nil, tags=nil, trace=nil)
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
              @Tags << Tag.new.deserialize(i)
            end
          end
          @Trace = params['Trace']
        end
      end

      # TransactionPolicy
      class TransactionPolicy < TencentCloud::Common::AbstractModel
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

      # UnbindDeadLetter请求参数结构体
      class UnbindDeadLetterRequest < TencentCloud::Common::AbstractModel
        # @param QueueName: 死信策略源队列名称，调用本接口会清空该队列的死信队列策略。
        # @type QueueName: String

        attr_accessor :QueueName
        
        def initialize(queuename=nil)
          @QueueName = queuename
        end

        def deserialize(params)
          @QueueName = params['QueueName']
        end
      end

      # UnbindDeadLetter返回参数结构体
      class UnbindDeadLetterResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

