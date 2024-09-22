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
      # AuthorizationPolicyItem
      class AuthorizationPolicyItem < TencentCloud::Common::AbstractModel
        # @param Id: 规则id
        # @type Id: Integer
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PolicyName: 规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param Version: 规则语法版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: Integer
        # @param Priority: 越小越优先
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Effect: allow/deny
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Effect: String
        # @param Actions: connect、pub、sub
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Actions: String
        # @param Resources: 资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: String
        # @param ClientId: client
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientId: String
        # @param Username: 用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Username: String
        # @param Ip: ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Qos: 0，1，2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qos: String
        # @param Retain: 1、2、3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retain: Integer
        # @param Remark: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreatedTime: 1713164969433
        # @type CreatedTime: Integer
        # @param UpdateTime: 1713164969433
        # @type UpdateTime: Integer

        attr_accessor :Id, :InstanceId, :PolicyName, :Version, :Priority, :Effect, :Actions, :Resources, :ClientId, :Username, :Ip, :Qos, :Retain, :Remark, :CreatedTime, :UpdateTime

        def initialize(id=nil, instanceid=nil, policyname=nil, version=nil, priority=nil, effect=nil, actions=nil, resources=nil, clientid=nil, username=nil, ip=nil, qos=nil, retain=nil, remark=nil, createdtime=nil, updatetime=nil)
          @Id = id
          @InstanceId = instanceid
          @PolicyName = policyname
          @Version = version
          @Priority = priority
          @Effect = effect
          @Actions = actions
          @Resources = resources
          @ClientId = clientid
          @Username = username
          @Ip = ip
          @Qos = qos
          @Retain = retain
          @Remark = remark
          @CreatedTime = createdtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @PolicyName = params['PolicyName']
          @Version = params['Version']
          @Priority = params['Priority']
          @Effect = params['Effect']
          @Actions = params['Actions']
          @Resources = params['Resources']
          @ClientId = params['ClientId']
          @Username = params['Username']
          @Ip = params['Ip']
          @Qos = params['Qos']
          @Retain = params['Retain']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 策略规则优先级
      class AuthorizationPolicyPriority < TencentCloud::Common::AbstractModel
        # @param Id: 策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Priority: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer

        attr_accessor :Id, :Priority

        def initialize(id=nil, priority=nil)
          @Id = id
          @Priority = priority
        end

        def deserialize(params)
          @Id = params['Id']
          @Priority = params['Priority']
        end
      end

      # CreateAuthorizationPolicy请求参数结构体
      class CreateAuthorizationPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param PolicyVersion: 策略版本
        # @type PolicyVersion: Integer
        # @param Priority: 策略优先级，越小越优先
        # @type Priority: Integer
        # @param Effect: allow、deny
        # @type Effect: String
        # @param Actions: connect、pub、sub
        # @type Actions: String
        # @param Retain: 1,匹配保留消息；2,匹配非保留消息，3.匹配所有消息
        # @type Retain: Integer
        # @param Qos: 0、1、2
        # @type Qos: String
        # @param Resources: 资源
        # @type Resources: String
        # @param Username: 用户名
        # @type Username: String
        # @param ClientId: 客户端
        # @type ClientId: String
        # @param Ip: ip
        # @type Ip: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :InstanceId, :PolicyName, :PolicyVersion, :Priority, :Effect, :Actions, :Retain, :Qos, :Resources, :Username, :ClientId, :Ip, :Remark

        def initialize(instanceid=nil, policyname=nil, policyversion=nil, priority=nil, effect=nil, actions=nil, retain=nil, qos=nil, resources=nil, username=nil, clientid=nil, ip=nil, remark=nil)
          @InstanceId = instanceid
          @PolicyName = policyname
          @PolicyVersion = policyversion
          @Priority = priority
          @Effect = effect
          @Actions = actions
          @Retain = retain
          @Qos = qos
          @Resources = resources
          @Username = username
          @ClientId = clientid
          @Ip = ip
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyName = params['PolicyName']
          @PolicyVersion = params['PolicyVersion']
          @Priority = params['Priority']
          @Effect = params['Effect']
          @Actions = params['Actions']
          @Retain = params['Retain']
          @Qos = params['Qos']
          @Resources = params['Resources']
          @Username = params['Username']
          @ClientId = params['ClientId']
          @Ip = params['Ip']
          @Remark = params['Remark']
        end
      end

      # CreateAuthorizationPolicy返回参数结构体
      class CreateAuthorizationPolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateJWKSAuthenticator请求参数结构体
      class CreateJWKSAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Endpoint: jwks端点
        # @type Endpoint: String
        # @param RefreshInterval: jwks刷新间隔,单位：秒
        # @type RefreshInterval: Integer
        # @param Text: jwks文本
        # @type Text: String
        # @param Status: 认证器是否开启：open-启用；close-关闭
        # @type Status: String
        # @param Remark: 说明
        # @type Remark: String
        # @param From: 设备连接时传递jwt的key；username-使用用户名字段传递；password-使用密码字段传递
        # @type From: String

        attr_accessor :InstanceId, :Endpoint, :RefreshInterval, :Text, :Status, :Remark, :From

        def initialize(instanceid=nil, endpoint=nil, refreshinterval=nil, text=nil, status=nil, remark=nil, from=nil)
          @InstanceId = instanceid
          @Endpoint = endpoint
          @RefreshInterval = refreshinterval
          @Text = text
          @Status = status
          @Remark = remark
          @From = from
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Endpoint = params['Endpoint']
          @RefreshInterval = params['RefreshInterval']
          @Text = params['Text']
          @Status = params['Status']
          @Remark = params['Remark']
          @From = params['From']
        end
      end

      # CreateJWKSAuthenticator返回参数结构体
      class CreateJWKSAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # CreateJWTAuthenticator请求参数结构体
      class CreateJWTAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Algorithm: 算法：hmac-based，public-key
        # @type Algorithm: String
        # @param From: 设备连接时传递jwt的key；username-使用用户名字段传递；password-使用密码字段传递
        # @type From: String
        # @param Secret: 密码
        # @type Secret: String
        # @param PublicKey: 公钥
        # @type PublicKey: String
        # @param Status: 认证器是否开启：open-启用；close-关闭
        # @type Status: String
        # @param Remark: 说明
        # @type Remark: String

        attr_accessor :InstanceId, :Algorithm, :From, :Secret, :PublicKey, :Status, :Remark

        def initialize(instanceid=nil, algorithm=nil, from=nil, secret=nil, publickey=nil, status=nil, remark=nil)
          @InstanceId = instanceid
          @Algorithm = algorithm
          @From = from
          @Secret = secret
          @PublicKey = publickey
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Algorithm = params['Algorithm']
          @From = params['From']
          @Secret = params['Secret']
          @PublicKey = params['PublicKey']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # CreateJWTAuthenticator返回参数结构体
      class CreateJWTAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
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

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuthenticator请求参数结构体
      class DeleteAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 认证器类型
        # @type Type: String

        attr_accessor :InstanceId, :Type

        def initialize(instanceid=nil, type=nil)
          @InstanceId = instanceid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
        end
      end

      # DeleteAuthenticator返回参数结构体
      class DeleteAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuthorizationPolicy请求参数结构体
      class DeleteAuthorizationPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Id: 策略规则id
        # @type Id: Integer

        attr_accessor :InstanceId, :Id

        def initialize(instanceid=nil, id=nil)
          @InstanceId = instanceid
          @Id = id
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Id = params['Id']
        end
      end

      # DeleteAuthorizationPolicy返回参数结构体
      class DeleteAuthorizationPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAuthenticator请求参数结构体
      class DescribeAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 认证器类型
        # @type Type: String

        attr_accessor :InstanceId, :Type

        def initialize(instanceid=nil, type=nil)
          @InstanceId = instanceid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
        end
      end

      # DescribeAuthenticator返回参数结构体
      class DescribeAuthenticatorResponse < TencentCloud::Common::AbstractModel
        # @param Authenticators: 集群认证器列表
        # @type Authenticators: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Authenticators, :RequestId

        def initialize(authenticators=nil, requestid=nil)
          @Authenticators = authenticators
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Authenticators'].nil?
            @Authenticators = []
            params['Authenticators'].each do |i|
              mqttauthenticatoritem_tmp = MQTTAuthenticatorItem.new
              mqttauthenticatoritem_tmp.deserialize(i)
              @Authenticators << mqttauthenticatoritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuthorizationPolicies请求参数结构体
      class DescribeAuthorizationPoliciesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAuthorizationPolicies返回参数结构体
      class DescribeAuthorizationPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则
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
              authorizationpolicyitem_tmp = AuthorizationPolicyItem.new
              authorizationpolicyitem_tmp.deserialize(i)
              @Data << authorizationpolicyitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

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

      # DescribeTopicList请求参数结构体
      class DescribeTopicListRequest < TencentCloud::Common::AbstractModel
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
              mqtttopicitem_tmp = MQTTTopicItem.new
              mqtttopicitem_tmp.deserialize(i)
              @Data << mqtttopicitem_tmp
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

      # DescribeTopic返回参数结构体
      class DescribeTopicResponse < TencentCloud::Common::AbstractModel
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

      # MQTT认证器信息
      class MQTTAuthenticatorItem < TencentCloud::Common::AbstractModel
        # @param Type: 认证器类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Config: 认证器配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: String
        # @param Status: 认证器状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Type, :Config, :Status, :CreateTime, :Remark

        def initialize(type=nil, config=nil, status=nil, createtime=nil, remark=nil)
          @Type = type
          @Config = config
          @Status = status
          @CreateTime = createtime
          @Remark = remark
        end

        def deserialize(params)
          @Type = params['Type']
          @Config = params['Config']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
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

      # ModifyAuthorizationPolicy请求参数结构体
      class ModifyAuthorizationPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Id: 策略
        # @type Id: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param PolicyVersion: 策略版本
        # @type PolicyVersion: Integer
        # @param Priority: 策略优先级，越小越优先
        # @type Priority: Integer
        # @param Effect: allow、deny
        # @type Effect: String
        # @param Actions: connect、pub、sub
        # @type Actions: String
        # @param Resources: 资源
        # @type Resources: String
        # @param Username: 用户名
        # @type Username: String
        # @param Retain: 1.匹配保留消息；2.匹配非保留消息；3.匹配所有消息
        # @type Retain: Integer
        # @param ClientId: 客户端
        # @type ClientId: String
        # @param Ip: ip
        # @type Ip: String
        # @param Qos: 0、1、2
        # @type Qos: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :Id, :InstanceId, :PolicyName, :PolicyVersion, :Priority, :Effect, :Actions, :Resources, :Username, :Retain, :ClientId, :Ip, :Qos, :Remark

        def initialize(id=nil, instanceid=nil, policyname=nil, policyversion=nil, priority=nil, effect=nil, actions=nil, resources=nil, username=nil, retain=nil, clientid=nil, ip=nil, qos=nil, remark=nil)
          @Id = id
          @InstanceId = instanceid
          @PolicyName = policyname
          @PolicyVersion = policyversion
          @Priority = priority
          @Effect = effect
          @Actions = actions
          @Resources = resources
          @Username = username
          @Retain = retain
          @ClientId = clientid
          @Ip = ip
          @Qos = qos
          @Remark = remark
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @PolicyName = params['PolicyName']
          @PolicyVersion = params['PolicyVersion']
          @Priority = params['Priority']
          @Effect = params['Effect']
          @Actions = params['Actions']
          @Resources = params['Resources']
          @Username = params['Username']
          @Retain = params['Retain']
          @ClientId = params['ClientId']
          @Ip = params['Ip']
          @Qos = params['Qos']
          @Remark = params['Remark']
        end
      end

      # ModifyAuthorizationPolicy返回参数结构体
      class ModifyAuthorizationPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyJWKSAuthenticator请求参数结构体
      class ModifyJWKSAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Endpoint: 端点
        # @type Endpoint: String
        # @param Status: 认证器状态：open-启用；close-关闭
        # @type Status: String
        # @param RefreshInterval: 刷新时间
        # @type RefreshInterval: Integer
        # @param Text: JSKS文本
        # @type Text: String
        # @param From: 设备连接时传递jwt的key；username-使用用户名字段传递；password-使用密码字段传递
        # @type From: String
        # @param Remark: 说明
        # @type Remark: String

        attr_accessor :InstanceId, :Endpoint, :Status, :RefreshInterval, :Text, :From, :Remark

        def initialize(instanceid=nil, endpoint=nil, status=nil, refreshinterval=nil, text=nil, from=nil, remark=nil)
          @InstanceId = instanceid
          @Endpoint = endpoint
          @Status = status
          @RefreshInterval = refreshinterval
          @Text = text
          @From = from
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Endpoint = params['Endpoint']
          @Status = params['Status']
          @RefreshInterval = params['RefreshInterval']
          @Text = params['Text']
          @From = params['From']
          @Remark = params['Remark']
        end
      end

      # ModifyJWKSAuthenticator返回参数结构体
      class ModifyJWKSAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # ModifyJWTAuthenticator请求参数结构体
      class ModifyJWTAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Algorithm: 算法：hmac-based，public-key
        # @type Algorithm: String
        # @param From: 设备连接时传递jwt的key；username-使用用户名字段传递；password-使用密码字段传递
        # @type From: String
        # @param Secret: 密码
        # @type Secret: String
        # @param PublicKey: 公钥
        # @type PublicKey: String
        # @param Text: JSKS文本
        # @type Text: String
        # @param Remark: 说明
        # @type Remark: String

        attr_accessor :InstanceId, :Algorithm, :From, :Secret, :PublicKey, :Text, :Remark

        def initialize(instanceid=nil, algorithm=nil, from=nil, secret=nil, publickey=nil, text=nil, remark=nil)
          @InstanceId = instanceid
          @Algorithm = algorithm
          @From = from
          @Secret = secret
          @PublicKey = publickey
          @Text = text
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Algorithm = params['Algorithm']
          @From = params['From']
          @Secret = params['Secret']
          @PublicKey = params['PublicKey']
          @Text = params['Text']
          @Remark = params['Remark']
        end
      end

      # ModifyJWTAuthenticator返回参数结构体
      class ModifyJWTAuthenticatorResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Topic: 主题
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

      # RegisterDeviceCertificate请求参数结构体
      class RegisterDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param DeviceCertificate: 设备证书
        # @type DeviceCertificate: String
        # @param CaSn: 关联的CA证书SN
        # @type CaSn: String
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param Format: 证书格式
        # @type Format: String
        # @param Status:     ACTIVE,//激活     INACTIVE,//未激活     REVOKED,//吊销     PENDING_ACTIVATION,//注册待激活
        # @type Status: String

        attr_accessor :InstanceId, :DeviceCertificate, :CaSn, :ClientId, :Format, :Status

        def initialize(instanceid=nil, devicecertificate=nil, casn=nil, clientid=nil, format=nil, status=nil)
          @InstanceId = instanceid
          @DeviceCertificate = devicecertificate
          @CaSn = casn
          @ClientId = clientid
          @Format = format
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceCertificate = params['DeviceCertificate']
          @CaSn = params['CaSn']
          @ClientId = params['ClientId']
          @Format = params['Format']
          @Status = params['Status']
        end
      end

      # RegisterDeviceCertificate返回参数结构体
      class RegisterDeviceCertificateResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAuthorizationPolicyPriority请求参数结构体
      class UpdateAuthorizationPolicyPriorityRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Priorities: 策略ID和优先级
        # @type Priorities: Array

        attr_accessor :InstanceId, :Priorities

        def initialize(instanceid=nil, priorities=nil)
          @InstanceId = instanceid
          @Priorities = priorities
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Priorities'].nil?
            @Priorities = []
            params['Priorities'].each do |i|
              authorizationpolicypriority_tmp = AuthorizationPolicyPriority.new
              authorizationpolicypriority_tmp.deserialize(i)
              @Priorities << authorizationpolicypriority_tmp
            end
          end
        end
      end

      # UpdateAuthorizationPolicyPriority返回参数结构体
      class UpdateAuthorizationPolicyPriorityResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

