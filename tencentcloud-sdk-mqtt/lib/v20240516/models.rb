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
  module Mqtt
    module V20240516
      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件列表
        # @type Filters: Array
        # @param Offset: 查询起始位置
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量
        # @type Limit: Integer
        # @param TagFilters: 标签过滤器
        # @type TagFilters: Array

        attr_accessor :Filters, :Offset, :Limit, :TagFilters

        def initialize(filters=nil, offset=nil, limit=nil, tagfilters=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @TagFilters = tagfilters
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
        # @param MaxSubscriptionPerClient: 单客户端最大订阅数
        # @type MaxSubscriptionPerClient: Integer
        # @param AuthorizationPolicyLimit: 授权规则条数
        # @type AuthorizationPolicyLimit: Integer
        # @param ClientNumLimit: 客户端数量上限
        # @type ClientNumLimit: Integer
        # @param DeviceCertificateProvisionType: 客户端证书注册方式：JITP，API
        # @type DeviceCertificateProvisionType: String
        # @param AutomaticActivation: 自动注册设备证书时是否自动激活
        # @type AutomaticActivation: Boolean
        # @param RenewFlag: 是否自动续费
        # @type RenewFlag: Integer
        # @param PayMode: 计费模式， POSTPAID，按量计费 PREPAID，包年包月
        # @type PayMode: String
        # @param ExpiryTime: 到期时间，秒为单位
        # @type ExpiryTime: Integer
        # @param DestroyTime: 预销毁时间
        # @type DestroyTime: Integer
        # @param X509Mode:     TLS,单向认证
        #     mTLS,双向认证
        #     BYOC;一机一证
        # @type X509Mode: String
        # @param MaxCaNum: 最大Ca配额
        # @type MaxCaNum: Integer
        # @param RegistrationCode: 证书注册码
        # @type RegistrationCode: String
        # @param MaxSubscription: 集群最大订阅数
        # @type MaxSubscription: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName, :TopicNum, :TopicNumLimit, :TpsLimit, :CreatedTime, :Remark, :InstanceStatus, :SkuCode, :MaxSubscriptionPerClient, :AuthorizationPolicyLimit, :ClientNumLimit, :DeviceCertificateProvisionType, :AutomaticActivation, :RenewFlag, :PayMode, :ExpiryTime, :DestroyTime, :X509Mode, :MaxCaNum, :RegistrationCode, :MaxSubscription, :RequestId

        def initialize(instancetype=nil, instanceid=nil, instancename=nil, topicnum=nil, topicnumlimit=nil, tpslimit=nil, createdtime=nil, remark=nil, instancestatus=nil, skucode=nil, maxsubscriptionperclient=nil, authorizationpolicylimit=nil, clientnumlimit=nil, devicecertificateprovisiontype=nil, automaticactivation=nil, renewflag=nil, paymode=nil, expirytime=nil, destroytime=nil, x509mode=nil, maxcanum=nil, registrationcode=nil, maxsubscription=nil, requestid=nil)
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
          @MaxSubscriptionPerClient = maxsubscriptionperclient
          @AuthorizationPolicyLimit = authorizationpolicylimit
          @ClientNumLimit = clientnumlimit
          @DeviceCertificateProvisionType = devicecertificateprovisiontype
          @AutomaticActivation = automaticactivation
          @RenewFlag = renewflag
          @PayMode = paymode
          @ExpiryTime = expirytime
          @DestroyTime = destroytime
          @X509Mode = x509mode
          @MaxCaNum = maxcanum
          @RegistrationCode = registrationcode
          @MaxSubscription = maxsubscription
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
          @MaxSubscriptionPerClient = params['MaxSubscriptionPerClient']
          @AuthorizationPolicyLimit = params['AuthorizationPolicyLimit']
          @ClientNumLimit = params['ClientNumLimit']
          @DeviceCertificateProvisionType = params['DeviceCertificateProvisionType']
          @AutomaticActivation = params['AutomaticActivation']
          @RenewFlag = params['RenewFlag']
          @PayMode = params['PayMode']
          @ExpiryTime = params['ExpiryTime']
          @DestroyTime = params['DestroyTime']
          @X509Mode = params['X509Mode']
          @MaxCaNum = params['MaxCaNum']
          @RegistrationCode = params['RegistrationCode']
          @MaxSubscription = params['MaxSubscription']
          @RequestId = params['RequestId']
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

      # MQTT 实例信息
      class MQTTInstanceItem < TencentCloud::Common::AbstractModel
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
        # @param MaxSubscriptionPerClient: 单客户端最大订阅数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSubscriptionPerClient: Integer
        # @param ClientNumLimit: 客户端连接数上线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientNumLimit: Integer
        # @param RenewFlag: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param PayMode: 计费模式， POSTPAID，按量计费 PREPAID，包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param ExpiryTime: 到期时间，秒为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiryTime: Integer
        # @param DestroyTime: 预销毁时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestroyTime: Integer
        # @param AuthorizationPolicyLimit: 授权规则条数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationPolicyLimit: Integer
        # @param MaxCaNum: 最大ca配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCaNum: Integer
        # @param MaxSubscription: 最大订阅数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSubscription: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :Remark, :TopicNum, :SkuCode, :TpsLimit, :CreateTime, :MaxSubscriptionPerClient, :ClientNumLimit, :RenewFlag, :PayMode, :ExpiryTime, :DestroyTime, :AuthorizationPolicyLimit, :MaxCaNum, :MaxSubscription

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, remark=nil, topicnum=nil, skucode=nil, tpslimit=nil, createtime=nil, maxsubscriptionperclient=nil, clientnumlimit=nil, renewflag=nil, paymode=nil, expirytime=nil, destroytime=nil, authorizationpolicylimit=nil, maxcanum=nil, maxsubscription=nil)
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
          @MaxSubscriptionPerClient = maxsubscriptionperclient
          @ClientNumLimit = clientnumlimit
          @RenewFlag = renewflag
          @PayMode = paymode
          @ExpiryTime = expirytime
          @DestroyTime = destroytime
          @AuthorizationPolicyLimit = authorizationpolicylimit
          @MaxCaNum = maxcanum
          @MaxSubscription = maxsubscription
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
          @MaxSubscriptionPerClient = params['MaxSubscriptionPerClient']
          @ClientNumLimit = params['ClientNumLimit']
          @RenewFlag = params['RenewFlag']
          @PayMode = params['PayMode']
          @ExpiryTime = params['ExpiryTime']
          @DestroyTime = params['DestroyTime']
          @AuthorizationPolicyLimit = params['AuthorizationPolicyLimit']
          @MaxCaNum = params['MaxCaNum']
          @MaxSubscription = params['MaxSubscription']
        end
      end

      # 标签过滤器
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键名称
        # @type TagKey: String
        # @param TagValues: 标签键名称
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

    end
  end
end

