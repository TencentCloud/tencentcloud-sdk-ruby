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
  module Ga2
    module V20250115
      # 加速地域信息
      class AcceleratorAreas < TencentCloud::Common::AbstractModel
        # @param AccelerateRegion: 加速地域。
        # @type AccelerateRegion: String
        # @param Bandwidth: 带宽。
        # @type Bandwidth: Integer
        # @param IspType: 支持'BGP', '三网', '精品'，默认BGP。
        # @type IspType: String
        # @param IpVersion: 仅支持IPv4，默认是IPv4。
        # @type IpVersion: String
        # @param AcceleratorAreaId: 加速地域ID。
        # @type AcceleratorAreaId: String
        # @param IpAddress: IP。
        # @type IpAddress: Array
        # @param IpAddressInfoSet: IP信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddressInfoSet: Array

        attr_accessor :AccelerateRegion, :Bandwidth, :IspType, :IpVersion, :AcceleratorAreaId, :IpAddress, :IpAddressInfoSet

        def initialize(accelerateregion=nil, bandwidth=nil, isptype=nil, ipversion=nil, acceleratorareaid=nil, ipaddress=nil, ipaddressinfoset=nil)
          @AccelerateRegion = accelerateregion
          @Bandwidth = bandwidth
          @IspType = isptype
          @IpVersion = ipversion
          @AcceleratorAreaId = acceleratorareaid
          @IpAddress = ipaddress
          @IpAddressInfoSet = ipaddressinfoset
        end

        def deserialize(params)
          @AccelerateRegion = params['AccelerateRegion']
          @Bandwidth = params['Bandwidth']
          @IspType = params['IspType']
          @IpVersion = params['IpVersion']
          @AcceleratorAreaId = params['AcceleratorAreaId']
          @IpAddress = params['IpAddress']
          unless params['IpAddressInfoSet'].nil?
            @IpAddressInfoSet = []
            params['IpAddressInfoSet'].each do |i|
              ipaddressinfoset_tmp = IpAddressInfoSet.new
              ipaddressinfoset_tmp.deserialize(i)
              @IpAddressInfoSet << ipaddressinfoset_tmp
            end
          end
        end
      end

      # 可加速地域信息
      class AcceleratorRegionSet < TencentCloud::Common::AbstractModel
        # @param Name: <p>地域中文名称。</p>
        # @type Name: String
        # @param IsAvailable: <p>是否可用；0：不可用，1:可用。</p>
        # @type IsAvailable: Integer
        # @param Region: <p>地域信息。</p>
        # @type Region: String
        # @param AreaName: <p>地区名称。</p>
        # @type AreaName: String
        # @param IsChinaMainland: <p>是否中国地域。</p>
        # @type IsChinaMainland: Integer
        # @param SupportIspType: <p>支持IspType类型。</p>
        # @type SupportIspType: Array
        # @param IsTencentRegion: <p>是否腾讯地域。</p>
        # @type IsTencentRegion: Integer

        attr_accessor :Name, :IsAvailable, :Region, :AreaName, :IsChinaMainland, :SupportIspType, :IsTencentRegion

        def initialize(name=nil, isavailable=nil, region=nil, areaname=nil, ischinamainland=nil, supportisptype=nil, istencentregion=nil)
          @Name = name
          @IsAvailable = isavailable
          @Region = region
          @AreaName = areaname
          @IsChinaMainland = ischinamainland
          @SupportIspType = supportisptype
          @IsTencentRegion = istencentregion
        end

        def deserialize(params)
          @Name = params['Name']
          @IsAvailable = params['IsAvailable']
          @Region = params['Region']
          @AreaName = params['AreaName']
          @IsChinaMainland = params['IsChinaMainland']
          @SupportIspType = params['SupportIspType']
          @IsTencentRegion = params['IsTencentRegion']
        end
      end

      # CreateAccelerateAreas请求参数结构体
      class CreateAccelerateAreasRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param AcceleratorAreas: 加速地域信息。
        # @type AcceleratorAreas: Array

        attr_accessor :GlobalAcceleratorId, :AcceleratorAreas

        def initialize(globalacceleratorid=nil, acceleratorareas=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @AcceleratorAreas = acceleratorareas
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          unless params['AcceleratorAreas'].nil?
            @AcceleratorAreas = []
            params['AcceleratorAreas'].each do |i|
              acceleratorareas_tmp = AcceleratorAreas.new
              acceleratorareas_tmp.deserialize(i)
              @AcceleratorAreas << acceleratorareas_tmp
            end
          end
        end
      end

      # CreateAccelerateAreas返回参数结构体
      class CreateAccelerateAreasResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEndpointGroup请求参数结构体
      class CreateEndpointGroupRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param EndpointGroupType: 终端节点组类型。支持VIRTUAL，DEFAULT。
        # @type EndpointGroupType: String
        # @param EndpointGroupConfiguration: 终端节点组配置。
        # @type EndpointGroupConfiguration: :class:`Tencentcloud::Ga2.v20250115.models.EndpointGroupConfiguration`

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupType, :EndpointGroupConfiguration

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgrouptype=nil, endpointgroupconfiguration=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @EndpointGroupType = endpointgrouptype
          @EndpointGroupConfiguration = endpointgroupconfiguration
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @EndpointGroupType = params['EndpointGroupType']
          unless params['EndpointGroupConfiguration'].nil?
            @EndpointGroupConfiguration = EndpointGroupConfiguration.new
            @EndpointGroupConfiguration.deserialize(params['EndpointGroupConfiguration'])
          end
        end
      end

      # CreateEndpointGroup返回参数结构体
      class CreateEndpointGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param EndpointGroupId: 终端节点组实例ID。
        # @type EndpointGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :EndpointGroupId, :RequestId

        def initialize(taskid=nil, endpointgroupid=nil, requestid=nil)
          @TaskId = taskid
          @EndpointGroupId = endpointgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @EndpointGroupId = params['EndpointGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateForwardingRule请求参数结构体
      class CreateForwardingRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 策略ID。
        # @type ForwardingPolicyId: String
        # @param RuleConditions: 七层转发规则条件信息。
        # @type RuleConditions: Array
        # @param RuleActions: 七层转发规则行为信息。
        # @type RuleActions: Array
        # @param OriginHeaders: 回源Header信息。
        # @type OriginHeaders: Array
        # @param EnableOriginSni: 是否开启回源sni。
        # @type EnableOriginSni: Boolean
        # @param OriginSni: 回源sni。
        # @type OriginSni: String
        # @param OriginHost: 回源host。
        # @type OriginHost: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :RuleConditions, :RuleActions, :OriginHeaders, :EnableOriginSni, :OriginSni, :OriginHost

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, ruleconditions=nil, ruleactions=nil, originheaders=nil, enableoriginsni=nil, originsni=nil, originhost=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @RuleConditions = ruleconditions
          @RuleActions = ruleactions
          @OriginHeaders = originheaders
          @EnableOriginSni = enableoriginsni
          @OriginSni = originsni
          @OriginHost = originhost
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          unless params['RuleConditions'].nil?
            @RuleConditions = []
            params['RuleConditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @RuleConditions << rulecondition_tmp
            end
          end
          unless params['RuleActions'].nil?
            @RuleActions = []
            params['RuleActions'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @RuleActions << ruleaction_tmp
            end
          end
          unless params['OriginHeaders'].nil?
            @OriginHeaders = []
            params['OriginHeaders'].each do |i|
              originheader_tmp = OriginHeader.new
              originheader_tmp.deserialize(i)
              @OriginHeaders << originheader_tmp
            end
          end
          @EnableOriginSni = params['EnableOriginSni']
          @OriginSni = params['OriginSni']
          @OriginHost = params['OriginHost']
        end
      end

      # CreateForwardingRule返回参数结构体
      class CreateForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param ForwardingRuleId: 七层转发规则ID。
        # @type ForwardingRuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ForwardingRuleId, :RequestId

        def initialize(taskid=nil, forwardingruleid=nil, requestid=nil)
          @TaskId = taskid
          @ForwardingRuleId = forwardingruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ForwardingRuleId = params['ForwardingRuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGlobalAccelerator请求参数结构体
      class CreateGlobalAcceleratorRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param InstanceChargeType: <p>计费模式，PREPAID：表示预付费，即包年包月，POSTPAID：表示后付费，即按量计费。默认：POSTPAID。当前仅支持后付费。</p>
        # @type InstanceChargeType: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param CrossBorderType: <p>跨境类型；HighQuality：精品BGP-IP跨境；Unicom：联通专线跨境。</p>
        # @type CrossBorderType: String
        # @param CrossBorderPromiseFlag: <p>此Flag代表签署跨境服务承诺书。当使用跨境服务时候，此字段必传。True：代表签署。</p>
        # @type CrossBorderPromiseFlag: Boolean
        # @param Tags: <p>标签信息</p>
        # @type Tags: Array

        attr_accessor :Name, :InstanceChargeType, :Description, :CrossBorderType, :CrossBorderPromiseFlag, :Tags

        def initialize(name=nil, instancechargetype=nil, description=nil, crossbordertype=nil, crossborderpromiseflag=nil, tags=nil)
          @Name = name
          @InstanceChargeType = instancechargetype
          @Description = description
          @CrossBorderType = crossbordertype
          @CrossBorderPromiseFlag = crossborderpromiseflag
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @InstanceChargeType = params['InstanceChargeType']
          @Description = params['Description']
          @CrossBorderType = params['CrossBorderType']
          @CrossBorderPromiseFlag = params['CrossBorderPromiseFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateGlobalAccelerator返回参数结构体
      class CreateGlobalAcceleratorResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID。</p>
        # @type TaskId: String
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :GlobalAcceleratorId, :RequestId

        def initialize(taskid=nil, globalacceleratorid=nil, requestid=nil)
          @TaskId = taskid
          @GlobalAcceleratorId = globalacceleratorid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @RequestId = params['RequestId']
        end
      end

      # CreateListener请求参数结构体
      class CreateListenerRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param PortRanges: <p>端口范围。</p>
        # @type PortRanges: :class:`Tencentcloud::Ga2.v20250115.models.PortRanges`
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param ListenerType: <p>监听类型，默认为智能路由。</p>
        # @type ListenerType: String
        # @param Protocol: <p>协议，默认为TCP。</p>
        # @type Protocol: String
        # @param IdleTimeout: <p>连接空闲等待时间。</p>
        # @type IdleTimeout: Integer
        # @param GetRealIpType: <p>四层获取源IP方式，支持&#39;TOA&#39;, &#39;ProxyProtocol&#39;。</p>
        # @type GetRealIpType: String
        # @param ClientAffinity: <p>是否开启会话保持。</p>
        # @type ClientAffinity: String
        # @param RequestTimeout: <p>请求超时时间。</p>
        # @type RequestTimeout: Integer
        # @param XForwardedForRealIp: <p>是否打开七层获取源IP方式。</p>
        # @type XForwardedForRealIp: Boolean
        # @param CertificationType: <p>解析方式。UNIDIRECTIONAL：双向。MUTUAL：单向。</p>
        # @type CertificationType: String
        # @param CipherPolicyId: <p>加密算法套件。</p>
        # @type CipherPolicyId: String
        # @param ServerCertificates: <p>服务器证书。</p>
        # @type ServerCertificates: Array
        # @param ClientCaCertificates: <p>客户端证书。</p>
        # @type ClientCaCertificates: Array

        attr_accessor :GlobalAcceleratorId, :Name, :PortRanges, :Description, :ListenerType, :Protocol, :IdleTimeout, :GetRealIpType, :ClientAffinity, :RequestTimeout, :XForwardedForRealIp, :CertificationType, :CipherPolicyId, :ServerCertificates, :ClientCaCertificates

        def initialize(globalacceleratorid=nil, name=nil, portranges=nil, description=nil, listenertype=nil, protocol=nil, idletimeout=nil, getrealiptype=nil, clientaffinity=nil, requesttimeout=nil, xforwardedforrealip=nil, certificationtype=nil, cipherpolicyid=nil, servercertificates=nil, clientcacertificates=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Name = name
          @PortRanges = portranges
          @Description = description
          @ListenerType = listenertype
          @Protocol = protocol
          @IdleTimeout = idletimeout
          @GetRealIpType = getrealiptype
          @ClientAffinity = clientaffinity
          @RequestTimeout = requesttimeout
          @XForwardedForRealIp = xforwardedforrealip
          @CertificationType = certificationtype
          @CipherPolicyId = cipherpolicyid
          @ServerCertificates = servercertificates
          @ClientCaCertificates = clientcacertificates
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @Name = params['Name']
          unless params['PortRanges'].nil?
            @PortRanges = PortRanges.new
            @PortRanges.deserialize(params['PortRanges'])
          end
          @Description = params['Description']
          @ListenerType = params['ListenerType']
          @Protocol = params['Protocol']
          @IdleTimeout = params['IdleTimeout']
          @GetRealIpType = params['GetRealIpType']
          @ClientAffinity = params['ClientAffinity']
          @RequestTimeout = params['RequestTimeout']
          @XForwardedForRealIp = params['XForwardedForRealIp']
          @CertificationType = params['CertificationType']
          @CipherPolicyId = params['CipherPolicyId']
          @ServerCertificates = params['ServerCertificates']
          @ClientCaCertificates = params['ClientCaCertificates']
        end
      end

      # CreateListener返回参数结构体
      class CreateListenerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID。</p>
        # @type TaskId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ListenerId, :RequestId

        def initialize(taskid=nil, listenerid=nil, requestid=nil)
          @TaskId = taskid
          @ListenerId = listenerid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ListenerId = params['ListenerId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAccelerateAreas请求参数结构体
      class DeleteAccelerateAreasRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param AcceleratorAreaIds: 加速地域ID。
        # @type AcceleratorAreaIds: Array

        attr_accessor :GlobalAcceleratorId, :AcceleratorAreaIds

        def initialize(globalacceleratorid=nil, acceleratorareaids=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @AcceleratorAreaIds = acceleratorareaids
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @AcceleratorAreaIds = params['AcceleratorAreaIds']
        end
      end

      # DeleteAccelerateAreas返回参数结构体
      class DeleteAccelerateAreasResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteEndpointGroups请求参数结构体
      class DeleteEndpointGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param EndpointGroupIds: 终端节点组ID。
        # @type EndpointGroupIds: Array

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupIds

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupids=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @EndpointGroupIds = endpointgroupids
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @EndpointGroupIds = params['EndpointGroupIds']
        end
      end

      # DeleteEndpointGroups返回参数结构体
      class DeleteEndpointGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteForwardingRule请求参数结构体
      class DeleteForwardingRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 策略ID。
        # @type ForwardingPolicyId: String
        # @param ForwardingRuleId: 七层转发规则ID。
        # @type ForwardingRuleId: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :ForwardingRuleId

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, forwardingruleid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @ForwardingRuleId = forwardingruleid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @ForwardingRuleId = params['ForwardingRuleId']
        end
      end

      # DeleteForwardingRule返回参数结构体
      class DeleteForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGlobalAccelerator请求参数结构体
      class DeleteGlobalAcceleratorRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String

        attr_accessor :GlobalAcceleratorId

        def initialize(globalacceleratorid=nil)
          @GlobalAcceleratorId = globalacceleratorid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
        end
      end

      # DeleteGlobalAccelerator返回参数结构体
      class DeleteGlobalAcceleratorResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteListener请求参数结构体
      class DeleteListenerRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String

        attr_accessor :GlobalAcceleratorId, :ListenerId

        def initialize(globalacceleratorid=nil, listenerid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
        end
      end

      # DeleteListener返回参数结构体
      class DeleteListenerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccelerateAreas请求参数结构体
      class DescribeAccelerateAreasRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 符合条件实例数量。
        # @type Limit: Integer

        attr_accessor :GlobalAcceleratorId, :Offset, :Limit

        def initialize(globalacceleratorid=nil, offset=nil, limit=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccelerateAreas返回参数结构体
      class DescribeAccelerateAreasResponse < TencentCloud::Common::AbstractModel
        # @param AccelerateAreaSet: 加速地域信息。
        # @type AccelerateAreaSet: Array
        # @param TotalCount: 实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccelerateAreaSet, :TotalCount, :RequestId

        def initialize(accelerateareaset=nil, totalcount=nil, requestid=nil)
          @AccelerateAreaSet = accelerateareaset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccelerateAreaSet'].nil?
            @AccelerateAreaSet = []
            params['AccelerateAreaSet'].each do |i|
              acceleratorareas_tmp = AcceleratorAreas.new
              acceleratorareas_tmp.deserialize(i)
              @AccelerateAreaSet << acceleratorareas_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccelerateRegions请求参数结构体
      class DescribeAccelerateRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccelerateRegions返回参数结构体
      class DescribeAccelerateRegionsResponse < TencentCloud::Common::AbstractModel
        # @param AcceleratorRegionSet: 加速地域信息。
        # @type AcceleratorRegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AcceleratorRegionSet, :RequestId

        def initialize(acceleratorregionset=nil, requestid=nil)
          @AcceleratorRegionSet = acceleratorregionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AcceleratorRegionSet'].nil?
            @AcceleratorRegionSet = []
            params['AcceleratorRegionSet'].each do |i|
              acceleratorregionset_tmp = AcceleratorRegionSet.new
              acceleratorregionset_tmp.deserialize(i)
              @AcceleratorRegionSet << acceleratorregionset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossBorderSettlement请求参数结构体
      class DescribeCrossBorderSettlementRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param AccelerateRegion: 加速地域。
        # @type AccelerateRegion: String
        # @param EndpointGroupRegion: 终端节点组地域。
        # @type EndpointGroupRegion: String
        # @param SettlementMonth: 账单年月时间。
        # @type SettlementMonth: Integer

        attr_accessor :GlobalAcceleratorId, :AccelerateRegion, :EndpointGroupRegion, :SettlementMonth

        def initialize(globalacceleratorid=nil, accelerateregion=nil, endpointgroupregion=nil, settlementmonth=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @AccelerateRegion = accelerateregion
          @EndpointGroupRegion = endpointgroupregion
          @SettlementMonth = settlementmonth
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @AccelerateRegion = params['AccelerateRegion']
          @EndpointGroupRegion = params['EndpointGroupRegion']
          @SettlementMonth = params['SettlementMonth']
        end
      end

      # DescribeCrossBorderSettlement返回参数结构体
      class DescribeCrossBorderSettlementResponse < TencentCloud::Common::AbstractModel
        # @param Traffic: 流量用量，单位是GB；精度为保留小数点6位。
        # @type Traffic: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Traffic, :RequestId

        def initialize(traffic=nil, requestid=nil)
          @Traffic = traffic
          @RequestId = requestid
        end

        def deserialize(params)
          @Traffic = params['Traffic']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndpointGroups请求参数结构体
      class DescribeEndpointGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。  endpoint-group-id- String -（过滤条件）终端节点组实例ID。endpoint-group-type- String -（过滤条件）终端节点组实例类型。
        # @type Filters: Array

        attr_accessor :GlobalAcceleratorId, :Offset, :Limit, :Filters

        def initialize(globalacceleratorid=nil, offset=nil, limit=nil, filters=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
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

      # DescribeEndpointGroups返回参数结构体
      class DescribeEndpointGroupsResponse < TencentCloud::Common::AbstractModel
        # @param EndpointGroupConfigurationSet: 符合条件的终端节点组。
        # @type EndpointGroupConfigurationSet: Array
        # @param TotalCount: 符合条件的实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndpointGroupConfigurationSet, :TotalCount, :RequestId

        def initialize(endpointgroupconfigurationset=nil, totalcount=nil, requestid=nil)
          @EndpointGroupConfigurationSet = endpointgroupconfigurationset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EndpointGroupConfigurationSet'].nil?
            @EndpointGroupConfigurationSet = []
            params['EndpointGroupConfigurationSet'].each do |i|
              endpointgroupconfigurationset_tmp = EndpointGroupConfigurationSet.new
              endpointgroupconfigurationset_tmp.deserialize(i)
              @EndpointGroupConfigurationSet << endpointgroupconfigurationset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeForwardingRule请求参数结构体
      class DescribeForwardingRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 七层转发规则ID。
        # @type ForwardingPolicyId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :Offset, :Limit

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, offset=nil, limit=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeForwardingRule返回参数结构体
      class DescribeForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param ForwardingRuleSet: 符合条件的规则信息。
        # @type ForwardingRuleSet: Array
        # @param TotalCount: 符合条件的实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ForwardingRuleSet, :TotalCount, :RequestId

        def initialize(forwardingruleset=nil, totalcount=nil, requestid=nil)
          @ForwardingRuleSet = forwardingruleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ForwardingRuleSet'].nil?
            @ForwardingRuleSet = []
            params['ForwardingRuleSet'].each do |i|
              forwardingruleset_tmp = ForwardingRuleSet.new
              forwardingruleset_tmp.deserialize(i)
              @ForwardingRuleSet << forwardingruleset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlobalAccelerators请求参数结构体
      class DescribeGlobalAcceleratorsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。<li>global-accelerator-id - String -（过滤条件）全球加速实例ID。</li> <li>global-accelerator-state - String -（过滤条件）全球加速实例状态。</li>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
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
        end
      end

      # DescribeGlobalAccelerators返回参数结构体
      class DescribeGlobalAcceleratorsResponse < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorSet: 符合条件的全球加速实例。
        # @type GlobalAcceleratorSet: Array
        # @param TotalCount: 符合条件的实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalAcceleratorSet, :TotalCount, :RequestId

        def initialize(globalacceleratorset=nil, totalcount=nil, requestid=nil)
          @GlobalAcceleratorSet = globalacceleratorset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GlobalAcceleratorSet'].nil?
            @GlobalAcceleratorSet = []
            params['GlobalAcceleratorSet'].each do |i|
              globalacceleratorset_tmp = GlobalAcceleratorSet.new
              globalacceleratorset_tmp.deserialize(i)
              @GlobalAcceleratorSet << globalacceleratorset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeListeners请求参数结构体
      class DescribeListenersRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。  listener-id- String -（过滤条件）监听器实例ID。
        # @type Filters: Array

        attr_accessor :GlobalAcceleratorId, :Offset, :Limit, :Filters

        def initialize(globalacceleratorid=nil, offset=nil, limit=nil, filters=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
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

      # DescribeListeners返回参数结构体
      class DescribeListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 符合条件的监听器实例。
        # @type ListenerSet: Array
        # @param TotalCount: 符合条件的实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :TotalCount, :RequestId

        def initialize(listenerset=nil, totalcount=nil, requestid=nil)
          @ListenerSet = listenerset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              listenerset_tmp = ListenerSet.new
              listenerset_tmp.deserialize(i)
              @ListenerSet << listenerset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 终端节点配置
      class EndpointConfigurations < TencentCloud::Common::AbstractModel
        # @param EndpointType: 域名类型。可选值'Domain', 'PublicIp'。
        # @type EndpointType: String
        # @param EndpointService: 域名。
        # @type EndpointService: String
        # @param Weight: 权重。
        # @type Weight: Integer
        # @param HealthCheckStatus: 健康检查状态；HEALTH：健康；UNHEALTH：不健康。
        # @type HealthCheckStatus: String

        attr_accessor :EndpointType, :EndpointService, :Weight, :HealthCheckStatus

        def initialize(endpointtype=nil, endpointservice=nil, weight=nil, healthcheckstatus=nil)
          @EndpointType = endpointtype
          @EndpointService = endpointservice
          @Weight = weight
          @HealthCheckStatus = healthcheckstatus
        end

        def deserialize(params)
          @EndpointType = params['EndpointType']
          @EndpointService = params['EndpointService']
          @Weight = params['Weight']
          @HealthCheckStatus = params['HealthCheckStatus']
        end
      end

      # 终端节点组配置
      class EndpointGroupConfiguration < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param EndpointGroupRegion: <p>地域。</p>
        # @type EndpointGroupRegion: String
        # @param EndpointConfigurations: <p>终端节点配置。</p>
        # @type EndpointConfigurations: Array
        # @param CheckType: <p>检查协议。支持&#39;TCP&#39;, &#39;HTTP&#39;, &#39;HTTPS&#39;, &#39;PING&#39;, &#39;CUSTOM&#39;。</p>
        # @type CheckType: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param CheckPort: <p>检查端口。</p>
        # @type CheckPort: String
        # @param ContextType: <p>检查内容。</p>
        # @type ContextType: String
        # @param CheckSendContext: <p>检查请求。</p>
        # @type CheckSendContext: String
        # @param CheckRecvContext: <p>检查返回结果。</p>
        # @type CheckRecvContext: String
        # @param EnableHealthCheck: <p>是否开启健康检查。</p>
        # @type EnableHealthCheck: Boolean
        # @param ConnectTimeout: <p>响应超时时间。</p>
        # @type ConnectTimeout: Integer
        # @param HealthCheckInterval: <p>健康检查间隔。</p>
        # @type HealthCheckInterval: Integer
        # @param UnhealthyThreshold: <p>不健康阀值。</p>
        # @type UnhealthyThreshold: Integer
        # @param HealthyThreshold: <p>健康阈值。</p>
        # @type HealthyThreshold: Integer
        # @param ForwardProtocol: <p>回源协议。</p>
        # @type ForwardProtocol: String
        # @param CheckDomain: <p>检查域名。</p>
        # @type CheckDomain: String
        # @param CheckPath: <p>检查URL。</p>
        # @type CheckPath: String
        # @param CheckMethod: <p>请求方式。</p>
        # @type CheckMethod: String
        # @param StatusMask: <p>状态检测码。</p>
        # @type StatusMask: Array
        # @param PortOverrides: <p>端口映射。</p>
        # @type PortOverrides: Array
        # @param IspType: <p>运用商类型。</p>
        # @type IspType: String
        # @param CipherPolicyId: <p>HPPTS加密算法套件</p>
        # @type CipherPolicyId: String

        attr_accessor :Name, :EndpointGroupRegion, :EndpointConfigurations, :CheckType, :Description, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :ForwardProtocol, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :PortOverrides, :IspType, :CipherPolicyId

        def initialize(name=nil, endpointgroupregion=nil, endpointconfigurations=nil, checktype=nil, description=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, forwardprotocol=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, portoverrides=nil, isptype=nil, cipherpolicyid=nil)
          @Name = name
          @EndpointGroupRegion = endpointgroupregion
          @EndpointConfigurations = endpointconfigurations
          @CheckType = checktype
          @Description = description
          @CheckPort = checkport
          @ContextType = contexttype
          @CheckSendContext = checksendcontext
          @CheckRecvContext = checkrecvcontext
          @EnableHealthCheck = enablehealthcheck
          @ConnectTimeout = connecttimeout
          @HealthCheckInterval = healthcheckinterval
          @UnhealthyThreshold = unhealthythreshold
          @HealthyThreshold = healthythreshold
          @ForwardProtocol = forwardprotocol
          @CheckDomain = checkdomain
          @CheckPath = checkpath
          @CheckMethod = checkmethod
          @StatusMask = statusmask
          @PortOverrides = portoverrides
          @IspType = isptype
          @CipherPolicyId = cipherpolicyid
        end

        def deserialize(params)
          @Name = params['Name']
          @EndpointGroupRegion = params['EndpointGroupRegion']
          unless params['EndpointConfigurations'].nil?
            @EndpointConfigurations = []
            params['EndpointConfigurations'].each do |i|
              endpointconfigurations_tmp = EndpointConfigurations.new
              endpointconfigurations_tmp.deserialize(i)
              @EndpointConfigurations << endpointconfigurations_tmp
            end
          end
          @CheckType = params['CheckType']
          @Description = params['Description']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @CheckSendContext = params['CheckSendContext']
          @CheckRecvContext = params['CheckRecvContext']
          @EnableHealthCheck = params['EnableHealthCheck']
          @ConnectTimeout = params['ConnectTimeout']
          @HealthCheckInterval = params['HealthCheckInterval']
          @UnhealthyThreshold = params['UnhealthyThreshold']
          @HealthyThreshold = params['HealthyThreshold']
          @ForwardProtocol = params['ForwardProtocol']
          @CheckDomain = params['CheckDomain']
          @CheckPath = params['CheckPath']
          @CheckMethod = params['CheckMethod']
          @StatusMask = params['StatusMask']
          unless params['PortOverrides'].nil?
            @PortOverrides = []
            params['PortOverrides'].each do |i|
              portoverride_tmp = PortOverride.new
              portoverride_tmp.deserialize(i)
              @PortOverrides << portoverride_tmp
            end
          end
          @IspType = params['IspType']
          @CipherPolicyId = params['CipherPolicyId']
        end
      end

      # 终端节点组信息
      class EndpointGroupConfigurationSet < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器实例ID。</p>
        # @type ListenerId: String
        # @param EndpointGroupId: <p>终端节点组ID。</p>
        # @type EndpointGroupId: String
        # @param Name: <p>名称。</p>
        # @type Name: String
        # @param EndpointGroupRegion: <p>地域。</p>
        # @type EndpointGroupRegion: String
        # @param Description: <p>描述。</p>
        # @type Description: String
        # @param EndpointConfigurations: <p>终端节点信息。</p>
        # @type EndpointConfigurations: Array
        # @param EnableHealthCheck: <p>是否开启健康检查。</p>
        # @type EnableHealthCheck: Boolean
        # @param ConnectTimeout: <p>响应超时时间。</p>
        # @type ConnectTimeout: Integer
        # @param HealthCheckInterval: <p>健康检查间隔。</p>
        # @type HealthCheckInterval: Integer
        # @param UnhealthyThreshold: <p>不健康阈值。</p>
        # @type UnhealthyThreshold: Integer
        # @param HealthyThreshold: <p>健康阈值。</p>
        # @type HealthyThreshold: Integer
        # @param CheckType: <p>检查协议。</p>
        # @type CheckType: String
        # @param CheckPort: <p>检查端口。</p>
        # @type CheckPort: Integer
        # @param ContextType: <p>检查内容。</p>
        # @type ContextType: String
        # @param CheckSendContext: <p>检查请求。</p>
        # @type CheckSendContext: String
        # @param CheckRecvContext: <p>检查返回结果。</p>
        # @type CheckRecvContext: String
        # @param CheckDomain: <p>检查域名。</p>
        # @type CheckDomain: String
        # @param CheckPath: <p>检查URL。</p>
        # @type CheckPath: String
        # @param CheckMethod: <p>请求方式。</p>
        # @type CheckMethod: String
        # @param StatusMask: <p>状态检测码。</p>
        # @type StatusMask: Array
        # @param EndpointGroupType: <p>终端节点组类型。</p>
        # @type EndpointGroupType: String
        # @param ForwardProtocol: <p>回源协议。</p>
        # @type ForwardProtocol: String
        # @param PortOverrides: <p>端口映射信息。</p>
        # @type PortOverrides: Array
        # @param VirtualExistForwardingRuleFlag: <p>自定义终端节点组是否绑定七层转发规则。</p>
        # @type VirtualExistForwardingRuleFlag: Boolean
        # @param OriginPublicIps: <p>出终端节点组公网IP。</p>
        # @type OriginPublicIps: Array
        # @param IspType: <p>运营商类型；中国移动(CMCC)，中国联通(CUCC)，中国电信(CTCC)。</p>
        # @type IspType: String
        # @param CipherPolicyId: <p>HPPTS加密算法套件</p>
        # @type CipherPolicyId: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupId, :Name, :EndpointGroupRegion, :Description, :EndpointConfigurations, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :CheckType, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :EndpointGroupType, :ForwardProtocol, :PortOverrides, :VirtualExistForwardingRuleFlag, :OriginPublicIps, :IspType, :CipherPolicyId

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupid=nil, name=nil, endpointgroupregion=nil, description=nil, endpointconfigurations=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, checktype=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, endpointgrouptype=nil, forwardprotocol=nil, portoverrides=nil, virtualexistforwardingruleflag=nil, originpublicips=nil, isptype=nil, cipherpolicyid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @EndpointGroupId = endpointgroupid
          @Name = name
          @EndpointGroupRegion = endpointgroupregion
          @Description = description
          @EndpointConfigurations = endpointconfigurations
          @EnableHealthCheck = enablehealthcheck
          @ConnectTimeout = connecttimeout
          @HealthCheckInterval = healthcheckinterval
          @UnhealthyThreshold = unhealthythreshold
          @HealthyThreshold = healthythreshold
          @CheckType = checktype
          @CheckPort = checkport
          @ContextType = contexttype
          @CheckSendContext = checksendcontext
          @CheckRecvContext = checkrecvcontext
          @CheckDomain = checkdomain
          @CheckPath = checkpath
          @CheckMethod = checkmethod
          @StatusMask = statusmask
          @EndpointGroupType = endpointgrouptype
          @ForwardProtocol = forwardprotocol
          @PortOverrides = portoverrides
          @VirtualExistForwardingRuleFlag = virtualexistforwardingruleflag
          @OriginPublicIps = originpublicips
          @IspType = isptype
          @CipherPolicyId = cipherpolicyid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @EndpointGroupId = params['EndpointGroupId']
          @Name = params['Name']
          @EndpointGroupRegion = params['EndpointGroupRegion']
          @Description = params['Description']
          unless params['EndpointConfigurations'].nil?
            @EndpointConfigurations = []
            params['EndpointConfigurations'].each do |i|
              endpointconfigurations_tmp = EndpointConfigurations.new
              endpointconfigurations_tmp.deserialize(i)
              @EndpointConfigurations << endpointconfigurations_tmp
            end
          end
          @EnableHealthCheck = params['EnableHealthCheck']
          @ConnectTimeout = params['ConnectTimeout']
          @HealthCheckInterval = params['HealthCheckInterval']
          @UnhealthyThreshold = params['UnhealthyThreshold']
          @HealthyThreshold = params['HealthyThreshold']
          @CheckType = params['CheckType']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @CheckSendContext = params['CheckSendContext']
          @CheckRecvContext = params['CheckRecvContext']
          @CheckDomain = params['CheckDomain']
          @CheckPath = params['CheckPath']
          @CheckMethod = params['CheckMethod']
          @StatusMask = params['StatusMask']
          @EndpointGroupType = params['EndpointGroupType']
          @ForwardProtocol = params['ForwardProtocol']
          unless params['PortOverrides'].nil?
            @PortOverrides = []
            params['PortOverrides'].each do |i|
              portoverride_tmp = PortOverride.new
              portoverride_tmp.deserialize(i)
              @PortOverrides << portoverride_tmp
            end
          end
          @VirtualExistForwardingRuleFlag = params['VirtualExistForwardingRuleFlag']
          @OriginPublicIps = params['OriginPublicIps']
          @IspType = params['IspType']
          @CipherPolicyId = params['CipherPolicyId']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。当值类型为布尔类型时，可直接取值为字符串"TRUE"或 "FALSE"。
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

      # 七层转发规则信息
      class ForwardingRuleSet < TencentCloud::Common::AbstractModel
        # @param RuleCondition: 七层转发规则条件信息。
        # @type RuleCondition: Array
        # @param RuleAction: 七层转发规则行为信息。
        # @type RuleAction: Array
        # @param EnableOriginSni: 是否开启回源Sni。
        # @type EnableOriginSni: Boolean
        # @param OriginSni: 回源Sni。
        # @type OriginSni: String
        # @param OriginHeaders: 回源Herder信息。
        # @type OriginHeaders: Array
        # @param OriginHost: 回源Host。
        # @type OriginHost: String
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 七层转发策略ID。
        # @type ForwardingPolicyId: String
        # @param ForwardingRuleId: 七层转发规则ID。
        # @type ForwardingRuleId: String

        attr_accessor :RuleCondition, :RuleAction, :EnableOriginSni, :OriginSni, :OriginHeaders, :OriginHost, :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :ForwardingRuleId

        def initialize(rulecondition=nil, ruleaction=nil, enableoriginsni=nil, originsni=nil, originheaders=nil, originhost=nil, globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, forwardingruleid=nil)
          @RuleCondition = rulecondition
          @RuleAction = ruleaction
          @EnableOriginSni = enableoriginsni
          @OriginSni = originsni
          @OriginHeaders = originheaders
          @OriginHost = originhost
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @ForwardingRuleId = forwardingruleid
        end

        def deserialize(params)
          unless params['RuleCondition'].nil?
            @RuleCondition = []
            params['RuleCondition'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @RuleCondition << rulecondition_tmp
            end
          end
          unless params['RuleAction'].nil?
            @RuleAction = []
            params['RuleAction'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @RuleAction << ruleaction_tmp
            end
          end
          @EnableOriginSni = params['EnableOriginSni']
          @OriginSni = params['OriginSni']
          unless params['OriginHeaders'].nil?
            @OriginHeaders = []
            params['OriginHeaders'].each do |i|
              originheader_tmp = OriginHeader.new
              originheader_tmp.deserialize(i)
              @OriginHeaders << originheader_tmp
            end
          end
          @OriginHost = params['OriginHost']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @ForwardingRuleId = params['ForwardingRuleId']
        end
      end

      # 全球加速实例信息
      class GlobalAcceleratorSet < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Name: <p>全球加速实例名称。</p>
        # @type Name: String
        # @param Description: <p>全球加速实例描述。</p>
        # @type Description: String
        # @param CreateTime: <p>全球加速实例创建时间。</p>
        # @type CreateTime: String
        # @param State: <p>全球加速实例状态。</p>
        # @type State: String
        # @param InstanceChargeType: <p>全球加速实例付费类型。</p>
        # @type InstanceChargeType: String
        # @param DdosId: <p>全球加速实例DdosId。</p>
        # @type DdosId: String
        # @param ListenerCounts: <p>所属加速实例监听器个数。</p>
        # @type ListenerCounts: Integer
        # @param AcceleratorAreaCounts: <p>所属加速实例加速地域个数。</p>
        # @type AcceleratorAreaCounts: Integer
        # @param Status: <p>全球加速实例状态。</p>
        # @type Status: String
        # @param Cname: <p>域名。</p>
        # @type Cname: String
        # @param CrossBorderType: <p>跨境类型；HighQuality（精品跨境）、Unicom（联通跨境）、NotAvailable（未开通）。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrossBorderType: String
        # @param TagSet: <p>标签信息。</p>
        # @type TagSet: Array

        attr_accessor :GlobalAcceleratorId, :Name, :Description, :CreateTime, :State, :InstanceChargeType, :DdosId, :ListenerCounts, :AcceleratorAreaCounts, :Status, :Cname, :CrossBorderType, :TagSet

        def initialize(globalacceleratorid=nil, name=nil, description=nil, createtime=nil, state=nil, instancechargetype=nil, ddosid=nil, listenercounts=nil, acceleratorareacounts=nil, status=nil, cname=nil, crossbordertype=nil, tagset=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Name = name
          @Description = description
          @CreateTime = createtime
          @State = state
          @InstanceChargeType = instancechargetype
          @DdosId = ddosid
          @ListenerCounts = listenercounts
          @AcceleratorAreaCounts = acceleratorareacounts
          @Status = status
          @Cname = cname
          @CrossBorderType = crossbordertype
          @TagSet = tagset
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @InstanceChargeType = params['InstanceChargeType']
          @DdosId = params['DdosId']
          @ListenerCounts = params['ListenerCounts']
          @AcceleratorAreaCounts = params['AcceleratorAreaCounts']
          @Status = params['Status']
          @Cname = params['Cname']
          @CrossBorderType = params['CrossBorderType']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 加速地域公网IP信息
      class IpAddressInfoSet < TencentCloud::Common::AbstractModel
        # @param IpAddress: IP地址。
        # @type IpAddress: String
        # @param IspType: IP类型。
        # @type IspType: String

        attr_accessor :IpAddress, :IspType

        def initialize(ipaddress=nil, isptype=nil)
          @IpAddress = ipaddress
          @IspType = isptype
        end

        def deserialize(params)
          @IpAddress = params['IpAddress']
          @IspType = params['IspType']
        end
      end

      # 监听器信息
      class ListenerSet < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Name: 监听器名称。
        # @type Name: String
        # @param Description: 监听器描述。
        # @type Description: String
        # @param Protocol: 协议。
        # @type Protocol: String
        # @param PortRanges: 端口范围。
        # @type PortRanges: :class:`Tencentcloud::Ga2.v20250115.models.PortRanges`
        # @param XForwardedForRealIp: 是否打开七层获取源IP方式。
        # @type XForwardedForRealIp: Boolean
        # @param ClientAffinity: 开启会话保持。
        # @type ClientAffinity: String
        # @param ClientAffinityTime: 会话保持时间。
        # @type ClientAffinityTime: Integer
        # @param CertificationType: SSL解析方式。
        # @type CertificationType: String
        # @param ServerCertificates: 服务器证书。
        # @type ServerCertificates: Array
        # @param ClientCaCertificates: 客户端证书。
        # @type ClientCaCertificates: Array
        # @param CipherPolicyId: TLS密码套件包。
        # @type CipherPolicyId: String
        # @param HttpVersion: HTTP版本。
        # @type HttpVersion: String
        # @param RequestTimeout: 请求超时时间。
        # @type RequestTimeout: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ListenerType: 监听路由类型。
        # @type ListenerType: String
        # @param Status: 监听器状态。
        # @type Status: String
        # @param EndpointGroupCounts: 所属监听器终端节点组个数。
        # @type EndpointGroupCounts: Integer
        # @param GetRealIpType: 四层获取源IP方式。
        # @type GetRealIpType: String
        # @param IdleTimeout: 连接超时时间。
        # @type IdleTimeout: Integer

        attr_accessor :GlobalAcceleratorId, :ListenerId, :Name, :Description, :Protocol, :PortRanges, :XForwardedForRealIp, :ClientAffinity, :ClientAffinityTime, :CertificationType, :ServerCertificates, :ClientCaCertificates, :CipherPolicyId, :HttpVersion, :RequestTimeout, :CreateTime, :ListenerType, :Status, :EndpointGroupCounts, :GetRealIpType, :IdleTimeout

        def initialize(globalacceleratorid=nil, listenerid=nil, name=nil, description=nil, protocol=nil, portranges=nil, xforwardedforrealip=nil, clientaffinity=nil, clientaffinitytime=nil, certificationtype=nil, servercertificates=nil, clientcacertificates=nil, cipherpolicyid=nil, httpversion=nil, requesttimeout=nil, createtime=nil, listenertype=nil, status=nil, endpointgroupcounts=nil, getrealiptype=nil, idletimeout=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @Name = name
          @Description = description
          @Protocol = protocol
          @PortRanges = portranges
          @XForwardedForRealIp = xforwardedforrealip
          @ClientAffinity = clientaffinity
          @ClientAffinityTime = clientaffinitytime
          @CertificationType = certificationtype
          @ServerCertificates = servercertificates
          @ClientCaCertificates = clientcacertificates
          @CipherPolicyId = cipherpolicyid
          @HttpVersion = httpversion
          @RequestTimeout = requesttimeout
          @CreateTime = createtime
          @ListenerType = listenertype
          @Status = status
          @EndpointGroupCounts = endpointgroupcounts
          @GetRealIpType = getrealiptype
          @IdleTimeout = idletimeout
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @Name = params['Name']
          @Description = params['Description']
          @Protocol = params['Protocol']
          unless params['PortRanges'].nil?
            @PortRanges = PortRanges.new
            @PortRanges.deserialize(params['PortRanges'])
          end
          @XForwardedForRealIp = params['XForwardedForRealIp']
          @ClientAffinity = params['ClientAffinity']
          @ClientAffinityTime = params['ClientAffinityTime']
          @CertificationType = params['CertificationType']
          @ServerCertificates = params['ServerCertificates']
          @ClientCaCertificates = params['ClientCaCertificates']
          @CipherPolicyId = params['CipherPolicyId']
          @HttpVersion = params['HttpVersion']
          @RequestTimeout = params['RequestTimeout']
          @CreateTime = params['CreateTime']
          @ListenerType = params['ListenerType']
          @Status = params['Status']
          @EndpointGroupCounts = params['EndpointGroupCounts']
          @GetRealIpType = params['GetRealIpType']
          @IdleTimeout = params['IdleTimeout']
        end
      end

      # ModifyAccelerateAreas请求参数结构体
      class ModifyAccelerateAreasRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param AcceleratorAreas: 加速地域信息。
        # @type AcceleratorAreas: Array

        attr_accessor :GlobalAcceleratorId, :AcceleratorAreas

        def initialize(globalacceleratorid=nil, acceleratorareas=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @AcceleratorAreas = acceleratorareas
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          unless params['AcceleratorAreas'].nil?
            @AcceleratorAreas = []
            params['AcceleratorAreas'].each do |i|
              acceleratorareas_tmp = AcceleratorAreas.new
              acceleratorareas_tmp.deserialize(i)
              @AcceleratorAreas << acceleratorareas_tmp
            end
          end
        end
      end

      # ModifyAccelerateAreas返回参数结构体
      class ModifyAccelerateAreasResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyEndpointGroup请求参数结构体
      class ModifyEndpointGroupRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param EndpointGroupId: <p>终端节点组ID。</p>
        # @type EndpointGroupId: String
        # @param EndpointConfigurations: <p>终端节点配置。</p>
        # @type EndpointConfigurations: Array
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param EnableHealthCheck: <p>是否开启健康检查。</p>
        # @type EnableHealthCheck: Boolean
        # @param ConnectTimeout: <p>响应超时时间。</p>
        # @type ConnectTimeout: Integer
        # @param HealthCheckInterval: <p>健康检查间隔。</p>
        # @type HealthCheckInterval: Integer
        # @param UnhealthyThreshold: <p>不健康阀值。</p>
        # @type UnhealthyThreshold: Integer
        # @param HealthyThreshold: <p>健康阀值。</p>
        # @type HealthyThreshold: Integer
        # @param CheckType: <p>检查协议。</p>
        # @type CheckType: String
        # @param CheckPort: <p>检查端口。</p>
        # @type CheckPort: Integer
        # @param ContextType: <p>检查内容。</p>
        # @type ContextType: String
        # @param CheckSendContext: <p>检查请求。</p>
        # @type CheckSendContext: String
        # @param CheckRecvContext: <p>检查返回结果。</p>
        # @type CheckRecvContext: String
        # @param CheckDomain: <p>检查域名。</p>
        # @type CheckDomain: String
        # @param CheckPath: <p>检查URL。</p>
        # @type CheckPath: String
        # @param CheckMethod: <p>请求方式。</p>
        # @type CheckMethod: String
        # @param StatusMask: <p>状态检测码。</p>
        # @type StatusMask: Array
        # @param ForwardProtocol: <p>回源协议。</p>
        # @type ForwardProtocol: String
        # @param PortOverrides: <p>端口映射。</p>
        # @type PortOverrides: Array
        # @param CipherPolicyId: <p>HPPTS加密算法套件</p>
        # @type CipherPolicyId: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupId, :EndpointConfigurations, :Name, :Description, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :CheckType, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :ForwardProtocol, :PortOverrides, :CipherPolicyId

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupid=nil, endpointconfigurations=nil, name=nil, description=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, checktype=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, forwardprotocol=nil, portoverrides=nil, cipherpolicyid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @EndpointGroupId = endpointgroupid
          @EndpointConfigurations = endpointconfigurations
          @Name = name
          @Description = description
          @EnableHealthCheck = enablehealthcheck
          @ConnectTimeout = connecttimeout
          @HealthCheckInterval = healthcheckinterval
          @UnhealthyThreshold = unhealthythreshold
          @HealthyThreshold = healthythreshold
          @CheckType = checktype
          @CheckPort = checkport
          @ContextType = contexttype
          @CheckSendContext = checksendcontext
          @CheckRecvContext = checkrecvcontext
          @CheckDomain = checkdomain
          @CheckPath = checkpath
          @CheckMethod = checkmethod
          @StatusMask = statusmask
          @ForwardProtocol = forwardprotocol
          @PortOverrides = portoverrides
          @CipherPolicyId = cipherpolicyid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @EndpointGroupId = params['EndpointGroupId']
          unless params['EndpointConfigurations'].nil?
            @EndpointConfigurations = []
            params['EndpointConfigurations'].each do |i|
              endpointconfigurations_tmp = EndpointConfigurations.new
              endpointconfigurations_tmp.deserialize(i)
              @EndpointConfigurations << endpointconfigurations_tmp
            end
          end
          @Name = params['Name']
          @Description = params['Description']
          @EnableHealthCheck = params['EnableHealthCheck']
          @ConnectTimeout = params['ConnectTimeout']
          @HealthCheckInterval = params['HealthCheckInterval']
          @UnhealthyThreshold = params['UnhealthyThreshold']
          @HealthyThreshold = params['HealthyThreshold']
          @CheckType = params['CheckType']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @CheckSendContext = params['CheckSendContext']
          @CheckRecvContext = params['CheckRecvContext']
          @CheckDomain = params['CheckDomain']
          @CheckPath = params['CheckPath']
          @CheckMethod = params['CheckMethod']
          @StatusMask = params['StatusMask']
          @ForwardProtocol = params['ForwardProtocol']
          unless params['PortOverrides'].nil?
            @PortOverrides = []
            params['PortOverrides'].each do |i|
              portoverride_tmp = PortOverride.new
              portoverride_tmp.deserialize(i)
              @PortOverrides << portoverride_tmp
            end
          end
          @CipherPolicyId = params['CipherPolicyId']
        end
      end

      # ModifyEndpointGroup返回参数结构体
      class ModifyEndpointGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID。</p>
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyForwardingRule请求参数结构体
      class ModifyForwardingRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 策略ID。
        # @type ForwardingPolicyId: String
        # @param ForwardingRuleId: 七层转发规则ID。
        # @type ForwardingRuleId: String
        # @param RuleConditions: 七层转发规则条件信息。
        # @type RuleConditions: Array
        # @param RuleActions: 七层转发规则行为信息。
        # @type RuleActions: Array
        # @param OriginHeaders: 回源Header信息。
        # @type OriginHeaders: Array
        # @param EnableOriginSni: 是否开启回源sni。
        # @type EnableOriginSni: Boolean
        # @param OriginSni: 回源sni。
        # @type OriginSni: String
        # @param OriginHost: 回源host。
        # @type OriginHost: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :ForwardingRuleId, :RuleConditions, :RuleActions, :OriginHeaders, :EnableOriginSni, :OriginSni, :OriginHost

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, forwardingruleid=nil, ruleconditions=nil, ruleactions=nil, originheaders=nil, enableoriginsni=nil, originsni=nil, originhost=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @ForwardingRuleId = forwardingruleid
          @RuleConditions = ruleconditions
          @RuleActions = ruleactions
          @OriginHeaders = originheaders
          @EnableOriginSni = enableoriginsni
          @OriginSni = originsni
          @OriginHost = originhost
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @ForwardingRuleId = params['ForwardingRuleId']
          unless params['RuleConditions'].nil?
            @RuleConditions = []
            params['RuleConditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @RuleConditions << rulecondition_tmp
            end
          end
          unless params['RuleActions'].nil?
            @RuleActions = []
            params['RuleActions'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @RuleActions << ruleaction_tmp
            end
          end
          unless params['OriginHeaders'].nil?
            @OriginHeaders = []
            params['OriginHeaders'].each do |i|
              originheader_tmp = OriginHeader.new
              originheader_tmp.deserialize(i)
              @OriginHeaders << originheader_tmp
            end
          end
          @EnableOriginSni = params['EnableOriginSni']
          @OriginSni = params['OriginSni']
          @OriginHost = params['OriginHost']
        end
      end

      # ModifyForwardingRule返回参数结构体
      class ModifyForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyGlobalAccelerator请求参数结构体
      class ModifyGlobalAcceleratorRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param Name: 名称，最大长度不能超过60个字节。
        # @type Name: String
        # @param Description: 描述信息，最大长度不能超过100个字节。
        # @type Description: String
        # @param CrossBorderType: 跨境类型。
        # @type CrossBorderType: String
        # @param CrossBorderPromiseFlag: 代表是否跨境服务承诺。
        # @type CrossBorderPromiseFlag: Boolean

        attr_accessor :GlobalAcceleratorId, :Name, :Description, :CrossBorderType, :CrossBorderPromiseFlag

        def initialize(globalacceleratorid=nil, name=nil, description=nil, crossbordertype=nil, crossborderpromiseflag=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Name = name
          @Description = description
          @CrossBorderType = crossbordertype
          @CrossBorderPromiseFlag = crossborderpromiseflag
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @Name = params['Name']
          @Description = params['Description']
          @CrossBorderType = params['CrossBorderType']
          @CrossBorderPromiseFlag = params['CrossBorderPromiseFlag']
        end
      end

      # ModifyGlobalAccelerator返回参数结构体
      class ModifyGlobalAcceleratorResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyListener请求参数结构体
      class ModifyListenerRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Name: 名称，最大长度不能超过60个字节。
        # @type Name: String
        # @param Description: 描述信息，最大长度不能超过100个字节。
        # @type Description: String
        # @param IdleTimeout: 连接空闲等待时间。
        # @type IdleTimeout: Integer
        # @param ClientAffinity: 是否开启会话保持。
        # @type ClientAffinity: String
        # @param ClientAffinityTime: 会话保持时间。
        # @type ClientAffinityTime: Integer
        # @param RequestTimeout: 请求超时时间。
        # @type RequestTimeout: Integer
        # @param XForwardedForRealIp: 是否打开七层获取源IP方式。
        # @type XForwardedForRealIp: Boolean
        # @param CertificationType: 解析方式。UNIDIRECTIONAL：双向。MUTUAL：单向。
        # @type CertificationType: String
        # @param CipherPolicyId: 加密算法套件。
        # @type CipherPolicyId: String
        # @param ServerCertificates: 服务器证书。
        # @type ServerCertificates: Array
        # @param ClientCaCertificates: 客户端证书。
        # @type ClientCaCertificates: Array
        # @param GetRealIpType: 四层获取源IP方式。
        # @type GetRealIpType: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :Name, :Description, :IdleTimeout, :ClientAffinity, :ClientAffinityTime, :RequestTimeout, :XForwardedForRealIp, :CertificationType, :CipherPolicyId, :ServerCertificates, :ClientCaCertificates, :GetRealIpType

        def initialize(globalacceleratorid=nil, listenerid=nil, name=nil, description=nil, idletimeout=nil, clientaffinity=nil, clientaffinitytime=nil, requesttimeout=nil, xforwardedforrealip=nil, certificationtype=nil, cipherpolicyid=nil, servercertificates=nil, clientcacertificates=nil, getrealiptype=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @Name = name
          @Description = description
          @IdleTimeout = idletimeout
          @ClientAffinity = clientaffinity
          @ClientAffinityTime = clientaffinitytime
          @RequestTimeout = requesttimeout
          @XForwardedForRealIp = xforwardedforrealip
          @CertificationType = certificationtype
          @CipherPolicyId = cipherpolicyid
          @ServerCertificates = servercertificates
          @ClientCaCertificates = clientcacertificates
          @GetRealIpType = getrealiptype
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @Name = params['Name']
          @Description = params['Description']
          @IdleTimeout = params['IdleTimeout']
          @ClientAffinity = params['ClientAffinity']
          @ClientAffinityTime = params['ClientAffinityTime']
          @RequestTimeout = params['RequestTimeout']
          @XForwardedForRealIp = params['XForwardedForRealIp']
          @CertificationType = params['CertificationType']
          @CipherPolicyId = params['CipherPolicyId']
          @ServerCertificates = params['ServerCertificates']
          @ClientCaCertificates = params['ClientCaCertificates']
          @GetRealIpType = params['GetRealIpType']
        end
      end

      # ModifyListener返回参数结构体
      class ModifyListenerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 回源Header信息
      class OriginHeader < TencentCloud::Common::AbstractModel
        # @param Key: 键。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 值。
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

      # 端口映射
      class PortOverride < TencentCloud::Common::AbstractModel
        # @param ListenerPort: 监听端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerPort: Integer
        # @param EndpointPort: 映射端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndpointPort: Integer

        attr_accessor :ListenerPort, :EndpointPort

        def initialize(listenerport=nil, endpointport=nil)
          @ListenerPort = listenerport
          @EndpointPort = endpointport
        end

        def deserialize(params)
          @ListenerPort = params['ListenerPort']
          @EndpointPort = params['EndpointPort']
        end
      end

      # 端口范围
      class PortRanges < TencentCloud::Common::AbstractModel
        # @param FromPort: 起始端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromPort: Integer
        # @param ToPort: 终点端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToPort: Integer

        attr_accessor :FromPort, :ToPort

        def initialize(fromport=nil, toport=nil)
          @FromPort = fromport
          @ToPort = toport
        end

        def deserialize(params)
          @FromPort = params['FromPort']
          @ToPort = params['ToPort']
        end
      end

      # 七层转发规则行为信息
      class RuleAction < TencentCloud::Common::AbstractModel
        # @param RuleActionType: 七层转发规则行为类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleActionType: String
        # @param RuleActionValue: 七层转发规则行为值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleActionValue: String

        attr_accessor :RuleActionType, :RuleActionValue

        def initialize(ruleactiontype=nil, ruleactionvalue=nil)
          @RuleActionType = ruleactiontype
          @RuleActionValue = ruleactionvalue
        end

        def deserialize(params)
          @RuleActionType = params['RuleActionType']
          @RuleActionValue = params['RuleActionValue']
        end
      end

      # 七层转发规则条件信息
      class RuleCondition < TencentCloud::Common::AbstractModel
        # @param RuleConditionType: 七层转发规则条件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleConditionType: String
        # @param RuleConditionValue: 七层转发规则条件值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleConditionValue: Array

        attr_accessor :RuleConditionType, :RuleConditionValue

        def initialize(ruleconditiontype=nil, ruleconditionvalue=nil)
          @RuleConditionType = ruleconditiontype
          @RuleConditionValue = ruleconditionvalue
        end

        def deserialize(params)
          @RuleConditionType = params['RuleConditionType']
          @RuleConditionValue = params['RuleConditionValue']
        end
      end

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

    end
  end
end

