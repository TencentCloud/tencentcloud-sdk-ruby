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
        # @param ClusterIdV4: 4.x的集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIdV4: String
        # @param NamespaceV4: 4.x的命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceV4: String
        # @param ConsumerGroupV4: 4.x的消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerGroupV4: String
        # @param FullNamespaceV4: 4.x的完整命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullNamespaceV4: String

        attr_accessor :InstanceId, :ConsumerGroup, :ConsumeEnable, :ConsumeMessageOrderly, :MaxRetryTimes, :Remark, :ClusterIdV4, :NamespaceV4, :ConsumerGroupV4, :FullNamespaceV4

        def initialize(instanceid=nil, consumergroup=nil, consumeenable=nil, consumemessageorderly=nil, maxretrytimes=nil, remark=nil, clusteridv4=nil, namespacev4=nil, consumergroupv4=nil, fullnamespacev4=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @ConsumeEnable = consumeenable
          @ConsumeMessageOrderly = consumemessageorderly
          @MaxRetryTimes = maxretrytimes
          @Remark = remark
          @ClusterIdV4 = clusteridv4
          @NamespaceV4 = namespacev4
          @ConsumerGroupV4 = consumergroupv4
          @FullNamespaceV4 = fullnamespacev4
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @ConsumeEnable = params['ConsumeEnable']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @MaxRetryTimes = params['MaxRetryTimes']
          @Remark = params['Remark']
          @ClusterIdV4 = params['ClusterIdV4']
          @NamespaceV4 = params['NamespaceV4']
          @ConsumerGroupV4 = params['ConsumerGroupV4']
          @FullNamespaceV4 = params['FullNamespaceV4']
        end
      end

      # 消费者客户端
      class ConsumerClient < TencentCloud::Common::AbstractModel
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param ClientAddr: 客户端地址
        # @type ClientAddr: String
        # @param Language: 客户端SDK语言
        # @type Language: String
        # @param Version: 客户端SDK版本
        # @type Version: String
        # @param ConsumerLag: 客户端消费堆积
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerLag: Integer

        attr_accessor :ClientId, :ClientAddr, :Language, :Version, :ConsumerLag

        def initialize(clientid=nil, clientaddr=nil, language=nil, version=nil, consumerlag=nil)
          @ClientId = clientid
          @ClientAddr = clientaddr
          @Language = language
          @Version = version
          @ConsumerLag = consumerlag
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @ClientAddr = params['ClientAddr']
          @Language = params['Language']
          @Version = params['Version']
          @ConsumerLag = params['ConsumerLag']
        end
      end

      # CreateConsumerGroup请求参数结构体
      class CreateConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param MaxRetryTimes: 最大重试次数
        # @type MaxRetryTimes: Integer
        # @param ConsumeEnable: 是否开启消费
        # @type ConsumeEnable: Boolean
        # @param ConsumeMessageOrderly: 顺序投递：true
        # 并发投递：false
        # @type ConsumeMessageOrderly: Boolean
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :MaxRetryTimes, :ConsumeEnable, :ConsumeMessageOrderly, :ConsumerGroup, :Remark

        def initialize(instanceid=nil, maxretrytimes=nil, consumeenable=nil, consumemessageorderly=nil, consumergroup=nil, remark=nil)
          @InstanceId = instanceid
          @MaxRetryTimes = maxretrytimes
          @ConsumeEnable = consumeenable
          @ConsumeMessageOrderly = consumemessageorderly
          @ConsumerGroup = consumergroup
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaxRetryTimes = params['MaxRetryTimes']
          @ConsumeEnable = params['ConsumeEnable']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
          @ConsumerGroup = params['ConsumerGroup']
          @Remark = params['Remark']
        end
      end

      # CreateConsumerGroup返回参数结构体
      class CreateConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Name: 集群名称
        # @type Name: String
        # @param SkuCode: 商品规格，可用规格如下：experiment_500, basic_1k, basic_2k, basic_3k, basic_4k, basic_5k, basic_6k, basic_7k, basic_8k, basic_9k, basic_10k, pro_4k, pro_6k, pro_8k, pro_1w, pro_15k, pro_2w, pro_25k, pro_3w, pro_35k, pro_4w, pro_45k, pro_5w, pro_55k, pro_60k, pro_65k, pro_70k, pro_75k, pro_80k, pro_85k, pro_90k, pro_95k, pro_100k, platinum_1w, platinum_2w, platinum_3w, platinum_4w, platinum_5w, platinum_6w, platinum_7w, platinum_8w, platinum_9w, platinum_10w, platinum_12w, platinum_14w, platinum_16w, platinum_18w, platinum_20w, platinum_25w, platinum_30w, platinum_35w, platinum_40w, platinum_45w, platinum_50w, platinum_60w, platinum_70w, platinum_80w, platinum_90w, platinum_100w
        # @type SkuCode: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param TagList: 标签列表
        # @type TagList: Array
        # @param VpcList: 集群绑定的VPC信息，必填
        # @type VpcList: Array
        # @param EnablePublic: 是否开启公网，默认值为false表示不开启
        # @type EnablePublic: Boolean
        # @param BillingFlow: 公网是否按流量计费，默认值为false表示不按流量计费
        # @type BillingFlow: Boolean
        # @param Bandwidth: 公网带宽（单位：兆），默认值为0。如果开启公网，该字段必须为大于0的正整数
        # @type Bandwidth: Integer
        # @param IpRules: 公网访问白名单
        # @type IpRules: Array
        # @param MessageRetention: 消息保留时长（单位：小时）
        # @type MessageRetention: Integer
        # @param PayMode: 付费模式（0: 后付费；1: 预付费），默认值为0
        # @type PayMode: Integer
        # @param RenewFlag: 是否自动续费（0: 不自动续费；1: 自动续费），默认值为0
        # @type RenewFlag: Integer
        # @param TimeSpan: 购买时长（单位：月），默认值为1
        # @type TimeSpan: Integer
        # @param MaxTopicNum: 最大可创建主题数
        # @type MaxTopicNum: Integer
        # @param ZoneIds: 部署可用区列表
        # @type ZoneIds: Array

        attr_accessor :InstanceType, :Name, :SkuCode, :Remark, :TagList, :VpcList, :EnablePublic, :BillingFlow, :Bandwidth, :IpRules, :MessageRetention, :PayMode, :RenewFlag, :TimeSpan, :MaxTopicNum, :ZoneIds

        def initialize(instancetype=nil, name=nil, skucode=nil, remark=nil, taglist=nil, vpclist=nil, enablepublic=nil, billingflow=nil, bandwidth=nil, iprules=nil, messageretention=nil, paymode=nil, renewflag=nil, timespan=nil, maxtopicnum=nil, zoneids=nil)
          @InstanceType = instancetype
          @Name = name
          @SkuCode = skucode
          @Remark = remark
          @TagList = taglist
          @VpcList = vpclist
          @EnablePublic = enablepublic
          @BillingFlow = billingflow
          @Bandwidth = bandwidth
          @IpRules = iprules
          @MessageRetention = messageretention
          @PayMode = paymode
          @RenewFlag = renewflag
          @TimeSpan = timespan
          @MaxTopicNum = maxtopicnum
          @ZoneIds = zoneids
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
          @BillingFlow = params['BillingFlow']
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
          @PayMode = params['PayMode']
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
          @MaxTopicNum = params['MaxTopicNum']
          @ZoneIds = params['ZoneIds']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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

      # CreateMQTTInsPublicEndpoint请求参数结构体
      class CreateMQTTInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Bandwidth: 带宽
        # @type Bandwidth: Integer
        # @param Rules: 公网访问规则
        # @type Rules: Array

        attr_accessor :InstanceId, :Bandwidth, :Rules

        def initialize(instanceid=nil, bandwidth=nil, rules=nil)
          @InstanceId = instanceid
          @Bandwidth = bandwidth
          @Rules = rules
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Bandwidth = params['Bandwidth']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @Rules << publicaccessrule_tmp
            end
          end
        end
      end

      # CreateMQTTInsPublicEndpoint返回参数结构体
      class CreateMQTTInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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

      # CreateMQTTInstance请求参数结构体
      class CreateMQTTInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，
        # EXPERIMENT 体验版
        # BASIC 基础版
        # PRO  专业版
        # PLATINUM 铂金版
        # @type InstanceType: String
        # @param Name: 实例名称
        # @type Name: String
        # @param SkuCode: 商品规格，可用规格如下：
        # basic_1k,
        # @type SkuCode: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param TagList: 标签列表
        # @type TagList: Array
        # @param VpcList: 实例绑定的VPC信息
        # @type VpcList: Array
        # @param EnablePublic: 是否开启公网
        # @type EnablePublic: Boolean
        # @param Bandwidth: 公网带宽（单位：兆）
        # @type Bandwidth: Integer
        # @param IpRules: 公网访问白名单
        # @type IpRules: Array
        # @param RenewFlag: 是否自动续费（0: 不自动续费；1: 自动续费）
        # @type RenewFlag: Integer
        # @param TimeSpan: 购买时长（单位：月）
        # @type TimeSpan: Integer

        attr_accessor :InstanceType, :Name, :SkuCode, :Remark, :TagList, :VpcList, :EnablePublic, :Bandwidth, :IpRules, :RenewFlag, :TimeSpan

        def initialize(instancetype=nil, name=nil, skucode=nil, remark=nil, taglist=nil, vpclist=nil, enablepublic=nil, bandwidth=nil, iprules=nil, renewflag=nil, timespan=nil)
          @InstanceType = instancetype
          @Name = name
          @SkuCode = skucode
          @Remark = remark
          @TagList = taglist
          @VpcList = vpclist
          @EnablePublic = enablepublic
          @Bandwidth = bandwidth
          @IpRules = iprules
          @RenewFlag = renewflag
          @TimeSpan = timespan
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
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
        end
      end

      # CreateMQTTInstance返回参数结构体
      class CreateMQTTInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
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

      # CreateMQTTTopic请求参数结构体
      class CreateMQTTTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :Remark

        def initialize(instanceid=nil, topic=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Remark = params['Remark']
        end
      end

      # CreateMQTTTopic返回参数结构体
      class CreateMQTTTopicResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
        # @type Topic: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMQTTUser请求参数结构体
      class CreateMQTTUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param PermWrite: 是否开启生产权限
        # @type PermWrite: Boolean
        # @param PermRead: 是否开启消费权限
        # @type PermRead: Boolean
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码，该字段为空时候则后端会默认生成
        # @type Password: String

        attr_accessor :InstanceId, :Remark, :PermWrite, :PermRead, :Username, :Password

        def initialize(instanceid=nil, remark=nil, permwrite=nil, permread=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @Remark = remark
          @PermWrite = permwrite
          @PermRead = permread
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Remark = params['Remark']
          @PermWrite = params['PermWrite']
          @PermRead = params['PermRead']
          @Username = params['Username']
          @Password = params['Password']
        end
      end

      # CreateMQTTUser返回参数结构体
      class CreateMQTTUserResponse < TencentCloud::Common::AbstractModel
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

      # CreateRole请求参数结构体
      class CreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 集群ID
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
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param MsgTTL: 消息保留时长
        # @type MsgTTL: Integer

        attr_accessor :InstanceId, :Topic, :TopicType, :QueueNum, :Remark, :MsgTTL

        def initialize(instanceid=nil, topic=nil, topictype=nil, queuenum=nil, remark=nil, msgttl=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @QueueNum = queuenum
          @Remark = remark
          @MsgTTL = msgttl
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名
        # @type Topic: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # map结构返回
      class CustomMapEntry < TencentCloud::Common::AbstractModel
        # @param Key: key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # DeleteConsumerGroup请求参数结构体
      class DeleteConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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

      # DeleteMQTTInsPublicEndpoint请求参数结构体
      class DeleteMQTTInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
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

      # DeleteMQTTInsPublicEndpoint返回参数结构体
      class DeleteMQTTInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMQTTInstance请求参数结构体
      class DeleteMQTTInstanceRequest < TencentCloud::Common::AbstractModel
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

      # DeleteMQTTInstance返回参数结构体
      class DeleteMQTTInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMQTTTopic请求参数结构体
      class DeleteMQTTTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
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

      # DeleteMQTTTopic返回参数结构体
      class DeleteMQTTTopicResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMQTTUser请求参数结构体
      class DeleteMQTTUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Username: 用户名
        # @type Username: String

        attr_accessor :InstanceId, :Username

        def initialize(instanceid=nil, username=nil)
          @InstanceId = instanceid
          @Username = username
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Username = params['Username']
        end
      end

      # DeleteMQTTUser返回参数结构体
      class DeleteMQTTUserResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRole请求参数结构体
      class DeleteRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
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

      # DescribeConsumerClient请求参数结构体
      class DescribeConsumerClientRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String

        attr_accessor :InstanceId, :ClientId, :Filters, :Offset, :Limit, :ConsumerGroup

        def initialize(instanceid=nil, clientid=nil, filters=nil, offset=nil, limit=nil, consumergroup=nil)
          @InstanceId = instanceid
          @ClientId = clientid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @ConsumerGroup = consumergroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClientId = params['ClientId']
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
          @ConsumerGroup = params['ConsumerGroup']
        end
      end

      # DescribeConsumerClient返回参数结构体
      class DescribeConsumerClientResponse < TencentCloud::Common::AbstractModel
        # @param Client: 客户端详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Client: :class:`Tencentcloud::Trocket.v20230308.models.ConsumerClient`
        # @param TopicList: 主题消费信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Client, :TopicList, :RequestId

        def initialize(client=nil, topiclist=nil, requestid=nil)
          @Client = client
          @TopicList = topiclist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Client'].nil?
            @Client = ConsumerClient.new
            @Client.deserialize(params['Client'])
          end
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              topicconsumestats_tmp = TopicConsumeStats.new
              topicconsumestats_tmp.deserialize(i)
              @TopicList << topicconsumestats_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumerGroupList请求参数结构体
      class DescribeConsumerGroupListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param FromTopic: 查询指定主题下的消费组
        # @type FromTopic: String

        attr_accessor :InstanceId, :Filters, :Offset, :Limit, :FromTopic

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil, fromtopic=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @FromTopic = fromtopic
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        # @param InstanceId: 集群ID
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
        # @param MessageModel: 消费模式：
        # BROADCASTING 广播模式
        # CLUSTERING 集群模式
        # @type MessageModel: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsumerNum, :Tps, :ConsumerLag, :ConsumeType, :CreatedTime, :ConsumeMessageOrderly, :ConsumeEnable, :MaxRetryTimes, :Remark, :MessageModel, :RequestId

        def initialize(consumernum=nil, tps=nil, consumerlag=nil, consumetype=nil, createdtime=nil, consumemessageorderly=nil, consumeenable=nil, maxretrytimes=nil, remark=nil, messagemodel=nil, requestid=nil)
          @ConsumerNum = consumernum
          @Tps = tps
          @ConsumerLag = consumerlag
          @ConsumeType = consumetype
          @CreatedTime = createdtime
          @ConsumeMessageOrderly = consumemessageorderly
          @ConsumeEnable = consumeenable
          @MaxRetryTimes = maxretrytimes
          @Remark = remark
          @MessageModel = messagemodel
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
          @MessageModel = params['MessageModel']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumerLag请求参数结构体
      class DescribeConsumerLagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param Namespace: 命名空间，4.x集群必填
        # @type Namespace: String
        # @param SubscribeTopic: 订阅主题，不为空则查询订阅了该主题的消费组的堆积
        # @type SubscribeTopic: String

        attr_accessor :InstanceId, :ConsumerGroup, :Namespace, :SubscribeTopic

        def initialize(instanceid=nil, consumergroup=nil, namespace=nil, subscribetopic=nil)
          @InstanceId = instanceid
          @ConsumerGroup = consumergroup
          @Namespace = namespace
          @SubscribeTopic = subscribetopic
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConsumerGroup = params['ConsumerGroup']
          @Namespace = params['Namespace']
          @SubscribeTopic = params['SubscribeTopic']
        end
      end

      # DescribeConsumerLag返回参数结构体
      class DescribeConsumerLagResponse < TencentCloud::Common::AbstractModel
        # @param ConsumerLag: 堆积数
        # @type ConsumerLag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsumerLag, :RequestId

        def initialize(consumerlag=nil, requestid=nil)
          @ConsumerLag = consumerlag
          @RequestId = requestid
        end

        def deserialize(params)
          @ConsumerLag = params['ConsumerLag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFusionInstanceList请求参数结构体
      class DescribeFusionInstanceListRequest < TencentCloud::Common::AbstractModel
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

      # DescribeFusionInstanceList返回参数结构体
      class DescribeFusionInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 实例列表
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
              fusioninstanceitem_tmp = FusionInstanceItem.new
              fusioninstanceitem_tmp.deserialize(i)
              @Data << fusioninstanceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param TagFilters: 标签过滤器
        # @type TagFilters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :Filters, :TagFilters, :Offset, :Limit

        def initialize(filters=nil, tagfilters=nil, offset=nil, limit=nil)
          @Filters = filters
          @TagFilters = tagfilters
          @Offset = offset
          @Limit = limit
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
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 实例列表
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
        # @param InstanceId: 集群ID
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
        # @param ScaledTpsEnabled: 是否开启弹性TPS
        # @type ScaledTpsEnabled: Boolean
        # @param RenewFlag: 是否自动续费
        # @type RenewFlag: Integer
        # @param ExpiryTime: 到期时间
        # @type ExpiryTime: Integer
        # @param RoleNumLimit: 角色数量限制
        # @type RoleNumLimit: Integer
        # @param AclEnabled: 是否开启 ACL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclEnabled: Boolean
        # @param TopicNumLowerLimit: topic个数免费额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumLowerLimit: Integer
        # @param TopicNumUpperLimit: 最大可设置的topic个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumUpperLimit: Integer
        # @param ZoneIds: 可用区列表
        # @type ZoneIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName, :TopicNum, :TopicNumLimit, :GroupNum, :GroupNumLimit, :MessageRetention, :RetentionUpperLimit, :RetentionLowerLimit, :TpsLimit, :ScaledTpsLimit, :MaxMessageDelay, :CreatedTime, :SendReceiveRatio, :TagList, :EndpointList, :TopicQueueNumUpperLimit, :TopicQueueNumLowerLimit, :Remark, :InstanceStatus, :SkuCode, :PayMode, :ScaledTpsEnabled, :RenewFlag, :ExpiryTime, :RoleNumLimit, :AclEnabled, :TopicNumLowerLimit, :TopicNumUpperLimit, :ZoneIds, :RequestId

        def initialize(instancetype=nil, instanceid=nil, instancename=nil, topicnum=nil, topicnumlimit=nil, groupnum=nil, groupnumlimit=nil, messageretention=nil, retentionupperlimit=nil, retentionlowerlimit=nil, tpslimit=nil, scaledtpslimit=nil, maxmessagedelay=nil, createdtime=nil, sendreceiveratio=nil, taglist=nil, endpointlist=nil, topicqueuenumupperlimit=nil, topicqueuenumlowerlimit=nil, remark=nil, instancestatus=nil, skucode=nil, paymode=nil, scaledtpsenabled=nil, renewflag=nil, expirytime=nil, rolenumlimit=nil, aclenabled=nil, topicnumlowerlimit=nil, topicnumupperlimit=nil, zoneids=nil, requestid=nil)
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
          @ScaledTpsEnabled = scaledtpsenabled
          @RenewFlag = renewflag
          @ExpiryTime = expirytime
          @RoleNumLimit = rolenumlimit
          @AclEnabled = aclenabled
          @TopicNumLowerLimit = topicnumlowerlimit
          @TopicNumUpperLimit = topicnumupperlimit
          @ZoneIds = zoneids
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
          @ScaledTpsEnabled = params['ScaledTpsEnabled']
          @RenewFlag = params['RenewFlag']
          @ExpiryTime = params['ExpiryTime']
          @RoleNumLimit = params['RoleNumLimit']
          @AclEnabled = params['AclEnabled']
          @TopicNumLowerLimit = params['TopicNumLowerLimit']
          @TopicNumUpperLimit = params['TopicNumUpperLimit']
          @ZoneIds = params['ZoneIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTClient请求参数结构体
      class DescribeMQTTClientRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ClientId: 客户端详情
        # @type ClientId: String

        attr_accessor :InstanceId, :ClientId

        def initialize(instanceid=nil, clientid=nil)
          @InstanceId = instanceid
          @ClientId = clientid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClientId = params['ClientId']
        end
      end

      # DescribeMQTTClient返回参数结构体
      class DescribeMQTTClientResponse < TencentCloud::Common::AbstractModel
        # @param ClientId: 客户端唯一标识
        # @type ClientId: String
        # @param ClientAddress: 客户端网络地址
        # @type ClientAddress: String
        # @param ProtocolVersion: MQTT 协议版本，4 表示 MQTT 3.1.1
        # @type ProtocolVersion: Integer
        # @param Keepalive: 保持连接时间，单位：秒
        # @type Keepalive: Integer
        # @param ConnectionStatus: 连接状态，CONNECTED 已连接，DISCONNECTED 未连接
        # @type ConnectionStatus: String
        # @param CreateTime: 客户端创建时间
        # @type CreateTime: Integer
        # @param ConnectTime: 上次建立连接时间
        # @type ConnectTime: Integer
        # @param DisconnectTime: 上次断开连接时间，仅对持久会话（cleanSession=false）并且客户端当前未连接时有意义
        # @type DisconnectTime: Integer
        # @param MQTTClientSubscriptions: 客户端的订阅列表
        # @type MQTTClientSubscriptions: Array
        # @param Inbound: 服务端到客户端的流量统计
        # @type Inbound: :class:`Tencentcloud::Trocket.v20230308.models.StatisticsReport`
        # @param OutBound: 客户端到服务端的流量统计
        # @type OutBound: :class:`Tencentcloud::Trocket.v20230308.models.StatisticsReport`
        # @param CleanSession: cleansession标志
        # @type CleanSession: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientId, :ClientAddress, :ProtocolVersion, :Keepalive, :ConnectionStatus, :CreateTime, :ConnectTime, :DisconnectTime, :MQTTClientSubscriptions, :Inbound, :OutBound, :CleanSession, :RequestId

        def initialize(clientid=nil, clientaddress=nil, protocolversion=nil, keepalive=nil, connectionstatus=nil, createtime=nil, connecttime=nil, disconnecttime=nil, mqttclientsubscriptions=nil, inbound=nil, outbound=nil, cleansession=nil, requestid=nil)
          @ClientId = clientid
          @ClientAddress = clientaddress
          @ProtocolVersion = protocolversion
          @Keepalive = keepalive
          @ConnectionStatus = connectionstatus
          @CreateTime = createtime
          @ConnectTime = connecttime
          @DisconnectTime = disconnecttime
          @MQTTClientSubscriptions = mqttclientsubscriptions
          @Inbound = inbound
          @OutBound = outbound
          @CleanSession = cleansession
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @ClientAddress = params['ClientAddress']
          @ProtocolVersion = params['ProtocolVersion']
          @Keepalive = params['Keepalive']
          @ConnectionStatus = params['ConnectionStatus']
          @CreateTime = params['CreateTime']
          @ConnectTime = params['ConnectTime']
          @DisconnectTime = params['DisconnectTime']
          unless params['MQTTClientSubscriptions'].nil?
            @MQTTClientSubscriptions = []
            params['MQTTClientSubscriptions'].each do |i|
              mqttclientsubscription_tmp = MQTTClientSubscription.new
              mqttclientsubscription_tmp.deserialize(i)
              @MQTTClientSubscriptions << mqttclientsubscription_tmp
            end
          end
          unless params['Inbound'].nil?
            @Inbound = StatisticsReport.new
            @Inbound.deserialize(params['Inbound'])
          end
          unless params['OutBound'].nil?
            @OutBound = StatisticsReport.new
            @OutBound.deserialize(params['OutBound'])
          end
          @CleanSession = params['CleanSession']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTInsPublicEndpoints请求参数结构体
      class DescribeMQTTInsPublicEndpointsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMQTTInsPublicEndpoints返回参数结构体
      class DescribeMQTTInsPublicEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param Endpoints: 接入点
        # @type Endpoints: Array
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Bandwidth: 带宽
        # @type Bandwidth: Integer
        # @param Rules: 公网访问规则
        # @type Rules: Array
        # @param Status: 公网状态：
        #     NORMAL-正常
        #     CLOSING-关闭中
        #     MODIFYING-修改中
        #     CREATING-开启中
        #     CLOSE-关闭
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoints, :InstanceId, :Bandwidth, :Rules, :Status, :RequestId

        def initialize(endpoints=nil, instanceid=nil, bandwidth=nil, rules=nil, status=nil, requestid=nil)
          @Endpoints = endpoints
          @InstanceId = instanceid
          @Bandwidth = bandwidth
          @Rules = rules
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Endpoints'].nil?
            @Endpoints = []
            params['Endpoints'].each do |i|
              mqttendpointitem_tmp = MQTTEndpointItem.new
              mqttendpointitem_tmp.deserialize(i)
              @Endpoints << mqttendpointitem_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @Bandwidth = params['Bandwidth']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @Rules << publicaccessrule_tmp
            end
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTInsVPCEndpoints请求参数结构体
      class DescribeMQTTInsVPCEndpointsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeMQTTInsVPCEndpoints返回参数结构体
      class DescribeMQTTInsVPCEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param Endpoints: 接入点
        # @type Endpoints: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoints, :RequestId

        def initialize(endpoints=nil, requestid=nil)
          @Endpoints = endpoints
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Endpoints'].nil?
            @Endpoints = []
            params['Endpoints'].each do |i|
              mqttendpointitem_tmp = MQTTEndpointItem.new
              mqttendpointitem_tmp.deserialize(i)
              @Endpoints << mqttendpointitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTInstanceCert请求参数结构体
      class DescribeMQTTInstanceCertRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMQTTInstanceCert返回参数结构体
      class DescribeMQTTInstanceCertResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param SSLServerCertId: 服务端证书id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSLServerCertId: String
        # @param SSLCaCertId: CA证书id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSLCaCertId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :SSLServerCertId, :SSLCaCertId, :RequestId

        def initialize(instanceid=nil, sslservercertid=nil, sslcacertid=nil, requestid=nil)
          @InstanceId = instanceid
          @SSLServerCertId = sslservercertid
          @SSLCaCertId = sslcacertid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SSLServerCertId = params['SSLServerCertId']
          @SSLCaCertId = params['SSLCaCertId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTInstanceList请求参数结构体
      class DescribeMQTTInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param IncludeNew: 是否包含新控制台集群：默认为包含
        # @type IncludeNew: Boolean

        attr_accessor :Filters, :Offset, :Limit, :IncludeNew

        def initialize(filters=nil, offset=nil, limit=nil, includenew=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @IncludeNew = includenew
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IncludeNew = params['IncludeNew']
        end
      end

      # DescribeMQTTInstanceList返回参数结构体
      class DescribeMQTTInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 实例列表
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
              mqttinstanceitem_tmp = MQTTInstanceItem.new
              mqttinstanceitem_tmp.deserialize(i)
              @Data << mqttinstanceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTInstance请求参数结构体
      class DescribeMQTTInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMQTTInstance返回参数结构体
      class DescribeMQTTInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，
        # EXPERIMENT 体验版
        # BASIC 基础版
        # PRO  专业版
        # PLATINUM 铂金版
        # @type InstanceType: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param TopicNum: 主题数量
        # @type TopicNum: Integer
        # @param TopicNumLimit: 实例最大主题数量
        # @type TopicNumLimit: Integer
        # @param TpsLimit: TPS限流值
        # @type TpsLimit: Integer
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param SkuCode: 实例规格
        # @type SkuCode: String
        # @param SubscriptionNumLimit: 订阅数上限
        # @type SubscriptionNumLimit: Integer
        # @param ClientNumLimit: 客户端数量上限
        # @type ClientNumLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName, :TopicNum, :TopicNumLimit, :TpsLimit, :CreatedTime, :Remark, :InstanceStatus, :SkuCode, :SubscriptionNumLimit, :ClientNumLimit, :RequestId

        def initialize(instancetype=nil, instanceid=nil, instancename=nil, topicnum=nil, topicnumlimit=nil, tpslimit=nil, createdtime=nil, remark=nil, instancestatus=nil, skucode=nil, subscriptionnumlimit=nil, clientnumlimit=nil, requestid=nil)
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @TopicNum = topicnum
          @TopicNumLimit = topicnumlimit
          @TpsLimit = tpslimit
          @CreatedTime = createdtime
          @Remark = remark
          @InstanceStatus = instancestatus
          @SkuCode = skucode
          @SubscriptionNumLimit = subscriptionnumlimit
          @ClientNumLimit = clientnumlimit
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @TopicNum = params['TopicNum']
          @TopicNumLimit = params['TopicNumLimit']
          @TpsLimit = params['TpsLimit']
          @CreatedTime = params['CreatedTime']
          @Remark = params['Remark']
          @InstanceStatus = params['InstanceStatus']
          @SkuCode = params['SkuCode']
          @SubscriptionNumLimit = params['SubscriptionNumLimit']
          @ClientNumLimit = params['ClientNumLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTMessageList请求参数结构体
      class DescribeMQTTMessageListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param TaskRequestId: 请求任务id
        # @type TaskRequestId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Topic, :StartTime, :EndTime, :TaskRequestId, :Offset, :Limit

        def initialize(instanceid=nil, topic=nil, starttime=nil, endtime=nil, taskrequestid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Topic = topic
          @StartTime = starttime
          @EndTime = endtime
          @TaskRequestId = taskrequestid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskRequestId = params['TaskRequestId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMQTTMessageList返回参数结构体
      class DescribeMQTTMessageListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 消息记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TaskRequestId: 请求任务id
        # @type TaskRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :TaskRequestId, :RequestId

        def initialize(totalcount=nil, data=nil, taskrequestid=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @TaskRequestId = taskrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              mqttmessageitem_tmp = MQTTMessageItem.new
              mqttmessageitem_tmp.deserialize(i)
              @Data << mqttmessageitem_tmp
            end
          end
          @TaskRequestId = params['TaskRequestId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTMessage请求参数结构体
      class DescribeMQTTMessageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param MsgId: 消息ID
        # @type MsgId: String

        attr_accessor :InstanceId, :Topic, :MsgId

        def initialize(instanceid=nil, topic=nil, msgid=nil)
          @InstanceId = instanceid
          @Topic = topic
          @MsgId = msgid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @MsgId = params['MsgId']
        end
      end

      # DescribeMQTTMessage返回参数结构体
      class DescribeMQTTMessageResponse < TencentCloud::Common::AbstractModel
        # @param Body: 消息体
        # @type Body: String
        # @param Properties: 详情参数
        # @type Properties: Array
        # @param ProduceTime: 生产时间
        # @type ProduceTime: String
        # @param MessageId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: String
        # @param ProducerAddr: 生产者地址
        # @type ProducerAddr: String
        # @param ShowTopicName: Topic
        # @type ShowTopicName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Body, :Properties, :ProduceTime, :MessageId, :ProducerAddr, :ShowTopicName, :RequestId

        def initialize(body=nil, properties=nil, producetime=nil, messageid=nil, produceraddr=nil, showtopicname=nil, requestid=nil)
          @Body = body
          @Properties = properties
          @ProduceTime = producetime
          @MessageId = messageid
          @ProducerAddr = produceraddr
          @ShowTopicName = showtopicname
          @RequestId = requestid
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              custommapentry_tmp = CustomMapEntry.new
              custommapentry_tmp.deserialize(i)
              @Properties << custommapentry_tmp
            end
          end
          @ProduceTime = params['ProduceTime']
          @MessageId = params['MessageId']
          @ProducerAddr = params['ProducerAddr']
          @ShowTopicName = params['ShowTopicName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTProductSKUList请求参数结构体
      class DescribeMQTTProductSKUListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMQTTProductSKUList返回参数结构体
      class DescribeMQTTProductSKUListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param MQTTProductSkuList: mqtt商品配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MQTTProductSkuList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MQTTProductSkuList, :RequestId

        def initialize(totalcount=nil, mqttproductskulist=nil, requestid=nil)
          @TotalCount = totalcount
          @MQTTProductSkuList = mqttproductskulist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MQTTProductSkuList'].nil?
            @MQTTProductSkuList = []
            params['MQTTProductSkuList'].each do |i|
              mqttproductskuitem_tmp = MQTTProductSkuItem.new
              mqttproductskuitem_tmp.deserialize(i)
              @MQTTProductSkuList << mqttproductskuitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTTopicList请求参数结构体
      class DescribeMQTTTopicListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Filters, :Offset, :Limit

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribeMQTTTopicList返回参数结构体
      class DescribeMQTTTopicListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 主题列表
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
              mqtttopicitem_tmp = MQTTTopicItem.new
              mqtttopicitem_tmp.deserialize(i)
              @Data << mqtttopicitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTTopic请求参数结构体
      class DescribeMQTTTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
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

      # DescribeMQTTTopic返回参数结构体
      class DescribeMQTTTopicResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Topic, :Remark, :CreatedTime, :RequestId

        def initialize(instanceid=nil, topic=nil, remark=nil, createdtime=nil, requestid=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Remark = remark
          @CreatedTime = createdtime
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMQTTUserList请求参数结构体
      class DescribeMQTTUserListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Filters, :Offset, :Limit

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribeMQTTUserList返回参数结构体
      class DescribeMQTTUserListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 角色信息列表
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
              mqttuseritem_tmp = MQTTUserItem.new
              mqttuseritem_tmp.deserialize(i)
              @Data << mqttuseritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageList请求参数结构体
      class DescribeMessageListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param TaskRequestId: 一次查询标识
        # @type TaskRequestId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param MsgId: 消息 ID
        # @type MsgId: String
        # @param MsgKey: 消息 Key
        # @type MsgKey: String
        # @param RecentMessageNum: 查询最近N条消息 最大不超过1024，默认-1为其他查询条件
        # @type RecentMessageNum: Integer
        # @param QueryDeadLetterMessage: 是否查询死信消息
        # @type QueryDeadLetterMessage: Boolean
        # @param Tag: 消息 Tag
        # @type Tag: String

        attr_accessor :InstanceId, :Topic, :StartTime, :EndTime, :TaskRequestId, :Offset, :Limit, :ConsumerGroup, :MsgId, :MsgKey, :RecentMessageNum, :QueryDeadLetterMessage, :Tag

        def initialize(instanceid=nil, topic=nil, starttime=nil, endtime=nil, taskrequestid=nil, offset=nil, limit=nil, consumergroup=nil, msgid=nil, msgkey=nil, recentmessagenum=nil, querydeadlettermessage=nil, tag=nil)
          @InstanceId = instanceid
          @Topic = topic
          @StartTime = starttime
          @EndTime = endtime
          @TaskRequestId = taskrequestid
          @Offset = offset
          @Limit = limit
          @ConsumerGroup = consumergroup
          @MsgId = msgid
          @MsgKey = msgkey
          @RecentMessageNum = recentmessagenum
          @QueryDeadLetterMessage = querydeadlettermessage
          @Tag = tag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskRequestId = params['TaskRequestId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConsumerGroup = params['ConsumerGroup']
          @MsgId = params['MsgId']
          @MsgKey = params['MsgKey']
          @RecentMessageNum = params['RecentMessageNum']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
          @Tag = params['Tag']
        end
      end

      # DescribeMessageList返回参数结构体
      class DescribeMessageListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 消息记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TaskRequestId: 一次查询ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :TaskRequestId, :RequestId

        def initialize(totalcount=nil, data=nil, taskrequestid=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @TaskRequestId = taskrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              messageitem_tmp = MessageItem.new
              messageitem_tmp.deserialize(i)
              @Data << messageitem_tmp
            end
          end
          @TaskRequestId = params['TaskRequestId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessage请求参数结构体
      class DescribeMessageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param MsgId: 消息ID
        # @type MsgId: String
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param QueryDeadLetterMessage: 是否是死信消息
        # @type QueryDeadLetterMessage: Boolean
        # @param QueryDelayMessage: 是否是延时消息
        # @type QueryDelayMessage: Boolean

        attr_accessor :InstanceId, :Topic, :MsgId, :Offset, :Limit, :QueryDeadLetterMessage, :QueryDelayMessage

        def initialize(instanceid=nil, topic=nil, msgid=nil, offset=nil, limit=nil, querydeadlettermessage=nil, querydelaymessage=nil)
          @InstanceId = instanceid
          @Topic = topic
          @MsgId = msgid
          @Offset = offset
          @Limit = limit
          @QueryDeadLetterMessage = querydeadlettermessage
          @QueryDelayMessage = querydelaymessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @MsgId = params['MsgId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
          @QueryDelayMessage = params['QueryDelayMessage']
        end
      end

      # DescribeMessage返回参数结构体
      class DescribeMessageResponse < TencentCloud::Common::AbstractModel
        # @param Body: 消息体
        # @type Body: String
        # @param Properties: 详情参数
        # @type Properties: String
        # @param ProduceTime: 生产时间
        # @type ProduceTime: String
        # @param MessageId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: String
        # @param ProducerAddr: 生产者地址
        # @type ProducerAddr: String
        # @param MessageTracks: 消息消费情况列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTracks: Array
        # @param ShowTopicName: Topic
        # @type ShowTopicName: String
        # @param MessageTracksCount: 消息消费情况列表总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTracksCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Body, :Properties, :ProduceTime, :MessageId, :ProducerAddr, :MessageTracks, :ShowTopicName, :MessageTracksCount, :RequestId

        def initialize(body=nil, properties=nil, producetime=nil, messageid=nil, produceraddr=nil, messagetracks=nil, showtopicname=nil, messagetrackscount=nil, requestid=nil)
          @Body = body
          @Properties = properties
          @ProduceTime = producetime
          @MessageId = messageid
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
          @MessageId = params['MessageId']
          @ProducerAddr = params['ProducerAddr']
          unless params['MessageTracks'].nil?
            @MessageTracks = []
            params['MessageTracks'].each do |i|
              messagetrackitem_tmp = MessageTrackItem.new
              messagetrackitem_tmp.deserialize(i)
              @MessageTracks << messagetrackitem_tmp
            end
          end
          @ShowTopicName = params['ShowTopicName']
          @MessageTracksCount = params['MessageTracksCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageTrace请求参数结构体
      class DescribeMessageTraceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param MsgId: 消息ID
        # @type MsgId: String
        # @param QueryDeadLetterMessage: 是否是死信消息
        # @type QueryDeadLetterMessage: Boolean
        # @param QueryDelayMessage: 是否是延时消息
        # @type QueryDelayMessage: Boolean

        attr_accessor :InstanceId, :Topic, :MsgId, :QueryDeadLetterMessage, :QueryDelayMessage

        def initialize(instanceid=nil, topic=nil, msgid=nil, querydeadlettermessage=nil, querydelaymessage=nil)
          @InstanceId = instanceid
          @Topic = topic
          @MsgId = msgid
          @QueryDeadLetterMessage = querydeadlettermessage
          @QueryDelayMessage = querydelaymessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @MsgId = params['MsgId']
          @QueryDeadLetterMessage = params['QueryDeadLetterMessage']
          @QueryDelayMessage = params['QueryDelayMessage']
        end
      end

      # DescribeMessageTrace返回参数结构体
      class DescribeMessageTraceResponse < TencentCloud::Common::AbstractModel
        # @param ShowTopicName: 展示Topic名
        # @type ShowTopicName: String
        # @param Data: 轨迹详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ShowTopicName, :Data, :RequestId

        def initialize(showtopicname=nil, data=nil, requestid=nil)
          @ShowTopicName = showtopicname
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @ShowTopicName = params['ShowTopicName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              messagetraceitem_tmp = MessageTraceItem.new
              messagetraceitem_tmp.deserialize(i)
              @Data << messagetraceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductSKUs请求参数结构体
      class DescribeProductSKUsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProductSKUs返回参数结构体
      class DescribeProductSKUsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 商品配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              productsku_tmp = ProductSKU.new
              productsku_tmp.deserialize(i)
              @Data << productsku_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoleList请求参数结构体
      class DescribeRoleListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Filters, :Offset, :Limit

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribeTopicList返回参数结构体
      class DescribeTopicListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 主题列表
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
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Topic, :Filters, :Offset, :Limit

        def initialize(instanceid=nil, topic=nil, filters=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        # @param MsgTTL: 消息保留时长
        # @type MsgTTL: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Topic, :TopicType, :Remark, :CreatedTime, :LastUpdateTime, :SubscriptionCount, :SubscriptionData, :MsgTTL, :RequestId

        def initialize(instanceid=nil, topic=nil, topictype=nil, remark=nil, createdtime=nil, lastupdatetime=nil, subscriptioncount=nil, subscriptiondata=nil, msgttl=nil, requestid=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @Remark = remark
          @CreatedTime = createdtime
          @LastUpdateTime = lastupdatetime
          @SubscriptionCount = subscriptioncount
          @SubscriptionData = subscriptiondata
          @MsgTTL = msgttl
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
          @MsgTTL = params['MsgTTL']
          @RequestId = params['RequestId']
        end
      end

      # 接入点信息
      class Endpoint < TencentCloud::Common::AbstractModel
        # @param Type: 接入点类型，枚举值如下
        # VPC: VPC;
        # PUBLIC: 公网;
        # INTERNAL: 支撑网;
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
        # @param BillingFlow: 公网是否按流量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingFlow: Boolean

        attr_accessor :Type, :Status, :PayMode, :EndpointUrl, :VpcId, :SubnetId, :Bandwidth, :IpRules, :BillingFlow

        def initialize(type=nil, status=nil, paymode=nil, endpointurl=nil, vpcid=nil, subnetid=nil, bandwidth=nil, iprules=nil, billingflow=nil)
          @Type = type
          @Status = status
          @PayMode = paymode
          @EndpointUrl = endpointurl
          @VpcId = vpcid
          @SubnetId = subnetid
          @Bandwidth = bandwidth
          @IpRules = iprules
          @BillingFlow = billingflow
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
          @BillingFlow = params['BillingFlow']
        end
      end

      # 查询过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件参数名
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
      class FusionInstanceItem < TencentCloud::Common::AbstractModel
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
        # @param RenewFlag: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param InstanceItemExtraInfo: 4.x独有数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceItemExtraInfo: :class:`Tencentcloud::Trocket.v20230308.models.InstanceItemExtraInfo`
        # @param DestroyTime: 预销毁时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestroyTime: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :GroupNumLimit, :PayMode, :ExpiryTime, :Remark, :TopicNum, :GroupNum, :TagList, :SkuCode, :TpsLimit, :ScaledTpsLimit, :MessageRetention, :MaxMessageDelay, :RenewFlag, :InstanceItemExtraInfo, :DestroyTime

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, groupnumlimit=nil, paymode=nil, expirytime=nil, remark=nil, topicnum=nil, groupnum=nil, taglist=nil, skucode=nil, tpslimit=nil, scaledtpslimit=nil, messageretention=nil, maxmessagedelay=nil, renewflag=nil, instanceitemextrainfo=nil, destroytime=nil)
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
          @RenewFlag = renewflag
          @InstanceItemExtraInfo = instanceitemextrainfo
          @DestroyTime = destroytime
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
          @RenewFlag = params['RenewFlag']
          unless params['InstanceItemExtraInfo'].nil?
            @InstanceItemExtraInfo = InstanceItemExtraInfo.new
            @InstanceItemExtraInfo.deserialize(params['InstanceItemExtraInfo'])
          end
          @DestroyTime = params['DestroyTime']
        end
      end

      # ImportSourceClusterConsumerGroups请求参数结构体
      class ImportSourceClusterConsumerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param GroupList: 待导入的消费组列表
        # @type GroupList: Array

        attr_accessor :TaskId, :GroupList

        def initialize(taskid=nil, grouplist=nil)
          @TaskId = taskid
          @GroupList = grouplist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              sourceclustergroupconfig_tmp = SourceClusterGroupConfig.new
              sourceclustergroupconfig_tmp.deserialize(i)
              @GroupList << sourceclustergroupconfig_tmp
            end
          end
        end
      end

      # ImportSourceClusterConsumerGroups返回参数结构体
      class ImportSourceClusterConsumerGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ImportSourceClusterTopics请求参数结构体
      class ImportSourceClusterTopicsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TopicList: 待导入的主题列表
        # @type TopicList: Array

        attr_accessor :TaskId, :TopicList

        def initialize(taskid=nil, topiclist=nil)
          @TaskId = taskid
          @TopicList = topiclist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              sourceclustertopicconfig_tmp = SourceClusterTopicConfig.new
              sourceclustertopicconfig_tmp.deserialize(i)
              @TopicList << sourceclustertopicconfig_tmp
            end
          end
        end
      end

      # ImportSourceClusterTopics返回参数结构体
      class ImportSourceClusterTopicsResponse < TencentCloud::Common::AbstractModel
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
        # @param RenewFlag: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :GroupNumLimit, :PayMode, :ExpiryTime, :Remark, :TopicNum, :GroupNum, :TagList, :SkuCode, :TpsLimit, :ScaledTpsLimit, :MessageRetention, :MaxMessageDelay, :RenewFlag

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, groupnumlimit=nil, paymode=nil, expirytime=nil, remark=nil, topicnum=nil, groupnum=nil, taglist=nil, skucode=nil, tpslimit=nil, scaledtpslimit=nil, messageretention=nil, maxmessagedelay=nil, renewflag=nil)
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
          @RenewFlag = renewflag
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
          @RenewFlag = params['RenewFlag']
        end
      end

      # 4.x集群和5.0集群列表统一显示 4.x特殊数据承载接口
      class InstanceItemExtraInfo < TencentCloud::Common::AbstractModel
        # @param IsVip: 是否vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param VipInstanceStatus: 4.x专享集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VipInstanceStatus: Integer
        # @param MaxBandWidth: 专享集群峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBandWidth: Integer
        # @param SpecName: 专享集群规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param NodeCount: 专享集群节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeCount: Integer
        # @param MaxStorage: 专享集群最大存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStorage: Integer
        # @param MaxRetention: 专享集群最大保留时间，单位：小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetention: Integer
        # @param MinRetention: 专项集群最大保留时间，单位：小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinRetention: Integer
        # @param InstanceStatus: 4.0共享集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: Integer

        attr_accessor :IsVip, :VipInstanceStatus, :MaxBandWidth, :SpecName, :NodeCount, :MaxStorage, :MaxRetention, :MinRetention, :InstanceStatus

        def initialize(isvip=nil, vipinstancestatus=nil, maxbandwidth=nil, specname=nil, nodecount=nil, maxstorage=nil, maxretention=nil, minretention=nil, instancestatus=nil)
          @IsVip = isvip
          @VipInstanceStatus = vipinstancestatus
          @MaxBandWidth = maxbandwidth
          @SpecName = specname
          @NodeCount = nodecount
          @MaxStorage = maxstorage
          @MaxRetention = maxretention
          @MinRetention = minretention
          @InstanceStatus = instancestatus
        end

        def deserialize(params)
          @IsVip = params['IsVip']
          @VipInstanceStatus = params['VipInstanceStatus']
          @MaxBandWidth = params['MaxBandWidth']
          @SpecName = params['SpecName']
          @NodeCount = params['NodeCount']
          @MaxStorage = params['MaxStorage']
          @MaxRetention = params['MaxRetention']
          @MinRetention = params['MinRetention']
          @InstanceStatus = params['InstanceStatus']
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

      # MQTT 订阅关系
      class MQTTClientSubscription < TencentCloud::Common::AbstractModel
        # @param TopicFilter: topic 订阅
        # @type TopicFilter: String
        # @param Qos: 服务质量等级
        # @type Qos: Integer

        attr_accessor :TopicFilter, :Qos

        def initialize(topicfilter=nil, qos=nil)
          @TopicFilter = topicfilter
          @Qos = qos
        end

        def deserialize(params)
          @TopicFilter = params['TopicFilter']
          @Qos = params['Qos']
        end
      end

      # MQTTEndpoint
      class MQTTEndpointItem < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Url: 接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param VpcId: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Host: 主机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Ip: 接入点ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String

        attr_accessor :Type, :Url, :VpcId, :SubnetId, :Host, :Port, :Ip

        def initialize(type=nil, url=nil, vpcid=nil, subnetid=nil, host=nil, port=nil, ip=nil)
          @Type = type
          @Url = url
          @VpcId = vpcid
          @SubnetId = subnetid
          @Host = host
          @Port = port
          @Ip = ip
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Host = params['Host']
          @Port = params['Port']
          @Ip = params['Ip']
        end
      end

      # MQTT 实例信息
      class MQTTInstanceItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Version: 实例版本
        # @type Version: String
        # @param InstanceType: 实例类型，
        # BASIC，基础版
        # PRO，专业版
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
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TopicNum: 主题数量
        # @type TopicNum: Integer
        # @param SkuCode: 商品规格
        # @type SkuCode: String
        # @param TpsLimit: 弹性TPS限流值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpsLimit: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param SubscriptionNumLimit: 订阅关系上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionNumLimit: Integer
        # @param ClientNumLimit: 客户端连接数上线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientNumLimit: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :Remark, :TopicNum, :SkuCode, :TpsLimit, :CreateTime, :SubscriptionNumLimit, :ClientNumLimit

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, remark=nil, topicnum=nil, skucode=nil, tpslimit=nil, createtime=nil, subscriptionnumlimit=nil, clientnumlimit=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @TopicNumLimit = topicnumlimit
          @Remark = remark
          @TopicNum = topicnum
          @SkuCode = skucode
          @TpsLimit = tpslimit
          @CreateTime = createtime
          @SubscriptionNumLimit = subscriptionnumlimit
          @ClientNumLimit = clientnumlimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @TopicNumLimit = params['TopicNumLimit']
          @Remark = params['Remark']
          @TopicNum = params['TopicNum']
          @SkuCode = params['SkuCode']
          @TpsLimit = params['TpsLimit']
          @CreateTime = params['CreateTime']
          @SubscriptionNumLimit = params['SubscriptionNumLimit']
          @ClientNumLimit = params['ClientNumLimit']
        end
      end

      # 消息记录
      class MQTTMessageItem < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgId: String
        # @param Tags: 消息tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: String
        # @param Keys: 消息key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: String
        # @param ProducerAddr: 客户端地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerAddr: String
        # @param ProduceTime: 消息发送时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProduceTime: String
        # @param DeadLetterResendTimes: 死信重发次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterResendTimes: Integer
        # @param DeadLetterResendSuccessTimes: 死信重发成功次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterResendSuccessTimes: Integer
        # @param SubTopic: 子topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubTopic: String
        # @param Qos: 消息质量等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qos: String

        attr_accessor :MsgId, :Tags, :Keys, :ProducerAddr, :ProduceTime, :DeadLetterResendTimes, :DeadLetterResendSuccessTimes, :SubTopic, :Qos

        def initialize(msgid=nil, tags=nil, keys=nil, produceraddr=nil, producetime=nil, deadletterresendtimes=nil, deadletterresendsuccesstimes=nil, subtopic=nil, qos=nil)
          @MsgId = msgid
          @Tags = tags
          @Keys = keys
          @ProducerAddr = produceraddr
          @ProduceTime = producetime
          @DeadLetterResendTimes = deadletterresendtimes
          @DeadLetterResendSuccessTimes = deadletterresendsuccesstimes
          @SubTopic = subtopic
          @Qos = qos
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @Tags = params['Tags']
          @Keys = params['Keys']
          @ProducerAddr = params['ProducerAddr']
          @ProduceTime = params['ProduceTime']
          @DeadLetterResendTimes = params['DeadLetterResendTimes']
          @DeadLetterResendSuccessTimes = params['DeadLetterResendSuccessTimes']
          @SubTopic = params['SubTopic']
          @Qos = params['Qos']
        end
      end

      # MQTT ProductSkuItem
      class MQTTProductSkuItem < TencentCloud::Common::AbstractModel
        # @param InstanceType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param SkuCode: cide
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkuCode: String
        # @param OnSale: sale
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnSale: Boolean
        # @param TopicNumLimit: topic num限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumLimit: Integer
        # @param TpsLimit: tps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpsLimit: Integer
        # @param ClientNumLimit: 客户端连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientNumLimit: Integer
        # @param SubscriptionNumLimit: 订阅数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscriptionNumLimit: Integer
        # @param ProxySpecCore: 代理核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxySpecCore: Integer
        # @param ProxySpecMemory: 代理内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxySpecMemory: Integer
        # @param ProxySpecCount: 代理总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxySpecCount: Integer

        attr_accessor :InstanceType, :SkuCode, :OnSale, :TopicNumLimit, :TpsLimit, :ClientNumLimit, :SubscriptionNumLimit, :ProxySpecCore, :ProxySpecMemory, :ProxySpecCount

        def initialize(instancetype=nil, skucode=nil, onsale=nil, topicnumlimit=nil, tpslimit=nil, clientnumlimit=nil, subscriptionnumlimit=nil, proxyspeccore=nil, proxyspecmemory=nil, proxyspeccount=nil)
          @InstanceType = instancetype
          @SkuCode = skucode
          @OnSale = onsale
          @TopicNumLimit = topicnumlimit
          @TpsLimit = tpslimit
          @ClientNumLimit = clientnumlimit
          @SubscriptionNumLimit = subscriptionnumlimit
          @ProxySpecCore = proxyspeccore
          @ProxySpecMemory = proxyspecmemory
          @ProxySpecCount = proxyspeccount
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @SkuCode = params['SkuCode']
          @OnSale = params['OnSale']
          @TopicNumLimit = params['TopicNumLimit']
          @TpsLimit = params['TpsLimit']
          @ClientNumLimit = params['ClientNumLimit']
          @SubscriptionNumLimit = params['SubscriptionNumLimit']
          @ProxySpecCore = params['ProxySpecCore']
          @ProxySpecMemory = params['ProxySpecMemory']
          @ProxySpecCount = params['ProxySpecCount']
        end
      end

      # MQTT 主题详情
      class MQTTTopicItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 主题描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :Remark

        def initialize(instanceid=nil, topic=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Remark = params['Remark']
        end
      end

      # MQTT集群用户信息
      class MQTTUserItem < TencentCloud::Common::AbstractModel
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String
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

        attr_accessor :Username, :Password, :PermRead, :PermWrite, :Remark, :CreatedTime, :ModifiedTime

        def initialize(username=nil, password=nil, permread=nil, permwrite=nil, remark=nil, createdtime=nil, modifiedtime=nil)
          @Username = username
          @Password = password
          @PermRead = permread
          @PermWrite = permwrite
          @Remark = remark
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @Username = params['Username']
          @Password = params['Password']
          @PermRead = params['PermRead']
          @PermWrite = params['PermWrite']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 消息记录
      class MessageItem < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgId: String
        # @param Tags: 消息tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: String
        # @param Keys: 消息key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: String
        # @param ProducerAddr: 客户端地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProducerAddr: String
        # @param ProduceTime: 消息发送时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProduceTime: String
        # @param DeadLetterResendTimes: 死信重发次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterResendTimes: Integer
        # @param DeadLetterResendSuccessTimes: 死信重发成功次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterResendSuccessTimes: Integer

        attr_accessor :MsgId, :Tags, :Keys, :ProducerAddr, :ProduceTime, :DeadLetterResendTimes, :DeadLetterResendSuccessTimes

        def initialize(msgid=nil, tags=nil, keys=nil, produceraddr=nil, producetime=nil, deadletterresendtimes=nil, deadletterresendsuccesstimes=nil)
          @MsgId = msgid
          @Tags = tags
          @Keys = keys
          @ProducerAddr = produceraddr
          @ProduceTime = producetime
          @DeadLetterResendTimes = deadletterresendtimes
          @DeadLetterResendSuccessTimes = deadletterresendsuccesstimes
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @Tags = params['Tags']
          @Keys = params['Keys']
          @ProducerAddr = params['ProducerAddr']
          @ProduceTime = params['ProduceTime']
          @DeadLetterResendTimes = params['DeadLetterResendTimes']
          @DeadLetterResendSuccessTimes = params['DeadLetterResendSuccessTimes']
        end
      end

      # 消息轨迹
      class MessageTraceItem < TencentCloud::Common::AbstractModel
        # @param Stage: 步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stage: String
        # @param Data: 轨迹详情
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # MessageTrack
      class MessageTrackItem < TencentCloud::Common::AbstractModel
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String
        # @param ConsumeStatus: 消费状态, CONSUMED: 已消费 CONSUMED_BUT_FILTERED: 已过滤 NOT_CONSUME: 未消费 ENTER_RETRY: 进入重试队列 ENTER_DLQ: 进入死信队列 UNKNOWN: 查询不到消费状态
        # @type ConsumeStatus: String
        # @param TrackType: track类型
        # @type TrackType: String
        # @param ExceptionDesc: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionDesc: String

        attr_accessor :ConsumerGroup, :ConsumeStatus, :TrackType, :ExceptionDesc

        def initialize(consumergroup=nil, consumestatus=nil, tracktype=nil, exceptiondesc=nil)
          @ConsumerGroup = consumergroup
          @ConsumeStatus = consumestatus
          @TrackType = tracktype
          @ExceptionDesc = exceptiondesc
        end

        def deserialize(params)
          @ConsumerGroup = params['ConsumerGroup']
          @ConsumeStatus = params['ConsumeStatus']
          @TrackType = params['TrackType']
          @ExceptionDesc = params['ExceptionDesc']
        end
      end

      # ModifyConsumerGroup请求参数结构体
      class ModifyConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
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
        # @param AclEnabled: 是否开启ACL
        # @type AclEnabled: Boolean
        # @param MaxTopicNum: 最大可创建主题数
        # @type MaxTopicNum: Integer
        # @param ExtraTopicNum: 免费额度之外的主题个数
        # @type ExtraTopicNum: String

        attr_accessor :InstanceId, :Name, :Remark, :SendReceiveRatio, :SkuCode, :MessageRetention, :ScaledTpsEnabled, :AclEnabled, :MaxTopicNum, :ExtraTopicNum

        def initialize(instanceid=nil, name=nil, remark=nil, sendreceiveratio=nil, skucode=nil, messageretention=nil, scaledtpsenabled=nil, aclenabled=nil, maxtopicnum=nil, extratopicnum=nil)
          @InstanceId = instanceid
          @Name = name
          @Remark = remark
          @SendReceiveRatio = sendreceiveratio
          @SkuCode = skucode
          @MessageRetention = messageretention
          @ScaledTpsEnabled = scaledtpsenabled
          @AclEnabled = aclenabled
          @MaxTopicNum = maxtopicnum
          @ExtraTopicNum = extratopicnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Remark = params['Remark']
          @SendReceiveRatio = params['SendReceiveRatio']
          @SkuCode = params['SkuCode']
          @MessageRetention = params['MessageRetention']
          @ScaledTpsEnabled = params['ScaledTpsEnabled']
          @AclEnabled = params['AclEnabled']
          @MaxTopicNum = params['MaxTopicNum']
          @ExtraTopicNum = params['ExtraTopicNum']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMQTTInsPublicEndpoint请求参数结构体
      class ModifyMQTTInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Bandwidth: 带宽
        # @type Bandwidth: Integer
        # @param Rules: 公网访问规则
        # @type Rules: Array

        attr_accessor :InstanceId, :Bandwidth, :Rules

        def initialize(instanceid=nil, bandwidth=nil, rules=nil)
          @InstanceId = instanceid
          @Bandwidth = bandwidth
          @Rules = rules
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Bandwidth = params['Bandwidth']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              publicaccessrule_tmp = PublicAccessRule.new
              publicaccessrule_tmp.deserialize(i)
              @Rules << publicaccessrule_tmp
            end
          end
        end
      end

      # ModifyMQTTInsPublicEndpoint返回参数结构体
      class ModifyMQTTInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMQTTInstanceCertBinding请求参数结构体
      class ModifyMQTTInstanceCertBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param SSLServerCertId: 服务端证书id
        # @type SSLServerCertId: String
        # @param SSLCaCertId: CA证书id
        # @type SSLCaCertId: String

        attr_accessor :InstanceId, :SSLServerCertId, :SSLCaCertId

        def initialize(instanceid=nil, sslservercertid=nil, sslcacertid=nil)
          @InstanceId = instanceid
          @SSLServerCertId = sslservercertid
          @SSLCaCertId = sslcacertid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SSLServerCertId = params['SSLServerCertId']
          @SSLCaCertId = params['SSLCaCertId']
        end
      end

      # ModifyMQTTInstanceCertBinding返回参数结构体
      class ModifyMQTTInstanceCertBindingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMQTTInstance请求参数结构体
      class ModifyMQTTInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :InstanceId, :Name, :Remark

        def initialize(instanceid=nil, name=nil, remark=nil)
          @InstanceId = instanceid
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # ModifyMQTTInstance返回参数结构体
      class ModifyMQTTInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMQTTTopic请求参数结构体
      class ModifyMQTTTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :InstanceId, :Topic, :Remark

        def initialize(instanceid=nil, topic=nil, remark=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Remark = params['Remark']
        end
      end

      # ModifyMQTTTopic返回参数结构体
      class ModifyMQTTTopicResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMQTTUser请求参数结构体
      class ModifyMQTTUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Username: 用户名
        # @type Username: String
        # @param PermRead: 是否开启消费
        # @type PermRead: Boolean
        # @param PermWrite: 是否开启生产
        # @type PermWrite: Boolean
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :Username, :PermRead, :PermWrite, :Remark

        def initialize(instanceid=nil, username=nil, permread=nil, permwrite=nil, remark=nil)
          @InstanceId = instanceid
          @Username = username
          @PermRead = permread
          @PermWrite = permwrite
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Username = params['Username']
          @PermRead = params['PermRead']
          @PermWrite = params['PermWrite']
          @Remark = params['Remark']
        end
      end

      # ModifyMQTTUser返回参数结构体
      class ModifyMQTTUserResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 集群ID
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

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param MsgTTL: 消息保留时长
        # @type MsgTTL: Integer

        attr_accessor :InstanceId, :Topic, :QueueNum, :Remark, :MsgTTL

        def initialize(instanceid=nil, topic=nil, queuenum=nil, remark=nil, msgttl=nil)
          @InstanceId = instanceid
          @Topic = topic
          @QueueNum = queuenum
          @Remark = remark
          @MsgTTL = msgttl
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
          @MsgTTL = params['MsgTTL']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
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

      # MQTT客户端监控
      class PacketStatistics < TencentCloud::Common::AbstractModel
        # @param MessageType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageType: String
        # @param Qos: 服务质量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qos: Integer
        # @param Count: 指标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :MessageType, :Qos, :Count

        def initialize(messagetype=nil, qos=nil, count=nil)
          @MessageType = messagetype
          @Qos = qos
          @Count = count
        end

        def deserialize(params)
          @MessageType = params['MessageType']
          @Qos = params['Qos']
          @Count = params['Count']
        end
      end

      # 价格标签信息
      class PriceTag < TencentCloud::Common::AbstractModel
        # @param Name: 计价名称
        # @type Name: String
        # @param Step: 步长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Step: Integer

        attr_accessor :Name, :Step

        def initialize(name=nil, step=nil)
          @Name = name
          @Step = step
        end

        def deserialize(params)
          @Name = params['Name']
          @Step = params['Step']
        end
      end

      # 商品售卖信息
      class ProductSKU < TencentCloud::Common::AbstractModel
        # @param InstanceType: 产品类型，
        # EXPERIMENT，体验版
        # BASIC，基础版
        # PRO，专业版
        # PLATINUM，铂金版
        # @type InstanceType: String
        # @param SkuCode: 规格代码
        # @type SkuCode: String
        # @param TpsLimit: TPS上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpsLimit: Integer
        # @param ScaledTpsLimit: 弹性TPS上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaledTpsLimit: Integer
        # @param TopicNumLimit: 主题数量上限默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumLimit: Integer
        # @param GroupNumLimit: 消费组数量上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNumLimit: Integer
        # @param DefaultRetention: 默认消息保留时间，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultRetention: Integer
        # @param RetentionUpperLimit: 可调整消息保留时间上限，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionUpperLimit: Integer
        # @param RetentionLowerLimit: 可调整消息保留时间下限，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionLowerLimit: Integer
        # @param MaxMessageDelay: 延时消息最大时长，小时为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMessageDelay: Integer
        # @param OnSale: 是否可购买
        # @type OnSale: Boolean
        # @param PriceTags: 计费项信息
        # @type PriceTags: Array
        # @param TopicNumUpperLimit: 主题数量上限默认最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNumUpperLimit: Integer

        attr_accessor :InstanceType, :SkuCode, :TpsLimit, :ScaledTpsLimit, :TopicNumLimit, :GroupNumLimit, :DefaultRetention, :RetentionUpperLimit, :RetentionLowerLimit, :MaxMessageDelay, :OnSale, :PriceTags, :TopicNumUpperLimit

        def initialize(instancetype=nil, skucode=nil, tpslimit=nil, scaledtpslimit=nil, topicnumlimit=nil, groupnumlimit=nil, defaultretention=nil, retentionupperlimit=nil, retentionlowerlimit=nil, maxmessagedelay=nil, onsale=nil, pricetags=nil, topicnumupperlimit=nil)
          @InstanceType = instancetype
          @SkuCode = skucode
          @TpsLimit = tpslimit
          @ScaledTpsLimit = scaledtpslimit
          @TopicNumLimit = topicnumlimit
          @GroupNumLimit = groupnumlimit
          @DefaultRetention = defaultretention
          @RetentionUpperLimit = retentionupperlimit
          @RetentionLowerLimit = retentionlowerlimit
          @MaxMessageDelay = maxmessagedelay
          @OnSale = onsale
          @PriceTags = pricetags
          @TopicNumUpperLimit = topicnumupperlimit
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @SkuCode = params['SkuCode']
          @TpsLimit = params['TpsLimit']
          @ScaledTpsLimit = params['ScaledTpsLimit']
          @TopicNumLimit = params['TopicNumLimit']
          @GroupNumLimit = params['GroupNumLimit']
          @DefaultRetention = params['DefaultRetention']
          @RetentionUpperLimit = params['RetentionUpperLimit']
          @RetentionLowerLimit = params['RetentionLowerLimit']
          @MaxMessageDelay = params['MaxMessageDelay']
          @OnSale = params['OnSale']
          unless params['PriceTags'].nil?
            @PriceTags = []
            params['PriceTags'].each do |i|
              pricetag_tmp = PriceTag.new
              pricetag_tmp.deserialize(i)
              @PriceTags << pricetag_tmp
            end
          end
          @TopicNumUpperLimit = params['TopicNumUpperLimit']
        end
      end

      # 公网访问安全规则
      class PublicAccessRule < TencentCloud::Common::AbstractModel
        # @param IpRule: ip网段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpRule: String
        # @param Allow: 允许或者拒绝
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ResendDeadLetterMessage请求参数结构体
      class ResendDeadLetterMessageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param MessageIds: 死信消息ID列表
        # @type MessageIds: Array
        # @param ConsumerGroup: 消费组名称
        # @type ConsumerGroup: String

        attr_accessor :InstanceId, :MessageIds, :ConsumerGroup

        def initialize(instanceid=nil, messageids=nil, consumergroup=nil)
          @InstanceId = instanceid
          @MessageIds = messageids
          @ConsumerGroup = consumergroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MessageIds = params['MessageIds']
          @ConsumerGroup = params['ConsumerGroup']
        end
      end

      # ResendDeadLetterMessage返回参数结构体
      class ResendDeadLetterMessageResponse < TencentCloud::Common::AbstractModel
        # @param ResendResult: 重发消息结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResendResult: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResendResult, :RequestId

        def initialize(resendresult=nil, requestid=nil)
          @ResendResult = resendresult
          @RequestId = requestid
        end

        def deserialize(params)
          @ResendResult = params['ResendResult']
          @RequestId = params['RequestId']
        end
      end

      # 角色信息
      class RoleItem < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param PermRead: 是否开启消费
        # @type PermRead: Boolean
        # @param PermWrite: 是否开启生产
        # @type PermWrite: Boolean
        # @param AccessKey: Access Key
        # @type AccessKey: String
        # @param SecretKey: Secret Key
        # @type SecretKey: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param CreatedTime: 创建时间，秒为单位
        # @type CreatedTime: Integer
        # @param ModifiedTime: 修改时间，秒为单位
        # @type ModifiedTime: Integer

        attr_accessor :RoleName, :PermRead, :PermWrite, :AccessKey, :SecretKey, :Remark, :CreatedTime, :ModifiedTime

        def initialize(rolename=nil, permread=nil, permwrite=nil, accesskey=nil, secretkey=nil, remark=nil, createdtime=nil, modifiedtime=nil)
          @RoleName = rolename
          @PermRead = permread
          @PermWrite = permwrite
          @AccessKey = accesskey
          @SecretKey = secretkey
          @Remark = remark
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @PermRead = params['PermRead']
          @PermWrite = params['PermWrite']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 消费组配置信息
      class SourceClusterGroupConfig < TencentCloud::Common::AbstractModel
        # @param GroupName: 消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Imported: 是否已导入，作为入参时无效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imported: Boolean
        # @param Namespace: 命名空间，仅4.x集群有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ImportStatus: 导入状态
        # Unknown 未知
        # Success 成功
        # Failure 失败
        # AlreadyExists 已存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportStatus: String
        # @param NamespaceV4: 4.x的命名空间，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceV4: String
        # @param GroupNameV4: 4.x的消费组名，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNameV4: String
        # @param FullNamespaceV4: 4.x的完整命名空间，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullNamespaceV4: String
        # @param ConsumeMessageOrderly: 是否为顺序投递，5.0有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumeMessageOrderly: Boolean

        attr_accessor :GroupName, :Remark, :Imported, :Namespace, :ImportStatus, :NamespaceV4, :GroupNameV4, :FullNamespaceV4, :ConsumeMessageOrderly

        def initialize(groupname=nil, remark=nil, imported=nil, namespace=nil, importstatus=nil, namespacev4=nil, groupnamev4=nil, fullnamespacev4=nil, consumemessageorderly=nil)
          @GroupName = groupname
          @Remark = remark
          @Imported = imported
          @Namespace = namespace
          @ImportStatus = importstatus
          @NamespaceV4 = namespacev4
          @GroupNameV4 = groupnamev4
          @FullNamespaceV4 = fullnamespacev4
          @ConsumeMessageOrderly = consumemessageorderly
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Remark = params['Remark']
          @Imported = params['Imported']
          @Namespace = params['Namespace']
          @ImportStatus = params['ImportStatus']
          @NamespaceV4 = params['NamespaceV4']
          @GroupNameV4 = params['GroupNameV4']
          @FullNamespaceV4 = params['FullNamespaceV4']
          @ConsumeMessageOrderly = params['ConsumeMessageOrderly']
        end
      end

      # 源集群主题配置
      class SourceClusterTopicConfig < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param TopicType: 主题类型，
        # 5.x版本
        # UNSPECIFIED 未指定
        # NORMAL 普通消息
        # FIFO 顺序消息
        # DELAY 延迟消息
        # TRANSACTION 事务消息

        # 4.x版本
        # Normal 普通消息
        # PartitionedOrder 分区顺序消息
        # Transaction 事务消息
        # DelayScheduled 延时消息

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicType: String
        # @param QueueNum: 队列数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueNum: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Imported: 是否已导入，作为入参时无效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imported: Boolean
        # @param Namespace: 命名空间，仅4.x集群有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ImportStatus: 导入状态，
        # Unknown 未知，
        # AlreadyExists 已存在，
        # Success 成功，
        # Failure 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportStatus: String
        # @param NamespaceV4: 4.x的命名空间，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceV4: String
        # @param TopicNameV4: 4.x的主题名，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicNameV4: String
        # @param FullNamespaceV4: 4.x的完整命名空间，出参使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullNamespaceV4: String

        attr_accessor :TopicName, :TopicType, :QueueNum, :Remark, :Imported, :Namespace, :ImportStatus, :NamespaceV4, :TopicNameV4, :FullNamespaceV4

        def initialize(topicname=nil, topictype=nil, queuenum=nil, remark=nil, imported=nil, namespace=nil, importstatus=nil, namespacev4=nil, topicnamev4=nil, fullnamespacev4=nil)
          @TopicName = topicname
          @TopicType = topictype
          @QueueNum = queuenum
          @Remark = remark
          @Imported = imported
          @Namespace = namespace
          @ImportStatus = importstatus
          @NamespaceV4 = namespacev4
          @TopicNameV4 = topicnamev4
          @FullNamespaceV4 = fullnamespacev4
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
          @Imported = params['Imported']
          @Namespace = params['Namespace']
          @ImportStatus = params['ImportStatus']
          @NamespaceV4 = params['NamespaceV4']
          @TopicNameV4 = params['TopicNameV4']
          @FullNamespaceV4 = params['FullNamespaceV4']
        end
      end

      # MQTT客户端数据流量统计
      class StatisticsReport < TencentCloud::Common::AbstractModel
        # @param Bytes: 字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bytes: Integer
        # @param Items: 监控指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Bytes, :Items

        def initialize(bytes=nil, items=nil)
          @Bytes = bytes
          @Items = items
        end

        def deserialize(params)
          @Bytes = params['Bytes']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              packetstatistics_tmp = PacketStatistics.new
              packetstatistics_tmp.deserialize(i)
              @Items << packetstatistics_tmp
            end
          end
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
        # @param MessageModel: 消费模式:
        # BROADCASTING 广播模式;
        # CLUSTERING 集群模式;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageModel: String

        attr_accessor :InstanceId, :Topic, :TopicType, :TopicQueueNum, :ConsumerGroup, :IsOnline, :ConsumeType, :SubString, :ExpressionType, :Consistency, :ConsumerLag, :LastUpdateTime, :MaxRetryTimes, :ConsumeMessageOrderly, :MessageModel

        def initialize(instanceid=nil, topic=nil, topictype=nil, topicqueuenum=nil, consumergroup=nil, isonline=nil, consumetype=nil, substring=nil, expressiontype=nil, consistency=nil, consumerlag=nil, lastupdatetime=nil, maxretrytimes=nil, consumemessageorderly=nil, messagemodel=nil)
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
          @MessageModel = messagemodel
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
          @MessageModel = params['MessageModel']
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

      # 主题消费进度
      class TopicConsumeStats < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称
        # @type Topic: String
        # @param TopicType: 主题类型
        # @type TopicType: String
        # @param QueueNum: 单节点主题队列数量
        # @type QueueNum: Integer
        # @param ConsumerLag: 消费堆积
        # @type ConsumerLag: Integer
        # @param SubString: 订阅规则
        # @type SubString: String
        # @param LastUpdateTime: 最后消费进度更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer

        attr_accessor :Topic, :TopicType, :QueueNum, :ConsumerLag, :SubString, :LastUpdateTime

        def initialize(topic=nil, topictype=nil, queuenum=nil, consumerlag=nil, substring=nil, lastupdatetime=nil)
          @Topic = topic
          @TopicType = topictype
          @QueueNum = queuenum
          @ConsumerLag = consumerlag
          @SubString = substring
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @ConsumerLag = params['ConsumerLag']
          @SubString = params['SubString']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # 列表上的主题信息
      class TopicItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param TopicType: 主题类型
        # NORMAL:普通消息,
        # FIFO:顺序消息,
        # DELAY:延时消息,
        # TRANSACTION:事务消息
        # @type TopicType: String
        # @param QueueNum: 队列数量
        # @type QueueNum: Integer
        # @param Remark: 描述
        # @type Remark: String
        # @param ClusterIdV4: 4.x的集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIdV4: String
        # @param NamespaceV4: 4.x的命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceV4: String
        # @param TopicV4: 4.x的主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicV4: String
        # @param FullNamespaceV4: 4.x的完整命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullNamespaceV4: String
        # @param MsgTTL: 消息保留时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgTTL: Integer

        attr_accessor :InstanceId, :Topic, :TopicType, :QueueNum, :Remark, :ClusterIdV4, :NamespaceV4, :TopicV4, :FullNamespaceV4, :MsgTTL

        def initialize(instanceid=nil, topic=nil, topictype=nil, queuenum=nil, remark=nil, clusteridv4=nil, namespacev4=nil, topicv4=nil, fullnamespacev4=nil, msgttl=nil)
          @InstanceId = instanceid
          @Topic = topic
          @TopicType = topictype
          @QueueNum = queuenum
          @Remark = remark
          @ClusterIdV4 = clusteridv4
          @NamespaceV4 = namespacev4
          @TopicV4 = topicv4
          @FullNamespaceV4 = fullnamespacev4
          @MsgTTL = msgttl
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @TopicType = params['TopicType']
          @QueueNum = params['QueueNum']
          @Remark = params['Remark']
          @ClusterIdV4 = params['ClusterIdV4']
          @NamespaceV4 = params['NamespaceV4']
          @TopicV4 = params['TopicV4']
          @FullNamespaceV4 = params['FullNamespaceV4']
          @MsgTTL = params['MsgTTL']
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

