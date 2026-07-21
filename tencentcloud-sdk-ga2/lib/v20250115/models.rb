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
        # @param AccelerateRegion: <p>加速地域。</p>
        # @type AccelerateRegion: String
        # @param Bandwidth: <p>带宽。</p>
        # @type Bandwidth: Integer
        # @param IspType: <p>支持&#39;BGP&#39;, &#39;QUALITY_BGP&#39;, &#39;STATIC_IP&#39;，默认BGP。</p><p>枚举值：</p><ul><li>BGP： BGP</li><li>STATIC_IP： 三网</li><li>QUALITY_BGP： 精品BGP</li></ul>
        # @type IspType: String
        # @param IpVersion: <p>仅支持IPv4，默认是IPv4。</p>
        # @type IpVersion: String
        # @param AcceleratorAreaId: <p>加速地域ID。</p>
        # @type AcceleratorAreaId: String
        # @param IpAddress: <p>IP。</p>
        # @type IpAddress: Array
        # @param IpAddressInfoSet: <p>IP信息。</p>
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

      # Acl信息
      class AclEntries < TencentCloud::Common::AbstractModel
        # @param Protocol: <p>协议。</p><p>入参限制：支持配置&#39;TCP&#39;, &#39;UDP&#39;, &#39;ALL&#39;；</p>
        # @type Protocol: String
        # @param Port: <p>端口。</p>
        # @type Port: String
        # @param SourceCidrBlock: <p>网段。</p>
        # @type SourceCidrBlock: String
        # @param Policy: <p>执行动作。</p><p>入参限制：支持配置&#39;ACCEPT&#39;, &#39;DROP&#39;；</p>
        # @type Policy: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String

        attr_accessor :Protocol, :Port, :SourceCidrBlock, :Policy, :Description

        def initialize(protocol=nil, port=nil, sourcecidrblock=nil, policy=nil, description=nil)
          @Protocol = protocol
          @Port = port
          @SourceCidrBlock = sourcecidrblock
          @Policy = policy
          @Description = description
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
          @SourceCidrBlock = params['SourceCidrBlock']
          @Policy = params['Policy']
          @Description = params['Description']
        end
      end

      # CreateAccelerateAreas请求参数结构体
      class CreateAccelerateAreasRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param AcceleratorAreas: <p>加速地域信息。一次最多创建10组加速地域。</p>
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
        # @param TaskId: <p>异步任务ID。</p>
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param EndpointGroupType: <p>终端节点组类型。</p><p>枚举值：</p><ul><li>VIRTUAL： 自定义终端节点组</li><li>DEFAULT： 默认终端节点组</li></ul>
        # @type EndpointGroupType: String
        # @param EndpointGroupConfiguration: <p>终端节点组配置。</p>
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
        # @param TaskId: <p>任务ID。</p>
        # @type TaskId: String
        # @param EndpointGroupId: <p>终端节点组实例ID。</p>
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

      # CreateForwardingPolicy请求参数结构体
      class CreateForwardingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param Host: <p>域名。</p><p>参数格式：格式，必须满足正则表达式：^(<a href="?:[a-z0-9-]{0,61}[a-z0-9]">a-z0-9</a>?.)+[a-z]{2,}$</p><p>入参限制：长度范围是1-80。</p>
        # @type Host: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :Host

        def initialize(globalacceleratorid=nil, listenerid=nil, host=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @Host = host
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @Host = params['Host']
        end
      end

      # CreateForwardingPolicy返回参数结构体
      class CreateForwardingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
        # @type TaskId: String
        # @param ForwardingPolicyId: <p>七层转发策略ID。</p>
        # @type ForwardingPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ForwardingPolicyId, :RequestId

        def initialize(taskid=nil, forwardingpolicyid=nil, requestid=nil)
          @TaskId = taskid
          @ForwardingPolicyId = forwardingpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateForwardingRule请求参数结构体
      class CreateForwardingRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param ForwardingPolicyId: <p>策略ID。</p>
        # @type ForwardingPolicyId: String
        # @param RuleConditions: <p>七层转发规则条件信息。</p><p>数组长度最大不能超过1。</p>
        # @type RuleConditions: Array
        # @param RuleActions: <p>七层转发规则行为信息。</p><p>数组长度最大不能超过1。</p>
        # @type RuleActions: Array
        # @param OriginHeaders: <p>回源Header信息。</p><p>数组长度最大不能超过5。当RuleActions.RuleActionType是ForwardGroup时，此字段必传。</p>
        # @type OriginHeaders: Array
        # @param EnableOriginSni: <p>是否开启回源sni。</p><p>默认值：False</p><p>当RuleActions.RuleActionType是ForwardGroup时，此字段必传。</p>
        # @type EnableOriginSni: Boolean
        # @param OriginSni: <p>回源sni。</p><p>入参限制：长度不能超过80。</p><p>当EnableOriginSni为True时，此字段必传。当RuleActions.RuleActionType是ForwardGroup时，此字段必传。</p>
        # @type OriginSni: String
        # @param OriginHost: <p>回源host。</p><p>入参限制：长度不超过80。</p><p>当RuleActions.RuleActionType是ForwardGroup时，此字段必传。</p>
        # @type OriginHost: String
        # @param ResponseHeaders: <p>源站响应头</p><p>数组长度不超过5。可以传空数组，代表清空配置。</p>
        # @type ResponseHeaders: Array
        # @param HideResponseHeaders: <p>删除源站响应头</p><p>数组长度不超过5。可以传空数组，代表清空配置。</p>
        # @type HideResponseHeaders: Array

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :RuleConditions, :RuleActions, :OriginHeaders, :EnableOriginSni, :OriginSni, :OriginHost, :ResponseHeaders, :HideResponseHeaders

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, ruleconditions=nil, ruleactions=nil, originheaders=nil, enableoriginsni=nil, originsni=nil, originhost=nil, responseheaders=nil, hideresponseheaders=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @RuleConditions = ruleconditions
          @RuleActions = ruleactions
          @OriginHeaders = originheaders
          @EnableOriginSni = enableoriginsni
          @OriginSni = originsni
          @OriginHost = originhost
          @ResponseHeaders = responseheaders
          @HideResponseHeaders = hideresponseheaders
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
          unless params['ResponseHeaders'].nil?
            @ResponseHeaders = []
            params['ResponseHeaders'].each do |i|
              responseheaders_tmp = ResponseHeaders.new
              responseheaders_tmp.deserialize(i)
              @ResponseHeaders << responseheaders_tmp
            end
          end
          unless params['HideResponseHeaders'].nil?
            @HideResponseHeaders = []
            params['HideResponseHeaders'].each do |i|
              hideresponseheaders_tmp = HideResponseHeaders.new
              hideresponseheaders_tmp.deserialize(i)
              @HideResponseHeaders << hideresponseheaders_tmp
            end
          end
        end
      end

      # CreateForwardingRule返回参数结构体
      class CreateForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
        # @type TaskId: String
        # @param ForwardingRuleId: <p>七层转发规则ID。</p>
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

      # CreateGlobalAcceleratorAccessLog请求参数结构体
      class CreateGlobalAcceleratorAccessLogRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>GA示例唯一Id</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器Id</p>
        # @type ListenerId: String
        # @param EndpointGroupId: <p>终端节点组Id</p>
        # @type EndpointGroupId: String
        # @param CloudRegion: <p>日志集所在地域</p>
        # @type CloudRegion: String
        # @param CloudLogId: <p>日志主题Id</p>
        # @type CloudLogId: String
        # @param CloudLogSetId: <p>日志集Id</p>
        # @type CloudLogSetId: String
        # @param FieldKeys: <p>指定采集字段</p><p>枚举值：</p><ul><li>session_time： 四层，会话持续时间</li><li>upstream_bytes_received： 四层、七层，从终端节点接收的字节数</li><li>upstream_bytes_sent： 四层、七层，发送给终端节点的字节数</li><li>request_method： 七层，GET/POST</li><li>scheme： 七层，http/https</li><li>request_uri： 七层，客户端原始请求的URI</li><li>uri： 七层，当前请求的URI</li><li>host： 七层，客户端访问域名（七层）</li><li>remote_user： 七层，基本认证时的用户名（未认证时为&quot;-&quot;）</li><li>http_user_agent： 七层，客户端浏览器标识</li><li>http_referer： 七层，请求来源URL（直接从地址栏访问时为&quot;-&quot;）</li><li>http_x_forwarded_for： 七层，记录客户端原始IP及经过的代理服务器IP链</li><li>content_type： 七层，content_type</li><li>body_bytes_sent： 七层，发送给客户端的http body大小，不包含header</li><li>request_time： 七层，从接收到客户端请求的第一个字节到发送完响应最后一个字节之间的总时间（单位：秒）</li><li>sent_http_content_type： 七层，响应内容类型</li><li>upstream_header_time： 七层，终端节点的响应头到达时间</li><li>upstream_response_length： 七层，终端节点返回的响应体长度</li><li>upstream_response_time： 七层，终端节点完整响应时间</li><li>upstream_status： 七层，终端节点返回的HTTP状态码</li></ul>
        # @type FieldKeys: Array
        # @param FlowLogDescription: <p>日志描述</p>
        # @type FlowLogDescription: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupId, :CloudRegion, :CloudLogId, :CloudLogSetId, :FieldKeys, :FlowLogDescription

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupid=nil, cloudregion=nil, cloudlogid=nil, cloudlogsetid=nil, fieldkeys=nil, flowlogdescription=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @EndpointGroupId = endpointgroupid
          @CloudRegion = cloudregion
          @CloudLogId = cloudlogid
          @CloudLogSetId = cloudlogsetid
          @FieldKeys = fieldkeys
          @FlowLogDescription = flowlogdescription
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @EndpointGroupId = params['EndpointGroupId']
          @CloudRegion = params['CloudRegion']
          @CloudLogId = params['CloudLogId']
          @CloudLogSetId = params['CloudLogSetId']
          @FieldKeys = params['FieldKeys']
          @FlowLogDescription = params['FlowLogDescription']
        end
      end

      # CreateGlobalAcceleratorAccessLog返回参数结构体
      class CreateGlobalAcceleratorAccessLogResponse < TencentCloud::Common::AbstractModel
        # @param LogPushTaskId: <p>日志任务唯一Id</p>
        # @type LogPushTaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogPushTaskId, :RequestId

        def initialize(logpushtaskid=nil, requestid=nil)
          @LogPushTaskId = logpushtaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogPushTaskId = params['LogPushTaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGlobalAcceleratorAclPolicy请求参数结构体
      class CreateGlobalAcceleratorAclPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param DefaultAction: <p>默认行为。</p><p>枚举值：</p><ul><li>ACCEPT： 默认准许所有流量访问通道</li><li>DROP： 默认拒绝所有流量访问通道</li></ul>
        # @type DefaultAction: String

        attr_accessor :GlobalAcceleratorId, :DefaultAction

        def initialize(globalacceleratorid=nil, defaultaction=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @DefaultAction = defaultaction
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @DefaultAction = params['DefaultAction']
        end
      end

      # CreateGlobalAcceleratorAclPolicy返回参数结构体
      class CreateGlobalAcceleratorAclPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
        # @type TaskId: String
        # @param GlobalAcceleratorAclPolicyId: <p>访问控制策略ID。</p>
        # @type GlobalAcceleratorAclPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :GlobalAcceleratorAclPolicyId, :RequestId

        def initialize(taskid=nil, globalacceleratoraclpolicyid=nil, requestid=nil)
          @TaskId = taskid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGlobalAcceleratorAclRule请求参数结构体
      class CreateGlobalAcceleratorAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param GlobalAcceleratorAclPolicyId: 安全策略ID
        # @type GlobalAcceleratorAclPolicyId: String
        # @param AclEntries: Acl信息。
        # @type AclEntries: Array

        attr_accessor :GlobalAcceleratorId, :GlobalAcceleratorAclPolicyId, :AclEntries

        def initialize(globalacceleratorid=nil, globalacceleratoraclpolicyid=nil, aclentries=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @AclEntries = aclentries
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          unless params['AclEntries'].nil?
            @AclEntries = []
            params['AclEntries'].each do |i|
              aclentries_tmp = AclEntries.new
              aclentries_tmp.deserialize(i)
              @AclEntries << aclentries_tmp
            end
          end
        end
      end

      # CreateGlobalAcceleratorAclRule返回参数结构体
      class CreateGlobalAcceleratorAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param GlobalAcceleratorAclRuleIds: ACL规则ID。
        # @type GlobalAcceleratorAclRuleIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :GlobalAcceleratorAclRuleIds, :RequestId

        def initialize(taskid=nil, globalacceleratoraclruleids=nil, requestid=nil)
          @TaskId = taskid
          @GlobalAcceleratorAclRuleIds = globalacceleratoraclruleids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @GlobalAcceleratorAclRuleIds = params['GlobalAcceleratorAclRuleIds']
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

      # CreateListenerAdditionalCert请求参数结构体
      class CreateListenerAdditionalCertRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param AdditionalCertificates: <p>证书ID。</p><p>当前只能添加服务器证书。</p>
        # @type AdditionalCertificates: Array

        attr_accessor :GlobalAcceleratorId, :ListenerId, :AdditionalCertificates

        def initialize(globalacceleratorid=nil, listenerid=nil, additionalcertificates=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @AdditionalCertificates = additionalcertificates
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @AdditionalCertificates = params['AdditionalCertificates']
        end
      end

      # CreateListenerAdditionalCert返回参数结构体
      class CreateListenerAdditionalCertResponse < TencentCloud::Common::AbstractModel
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
        # @param ListenerType: <p>监听类型，默认为智能路由。</p><p>枚举值：</p><ul><li>Standard： 智能路由。</li></ul>
        # @type ListenerType: String
        # @param Protocol: <p>协议，默认为TCP。支持配置&#39;TCP&#39;, &#39;UDP&#39;, &#39;HTTP&#39;, &#39;HTTPS&#39;。</p>
        # @type Protocol: String
        # @param IdleTimeout: <p>连接空闲等待时间。</p><p>1、HTTP/HTTPS监听器，默认值为15，支持范围为1-60；<br>2、TCP监听器，默认值为900，支持范围为10-900；<br>3、UDP监听器，默认值为20，支持范围为10-20；</p>
        # @type IdleTimeout: Integer
        # @param GetRealIpType: <p>四层获取源IP方式，支持&#39;TOA&#39;, &#39;ProxyProtocol&#39;, &#39;ProxyProtocolV2&#39;。</p><p>需要开启四层获取源IP方式，才填写此参数。</p>
        # @type GetRealIpType: String
        # @param ClientAffinity: <p>是否开启会话保持。支持配置&#39;Open&#39;, &#39;Close&#39;。</p><p>枚举值：</p><ul><li>Open： 开启。</li><li>Close： 关闭。</li></ul>
        # @type ClientAffinity: String
        # @param RequestTimeout: <p>请求超时时间。</p><p>取值范围：[1, 180]</p><p>默认值：60</p><p>当HTTPS监听器时才可配置此参数。</p>
        # @type RequestTimeout: Integer
        # @param XForwardedForRealIp: <p>是否打开七层获取源IP方式。</p>
        # @type XForwardedForRealIp: Boolean
        # @param CertificationType: <p>解析方式。</p><p>枚举值：</p><ul><li>UNIDIRECTIONAL： 双向。</li><li>U： 单向。</li></ul><p>HTTPS监听器，此字段必传。</p>
        # @type CertificationType: String
        # @param CipherPolicyId: <p>加密算法套件。支持配置&#39;tls_policy_1.0-2&#39;, &#39;tls_policy_1.1-2&#39;, &#39;tls_policy_1.2&#39;, &#39;tls_policy_1.2_strict&#39;, &#39;tls_policy_1.2_strict-1.3&#39;。</p>
        # @type CipherPolicyId: String
        # @param ServerCertificates: <p>服务器证书。</p><p>当是HTTPS监听器时，此字段必传。</p>
        # @type ServerCertificates: Array
        # @param ClientCaCertificates: <p>客户端证书。</p><p>当时HTTPS监听器且开启双向认证时，此字段必传。</p>
        # @type ClientCaCertificates: Array
        # @param HttpVersion: <p>HTTPS监听器支持选择版本</p><p>枚举值：</p><ul><li>HTTP/1.1： HTTP/1.1</li><li>HTTP/2： HTTP/2</li></ul>
        # @type HttpVersion: String

        attr_accessor :GlobalAcceleratorId, :Name, :PortRanges, :Description, :ListenerType, :Protocol, :IdleTimeout, :GetRealIpType, :ClientAffinity, :RequestTimeout, :XForwardedForRealIp, :CertificationType, :CipherPolicyId, :ServerCertificates, :ClientCaCertificates, :HttpVersion

        def initialize(globalacceleratorid=nil, name=nil, portranges=nil, description=nil, listenertype=nil, protocol=nil, idletimeout=nil, getrealiptype=nil, clientaffinity=nil, requesttimeout=nil, xforwardedforrealip=nil, certificationtype=nil, cipherpolicyid=nil, servercertificates=nil, clientcacertificates=nil, httpversion=nil)
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
          @HttpVersion = httpversion
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
          @HttpVersion = params['HttpVersion']
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

      # DeleteForwardingPolicy请求参数结构体
      class DeleteForwardingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 策略ID。
        # @type ForwardingPolicyId: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
        end
      end

      # DeleteForwardingPolicy返回参数结构体
      class DeleteForwardingPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGlobalAcceleratorAccessLog请求参数结构体
      class DeleteGlobalAcceleratorAccessLogRequest < TencentCloud::Common::AbstractModel
        # @param LogPushTaskId: <p>日志唯一Id</p>
        # @type LogPushTaskId: String
        # @param GlobalAcceleratorId: <p>GA实例唯一Id</p>
        # @type GlobalAcceleratorId: String

        attr_accessor :LogPushTaskId, :GlobalAcceleratorId

        def initialize(logpushtaskid=nil, globalacceleratorid=nil)
          @LogPushTaskId = logpushtaskid
          @GlobalAcceleratorId = globalacceleratorid
        end

        def deserialize(params)
          @LogPushTaskId = params['LogPushTaskId']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
        end
      end

      # DeleteGlobalAcceleratorAccessLog返回参数结构体
      class DeleteGlobalAcceleratorAccessLogResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGlobalAcceleratorAclPolicy请求参数结构体
      class DeleteGlobalAcceleratorAclPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param GlobalAcceleratorAclPolicyId: 访问控制策略ID。
        # @type GlobalAcceleratorAclPolicyId: String

        attr_accessor :GlobalAcceleratorId, :GlobalAcceleratorAclPolicyId

        def initialize(globalacceleratorid=nil, globalacceleratoraclpolicyid=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
        end
      end

      # DeleteGlobalAcceleratorAclPolicy返回参数结构体
      class DeleteGlobalAcceleratorAclPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGlobalAcceleratorAclRule请求参数结构体
      class DeleteGlobalAcceleratorAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param GlobalAcceleratorAclPolicyId: 安全策略ID
        # @type GlobalAcceleratorAclPolicyId: String
        # @param GlobalAcceleratorAclRuleIds: Acl规则ID。
        # @type GlobalAcceleratorAclRuleIds: Array

        attr_accessor :GlobalAcceleratorId, :GlobalAcceleratorAclPolicyId, :GlobalAcceleratorAclRuleIds

        def initialize(globalacceleratorid=nil, globalacceleratoraclpolicyid=nil, globalacceleratoraclruleids=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @GlobalAcceleratorAclRuleIds = globalacceleratoraclruleids
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @GlobalAcceleratorAclRuleIds = params['GlobalAcceleratorAclRuleIds']
        end
      end

      # DeleteGlobalAcceleratorAclRule返回参数结构体
      class DeleteGlobalAcceleratorAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteListenerAdditionalCert请求参数结构体
      class DeleteListenerAdditionalCertRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param AdditionalCertificates: 证书ID。
        # @type AdditionalCertificates: Array

        attr_accessor :GlobalAcceleratorId, :ListenerId, :AdditionalCertificates

        def initialize(globalacceleratorid=nil, listenerid=nil, additionalcertificates=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @AdditionalCertificates = additionalcertificates
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @AdditionalCertificates = params['AdditionalCertificates']
        end
      end

      # DeleteListenerAdditionalCert返回参数结构体
      class DeleteListenerAdditionalCertResponse < TencentCloud::Common::AbstractModel
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Offset: <p>偏移量。默认为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>符合条件实例数量。默认为20，最大200。</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件。 accelerate-region- String -（过滤条件）终端节点组地域。</p>
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

      # DescribeAccelerateAreas返回参数结构体
      class DescribeAccelerateAreasResponse < TencentCloud::Common::AbstractModel
        # @param AccelerateAreaSet: <p>加速地域信息。</p>
        # @type AccelerateAreaSet: Array
        # @param TotalCount: <p>实例个数。</p>
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

      # DescribeAccessLogParam请求参数结构体
      class DescribeAccessLogParamRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccessLogParam返回参数结构体
      class DescribeAccessLogParamResponse < TencentCloud::Common::AbstractModel
        # @param L7Param: <p>七层可选参数</p>
        # @type L7Param: Array
        # @param L4Param: <p>四层可选参数</p>
        # @type L4Param: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :L7Param, :L4Param, :RequestId

        def initialize(l7param=nil, l4param=nil, requestid=nil)
          @L7Param = l7param
          @L4Param = l4param
          @RequestId = requestid
        end

        def deserialize(params)
          @L7Param = params['L7Param']
          @L4Param = params['L4Param']
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Offset: <p>偏移量，默认为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，默认为10，最大值为10。</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件。  endpoint-group-id- String -（过滤条件）终端节点组实例ID。endpoint-group-type- String -（过滤条件）终端节点组实例类型。</p>
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
        # @param EndpointGroupConfigurationSet: <p>符合条件的终端节点组。</p>
        # @type EndpointGroupConfigurationSet: Array
        # @param TotalCount: <p>符合条件的实例个数。</p>
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

      # DescribeForwardingPolicy请求参数结构体
      class DescribeForwardingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :GlobalAcceleratorId, :ListenerId, :Offset, :Limit

        def initialize(globalacceleratorid=nil, listenerid=nil, offset=nil, limit=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeForwardingPolicy返回参数结构体
      class DescribeForwardingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ForwardingPolicySet: 符合条件的策略信息。
        # @type ForwardingPolicySet: Array
        # @param TotalCount: 符合条件的实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ForwardingPolicySet, :TotalCount, :RequestId

        def initialize(forwardingpolicyset=nil, totalcount=nil, requestid=nil)
          @ForwardingPolicySet = forwardingpolicyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ForwardingPolicySet'].nil?
            @ForwardingPolicySet = []
            params['ForwardingPolicySet'].each do |i|
              forwardingpolicyset_tmp = ForwardingPolicySet.new
              forwardingpolicyset_tmp.deserialize(i)
              @ForwardingPolicySet << forwardingpolicyset_tmp
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

      # DescribeGlobalAcceleratorAccessLog请求参数结构体
      class DescribeGlobalAcceleratorAccessLogRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>ga实例唯一Id</p>
        # @type GlobalAcceleratorId: String
        # @param Filters: <p>查询过滤参数。{ &quot;Name&quot;: &quot;listener-id&quot;, &quot;Values&quot;: [&quot;监听器唯一Id&quot;] },{ &quot;Name&quot;: &quot;endpoint-group-id&quot;, &quot;Values&quot;: [&quot;终端节点组唯一Id&quot;] },{ &quot;Name&quot;: &quot;access_log_id&quot;, &quot;Values&quot;: [&quot;日志唯一Id&quot;] }</p>
        # @type Filters: Array
        # @param Offset: <p>偏移量，默认为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量。</p><p>取值范围：[0, 200]</p>
        # @type Limit: Integer

        attr_accessor :GlobalAcceleratorId, :Filters, :Offset, :Limit

        def initialize(globalacceleratorid=nil, filters=nil, offset=nil, limit=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
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

      # DescribeGlobalAcceleratorAccessLog返回参数结构体
      class DescribeGlobalAcceleratorAccessLogResponse < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorAccessLog: <p>返回日志任务详情</p>
        # @type GlobalAcceleratorAccessLog: Array
        # @param TotalCount: <p>日志任务条数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalAcceleratorAccessLog, :TotalCount, :RequestId

        def initialize(globalacceleratoraccesslog=nil, totalcount=nil, requestid=nil)
          @GlobalAcceleratorAccessLog = globalacceleratoraccesslog
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GlobalAcceleratorAccessLog'].nil?
            @GlobalAcceleratorAccessLog = []
            params['GlobalAcceleratorAccessLog'].each do |i|
              globalacceleratoraccesslog_tmp = GlobalAcceleratorAccessLog.new
              globalacceleratoraccesslog_tmp.deserialize(i)
              @GlobalAcceleratorAccessLog << globalacceleratoraccesslog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlobalAcceleratorAclPolicies请求参数结构体
      class DescribeGlobalAcceleratorAclPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Offset: <p>偏移量。默认值为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，默认值为20，最大值为200。</p>
        # @type Limit: String

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

      # DescribeGlobalAcceleratorAclPolicies返回参数结构体
      class DescribeGlobalAcceleratorAclPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorAclPolicySet: <p>访问控制策略信息。</p>
        # @type GlobalAcceleratorAclPolicySet: Array
        # @param TotalCount: <p>符合条件实例总个数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalAcceleratorAclPolicySet, :TotalCount, :RequestId

        def initialize(globalacceleratoraclpolicyset=nil, totalcount=nil, requestid=nil)
          @GlobalAcceleratorAclPolicySet = globalacceleratoraclpolicyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GlobalAcceleratorAclPolicySet'].nil?
            @GlobalAcceleratorAclPolicySet = []
            params['GlobalAcceleratorAclPolicySet'].each do |i|
              globalacceleratoraclpolicies_tmp = GlobalAcceleratorAclPolicies.new
              globalacceleratoraclpolicies_tmp.deserialize(i)
              @GlobalAcceleratorAclPolicySet << globalacceleratoraclpolicies_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlobalAcceleratorAclRules请求参数结构体
      class DescribeGlobalAcceleratorAclRulesRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorAclPolicyId: <p>访问控制策略ID。</p>
        # @type GlobalAcceleratorAclPolicyId: String
        # @param Offset: <p>偏移量，默认为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量。</p><p>取值范围：[1, 200]</p><p>默认值：20</p>
        # @type Limit: Integer

        attr_accessor :GlobalAcceleratorAclPolicyId, :Offset, :Limit

        def initialize(globalacceleratoraclpolicyid=nil, offset=nil, limit=nil)
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGlobalAcceleratorAclRules返回参数结构体
      class DescribeGlobalAcceleratorAclRulesResponse < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorAclRuleSet: <p>符合条件的Acl规则实例。</p>
        # @type GlobalAcceleratorAclRuleSet: Array
        # @param TotalCount: <p>符合条件的实例个数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalAcceleratorAclRuleSet, :TotalCount, :RequestId

        def initialize(globalacceleratoraclruleset=nil, totalcount=nil, requestid=nil)
          @GlobalAcceleratorAclRuleSet = globalacceleratoraclruleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GlobalAcceleratorAclRuleSet'].nil?
            @GlobalAcceleratorAclRuleSet = []
            params['GlobalAcceleratorAclRuleSet'].each do |i|
              globalacceleratoraclruleset_tmp = GlobalAcceleratorAclRuleSet.new
              globalacceleratoraclruleset_tmp.deserialize(i)
              @GlobalAcceleratorAclRuleSet << globalacceleratoraclruleset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlobalAccelerators请求参数结构体
      class DescribeGlobalAcceleratorsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>偏移量，默认为0。</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量。</p><p>取值范围：[1, 200]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件。<li>global-accelerator-id - String -（过滤条件）全球加速实例ID。</li> <li>global-accelerator-state - String -（过滤条件）全球加速实例状态。</li></p>
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
        # @param GlobalAcceleratorSet: <p>符合条件的全球加速实例。</p>
        # @type GlobalAcceleratorSet: Array
        # @param TotalCount: <p>符合条件的实例个数。</p>
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

      # DescribeTaskResult请求参数结构体
      class DescribeTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskResult返回参数结构体
      class DescribeTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 终端节点配置
      class EndpointConfigurations < TencentCloud::Common::AbstractModel
        # @param EndpointType: <p>域名类型。可选值&#39;Domain&#39;, &#39;PublicIp&#39;。</p>
        # @type EndpointType: String
        # @param EndpointService: <p>域名。</p>
        # @type EndpointService: String
        # @param Weight: <p>权重。</p>
        # @type Weight: Integer
        # @param HealthCheckStatus: <p>健康检查状态；HEALTH：健康；UNHEALTH：不健康。</p>
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
        # @param Name: <p>终端节点组名称。</p><p>最大长度不能超过128个字节。必须以字母（a-z, A-Z）或中文字符开头。</p>
        # @type Name: String
        # @param EndpointGroupRegion: <p>终端节点组所在地域。</p>
        # @type EndpointGroupRegion: String
        # @param EndpointConfigurations: <p>终端节点配置。</p>
        # @type EndpointConfigurations: Array
        # @param CheckType: <p>检查协议。支持配置&#39;TCP&#39;, &#39;HTTP&#39;, &#39;PING&#39;, &#39;CUSTOM&#39;。</p><p>枚举值：</p><ul><li>TCP： 当终端节点组所在监听器协议是TCP时，可以选择检查协议为TCP。</li><li>HTTP： 当终端节点组所在监听器协议是HTTP或HTTPS时，可以选择检查协议为HTTP。</li><li>PING： 当终端节点组所在监听器协议是UDP时，可以选择检查协议为PING。</li><li>CUSTOM： 当终端节点组所在监听器协议是UDP或TCP时，可以选择检查协议为CUSTOM。</li></ul><p>当开启健康检查时此字段必传。</p>
        # @type CheckType: String
        # @param Description: <p>描述信息。</p><p>默认值：默认值为空，代表不配置描述信息。</p><p>最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param CheckPort: <p>检查端口。</p><p>入参限制：范围是1-65535。</p><p>当CheckType为CUSTOM时候，此字段必传。</p>
        # @type CheckPort: String
        # @param ContextType: <p>检查内容。支持配置&#39;TEXT&#39;。</p><p>枚举值：</p><ul><li>TEXT： 文本内容。</li></ul><p>当CheckType为CUSTOM时候，此字段必传。</p>
        # @type ContextType: String
        # @param CheckSendContext: <p>检查请求。</p><p>入参限制：字节长度要在1-500范围内。</p><p>当CheckType为CUSTOM时候，此字段必传。</p>
        # @type CheckSendContext: String
        # @param CheckRecvContext: <p>检查返回结果。</p><p>入参限制：字节长度要在1-500范围内。</p><p>当CheckType为CUSTOM时候，此字段必传。</p>
        # @type CheckRecvContext: String
        # @param EnableHealthCheck: <p>是否开启健康检查。</p><p>默认值：False</p>
        # @type EnableHealthCheck: Boolean
        # @param ConnectTimeout: <p>响应超时时间。</p><p>取值范围：[1, 100]</p><p>默认值：2</p><p>开启健康检查时，此字段必传。</p>
        # @type ConnectTimeout: Integer
        # @param HealthCheckInterval: <p>健康检查间隔。</p><p>取值范围：[5, 300]</p><p>默认值：30</p><p>开启健康检查，此字段必传。</p>
        # @type HealthCheckInterval: Integer
        # @param UnhealthyThreshold: <p>不健康阀值。</p><p>取值范围：[1, 10]</p><p>默认值：3</p><p>开启健康检查，此字段必传。</p>
        # @type UnhealthyThreshold: Integer
        # @param HealthyThreshold: <p>健康阈值。</p><p>取值范围：[1, 10]</p><p>默认值：3</p><p>开启健康检查，此字段必传。</p>
        # @type HealthyThreshold: Integer
        # @param ForwardProtocol: <p>回源协议。支持配置&#39;HTTP&#39;, &#39;HTTPS&#39;。</p><p>枚举值：</p><ul><li>HTTP： HTTP回源；当终端节点组所在监听器协议是HTTP或HTTPS时可以配置HTTP。</li><li>HTTPS： HTTPS回源；当终端节点组所在监听器协议是HTTPS时可以配置HTTPS。</li></ul><p>当终端节点组所在监听器协议为HTTP或HTTPS时候，此字段必传。</p>
        # @type ForwardProtocol: String
        # @param CheckDomain: <p>检查域名。</p><p>入参限制：字节长度范围是3-80。</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckDomain: String
        # @param CheckPath: <p>检查URL。</p><p>参数格式：必须满足正则：^[a-zA-Z0-9_.\-\/]{1,80}$</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckPath: String
        # @param CheckMethod: <p>请求方式。支持配置&#39;GET&#39;, &#39;HEAD&#39;。</p><p>枚举值：</p><ul><li>GET： 请求方式为GET。</li><li>HEAD： 请求方式为HEAD。</li></ul><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckMethod: String
        # @param StatusMask: <p>状态检测码。支持配置&#39;http_2xx&#39;, &#39;http_3xx&#39;, &#39;http_4xx&#39;, &#39;http_5xx&#39;。</p><p>枚举值：</p><ul><li>http_2xx： 2开头的http code。</li><li>http_3xx： 3开头的http code。</li><li>http_4xx： 4开头的http code。</li><li>http_5xx： 5开头的http code。</li></ul><p>当CheckType是HTTP时，此字段必传。</p>
        # @type StatusMask: Array
        # @param PortOverrides: <p>端口映射。</p><p>入参限制：七层支持1个端口映射，四层支持最多30个端口映射。</p>
        # @type PortOverrides: Array
        # @param IspType: <p>运营商类型。支持配置&#39;CMCC&#39;, &#39;CTCC&#39;, &#39;CUCC&#39;。</p><p>枚举值：</p><ul><li>CMCC： 中国移动</li><li>CUCC： 中国联通</li><li>CTCC： 中国电信</li></ul><p>当终端节点组地域为三网地域时，此字段必传。</p>
        # @type IspType: String
        # @param CipherPolicyId: <p>HPPTS加密算法套件；支持配置&#39;tls_policy_1.0-2&#39;, &#39;tls_policy_1.1-2&#39;, &#39;tls_policy_1.2&#39;, &#39;tls_policy_1.2_strict&#39;, &#39;tls_policy_1.2_strict-1.3&#39;；</p><p>枚举值：</p><ul><li>tls_policy_1.0-2： 加密算法套件。</li><li>tls_policy_1.1-2： 加密算法套件。</li><li>tls_policy_1.2： 加密算法套件。</li><li>tls_policy_1.2_strict： 加密算法套件。</li><li>tls_policy_1.2_strict-1.3： 加密算法套件。</li></ul><p>当回源协议为HTTPS，此字段必传。</p>
        # @type CipherPolicyId: String
        # @param HttpVersion: <p>回源协议。支持配置&#39;HTTP/1.1&#39;, &#39;HTTP/2&#39;。</p><p>枚举值：</p><ul><li>HTTP/1.1： 版本HTTP/1.1</li><li>HTTP/2： 版本HTTP/2</li></ul><p>当回源协议为HTTPS时，此字段必传。</p>
        # @type HttpVersion: String

        attr_accessor :Name, :EndpointGroupRegion, :EndpointConfigurations, :CheckType, :Description, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :ForwardProtocol, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :PortOverrides, :IspType, :CipherPolicyId, :HttpVersion

        def initialize(name=nil, endpointgroupregion=nil, endpointconfigurations=nil, checktype=nil, description=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, forwardprotocol=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, portoverrides=nil, isptype=nil, cipherpolicyid=nil, httpversion=nil)
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
          @HttpVersion = httpversion
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
          @HttpVersion = params['HttpVersion']
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
        # @param HttpVersion: <p>仅HTTPS回源协议支持选择[&#39;HTTP/1.1&#39;, &#39;HTTP/2&#39;]</p><p>枚举值：</p><ul><li>HTTP/1.1： 版本HTTP/1.1</li><li>HTTP/2： 版本HTTP/2</li></ul>
        # @type HttpVersion: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupId, :Name, :EndpointGroupRegion, :Description, :EndpointConfigurations, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :CheckType, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :EndpointGroupType, :ForwardProtocol, :PortOverrides, :VirtualExistForwardingRuleFlag, :OriginPublicIps, :IspType, :CipherPolicyId, :HttpVersion

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupid=nil, name=nil, endpointgroupregion=nil, description=nil, endpointconfigurations=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, checktype=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, endpointgrouptype=nil, forwardprotocol=nil, portoverrides=nil, virtualexistforwardingruleflag=nil, originpublicips=nil, isptype=nil, cipherpolicyid=nil, httpversion=nil)
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
          @HttpVersion = httpversion
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
          @HttpVersion = params['HttpVersion']
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

      # 七层转发策略信息
      class ForwardingPolicySet < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ForwardingPolicyId: 策略ID。
        # @type ForwardingPolicyId: String
        # @param Host: 域名。
        # @type Host: String
        # @param DefaultHostFlag: 是否为默认域名。
        # @type DefaultHostFlag: Boolean

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :Host, :DefaultHostFlag

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, host=nil, defaulthostflag=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @Host = host
          @DefaultHostFlag = defaulthostflag
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @Host = params['Host']
          @DefaultHostFlag = params['DefaultHostFlag']
        end
      end

      # 七层转发规则信息
      class ForwardingRuleSet < TencentCloud::Common::AbstractModel
        # @param RuleCondition: <p>七层转发规则条件信息。</p>
        # @type RuleCondition: Array
        # @param RuleAction: <p>七层转发规则行为信息。</p>
        # @type RuleAction: Array
        # @param EnableOriginSni: <p>是否开启回源Sni。</p>
        # @type EnableOriginSni: Boolean
        # @param OriginSni: <p>回源Sni。</p>
        # @type OriginSni: String
        # @param OriginHeaders: <p>回源Herder信息。</p>
        # @type OriginHeaders: Array
        # @param OriginHost: <p>回源Host。</p>
        # @type OriginHost: String
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param ForwardingPolicyId: <p>七层转发策略ID。</p>
        # @type ForwardingPolicyId: String
        # @param ForwardingRuleId: <p>七层转发规则ID。</p>
        # @type ForwardingRuleId: String
        # @param HideResponseHeaders: <p>源站响应头</p>
        # @type HideResponseHeaders: Array
        # @param ResponseHeaders: <p>删除源站响应头</p>
        # @type ResponseHeaders: Array

        attr_accessor :RuleCondition, :RuleAction, :EnableOriginSni, :OriginSni, :OriginHeaders, :OriginHost, :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :ForwardingRuleId, :HideResponseHeaders, :ResponseHeaders

        def initialize(rulecondition=nil, ruleaction=nil, enableoriginsni=nil, originsni=nil, originheaders=nil, originhost=nil, globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, forwardingruleid=nil, hideresponseheaders=nil, responseheaders=nil)
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
          @HideResponseHeaders = hideresponseheaders
          @ResponseHeaders = responseheaders
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
          unless params['HideResponseHeaders'].nil?
            @HideResponseHeaders = []
            params['HideResponseHeaders'].each do |i|
              hideresponseheaders_tmp = HideResponseHeaders.new
              hideresponseheaders_tmp.deserialize(i)
              @HideResponseHeaders << hideresponseheaders_tmp
            end
          end
          unless params['ResponseHeaders'].nil?
            @ResponseHeaders = []
            params['ResponseHeaders'].each do |i|
              responseheaders_tmp = ResponseHeaders.new
              responseheaders_tmp.deserialize(i)
              @ResponseHeaders << responseheaders_tmp
            end
          end
        end
      end

      # GA访问日志
      class GlobalAcceleratorAccessLog < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 访问控制策略
      class GlobalAcceleratorAclPolicies < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorAclPolicyId: 访问控制策略ID。
        # @type GlobalAcceleratorAclPolicyId: String
        # @param DefaultAction: 默认动作。
        # @type DefaultAction: String
        # @param Status: 状态。
        # @type Status: String

        attr_accessor :GlobalAcceleratorAclPolicyId, :DefaultAction, :Status

        def initialize(globalacceleratoraclpolicyid=nil, defaultaction=nil, status=nil)
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @DefaultAction = defaultaction
          @Status = status
        end

        def deserialize(params)
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @DefaultAction = params['DefaultAction']
          @Status = params['Status']
        end
      end

      # Acl规则信息
      class GlobalAcceleratorAclRuleSet < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorPolicyId: 访问控制策略ID。
        # @type GlobalAcceleratorPolicyId: String
        # @param GlobalAcceleratorAclRuleId: Acl规则ID。
        # @type GlobalAcceleratorAclRuleId: String
        # @param Protocol: 协议。
        # @type Protocol: String
        # @param Port: 端口。
        # @type Port: String
        # @param SourceCidrBlock: 网段。
        # @type SourceCidrBlock: String
        # @param Policy: 动作。
        # @type Policy: String
        # @param Description: 描述。
        # @type Description: String

        attr_accessor :GlobalAcceleratorPolicyId, :GlobalAcceleratorAclRuleId, :Protocol, :Port, :SourceCidrBlock, :Policy, :Description

        def initialize(globalacceleratorpolicyid=nil, globalacceleratoraclruleid=nil, protocol=nil, port=nil, sourcecidrblock=nil, policy=nil, description=nil)
          @GlobalAcceleratorPolicyId = globalacceleratorpolicyid
          @GlobalAcceleratorAclRuleId = globalacceleratoraclruleid
          @Protocol = protocol
          @Port = port
          @SourceCidrBlock = sourcecidrblock
          @Policy = policy
          @Description = description
        end

        def deserialize(params)
          @GlobalAcceleratorPolicyId = params['GlobalAcceleratorPolicyId']
          @GlobalAcceleratorAclRuleId = params['GlobalAcceleratorAclRuleId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @SourceCidrBlock = params['SourceCidrBlock']
          @Policy = params['Policy']
          @Description = params['Description']
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

      # 隐藏Header
      class HideResponseHeaders < TencentCloud::Common::AbstractModel
        # @param Key: <p>key</p><p>入参限制：长度不能超过128</p><p>如果字符串包含$，那仅能配置&#39;$remote_addr&#39;, &#39;$remote_port&#39;，否则不支持。</p>
        # @type Key: String
        # @param Value: <p>value</p><p>当前传&#39;&#39;值即可。</p>
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

      # 加速地域公网IP信息
      class IpAddressInfoSet < TencentCloud::Common::AbstractModel
        # @param IpAddress: <p>IP地址。</p>
        # @type IpAddress: String
        # @param IspType: <p>IP类型。</p>
        # @type IspType: String
        # @param DdosProtectionType: <p>Ddos类型</p>
        # @type DdosProtectionType: String

        attr_accessor :IpAddress, :IspType, :DdosProtectionType

        def initialize(ipaddress=nil, isptype=nil, ddosprotectiontype=nil)
          @IpAddress = ipaddress
          @IspType = isptype
          @DdosProtectionType = ddosprotectiontype
        end

        def deserialize(params)
          @IpAddress = params['IpAddress']
          @IspType = params['IspType']
          @DdosProtectionType = params['DdosProtectionType']
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param AcceleratorAreas: <p>加速地域信息。</p><p>入参限制：数组长度不能超过10。</p>
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
        # @param TaskId: <p>异步任务ID。</p>
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

      # ModifyAccessLogStatus请求参数结构体
      class ModifyAccessLogStatusRequest < TencentCloud::Common::AbstractModel
        # @param LogPushTaskId: <p>日志唯一Id</p>
        # @type LogPushTaskId: String
        # @param Status: <p>状态（启动START， 停止STOP）</p><p>枚举值：</p><ul><li>START： 启动</li><li>STOP： 停止</li></ul>
        # @type Status: String
        # @param GlobalAcceleratorId: <p>GA实例唯一Id</p>
        # @type GlobalAcceleratorId: String

        attr_accessor :LogPushTaskId, :Status, :GlobalAcceleratorId

        def initialize(logpushtaskid=nil, status=nil, globalacceleratorid=nil)
          @LogPushTaskId = logpushtaskid
          @Status = status
          @GlobalAcceleratorId = globalacceleratorid
        end

        def deserialize(params)
          @LogPushTaskId = params['LogPushTaskId']
          @Status = params['Status']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
        end
      end

      # ModifyAccessLogStatus返回参数结构体
      class ModifyAccessLogStatusResponse < TencentCloud::Common::AbstractModel
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
        # @param Name: <p>名称。</p><p>入参限制：最大长度不能超过128个字节。</p><p>以大小写字母或中文开头。</p>
        # @type Name: String
        # @param Description: <p>描述信息。</p><p>入参限制：最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param EnableHealthCheck: <p>是否开启健康检查。</p>
        # @type EnableHealthCheck: Boolean
        # @param ConnectTimeout: <p>响应超时时间。</p><p>取值范围：[1, 100]</p><p>当开启健康检查时候，此参数必传。</p>
        # @type ConnectTimeout: Integer
        # @param HealthCheckInterval: <p>健康检查间隔。</p><p>取值范围：[5, 300]</p><p>当开启健康检查时，此参数必传。</p>
        # @type HealthCheckInterval: Integer
        # @param UnhealthyThreshold: <p>不健康阀值。</p><p>取值范围：[1, 10]</p><p>当开启健康检查时，此字段必传。</p>
        # @type UnhealthyThreshold: Integer
        # @param HealthyThreshold: <p>健康阀值。</p><p>取值范围：[1, 10]</p><p>当开启健康检查时，此字段必传。</p>
        # @type HealthyThreshold: Integer
        # @param CheckType: <p>检查协议。</p><p>入参限制：支持填写：&#39;TCP&#39;, &#39;HTTP&#39;, &#39;PING&#39;, &#39;CUSTOM&#39;。</p><p>1、当监听器是TCP时，可以选CUSTOM+TCP。<br>2、当监听器是UDP时，可以选PING+CUSTOM。<br>3、当监听器是HTTP或HTTPS时，可以选HTTP。</p>
        # @type CheckType: String
        # @param CheckPort: <p>检查端口。</p><p>取值范围：[1, 65535]</p><p>当CheckType是CUSTOM时，此字段必传。</p>
        # @type CheckPort: Integer
        # @param ContextType: <p>检查内容。</p><p>入参限制：仅支持TEXT。</p><p>当CheckType是CUSTOM时，此字段必传。</p>
        # @type ContextType: String
        # @param CheckSendContext: <p>检查请求。</p><p>入参限制：长度范围在1-500。</p><p>当CheckType是CUSTOM时，此字段必传。</p>
        # @type CheckSendContext: String
        # @param CheckRecvContext: <p>检查返回结果。</p><p>入参限制：长度范围在1-500。</p><p>当CheckType是CUSTOM时，此字段必传。</p>
        # @type CheckRecvContext: String
        # @param CheckDomain: <p>检查域名。</p><p>入参限制：长度范围在3-80。</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckDomain: String
        # @param CheckPath: <p>检查URL。</p><p>入参限制：长度范围在3-80。</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckPath: String
        # @param CheckMethod: <p>请求方式。</p><p>入参限制：支持填写 &#39;GET&#39;, &#39;HEAD&#39;。</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type CheckMethod: String
        # @param StatusMask: <p>状态检测码。</p><p>入参限制：支持选择&#39;http_2xx&#39;, &#39;http_3xx&#39;, &#39;http_4xx&#39;, &#39;http_5xx&#39;。</p><p>当CheckType是HTTP时，此字段必传。</p>
        # @type StatusMask: Array
        # @param ForwardProtocol: <p>回源协议。</p><p>入参限制：支持选择：&#39;HTTP&#39;, &#39;HTTPS&#39;。</p><p>当监听器协议是HTTP时只能配置HTTP，是HTTPS时能配HTTP或HTTPS。</p>
        # @type ForwardProtocol: String
        # @param PortOverrides: <p>端口映射。</p><p>当监听器协议是HTTP或HTTPS支持配置一对。当监听器协议是UDP或TCP支持配置最多30对。</p>
        # @type PortOverrides: Array
        # @param CipherPolicyId: <p>HPPTS加密算法套件</p><p>入参限制：支持选择&#39;tls_policy_1.0-2&#39;, &#39;tls_policy_1.1-2&#39;, &#39;tls_policy_1.2&#39;, &#39;tls_policy_1.2_strict&#39;, &#39;tls_policy_1.2_strict-1.3&#39;。</p><p>当监听器协议是HTTPS时，才支持修改此参数。</p>
        # @type CipherPolicyId: String
        # @param HttpVersion: <p>仅HTTPS回源协议支持选择[&#39;HTTP/1.1&#39;, &#39;HTTP/2&#39;]</p><p>枚举值：</p><ul><li>HTTP/1.1： 版本HTTP/1.1</li><li>HTTP/2： 版本HTTP/2</li></ul>
        # @type HttpVersion: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :EndpointGroupId, :EndpointConfigurations, :Name, :Description, :EnableHealthCheck, :ConnectTimeout, :HealthCheckInterval, :UnhealthyThreshold, :HealthyThreshold, :CheckType, :CheckPort, :ContextType, :CheckSendContext, :CheckRecvContext, :CheckDomain, :CheckPath, :CheckMethod, :StatusMask, :ForwardProtocol, :PortOverrides, :CipherPolicyId, :HttpVersion

        def initialize(globalacceleratorid=nil, listenerid=nil, endpointgroupid=nil, endpointconfigurations=nil, name=nil, description=nil, enablehealthcheck=nil, connecttimeout=nil, healthcheckinterval=nil, unhealthythreshold=nil, healthythreshold=nil, checktype=nil, checkport=nil, contexttype=nil, checksendcontext=nil, checkrecvcontext=nil, checkdomain=nil, checkpath=nil, checkmethod=nil, statusmask=nil, forwardprotocol=nil, portoverrides=nil, cipherpolicyid=nil, httpversion=nil)
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
          @HttpVersion = httpversion
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
          @HttpVersion = params['HttpVersion']
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

      # ModifyForwardingPolicy请求参数结构体
      class ModifyForwardingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param ForwardingPolicyId: <p>策略ID。</p>
        # @type ForwardingPolicyId: String
        # @param Host: <p>域名。</p><p>入参限制：长度范围在1-80。</p><p>格式必须满足正则表达式：^(<a href="?:[a-z0-9-]{0,61}[a-z0-9]">a-z0-9</a>?.)+[a-z]{2,}$</p>
        # @type Host: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :Host

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, host=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @ForwardingPolicyId = forwardingpolicyid
          @Host = host
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @ForwardingPolicyId = params['ForwardingPolicyId']
          @Host = params['Host']
        end
      end

      # ModifyForwardingPolicy返回参数结构体
      class ModifyForwardingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param ForwardingPolicyId: <p>策略ID。</p>
        # @type ForwardingPolicyId: String
        # @param ForwardingRuleId: <p>七层转发规则ID。</p>
        # @type ForwardingRuleId: String
        # @param RuleConditions: <p>七层转发规则条件信息。</p><p>入参限制：数组长度不能超过1。</p>
        # @type RuleConditions: Array
        # @param RuleActions: <p>七层转发规则行为信息。</p><p>入参限制：数组长度不能超过1。</p>
        # @type RuleActions: Array
        # @param OriginHeaders: <p>回源Header信息。</p><p>入参限制：数组长度在1-5。</p>
        # @type OriginHeaders: Array
        # @param EnableOriginSni: <p>是否开启回源sni。</p>
        # @type EnableOriginSni: Boolean
        # @param OriginSni: <p>回源sni。</p><p>入参限制：长度不能超过80。</p><p>当开启回源sni时，此字段必传。</p>
        # @type OriginSni: String
        # @param OriginHost: <p>回源host。</p><p>入参限制：长度不能超过80。</p><p>当开启回源sni时，此字段必传。</p>
        # @type OriginHost: String
        # @param ResponseHeaders: <p>源站响应头</p><p>入参限制：数组长度不能超过5。</p>
        # @type ResponseHeaders: Array
        # @param HideResponseHeaders: <p>删除源站响应头</p><p>入参限制：数组长度不能超过5。</p>
        # @type HideResponseHeaders: Array

        attr_accessor :GlobalAcceleratorId, :ListenerId, :ForwardingPolicyId, :ForwardingRuleId, :RuleConditions, :RuleActions, :OriginHeaders, :EnableOriginSni, :OriginSni, :OriginHost, :ResponseHeaders, :HideResponseHeaders

        def initialize(globalacceleratorid=nil, listenerid=nil, forwardingpolicyid=nil, forwardingruleid=nil, ruleconditions=nil, ruleactions=nil, originheaders=nil, enableoriginsni=nil, originsni=nil, originhost=nil, responseheaders=nil, hideresponseheaders=nil)
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
          @ResponseHeaders = responseheaders
          @HideResponseHeaders = hideresponseheaders
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
          unless params['ResponseHeaders'].nil?
            @ResponseHeaders = []
            params['ResponseHeaders'].each do |i|
              responseheaders_tmp = ResponseHeaders.new
              responseheaders_tmp.deserialize(i)
              @ResponseHeaders << responseheaders_tmp
            end
          end
          unless params['HideResponseHeaders'].nil?
            @HideResponseHeaders = []
            params['HideResponseHeaders'].each do |i|
              hideresponseheaders_tmp = HideResponseHeaders.new
              hideresponseheaders_tmp.deserialize(i)
              @HideResponseHeaders << hideresponseheaders_tmp
            end
          end
        end
      end

      # ModifyForwardingRule返回参数结构体
      class ModifyForwardingRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
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

      # ModifyGlobalAcceleratorAccessLog请求参数结构体
      class ModifyGlobalAcceleratorAccessLogRequest < TencentCloud::Common::AbstractModel
        # @param LogPushTaskId: <p>日志唯一Id</p>
        # @type LogPushTaskId: String
        # @param GlobalAcceleratorId: <p>GA实例唯一Id</p>
        # @type GlobalAcceleratorId: String
        # @param CloudLogId: <p>日志主题Id</p>
        # @type CloudLogId: String
        # @param CloudLogSetId: <p>日志集Id</p>
        # @type CloudLogSetId: String
        # @param FieldKeys: <p>用户可选日志监听字段</p><p>枚举值：</p><ul><li>session_time： 四层，会话持续时间</li><li>upstream_bytes_received： 四层、七层，从终端节点接收的字节数</li><li>upstream_bytes_sent： 四层、七层，发送给终端节点的字节数</li><li>request_method： 七层，GET/POST</li><li>scheme： 七层，http/https</li><li>request_uri： 七层，客户端原始请求的URI</li><li>uri： 七层，当前请求的URI</li><li>host： 七层，客户端访问域名（七层）</li><li>remote_user： 七层，基本认证时的用户名（未认证时为&quot;-&quot;）</li><li>http_user_agent： 七层，客户端浏览器标识</li><li>http_referer： 七层，请求来源URL（直接从地址栏访问时为&quot;-&quot;）</li><li>http_x_forwarded_for： 七层，记录客户端原始IP及经过的代理服务器IP链</li><li>content_type： 七层，content_type</li><li>body_bytes_sent： 七层，发送给客户端的http body大小，不包含header</li><li>request_time： 七层，从接收到客户端请求的第一个字节到发送完响应最后一个字节之间的总时间（单位：秒）</li><li>sent_http_content_type： 七层，响应内容类型</li><li>upstream_header_time： 七层，终端节点的响应头到达时间</li><li>upstream_response_length： 七层，终端节点返回的响应体长度</li><li>upstream_response_time： 七层，终端节点完整响应时间</li><li>upstream_status： 七层，终端节点返回的HTTP状态码</li></ul>
        # @type FieldKeys: Array
        # @param FlowLogDescription: <p>日志描述</p>
        # @type FlowLogDescription: String

        attr_accessor :LogPushTaskId, :GlobalAcceleratorId, :CloudLogId, :CloudLogSetId, :FieldKeys, :FlowLogDescription

        def initialize(logpushtaskid=nil, globalacceleratorid=nil, cloudlogid=nil, cloudlogsetid=nil, fieldkeys=nil, flowlogdescription=nil)
          @LogPushTaskId = logpushtaskid
          @GlobalAcceleratorId = globalacceleratorid
          @CloudLogId = cloudlogid
          @CloudLogSetId = cloudlogsetid
          @FieldKeys = fieldkeys
          @FlowLogDescription = flowlogdescription
        end

        def deserialize(params)
          @LogPushTaskId = params['LogPushTaskId']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @CloudLogId = params['CloudLogId']
          @CloudLogSetId = params['CloudLogSetId']
          @FieldKeys = params['FieldKeys']
          @FlowLogDescription = params['FlowLogDescription']
        end
      end

      # ModifyGlobalAcceleratorAccessLog返回参数结构体
      class ModifyGlobalAcceleratorAccessLogResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGlobalAcceleratorAclPolicy请求参数结构体
      class ModifyGlobalAcceleratorAclPolicyRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param GlobalAcceleratorAclPolicyId: <p>访问控制策略ID。</p>
        # @type GlobalAcceleratorAclPolicyId: String
        # @param Status: <p>访问控制策略状态。</p><p>枚举值：</p><ul><li>OPEN： 打开。</li><li>CLOSE： 关闭。</li></ul>
        # @type Status: String

        attr_accessor :GlobalAcceleratorId, :GlobalAcceleratorAclPolicyId, :Status

        def initialize(globalacceleratorid=nil, globalacceleratoraclpolicyid=nil, status=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @Status = status
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @Status = params['Status']
        end
      end

      # ModifyGlobalAcceleratorAclPolicy返回参数结构体
      class ModifyGlobalAcceleratorAclPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
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

      # ModifyGlobalAcceleratorAclRule请求参数结构体
      class ModifyGlobalAcceleratorAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param GlobalAcceleratorAclPolicyId: <p>安全策略ID</p>
        # @type GlobalAcceleratorAclPolicyId: String
        # @param GlobalAcceleratorAclRuleId: <p>Acl规则ID。</p>
        # @type GlobalAcceleratorAclRuleId: String
        # @param Protocol: <p>协议。</p><p>入参限制：支持选择&#39;TCP&#39;, &#39;UDP&#39;, &#39;ALL&#39;。</p>
        # @type Protocol: String
        # @param Port: <p>端口。</p>
        # @type Port: String
        # @param SourceCidrBlock: <p>网段。</p>
        # @type SourceCidrBlock: String
        # @param Policy: <p>动作。</p><p>入参限制：支持选择&#39;ACCEPT&#39;, &#39;DROP&#39;。</p><p>枚举值：</p><ul><li>ACCEPT： 允许。</li><li>DROP： 拒绝。</li></ul>
        # @type Policy: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String

        attr_accessor :GlobalAcceleratorId, :GlobalAcceleratorAclPolicyId, :GlobalAcceleratorAclRuleId, :Protocol, :Port, :SourceCidrBlock, :Policy, :Description

        def initialize(globalacceleratorid=nil, globalacceleratoraclpolicyid=nil, globalacceleratoraclruleid=nil, protocol=nil, port=nil, sourcecidrblock=nil, policy=nil, description=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @GlobalAcceleratorAclPolicyId = globalacceleratoraclpolicyid
          @GlobalAcceleratorAclRuleId = globalacceleratoraclruleid
          @Protocol = protocol
          @Port = port
          @SourceCidrBlock = sourcecidrblock
          @Policy = policy
          @Description = description
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @GlobalAcceleratorAclPolicyId = params['GlobalAcceleratorAclPolicyId']
          @GlobalAcceleratorAclRuleId = params['GlobalAcceleratorAclRuleId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @SourceCidrBlock = params['SourceCidrBlock']
          @Policy = params['Policy']
          @Description = params['Description']
        end
      end

      # ModifyGlobalAcceleratorAclRule返回参数结构体
      class ModifyGlobalAcceleratorAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>异步任务ID。</p>
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param CrossBorderType: <p>跨境类型。</p><p>枚举值：</p><ul><li>HighQuality： 精品跨境。</li><li>Unicom： 联通跨境。</li></ul>
        # @type CrossBorderType: String
        # @param CrossBorderPromiseFlag: <p>代表是否填写跨境服务承诺书。</p><p>当CrossBorderType传入时，此字段必须填ture，代表填写跨境承诺书。</p>
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
        # @param TaskId: <p>异步任务ID。</p>
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
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param ListenerId: <p>监听器ID。</p>
        # @type ListenerId: String
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param IdleTimeout: <p>连接空闲等待时间。</p><p>1、HTTP/HTTPS监听器，支持范围为1-60；2、TCP监听器，支持范围为10-900；3、UDP监听器，支持范围为10-20；</p>
        # @type IdleTimeout: Integer
        # @param ClientAffinity: <p>是否开启会话保持。</p><p>枚举值：</p><ul><li>Open： 打开。</li><li>Close： 关闭。</li></ul><p>TCP/UDP监听器支持修改此参数。</p>
        # @type ClientAffinity: String
        # @param ClientAffinityTime: <p>会话保持时间。</p><p>取值范围：[60, 3600]</p>
        # @type ClientAffinityTime: Integer
        # @param RequestTimeout: <p>请求超时时间。</p><p>取值范围：[1, 180]</p><p>HTTPS监听器才支持此参数修改。</p>
        # @type RequestTimeout: Integer
        # @param XForwardedForRealIp: <p>是否打开七层获取源IP方式。</p><p>HTTPS/HTTP监听器才支持此参数修改。</p>
        # @type XForwardedForRealIp: Boolean
        # @param CertificationType: <p>解析方式。</p><p>枚举值：</p><ul><li>UNIDIRECTIONAL： 双向。</li><li>MUTUAL： 单向。</li></ul><p>HTTPS/HTTP监听器才支持修改此参数。</p>
        # @type CertificationType: String
        # @param CipherPolicyId: <p>加密算法套件。</p><p>入参限制：支持选择tls_policy_1.0-2&#39;, &#39;tls_policy_1.1-2&#39;, &#39;tls_policy_1.2&#39;, &#39;tls_policy_1.2_strict&#39;, &#39;tls_policy_1.2_strict-1.3&#39;。</p><p>HTTPS监听器才支持此参数修改。</p>
        # @type CipherPolicyId: String
        # @param ServerCertificates: <p>服务器证书。</p><p>HTTPS监听器才支持此参数修改。</p>
        # @type ServerCertificates: Array
        # @param ClientCaCertificates: <p>客户端证书。</p><p>HTTPS监听器才支持此参数修改，并且开启双向认证。</p>
        # @type ClientCaCertificates: Array
        # @param GetRealIpType: <p>获取源IP方式。</p><p>入参限制：支持选择&#39;ProxyProtocol&#39;, &#39;Close&#39;, &#39;ProxyProtocolV2&#39;, &#39;TOA&#39;。</p><p>TCP监听器才支持此参数修改。</p>
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

      # 回源Header信息
      class OriginHeader < TencentCloud::Common::AbstractModel
        # @param Key: <p>键。</p><p>参数格式：1、字符串只包含可打印的ASCII字符 2、不能包含这些字符()&lt;&gt;@,;:\&quot;/[ ]?={ }</p><p>入参限制：长度在1-40。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: <p>值。</p><p>入参限制：长度不能超过128</p><p>如果字符串包含$，那仅能配置&#39;$remote_addr&#39;, &#39;$remote_port&#39;，否则不支持。</p>
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

      # ReplaceListenerAdditionalCert请求参数结构体
      class ReplaceListenerAdditionalCertRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param AdditionalCertificate: 证书ID。
        # @type AdditionalCertificate: String
        # @param OldCertificate: 旧的证书ID。
        # @type OldCertificate: String

        attr_accessor :GlobalAcceleratorId, :ListenerId, :AdditionalCertificate, :OldCertificate

        def initialize(globalacceleratorid=nil, listenerid=nil, additionalcertificate=nil, oldcertificate=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @ListenerId = listenerid
          @AdditionalCertificate = additionalcertificate
          @OldCertificate = oldcertificate
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @ListenerId = params['ListenerId']
          @AdditionalCertificate = params['AdditionalCertificate']
          @OldCertificate = params['OldCertificate']
        end
      end

      # ReplaceListenerAdditionalCert返回参数结构体
      class ReplaceListenerAdditionalCertResponse < TencentCloud::Common::AbstractModel
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

      # 响应Header
      class ResponseHeaders < TencentCloud::Common::AbstractModel
        # @param Key: <p>key</p><p>参数格式：1、字符串只包含可打印的ASCII字符 2、不能包含这些字符()&lt;&gt;@,;:\&quot;/[ ]?={ }</p><p>入参限制：长度在1-40。</p>
        # @type Key: String
        # @param Value: <p>value</p><p>入参限制：长度不能超过128</p><p>如果字符串包含$，那仅能配置&#39;$remote_addr&#39;, &#39;$remote_port&#39;，否则不支持。</p>
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

      # 七层转发规则行为信息
      class RuleAction < TencentCloud::Common::AbstractModel
        # @param RuleActionType: <p>七层转发规则行为类型</p><p>枚举值：</p><ul><li>ForwardGroup： 转发策略为转发至终端节点组。</li><li>Drop： 转发策略为丢弃。</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleActionType: String
        # @param RuleActionValue: <p>七层转发规则行为值</p><p>当RuleActionType是Drop时，此字段不用传；当RuleActionType是ForwardGroup时，此字段必传，需要填写的是自定义终端节点组ID， 不支持配置默认终端节点组。</p>
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
        # @param RuleConditionType: <p>七层转发规则条件类型</p><p>枚举值：</p><ul><li>Path： Path</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleConditionType: String
        # @param RuleConditionValue: <p>七层转发规则条件值</p><p>参数格式：格式必须满足正则表达：^[a-zA-Z0-9_.-/]{1,80}$</p><p>数组长度不能超过1。</p>
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

