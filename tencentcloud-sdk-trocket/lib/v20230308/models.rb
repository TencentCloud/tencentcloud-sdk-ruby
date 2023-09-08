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

