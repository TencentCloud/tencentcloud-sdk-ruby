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
  module Trocket
    module V20230308
      # 消费组信息
      class ConsumeGroupItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param ConsumeMessageOrderly: 顺序投递：true
        # 并发投递：false
        # @type ConsumeMessageOrderly: Boolean
        # @param MaxRetryTimes: 最大重试次数
        # @type MaxRetryTimes: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :ConsumerGroup, :ConsumeEnable, :ConsumeMessageOrderly, :MaxRetryTimes, :Remark

        def initialize(instanceid=nil, consumergroup=nil, consumeenable=nil, consumemessageorderly=nil, maxretrytimes=nil, remark=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @ConsumeEnable = consumeenable
          @ConsumeMessageOrderly = consumemessageorderly
          @MaxRetryTimes = maxretrytimes
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @ConsumeEnable = params['ConsumeEnable']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @MaxRetryTimes = params['MaxRetryTimes']
          @Remark = params['Remark']
        end
      end

      # CreateConsumerGroup请求参数结构体
      class CreateConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param MaxRetryTimes: 最大重试次数
        # @type MaxRetryTimes: Integer
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param ConsumeMessageOrderly: 顺序投递：true
        # 并发投递：false
        # @type ConsumeMessageOrderly: Boolean
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :ConsumerGroup, :MaxRetryTimes, :ConsumeEnable, :ConsumeMessageOrderly, :Remark

        def initialize(instanceid=nil, consumergroup=nil, maxretrytimes=nil, consumeenable=nil, consumemessageorderly=nil, remark=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @MaxRetryTimes = maxretrytimes
          @ConsumeEnable = consumeenable
          @ConsumeMessageOrderly = consumemessageorderly
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @MaxRetryTimes = params['MaxRetryTimes']
          @ConsumeEnable = params['ConsumeEnable']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @Remark = params['Remark']
        end
      end

      # CreateConsumerGroup返回参数结构体
      class CreateConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组
        # @type ConsumerGroup: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :ConsumerGroup, :RequestId

        def initialize(instanceid=nil, consumergroup=nil, requestid=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，
        # EXPERIMENT 体验版
        # BASIC 基础版
        # PRO  专业版
        # PLATINUM 铂金版
        # @type InstanceType: String
        # @param Name: 实例名称
        # @type Name: String
        # @param SkuCode: 商品规格，可用规格如下：
        # experiment_500,
        # basic_1k,
        # basic_2k,
        # basic_4k,
        # basic_6k
        # @type SkuCode: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param TagList: 标签列表
        # @type TagList: Array
        # @param VpcList: 实例绑定的VPC信息
        # @type VpcList: Array
        # @param EnablePublic: 是否开启公网
        # @type EnablePublic: Boolean
        # @param Bandwidth: 公网带宽
        # @type Bandwidth: Integer
        # @param IpRules: 公网访问白名单
        # @type IpRules: Array
        # @param MessageRetention: 消息保留时长，小时为单位
        # @type MessageRetention: Integer

        attr_accessor :InstanceType, :Name, :SkuCode, :Remark, :TagList, :VpcList, :EnablePublic, :Bandwidth, :IpRules, :MessageRetention

        def initialize(instancetype=nil, name=nil, skucode=nil, remark=nil, taglist=nil, vpclist=nil, enablepublic=nil, bandwidth=nil, iprules=nil, messageretention=nil)
          @InstanceType = instancetype
          @Name = name
          @SkuCode = skucode
          @Remark = remark
          @TagList = taglist
          @VpcList = vpclist
          @EnablePublic = enablepublic
          @Bandwidth = bandwidth
          @IpRules = iprules
          @MessageRetention = messageretention
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @Name = params['Name']
          @SkuCode = params['SkuCode']
          @Remark = params['Remark']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcList << vpcinfo_tmp
            end
          end
          @EnablePublic = params['EnablePublic']
          @Bandwidth = params['Bandwidth']
          unless params['IpRules'].nil?
            @IpRules = []
            params['IpRules'].each do |i|
              iprule_tmp = IpRule.new
              iprule_tmp.deserialize(i)
              @IpRules << iprule_tmp
            end
          end
          @MessageRetention = params['MessageRetention']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRole请求参数结构体
      class CreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Role: 角色名称
        # @type Role: String
        # @param Remark: 备注
        # @type Remark: String
        # @param PermWrite: 是否开启生产权限
        # @type PermWrite: Boolean
        # @param PermRead: 是否开启消费权限
        # @type PermRead: Boolean

        attr_accessor :InstanceId, :Role, :Remark, :PermWrite, :PermRead

        def initialize(instanceid=nil, role=nil, remark=nil, permwrite=nil, permread=nil)
          @InstanceId = instanceid
          @Role = role
          @Remark = remark
          @PermWrite = permwrite
          @PermRead = permread
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Role = params['Role']
          @Remark = params['Remark']
          @PermWrite = params['PermWrite']
          @PermRead = params['PermRead']
        end
      end

      # CreateRole返回参数结构体
      class CreateRoleResponse < TencentCloud::Common::AbstractModel
        # @param Role: 角色名
        # @type Role: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Role, :RequestId

        def initialize(role=nil, requestid=nil)
          @Role = role
          @RequestId = requestid
        end

        def deserialize(params)
          @Role = params['Role']
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String
        # @param TopicType: 主题类型
        # UNSPECIFIED:未指定,
        # NORMAL:普通消息,
        # FIFO:顺序消息,
        # DELAY:延时消息,
        # TRANSACTION:事务消息
        # @type TopicType: String
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :TopicType, :QueueNum, :Remark

        def initialize(instanceid=nil, topic=nil, topictype=nil, queuenum=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @QueueNum = queuenum
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Topic, :RequestId

        def initialize(instanceid=nil, topic=nil, requestid=nil)
          @InstanceId = instanceid
          @Topic = topic
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @RequestId = params['RequestId']
        end
      end

      # DeleteConsumerGroup请求参数结构体
      class DeleteConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String

        attr_accessor :InstanceId, :ConsumerGroup

        def initialize(instanceid=nil, consumergroup=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
        end
      end

      # DeleteConsumerGroup返回参数结构体
      class DeleteConsumerGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRole请求参数结构体
      class DeleteRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Role: 角色名称
        # @type Role: String

        attr_accessor :InstanceId, :Role

        def initialize(instanceid=nil, role=nil)
          @InstanceId = instanceid
          @Role = role
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Role = params['Role']
        end
      end

      # DeleteRole返回参数结构体
      class DeleteRoleResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String

        attr_accessor :InstanceId, :Topic

        def initialize(instanceid=nil, topic=nil)
          @InstanceId = instanceid
          @Topic = topic
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
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

      # DescribeConsumerGroupList请求参数结构体
      class DescribeConsumerGroupListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param FromTopic: 查询指定主题下的消费组
        # @type FromTopic: String

        attr_accessor :InstanceId, :Offset, :Limit, :Filters, :FromTopic

        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil, fromtopic=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @FromTopic = fromtopic
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
          @FromTopic = params['FromTopic']
        end
      end

      # DescribeConsumerGroupList返回参数结构体
      class DescribeConsumerGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 消费组列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              consumegroupitem_tmp = ConsumeGroupItem.new
              consumegroupitem_tmp.deserialize(i)
              @Data << consumegroupitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumerGroup请求参数结构体
      class DescribeConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String

        attr_accessor :InstanceId, :ConsumerGroup

        def initialize(instanceid=nil, consumergroup=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
        end
      end

      # DescribeConsumerGroup返回参数结构体
      class DescribeConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param ConsumerNum: 在线消费者数量
        # @type ConsumerNum: Integer
        # @param Tps: TPS
        # @type Tps: Integer
        # @param ConsumerLag: 消息堆积数量
        # @type ConsumerLag: Integer
        # @param ConsumeType: 消费者类型
        # @type ConsumeType: String
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param ConsumeMessageOrderly: 顺序投递：true
        # 并发投递：false
        # @type ConsumeMessageOrderly: Boolean
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param MaxRetryTimes: 最大重试次数
        # @type MaxRetryTimes: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsumerNum, :Tps, :ConsumerLag, :ConsumeType, :CreatedTime, :ConsumeMessageOrderly, :ConsumeEnable, :MaxRetryTimes, :Remark, :RequestId

        def initialize(consumernum=nil, tps=nil, consumerlag=nil, consumetype=nil, createdtime=nil, consumemessageorderly=nil, consumeenable=nil, maxretrytimes=nil, remark=nil, requestid=nil)
          @ConsumerNum = consumernum
          @Tps = tps
          @ConsumerLag = consumerlag
          @ConsumeType = consumetype
          @CreatedTime = createdtime
          @ConsumeMessageOrderly = consumemessageorderly
          @ConsumeEnable = consumeenable
          @MaxRetryTimes = maxretrytimes
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @ConsumerNum = params['ConsumerNum']
          @Tps = params['Tps']
          @ConsumerLag = params['ConsumerLag']
          @ConsumeType = params['ConsumeType']
          @CreatedTime = params['CreatedTime']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @ConsumeEnable = params['ConsumeEnable']
          @MaxRetryTimes = params['MaxRetryTimes']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param TagFilters: 标签过滤器
        # @type TagFilters: Array

        attr_accessor :Offset, :Limit, :Filters, :TagFilters

        def initialize(offset=nil, limit=nil, filters=nil, tagfilters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @TagFilters = tagfilters
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
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 实例列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              instanceitem_tmp = InstanceItem.new
              instanceitem_tmp.deserialize(i)
              @Data << instanceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，
        # EXPERIMENT 体验版
        # BASIC 基础版
        # PRO  专业版
        # PLATINUM 铂金版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param TopicNum: 主题数量
        # @type TopicNum: Integer
        # @param TopicNumLimit: 实例最大主题数量
        # @type TopicNumLimit: Integer
        # @param GroupNum: 消费组数量
        # @type GroupNum: Integer
        # @param GroupNumLimit: 实例最大消费组数量
        # @type GroupNumLimit: Integer
        # @param MessageRetention: 消息保留时间，小时为单位
        # @type MessageRetention: Integer
        # @param RetentionUpperLimit: 最大可调整消息保留时间，小时为单位
        # @type RetentionUpperLimit: Integer
        # @param RetentionLowerLimit: 最小可调整消息保留时间，小时为单位
        # @type RetentionLowerLimit: Integer
        # @param TpsLimit: TPS限流值
        # @type TpsLimit: Integer
        # @param ScaledTpsLimit: 弹性TPS限流值
        # @type ScaledTpsLimit: Integer
        # @param MaxMessageDelay: 延迟消息最长时间，小时为单位
        # @type MaxMessageDelay: Integer
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param SendReceiveRatio: 消息发送接收比例
        # @type SendReceiveRatio: Float
        # @param TagList: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param EndpointList: 接入点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndpointList: Array
        # @param TopicQueueNumUpperLimit: 主题队列数上限
        # @type TopicQueueNumUpperLimit: Integer
        # @param TopicQueueNumLowerLimit: 主题队列数下限
        # @type TopicQueueNumLowerLimit: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param SkuCode: 实例规格
        # @type SkuCode: String
        # @param PayMode: 计费模式
        # @type PayMode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName, :TopicNum, :TopicNumLimit, :GroupNum, :GroupNumLimit, :MessageRetention, :RetentionUpperLimit, :RetentionLowerLimit, :TpsLimit, :ScaledTpsLimit, :MaxMessageDelay, :CreatedTime, :SendReceiveRatio, :TagList, :EndpointList, :TopicQueueNumUpperLimit, :TopicQueueNumLowerLimit, :Remark, :InstanceStatus, :SkuCode, :PayMode, :RequestId

        def initialize(instancetype=nil, instanceid=nil, instancename=nil, topicnum=nil, topicnumlimit=nil, groupnum=nil, groupnumlimit=nil, messageretention=nil, retentionupperlimit=nil, retentionlowerlimit=nil, tpslimit=nil, scaledtpslimit=nil, maxmessagedelay=nil, createdtime=nil, sendreceiveratio=nil, taglist=nil, endpointlist=nil, topicqueuenumupperlimit=nil, topicqueuenumlowerlimit=nil, remark=nil, instancestatus=nil, skucode=nil, paymode=nil, requestid=nil)
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @TopicNum = topicnum
          @TopicNumLimit = topicnumlimit
          @GroupNum = groupnum
          @GroupNumLimit = groupnumlimit
          @MessageRetention = messageretention
          @RetentionUpperLimit = retentionupperlimit
          @RetentionLowerLimit = retentionlowerlimit
          @TpsLimit = tpslimit
          @ScaledTpsLimit = scaledtpslimit
          @MaxMessageDelay = maxmessagedelay
          @CreatedTime = createdtime
          @SendReceiveRatio = sendreceiveratio
          @TagList = taglist
          @EndpointList = endpointlist
          @TopicQueueNumUpperLimit = topicqueuenumupperlimit
          @TopicQueueNumLowerLimit = topicqueuenumlowerlimit
          @Remark = remark
          @InstanceStatus = instancestatus
          @SkuCode = skucode
          @PayMode = paymode
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @TopicNum = params['TopicNum']
          @TopicNumLimit = params['TopicNumLimit']
          @GroupNum = params['GroupNum']
          @GroupNumLimit = params['GroupNumLimit']
          @MessageRetention = params['MessageRetention']
          @RetentionUpperLimit = params['RetentionUpperLimit']
          @RetentionLowerLimit = params['RetentionLowerLimit']
          @TpsLimit = params['TpsLimit']
          @ScaledTpsLimit = params['ScaledTpsLimit']
          @MaxMessageDelay = params['MaxMessageDelay']
          @CreatedTime = params['CreatedTime']
          @SendReceiveRatio = params['SendReceiveRatio']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          unless params['EndpointList'].nil?
            @EndpointList = []
            params['EndpointList'].each do |i|
              endpoint_tmp = Endpoint.new
              endpoint_tmp.deserialize(i)
              @EndpointList << endpoint_tmp
            end
          end
          @TopicQueueNumUpperLimit = params['TopicQueueNumUpperLimit']
          @TopicQueueNumLowerLimit = params['TopicQueueNumLowerLimit']
          @Remark = params['Remark']
          @InstanceStatus = params['InstanceStatus']
          @SkuCode = params['SkuCode']
          @PayMode = params['PayMode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoleList请求参数结构体
      class DescribeRoleListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param Filters: 查询条件列表
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters

        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # DescribeRoleList返回参数结构体
      class DescribeRoleListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 角色信息列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              roleitem_tmp = RoleItem.new
              roleitem_tmp.deserialize(i)
              @Data << roleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicList请求参数结构体
      class DescribeTopicListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param Filters: 查询条件列表
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters

        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # DescribeTopicList返回参数结构体
      class DescribeTopicListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 主题列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              topicitem_tmp = TopicItem.new
              topicitem_tmp.deserialize(i)
              @Data << topicitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopic请求参数结构体
      class DescribeTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param Filters: 查询条件列表
        # @type Filters: Array

        attr_accessor :InstanceId, :Topic, :Offset, :Limit, :Filters

        def initialize(instanceid=nil, topic=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
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

      # DescribeTopic返回参数结构体
      class DescribeTopicResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param TopicType: 主题类型
        # UNSPECIFIED:未指定,
        # NORMAL:普通消息,
        # FIFO:顺序消息,
        # DELAY:延时消息,
        # TRANSACTION:事务消息
        # @type TopicType: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param LastUpdateTime: 最后写入时间，秒为单位
        # @type LastUpdateTime: Integer
        # @param SubscriptionCount: 订阅数量
        # @type SubscriptionCount: Integer
        # @param SubscriptionData: 订阅关系列表
        # @type SubscriptionData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Topic, :TopicType, :Remark, :CreatedTime, :LastUpdateTime, :SubscriptionCount, :SubscriptionData, :RequestId

        def initialize(instanceid=nil, topic=nil, topictype=nil, remark=nil, createdtime=nil, lastupdatetime=nil, subscriptioncount=nil, subscriptiondata=nil, requestid=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @Remark = remark
          @CreatedTime = createdtime
          @LastUpdateTime = lastupdatetime
          @SubscriptionCount = subscriptioncount
          @SubscriptionData = subscriptiondata
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @LastUpdateTime = params['LastUpdateTime']
          @SubscriptionCount = params['SubscriptionCount']
          unless params['SubscriptionData'].nil?
            @SubscriptionData = []
            params['SubscriptionData'].each do |i|
              subscriptiondata_tmp = SubscriptionData.new
              subscriptiondata_tmp.deserialize(i)
              @SubscriptionData << subscriptiondata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicStatsOp请求参数结构体
      class DescribeTopicStatsOpRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 主题
        # @type Topic: String

        attr_accessor :Topic

        def initialize(topic=nil)
          @Topic = topic
        end

        def deserialize(params)
          @Topic = params['Topic']
        end
      end

      # DescribeTopicStatsOp返回参数结构体
      class DescribeTopicStatsOpResponse < TencentCloud::Common::AbstractModel
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

      # 接入点信息
      class Endpoint < TencentCloud::Common::AbstractModel
        # @param Type: 接入点类型，
        # VPC，
        # PUBLIC 公网
        # @type Type: String
        # @param Status: 状态，
        # OPEN 开启，
        # CLOSE 关闭，
        # PROCESSING 操作中，
        # @type Status: String
        # @param PayMode: 付费类型，仅公网
        # PREPAID 包年包月
        # POSTPAID 按量付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param EndpointUrl: 接入点地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndpointUrl: String
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Bandwidth: 公网带宽，Mbps为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param IpRules: 公网放通规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpRules: Array

        attr_accessor :Type, :Status, :PayMode, :EndpointUrl, :VpcId, :SubnetId, :Bandwidth, :IpRules

        def initialize(type=nil, status=nil, paymode=nil, endpointurl=nil, vpcid=nil, subnetid=nil, bandwidth=nil, iprules=nil)
          @Type = type
          @Status = status
          @PayMode = paymode
          @EndpointUrl = endpointurl
          @VpcId = vpcid
          @SubnetId = subnetid
          @Bandwidth = bandwidth
          @IpRules = iprules
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @PayMode = params['PayMode']
          @EndpointUrl = params['EndpointUrl']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Bandwidth = params['Bandwidth']
          unless params['IpRules'].nil?
            @IpRules = []
            params['IpRules'].each do |i|
              iprule_tmp = IpRule.new
              iprule_tmp.deserialize(i)
              @IpRules << iprule_tmp
            end
          end
        end
      end

      # 查询过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件名
        # @type Name: String
        # @param Values: 过滤条件的值
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

      # 实例列表页中的实例信息
      class InstanceItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Version: 实例版本
        # @type Version: String
        # @param InstanceType: 实例类型，
        # EXPERIMENT，体验版
        # BASIC，基础版
        # PRO，专业版
        # PLATINUM，铂金版
        # @type InstanceType: String
        # @param InstanceStatus: 实例状态，
        # RUNNING, 运行中
        # MAINTAINING，维护中
        # ABNORMAL，异常
        # OVERDUE，欠费
        # DESTROYED，已删除
        # CREATING，创建中
        # MODIFYING，变配中
        # CREATE_FAILURE，创建失败
        # MODIFY_FAILURE，变配失败
        # DELETING，删除中
        # @type InstanceStatus: String
        # @param TopicNumLimit: 实例主题数上限
        # @type TopicNumLimit: Integer
        # @param GroupNumLimit: 实例消费组数量上限
        # @type GroupNumLimit: Integer
        # @param PayMode: 计费模式，
        # POSTPAID，按量计费
        # PREPAID，包年包月
        # @type PayMode: String
        # @param ExpiryTime: 到期时间，秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiryTime: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TopicNum: 主题数量
        # @type TopicNum: Integer
        # @param GroupNum: 消费组数量
        # @type GroupNum: Integer
        # @param TagList: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param SkuCode: 商品规格
        # @type SkuCode: String
        # @param TpsLimit: TPS限流值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpsLimit: Integer
        # @param ScaledTpsLimit: 弹性TPS限流值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaledTpsLimit: Integer
        # @param MessageRetention: 消息保留时间，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageRetention: Integer
        # @param MaxMessageDelay: 延迟消息最大时长，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMessageDelay: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :GroupNumLimit, :PayMode, :ExpiryTime, :Remark, :TopicNum, :GroupNum, :TagList, :SkuCode, :TpsLimit, :ScaledTpsLimit, :MessageRetention, :MaxMessageDelay

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, groupnumlimit=nil, paymode=nil, expirytime=nil, remark=nil, topicnum=nil, groupnum=nil, taglist=nil, skucode=nil, tpslimit=nil, scaledtpslimit=nil, messageretention=nil, maxmessagedelay=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @TopicNumLimit = topicnumlimit
          @GroupNumLimit = groupnumlimit
          @PayMode = paymode
          @ExpiryTime = expirytime
          @Remark = remark
          @TopicNum = topicnum
          @GroupNum = groupnum
          @TagList = taglist
          @SkuCode = skucode
          @TpsLimit = tpslimit
          @ScaledTpsLimit = scaledtpslimit
          @MessageRetention = messageretention
          @MaxMessageDelay = maxmessagedelay
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @TopicNumLimit = params['TopicNumLimit']
          @GroupNumLimit = params['GroupNumLimit']
          @PayMode = params['PayMode']
          @ExpiryTime = params['ExpiryTime']
          @Remark = params['Remark']
          @TopicNum = params['TopicNum']
          @GroupNum = params['GroupNum']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @SkuCode = params['SkuCode']
          @TpsLimit = params['TpsLimit']
          @ScaledTpsLimit = params['ScaledTpsLimit']
          @MessageRetention = params['MessageRetention']
          @MaxMessageDelay = params['MaxMessageDelay']
        end
      end

      # IP规则
      class IpRule < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Allow: 是否允许放行
        # @type Allow: Boolean
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Ip, :Allow, :Remark

        def initialize(ip=nil, allow=nil, remark=nil)
          @Ip = ip
          @Allow = allow
          @Remark = remark
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Allow = params['Allow']
          @Remark = params['Remark']
        end
      end

      # ModifyConsumerGroup请求参数结构体
      class ModifyConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param ConsumeMessageOrderly: 顺序投递：true
        # 并发投递：false
        # @type ConsumeMessageOrderly: Boolean
        # @param MaxRetryTimes: 最大重试次数
        # @type MaxRetryTimes: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :ConsumerGroup, :ConsumeEnable, :ConsumeMessageOrderly, :MaxRetryTimes, :Remark

        def initialize(instanceid=nil, consumergroup=nil, consumeenable=nil, consumemessageorderly=nil, maxretrytimes=nil, remark=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @ConsumeEnable = consumeenable
          @ConsumeMessageOrderly = consumemessageorderly
          @MaxRetryTimes = maxretrytimes
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @ConsumeEnable = params['ConsumeEnable']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @MaxRetryTimes = params['MaxRetryTimes']
          @Remark = params['Remark']
        end
      end

      # ModifyConsumerGroup返回参数结构体
      class ModifyConsumerGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param SendReceiveRatio: 消息发送和接收的比例
        # @type SendReceiveRatio: Float
        # @param SkuCode: 调整实例规格的商品代号
        # @type SkuCode: String
        # @param MessageRetention: 消息保留时长，小时为单位
        # @type MessageRetention: Integer
        # @param ScaledTpsEnabled: 是否开启弹性TPS
        # @type ScaledTpsEnabled: Boolean

        attr_accessor :InstanceId, :Name, :Remark, :SendReceiveRatio, :SkuCode, :MessageRetention, :ScaledTpsEnabled

        def initialize(instanceid=nil, name=nil, remark=nil, sendreceiveratio=nil, skucode=nil, messageretention=nil, scaledtpsenabled=nil)
          @InstanceId = instanceid
          @Name = name
          @Remark = remark
          @SendReceiveRatio = sendreceiveratio
          @SkuCode = skucode
          @MessageRetention = messageretention
          @ScaledTpsEnabled = scaledtpsenabled
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Remark = params['Remark']
          @SendReceiveRatio = params['SendReceiveRatio']
          @SkuCode = params['SkuCode']
          @MessageRetention = params['MessageRetention']
          @ScaledTpsEnabled = params['ScaledTpsEnabled']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Role: 角色名称
        # @type Role: String
        # @param PermRead: 是否开启消费
        # @type PermRead: Boolean
        # @param PermWrite: 是否开启生产
        # @type PermWrite: Boolean
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :Role, :PermRead, :PermWrite, :Remark

        def initialize(instanceid=nil, role=nil, permread=nil, permwrite=nil, remark=nil)
          @InstanceId = instanceid
          @Role = role
          @PermRead = permread
          @PermWrite = permwrite
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Role = params['Role']
          @PermRead = params['PermRead']
          @PermWrite = params['PermWrite']
          @Remark = params['Remark']
        end
      end

      # ModifyRole返回参数结构体
      class ModifyRoleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :QueueNum, :Remark

        def initialize(instanceid=nil, topic=nil, queuenum=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @QueueNum = queuenum
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
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

      # 角色信息
      class RoleItem < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param AccessKey: Access Key
        # @type AccessKey: String
        # @param SecretKey: Secret Key
        # @type SecretKey: String
        # @param PermRead: 是否开启消费
        # @type PermRead: Boolean
        # @param PermWrite: 是否开启生产
        # @type PermWrite: Boolean
        # @param Remark: 备注信息
        # @type Remark: String
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param ModifiedTime: 修改时间，秒为单位
        # @type ModifiedTime: Integer

        attr_accessor :RoleName, :AccessKey, :SecretKey, :PermRead, :PermWrite, :Remark, :CreatedTime, :ModifiedTime

        def initialize(rolename=nil, accesskey=nil, secretkey=nil, permread=nil, permwrite=nil, remark=nil, createdtime=nil, modifiedtime=nil)
          @RoleName = rolename
          @AccessKey = accesskey
          @SecretKey = secretkey
          @PermRead = permread
          @PermWrite = permwrite
          @Remark = remark
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @PermRead = params['PermRead']
          @PermWrite = params['PermWrite']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 主题与消费组的订阅关系数据
      class SubscriptionData < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Topic: 主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param TopicType: 主题类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicType: String
        # @param TopicQueueNum: 单个节点上主题队列数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicQueueNum: Integer
        # @param ConsumerGroup: 消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerGroup: String
        # @param IsOnline: 是否在线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOnline: Boolean
        # @param ConsumeType: 消费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumeType: String
        # @param SubString: 订阅规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubString: String
        # @param ExpressionType: 过滤类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpressionType: String
        # @param Consistency: 订阅一致性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: Integer
        # @param ConsumerLag: 消费堆积
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLag: Integer
        # @param LastUpdateTime: 最后消费进度更新时间，秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param MaxRetryTimes: 最大重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryTimes: Integer
        # @param ConsumeMessageOrderly: 是否顺序消费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumeMessageOrderly: Boolean

        attr_accessor :InstanceId, :Topic, :TopicType, :TopicQueueNum, :ConsumerGroup, :IsOnline, :ConsumeType, :SubString, :ExpressionType, :Consistency, :ConsumerLag, :LastUpdateTime, :MaxRetryTimes, :ConsumeMessageOrderly

        def initialize(instanceid=nil, topic=nil, topictype=nil, topicqueuenum=nil, consumergroup=nil, isonline=nil, consumetype=nil, substring=nil, expressiontype=nil, consistency=nil, consumerlag=nil, lastupdatetime=nil, maxretrytimes=nil, consumemessageorderly=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @TopicQueueNum = topicqueuenum
          @ConsumerGroup = consumergroup
          @IsOnline = isonline
          @ConsumeType = consumetype
          @SubString = substring
          @ExpressionType = expressiontype
          @Consistency = consistency
          @ConsumerLag = consumerlag
          @LastUpdateTime = lastupdatetime
          @MaxRetryTimes = maxretrytimes
          @ConsumeMessageOrderly = consumemessageorderly
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @TopicQueueNum = params['TopicQueueNum']
          @ConsumerGroup = params['ConsumerGroup']
          @IsOnline = params['IsOnline']
          @ConsumeType = params['ConsumeType']
          @SubString = params['SubString']
          @ExpressionType = params['ExpressionType']
          @Consistency = params['Consistency']
          @ConsumerLag = params['ConsumerLag']
          @LastUpdateTime = params['LastUpdateTime']
          @MaxRetryTimes = params['MaxRetryTimes']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
        end
      end

      # 标签数据
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签名称
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

      # 标签过滤器
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键名称
        # @type TagKey: String
        # @param TagValues: 标签值列表
        # @type TagValues: Array

        attr_accessor :TagKey, :TagValues

        def initialize(tagkey=nil, tagvalues=nil)
          @TagKey = tagkey
          @TagValues = tagvalues
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValues = params['TagValues']
        end
      end

      # 列表上的主题信息
      class TopicItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param TopicType: 主题类型
        # @type TopicType: String
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :TopicType, :QueueNum, :Remark

        def initialize(instanceid=nil, topic=nil, topictype=nil, queuenum=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @QueueNum = queuenum
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
        end
      end

      # VPC信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
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

