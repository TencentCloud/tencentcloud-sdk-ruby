# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
      # ActivateCaCertificate请求参数结构体
      class ActivateCaCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param CaSn: CA证书的SN序列号，可以从 [DescribeCaCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、证书文件中获得。
        # @type CaSn: String

        attr_accessor :InstanceId, :CaSn

        def initialize(instanceid=nil, casn=nil)
          @InstanceId = instanceid
          @CaSn = casn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaSn = params['CaSn']
        end
      end

      # ActivateCaCertificate返回参数结构体
      class ActivateCaCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ActivateDeviceCertificate请求参数结构体
      class ActivateDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param DeviceCertificateSn: 设备证书的SN序列号，可以从 [DescribeDeviceCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、证书文件中获得。
        # @type DeviceCertificateSn: String

        attr_accessor :InstanceId, :DeviceCertificateSn

        def initialize(instanceid=nil, devicecertificatesn=nil)
          @InstanceId = instanceid
          @DeviceCertificateSn = devicecertificatesn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceCertificateSn = params['DeviceCertificateSn']
        end
      end

      # ActivateDeviceCertificate返回参数结构体
      class ActivateDeviceCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ApplyRegistrationCode请求参数结构体
      class ApplyRegistrationCodeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ApplyRegistrationCode返回参数结构体
      class ApplyRegistrationCodeResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param RegistrationCode: 注册码
        # @type RegistrationCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RegistrationCode, :RequestId

        def initialize(instanceid=nil, registrationcode=nil, requestid=nil)
          @InstanceId = instanceid
          @RegistrationCode = registrationcode
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RegistrationCode = params['RegistrationCode']
          @RequestId = params['RequestId']
        end
      end

      # AuthorizationPolicyItem
      class AuthorizationPolicyItem < TencentCloud::Common::AbstractModel
        # @param Id: 策略规则ID
        # @type Id: Integer
        # @param InstanceId: MQTT集群ID
        # @type InstanceId: String
        # @param PolicyName: 策略规则名
        # @type PolicyName: String
        # @param Version: 规则语法版本，当前仅支持1，默认为1
        # @type Version: Integer
        # @param Priority: 策略优先级，优先级ID越小表示策略越优先检查生效。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Priority: Integer
        # @param Effect: 决策
        # allow：允许符合该策略的设备的访问请求。
        # deny：拒绝覆盖该策略的设备的访问请求。
        # 可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Effect: String
        # @param Actions: 操作
        # connect：连接
        # pub：发布mqtt消息
        # sub：订阅mqtt消息
        # 可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Actions: String
        # @param Resources: 资源，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Resources: String
        # @param ClientId: 条件-连接设备ID，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type ClientId: String
        # @param Username: 条件-用户名，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Username: String
        # @param Ip: 条件-客户端IP地址，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Ip: String
        # @param Qos: 条件-服务质量，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Qos: String
        # @param Retain: 条件-保留消息，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # 1：表示匹配retain消息
        # 2：表示匹配非retain消息
        # 3：表示匹配retain和非retain消息
        # @type Retain: Integer
        # @param Remark: 备注，长度不超过128个字符。
        # @type Remark: String
        # @param CreatedTime: 创建时间。毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param UpdateTime: 更新时间。毫秒级时间戳 。
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
        # @param Id: 授权策略规则id，可以从 [DescribeAuthorizationPolicies](https://cloud.tencent.com/document/api/1778/111074)接口获得。
        # @type Id: Integer
        # @param Priority: 优先级
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

      # HTTP 认证器body
      class BodyItem < TencentCloud::Common::AbstractModel
        # @param Key: body key
        # @type Key: String
        # @param Value: body key
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

      # CA证书信息
      class CaCertificateItem < TencentCloud::Common::AbstractModel
        # @param CaCn: 证书的公用名(Common Name)
        # @type CaCn: String
        # @param CaCertificate: 证书内容
        # @type CaCertificate: String
        # @param CaSn: 证书序列号
        # @type CaSn: String
        # @param Format: 证书格式，当前仅支持 PEM 格式
        # @type Format: String
        # @param VerificationCertificate: 验证证书内容
        # @type VerificationCertificate: String
        # @param Status: CA证书的状态
        #     ACTIVE：激活
        #     INACTIVE：未激活
        #     REVOKED：吊销
        #     PENDING_ACTIVATION：注册待激活
        # @type Status: String
        # @param LastActivationTime: 上次激活时间，毫秒级时间戳 。
        # @type LastActivationTime: Integer
        # @param CreatedTime: 创建时间，毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param UpdateTime: 更新时间，毫秒级时间戳 。
        # @type UpdateTime: Integer
        # @param LastInactivationTime: 上次去激活时间，毫秒级时间戳 。
        # @type LastInactivationTime: Integer
        # @param CaIssuerCn: Ca证书颁发者CN
        # @type CaIssuerCn: String
        # @param NotBeforeTime: 生效时间，毫秒级时间戳 。
        # @type NotBeforeTime: Integer
        # @param NotAfterTime: 失效时间，毫秒级时间戳 。
        # @type NotAfterTime: Integer

        attr_accessor :CaCn, :CaCertificate, :CaSn, :Format, :VerificationCertificate, :Status, :LastActivationTime, :CreatedTime, :UpdateTime, :LastInactivationTime, :CaIssuerCn, :NotBeforeTime, :NotAfterTime

        def initialize(cacn=nil, cacertificate=nil, casn=nil, format=nil, verificationcertificate=nil, status=nil, lastactivationtime=nil, createdtime=nil, updatetime=nil, lastinactivationtime=nil, caissuercn=nil, notbeforetime=nil, notaftertime=nil)
          @CaCn = cacn
          @CaCertificate = cacertificate
          @CaSn = casn
          @Format = format
          @VerificationCertificate = verificationcertificate
          @Status = status
          @LastActivationTime = lastactivationtime
          @CreatedTime = createdtime
          @UpdateTime = updatetime
          @LastInactivationTime = lastinactivationtime
          @CaIssuerCn = caissuercn
          @NotBeforeTime = notbeforetime
          @NotAfterTime = notaftertime
        end

        def deserialize(params)
          @CaCn = params['CaCn']
          @CaCertificate = params['CaCertificate']
          @CaSn = params['CaSn']
          @Format = params['Format']
          @VerificationCertificate = params['VerificationCertificate']
          @Status = params['Status']
          @LastActivationTime = params['LastActivationTime']
          @CreatedTime = params['CreatedTime']
          @UpdateTime = params['UpdateTime']
          @LastInactivationTime = params['LastInactivationTime']
          @CaIssuerCn = params['CaIssuerCn']
          @NotBeforeTime = params['NotBeforeTime']
          @NotAfterTime = params['NotAfterTime']
        end
      end

      # CreateAuthorizationPolicy请求参数结构体
      class CreateAuthorizationPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param PolicyName: 策略名称，不能为空，3-64个字符，支持中文、字母、数字、“-”及“_”。
        # @type PolicyName: String
        # @param PolicyVersion: 策略版本,默认为1，当前仅支持1
        # @type PolicyVersion: Integer
        # @param Priority: 策略优先级，越小越优先，不能重复，优先级ID越小表示策略越优先检查生效。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Priority: Integer
        # @param Effect: 决策：
        # allow：允许符合该策略的设备的访问请求。
        # deny：拒绝覆盖该策略的设备的访问请求。
        # 可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Effect: String
        # @param Actions: 操作,支持多选，多个操作用英文逗号隔开。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # connect：连接
        # pub：发布
        # sub：订阅
        # @type Actions: String
        # @param Retain: 条件-保留消息，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # 1,匹配保留消息；
        # 2,匹配非保留消息，
        # 3.匹配保留和非保留消息
        # @type Retain: Integer
        # @param Qos: 条件：服务质量
        # 0：最多一次
        # 1：最少一次
        # 2：精确一次
        # 可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Qos: String
        # @param Resources: 资源，需要匹配的订阅，支持配置多条匹配规则，多个用英文逗号隔开。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Resources: String
        # @param Username: 条件-用户名
        # @type Username: String
        # @param ClientId: 条件：客户端ID，支持正则
        # @type ClientId: String
        # @param Ip: 条件：客户端IP地址，支持IP或者CIDR，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Ip: String
        # @param Remark: 备注信息，最长 128 字符
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
        # @param InstanceId: 集群Id
        # @type InstanceId: String
        # @param Id: 策略id
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Id, :RequestId

        def initialize(instanceid=nil, id=nil, requestid=nil)
          @InstanceId = instanceid
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateHttpAuthenticator请求参数结构体
      class CreateHttpAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Endpoint: jwks服务地址
        # @type Endpoint: String
        # @param Concurrency: 最大并发连接数，默认8，范围：1-10
        # @type Concurrency: Integer
        # @param Method: 网络请求方法 GET 或 POST，默认POST
        # @type Method: String
        # @param Status: 认证器是否开启：open-启用；close-关闭，默认open-启用
        # @type Status: String
        # @param Remark: 说明，最多支持128个字符。
        # @type Remark: String
        # @param ConnectTimeout: 连接超时时间，单位：秒，范围：1-30
        # @type ConnectTimeout: Integer
        # @param ReadTimeout: 请求超时时间，单位：秒，范围：1-30
        # @type ReadTimeout: Integer
        # @param Header: 转发请求header
        # @type Header: Array
        # @param Body: 转发请求body
        # @type Body: Array

        attr_accessor :InstanceId, :Endpoint, :Concurrency, :Method, :Status, :Remark, :ConnectTimeout, :ReadTimeout, :Header, :Body

        def initialize(instanceid=nil, endpoint=nil, concurrency=nil, method=nil, status=nil, remark=nil, connecttimeout=nil, readtimeout=nil, header=nil, body=nil)
          @InstanceId = instanceid
          @Endpoint = endpoint
          @Concurrency = concurrency
          @Method = method
          @Status = status
          @Remark = remark
          @ConnectTimeout = connecttimeout
          @ReadTimeout = readtimeout
          @Header = header
          @Body = body
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Endpoint = params['Endpoint']
          @Concurrency = params['Concurrency']
          @Method = params['Method']
          @Status = params['Status']
          @Remark = params['Remark']
          @ConnectTimeout = params['ConnectTimeout']
          @ReadTimeout = params['ReadTimeout']
          unless params['Header'].nil?
            @Header = []
            params['Header'].each do |i|
              headeritem_tmp = HeaderItem.new
              headeritem_tmp.deserialize(i)
              @Header << headeritem_tmp
            end
          end
          unless params['Body'].nil?
            @Body = []
            params['Body'].each do |i|
              bodyitem_tmp = BodyItem.new
              bodyitem_tmp.deserialize(i)
              @Body << bodyitem_tmp
            end
          end
        end
      end

      # CreateHttpAuthenticator返回参数结构体
      class CreateHttpAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # CreateInsPublicEndpoint请求参数结构体
      class CreateInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Bandwidth: 带宽,单位Mbps
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

      # CreateInsPublicEndpoint返回参数结构体
      class CreateInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，需要和SkuCode保持对应关系，可参考 [获取MQTT产品售卖规格](https://cloud.tencent.com/document/api/1778/116232) 接口获取。
        # BASIC 基础版
        # PRO  专业版
        # PLATINUM 铂金版
        # @type InstanceType: String
        # @param Name: 集群名称不能为空, 3-64个字符，只能包含数字、字母、“-”和“_”。
        # @type Name: String
        # @param SkuCode: 商品规格，需要和InstanceType保持对应关系，可参考 [获取MQTT产品售卖规格](https://cloud.tencent.com/document/api/1778/116232) 接口获取。
        # @type SkuCode: String
        # @param Remark: 备注信息，最长 128 字符
        # @type Remark: String
        # @param TagList: 标签列表
        # @type TagList: Array
        # @param VpcList: 实例绑定的VPC信息，需要传当前用户下可用的VPC和SUBNET
        # @type VpcList: Array
        # @param EnablePublic: 是否开启公网，默认false（关闭）
        # @type EnablePublic: Boolean
        # @param Bandwidth: 公网带宽（单位：Mbps），EnablePublic 为True时，该字段必须填写且大于0.
        # @type Bandwidth: Integer
        # @param IpRules: 公网访问白名单，不传表示拒绝所有IP网络访问。
        # @type IpRules: Array
        # @param RenewFlag: 是否自动续费（0: 不自动续费；1: 自动续费），仅购买预付费集群时生效。默认1:自动续费
        # @type RenewFlag: Integer
        # @param TimeSpan: 购买时长（单位：月），购买预付费集群时生效，默认1m（月）。可选范围：1~12、24、36、48、60；
        # @type TimeSpan: Integer
        # @param PayMode: 付费模式（0: 后付费；1: 预付费），默认0（后付费）。
        # @type PayMode: Integer

        attr_accessor :InstanceType, :Name, :SkuCode, :Remark, :TagList, :VpcList, :EnablePublic, :Bandwidth, :IpRules, :RenewFlag, :TimeSpan, :PayMode

        def initialize(instancetype=nil, name=nil, skucode=nil, remark=nil, taglist=nil, vpclist=nil, enablepublic=nil, bandwidth=nil, iprules=nil, renewflag=nil, timespan=nil, paymode=nil)
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
          @PayMode = paymode
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
          @PayMode = params['PayMode']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # CreateJWKSAuthenticator请求参数结构体
      class CreateJWKSAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Endpoint: JWKS服务地址，（Text字段和Endpoint字段必须选择一个填写）
        # @type Endpoint: String
        # @param RefreshInterval: 认证文本刷新间隔时间，单位：秒，最小值60，默认值60，最大值1000。填写认证服务器地址（Endpoint）时生效。
        # @type RefreshInterval: Integer
        # @param Text: jwks文本，（Text字段和Endpoint字段必须选择一个填写）
        # @type Text: String
        # @param Status: 认证器是否开启：open-启用；close-关闭，默认open-启用
        # @type Status: String
        # @param Remark: 说明，不能超过 128 个字符
        # @type Remark: String
        # @param From: 认证字段；
        # username-对应 MQTT CONNECT Packet 中 username 字段，
        # password-对应 MQTT CONNECT Packet 中 password 字段。

        # 默认username
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Algorithm: 签名方式：hmac-based，public-key
        # @type Algorithm: String
        # @param From: 认证字段
        # password：对应 MQTT CONNECT Packet 中 password 字段，
        # username：对应 MQTT CONNECT Packet 中 username 字段
        # 默认username
        # @type From: String
        # @param Secret: 密钥，Algorithm为hmac-based需要传递该字段。
        # @type Secret: String
        # @param PublicKey: 公钥，Algorithm为public-key时需要传递该字段。
        # @type PublicKey: String
        # @param Status: 认证器是否开启：open-启用；close-关闭，默认：open-启用
        # @type Status: String
        # @param Remark: 说明，不能超过 128 个字符。
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Topic: 主题，不能为空，只能包含字母、数字、“-”及“_”，3-100 字符。
        # @type Topic: String
        # @param Remark: 备注，最长 128 字符
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

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Username: 用户名，不能为空，只支持数字 大小写字母 分隔符("_","-")，不能超过 32 个字符
        # @type Username: String
        # @param Password: 密码，该字段为空时候则后端会默认生成。用户自定义密码时，不能为空，只支持数字 大小写字母 分隔符("_","-")，不能超过 64 个字符。
        # @type Password: String
        # @param Remark: 备注，长度不超过128个字符。
        # @type Remark: String

        attr_accessor :InstanceId, :Username, :Password, :Remark

        def initialize(instanceid=nil, username=nil, password=nil, remark=nil)
          @InstanceId = instanceid
          @Username = username
          @Password = password
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Username = params['Username']
          @Password = params['Password']
          @Remark = params['Remark']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
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

      # DeactivateCaCertificate请求参数结构体
      class DeactivateCaCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param CaSn: 证书序列号，可以从 [DescribeCaCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、证书文件中获得。
        # @type CaSn: String

        attr_accessor :InstanceId, :CaSn

        def initialize(instanceid=nil, casn=nil)
          @InstanceId = instanceid
          @CaSn = casn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaSn = params['CaSn']
        end
      end

      # DeactivateCaCertificate返回参数结构体
      class DeactivateCaCertificateResponse < TencentCloud::Common::AbstractModel
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

      # DeactivateDeviceCertificate请求参数结构体
      class DeactivateDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param DeviceCertificateSn: 设备证书的SN序列号，可以从 [DescribeDeviceCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、设备证书文件中获得。
        # @type DeviceCertificateSn: String

        attr_accessor :InstanceId, :DeviceCertificateSn

        def initialize(instanceid=nil, devicecertificatesn=nil)
          @InstanceId = instanceid
          @DeviceCertificateSn = devicecertificatesn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceCertificateSn = params['DeviceCertificateSn']
        end
      end

      # DeactivateDeviceCertificate返回参数结构体
      class DeactivateDeviceCertificateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuthenticator请求参数结构体
      class DeleteAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Type: 认证器类型:
        # JWT：JWT认证器
        # JWKS：JWKS认证器
        # HTTP：HTTP认证器
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Id: 授权策略规则id，可以从 [DescribeAuthorizationPolicies](https://cloud.tencent.com/document/api/1778/111074)接口获得。
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

      # DeleteCaCertificate请求参数结构体
      class DeleteCaCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param CaSn: CA证书序列号，可以从 [DescribeCaCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、证书文件中获得。
        # @type CaSn: String

        attr_accessor :InstanceId, :CaSn

        def initialize(instanceid=nil, casn=nil)
          @InstanceId = instanceid
          @CaSn = casn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaSn = params['CaSn']
        end
      end

      # DeleteCaCertificate返回参数结构体
      class DeleteCaCertificateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceCertificate请求参数结构体
      class DeleteDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param DeviceCertificateSn: 设备证书序列号
        # @type DeviceCertificateSn: String

        attr_accessor :InstanceId, :DeviceCertificateSn

        def initialize(instanceid=nil, devicecertificatesn=nil)
          @InstanceId = instanceid
          @DeviceCertificateSn = devicecertificatesn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceCertificateSn = params['DeviceCertificateSn']
        end
      end

      # DeleteDeviceCertificate返回参数结构体
      class DeleteDeviceCertificateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInsPublicEndpoint请求参数结构体
      class DeleteInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInsPublicEndpoint返回参数结构体
      class DeleteInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
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

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
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

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Type: 认证器类型:
        # JWT：JWT认证器
        # JWKS：JWKS认证器
        # HTTP：HTTP认证器
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
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

      # DescribeCaCertificate请求参数结构体
      class DescribeCaCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CaSn: CA证书的SN序列号，可以从 [DescribeCaCertificates](https://cloud.tencent.com/document/api/1778/116206)接口、控制台、证书文件中获得。
        # @type CaSn: String
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :CaSn, :InstanceId

        def initialize(casn=nil, instanceid=nil)
          @CaSn = casn
          @InstanceId = instanceid
        end

        def deserialize(params)
          @CaSn = params['CaSn']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCaCertificate返回参数结构体
      class DescribeCaCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CreatedTime: 创建时间，毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param UpdateTime: 上次更新时间，毫秒级时间戳 。
        # @type UpdateTime: Integer
        # @param NotAfterTime: 失效日期，毫秒级时间戳 。
        # @type NotAfterTime: Integer
        # @param LastActivationTime: 上次激活时间，毫秒级时间戳 。
        # @type LastActivationTime: Integer
        # @param LastInactivationTime: 上次吊销时间，毫秒级时间戳 。
        # @type LastInactivationTime: Integer
        # @param Status: CA证书状态
        #  ACTIVE：激活
        # INACTIVE：未激活
        # @type Status: String
        # @param CaSn: 证书序列号
        # @type CaSn: String
        # @param CaCn: 证书的CN（Common Name），证书中用于标识主体的名称，通常是域名或组织名称
        # @type CaCn: String
        # @param CaCertificate: 证书内容
        # @type CaCertificate: String
        # @param Format: 证书格式，当仅支持PEM格式
        # @type Format: String
        # @param CaIssuerCn: Ca证书颁发者CN
        # @type CaIssuerCn: String
        # @param NotBeforeTime: 生效开始时间，毫秒级时间戳 。
        # @type NotBeforeTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreatedTime, :UpdateTime, :NotAfterTime, :LastActivationTime, :LastInactivationTime, :Status, :CaSn, :CaCn, :CaCertificate, :Format, :CaIssuerCn, :NotBeforeTime, :RequestId

        def initialize(createdtime=nil, updatetime=nil, notaftertime=nil, lastactivationtime=nil, lastinactivationtime=nil, status=nil, casn=nil, cacn=nil, cacertificate=nil, format=nil, caissuercn=nil, notbeforetime=nil, requestid=nil)
          @CreatedTime = createdtime
          @UpdateTime = updatetime
          @NotAfterTime = notaftertime
          @LastActivationTime = lastactivationtime
          @LastInactivationTime = lastinactivationtime
          @Status = status
          @CaSn = casn
          @CaCn = cacn
          @CaCertificate = cacertificate
          @Format = format
          @CaIssuerCn = caissuercn
          @NotBeforeTime = notbeforetime
          @RequestId = requestid
        end

        def deserialize(params)
          @CreatedTime = params['CreatedTime']
          @UpdateTime = params['UpdateTime']
          @NotAfterTime = params['NotAfterTime']
          @LastActivationTime = params['LastActivationTime']
          @LastInactivationTime = params['LastInactivationTime']
          @Status = params['Status']
          @CaSn = params['CaSn']
          @CaCn = params['CaCn']
          @CaCertificate = params['CaCertificate']
          @Format = params['Format']
          @CaIssuerCn = params['CaIssuerCn']
          @NotBeforeTime = params['NotBeforeTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaCertificates请求参数结构体
      class DescribeCaCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCaCertificates返回参数结构体
      class DescribeCaCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: ca证书列表
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
              cacertificateitem_tmp = CaCertificateItem.new
              cacertificateitem_tmp.deserialize(i)
              @Data << cacertificateitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientList请求参数结构体
      class DescribeClientListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param Number: 客户端数量限制,最大1024，默认1024
        # @type Number: String

        attr_accessor :InstanceId, :ClientId, :Number

        def initialize(instanceid=nil, clientid=nil, number=nil)
          @InstanceId = instanceid
          @ClientId = clientid
          @Number = number
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClientId = params['ClientId']
          @Number = params['Number']
        end
      end

      # DescribeClientList返回参数结构体
      class DescribeClientListResponse < TencentCloud::Common::AbstractModel
        # @param Clients: 客户端列表
        # @type Clients: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Clients, :RequestId

        def initialize(clients=nil, requestid=nil)
          @Clients = clients
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Clients'].nil?
            @Clients = []
            params['Clients'].each do |i|
              mqttclientinfo_tmp = MQTTClientInfo.new
              mqttclientinfo_tmp.deserialize(i)
              @Clients << mqttclientinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceCertificate请求参数结构体
      class DescribeDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param DeviceCertificateSn: 设备证书的SN序列号，用于唯一标识一个设备证书。
        # @type DeviceCertificateSn: String
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :DeviceCertificateSn, :InstanceId

        def initialize(devicecertificatesn=nil, instanceid=nil)
          @DeviceCertificateSn = devicecertificatesn
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DeviceCertificateSn = params['DeviceCertificateSn']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDeviceCertificate返回参数结构体
      class DescribeDeviceCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CreatedTime: 创建时间，毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param UpdateTime: 上次更新时间，毫秒级时间戳 。
        # @type UpdateTime: Integer
        # @param NotAfterTime: 证书失效日期，毫秒级时间戳 。
        # @type NotAfterTime: Integer
        # @param LastActivationTime: 上次激活时间，毫秒级时间戳 。
        # @type LastActivationTime: Integer
        # @param LastInactivationTime: 上次取消激活时间，毫秒级时间戳 。
        # @type LastInactivationTime: Integer
        # @param Status: 设备证书的状态
        #     ACTIVE：激活
        #     INACTIVE：未激活
        #     REVOKED：吊销
        #     PENDING_ACTIVATION：注册待激活
        # @type Status: String
        # @param CaSn: Ca证书序列号
        # @type CaSn: String
        # @param DeviceCertificateSn: 设备证书序列号
        # @type DeviceCertificateSn: String
        # @param DeviceCertificate: 设备证书内容
        # @type DeviceCertificate: String
        # @param DeviceCertificateCn: 设备证书common name
        # @type DeviceCertificateCn: String
        # @param Format: 证书格式，当前仅支持PEM格式
        # @type Format: String
        # @param ClientId: 客户端id
        # @type ClientId: String
        # @param CertificateSource: 证书来源
        # API：手动注册
        # JITP：自动注册
        # @type CertificateSource: String
        # @param NotBeforeTime: 证书生效开始时间，毫秒级时间戳 。
        # @type NotBeforeTime: Integer
        # @param OrganizationalUnit: 组织单位
        # @type OrganizationalUnit: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreatedTime, :UpdateTime, :NotAfterTime, :LastActivationTime, :LastInactivationTime, :Status, :CaSn, :DeviceCertificateSn, :DeviceCertificate, :DeviceCertificateCn, :Format, :ClientId, :CertificateSource, :NotBeforeTime, :OrganizationalUnit, :RequestId

        def initialize(createdtime=nil, updatetime=nil, notaftertime=nil, lastactivationtime=nil, lastinactivationtime=nil, status=nil, casn=nil, devicecertificatesn=nil, devicecertificate=nil, devicecertificatecn=nil, format=nil, clientid=nil, certificatesource=nil, notbeforetime=nil, organizationalunit=nil, requestid=nil)
          @CreatedTime = createdtime
          @UpdateTime = updatetime
          @NotAfterTime = notaftertime
          @LastActivationTime = lastactivationtime
          @LastInactivationTime = lastinactivationtime
          @Status = status
          @CaSn = casn
          @DeviceCertificateSn = devicecertificatesn
          @DeviceCertificate = devicecertificate
          @DeviceCertificateCn = devicecertificatecn
          @Format = format
          @ClientId = clientid
          @CertificateSource = certificatesource
          @NotBeforeTime = notbeforetime
          @OrganizationalUnit = organizationalunit
          @RequestId = requestid
        end

        def deserialize(params)
          @CreatedTime = params['CreatedTime']
          @UpdateTime = params['UpdateTime']
          @NotAfterTime = params['NotAfterTime']
          @LastActivationTime = params['LastActivationTime']
          @LastInactivationTime = params['LastInactivationTime']
          @Status = params['Status']
          @CaSn = params['CaSn']
          @DeviceCertificateSn = params['DeviceCertificateSn']
          @DeviceCertificate = params['DeviceCertificate']
          @DeviceCertificateCn = params['DeviceCertificateCn']
          @Format = params['Format']
          @ClientId = params['ClientId']
          @CertificateSource = params['CertificateSource']
          @NotBeforeTime = params['NotBeforeTime']
          @OrganizationalUnit = params['OrganizationalUnit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceCertificates请求参数结构体
      class DescribeDeviceCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Filters: 支持搜索参数
        # ClientId：客户端id，根据实际业务使用获取
        # CaSn：所属的CA证书SN序列号 可以从 [查询集群CA证书列表](https://cloud.tencent.com/document/api/1778/116206) 或者实际业务使用获取
        # DeviceCertificateSn：设备证书SN序列号 可从[查询设备证书详情](https://cloud.tencent.com/document/api/1778/113748) 获取
        # DeviceCertificateCn：设备证书CN 可从[查询设备证书详情](https://cloud.tencent.com/document/api/1778/113748) 获取
        # OrganizationalUnit：证书OU
        # NotAfterEnd：过期时间小于等于指定时间的证书
        # NotAfterStart：过期时间大于等于指定时间的证书
        # Status：设备证书状态     ACTIVE（激活）； INACTIVE（未激活）REVOKED（吊销）；PENDING_ACTIVATION（注册待激活）
        # @type Filters: Array
        # @param Limit: 分页limit，默认20，最大100
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认0
        # @type Offset: Integer
        # @param OrderBy: 排序规则
        #     CREATE_TIME_DESC, 创建时间降序
        #     CREATE_TIME_ASC,创建时间升序
        #     UPDATE_TIME_DESC,更新时间降序
        #     UPDATE_TIME_ASC,更新时间升序
        # @type OrderBy: String

        attr_accessor :InstanceId, :Filters, :Limit, :Offset, :OrderBy

        def initialize(instanceid=nil, filters=nil, limit=nil, offset=nil, orderby=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
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
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeDeviceCertificates返回参数结构体
      class DescribeDeviceCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 设备证书列表
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
              devicecertificateitem_tmp = DeviceCertificateItem.new
              devicecertificateitem_tmp.deserialize(i)
              @Data << devicecertificateitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInsPublicEndpoints请求参数结构体
      class DescribeInsPublicEndpointsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInsPublicEndpoints返回参数结构体
      class DescribeInsPublicEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param Endpoints: 接入点
        # @type Endpoints: Array
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Bandwidth: 带宽，单位Mbps
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

      # DescribeInsVPCEndpoints请求参数结构体
      class DescribeInsVPCEndpointsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInsVPCEndpoints返回参数结构体
      class DescribeInsVPCEndpointsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件列表,支持以下字段
        # InstanceName：集群名模糊搜索
        # InstanceId：集群id精确搜索
        # InstanceStatus：集群状态搜索（RUNNING-运行中，CREATING-创建中，MODIFYING-变配中，DELETING-删除中）
        # 注意：配置TagFilters时该查询条件不生效。
        # @type Filters: Array
        # @param Offset: 查询起始位置，默认0
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量，默认20，最大100
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
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
        # @param InstanceType: 实例类型
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
        # @param InstanceStatus: 实例状态， RUNNING, 运行中 MAINTAINING，维护中 ABNORMAL，异常 OVERDUE，欠费 DESTROYED，已删除 CREATING，创建中 MODIFYING，变配中 CREATE_FAILURE，创建失败 MODIFY_FAILURE，变配失败 DELETING，删除中
        # @type InstanceStatus: String
        # @param SkuCode: 实例规格
        # @type SkuCode: String
        # @param MaxSubscriptionPerClient: 单客户端最大订阅数
        # @type MaxSubscriptionPerClient: Integer
        # @param AuthorizationPolicyLimit: 授权规则条数
        # @type AuthorizationPolicyLimit: Integer
        # @param ClientNumLimit: 客户端数量上限
        # @type ClientNumLimit: Integer
        # @param DeviceCertificateProvisionType: 客户端证书注册方式：
        # JITP：自动注册
        # API：通过API手动注册
        # @type DeviceCertificateProvisionType: String
        # @param AutomaticActivation: 自动注册设备证书时是否自动激活
        # @type AutomaticActivation: Boolean
        # @param RenewFlag: 是否自动续费。仅包年包月集群生效。 1:自动续费 0:非自动续费
        # @type RenewFlag: Integer
        # @param PayMode: 计费模式， POSTPAID，按量计费 PREPAID，包年包月
        # @type PayMode: String
        # @param ExpiryTime: 到期时间，毫秒级时间戳
        # @type ExpiryTime: Integer
        # @param DestroyTime: 预销毁时间，毫秒级时间戳
        # @type DestroyTime: Integer
        # @param X509Mode: TLS,单向认证    mTLS,双向认证    BYOC;一机一证
        # @type X509Mode: String
        # @param MaxCaNum: 最大Ca配额
        # @type MaxCaNum: Integer
        # @param RegistrationCode: 证书注册码
        # @type RegistrationCode: String
        # @param MaxSubscription: 集群最大订阅数
        # @type MaxSubscription: Integer
        # @param AuthorizationPolicy: 授权策略开关
        # @type AuthorizationPolicy: Boolean
        # @param SharedSubscriptionGroupLimit: 共享订阅组数最大限制
        # @type SharedSubscriptionGroupLimit: Integer
        # @param MaxTopicFilterPerSharedSubscriptionGroup: 单个共享订阅组TopicFilter数限制
        # @type MaxTopicFilterPerSharedSubscriptionGroup: Integer
        # @param AutoSubscriptionPolicyLimit: 自动订阅规则条数限制
        # @type AutoSubscriptionPolicyLimit: Integer
        # @param MaxTopicFilterPerAutoSubscriptionPolicy: 单条自动订阅规则TopicFilter数限制
        # @type MaxTopicFilterPerAutoSubscriptionPolicy: Integer
        # @param UseDefaultServerCert: 是否使用默认的服务端证书
        # @type UseDefaultServerCert: Boolean
        # @param TrustedCaLimit: 服务端CA最大数量
        # @type TrustedCaLimit: Integer
        # @param ServerCertLimit: 服务端证书最大数量
        # @type ServerCertLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName, :TopicNum, :TopicNumLimit, :TpsLimit, :CreatedTime, :Remark, :InstanceStatus, :SkuCode, :MaxSubscriptionPerClient, :AuthorizationPolicyLimit, :ClientNumLimit, :DeviceCertificateProvisionType, :AutomaticActivation, :RenewFlag, :PayMode, :ExpiryTime, :DestroyTime, :X509Mode, :MaxCaNum, :RegistrationCode, :MaxSubscription, :AuthorizationPolicy, :SharedSubscriptionGroupLimit, :MaxTopicFilterPerSharedSubscriptionGroup, :AutoSubscriptionPolicyLimit, :MaxTopicFilterPerAutoSubscriptionPolicy, :UseDefaultServerCert, :TrustedCaLimit, :ServerCertLimit, :RequestId

        def initialize(instancetype=nil, instanceid=nil, instancename=nil, topicnum=nil, topicnumlimit=nil, tpslimit=nil, createdtime=nil, remark=nil, instancestatus=nil, skucode=nil, maxsubscriptionperclient=nil, authorizationpolicylimit=nil, clientnumlimit=nil, devicecertificateprovisiontype=nil, automaticactivation=nil, renewflag=nil, paymode=nil, expirytime=nil, destroytime=nil, x509mode=nil, maxcanum=nil, registrationcode=nil, maxsubscription=nil, authorizationpolicy=nil, sharedsubscriptiongrouplimit=nil, maxtopicfilterpersharedsubscriptiongroup=nil, autosubscriptionpolicylimit=nil, maxtopicfilterperautosubscriptionpolicy=nil, usedefaultservercert=nil, trustedcalimit=nil, servercertlimit=nil, requestid=nil)
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
          @AuthorizationPolicy = authorizationpolicy
          @SharedSubscriptionGroupLimit = sharedsubscriptiongrouplimit
          @MaxTopicFilterPerSharedSubscriptionGroup = maxtopicfilterpersharedsubscriptiongroup
          @AutoSubscriptionPolicyLimit = autosubscriptionpolicylimit
          @MaxTopicFilterPerAutoSubscriptionPolicy = maxtopicfilterperautosubscriptionpolicy
          @UseDefaultServerCert = usedefaultservercert
          @TrustedCaLimit = trustedcalimit
          @ServerCertLimit = servercertlimit
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
          @AuthorizationPolicy = params['AuthorizationPolicy']
          @SharedSubscriptionGroupLimit = params['SharedSubscriptionGroupLimit']
          @MaxTopicFilterPerSharedSubscriptionGroup = params['MaxTopicFilterPerSharedSubscriptionGroup']
          @AutoSubscriptionPolicyLimit = params['AutoSubscriptionPolicyLimit']
          @MaxTopicFilterPerAutoSubscriptionPolicy = params['MaxTopicFilterPerAutoSubscriptionPolicy']
          @UseDefaultServerCert = params['UseDefaultServerCert']
          @TrustedCaLimit = params['TrustedCaLimit']
          @ServerCertLimit = params['ServerCertLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageByTopic请求参数结构体
      class DescribeMessageByTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Topic: home/room
        # @type Topic: String
        # @param StartTime: 开始时间，毫秒级时间戳 。
        # @type StartTime: Integer
        # @param MaxNumber: 查询消息条数，最大1024，默认100.
        # @type MaxNumber: Integer

        attr_accessor :InstanceId, :Topic, :StartTime, :MaxNumber

        def initialize(instanceid=nil, topic=nil, starttime=nil, maxnumber=nil)
          @InstanceId = instanceid
          @Topic = topic
          @StartTime = starttime
          @MaxNumber = maxnumber
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @StartTime = params['StartTime']
          @MaxNumber = params['MaxNumber']
        end
      end

      # DescribeMessageByTopic返回参数结构体
      class DescribeMessageByTopicResponse < TencentCloud::Common::AbstractModel
        # @param Data: 消息列表
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
              mqttmessage_tmp = MQTTMessage.new
              mqttmessage_tmp.deserialize(i)
              @Data << mqttmessage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageDetails请求参数结构体
      class DescribeMessageDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param MessageId: 消息ID
        # @type MessageId: String
        # @param Subscription: 订阅表达式
        # @type Subscription: String

        attr_accessor :InstanceId, :MessageId, :Subscription

        def initialize(instanceid=nil, messageid=nil, subscription=nil)
          @InstanceId = instanceid
          @MessageId = messageid
          @Subscription = subscription
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MessageId = params['MessageId']
          @Subscription = params['Subscription']
        end
      end

      # DescribeMessageDetails返回参数结构体
      class DescribeMessageDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Body: 消息体
        # @type Body: String
        # @param UserProperties: 用户自定义属性
        # @type UserProperties: Array
        # @param StoreTimestamp: 消息存储时间，毫秒级时间戳。
        # @type StoreTimestamp: Integer
        # @param MessageId: 消息ID
        # @type MessageId: String
        # @param ClientId: 生产者地址
        # @type ClientId: String
        # @param Qos: Topic
        # @type Qos: String
        # @param OriginTopic: 源topic
        # @type OriginTopic: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Body, :UserProperties, :StoreTimestamp, :MessageId, :ClientId, :Qos, :OriginTopic, :RequestId

        def initialize(body=nil, userproperties=nil, storetimestamp=nil, messageid=nil, clientid=nil, qos=nil, origintopic=nil, requestid=nil)
          @Body = body
          @UserProperties = userproperties
          @StoreTimestamp = storetimestamp
          @MessageId = messageid
          @ClientId = clientid
          @Qos = qos
          @OriginTopic = origintopic
          @RequestId = requestid
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['UserProperties'].nil?
            @UserProperties = []
            params['UserProperties'].each do |i|
              userproperty_tmp = UserProperty.new
              userproperty_tmp.deserialize(i)
              @UserProperties << userproperty_tmp
            end
          end
          @StoreTimestamp = params['StoreTimestamp']
          @MessageId = params['MessageId']
          @ClientId = params['ClientId']
          @Qos = params['Qos']
          @OriginTopic = params['OriginTopic']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageList请求参数结构体
      class DescribeMessageListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Topic: 要查询的一级Topic，可从 [查询MQTT主题列表](https://cloud.tencent.com/document/product/1778/111082) 获取。
        # @type Topic: String
        # @param StartTime: 开始时间，毫秒级时间戳 。
        # @type StartTime: Integer
        # @param EndTime: 结束时间，毫秒级时间戳 。
        # @type EndTime: Integer
        # @param TaskRequestId: 请求任务id，用于相同查询参数下查询加速，第一次查询时无需传递，第一次查询会根据本次查询参数生成查询任务ID，保留查询条件，查询下一页消息时可传递第一次查询返回的任务ID。
        # @type TaskRequestId: String
        # @param Offset: 查询起始位置，默认0
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量，默认20，最大50
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

      # DescribeMessageList返回参数结构体
      class DescribeMessageListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param Data: 消息记录列表
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

      # DescribeProductSKUList请求参数结构体
      class DescribeProductSKUListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProductSKUList返回参数结构体
      class DescribeProductSKUListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param MQTTProductSkuList: mqtt商品配置信息
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
              productskuitem_tmp = ProductSkuItem.new
              productskuitem_tmp.deserialize(i)
              @MQTTProductSkuList << productskuitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSharedSubscriptionLag请求参数结构体
      class DescribeSharedSubscriptionLagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param SharedSubscription: 共享订阅表达式
        # @type SharedSubscription: String

        attr_accessor :InstanceId, :SharedSubscription

        def initialize(instanceid=nil, sharedsubscription=nil)
          @InstanceId = instanceid
          @SharedSubscription = sharedsubscription
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SharedSubscription = params['SharedSubscription']
        end
      end

      # DescribeSharedSubscriptionLag返回参数结构体
      class DescribeSharedSubscriptionLagResponse < TencentCloud::Common::AbstractModel
        # @param Lag: 堆积值
        # @type Lag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Lag, :RequestId

        def initialize(lag=nil, requestid=nil)
          @Lag = lag
          @RequestId = requestid
        end

        def deserialize(params)
          @Lag = params['Lag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicList请求参数结构体
      class DescribeTopicListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Filters: 查询条件列表:
        # 支持TopicName模糊查询
        # @type Filters: Array
        # @param Offset: 查询起始位置，默认0。
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量，默认20，最大20
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

      # DescribeUserList请求参数结构体
      class DescribeUserListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Filters: 查询条件列表支持字段
        # Username：按照【用户名】进行过滤，支持模糊过滤，类型：String
        # @type Filters: Array
        # @param Offset: 查询起始位置，默认值0
        # @type Offset: Integer
        # @param Limit: 查询结果限制数量，默认值20，最大值100
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

      # DescribeUserList返回参数结构体
      class DescribeUserListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
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

      # 设备证书信息
      class DeviceCertificateItem < TencentCloud::Common::AbstractModel
        # @param ClientId: 客户端id
        # @type ClientId: String
        # @param DeviceCertificate: 设备证书
        # @type DeviceCertificate: String
        # @param DeviceCertificateSn: 设备证书SN序列号，用于唯一标识一个设备证书
        # @type DeviceCertificateSn: String
        # @param DeviceCertificateCn: 设备证书Cn
        # @type DeviceCertificateCn: String
        # @param CaSn: 签发该证书的CA证书的序列号
        # @type CaSn: String
        # @param Format: 证书格式，当前仅支持PEM
        # @type Format: String
        # @param Status: 设备证书状态
        #     ACTIVE：激活
        #     INACTIVE：未激活
        #     REVOKED：吊销
        #     PENDING_ACTIVATION：注册待激活
        # @type Status: String
        # @param OrganizationalUnit: 组织单位
        # @type OrganizationalUnit: String
        # @param LastActivationTime: 上次激活时间，毫秒级时间戳 。
        # @type LastActivationTime: Integer
        # @param LastInactivationTime: 上次取消激活时间，毫秒级时间戳 。
        # @type LastInactivationTime: Integer
        # @param CreatedTime: 创建时间，毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param UpdateTime: 更新时间，毫秒级时间戳 。
        # @type UpdateTime: Integer
        # @param CertificateSource: 证书来源：
        # API, 手动注册
        # JITP 自动注册
        # @type CertificateSource: String
        # @param NotAfterTime: 证书失效日期，毫秒级时间戳 。
        # @type NotAfterTime: Integer
        # @param NotBeforeTime: 证书生效开始日期，毫秒级时间戳 。
        # @type NotBeforeTime: Integer

        attr_accessor :ClientId, :DeviceCertificate, :DeviceCertificateSn, :DeviceCertificateCn, :CaSn, :Format, :Status, :OrganizationalUnit, :LastActivationTime, :LastInactivationTime, :CreatedTime, :UpdateTime, :CertificateSource, :NotAfterTime, :NotBeforeTime

        def initialize(clientid=nil, devicecertificate=nil, devicecertificatesn=nil, devicecertificatecn=nil, casn=nil, format=nil, status=nil, organizationalunit=nil, lastactivationtime=nil, lastinactivationtime=nil, createdtime=nil, updatetime=nil, certificatesource=nil, notaftertime=nil, notbeforetime=nil)
          @ClientId = clientid
          @DeviceCertificate = devicecertificate
          @DeviceCertificateSn = devicecertificatesn
          @DeviceCertificateCn = devicecertificatecn
          @CaSn = casn
          @Format = format
          @Status = status
          @OrganizationalUnit = organizationalunit
          @LastActivationTime = lastactivationtime
          @LastInactivationTime = lastinactivationtime
          @CreatedTime = createdtime
          @UpdateTime = updatetime
          @CertificateSource = certificatesource
          @NotAfterTime = notaftertime
          @NotBeforeTime = notbeforetime
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @DeviceCertificate = params['DeviceCertificate']
          @DeviceCertificateSn = params['DeviceCertificateSn']
          @DeviceCertificateCn = params['DeviceCertificateCn']
          @CaSn = params['CaSn']
          @Format = params['Format']
          @Status = params['Status']
          @OrganizationalUnit = params['OrganizationalUnit']
          @LastActivationTime = params['LastActivationTime']
          @LastInactivationTime = params['LastInactivationTime']
          @CreatedTime = params['CreatedTime']
          @UpdateTime = params['UpdateTime']
          @CertificateSource = params['CertificateSource']
          @NotAfterTime = params['NotAfterTime']
          @NotBeforeTime = params['NotBeforeTime']
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

      # HTTP 认证器header
      class HeaderItem < TencentCloud::Common::AbstractModel
        # @param Key: header key
        # @type Key: String
        # @param Value: header value
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

      # IP规则
      class IpRule < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Allow: 当前仅支持允许，默认允许。
        # @type Allow: Boolean
        # @param Remark: 备注信息
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

      # MQTT认证器信息
      class MQTTAuthenticatorItem < TencentCloud::Common::AbstractModel
        # @param Type: 认证器类型
        # JWT：JWT认证器
        # JWKS：JWKS认证器
        # HTTP：HTTP认证器
        # @type Type: String
        # @param Config: JWT认证器字段说明
        # from（认证字段）
        #     password：从password字段获取认证字段
        #     username：从username字段获取认证字段
        # secret（签名方式）
        #     hmac-based：hmac-based签名方式
        #     public-key：public-key签名方式
        # secret（密钥），hmac-based需要配置密钥
        # public-key（公钥），public-key签名方式需要配置
        # 样例：{"from":"password","secret":"secret282698","algorithm":"hmac-based"}

        # JWKS认证器字段说明
        # endpoint（接入点）：公钥获取服务器接入地址
        # refreshInterval（认证内容）：公钥集合刷新周期
        # from（认证字段）
        #     password：从password字段获取认证字段
        #     username：从username字段获取认证字段
        # text：公钥集合
        # 样例：{"endpoint":"127.0.0.1","refreshInterval":60,"from":"password"}

        # HTTP认证器
        # headers（请求头）：标准请求头和自定义请求头
        # endpoint（接入点）：认证服务器接入点
        # method（http请求方法）：POST/GET
        # readTimeout（读超时时间）：读取认证服务器数据超时时间，单位秒
        # connectTimeout（连接超时时间）：连接认证服务器超时时间，单位秒
        # body（请求体）：http请求体
        # concurrency（并发数）：最大并发请求数量
        # 样例：{"headers":[{"key":"Content-type","value":"application/json"},{"key":"username","value":"${Username}"}],"endpoint":"https://127.0.0.1:443","method":"POST","readTimeout":10,"connectTimeout":10,"body":[{"key":"client-id","value":"${ClientId}"}],"concurrency":8}
        # 参考 [认证管理概述](https://cloud.tencent.com/document/product/1778/114813)
        # @type Config: String
        # @param Status: 认证器状态
        # open：认证器打开
        # close：认证器关闭
        # @type Status: String
        # @param CreateTime: 创建时间，毫秒级时间戳 。
        # @type CreateTime: Integer
        # @param Remark: 说明，最长 128 字符。
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

      # MQTT客户端信息
      class MQTTClientInfo < TencentCloud::Common::AbstractModel
        # @param ClientId: 客户端ID
        # @type ClientId: String
        # @param ClientAddress: 客户端网络地址
        # @type ClientAddress: String
        # @param ProtocolVersion: MQTT 协议版本
        # 3：表示MQTT 3.1版本
        # 4：表示 MQTT 3.1.1
        # 5：表示MQTT 5.0协议
        # @type ProtocolVersion: Integer
        # @param Keepalive: 保持连接时间，单位：秒
        # @type Keepalive: Integer
        # @param ConnectionStatus: 连接状态，CONNECTED 已连接，DISCONNECTED 未连接
        # @type ConnectionStatus: String
        # @param CreateTime: 客户端创建时间，毫秒级时间戳 。
        # @type CreateTime: Integer
        # @param ConnectTime: 上次建立连接时间，毫秒级时间戳 。
        # @type ConnectTime: Integer
        # @param DisconnectTime: 上次断开连接时间，仅对持久会话（cleanSession=false）并且客户端当前未连接时有意义，毫秒级时间戳 。
        # @type DisconnectTime: Integer
        # @param MQTTClientSubscriptions: 客户端的订阅列表
        # @type MQTTClientSubscriptions: Array

        attr_accessor :ClientId, :ClientAddress, :ProtocolVersion, :Keepalive, :ConnectionStatus, :CreateTime, :ConnectTime, :DisconnectTime, :MQTTClientSubscriptions

        def initialize(clientid=nil, clientaddress=nil, protocolversion=nil, keepalive=nil, connectionstatus=nil, createtime=nil, connecttime=nil, disconnecttime=nil, mqttclientsubscriptions=nil)
          @ClientId = clientid
          @ClientAddress = clientaddress
          @ProtocolVersion = protocolversion
          @Keepalive = keepalive
          @ConnectionStatus = connectionstatus
          @CreateTime = createtime
          @ConnectTime = connecttime
          @DisconnectTime = disconnecttime
          @MQTTClientSubscriptions = mqttclientsubscriptions
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
        end
      end

      # MQTT 订阅关系
      class MQTTClientSubscription < TencentCloud::Common::AbstractModel
        # @param TopicFilter: topic 订阅
        # @type TopicFilter: String
        # @param Qos: 服务质量等级
        # 0: 至多一次
        # 1: 至少一次
        # 2: 恰好一次
        # @type Qos: Integer
        # @param Lag: 堆积数量
        # @type Lag: Integer
        # @param Inflight: 投递未确认数量
        # @type Inflight: Integer
        # @param UserProperties: 用户属性
        # @type UserProperties: Array

        attr_accessor :TopicFilter, :Qos, :Lag, :Inflight, :UserProperties

        def initialize(topicfilter=nil, qos=nil, lag=nil, inflight=nil, userproperties=nil)
          @TopicFilter = topicfilter
          @Qos = qos
          @Lag = lag
          @Inflight = inflight
          @UserProperties = userproperties
        end

        def deserialize(params)
          @TopicFilter = params['TopicFilter']
          @Qos = params['Qos']
          @Lag = params['Lag']
          @Inflight = params['Inflight']
          unless params['UserProperties'].nil?
            @UserProperties = []
            params['UserProperties'].each do |i|
              subscriptionuserproperty_tmp = SubscriptionUserProperty.new
              subscriptionuserproperty_tmp.deserialize(i)
              @UserProperties << subscriptionuserproperty_tmp
            end
          end
        end
      end

      # MQTTEndpoint
      class MQTTEndpointItem < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Url: 接入点
        # @type Url: String
        # @param VpcId: vpc信息
        # @type VpcId: String
        # @param SubnetId: 子网信息
        # @type SubnetId: String
        # @param Host: 主机
        # @type Host: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Ip: 接入点ip
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
        # @param InstanceType: 实例类型
        # BASIC，基础版
        # PRO，专业版
        # PLATINUM，铂金版
        # @type InstanceType: String
        # @param InstanceStatus: 实例状态，
        # RUNNING, 运行中
        # MAINTAINING，维护中
        # ABNORMAL，异常
        # OVERDUE，欠费
        # CREATING，创建中
        # MODIFYING，变配中
        # CREATE_FAILURE，创建失败
        # MODIFY_FAILURE，变配失败
        # DELETING，删除中
        # @type InstanceStatus: String
        # @param TopicNumLimit: 实例主题数上限
        # @type TopicNumLimit: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param TopicNum: 主题数量
        # @type TopicNum: Integer
        # @param SkuCode: 商品规格
        # @type SkuCode: String
        # @param TpsLimit: 弹性TPS限流值
        # @type TpsLimit: Integer
        # @param CreateTime: 创建时间，毫秒级时间戳
        # @type CreateTime: Integer
        # @param MaxSubscriptionPerClient: 单客户端最大订阅数量
        # @type MaxSubscriptionPerClient: Integer
        # @param ClientNumLimit: 客户端连接数上线
        # @type ClientNumLimit: Integer
        # @param RenewFlag: 是否自动续费。仅包年包月集群生效。
        # 1:自动续费
        # 0:非自动续费
        # @type RenewFlag: Integer
        # @param PayMode: 计费模式， POSTPAID，按量计费 PREPAID，包年包月
        # @type PayMode: String
        # @param ExpiryTime: 到期时间，毫秒级时间戳
        # @type ExpiryTime: Integer
        # @param DestroyTime: 预销毁时间，毫秒级时间戳
        # @type DestroyTime: Integer
        # @param AuthorizationPolicyLimit: 授权规则条数限制
        # @type AuthorizationPolicyLimit: Integer
        # @param MaxCaNum: 最大ca配额
        # @type MaxCaNum: Integer
        # @param MaxSubscription: 最大订阅数
        # @type MaxSubscription: Integer
        # @param SharedSubscriptionGroupLimit: 共享订阅组数最大限制
        # @type SharedSubscriptionGroupLimit: Integer
        # @param MaxTopicFilterPerSharedSubscriptionGroup: 单个共享订阅组TopicFilter数限制
        # @type MaxTopicFilterPerSharedSubscriptionGroup: Integer
        # @param AutoSubscriptionPolicyLimit: 自动订阅规则条数限制
        # @type AutoSubscriptionPolicyLimit: Integer
        # @param MaxTopicFilterPerAutoSubscriptionPolicy: 单条自动订阅规则TopicFilter数限制
        # @type MaxTopicFilterPerAutoSubscriptionPolicy: Integer

        attr_accessor :InstanceId, :InstanceName, :Version, :InstanceType, :InstanceStatus, :TopicNumLimit, :Remark, :TopicNum, :SkuCode, :TpsLimit, :CreateTime, :MaxSubscriptionPerClient, :ClientNumLimit, :RenewFlag, :PayMode, :ExpiryTime, :DestroyTime, :AuthorizationPolicyLimit, :MaxCaNum, :MaxSubscription, :SharedSubscriptionGroupLimit, :MaxTopicFilterPerSharedSubscriptionGroup, :AutoSubscriptionPolicyLimit, :MaxTopicFilterPerAutoSubscriptionPolicy

        def initialize(instanceid=nil, instancename=nil, version=nil, instancetype=nil, instancestatus=nil, topicnumlimit=nil, remark=nil, topicnum=nil, skucode=nil, tpslimit=nil, createtime=nil, maxsubscriptionperclient=nil, clientnumlimit=nil, renewflag=nil, paymode=nil, expirytime=nil, destroytime=nil, authorizationpolicylimit=nil, maxcanum=nil, maxsubscription=nil, sharedsubscriptiongrouplimit=nil, maxtopicfilterpersharedsubscriptiongroup=nil, autosubscriptionpolicylimit=nil, maxtopicfilterperautosubscriptionpolicy=nil)
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
          @SharedSubscriptionGroupLimit = sharedsubscriptiongrouplimit
          @MaxTopicFilterPerSharedSubscriptionGroup = maxtopicfilterpersharedsubscriptiongroup
          @AutoSubscriptionPolicyLimit = autosubscriptionpolicylimit
          @MaxTopicFilterPerAutoSubscriptionPolicy = maxtopicfilterperautosubscriptionpolicy
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
          @SharedSubscriptionGroupLimit = params['SharedSubscriptionGroupLimit']
          @MaxTopicFilterPerSharedSubscriptionGroup = params['MaxTopicFilterPerSharedSubscriptionGroup']
          @AutoSubscriptionPolicyLimit = params['AutoSubscriptionPolicyLimit']
          @MaxTopicFilterPerAutoSubscriptionPolicy = params['MaxTopicFilterPerAutoSubscriptionPolicy']
        end
      end

      # MQTT消息
      class MQTTMessage < TencentCloud::Common::AbstractModel
        # @param MessageId: 消息id
        # @type MessageId: String
        # @param ClientId: 消息发送的客户端Id
        # @type ClientId: String
        # @param Qos: 消息服务质量等级
        # @type Qos: String
        # @param StoreTimestamp: 消息在服务端的存储时间，毫秒级时间戳
        # @type StoreTimestamp: Integer
        # @param OriginTopic: 源topic
        # @type OriginTopic: String

        attr_accessor :MessageId, :ClientId, :Qos, :StoreTimestamp, :OriginTopic

        def initialize(messageid=nil, clientid=nil, qos=nil, storetimestamp=nil, origintopic=nil)
          @MessageId = messageid
          @ClientId = clientid
          @Qos = qos
          @StoreTimestamp = storetimestamp
          @OriginTopic = origintopic
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @ClientId = params['ClientId']
          @Qos = params['Qos']
          @StoreTimestamp = params['StoreTimestamp']
          @OriginTopic = params['OriginTopic']
        end
      end

      # 消息记录
      class MQTTMessageItem < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息ID
        # @type MsgId: String
        # @param Tags: 消息tag
        # @type Tags: String
        # @param Keys: 消息key
        # @type Keys: String
        # @param ProducerAddr: 客户端地址
        # @type ProducerAddr: String
        # @param ProduceTime: 消息发送时间，格式 日期时间：YYYY-MM-DD hh:mm:ss
        # @type ProduceTime: String
        # @param DeadLetterResendTimes: 死信重发次数
        # @type DeadLetterResendTimes: Integer
        # @param DeadLetterResendSuccessTimes: 死信重发成功次数
        # @type DeadLetterResendSuccessTimes: Integer
        # @param SubTopic: 子topic
        # @type SubTopic: String
        # @param Qos: 消息质量等级
        # 0：至多一次
        # 1：至少一次
        # 2：精确一次
        # @type Qos: String

        attr_accessor :MsgId, :Tags, :Keys, :ProducerAddr, :ProduceTime, :DeadLetterResendTimes, :DeadLetterResendSuccessTimes, :SubTopic, :Qos
        extend Gem::Deprecate
        deprecate :DeadLetterResendTimes, :none, 2025, 8
        deprecate :DeadLetterResendTimes=, :none, 2025, 8
        deprecate :DeadLetterResendSuccessTimes, :none, 2025, 8
        deprecate :DeadLetterResendSuccessTimes=, :none, 2025, 8
        deprecate :SubTopic, :none, 2025, 8
        deprecate :SubTopic=, :none, 2025, 8

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

      # MQTT 主题详情
      class MQTTTopicItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Remark: 主题描述
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
        # @param Remark: 备注信息
        # @type Remark: String
        # @param CreatedTime: 创建时间，毫秒级时间戳 。
        # @type CreatedTime: Integer
        # @param ModifiedTime: 修改时间，毫秒级时间戳 。
        # @type ModifiedTime: Integer

        attr_accessor :Username, :Password, :Remark, :CreatedTime, :ModifiedTime

        def initialize(username=nil, password=nil, remark=nil, createdtime=nil, modifiedtime=nil)
          @Username = username
          @Password = password
          @Remark = remark
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @Username = params['Username']
          @Password = params['Password']
          @Remark = params['Remark']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # ModifyAuthorizationPolicy请求参数结构体
      class ModifyAuthorizationPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Id: 授权策略ID，从 [查询授权策略](https://cloud.tencent.com/document/product/1778/111074) 接口获取
        # @type Id: Integer
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param PolicyName: 策略名称，不能为空，3-64个字符，支持中文、字母、数字、“-”及“_”。
        # @type PolicyName: String
        # @param PolicyVersion: 策略版本,默认为1，当前仅支持1
        # @type PolicyVersion: Integer
        # @param Priority: 策略优先级，越小越优先，不能重复
        # @type Priority: Integer
        # @param Effect: 决策：
        # allow 允许
        # deny 拒绝
        # @type Effect: String
        # @param Actions: 操作,支持多选，多个操作用英文逗号隔开。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # connect：连接
        # pub：发布
        # sub：订阅
        # @type Actions: String
        # @param Resources: 资源，需要匹配的订阅，支持配置多条匹配规则，多个用英文逗号隔开。可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)。
        # @type Resources: String
        # @param Username: 条件-用户名
        # @type Username: String
        # @param Retain: 条件-保留消息
        # 1,匹配保留消息；
        # 2,匹配非保留消息，
        # 3.匹配保留和非保留消息
        # @type Retain: Integer
        # @param ClientId: 条件：客户端ID，支持正则
        # @type ClientId: String
        # @param Ip: 条件：客户端IP地址，支持IP或者CIDR
        # @type Ip: String
        # @param Qos: 条件：服务质量
        # 0：最多一次
        # 1：最少一次
        # 2：精确一次
        # @type Qos: String
        # @param Remark: 备注信息，最长 128 字符
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

      # ModifyHttpAuthenticator请求参数结构体
      class ModifyHttpAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Endpoint: 服务地址
        # @type Endpoint: String
        # @param Status: 认证器状态：open-启用；close-关闭
        # @type Status: String
        # @param Concurrency: 最大并发连接数，默认8，范围：1-10
        # @type Concurrency: Integer
        # @param ConnectTimeout: 连接超时时间，单位：秒，范围：1-30
        # @type ConnectTimeout: Integer
        # @param ReadTimeout: 请求超时时间，单位：秒，范围：1-30
        # @type ReadTimeout: Integer
        # @param Remark: 说明，最多支持128个字符。
        # @type Remark: String
        # @param Method: 请求方法，GET 或者 POST
        # @type Method: String
        # @param Header: 请求header
        # @type Header: Array
        # @param Body: 请求body
        # @type Body: Array

        attr_accessor :InstanceId, :Endpoint, :Status, :Concurrency, :ConnectTimeout, :ReadTimeout, :Remark, :Method, :Header, :Body

        def initialize(instanceid=nil, endpoint=nil, status=nil, concurrency=nil, connecttimeout=nil, readtimeout=nil, remark=nil, method=nil, header=nil, body=nil)
          @InstanceId = instanceid
          @Endpoint = endpoint
          @Status = status
          @Concurrency = concurrency
          @ConnectTimeout = connecttimeout
          @ReadTimeout = readtimeout
          @Remark = remark
          @Method = method
          @Header = header
          @Body = body
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Endpoint = params['Endpoint']
          @Status = params['Status']
          @Concurrency = params['Concurrency']
          @ConnectTimeout = params['ConnectTimeout']
          @ReadTimeout = params['ReadTimeout']
          @Remark = params['Remark']
          @Method = params['Method']
          unless params['Header'].nil?
            @Header = []
            params['Header'].each do |i|
              headeritem_tmp = HeaderItem.new
              headeritem_tmp.deserialize(i)
              @Header << headeritem_tmp
            end
          end
          unless params['Body'].nil?
            @Body = []
            params['Body'].each do |i|
              bodyitem_tmp = BodyItem.new
              bodyitem_tmp.deserialize(i)
              @Body << bodyitem_tmp
            end
          end
        end
      end

      # ModifyHttpAuthenticator返回参数结构体
      class ModifyHttpAuthenticatorResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInsPublicEndpoint请求参数结构体
      class ModifyInsPublicEndpointRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Bandwidth: 带宽，单位：Mbps
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

      # ModifyInsPublicEndpoint返回参数结构体
      class ModifyInsPublicEndpointResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceCertBinding请求参数结构体
      class ModifyInstanceCertBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param X509Mode: 加密通信方式
        # TLS：单向证书认证
        # mTLS：双向证书认证
        # BYOC：一设备一证书认证
        # @type X509Mode: String
        # @param SSLServerCertId: 服务端证书id，从 [获取证书列表](https://cloud.tencent.com/document/api/400/41671) 或者腾讯云证书服务控制台获取。X509Mode为mTLS或BYOC时为必填。
        # @type SSLServerCertId: String
        # @param SSLCaCertId: CA证书id，从 [获取证书列表](https://cloud.tencent.com/document/api/400/41671) 或者腾讯云证书服务控制台获取。X509Mode为mTLS时为必填
        # @type SSLCaCertId: String
        # @param DeviceCertificateProvisionType: 设备证书注册类型：
        # JITP：自动注册；
        # API：手动注册
        # 默认值：API
        # @type DeviceCertificateProvisionType: String
        # @param AutomaticActivation: 是否自动激活，默认为false
        # @type AutomaticActivation: Boolean

        attr_accessor :InstanceId, :X509Mode, :SSLServerCertId, :SSLCaCertId, :DeviceCertificateProvisionType, :AutomaticActivation

        def initialize(instanceid=nil, x509mode=nil, sslservercertid=nil, sslcacertid=nil, devicecertificateprovisiontype=nil, automaticactivation=nil)
          @InstanceId = instanceid
          @X509Mode = x509mode
          @SSLServerCertId = sslservercertid
          @SSLCaCertId = sslcacertid
          @DeviceCertificateProvisionType = devicecertificateprovisiontype
          @AutomaticActivation = automaticactivation
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @X509Mode = params['X509Mode']
          @SSLServerCertId = params['SSLServerCertId']
          @SSLCaCertId = params['SSLCaCertId']
          @DeviceCertificateProvisionType = params['DeviceCertificateProvisionType']
          @AutomaticActivation = params['AutomaticActivation']
        end
      end

      # ModifyInstanceCertBinding返回参数结构体
      class ModifyInstanceCertBindingResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Name: 要修改实例名称，不能为空, 3-64个字符，只能包含数字、字母、“-”和“_”。
        # @type Name: String
        # @param Remark: 要修改的备注信息，最多128个字符。
        # @type Remark: String
        # @param SkuCode: 需要变更的配置规格
        # 基础版和专业版集群不能升配到铂金版规格，铂金版集群不能降配至基础版和增强版规格。
        # @type SkuCode: String
        # @param DeviceCertificateProvisionType: 客户端证书注册方式：
        # JITP：自动注册
        # API：手动通过API注册
        # @type DeviceCertificateProvisionType: String
        # @param AutomaticActivation: 自动注册证书是否自动激活
        # @type AutomaticActivation: Boolean
        # @param AuthorizationPolicy: 授权策略开关
        # @type AuthorizationPolicy: Boolean
        # @param UseDefaultServerCert: 是否使用默认的服务端证书
        # @type UseDefaultServerCert: Boolean
        # @param X509Mode: TLS：单向认证
        # mTLS；双向认证
        # BYOC：一机一证
        # @type X509Mode: String

        attr_accessor :InstanceId, :Name, :Remark, :SkuCode, :DeviceCertificateProvisionType, :AutomaticActivation, :AuthorizationPolicy, :UseDefaultServerCert, :X509Mode
        extend Gem::Deprecate
        deprecate :DeviceCertificateProvisionType, :none, 2025, 8
        deprecate :DeviceCertificateProvisionType=, :none, 2025, 8
        deprecate :AutomaticActivation, :none, 2025, 8
        deprecate :AutomaticActivation=, :none, 2025, 8

        def initialize(instanceid=nil, name=nil, remark=nil, skucode=nil, devicecertificateprovisiontype=nil, automaticactivation=nil, authorizationpolicy=nil, usedefaultservercert=nil, x509mode=nil)
          @InstanceId = instanceid
          @Name = name
          @Remark = remark
          @SkuCode = skucode
          @DeviceCertificateProvisionType = devicecertificateprovisiontype
          @AutomaticActivation = automaticactivation
          @AuthorizationPolicy = authorizationpolicy
          @UseDefaultServerCert = usedefaultservercert
          @X509Mode = x509mode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Remark = params['Remark']
          @SkuCode = params['SkuCode']
          @DeviceCertificateProvisionType = params['DeviceCertificateProvisionType']
          @AutomaticActivation = params['AutomaticActivation']
          @AuthorizationPolicy = params['AuthorizationPolicy']
          @UseDefaultServerCert = params['UseDefaultServerCert']
          @X509Mode = params['X509Mode']
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

      # ModifyJWKSAuthenticator请求参数结构体
      class ModifyJWKSAuthenticatorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Endpoint: JWKS服务器地址，（Text字段和Endpoint字段必须选择一个填写）
        # @type Endpoint: String
        # @param Status: 认证器状态：open-启用（默认）；close-关闭
        # @type Status: String
        # @param RefreshInterval: 认证文本刷新间隔时间，单位：秒，最小值60，默认值60，最大值1000。填写认证服务器地址时生效。
        # @type RefreshInterval: Integer
        # @param Text: JWKS文本，认证服务器地址为空时生效。（Text字段和Endpoint字段必须选择一个填写）
        # @type Text: String
        # @param From: 认证字段；
        # username-对应 MQTT CONNECT Packet 中 username 字段，
        # password-对应 MQTT CONNECT Packet 中 password 字段。默认username
        # @type From: String
        # @param Remark: 说明，不能超过 128 个字符
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Algorithm: 签名方式：hmac-based，public-key
        # @type Algorithm: String
        # @param From: 认证字段
        # password：对应 MQTT CONNECT Packet 中 password 字段，
        # username：对应 MQTT CONNECT Packet 中 username 字段
        # @type From: String
        # @param Secret: 密钥，Algorithm为hmac-based需要传递该字段。
        # @type Secret: String
        # @param PublicKey: 公钥，Algorithm为public-key时需要传递该字段。
        # @type PublicKey: String
        # @param Status: 认证器是否开启：open-启用；close-关闭
        # @type Status: String
        # @param Remark: 说明，不能超过 128 个字符
        # @type Remark: String
        # @param Text: JSKS文本
        # @type Text: String

        attr_accessor :InstanceId, :Algorithm, :From, :Secret, :PublicKey, :Status, :Remark, :Text
        extend Gem::Deprecate
        deprecate :Text, :none, 2025, 8
        deprecate :Text=, :none, 2025, 8

        def initialize(instanceid=nil, algorithm=nil, from=nil, secret=nil, publickey=nil, status=nil, remark=nil, text=nil)
          @InstanceId = instanceid
          @Algorithm = algorithm
          @From = from
          @Secret = secret
          @PublicKey = publickey
          @Status = status
          @Remark = remark
          @Text = text
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Algorithm = params['Algorithm']
          @From = params['From']
          @Secret = params['Secret']
          @PublicKey = params['PublicKey']
          @Status = params['Status']
          @Remark = params['Remark']
          @Text = params['Text']
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Topic: 主题，不能为空，只能包含字母、数字、“-”及“_”，3-100 字符。
        # @type Topic: String
        # @param Remark: 备注信息，最长 128 字符
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Username: 用户名
        # @type Username: String
        # @param Remark: 备注，长度不超过128个字符。
        # @type Remark: String

        attr_accessor :InstanceId, :Username, :Remark

        def initialize(instanceid=nil, username=nil, remark=nil)
          @InstanceId = instanceid
          @Username = username
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Username = params['Username']
          @Remark = params['Remark']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
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

      # 价格标签信息
      class PriceTag < TencentCloud::Common::AbstractModel
        # @param Name: 计价名称，表示规格的计费项项目分类，具体规格的计价名称可参考  [获取MQTT产品售卖规格](https://cloud.tencent.com/document/product/1778/116232) 接口的返回结果。
        # @type Name: String
        # @param Category: 计价类别，计价名称子类，具体规格的计价类别可参考  [获取MQTT产品售卖规格](https://cloud.tencent.com/document/product/1778/116232) 的返回结果。
        # @type Category: String
        # @param Code: 计费项标签，为计价名称（Name）下计价类别（Category）的子项目，表示一个具体的收费项。规格的计费项标签可参考
        #  [获取MQTT产品售卖规格](https://cloud.tencent.com/document/product/1778/116232) 接口的返回结果。
        # @type Code: String
        # @param Step: 计费步长，表示该规格在 计价名称（Name）下的计价类别（Category）的计费项标签（Code）计费数量。具体规格该字段取值参考 [获取MQTT产品售卖规格](https://cloud.tencent.com/document/product/1778/116232)
        # @type Step: Integer

        attr_accessor :Name, :Category, :Code, :Step

        def initialize(name=nil, category=nil, code=nil, step=nil)
          @Name = name
          @Category = category
          @Code = code
          @Step = step
        end

        def deserialize(params)
          @Name = params['Name']
          @Category = params['Category']
          @Code = params['Code']
          @Step = params['Step']
        end
      end

      # MQTT ProductSkuItem
      class ProductSkuItem < TencentCloud::Common::AbstractModel
        # @param InstanceType: 规格类型
        # BASIC：基础版
        # PRO ：专业版
        # PLATINUM： 铂金版
        # @type InstanceType: String
        # @param SkuCode: 规格代码
        # @type SkuCode: String
        # @param OnSale: 是否售卖
        # 1: 可售卖
        # 0: 不可售卖
        # @type OnSale: Boolean
        # @param TopicNumLimit: topic num限制
        # @type TopicNumLimit: Integer
        # @param TpsLimit: MQTT 集群下每秒钟生产消息量和消费消息量之和。详细计算方式参考 [计费概述](https://cloud.tencent.com/document/product/1778/109698)
        # @type TpsLimit: Integer
        # @param ClientNumLimit: 客户端连接数
        # @type ClientNumLimit: Integer
        # @param MaxSubscriptionPerClient: 单客户端最大订阅数
        # @type MaxSubscriptionPerClient: Integer
        # @param AuthorizationPolicyLimit: 授权规则条数
        # @type AuthorizationPolicyLimit: Integer
        # @param PriceTags: 计费项信息
        # @type PriceTags: Array

        attr_accessor :InstanceType, :SkuCode, :OnSale, :TopicNumLimit, :TpsLimit, :ClientNumLimit, :MaxSubscriptionPerClient, :AuthorizationPolicyLimit, :PriceTags

        def initialize(instancetype=nil, skucode=nil, onsale=nil, topicnumlimit=nil, tpslimit=nil, clientnumlimit=nil, maxsubscriptionperclient=nil, authorizationpolicylimit=nil, pricetags=nil)
          @InstanceType = instancetype
          @SkuCode = skucode
          @OnSale = onsale
          @TopicNumLimit = topicnumlimit
          @TpsLimit = tpslimit
          @ClientNumLimit = clientnumlimit
          @MaxSubscriptionPerClient = maxsubscriptionperclient
          @AuthorizationPolicyLimit = authorizationpolicylimit
          @PriceTags = pricetags
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @SkuCode = params['SkuCode']
          @OnSale = params['OnSale']
          @TopicNumLimit = params['TopicNumLimit']
          @TpsLimit = params['TpsLimit']
          @ClientNumLimit = params['ClientNumLimit']
          @MaxSubscriptionPerClient = params['MaxSubscriptionPerClient']
          @AuthorizationPolicyLimit = params['AuthorizationPolicyLimit']
          unless params['PriceTags'].nil?
            @PriceTags = []
            params['PriceTags'].each do |i|
              pricetag_tmp = PriceTag.new
              pricetag_tmp.deserialize(i)
              @PriceTags << pricetag_tmp
            end
          end
        end
      end

      # 公网访问安全规则
      class PublicAccessRule < TencentCloud::Common::AbstractModel
        # @param IpRule: ip网段信息
        # @type IpRule: String
        # @param Allow: 当前仅支持允许，默认允许（allow）
        # @type Allow: Boolean
        # @param Remark: 备注信息，最多64个字符。
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

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param Payload: 消息负载 Payload，是消息的实际内容，需要按 encoding 指定的编码方式进行编码
        # @type Payload: String
        # @param TargetTopic: 消息目的主题，该参数与 TargetClientId 二选一
        # @type TargetTopic: String
        # @param TargetClientId: 消息目的客户端 ID，该参数与 TargetTopic 二选一
        # @type TargetClientId: String
        # @param Encoding: 消息 payload 编码，可选 plain 或 base64，默认为 plain（即不编码）
        # @type Encoding: String
        # @param Qos: 消息的服务质量等级，默认为 1
        # QoS 0（至多一次）消息发送后，不保证接收方一定收到，也不要求接收方确认。
        # QoS 1（至少一次）消息至少被接收方成功接收一次，但可能重复。
        # QoS 2（恰好一次）消息确保被接收方接收且仅接收一次，无重复。
        # @type Qos: Integer
        # @param Retain: 是否为保留消息，默认为 false，且仅支持发布到主题的消息设置为 true
        # @type Retain: Boolean

        attr_accessor :InstanceId, :Payload, :TargetTopic, :TargetClientId, :Encoding, :Qos, :Retain

        def initialize(instanceid=nil, payload=nil, targettopic=nil, targetclientid=nil, encoding=nil, qos=nil, retain=nil)
          @InstanceId = instanceid
          @Payload = payload
          @TargetTopic = targettopic
          @TargetClientId = targetclientid
          @Encoding = encoding
          @Qos = qos
          @Retain = retain
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Payload = params['Payload']
          @TargetTopic = params['TargetTopic']
          @TargetClientId = params['TargetClientId']
          @Encoding = params['Encoding']
          @Qos = params['Qos']
          @Retain = params['Retain']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
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

      # RegisterCaCertificate请求参数结构体
      class RegisterCaCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param CaCertificate: CA证书内容，自签CA可参考 [自定义 X.509 证书实现 “一机一证”](https://cloud.tencent.com/document/product/1778/114817) 签发自签CA
        # @type CaCertificate: String
        # @param VerificationCertificate: 验证证书内容，可参考 [自定义 X.509 证书实现 “一机一证”](https://cloud.tencent.com/document/product/1778/114817) 手动注册CA证书章节
        # @type VerificationCertificate: String
        # @param Format: 证书格式，不传默认PEM格式，当前仅支持PEM格式
        # @type Format: String
        # @param Status: 证书状态，不传默认ACTIVE状态
        #     ACTIVE：激活
        #     INACTIVE：未激活
        # @type Status: String

        attr_accessor :InstanceId, :CaCertificate, :VerificationCertificate, :Format, :Status

        def initialize(instanceid=nil, cacertificate=nil, verificationcertificate=nil, format=nil, status=nil)
          @InstanceId = instanceid
          @CaCertificate = cacertificate
          @VerificationCertificate = verificationcertificate
          @Format = format
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaCertificate = params['CaCertificate']
          @VerificationCertificate = params['VerificationCertificate']
          @Format = params['Format']
          @Status = params['Status']
        end
      end

      # RegisterCaCertificate返回参数结构体
      class RegisterCaCertificateResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: mqtt实例ID
        # @type InstanceId: String
        # @param CaSn: ca 证书的序列号
        # @type CaSn: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :CaSn, :RequestId

        def initialize(instanceid=nil, casn=nil, requestid=nil)
          @InstanceId = instanceid
          @CaSn = casn
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaSn = params['CaSn']
          @RequestId = params['RequestId']
        end
      end

      # RegisterDeviceCertificate请求参数结构体
      class RegisterDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param DeviceCertificate: 设备证书内容，可参考 [使用 CA 证书生成服务端/客户端证书](https://cloud.tencent.com/document/product/1778/114817#aab79cc8-a148-412e-beb8-9c9e158eb944) 生成
        # @type DeviceCertificate: String
        # @param CaSn: 关联的CA证书SN
        # @type CaSn: String
        # @param ClientId: 客户端ID，需要关联该证书的客户端ID。根据实际业务使用填写
        # @type ClientId: String
        # @param Format: 证书格式，默认为PEM，当前仅支持PEM格式
        # @type Format: String
        # @param Status:  客户端证书状态，默认激活状态（ACTIVE）
        # ACTIVE：激活
        # INACTIVE：未激活
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
        # @type InstanceId: String
        # @param CaSn: 关联的CA证书SN
        # @type CaSn: String
        # @param DeviceCertificateSn: 设备证书的SN
        # @type DeviceCertificateSn: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :CaSn, :DeviceCertificateSn, :RequestId

        def initialize(instanceid=nil, casn=nil, devicecertificatesn=nil, requestid=nil)
          @InstanceId = instanceid
          @CaSn = casn
          @DeviceCertificateSn = devicecertificatesn
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CaSn = params['CaSn']
          @DeviceCertificateSn = params['DeviceCertificateSn']
          @RequestId = params['RequestId']
        end
      end

      # RevokedDeviceCertificate请求参数结构体
      class RevokedDeviceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param DeviceCertificateSn: 设备证书序列号
        # @type DeviceCertificateSn: String

        attr_accessor :InstanceId, :DeviceCertificateSn

        def initialize(instanceid=nil, devicecertificatesn=nil)
          @InstanceId = instanceid
          @DeviceCertificateSn = devicecertificatesn
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceCertificateSn = params['DeviceCertificateSn']
        end
      end

      # RevokedDeviceCertificate返回参数结构体
      class RevokedDeviceCertificateResponse < TencentCloud::Common::AbstractModel
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

      # 订阅的UserProperty结构
      class SubscriptionUserProperty < TencentCloud::Common::AbstractModel
        # @param Key: 订阅的UserProperty键
        # @type Key: String
        # @param Value: 订阅的UserProperty值
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

      # 标签数据
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签名称
        # @type TagKey: String
        # @param TagValue: 标签值
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
        # @param InstanceId: 腾讯云MQTT实例ID，从 [DescribeInstanceList](https://cloud.tencent.com/document/api/1778/111029)接口或控制台获得。
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

      # map结构返回
      class UserProperty < TencentCloud::Common::AbstractModel
        # @param Key: key
        # @type Key: String
        # @param Value: value
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

