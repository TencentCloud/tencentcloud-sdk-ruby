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
  module Clb
    module V20180317
      # AddModelKey请求参数结构体
      class AddModelKeyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>服务提供商ID</p>
        # @type ServiceProviderId: String
        # @param Keys: <p>Key 列表，至少 1 个，最多 10 个</p>
        # @type Keys: Array

        attr_accessor :ServiceProviderId, :Keys

        def initialize(serviceproviderid=nil, keys=nil)
          @ServiceProviderId = serviceproviderid
          @Keys = keys
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              keyitem_tmp = KeyItem.new
              keyitem_tmp.deserialize(i)
              @Keys << keyitem_tmp
            end
          end
        end
      end

      # AddModelKey返回参数结构体
      class AddModelKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyIds: <p>生成的 Key ID 列表</p>
        # @type KeyIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyIds, :RequestId

        def initialize(keyids=nil, requestid=nil)
          @KeyIds = keyids
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
          @RequestId = params['RequestId']
        end
      end

      # AddModelRewrite请求参数结构体
      class AddModelRewriteRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String
        # @param SourceModel: <p>源模型名（重写规则的 key）。</p><p>长度 1-255 字符；支持特殊值 <code>default</code> 表示兜底规则（命中所有未显式列出的源模型）。</p><p>不允许使用 <code>IntentRouter/</code> 前缀（大小写不敏感），即 IntentRouter 不能作为 source。</p>
        # @type SourceModel: String
        # @param TargetModel: <p>目标模型名（重写规则的 value）。</p><p>长度 1-255 字符；必须是已关联到该模型路由实例的模型（含 IntentRouter/* 也需先通过 AssociateModels 关联）。</p><p>不允许使用 <code>default</code>；不允许与 SourceModel 相同（大小写不敏感）。</p>
        # @type TargetModel: String

        attr_accessor :ModelRouterId, :SourceModel, :TargetModel

        def initialize(modelrouterid=nil, sourcemodel=nil, targetmodel=nil)
          @ModelRouterId = modelrouterid
          @SourceModel = sourcemodel
          @TargetModel = targetmodel
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @SourceModel = params['SourceModel']
          @TargetModel = params['TargetModel']
        end
      end

      # AddModelRewrite返回参数结构体
      class AddModelRewriteResponse < TencentCloud::Common::AbstractModel
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

      # AssociateBudget请求参数结构体
      class AssociateBudgetRequest < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p>
        # @type BudgetId: String
        # @param Resources: <p>要关联的资源列表。</p><p>仅支持企业型模型路由实例和企业型实例下的Key。同一请求内不允许重复资源；资源已关联其他Budget时将替换为新的Budget。</p>
        # @type Resources: Array

        attr_accessor :BudgetId, :Resources

        def initialize(budgetid=nil, resources=nil)
          @BudgetId = budgetid
          @Resources = resources
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              budgetresource_tmp = BudgetResource.new
              budgetresource_tmp.deserialize(i)
              @Resources << budgetresource_tmp
            end
          end
        end
      end

      # AssociateBudget返回参数结构体
      class AssociateBudgetResponse < TencentCloud::Common::AbstractModel
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

      # AssociateCustomizedConfig请求参数结构体
      class AssociateCustomizedConfigRequest < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID
        # @type UconfigId: String
        # @param BindList: 关联的server或location
        # @type BindList: Array

        attr_accessor :UconfigId, :BindList

        def initialize(uconfigid=nil, bindlist=nil)
          @UconfigId = uconfigid
          @BindList = bindlist
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          unless params['BindList'].nil?
            @BindList = []
            params['BindList'].each do |i|
              binditem_tmp = BindItem.new
              binditem_tmp.deserialize(i)
              @BindList << binditem_tmp
            end
          end
        end
      end

      # AssociateCustomizedConfig返回参数结构体
      class AssociateCustomizedConfigResponse < TencentCloud::Common::AbstractModel
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

      # 模型路由待关联 Guardrail 防护配置
      class AssociateGuardrailConfig < TencentCloud::Common::AbstractModel
        # @param Type: <p>Guardrail 防护类型。</p><p>枚举值：</p><ul><li>WAF：使用腾讯云 WAF LLM SDK 接入配置对模型路由请求进行安全防护。</li></ul><p>当前仅支持 WAF；不传时默认为 WAF。</p>
        # @type Type: String
        # @param InstanceId: <p>关联的腾讯云 WAF 实例 ID。</p><p>当 Type 为 WAF 时必填。接口会校验该 WAF 实例存在且属于当前账号。</p>
        # @type InstanceId: String
        # @param ServiceId: <p>WAF LLM SDK 接入服务 ID。</p><p>该字段对应 WAF LLM SDK 接入配置中的服务标识，用于指定模型路由请求要绑定的 WAF 防护配置。当 Type 为 WAF 时必填。接口会校验该服务配置存在于指定的 WAF 实例下。</p>
        # @type ServiceId: String
        # @param InputCheckDepth: <p>最大检测对话轮数。</p><p>当 Type 为 WAF 时选填；未传时默认取值为 5。若传入，取值必须为正整数。</p>
        # @type InputCheckDepth: Integer

        attr_accessor :Type, :InstanceId, :ServiceId, :InputCheckDepth

        def initialize(type=nil, instanceid=nil, serviceid=nil, inputcheckdepth=nil)
          @Type = type
          @InstanceId = instanceid
          @ServiceId = serviceid
          @InputCheckDepth = inputcheckdepth
        end

        def deserialize(params)
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @ServiceId = params['ServiceId']
          @InputCheckDepth = params['InputCheckDepth']
        end
      end

      # AssociateModelRouterGuardrails请求参数结构体
      class AssociateModelRouterGuardrailsRequest < TencentCloud::Common::AbstractModel
        # @param Guardrails: <p>待关联的 Guardrail 防护配置列表。</p><p>当前最多支持 1 个元素。每个元素必须填写 InstanceId、ServiceId；Type 和 InputCheckDepth 为选填，不传时分别使用默认值 WAF 和 5。本结构不包含 GuardrailId，关联成功后由系统生成。</p>
        # @type Guardrails: Array
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String

        attr_accessor :Guardrails, :ModelRouterId

        def initialize(guardrails=nil, modelrouterid=nil)
          @Guardrails = guardrails
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          unless params['Guardrails'].nil?
            @Guardrails = []
            params['Guardrails'].each do |i|
              associateguardrailconfig_tmp = AssociateGuardrailConfig.new
              associateguardrailconfig_tmp.deserialize(i)
              @Guardrails << associateguardrailconfig_tmp
            end
          end
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # AssociateModelRouterGuardrails返回参数结构体
      class AssociateModelRouterGuardrailsResponse < TencentCloud::Common::AbstractModel
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

      # AssociateModelsToModelRouter请求参数结构体
      class AssociateModelsToModelRouterRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param Models: <p>需要关联的模型信息</p>
        # @type Models: Array

        attr_accessor :ModelRouterId, :Models

        def initialize(modelrouterid=nil, models=nil)
          @ModelRouterId = modelrouterid
          @Models = models
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              modelroutermodel_tmp = ModelRouterModel.new
              modelroutermodel_tmp.deserialize(i)
              @Models << modelroutermodel_tmp
            end
          end
        end
      end

      # AssociateModelsToModelRouter返回参数结构体
      class AssociateModelsToModelRouterResponse < TencentCloud::Common::AbstractModel
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

      # AssociateTargetGroups请求参数结构体
      class AssociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 绑定的关系数组，目标组类型需要一致。
        # 一次请求最多支持20个。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # AssociateTargetGroups返回参数结构体
      class AssociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 关联的模型路由实例
      class AssociatedModelRouterItem < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String

        attr_accessor :ModelRouterId

        def initialize(modelrouterid=nil)
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # 目标组关联到的规则
      class AssociationItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 关联到的负载均衡ID
        # @type LoadBalancerId: String
        # @param ListenerId: 关联到的监听器ID
        # @type ListenerId: String
        # @param LocationId: 关联到的转发规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationId: String
        # @param Protocol: 关联到的监听器协议类型，如HTTP,TCP,
        # @type Protocol: String
        # @param Port: 关联到的监听器端口
        # @type Port: Integer
        # @param Domain: 关联到的转发规则域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 关联到的转发规则URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param LoadBalancerName: 负载均衡名称
        # @type LoadBalancerName: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Weight: 关联目标组的权重， 该参数只有v2新版目标组生效。
        # @type Weight: Integer
        # @param RuleId: 高级路由规则ID
        # @type RuleId: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId, :Protocol, :Port, :Domain, :Url, :LoadBalancerName, :ListenerName, :Weight, :RuleId

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil, protocol=nil, port=nil, domain=nil, url=nil, loadbalancername=nil, listenername=nil, weight=nil, ruleid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
          @Protocol = protocol
          @Port = port
          @Domain = domain
          @Url = url
          @LoadBalancerName = loadbalancername
          @ListenerName = listenername
          @Weight = weight
          @RuleId = ruleid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Domain = params['Domain']
          @Url = params['Url']
          @LoadBalancerName = params['LoadBalancerName']
          @ListenerName = params['ListenerName']
          @Weight = params['Weight']
          @RuleId = params['RuleId']
        end
      end

      # AutoRewrite请求参数结构体
      class AutoRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: HTTPS:443监听器的ID。
        # @type ListenerId: String
        # @param Domains: HTTPS:443监听器下需要重定向的域名，若不填，则对HTTPS:443监听器下的所有域名都设置重定向。
        # @type Domains: Array
        # @param RewriteCodes: 重定向状态码，可取值301,302,307。
        # @type RewriteCodes: Array
        # @param TakeUrls: 重定向是否携带匹配的URL。
        # @type TakeUrls: Array

        attr_accessor :LoadBalancerId, :ListenerId, :Domains, :RewriteCodes, :TakeUrls

        def initialize(loadbalancerid=nil, listenerid=nil, domains=nil, rewritecodes=nil, takeurls=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domains = domains
          @RewriteCodes = rewritecodes
          @TakeUrls = takeurls
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domains = params['Domains']
          @RewriteCodes = params['RewriteCodes']
          @TakeUrls = params['TakeUrls']
        end
      end

      # AutoRewrite返回参数结构体
      class AutoRewriteResponse < TencentCloud::Common::AbstractModel
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

      # 可用区转发亲和信息
      class AvailableZoneAffinityInfo < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启可用区转发亲和。true：开启可用区转发亲和；false：开启可用区转发亲和。
        # @type Enable: Boolean
        # @param ExitRatio: 可用区转发亲和失效阈值，当可用区内后端服务健康比例小于该阈值时，负载均衡会退出可用区转发亲和，转为全可用区转发。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExitRatio: Integer
        # @param ReentryRatio: 可用区转发亲和的重新生效阈值，当处于全可用区转发，且负载均衡可用区内的后端服务健康比例大于等于该阈值时，负载均衡会重新进入可用区转发亲和。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReentryRatio: Integer

        attr_accessor :Enable, :ExitRatio, :ReentryRatio

        def initialize(enable=nil, exitratio=nil, reentryratio=nil)
          @Enable = enable
          @ExitRatio = exitratio
          @ReentryRatio = reentryratio
        end

        def deserialize(params)
          @Enable = params['Enable']
          @ExitRatio = params['ExitRatio']
          @ReentryRatio = params['ReentryRatio']
        end
      end

      # 监听器绑定的后端服务的详细信息
      class Backend < TencentCloud::Common::AbstractModel
        # @param Type: 后端服务的类型，可取：CVM、ENI、CCN、EVM、GLOBALROUTE、NAT、SRV等
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID，如 ins-abcd1234
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口，如果是全端口段监听器绑定的全监听目标组场景，此端口返回0，表示无效端口，绑定的后端服务的端口随监听器端口。
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param RegisteredTime: 后端服务被绑定的时间
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID，如 eni-1234abcd
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniId: String
        # @param Tag: 标签。
        # @type Tag: String
        # @param Zone: 后端服务所在的可用区，如ap-guangzhou-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :Type, :InstanceId, :Port, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RegisteredTime, :EniId, :Tag, :Zone

        def initialize(type=nil, instanceid=nil, port=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, registeredtime=nil, eniid=nil, tag=nil, zone=nil)
          @Type = type
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RegisteredTime = registeredtime
          @EniId = eniid
          @Tag = tag
          @Zone = zone
        end

        def deserialize(params)
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
          @Tag = params['Tag']
          @Zone = params['Zone']
        end
      end

      # 监听器或者转发规则绑定的目标组基本信息
      class BasicTargetGroupInfo < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param TargetGroupName: 目标组名称
        # @type TargetGroupName: String
        # @param Weight: 目标组权重
        # @type Weight: Integer

        attr_accessor :TargetGroupId, :TargetGroupName, :Weight

        def initialize(targetgroupid=nil, targetgroupname=nil, weight=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
          @Weight = weight
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
          @Weight = params['Weight']
        end
      end

      # BatchDeregisterTargets请求参数结构体
      class BatchDeregisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param Targets: 解绑目标。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchDeregisterTargets返回参数结构体
      class BatchDeregisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 解绑失败的监听器ID。
        # @type FailListenerIdSet: Array
        # @param Message: 解绑失败错误原因信息。
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :Message, :RequestId

        def initialize(faillisteneridset=nil, message=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyTargetTag请求参数结构体
      class BatchModifyTargetTagRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ModifyList: 要批量修改标签的列表。
        # @type ModifyList: Array

        attr_accessor :LoadBalancerId, :ModifyList

        def initialize(loadbalancerid=nil, modifylist=nil)
          @LoadBalancerId = loadbalancerid
          @ModifyList = modifylist
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ModifyList'].nil?
            @ModifyList = []
            params['ModifyList'].each do |i|
              rstagrule_tmp = RsTagRule.new
              rstagrule_tmp.deserialize(i)
              @ModifyList << rstagrule_tmp
            end
          end
        end
      end

      # BatchModifyTargetTag返回参数结构体
      class BatchModifyTargetTagResponse < TencentCloud::Common::AbstractModel
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

      # BatchModifyTargetWeight请求参数结构体
      class BatchModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: <p>负载均衡实例 ID。</p>
        # @type LoadBalancerId: String
        # @param ModifyList: <p>要批量修改权重的列表。ModifyList数组最多100个元素，ModifyList[i].Targets最多50个，全部Targets累加不超过500。</p>
        # @type ModifyList: Array

        attr_accessor :LoadBalancerId, :ModifyList

        def initialize(loadbalancerid=nil, modifylist=nil)
          @LoadBalancerId = loadbalancerid
          @ModifyList = modifylist
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ModifyList'].nil?
            @ModifyList = []
            params['ModifyList'].each do |i|
              rsweightrule_tmp = RsWeightRule.new
              rsweightrule_tmp.deserialize(i)
              @ModifyList << rsweightrule_tmp
            end
          end
        end
      end

      # BatchModifyTargetWeight返回参数结构体
      class BatchModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # BatchRegisterTargets请求参数结构体
      class BatchRegisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param Targets: 绑定目标。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchRegisterTargets返回参数结构体
      class BatchRegisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 绑定失败的监听器ID，如为空表示全部绑定成功。
        # @type FailListenerIdSet: Array
        # @param Message: 绑定失败错误原因信息。
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :Message, :RequestId

        def initialize(faillisteneridset=nil, message=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # 批量绑定类型
      class BatchTarget < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID。
        # @type ListenerId: String
        # @param Port: 绑定端口。
        # @type Port: Integer
        # @param InstanceId: 子机 ID。表示绑定主网卡主 IP。
        # @type InstanceId: String
        # @param EniIp: 绑定 IP 时需要传入此参数，支持弹性网卡的 IP 和其他内网 IP，如果是弹性网卡则必须先绑定至CVM，然后才能绑定到负载均衡实例。
        # 注意：参数 InstanceId、EniIp 只能传入一个且必须传入一个。如果绑定双栈IPV6子机，必须传该参数。
        # @type EniIp: String
        # @param Weight: 子机权重，范围[0, 100]。绑定时如果不存在，则默认为10。
        # @type Weight: Integer
        # @param LocationId: 七层规则 ID。7层负载均衡该参数必填
        # @type LocationId: String
        # @param Tag: 标签。
        # @type Tag: String

        attr_accessor :ListenerId, :Port, :InstanceId, :EniIp, :Weight, :LocationId, :Tag

        def initialize(listenerid=nil, port=nil, instanceid=nil, eniip=nil, weight=nil, locationid=nil, tag=nil)
          @ListenerId = listenerid
          @Port = port
          @InstanceId = instanceid
          @EniIp = eniip
          @Weight = weight
          @LocationId = locationid
          @Tag = tag
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @EniIp = params['EniIp']
          @Weight = params['Weight']
          @LocationId = params['LocationId']
          @Tag = params['Tag']
        end
      end

      # 绑定关系，包含监听器名字、协议、url、vport。
      class BindDetailItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 配置绑定的CLB ID
        # @type LoadBalancerId: String
        # @param ListenerId: 配置绑定的监听器ID
        # @type ListenerId: String
        # @param Domain: 配置绑定的域名
        # @type Domain: String
        # @param LocationId: 配置绑定的规则
        # @type LocationId: String
        # @param ListenerName: 监听器名字
        # @type ListenerName: String
        # @param Protocol: 监听器协议
        # @type Protocol: String
        # @param Vport: 监听器端口
        # @type Vport: Integer
        # @param Url: location的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param UconfigId: 配置ID
        # @type UconfigId: String

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :LocationId, :ListenerName, :Protocol, :Vport, :Url, :UconfigId

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, locationid=nil, listenername=nil, protocol=nil, vport=nil, url=nil, uconfigid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @LocationId = locationid
          @ListenerName = listenername
          @Protocol = protocol
          @Vport = vport
          @Url = url
          @UconfigId = uconfigid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @LocationId = params['LocationId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @Vport = params['Vport']
          @Url = params['Url']
          @UconfigId = params['UconfigId']
        end
      end

      # 配置绑定关系
      class BindItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 配置绑定的CLB ID
        # @type LoadBalancerId: String
        # @param ListenerId: 配置绑定的监听器ID
        # @type ListenerId: String
        # @param Domain: 配置绑定的域名
        # @type Domain: String
        # @param LocationId: 配置绑定的规则
        # @type LocationId: String

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :LocationId

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, locationid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @LocationId = locationid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @LocationId = params['LocationId']
        end
      end

      # 加入了12306黑名单的IP
      class BlockedIP < TencentCloud::Common::AbstractModel
        # @param IP: 黑名单IP
        # @type IP: String
        # @param CreateTime: 加入黑名单的时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String

        attr_accessor :IP, :CreateTime, :ExpireTime

        def initialize(ip=nil, createtime=nil, expiretime=nil)
          @IP = ip
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @IP = params['IP']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # Budget关联资源信息
      class BudgetAssociation < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p>
        # @type BudgetId: String
        # @param CreatedTime: <p>关联创建时间。</p>
        # @type CreatedTime: String
        # @param KeyId: <p>Key ID。仅当Type为Key时返回。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param ModelRouterId: <p>模型路由实例ID。</p><p>当Type为ModelRouter时表示关联资源本身；当Type为Key时表示Key所属实例。</p>
        # @type ModelRouterId: String
        # @param ResourceName: <p>资源对象的名称。</p>
        # @type ResourceName: String
        # @param Status: <p>关联关系的状态</p><p>枚举值：</p><ul><li>Active： 已生效</li><li>Configuring： 配置中</li><li>ConfigureFailed： 配置失败</li></ul>
        # @type Status: String
        # @param Type: <p>关联资源类型。</p><p>枚举值：</p><ul><li>ModelRouter：模型路由实例</li><li>Key：模型路由Key</li><li>UserGroup：用户组</li></ul>
        # @type Type: String
        # @param UserGroupId: <p>关联的用户组id</p>
        # @type UserGroupId: String

        attr_accessor :BudgetId, :CreatedTime, :KeyId, :ModelRouterId, :ResourceName, :Status, :Type, :UserGroupId

        def initialize(budgetid=nil, createdtime=nil, keyid=nil, modelrouterid=nil, resourcename=nil, status=nil, type=nil, usergroupid=nil)
          @BudgetId = budgetid
          @CreatedTime = createdtime
          @KeyId = keyid
          @ModelRouterId = modelrouterid
          @ResourceName = resourcename
          @Status = status
          @Type = type
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          @CreatedTime = params['CreatedTime']
          @KeyId = params['KeyId']
          @ModelRouterId = params['ModelRouterId']
          @ResourceName = params['ResourceName']
          @Status = params['Status']
          @Type = params['Type']
          @UserGroupId = params['UserGroupId']
        end
      end

      # Budget预算配置
      class BudgetConfig < TencentCloud::Common::AbstractModel
        # @param BudgetDuration: <p>预算刷新周期。</p><p>枚举值：</p><ul><li>1d：按天刷新</li><li>7d：按周刷新</li><li>30d：按月刷新</li></ul><p>不传时默认30d。同一个Budget下每种刷新周期最多配置一次。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetDuration: String
        # @param BudgetResetAt: <p>下一次刷新的时间</p>
        # @type BudgetResetAt: String
        # @param MaxBudget: <p>最大预算。</p><p>单位：credit。取值需大于0且不超过10000000000；不传时默认100000。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBudget: Float

        attr_accessor :BudgetDuration, :BudgetResetAt, :MaxBudget

        def initialize(budgetduration=nil, budgetresetat=nil, maxbudget=nil)
          @BudgetDuration = budgetduration
          @BudgetResetAt = budgetresetat
          @MaxBudget = maxbudget
        end

        def deserialize(params)
          @BudgetDuration = params['BudgetDuration']
          @BudgetResetAt = params['BudgetResetAt']
          @MaxBudget = params['MaxBudget']
        end
      end

      # Budget预算配置入参
      class BudgetConfigInput < TencentCloud::Common::AbstractModel
        # @param BudgetDuration: <p>预算刷新周期。</p><p>支持取值：</p><ul><li>1d：按天刷新</li><li>7d：按周刷新</li><li>30d：按月刷新</li></ul><p>不传时默认使用30d。同一个Budget下每种刷新周期最多配置一次。</p>
        # @type BudgetDuration: String
        # @param MaxBudget: <p>最大预算。</p><p>单位：credit。取值需大于0且不超过10000000000；不传时默认100000。</p>
        # @type MaxBudget: Float

        attr_accessor :BudgetDuration, :MaxBudget

        def initialize(budgetduration=nil, maxbudget=nil)
          @BudgetDuration = budgetduration
          @MaxBudget = maxbudget
        end

        def deserialize(params)
          @BudgetDuration = params['BudgetDuration']
          @MaxBudget = params['MaxBudget']
        end
      end

      # Budget信息
      class BudgetInfo < TencentCloud::Common::AbstractModel
        # @param AssociationKeyCount: <p>关联的key数量</p>
        # @type AssociationKeyCount: Integer
        # @param AssociationModelRouterCount: <p>关联的模型路由数量</p>
        # @type AssociationModelRouterCount: Integer
        # @param AssociationUserGroupCount: <p>关联的用户组数量</p>
        # @type AssociationUserGroupCount: Integer
        # @param BudgetConfigs: <p>Budget预算配置数组。</p><p>最多返回3个元素，每种刷新周期（1d/7d/30d）各一个。</p>
        # @type BudgetConfigs: Array
        # @param BudgetId: <p>Budget ID。</p>
        # @type BudgetId: String
        # @param BudgetName: <p>Budget名称。</p>
        # @type BudgetName: String
        # @param CreatedTime: <p>创建时间。</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>修改时间。</p>
        # @type ModifiedTime: String
        # @param RateLimitConfig: <p>Budget限速信息。</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForBudget`
        # @param Status: <p>Budget状态。</p><p>枚举值：</p><ul><li>Provisioning：创建中</li><li>Active：运行中</li><li>Configuring：变配中</li><li>Deleting：删除中</li><li>ProvisionFailed：创建失败</li><li>ConfigureFailed：变配失败</li><li>DeletionFailed：删除失败</li></ul>
        # @type Status: String

        attr_accessor :AssociationKeyCount, :AssociationModelRouterCount, :AssociationUserGroupCount, :BudgetConfigs, :BudgetId, :BudgetName, :CreatedTime, :ModifiedTime, :RateLimitConfig, :Status

        def initialize(associationkeycount=nil, associationmodelroutercount=nil, associationusergroupcount=nil, budgetconfigs=nil, budgetid=nil, budgetname=nil, createdtime=nil, modifiedtime=nil, ratelimitconfig=nil, status=nil)
          @AssociationKeyCount = associationkeycount
          @AssociationModelRouterCount = associationmodelroutercount
          @AssociationUserGroupCount = associationusergroupcount
          @BudgetConfigs = budgetconfigs
          @BudgetId = budgetid
          @BudgetName = budgetname
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @RateLimitConfig = ratelimitconfig
          @Status = status
        end

        def deserialize(params)
          @AssociationKeyCount = params['AssociationKeyCount']
          @AssociationModelRouterCount = params['AssociationModelRouterCount']
          @AssociationUserGroupCount = params['AssociationUserGroupCount']
          unless params['BudgetConfigs'].nil?
            @BudgetConfigs = []
            params['BudgetConfigs'].each do |i|
              budgetconfig_tmp = BudgetConfig.new
              budgetconfig_tmp.deserialize(i)
              @BudgetConfigs << budgetconfig_tmp
            end
          end
          @BudgetId = params['BudgetId']
          @BudgetName = params['BudgetName']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForBudget.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          @Status = params['Status']
        end
      end

      # Budget关联资源对象。仅支持企业型模型路由实例和企业型实例下的Key。
      class BudgetResource < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p><p>当Type为ModelRouter时表示要关联的实例；当Type为Key时表示Key所属实例。</p>
        # @type ModelRouterId: String
        # @param Type: <p>资源类型。</p><p>枚举值：</p><ul><li>ModelRouter：模型路由实例</li><li>Key：模型路由Key</li><li>UserGroup：用户组（Type 为 UserGroup 时需传 UserGroupId）</li></ul>
        # @type Type: String
        # @param KeyId: <p>Key ID。</p><p>字段本身选填；当Type为Key时必填，当Type为ModelRouter时不传。</p>
        # @type KeyId: String
        # @param UserGroupId: <p>用户组ID</p>
        # @type UserGroupId: String

        attr_accessor :ModelRouterId, :Type, :KeyId, :UserGroupId

        def initialize(modelrouterid=nil, type=nil, keyid=nil, usergroupid=nil)
          @ModelRouterId = modelrouterid
          @Type = type
          @KeyId = keyid
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @Type = params['Type']
          @KeyId = params['KeyId']
          @UserGroupId = params['UserGroupId']
        end
      end

      # 证书ID，以及与该证书ID关联的负载均衡实例列表
      class CertIdRelatedWithLoadBalancers < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID
        # @type CertId: String
        # @param LoadBalancers: 与证书关联的负载均衡实例列表
        # @type LoadBalancers: Array

        attr_accessor :CertId, :LoadBalancers

        def initialize(certid=nil, loadbalancers=nil)
          @CertId = certid
          @LoadBalancers = loadbalancers
        end

        def deserialize(params)
          @CertId = params['CertId']
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancers << loadbalancer_tmp
            end
          end
        end
      end

      # 证书信息
      class CertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 证书 ID，如果不填写此项则必须上传证书内容，包括CertName, CertContent，若为服务端证书必须包含CertKey。
        # @type CertId: String
        # @param CertName: 上传证书的名称，如果没有 CertId，则此项必传。
        # @type CertName: String
        # @param CertContent: 上传证书的公钥；如果没有 CertId，则此项必传。
        # @type CertContent: String
        # @param CertKey: 上传服务端证书的私钥；如果没有 CertId，则此项必传。
        # @type CertKey: String

        attr_accessor :CertId, :CertName, :CertContent, :CertKey

        def initialize(certid=nil, certname=nil, certcontent=nil, certkey=nil)
          @CertId = certid
          @CertName = certname
          @CertContent = certcontent
          @CertKey = certkey
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @CertContent = params['CertContent']
          @CertKey = params['CertKey']
        end
      end

      # 证书信息
      class CertificateInput < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证。
        # 默认为 UNIDIRECTIONAL。
        # @type SSLMode: String
        # @param SSLVerifyClient: 双向认证时，是否开启客户端认证，ON:开启，OPTIONAL:自适应，默认ON。
        # @type SSLVerifyClient: String
        # @param CertId: 服务端证书的 ID，如果不填写此项则必须上传证书，包括 CertContent（服务端证书内容），CertKey（服务端证书密钥），CertName（服务端证书名称）。
        # @type CertId: String
        # @param CertCaId: 客户端证书的 ID，当监听器采用双向认证，即 SSLMode=MUTUAL 时，如果不填写此项则必须上传客户端证书，包括 CertCaContent，CertCaName。
        # @type CertCaId: String
        # @param CertName: 上传服务端证书的名称，如果没有 CertId，则此项必传。
        # @type CertName: String
        # @param CertKey: 上传服务端证书的 key，如果没有 CertId，则此项必传。
        # @type CertKey: String
        # @param CertContent: 上传服务端证书的内容，如果没有 CertId，则此项必传。
        # @type CertContent: String
        # @param CertCaName: 上传客户端 CA 证书的名称，如果 SSLMode=MUTUAL，如果没有 CertCaId，则此项必传。
        # @type CertCaName: String
        # @param CertCaContent: 上传客户端证书的内容，如果 SSLMode=MUTUAL，如果没有 CertCaId，则此项必传。
        # @type CertCaContent: String

        attr_accessor :SSLMode, :SSLVerifyClient, :CertId, :CertCaId, :CertName, :CertKey, :CertContent, :CertCaName, :CertCaContent

        def initialize(sslmode=nil, sslverifyclient=nil, certid=nil, certcaid=nil, certname=nil, certkey=nil, certcontent=nil, certcaname=nil, certcacontent=nil)
          @SSLMode = sslmode
          @SSLVerifyClient = sslverifyclient
          @CertId = certid
          @CertCaId = certcaid
          @CertName = certname
          @CertKey = certkey
          @CertContent = certcontent
          @CertCaName = certcaname
          @CertCaContent = certcacontent
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          @SSLVerifyClient = params['SSLVerifyClient']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @CertName = params['CertName']
          @CertKey = params['CertKey']
          @CertContent = params['CertContent']
          @CertCaName = params['CertCaName']
          @CertCaContent = params['CertCaContent']
        end
      end

      # 证书相关信息
      class CertificateOutput < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证
        # @type SSLMode: String
        # @param SSLVerifyClient: 是否开启客户端证书验证，只在双向认证时生效。
        # @type SSLVerifyClient: String
        # @param CertId: 服务端证书的ID。
        # @type CertId: String
        # @param CertCaId: 客户端证书的 ID。
        # @type CertCaId: String
        # @param ExtCertIds: 多本服务器证书场景扩展的服务器证书ID。
        # @type ExtCertIds: Array

        attr_accessor :SSLMode, :SSLVerifyClient, :CertId, :CertCaId, :ExtCertIds

        def initialize(sslmode=nil, sslverifyclient=nil, certid=nil, certcaid=nil, extcertids=nil)
          @SSLMode = sslmode
          @SSLVerifyClient = sslverifyclient
          @CertId = certid
          @CertCaId = certcaid
          @ExtCertIds = extcertids
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          @SSLVerifyClient = params['SSLVerifyClient']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @ExtCertIds = params['ExtCertIds']
        end
      end

      # ChatCompletions请求参数结构体
      class ChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param ApiKey: <p>virtual key，用于向代理网关鉴权</p>
        # @type ApiKey: String
        # @param Attachments: <p>多模态附件列表</p>
        # @type Attachments: Array
        # @param ChatContent: <p>聊天内容</p>
        # @type ChatContent: String
        # @param Model: <p>模型名称，配置的模型标识</p><p>示例：gpt-4o、deepseek-chat</p>
        # @type Model: String
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param RequestPath: <p>请求路径</p><p>默认值：/v1/chat/completions</p>
        # @type RequestPath: String

        attr_accessor :ApiKey, :Attachments, :ChatContent, :Model, :ModelRouterId, :RequestPath

        def initialize(apikey=nil, attachments=nil, chatcontent=nil, model=nil, modelrouterid=nil, requestpath=nil)
          @ApiKey = apikey
          @Attachments = attachments
          @ChatContent = chatcontent
          @Model = model
          @ModelRouterId = modelrouterid
          @RequestPath = requestpath
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              multimodalityattachments_tmp = MultiModalityAttachments.new
              multimodalityattachments_tmp.deserialize(i)
              @Attachments << multimodalityattachments_tmp
            end
          end
          @ChatContent = params['ChatContent']
          @Model = params['Model']
          @ModelRouterId = params['ModelRouterId']
          @RequestPath = params['RequestPath']
        end
      end

      # ChatCompletions返回参数结构体
      class ChatCompletionsResponse < TencentCloud::Common::AbstractModel
        # @param ChatResponseMessage: <p>聊天的返回信息</p>
        # @type ChatResponseMessage: String
        # @param ErrorInChat: <p>聊天请求发送过程中的失败信息</p>
        # @type ErrorInChat: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChatResponseMessage, :ErrorInChat, :RequestId

        def initialize(chatresponsemessage=nil, errorinchat=nil, requestid=nil)
          @ChatResponseMessage = chatresponsemessage
          @ErrorInChat = errorinchat
          @RequestId = requestid
        end

        def deserialize(params)
          @ChatResponseMessage = params['ChatResponseMessage']
          @ErrorInChat = params['ErrorInChat']
          @RequestId = params['RequestId']
        end
      end

      # 传统型负载均衡后端服务的健康状态
      class ClassicalHealth < TencentCloud::Common::AbstractModel
        # @param IP: 后端服务的内网 IP
        # @type IP: String
        # @param Port: 后端服务的端口
        # @type Port: Integer
        # @param ListenerPort: 负载均衡的监听端口
        # @type ListenerPort: Integer
        # @param Protocol: 转发协议
        # @type Protocol: String
        # @param HealthStatus: 健康检查结果，1 表示健康，0 表示不健康
        # @type HealthStatus: Integer

        attr_accessor :IP, :Port, :ListenerPort, :Protocol, :HealthStatus

        def initialize(ip=nil, port=nil, listenerport=nil, protocol=nil, healthstatus=nil)
          @IP = ip
          @Port = port
          @ListenerPort = listenerport
          @Protocol = protocol
          @HealthStatus = healthstatus
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
          @ListenerPort = params['ListenerPort']
          @Protocol = params['Protocol']
          @HealthStatus = params['HealthStatus']
        end
      end

      # 传统型负载均衡监听器信息
      class ClassicalListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: <p>负载均衡监听器ID</p>
        # @type ListenerId: String
        # @param ListenerPort: <p>负载均衡监听器端口</p>
        # @type ListenerPort: Integer
        # @param InstancePort: <p>监听器后端转发端口</p>
        # @type InstancePort: Integer
        # @param ListenerName: <p>监听器名称</p>
        # @type ListenerName: String
        # @param Protocol: <p>监听器协议类型</p>
        # @type Protocol: String
        # @param SessionExpire: <p>会话保持时间</p>
        # @type SessionExpire: Integer
        # @param HealthSwitch: <p>是否开启了健康检查：1（开启）、0（关闭）</p>
        # @type HealthSwitch: Integer
        # @param TimeOut: <p>响应超时时间</p><p>单位：秒</p>
        # @type TimeOut: Integer
        # @param IntervalTime: <p>检查间隔</p><p>单位：秒</p>
        # @type IntervalTime: Integer
        # @param HealthNum: <p>健康阈值</p>
        # @type HealthNum: Integer
        # @param UnhealthNum: <p>不健康阈值</p>
        # @type UnhealthNum: Integer
        # @param HttpHash: <p>传统型公网负载均衡 监听器的请求均衡方法。空字符串或wrr 表示按权重轮询，ip_hash 表示根据访问的源 IP 进行一致性哈希方式来分发，least_conn表示按最小连接数。</p>
        # @type HttpHash: String
        # @param HttpCode: <p>传统型公网负载均衡的 HTTP、HTTPS 监听器的健康检查返回码。具体可参考创建监听器中对该字段的解释</p>
        # @type HttpCode: Integer
        # @param HttpCheckPath: <p>传统型公网负载均衡的 HTTP、HTTPS 监听器的健康检查路径</p>
        # @type HttpCheckPath: String
        # @param SSLMode: <p>传统型公网负载均衡的 HTTPS 监听器的认证方式</p>
        # @type SSLMode: String
        # @param CertId: <p>传统型公网负载均衡的 HTTPS 监听器的服务端证书 ID</p>
        # @type CertId: String
        # @param CertCaId: <p>传统型公网负载均衡的 HTTPS 监听器的客户端证书 ID</p>
        # @type CertCaId: String
        # @param Status: <p>监听器的状态，0 表示创建中，1 表示运行中</p>
        # @type Status: Integer

        attr_accessor :ListenerId, :ListenerPort, :InstancePort, :ListenerName, :Protocol, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :HttpHash, :HttpCode, :HttpCheckPath, :SSLMode, :CertId, :CertCaId, :Status

        def initialize(listenerid=nil, listenerport=nil, instanceport=nil, listenername=nil, protocol=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httphash=nil, httpcode=nil, httpcheckpath=nil, sslmode=nil, certid=nil, certcaid=nil, status=nil)
          @ListenerId = listenerid
          @ListenerPort = listenerport
          @InstancePort = instanceport
          @ListenerName = listenername
          @Protocol = protocol
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpHash = httphash
          @HttpCode = httpcode
          @HttpCheckPath = httpcheckpath
          @SSLMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @Status = status
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerPort = params['ListenerPort']
          @InstancePort = params['InstancePort']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpHash = params['HttpHash']
          @HttpCode = params['HttpCode']
          @HttpCheckPath = params['HttpCheckPath']
          @SSLMode = params['SSLMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @Status = params['Status']
        end
      end

      # 负载均衡信息
      class ClassicalLoadBalancerInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 后端实例ID
        # @type InstanceId: String
        # @param LoadBalancerIds: 负载均衡实例ID列表
        # @type LoadBalancerIds: Array

        attr_accessor :InstanceId, :LoadBalancerIds

        def initialize(instanceid=nil, loadbalancerids=nil)
          @InstanceId = instanceid
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # 传统型负载均衡的后端服务相关信息
      class ClassicalTarget < TencentCloud::Common::AbstractModel
        # @param Type: 后端服务的类型，可取值：CVM、ENI（即将支持）
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID，可通过 DescribeInstances 接口返回字段中的 unInstanceId 字段获取
        # @type InstanceId: String
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # @type InstanceName: String
        # @param RunFlag: 后端服务的状态
        # 1：故障，2：运行中，3：创建中，4：已关机，5：已退还，6：退还中， 7：重启中，8：开机中，9：关机中，10：密码重置中，11：格式化中，12：镜像制作中，13：带宽设置中，14：重装系统中，19：升级中，21：热迁移中
        # @type RunFlag: Integer

        attr_accessor :Type, :InstanceId, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RunFlag

        def initialize(type=nil, instanceid=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, runflag=nil)
          @Type = type
          @InstanceId = instanceid
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RunFlag = runflag
        end

        def deserialize(params)
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RunFlag = params['RunFlag']
        end
      end

      # 传统型负载均衡的后端信息
      class ClassicalTargetInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 后端实例ID
        # @type InstanceId: String
        # @param Weight: 权重，取值范围 [0, 100]
        # @type Weight: Integer

        attr_accessor :InstanceId, :Weight

        def initialize(instanceid=nil, weight=nil)
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # CloneLoadBalancer请求参数结构体
      class CloneLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口获取。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 克隆出负载均衡实例的名称，规则：1-60 个英文、汉字、数字、连接线“-”或下划线“_”。
        # 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param ProjectId: 负载均衡实例所属的项目 ID，默认项目 ID 为0，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口获取。不传此参数则视为默认项目。
        # @type ProjectId: Integer
        # @param MasterZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的主可用区ID，可用区 ID 和名称均支持，例如 100001 或 ap-guangzhou-1。
        # 注：主可用区是需要承载流量的可用区，备可用区默认不承载流量，主可用区不可用时才使用备可用区，平台将为您自动选择最佳备可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主可用区的列表。
        # @type MasterZoneId: String
        # @param SlaveZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的备可用区ID，可用区 ID 和名称均支持，例如 100001 或 ap-guangzhou-1。
        # 注：备可用区是主可用区故障后，需要承载流量的可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主/备可用区的列表。
        # @type SlaveZoneId: String
        # @param ZoneId: 仅适用于公网负载均衡。可用区ID，可用区 ID 和名称均支持，指定可用区以创建负载均衡实例。如：100001 或 ap-guangzhou-1。不传则查询所有可用区的 CVM 实例。如需指定可用区，可调用查询可用区列表 [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 接口查询。
        # @type ZoneId: String
        # @param InternetAccessible: 仅适用于公网负载均衡。负载均衡的网络计费模式。
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param VipIsp: 仅适用于公网负载均衡。目前仅广州、上海、南京、济南、杭州、福州、北京、石家庄、武汉、长沙、成都、重庆地域支持静态单线 IP 线路类型，如需体验，请联系商务经理申请。申请通过后，即可选择中国移动（CMCC）、中国联通（CUCC）或中国电信（CTCC）的运营商类型，网络计费模式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。 如果不指定本参数，则默认使用BGP。可通过 DescribeResources 接口查询一个地域所支持的Isp。
        # @type VipIsp: String
        # @param Vip: 指定Vip申请负载均衡。
        # @type Vip: String
        # @param Tags: 购买负载均衡同时，给负载均衡打上标签。
        # @type Tags: Array
        # @param ExclusiveCluster: 独占集群信息。
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param BandwidthPackageId: 带宽包ID，可以通过 [DescribeBandwidthPackages](https://cloud.tencent.com/document/api/215/19209) 接口获取。指定此参数时，网络计费方式（InternetAccessible.InternetChargeType）只支持按带宽包计费（BANDWIDTH_PACKAGE）。
        # @type BandwidthPackageId: String
        # @param SnatPro: 是否支持绑定跨地域/跨Vpc绑定IP的功能。
        # @type SnatPro: Boolean
        # @param SnatIps: 开启绑定跨地域/跨Vpc绑定IP的功能后，创建SnatIp。
        # @type SnatIps: Array
        # @param ClusterIds: 公网独占集群ID或者CDCId，可以通过 [DescribeExclusiveClusters](https://cloud.tencent.com/document/product/214/49278) 接口获取。
        # @type ClusterIds: Array
        # @param SlaType: 性能容量型规格。<li>clb.c2.medium（标准型）</li><li>clb.c3.small（高阶型1）</li><li>clb.c3.medium（高阶型2）</li><li>clb.c4.small（超强型1）</li><li>clb.c4.medium（超强型2）</li><li>clb.c4.large（超强型3）</li><li>clb.c4.xlarge（超强型4）</li>
        # @type SlaType: String
        # @param ClusterTag: Stgw独占集群的标签。
        # @type ClusterTag: String
        # @param Zones: 仅适用于私有网络内网负载均衡。内网就近接入时，选择可用区下发。可调用[DescribeZones](https://cloud.tencent.com/document/product/213/15707)接口查询可用区列表。
        # @type Zones: Array
        # @param EipAddressId: EIP 的唯一 ID，形如：eip-qhx8udkc，仅适用于内网负载均衡绑定EIP，可以通过 [DescribeAddresses](https://cloud.tencent.com/document/product/215/16702) 接口查询。
        # @type EipAddressId: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :ProjectId, :MasterZoneId, :SlaveZoneId, :ZoneId, :InternetAccessible, :VipIsp, :Vip, :Tags, :ExclusiveCluster, :BandwidthPackageId, :SnatPro, :SnatIps, :ClusterIds, :SlaType, :ClusterTag, :Zones, :EipAddressId

        def initialize(loadbalancerid=nil, loadbalancername=nil, projectid=nil, masterzoneid=nil, slavezoneid=nil, zoneid=nil, internetaccessible=nil, vipisp=nil, vip=nil, tags=nil, exclusivecluster=nil, bandwidthpackageid=nil, snatpro=nil, snatips=nil, clusterids=nil, slatype=nil, clustertag=nil, zones=nil, eipaddressid=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @ProjectId = projectid
          @MasterZoneId = masterzoneid
          @SlaveZoneId = slavezoneid
          @ZoneId = zoneid
          @InternetAccessible = internetaccessible
          @VipIsp = vipisp
          @Vip = vip
          @Tags = tags
          @ExclusiveCluster = exclusivecluster
          @BandwidthPackageId = bandwidthpackageid
          @SnatPro = snatpro
          @SnatIps = snatips
          @ClusterIds = clusterids
          @SlaType = slatype
          @ClusterTag = clustertag
          @Zones = zones
          @EipAddressId = eipaddressid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @ProjectId = params['ProjectId']
          @MasterZoneId = params['MasterZoneId']
          @SlaveZoneId = params['SlaveZoneId']
          @ZoneId = params['ZoneId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @VipIsp = params['VipIsp']
          @Vip = params['Vip']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @BandwidthPackageId = params['BandwidthPackageId']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @ClusterIds = params['ClusterIds']
          @SlaType = params['SlaType']
          @ClusterTag = params['ClusterTag']
          @Zones = params['Zones']
          @EipAddressId = params['EipAddressId']
        end
      end

      # CloneLoadBalancer返回参数结构体
      class CloneLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # 集群的详细信息，如集群ID，名称，类型，可用区，标签等
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterType: 集群类型，如TGW，STGW，VPCGW
        # @type ClusterType: String
        # @param ClusterTag: 集群标签，只有TGW/STGW集群有标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTag: String
        # @param Zone: 集群所在可用区，如ap-guangzhou-1
        # @type Zone: String
        # @param Network: 集群网络类型，如Public，Private
        # @type Network: String
        # @param MaxConn: 最大连接数（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConn: Integer
        # @param MaxInFlow: 最大入带宽Mbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInFlow: Integer
        # @param MaxInPkg: 最大入包量（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInPkg: Integer
        # @param MaxOutFlow: 最大出带宽Mbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOutFlow: Integer
        # @param MaxOutPkg: 最大出包量（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOutPkg: Integer
        # @param MaxNewConn: 最大新建连接数（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNewConn: Integer
        # @param HTTPMaxNewConn: http最大新建连接数（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPMaxNewConn: Integer
        # @param HTTPSMaxNewConn: https最大新建连接数（个/秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPSMaxNewConn: Integer
        # @param HTTPQps: http QPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPQps: Integer
        # @param HTTPSQps: https QPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPSQps: Integer
        # @param ResourceCount: 集群内资源总数目
        # @type ResourceCount: Integer
        # @param IdleResourceCount: 集群内空闲资源数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleResourceCount: Integer
        # @param LoadBalanceDirectorCount: 集群内转发机的数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalanceDirectorCount: Integer
        # @param Isp: 集群的Isp属性，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isp: String
        # @param ClustersZone: 集群所在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersZone: :class:`Tencentcloud::Clb.v20180317.models.ClustersZone`
        # @param ClustersVersion: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersVersion: String
        # @param DisasterRecoveryType: 集群容灾类型，如SINGLE-ZONE，DISASTER-RECOVERY，MUTUAL-DISASTER-RECOVERY
        # @type DisasterRecoveryType: String
        # @param Egress: 网络出口
        # @type Egress: String
        # @param IPVersion: IP版本
        # @type IPVersion: String
        # @param Tag: 标签信息
        # @type Tag: Array

        attr_accessor :ClusterId, :ClusterName, :ClusterType, :ClusterTag, :Zone, :Network, :MaxConn, :MaxInFlow, :MaxInPkg, :MaxOutFlow, :MaxOutPkg, :MaxNewConn, :HTTPMaxNewConn, :HTTPSMaxNewConn, :HTTPQps, :HTTPSQps, :ResourceCount, :IdleResourceCount, :LoadBalanceDirectorCount, :Isp, :ClustersZone, :ClustersVersion, :DisasterRecoveryType, :Egress, :IPVersion, :Tag

        def initialize(clusterid=nil, clustername=nil, clustertype=nil, clustertag=nil, zone=nil, network=nil, maxconn=nil, maxinflow=nil, maxinpkg=nil, maxoutflow=nil, maxoutpkg=nil, maxnewconn=nil, httpmaxnewconn=nil, httpsmaxnewconn=nil, httpqps=nil, httpsqps=nil, resourcecount=nil, idleresourcecount=nil, loadbalancedirectorcount=nil, isp=nil, clusterszone=nil, clustersversion=nil, disasterrecoverytype=nil, egress=nil, ipversion=nil, tag=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterType = clustertype
          @ClusterTag = clustertag
          @Zone = zone
          @Network = network
          @MaxConn = maxconn
          @MaxInFlow = maxinflow
          @MaxInPkg = maxinpkg
          @MaxOutFlow = maxoutflow
          @MaxOutPkg = maxoutpkg
          @MaxNewConn = maxnewconn
          @HTTPMaxNewConn = httpmaxnewconn
          @HTTPSMaxNewConn = httpsmaxnewconn
          @HTTPQps = httpqps
          @HTTPSQps = httpsqps
          @ResourceCount = resourcecount
          @IdleResourceCount = idleresourcecount
          @LoadBalanceDirectorCount = loadbalancedirectorcount
          @Isp = isp
          @ClustersZone = clusterszone
          @ClustersVersion = clustersversion
          @DisasterRecoveryType = disasterrecoverytype
          @Egress = egress
          @IPVersion = ipversion
          @Tag = tag
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @ClusterTag = params['ClusterTag']
          @Zone = params['Zone']
          @Network = params['Network']
          @MaxConn = params['MaxConn']
          @MaxInFlow = params['MaxInFlow']
          @MaxInPkg = params['MaxInPkg']
          @MaxOutFlow = params['MaxOutFlow']
          @MaxOutPkg = params['MaxOutPkg']
          @MaxNewConn = params['MaxNewConn']
          @HTTPMaxNewConn = params['HTTPMaxNewConn']
          @HTTPSMaxNewConn = params['HTTPSMaxNewConn']
          @HTTPQps = params['HTTPQps']
          @HTTPSQps = params['HTTPSQps']
          @ResourceCount = params['ResourceCount']
          @IdleResourceCount = params['IdleResourceCount']
          @LoadBalanceDirectorCount = params['LoadBalanceDirectorCount']
          @Isp = params['Isp']
          unless params['ClustersZone'].nil?
            @ClustersZone = ClustersZone.new
            @ClustersZone.deserialize(params['ClustersZone'])
          end
          @ClustersVersion = params['ClustersVersion']
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @Egress = params['Egress']
          @IPVersion = params['IPVersion']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tag << taginfo_tmp
            end
          end
        end
      end

      # 模型路由集群信息
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>独占集群ID</p>
        # @type ClusterId: String
        # @param Type: <p>集群类型</p><p>枚举值：</p><ul><li>Public： 公有云集群</li><li>Exclusive： 独占集群</li></ul><p>默认值：Public</p>
        # @type Type: String
        # @param ClusterName: <p>集群名称</p>
        # @type ClusterName: String

        attr_accessor :ClusterId, :Type, :ClusterName

        def initialize(clusterid=nil, type=nil, clustername=nil)
          @ClusterId = clusterid
          @Type = type
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Type = params['Type']
          @ClusterName = params['ClusterName']
        end
      end

      # 独占集群信息
      class ClusterItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Zone: 集群所在可用区，如ap-guangzhou-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :ClusterId, :ClusterName, :Zone

        def initialize(clusterid=nil, clustername=nil, zone=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Zone = zone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Zone = params['Zone']
        end
      end

      # 集群内资源类型
      class ClusterResource < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID，如tgw-12345678。
        # @type ClusterId: String
        # @param Vip: ip地址。
        # @type Vip: String
        # @param LoadBalancerId: 负载均衡唯一ID，如lb-12345678。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param Idle: 资源是否闲置。
        # @type Idle: String
        # @param ClusterName: 集群名称。
        # @type ClusterName: String
        # @param Isp: 集群的Isp属性，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。
        # @type Isp: String
        # @param ClustersZone: 集群所在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersZone: :class:`Tencentcloud::Clb.v20180317.models.ClustersZone`

        attr_accessor :ClusterId, :Vip, :LoadBalancerId, :Idle, :ClusterName, :Isp, :ClustersZone

        def initialize(clusterid=nil, vip=nil, loadbalancerid=nil, idle=nil, clustername=nil, isp=nil, clusterszone=nil)
          @ClusterId = clusterid
          @Vip = vip
          @LoadBalancerId = loadbalancerid
          @Idle = idle
          @ClusterName = clustername
          @Isp = isp
          @ClustersZone = clusterszone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Vip = params['Vip']
          @LoadBalancerId = params['LoadBalancerId']
          @Idle = params['Idle']
          @ClusterName = params['ClusterName']
          @Isp = params['Isp']
          unless params['ClustersZone'].nil?
            @ClustersZone = ClustersZone.new
            @ClustersZone.deserialize(params['ClustersZone'])
          end
        end
      end

      # 集群所在的可用区。
      class ClustersZone < TencentCloud::Common::AbstractModel
        # @param MasterZone: 集群所在的主可用区。
        # @type MasterZone: Array
        # @param SlaveZone: 集群所在的备可用区。
        # @type SlaveZone: Array

        attr_accessor :MasterZone, :SlaveZone

        def initialize(masterzone=nil, slavezone=nil)
          @MasterZone = masterzone
          @SlaveZone = slavezone
        end

        def deserialize(params)
          @MasterZone = params['MasterZone']
          @SlaveZone = params['SlaveZone']
        end
      end

      # ModelAlias 积分系数配置
      class Coefficient < TencentCloud::Common::AbstractModel
        # @param InputCachedCoefficient: <p>缓存命中输入积分系数。</p><p>用于 provider prompt cache 命中的输入 token。</p><p>取值范围：[0, 5000]</p><p>默认值：3</p>
        # @type InputCachedCoefficient: Float
        # @param InputCoefficient: <p>输入积分系数。</p><p>取值范围：[1, 5000]</p><p>默认值：25</p>
        # @type InputCoefficient: Float
        # @param OutputCoefficient: <p>输出积分系数。</p><p>取值范围：[1, 5000]</p><p>默认值：100</p>
        # @type OutputCoefficient: Float

        attr_accessor :InputCachedCoefficient, :InputCoefficient, :OutputCoefficient

        def initialize(inputcachedcoefficient=nil, inputcoefficient=nil, outputcoefficient=nil)
          @InputCachedCoefficient = inputcachedcoefficient
          @InputCoefficient = inputcoefficient
          @OutputCoefficient = outputcoefficient
        end

        def deserialize(params)
          @InputCachedCoefficient = params['InputCachedCoefficient']
          @InputCoefficient = params['InputCoefficient']
          @OutputCoefficient = params['OutputCoefficient']
        end
      end

      # 配置内容
      class ConfigListItem < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID
        # @type UconfigId: String
        # @param ConfigType: 配置类型， 可选值：CLB（实例维度配置）， SERVER（服务维度配置），LOCATION（规则维度配置）
        # @type ConfigType: String
        # @param ConfigName: 配置名字
        # @type ConfigName: String
        # @param ConfigContent: 配置内容
        # @type ConfigContent: String
        # @param CreateTimestamp: 配置的创建时间。
        # 格式：YYYY-MM-DD HH:mm:ss
        # @type CreateTimestamp: String
        # @param UpdateTimestamp: 配置的修改时间。
        # 格式：YYYY-MM-DD HH:mm:ss
        # @type UpdateTimestamp: String

        attr_accessor :UconfigId, :ConfigType, :ConfigName, :ConfigContent, :CreateTimestamp, :UpdateTimestamp

        def initialize(uconfigid=nil, configtype=nil, configname=nil, configcontent=nil, createtimestamp=nil, updatetimestamp=nil)
          @UconfigId = uconfigid
          @ConfigType = configtype
          @ConfigName = configname
          @ConfigContent = configcontent
          @CreateTimestamp = createtimestamp
          @UpdateTimestamp = updatetimestamp
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          @ConfigType = params['ConfigType']
          @ConfigName = params['ConfigName']
          @ConfigContent = params['ConfigContent']
          @CreateTimestamp = params['CreateTimestamp']
          @UpdateTimestamp = params['UpdateTimestamp']
        end
      end

      # CreateBYOKNetwork请求参数结构体
      class CreateBYOKNetworkRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: <p>子网 ID</p><p>参数格式：subnet-xxxxxxxx</p>
        # @type SubnetId: String
        # @param VpcId: <p>VPC 实例 ID</p><p>参数格式：vpc-xxxxxxxx</p>
        # @type VpcId: String
        # @param ServiceProviderName: <p>BYOK 的自定义名字</p><p>入参限制：1～256个字符，可选</p>
        # @type ServiceProviderName: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :SubnetId, :VpcId, :ServiceProviderName, :Tags

        def initialize(subnetid=nil, vpcid=nil, serviceprovidername=nil, tags=nil)
          @SubnetId = subnetid
          @VpcId = vpcid
          @ServiceProviderName = serviceprovidername
          @Tags = tags
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @ServiceProviderName = params['ServiceProviderName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateBYOKNetwork返回参数结构体
      class CreateBYOKNetworkResponse < TencentCloud::Common::AbstractModel
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

      # CreateBudget请求参数结构体
      class CreateBudgetRequest < TencentCloud::Common::AbstractModel
        # @param BudgetConfigs: <p>预算配置数组。</p><p>数组长度最大为3，最多可同时配置1d、7d、30d三个刷新周期，且每种刷新周期只能出现一次。BudgetResetAt不支持作为入参设置，系统会按配置的刷新周期自动维护刷新时间。</p>
        # @type BudgetConfigs: Array
        # @param BudgetName: <p>Budget名称。</p><p>不传默认为 '-'。</p>
        # @type BudgetName: String
        # @param RateLimitConfig: <p>Budget限速配置。</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForBudget`
        # @param Resources: <p>创建Budget时同时关联的资源列表。</p><p>仅支持企业型模型路由实例和企业型实例下的Key。如果资源不存在或不可关联，创建请求失败；资源已关联其他Budget时将替换为新创建的Budget。</p>
        # @type Resources: Array

        attr_accessor :BudgetConfigs, :BudgetName, :RateLimitConfig, :Resources

        def initialize(budgetconfigs=nil, budgetname=nil, ratelimitconfig=nil, resources=nil)
          @BudgetConfigs = budgetconfigs
          @BudgetName = budgetname
          @RateLimitConfig = ratelimitconfig
          @Resources = resources
        end

        def deserialize(params)
          unless params['BudgetConfigs'].nil?
            @BudgetConfigs = []
            params['BudgetConfigs'].each do |i|
              budgetconfiginput_tmp = BudgetConfigInput.new
              budgetconfiginput_tmp.deserialize(i)
              @BudgetConfigs << budgetconfiginput_tmp
            end
          end
          @BudgetName = params['BudgetName']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForBudget.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              budgetresource_tmp = BudgetResource.new
              budgetresource_tmp.deserialize(i)
              @Resources << budgetresource_tmp
            end
          end
        end
      end

      # CreateBudget返回参数结构体
      class CreateBudgetResponse < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p><p>创建请求提交后返回，可通过DescribeBudgets查询状态。</p>
        # @type BudgetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BudgetId, :RequestId

        def initialize(budgetid=nil, requestid=nil)
          @BudgetId = budgetid
          @RequestId = requestid
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateClsLogSet请求参数结构体
      class CreateClsLogSetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetName: 日志集的名字，不能和cls其他日志集重名。不填默认为clb_logset。
        # @type LogsetName: String
        # @param Period: 日志集的保存周期，单位：天。
        # @type Period: Integer
        # @param LogsetType: 日志集类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        # @type LogsetType: String

        attr_accessor :LogsetName, :Period, :LogsetType
        extend Gem::Deprecate
        deprecate :Period, :none, 2026, 7
        deprecate :Period=, :none, 2026, 7

        def initialize(logsetname=nil, period=nil, logsettype=nil)
          @LogsetName = logsetname
          @Period = period
          @LogsetType = logsettype
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @Period = params['Period']
          @LogsetType = params['LogsetType']
        end
      end

      # CreateClsLogSet返回参数结构体
      class CreateClsLogSetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集的 ID。
        # @type LogsetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogsetId, :RequestId

        def initialize(logsetid=nil, requestid=nil)
          @LogsetId = logsetid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIntentRouter请求参数结构体
      class CreateIntentRouterRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param RouteName: <p>路由名称，用作LiteLLM的model_name。</p><p>必须以"IntentRouter/"为前缀，后缀仅支持字母、数字、连字符和下划线，后缀长度1-128个字符。</p>
        # @type RouteName: String
        # @param Tiers: <p>Tier配置列表。</p><p>每个Tier至少包含一个模型，模型名称必须是已关联到该实例的模型。</p>
        # @type Tiers: Array
        # @param RouterDescribe: <p>意图路由描述。</p>
        # @type RouterDescribe: String

        attr_accessor :ModelRouterId, :RouteName, :Tiers, :RouterDescribe

        def initialize(modelrouterid=nil, routename=nil, tiers=nil, routerdescribe=nil)
          @ModelRouterId = modelrouterid
          @RouteName = routename
          @Tiers = tiers
          @RouterDescribe = routerdescribe
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @RouteName = params['RouteName']
          unless params['Tiers'].nil?
            @Tiers = []
            params['Tiers'].each do |i|
              tieritem_tmp = TierItem.new
              tieritem_tmp.deserialize(i)
              @Tiers << tieritem_tmp
            end
          end
          @RouterDescribe = params['RouterDescribe']
        end
      end

      # CreateIntentRouter返回参数结构体
      class CreateIntentRouterResponse < TencentCloud::Common::AbstractModel
        # @param IntentRouterId: <p>创建的意图路由ID（ir-xxx格式）。</p>
        # @type IntentRouterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntentRouterId, :RequestId

        def initialize(intentrouterid=nil, requestid=nil)
          @IntentRouterId = intentrouterid
          @RequestId = requestid
        end

        def deserialize(params)
          @IntentRouterId = params['IntentRouterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateKey请求参数结构体
      class CreateKeyRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param KeyName: <p>Key名称</p>
        # @type KeyName: String
        # @param RateLimitConfig: <p>限速配置</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForKey`
        # @param BudgetId: <p>关联的积分预算ID</p>
        # @type BudgetId: String
        # @param UserGroupId: <p>需要关联的用户组ID</p>
        # @type UserGroupId: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :ModelRouterId, :KeyName, :RateLimitConfig, :BudgetId, :UserGroupId, :Tags

        def initialize(modelrouterid=nil, keyname=nil, ratelimitconfig=nil, budgetid=nil, usergroupid=nil, tags=nil)
          @ModelRouterId = modelrouterid
          @KeyName = keyname
          @RateLimitConfig = ratelimitconfig
          @BudgetId = budgetid
          @UserGroupId = usergroupid
          @Tags = tags
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @KeyName = params['KeyName']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForKey.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          @BudgetId = params['BudgetId']
          @UserGroupId = params['UserGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateKey返回参数结构体
      class CreateKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: <p>Key的ID</p>
        # @type KeyId: String
        # @param Key: <p>返回的真实Key</p>
        # @type Key: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Key, :RequestId

        def initialize(keyid=nil, key=nil, requestid=nil)
          @KeyId = keyid
          @Key = key
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Key = params['Key']
          @RequestId = params['RequestId']
        end
      end

      # CreateKeys请求参数结构体
      class CreateKeysRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param BudgetId: <p>需要绑定的预算信息，所有Key共用</p>
        # @type BudgetId: String
        # @param Keys: <p>Key列表</p>
        # @type Keys: Array
        # @param Mode: <p>批量创建Key的模式</p><p>枚举值：</p><ul><li>Generate： 平台生成Key</li><li>Import： 导入自带Key</li></ul><p>默认值：Generate</p>
        # @type Mode: String
        # @param RateLimitConfig: <p>限速信息，所有Key共用</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForKey`
        # @param Tags: <p>标签。所有Key都会绑定该标签。</p>
        # @type Tags: Array
        # @param UserGroupId: <p>需要关联的用户组ID</p>
        # @type UserGroupId: String

        attr_accessor :ModelRouterId, :BudgetId, :Keys, :Mode, :RateLimitConfig, :Tags, :UserGroupId

        def initialize(modelrouterid=nil, budgetid=nil, keys=nil, mode=nil, ratelimitconfig=nil, tags=nil, usergroupid=nil)
          @ModelRouterId = modelrouterid
          @BudgetId = budgetid
          @Keys = keys
          @Mode = mode
          @RateLimitConfig = ratelimitconfig
          @Tags = tags
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @BudgetId = params['BudgetId']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              inputkeyinfo_tmp = InputKeyInfo.new
              inputkeyinfo_tmp.deserialize(i)
              @Keys << inputkeyinfo_tmp
            end
          end
          @Mode = params['Mode']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForKey.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @UserGroupId = params['UserGroupId']
        end
      end

      # CreateKeys返回参数结构体
      class CreateKeysResponse < TencentCloud::Common::AbstractModel
        # @param CreatedKeys: <p>创建的Key的信息</p>
        # @type CreatedKeys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreatedKeys, :RequestId

        def initialize(createdkeys=nil, requestid=nil)
          @CreatedKeys = createdkeys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CreatedKeys'].nil?
            @CreatedKeys = []
            params['CreatedKeys'].each do |i|
              createdkey_tmp = CreatedKey.new
              createdkey_tmp.deserialize(i)
              @CreatedKeys << createdkey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateListener请求参数结构体
      class CreateListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: <p>负载均衡实例 ID，可以通过 <a href="https://cloud.tencent.com/document/product/214/30685">DescribeLoadBalancers</a> 接口获取。</p>
        # @type LoadBalancerId: String
        # @param Ports: <p>要将监听器创建到哪些端口，每个端口对应一个新的监听器。<br>端口范围：1~65535</p>
        # @type Ports: Array
        # @param Protocol: <p>监听器协议： TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。</p>
        # @type Protocol: String
        # @param ListenerNames: <p>要创建的监听器名称列表，名称与Ports数组按序一一对应，如不需立即命名，则无需提供此参数。命名规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。</p>
        # @type ListenerNames: Array
        # @param HealthCheck: <p>健康检查相关参数，此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。</p>
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: <p>证书相关信息。参数限制如下：</p><li>此参数仅适用于TCP_SSL监听器和未开启SNI特性的HTTPS监听器。</li><li>创建TCP_SSL监听器和未开启SNI特性的HTTPS监听器时，此参数和参数MultiCertInfo至少需要传一个， 但不能同时传入。</li>
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param SessionExpireTime: <p>会话保持时间，单位：秒。可选值：30~3600，默认为0，默认不开启。此参数仅适用于TCP/UDP监听器。</p>
        # @type SessionExpireTime: Integer
        # @param Scheduler: <p>监听器转发的方式。可选值：WRR（按权重轮询）、LEAST_CONN（按最小连接数）<br>默认为 WRR。此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。</p>
        # @type Scheduler: String
        # @param SniSwitch: <p>是否开启SNI特性，此参数仅适用于HTTPS监听器。0表示未开启，1表示开启。</p>
        # @type SniSwitch: Integer
        # @param TargetType: <p>后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。此参数仅适用于TCP/UDP监听器。七层监听器应在转发规则中设置。</p>
        # @type TargetType: String
        # @param SessionType: <p>会话保持类型。不传或传NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。此参数仅适用于TCP/UDP监听器。七层监听器应在转发规则中设置。（若选择QUIC_CID，则Protocol必须为UDP，Scheduler必须为WRR，同时只支持ipv4）</p>
        # @type SessionType: String
        # @param KeepaliveEnable: <p>是否开启长连接，此参数仅适用于HTTP/HTTPS监听器，0:关闭；1:开启， 默认关闭。<br>若后端服务对连接数上限有限制，则建议谨慎开启。此功能目前处于内测中，如需使用，请提交 <a href="https://cloud.tencent.com/apply/p/tsodp6qm21">内测申请</a>。</p>
        # @type KeepaliveEnable: Integer
        # @param EndPort: <p>创建端口段监听器时必须传入此参数，用以标识结束端口。同时，入参Ports只允许传入一个成员，用以标识开始端口。【如果您需要体验端口段功能，请通过 <a href="https://console.cloud.tencent.com/workorder/category">工单申请</a>】。</p>
        # @type EndPort: Integer
        # @param DeregisterTargetRst: <p>重新调度功能，解绑后端服务开关，打开此开关，当解绑后端服务时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type DeregisterTargetRst: Boolean
        # @param MultiCertInfo: <p>证书信息，支持同时传入不同算法类型的多本服务端证书，参数限制如下：</p><li>此参数仅适用于TCP_SSL监听器和未开启SNI特性的HTTPS监听器。</li><li>创建TCP_SSL监听器和未开启SNI特性的HTTPS监听器时，此参数和参数Certificate至少需要传一个， 但不能同时传入。</li>
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`
        # @param MaxConn: <p>监听器最大连接数，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。基础网络实例不支持该参数。</p>
        # @type MaxConn: Integer
        # @param MaxCps: <p>监听器最大新增连接数，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。基础网络实例不支持该参数。</p>
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: <p>空闲连接超时时间，此参数仅适用于TCP/UDP监听器，单位：秒。默认值：TCP监听器默认值为900s，UDP监听器默认值为300s。取值范围：共享型实例和独占型实例支持：10-900，性能容量型实例支持：10-1980。如需设置超过取值范围的值请通过 <a href="https://console.cloud.tencent.com/workorder/category">工单申请</a>。</p><p>取值范围：[10, 1980]</p><p>单位：秒</p><p>默认值：900</p><p>TCP监听器默认值为900s，UDP监听器默认值为300s。取值范围：共享型实例和独占型实例支持：10-900，性能容量型实例支持：10-1980。</p>
        # @type IdleConnectTimeout: Integer
        # @param ProxyProtocol: <p>TCP_SSL和QUIC是否支持PP</p>
        # @type ProxyProtocol: Boolean
        # @param SnatEnable: <p>是否开启SNAT（源IP替换），True（开启）、False（关闭）。默认为关闭。注意：SnatEnable开启时会替换客户端源IP，此时<code>透传客户端源IP</code>选项关闭，反之亦然。</p>
        # @type SnatEnable: Boolean
        # @param FullEndPorts: <p>全端口段监听器的结束端口，端口范围：2 - 65535</p>
        # @type FullEndPorts: Array
        # @param H2cSwitch: <p>内网 HTTP 监听器开启 h2c 开关。<br>True（开启）、False（关闭）。默认为关闭。<br>开启后，监听器仅支持创建后端转发类型为 GRPC 或 GRPCS 的七层规则；创建规则时需在 Rules.N.ForwardType 中显式传入 GRPC 或 GRPCS。</p>
        # @type H2cSwitch: Boolean
        # @param SslCloseSwitch: <p>控制 TCP_SSL 类型的监听器是否移除 SSL 加密层。开启后，监听器将作为普通 TCP 协议运行。 可选值：</p><ul><li>True： 关闭 SSL 功能（协议降级为纯文本 TCP）。</li><li>False（默认）： 保持 SSL 功能开启。</li></ul>
        # @type SslCloseSwitch: Boolean
        # @param DataCompressMode: <p>数据压缩模式。可选值：transparent（透传模式）、compatibility（兼容模式）</p>
        # @type DataCompressMode: String
        # @param RescheduleTargetZeroWeight: <p>重新调度功能，权重调为0开关，打开此开关，后端服务器权重调为0时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleTargetZeroWeight: Boolean
        # @param RescheduleUnhealthy: <p>重新调度功能，健康检查异常开关，打开此开关，后端服务器健康检查异常时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleUnhealthy: Boolean
        # @param RescheduleExpandTarget: <p>重新调度功能，扩容后端服务开关，打开此开关，后端服务器增加或者减少时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleExpandTarget: Boolean
        # @param RescheduleStartTime: <p>重新调度触发开始时间，取值0~3600s。仅TCP/UDP监听器支持。</p>
        # @type RescheduleStartTime: Integer
        # @param RescheduleInterval: <p>重新调度触发持续时间，取值0~3600s。仅TCP/UDP监听器支持。</p>
        # @type RescheduleInterval: Integer

        attr_accessor :LoadBalancerId, :Ports, :Protocol, :ListenerNames, :HealthCheck, :Certificate, :SessionExpireTime, :Scheduler, :SniSwitch, :TargetType, :SessionType, :KeepaliveEnable, :EndPort, :DeregisterTargetRst, :MultiCertInfo, :MaxConn, :MaxCps, :IdleConnectTimeout, :ProxyProtocol, :SnatEnable, :FullEndPorts, :H2cSwitch, :SslCloseSwitch, :DataCompressMode, :RescheduleTargetZeroWeight, :RescheduleUnhealthy, :RescheduleExpandTarget, :RescheduleStartTime, :RescheduleInterval

        def initialize(loadbalancerid=nil, ports=nil, protocol=nil, listenernames=nil, healthcheck=nil, certificate=nil, sessionexpiretime=nil, scheduler=nil, sniswitch=nil, targettype=nil, sessiontype=nil, keepaliveenable=nil, endport=nil, deregistertargetrst=nil, multicertinfo=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil, proxyprotocol=nil, snatenable=nil, fullendports=nil, h2cswitch=nil, sslcloseswitch=nil, datacompressmode=nil, rescheduletargetzeroweight=nil, rescheduleunhealthy=nil, rescheduleexpandtarget=nil, reschedulestarttime=nil, rescheduleinterval=nil)
          @LoadBalancerId = loadbalancerid
          @Ports = ports
          @Protocol = protocol
          @ListenerNames = listenernames
          @HealthCheck = healthcheck
          @Certificate = certificate
          @SessionExpireTime = sessionexpiretime
          @Scheduler = scheduler
          @SniSwitch = sniswitch
          @TargetType = targettype
          @SessionType = sessiontype
          @KeepaliveEnable = keepaliveenable
          @EndPort = endport
          @DeregisterTargetRst = deregistertargetrst
          @MultiCertInfo = multicertinfo
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
          @ProxyProtocol = proxyprotocol
          @SnatEnable = snatenable
          @FullEndPorts = fullendports
          @H2cSwitch = h2cswitch
          @SslCloseSwitch = sslcloseswitch
          @DataCompressMode = datacompressmode
          @RescheduleTargetZeroWeight = rescheduletargetzeroweight
          @RescheduleUnhealthy = rescheduleunhealthy
          @RescheduleExpandTarget = rescheduleexpandtarget
          @RescheduleStartTime = reschedulestarttime
          @RescheduleInterval = rescheduleinterval
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Ports = params['Ports']
          @Protocol = params['Protocol']
          @ListenerNames = params['ListenerNames']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @SessionExpireTime = params['SessionExpireTime']
          @Scheduler = params['Scheduler']
          @SniSwitch = params['SniSwitch']
          @TargetType = params['TargetType']
          @SessionType = params['SessionType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @EndPort = params['EndPort']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
          @ProxyProtocol = params['ProxyProtocol']
          @SnatEnable = params['SnatEnable']
          @FullEndPorts = params['FullEndPorts']
          @H2cSwitch = params['H2cSwitch']
          @SslCloseSwitch = params['SslCloseSwitch']
          @DataCompressMode = params['DataCompressMode']
          @RescheduleTargetZeroWeight = params['RescheduleTargetZeroWeight']
          @RescheduleUnhealthy = params['RescheduleUnhealthy']
          @RescheduleExpandTarget = params['RescheduleExpandTarget']
          @RescheduleStartTime = params['RescheduleStartTime']
          @RescheduleInterval = params['RescheduleInterval']
        end
      end

      # CreateListener返回参数结构体
      class CreateListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: <p>创建的监听器的唯一标识数组。</p>
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId

        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancer请求参数结构体
      class CreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerType: <p>负载均衡实例的网络类型：<br>OPEN：公网属性， INTERNAL：内网属性。</p>
        # @type LoadBalancerType: String
        # @param Forward: <p>负载均衡实例的类型。1：通用的负载均衡实例，目前只支持传入1。</p>
        # @type Forward: Integer
        # @param LoadBalancerName: <p>负载均衡实例的名称，只在创建一个实例的时候才会生效。规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。</p>
        # @type LoadBalancerName: String
        # @param VpcId: <p>负载均衡后端目标设备所属的网络 ID，如vpc-12345678，可以通过 <a href="https://cloud.tencent.com/document/product/215/15778">DescribeVpcs</a> 接口获取。 不填此参数则默认为DefaultVPC。创建内网负载均衡实例时，此参数必填。</p>
        # @type VpcId: String
        # @param SubnetId: <p>在私有网络内购买内网负载均衡实例的情况下，必须指定子网 ID，内网负载均衡实例的 VIP 将从这个子网中产生。<br>创建内网负载均衡实例，或者创建 IPv6FullChain 版本的负载均衡实例，此参数必填。<br>创建公网IPv4负载均衡实例时，不支持指定该参数。</p>
        # @type SubnetId: String
        # @param ProjectId: <p>负载均衡实例所属的项目 ID，默认项目 ID 为0。可以通过 <a href="https://cloud.tencent.com/document/api/651/78725">DescribeProject</a> 接口获取。不填此参数则视为默认项目。</p>
        # @type ProjectId: Integer
        # @param AddressIPVersion: <p>仅适用于公网负载均衡。IP版本，可取值：IPV4、IPV6、IPv6FullChain，不区分大小写，默认值 IPV4。说明：取值为IPV6表示为IPV6 NAT64版本；取值为IPv6FullChain，表示为IPv6版本。</p>
        # @type AddressIPVersion: String
        # @param Number: <p>创建负载均衡的个数，默认值 1。创建个数不能超过账号所能创建的最大值，默认创建最大值为20。</p>
        # @type Number: Integer
        # @param MasterZoneId: <p>仅适用于公网且IP版本为IPv4的负载均衡。设置跨可用区容灾时的主可用区ID， 可用区 ID 和名称均支持，例如 100001 或 ap-guangzhou-1<br>注：主可用区是需要承载流量的可用区，备可用区默认不承载流量，主可用区不可用时才使用备可用区。</p>
        # @type MasterZoneId: String
        # @param ZoneId: <p>仅适用于公网且IP版本为IPv4的负载均衡。可用区ID，可用区 ID 和名称均支持，指定可用区以创建负载均衡实例。如：100001 或 ap-guangzhou-1。</p>
        # @type ZoneId: String
        # @param InternetAccessible: <p>网络计费模式，其中的最大出带宽，仅对内网属性的性能容量型实例和公网属性的所有实例生效。</p>
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param VipIsp: <p>仅适用于公网负载均衡。目前仅广州、上海、南京、济南、杭州、福州、北京、石家庄、武汉、长沙、成都、重庆地域支持静态单线 IP 线路类型，如需体验，请联系商务经理申请。申请通过后，即可选择中国移动（CMCC）、中国联通（CUCC）或中国电信（CTCC）的运营商类型，网络计费模式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。 如果不指定本参数，则默认使用BGP。可通过 <a href="https://cloud.tencent.com/document/api/214/70213">DescribeResources</a>  接口查询一个地域所支持的Isp。</p>
        # @type VipIsp: String
        # @param Tags: <p>购买负载均衡的同时，给负载均衡打上标签，最大支持20个标签键值对。</p>
        # @type Tags: Array
        # @param Vip: <p>指定VIP申请负载均衡。此参数选填，不填写此参数时自动分配VIP。IPv4和IPv6类型支持此参数，IPv6 NAT64类型不支持。<br>注意：当指定VIP创建内网实例、或公网IPv6 BGP实例时，若VIP不属于指定VPC子网的网段内时，会创建失败；若VIP已被占用，也会创建失败。</p>
        # @type Vip: String
        # @param BandwidthPackageId: <p>带宽包ID，可以通过 <a href="https://cloud.tencent.com/document/api/215/19209">DescribeBandwidthPackages</a> 接口获取。指定此参数时，网络计费方式（InternetAccessible.InternetChargeType）只支持按带宽包计费（BANDWIDTH_PACKAGE），带宽包的属性即为其结算方式。非上移用户购买的 IPv6 负载均衡实例，且运营商类型非 BGP 时 ，不支持指定具体带宽包id。</p>
        # @type BandwidthPackageId: String
        # @param ExclusiveCluster: <p>独占型实例信息。若创建独占型的内网负载均衡实例，则此参数必填。</p>
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param SlaType: <p>性能容量型规格。</p><ul><li>若需要创建性能容量型实例，则此参数必填，取值范围：<ul><li> clb.c2.medium：标准型规格 </li><li> clb.c3.small：高阶型1规格 </li><li> clb.c3.medium：高阶型2规格 </li><li> clb.c4.small：超强型1规格 </li><li> clb.c4.medium：超强型2规格 </li><li> clb.c4.large：超强型3规格 </li><li> clb.c4.xlarge：超强型4规格 </li></ul></li><li>中国站用户若需要创建共享型实例，则无需填写此参数。国际站用户不传该参数默认购买的是标准型实例。</li></ul>如需了解规格详情，请参见[实例规格对比](https://cloud.tencent.com/document/product/214/84689)。
        # @type SlaType: String
        # @param ClusterIds: <p>集群ID，集群标识，在需要配置公有云独占集群或本地专有集群时使用。公有云独占集群申请请<a href="https://console.cloud.tencent.com/workorder/category">提交工单</a>，本地专有集群请参考<a href="https://cloud.tencent.com/document/product/1346">本地专有集群</a>描述。</p>
        # @type ClusterIds: Array
        # @param ClientToken: <p>用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。</p>
        # @type ClientToken: String
        # @param SnatPro: <p>是否支持绑定跨地域/跨Vpc绑定IP的功能。</p>
        # @type SnatPro: Boolean
        # @param SnatIps: <p>开启绑定跨地域/跨Vpc绑定IP的功能后，创建SnatIp。</p>
        # @type SnatIps: Array
        # @param ClusterTag: <p>Stgw独占集群的标签。</p>
        # @type ClusterTag: String
        # @param SlaveZoneId: <p>仅适用于公网且IP版本为IPv4的负载均衡。设置跨可用区容灾时的备可用区ID，可用区 ID 和名称均支持，例如 100001 或 ap-guangzhou-1<br>注：备可用区是主可用区故障后，需要承载流量的可用区。可通过 <a href="https://cloud.tencent.com/document/api/214/70213">DescribeResources</a> 接口查询一个地域的主/备可用区的列表。【如果您需要体验该功能，请通过 <a href="https://console.cloud.tencent.com/workorder/category">工单申请</a>】</p>
        # @type SlaveZoneId: String
        # @param EipAddressId: <p>EIP 的唯一 ID，可以通过 <a href="https://cloud.tencent.com/document/product/215/16702">DescribeAddresses</a> 接口查询。形如：eip-qhx8udkc，仅适用于内网负载均衡绑定EIP。</p>
        # @type EipAddressId: String
        # @param LoadBalancerPassToTarget: <p>Target是否放通来自CLB的流量。开启放通（true）：只验证CLB上的安全组；不开启放通（false）：需同时验证CLB和后端实例上的安全组。IPv6 CLB安全组默认放通，不需要传此参数。</p>
        # @type LoadBalancerPassToTarget: Boolean
        # @param DynamicVip: <p>创建域名化负载均衡。</p>
        # @type DynamicVip: Boolean
        # @param Egress: <p>网络出口</p>
        # @type Egress: String
        # @param LBChargePrepaid: <p>负载均衡实例的预付费相关属性</p>
        # @type LBChargePrepaid: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param LBChargeType: <p>负载均衡实例计费类型，取值：POSTPAID_BY_HOUR，PREPAID，默认是POSTPAID_BY_HOUR。</p><p>枚举值：</p><ul><li>POSTPAID_BY_HOUR： 按量计费</li><li>PREPAID： 包年包月</li></ul>
        # @type LBChargeType: String
        # @param AccessLogTopicId: <p>七层访问日志主题ID</p>
        # @type AccessLogTopicId: String
        # @param AdvancedRoute: <p>是否开启七层高级路由</p>
        # @type AdvancedRoute: Boolean
        # @param AvailableZoneAffinityInfo: <p>可用区亲和信息</p>
        # @type AvailableZoneAffinityInfo: :class:`Tencentcloud::Clb.v20180317.models.AvailableZoneAffinityInfo`

        attr_accessor :LoadBalancerType, :Forward, :LoadBalancerName, :VpcId, :SubnetId, :ProjectId, :AddressIPVersion, :Number, :MasterZoneId, :ZoneId, :InternetAccessible, :VipIsp, :Tags, :Vip, :BandwidthPackageId, :ExclusiveCluster, :SlaType, :ClusterIds, :ClientToken, :SnatPro, :SnatIps, :ClusterTag, :SlaveZoneId, :EipAddressId, :LoadBalancerPassToTarget, :DynamicVip, :Egress, :LBChargePrepaid, :LBChargeType, :AccessLogTopicId, :AdvancedRoute, :AvailableZoneAffinityInfo

        def initialize(loadbalancertype=nil, forward=nil, loadbalancername=nil, vpcid=nil, subnetid=nil, projectid=nil, addressipversion=nil, number=nil, masterzoneid=nil, zoneid=nil, internetaccessible=nil, vipisp=nil, tags=nil, vip=nil, bandwidthpackageid=nil, exclusivecluster=nil, slatype=nil, clusterids=nil, clienttoken=nil, snatpro=nil, snatips=nil, clustertag=nil, slavezoneid=nil, eipaddressid=nil, loadbalancerpasstotarget=nil, dynamicvip=nil, egress=nil, lbchargeprepaid=nil, lbchargetype=nil, accesslogtopicid=nil, advancedroute=nil, availablezoneaffinityinfo=nil)
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @LoadBalancerName = loadbalancername
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @AddressIPVersion = addressipversion
          @Number = number
          @MasterZoneId = masterzoneid
          @ZoneId = zoneid
          @InternetAccessible = internetaccessible
          @VipIsp = vipisp
          @Tags = tags
          @Vip = vip
          @BandwidthPackageId = bandwidthpackageid
          @ExclusiveCluster = exclusivecluster
          @SlaType = slatype
          @ClusterIds = clusterids
          @ClientToken = clienttoken
          @SnatPro = snatpro
          @SnatIps = snatips
          @ClusterTag = clustertag
          @SlaveZoneId = slavezoneid
          @EipAddressId = eipaddressid
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @DynamicVip = dynamicvip
          @Egress = egress
          @LBChargePrepaid = lbchargeprepaid
          @LBChargeType = lbchargetype
          @AccessLogTopicId = accesslogtopicid
          @AdvancedRoute = advancedroute
          @AvailableZoneAffinityInfo = availablezoneaffinityinfo
        end

        def deserialize(params)
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @LoadBalancerName = params['LoadBalancerName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @AddressIPVersion = params['AddressIPVersion']
          @Number = params['Number']
          @MasterZoneId = params['MasterZoneId']
          @ZoneId = params['ZoneId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @VipIsp = params['VipIsp']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Vip = params['Vip']
          @BandwidthPackageId = params['BandwidthPackageId']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @SlaType = params['SlaType']
          @ClusterIds = params['ClusterIds']
          @ClientToken = params['ClientToken']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @ClusterTag = params['ClusterTag']
          @SlaveZoneId = params['SlaveZoneId']
          @EipAddressId = params['EipAddressId']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @DynamicVip = params['DynamicVip']
          @Egress = params['Egress']
          unless params['LBChargePrepaid'].nil?
            @LBChargePrepaid = LBChargePrepaid.new
            @LBChargePrepaid.deserialize(params['LBChargePrepaid'])
          end
          @LBChargeType = params['LBChargeType']
          @AccessLogTopicId = params['AccessLogTopicId']
          @AdvancedRoute = params['AdvancedRoute']
          unless params['AvailableZoneAffinityInfo'].nil?
            @AvailableZoneAffinityInfo = AvailableZoneAffinityInfo.new
            @AvailableZoneAffinityInfo.deserialize(params['AvailableZoneAffinityInfo'])
          end
        end
      end

      # CreateLoadBalancer返回参数结构体
      class CreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: <p>由负载均衡实例唯一 ID 组成的数组。<br>存在某些场景，如创建出现延迟时，此字段可能返回为空；此时可以根据接口返回的RequestId或DealName参数，通过DescribeTaskStatus接口查询创建的资源ID。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param DealName: <p>订单号。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerIds, :DealName, :RequestId

        def initialize(loadbalancerids=nil, dealname=nil, requestid=nil)
          @LoadBalancerIds = loadbalancerids
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancerSnatIps请求参数结构体
      class CreateLoadBalancerSnatIpsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡唯一性ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。例如：lb-12345678。
        # @type LoadBalancerId: String
        # @param SnatIps: 添加的SnatIp信息，可指定IP申请，或者指定子网自动申请。可以通过 [DescribeSubnets](https://cloud.tencent.com/document/api/215/15784) 查询获取，单个CLB实例可申请的默认上限为10个。
        # @type SnatIps: Array
        # @param Number: 添加的SnatIp的个数，可与SnatIps一起使用，但若指定IP时，则不能指定创建的SnatIp个数。默认值为1，数量上限与用户配置有关，默认上限为10。
        # @type Number: Integer

        attr_accessor :LoadBalancerId, :SnatIps, :Number

        def initialize(loadbalancerid=nil, snatips=nil, number=nil)
          @LoadBalancerId = loadbalancerid
          @SnatIps = snatips
          @Number = number
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @Number = params['Number']
        end
      end

      # CreateLoadBalancerSnatIps返回参数结构体
      class CreateLoadBalancerSnatIpsResponse < TencentCloud::Common::AbstractModel
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

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param AccessType: <p>接入类型：PublicBYOK/PublicCustom/PrivateCustom</p>
        # @type AccessType: String
        # @param ModelProvider: <p>模型提供商</p>
        # @type ModelProvider: String
        # @param ModelIds: <p>通用模型标识列表</p>
        # @type ModelIds: Array
        # @param Keys: <p>Key 列表</p>
        # @type Keys: Array
        # @param ServiceProviderId: <p>BYOK ID(在自定义模型时在部署网络后必须填写)</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>服务供应商(创建BYOK自定义名称)。</p>
        # @type ServiceProviderName: String
        # @param Protocol: <p>模型协议</p>
        # @type Protocol: String
        # @param ApiBase: <p>API Base URL</p>
        # @type ApiBase: String
        # @param VpcId: <p>VPC ID</p>
        # @type VpcId: String
        # @param SubnetId: <p>子网 ID</p>
        # @type SubnetId: String
        # @param HostHeader: <p>转发请求时添加的Host请求头</p>
        # @type HostHeader: String
        # @param Tags: <p>标签信息</p>
        # @type Tags: Array
        # @param VerifySSL: <p>是否校验服务提供商的SSL证书</p>
        # @type VerifySSL: Boolean

        attr_accessor :AccessType, :ModelProvider, :ModelIds, :Keys, :ServiceProviderId, :ServiceProviderName, :Protocol, :ApiBase, :VpcId, :SubnetId, :HostHeader, :Tags, :VerifySSL

        def initialize(accesstype=nil, modelprovider=nil, modelids=nil, keys=nil, serviceproviderid=nil, serviceprovidername=nil, protocol=nil, apibase=nil, vpcid=nil, subnetid=nil, hostheader=nil, tags=nil, verifyssl=nil)
          @AccessType = accesstype
          @ModelProvider = modelprovider
          @ModelIds = modelids
          @Keys = keys
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
          @Protocol = protocol
          @ApiBase = apibase
          @VpcId = vpcid
          @SubnetId = subnetid
          @HostHeader = hostheader
          @Tags = tags
          @VerifySSL = verifyssl
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @ModelProvider = params['ModelProvider']
          unless params['ModelIds'].nil?
            @ModelIds = []
            params['ModelIds'].each do |i|
              modelitem_tmp = ModelItem.new
              modelitem_tmp.deserialize(i)
              @ModelIds << modelitem_tmp
            end
          end
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              keyitem_tmp = KeyItem.new
              keyitem_tmp.deserialize(i)
              @Keys << keyitem_tmp
            end
          end
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
          @Protocol = params['Protocol']
          @ApiBase = params['ApiBase']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @HostHeader = params['HostHeader']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VerifySSL = params['VerifySSL']
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>服务供应商ID</p>
        # @type ServiceProviderId: String
        # @param KeyIds: <p>生成的 Key ID 列表</p>
        # @type KeyIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceProviderId, :KeyIds, :RequestId

        def initialize(serviceproviderid=nil, keyids=nil, requestid=nil)
          @ServiceProviderId = serviceproviderid
          @KeyIds = keyids
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @KeyIds = params['KeyIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateModelRouter请求参数结构体
      class CreateModelRouterRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterType: <p>模型路由类型</p><p>枚举值：</p><ul><li>Shared： 共享型</li><li>Enterprise： 企业级</li></ul>
        # @type ModelRouterType: String
        # @param BudgetId: <p>关联的积分预算ID</p>
        # @type BudgetId: String
        # @param CertId: <p>证书ID</p><p>入参限制：当Schema为HTTPS时，该参数必传</p>
        # @type CertId: String
        # @param ClusterInfo: <p>集群信息</p>
        # @type ClusterInfo: :class:`Tencentcloud::Clb.v20180317.models.ClusterInfo`
        # @param ModelRouterName: <p>模型路由实例名称</p><p>默认值：-</p>
        # @type ModelRouterName: String
        # @param NetworkType: <p>网络类型</p><p>枚举值：</p><ul><li>Internet： 公网</li><li>Intranet： 内网</li></ul>
        # @type NetworkType: String
        # @param Port: <p>模型路由的监听端口</p><p>取值范围：[1, 65535]</p>
        # @type Port: Integer
        # @param RateLimitConfig: <p>限速配置</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForModelRouter`
        # @param RouterSetting: <p>路由配置</p>
        # @type RouterSetting: :class:`Tencentcloud::Clb.v20180317.models.RouterSettingWithoutFallBack`
        # @param Schema: <p>模型路由实例的网络协议</p><p>枚举值：</p><ul><li>HTTP： HTTP协议</li><li>HTTPS： HTTPS协议</li></ul>
        # @type Schema: String
        # @param SubnetId: <p>模型路由实例所属子网的ID</p>
        # @type SubnetId: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param VpcId: <p>模型路由实例所属VPC的ID</p>
        # @type VpcId: String

        attr_accessor :ModelRouterType, :BudgetId, :CertId, :ClusterInfo, :ModelRouterName, :NetworkType, :Port, :RateLimitConfig, :RouterSetting, :Schema, :SubnetId, :Tags, :VpcId

        def initialize(modelroutertype=nil, budgetid=nil, certid=nil, clusterinfo=nil, modelroutername=nil, networktype=nil, port=nil, ratelimitconfig=nil, routersetting=nil, schema=nil, subnetid=nil, tags=nil, vpcid=nil)
          @ModelRouterType = modelroutertype
          @BudgetId = budgetid
          @CertId = certid
          @ClusterInfo = clusterinfo
          @ModelRouterName = modelroutername
          @NetworkType = networktype
          @Port = port
          @RateLimitConfig = ratelimitconfig
          @RouterSetting = routersetting
          @Schema = schema
          @SubnetId = subnetid
          @Tags = tags
          @VpcId = vpcid
        end

        def deserialize(params)
          @ModelRouterType = params['ModelRouterType']
          @BudgetId = params['BudgetId']
          @CertId = params['CertId']
          unless params['ClusterInfo'].nil?
            @ClusterInfo = ClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          @ModelRouterName = params['ModelRouterName']
          @NetworkType = params['NetworkType']
          @Port = params['Port']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForModelRouter.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['RouterSetting'].nil?
            @RouterSetting = RouterSettingWithoutFallBack.new
            @RouterSetting.deserialize(params['RouterSetting'])
          end
          @Schema = params['Schema']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VpcId = params['VpcId']
        end
      end

      # CreateModelRouterResourcePackage请求参数结构体
      class CreateModelRouterResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageAmount: <p>模型路由资源包容量</p><p>取值范围：[1000, 10000000]</p><p>单次购买的模型路由资源包容量下限为1000，上限为10000000</p>
        # @type ModelRouterResourcePackageAmount: Integer
        # @param AutoPurchaseFlag: <p>是否自动续订。</p><p>0:不自动续订, 1:用尽到期续订</p>
        # @type AutoPurchaseFlag: Integer
        # @param AutoVoucher: <p>该笔订单是否自动选择代金券</p><p>默认值：false（不自动选择代金券）</p><p>true时会为本笔订单自动匹配满足条件、最优惠的代金券</p>
        # @type AutoVoucher: Boolean

        attr_accessor :ModelRouterResourcePackageAmount, :AutoPurchaseFlag, :AutoVoucher

        def initialize(modelrouterresourcepackageamount=nil, autopurchaseflag=nil, autovoucher=nil)
          @ModelRouterResourcePackageAmount = modelrouterresourcepackageamount
          @AutoPurchaseFlag = autopurchaseflag
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @ModelRouterResourcePackageAmount = params['ModelRouterResourcePackageAmount']
          @AutoPurchaseFlag = params['AutoPurchaseFlag']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # CreateModelRouterResourcePackage返回参数结构体
      class CreateModelRouterResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageIds: <p>模型路由资源包Id</p>
        # @type ModelRouterResourcePackageIds: Array
        # @param DealName: <p>订单号</p>
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterResourcePackageIds, :DealName, :RequestId

        def initialize(modelrouterresourcepackageids=nil, dealname=nil, requestid=nil)
          @ModelRouterResourcePackageIds = modelrouterresourcepackageids
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelRouterResourcePackageIds = params['ModelRouterResourcePackageIds']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateModelRouter返回参数结构体
      class CreateModelRouterResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterId, :RequestId

        def initialize(modelrouterid=nil, requestid=nil)
          @ModelRouterId = modelrouterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口获取
        # @type LoadBalancerId: String
        # @param ListenerId: 监听器 ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口获取
        # @type ListenerId: String
        # @param Rules: 新建转发规则的信息。
        # @type Rules: Array

        attr_accessor :LoadBalancerId, :ListenerId, :Rules

        def initialize(loadbalancerid=nil, listenerid=nil, rules=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Rules = rules
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinput_tmp = RuleInput.new
              ruleinput_tmp.deserialize(i)
              @Rules << ruleinput_tmp
            end
          end
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param LocationIds: 创建的转发规则的唯一标识数组。
        # @type LocationIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LocationIds, :RequestId

        def initialize(locationids=nil, requestid=nil)
          @LocationIds = locationids
          @RequestId = requestid
        end

        def deserialize(params)
          @LocationIds = params['LocationIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateTargetGroup请求参数结构体
      class CreateTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupName: <p>目标组名称。命名规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。</p>
        # @type TargetGroupName: String
        # @param VpcId: <p>目标组的vpcId属性，不填则使用默认vpc。</p>
        # @type VpcId: String
        # @param Port: <p>目标组的默认端口， 后续添加服务器时可使用该默认端口。全监听目标组不支持此参数，非全监听目标组Port和TargetGroupInstances.N中的port二者必填其一。</p>
        # @type Port: Integer
        # @param TargetGroupInstances: <p>目标组绑定的后端服务器，单次最多支持50个。</p>
        # @type TargetGroupInstances: Array
        # @param Type: <p>目标组类型，当前支持v1(旧版目标组), v2(新版目标组), 默认为v1(旧版目标组)。</p>
        # @type Type: String
        # @param Protocol: <p>目标组后端转发协议。v2新版目标组该项必填。目前支持TCP、UDP、HTTP、HTTPS、GRPC。</p>
        # @type Protocol: String
        # @param HealthCheck: <p>健康检查。</p>
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.TargetGroupHealthCheck`
        # @param ScheduleAlgorithm: <p>调度算法，仅V2新版目标组，且后端转发协议为(HTTP|HTTPS|GRPC)时该参数有效。可选值：</p><li>WRR:按权重轮询。</li><li>LEAST_CONN:最小连接数。</li><li>IP_HASH:按IP哈希。</li><li>默认为 WRR。</li>
        # @type ScheduleAlgorithm: String
        # @param Tags: <p>标签。</p>
        # @type Tags: Array
        # @param Weight: <p>后端服务默认权重, 其中：</p><ul><li>取值范围[0, 100]</li><li>设置该值后，添加后端服务到目标组时， 若后端服务不单独设置权重， 则使用这里的默认权重。 </li><li>v1 目标组类型不支持设置 Weight 参数。</li></ul>
        # @type Weight: Integer
        # @param FullListenSwitch: <p>全监听目标组标识，true表示是全监听目标组，false表示不是全监听目标组。仅V2新版类型目标组支持该参数。</p>
        # @type FullListenSwitch: Boolean
        # @param KeepaliveEnable: <p>是否开启长连接，此参数仅适用于HTTP/HTTPS目标组，0:关闭；1:开启， 默认关闭。</p>
        # @type KeepaliveEnable: Boolean
        # @param SessionExpireTime: <p>会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。仅V2新版且后端转发协议为HTTP/HTTPS/GRPC目标组支持该参数。</p>
        # @type SessionExpireTime: Integer
        # @param IpVersion: <p>IP版本类型。</p>
        # @type IpVersion: String
        # @param SnatEnable: <p>是否开启SNAT（源IP替换），True（开启）、False（关闭）。默认为关闭。注意：SnatEnable开启时会替换客户端源IP，此时<code>透传客户端源IP</code>选项关闭，反之亦然。</p>
        # @type SnatEnable: Boolean

        attr_accessor :TargetGroupName, :VpcId, :Port, :TargetGroupInstances, :Type, :Protocol, :HealthCheck, :ScheduleAlgorithm, :Tags, :Weight, :FullListenSwitch, :KeepaliveEnable, :SessionExpireTime, :IpVersion, :SnatEnable

        def initialize(targetgroupname=nil, vpcid=nil, port=nil, targetgroupinstances=nil, type=nil, protocol=nil, healthcheck=nil, schedulealgorithm=nil, tags=nil, weight=nil, fulllistenswitch=nil, keepaliveenable=nil, sessionexpiretime=nil, ipversion=nil, snatenable=nil)
          @TargetGroupName = targetgroupname
          @VpcId = vpcid
          @Port = port
          @TargetGroupInstances = targetgroupinstances
          @Type = type
          @Protocol = protocol
          @HealthCheck = healthcheck
          @ScheduleAlgorithm = schedulealgorithm
          @Tags = tags
          @Weight = weight
          @FullListenSwitch = fulllistenswitch
          @KeepaliveEnable = keepaliveenable
          @SessionExpireTime = sessionexpiretime
          @IpVersion = ipversion
          @SnatEnable = snatenable
        end

        def deserialize(params)
          @TargetGroupName = params['TargetGroupName']
          @VpcId = params['VpcId']
          @Port = params['Port']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
          @Type = params['Type']
          @Protocol = params['Protocol']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @ScheduleAlgorithm = params['ScheduleAlgorithm']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Weight = params['Weight']
          @FullListenSwitch = params['FullListenSwitch']
          @KeepaliveEnable = params['KeepaliveEnable']
          @SessionExpireTime = params['SessionExpireTime']
          @IpVersion = params['IpVersion']
          @SnatEnable = params['SnatEnable']
        end
      end

      # CreateTargetGroup返回参数结构体
      class CreateTargetGroupResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: <p>创建目标组后生成的id</p>
        # @type TargetGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetGroupId, :RequestId

        def initialize(targetgroupid=nil, requestid=nil)
          @TargetGroupId = targetgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 日志主题的名称。
        # @type TopicName: String
        # @param PartitionCount: 主题分区Partition的数量，不传参默认创建1个，最大创建允许10个，分裂/合并操作会改变分区数量，整体上限50个。
        # @type PartitionCount: Integer
        # @param TopicType: 日志类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        # @type TopicType: String
        # @param Period: 存储时间，单位天，默认为 30。
        # - 日志接入标准存储时，支持1至3600天，值为3640时代表永久保存。
        # - 日志接入低频存储时，支持7至3600天，值为3640时代表永久保存。
        # @type Period: Integer
        # @param StorageType: 日志主题的存储类型，可选值 HOT（标准存储），COLD（低频存储）；默认为HOT。
        # @type StorageType: String

        attr_accessor :TopicName, :PartitionCount, :TopicType, :Period, :StorageType

        def initialize(topicname=nil, partitioncount=nil, topictype=nil, period=nil, storagetype=nil)
          @TopicName = topicname
          @PartitionCount = partitioncount
          @TopicType = topictype
          @Period = period
          @StorageType = storagetype
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @PartitionCount = params['PartitionCount']
          @TopicType = params['TopicType']
          @Period = params['Period']
          @StorageType = params['StorageType']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题的 ID。
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateUserGroup请求参数结构体
      class CreateUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。用户组将创建在该实例下。</p>
        # @type ModelRouterId: String
        # @param UserGroupName: <p>用户组名称。必填。同一模型路由实例下名称唯一，长度不超过255个字符。</p>
        # @type UserGroupName: String
        # @param BudgetId: <p>建组时直接关联的预算 ID（须为已存在的 Budget）。关联后由该 Budget 统一管理本组的消费上限与限速。不传表示不关联预算，可建组后再用 AssociateBudget 关联。</p>
        # @type BudgetId: String
        # @param IntentRouters: <p>用户组意图路由白名单（ir-xxx）。每一项须为该实例已创建的意图路由名。命中意图路由名时其内部真实模型自动豁免白名单。为空表示不授权任何意图路由。</p>
        # @type IntentRouters: Array
        # @param KeyIds: <p>建组时同时绑定的已有 Key ID 列表，最多100个。每个 Key 须属于同一模型路由实例。建组与绑定为一个原子异步任务，任一 Key 失败则整组创建回滚。不传表示建空组。</p>
        # @type KeyIds: Array
        # @param Models: <p>用户组真实模型白名单。每一项须为该实例已关联的模型名。为空表示不在用户组层限制真实模型（按实例层白名单生效）。</p>
        # @type Models: Array
        # @param Tags: <p>标签列表，最多50个。</p>
        # @type Tags: Array

        attr_accessor :ModelRouterId, :UserGroupName, :BudgetId, :IntentRouters, :KeyIds, :Models, :Tags

        def initialize(modelrouterid=nil, usergroupname=nil, budgetid=nil, intentrouters=nil, keyids=nil, models=nil, tags=nil)
          @ModelRouterId = modelrouterid
          @UserGroupName = usergroupname
          @BudgetId = budgetid
          @IntentRouters = intentrouters
          @KeyIds = keyids
          @Models = models
          @Tags = tags
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @UserGroupName = params['UserGroupName']
          @BudgetId = params['BudgetId']
          @IntentRouters = params['IntentRouters']
          @KeyIds = params['KeyIds']
          @Models = params['Models']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateUserGroup返回参数结构体
      class CreateUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param UserGroupId: <p>新建用户组的ID。</p>
        # @type UserGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupId, :RequestId

        def initialize(usergroupid=nil, requestid=nil)
          @UserGroupId = usergroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 批量创建的Key信息
      class CreatedKey < TencentCloud::Common::AbstractModel
        # @param Key: <p>明文Key</p>
        # @type Key: String
        # @param KeyId: <p>Key的ID</p>
        # @type KeyId: String
        # @param KeyName: <p>Key的名称</p>
        # @type KeyName: String

        attr_accessor :Key, :KeyId, :KeyName

        def initialize(key=nil, keyid=nil, keyname=nil)
          @Key = key
          @KeyId = keyid
          @KeyName = keyname
        end

        def deserialize(params)
          @Key = params['Key']
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
        end
      end

      # Credit使用情况。该结构用于 CreditUsageSet 数组中的逐周期用量。
      class CreditUsage < TencentCloud::Common::AbstractModel
        # @param BudgetDuration: <p>Budget刷新周期。</p><p>枚举值：</p><ul><li>1d：按天刷新</li><li>7d：按周刷新</li><li>30d：按月刷新</li></ul><p>仅在 CreditUsageSet 数组元素中返回。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetDuration: String
        # @param BudgetResetAt: <p>下次刷新时间。</p><p>用户组关联Budget且Budget设置重置周期时返回；未关联Budget或未设置重置周期时为空。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetResetAt: String
        # @param Limit: <p>Credit上限。</p><p>用户组关联Budget且Budget设置最大预算时返回；未设置最大预算时为空。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Float
        # @param Used: <p>用户组已使用的Credit数量。</p>
        # @type Used: Float

        attr_accessor :BudgetDuration, :BudgetResetAt, :Limit, :Used

        def initialize(budgetduration=nil, budgetresetat=nil, limit=nil, used=nil)
          @BudgetDuration = budgetduration
          @BudgetResetAt = budgetresetat
          @Limit = limit
          @Used = used
        end

        def deserialize(params)
          @BudgetDuration = params['BudgetDuration']
          @BudgetResetAt = params['BudgetResetAt']
          @Limit = params['Limit']
          @Used = params['Used']
        end
      end

      # 跨域2.0云联网下子机和网卡信息
      class CrossTargets < TencentCloud::Common::AbstractModel
        # @param LocalVpcId: 本地私有网络ID，即负载均衡的VpcId。
        # @type LocalVpcId: String
        # @param VpcId: 子机或网卡所属的私有网络ID。
        # @type VpcId: String
        # @param IP: 子机或网卡的IP地址
        # @type IP: String
        # @param VpcName: 子机或网卡所属的私有网络名称。
        # @type VpcName: String
        # @param EniId: 子机的网卡ID。
        # @type EniId: String
        # @param InstanceId: 子机实例ID。
        # @type InstanceId: String
        # @param InstanceName: 子机实例名称。
        # @type InstanceName: String
        # @param Region: 子机或者网卡所属的地域。
        # @type Region: String

        attr_accessor :LocalVpcId, :VpcId, :IP, :VpcName, :EniId, :InstanceId, :InstanceName, :Region

        def initialize(localvpcid=nil, vpcid=nil, ip=nil, vpcname=nil, eniid=nil, instanceid=nil, instancename=nil, region=nil)
          @LocalVpcId = localvpcid
          @VpcId = vpcid
          @IP = ip
          @VpcName = vpcname
          @EniId = eniid
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
        end

        def deserialize(params)
          @LocalVpcId = params['LocalVpcId']
          @VpcId = params['VpcId']
          @IP = params['IP']
          @VpcName = params['VpcName']
          @EniId = params['EniId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
        end
      end

      # DeleteBudgets请求参数结构体
      class DeleteBudgetsRequest < TencentCloud::Common::AbstractModel
        # @param BudgetIds: <p>要删除的Budget ID列表。</p>
        # @type BudgetIds: Array

        attr_accessor :BudgetIds

        def initialize(budgetids=nil)
          @BudgetIds = budgetids
        end

        def deserialize(params)
          @BudgetIds = params['BudgetIds']
        end
      end

      # DeleteBudgets返回参数结构体
      class DeleteBudgetsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIntentRouter请求参数结构体
      class DeleteIntentRouterRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param IntentRouterId: <p>意图路由ID（ir-xxx格式）。</p>
        # @type IntentRouterId: String

        attr_accessor :ModelRouterId, :IntentRouterId

        def initialize(modelrouterid=nil, intentrouterid=nil)
          @ModelRouterId = modelrouterid
          @IntentRouterId = intentrouterid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @IntentRouterId = params['IntentRouterId']
        end
      end

      # DeleteIntentRouter返回参数结构体
      class DeleteIntentRouterResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKeys请求参数结构体
      class DeleteKeysRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param KeyIds: <p>key的ID列表</p>
        # @type KeyIds: Array

        attr_accessor :ModelRouterId, :KeyIds

        def initialize(modelrouterid=nil, keyids=nil)
          @ModelRouterId = modelrouterid
          @KeyIds = keyids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @KeyIds = params['KeyIds']
        end
      end

      # DeleteKeys返回参数结构体
      class DeleteKeysResponse < TencentCloud::Common::AbstractModel
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

      # DeleteListener请求参数结构体
      class DeleteListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 要删除的监听器ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type ListenerId: String

        attr_accessor :LoadBalancerId, :ListenerId

        def initialize(loadbalancerid=nil, listenerid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
        end
      end

      # DeleteListener返回参数结构体
      class DeleteListenerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancerListeners请求参数结构体
      class DeleteLoadBalancerListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerIds: 指定删除的监听器ID数组，最大为20个。若不填则删除负载均衡的所有监听器，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DeleteLoadBalancerListeners返回参数结构体
      class DeleteLoadBalancerListenersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancer请求参数结构体
      class DeleteLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要删除的负载均衡实例 ID 数组，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口获取，数组大小最大支持20。
        # @type LoadBalancerIds: Array
        # @param ForceDelete: 是否强制删除clb。true表示强制删除，false表示不是强制删除，需要做拦截校验。
        # 默认为false。
        # 以下几种情况会默认拦截删除操作，如果触发情况1、2但确认强制删除则需要传强制校验参数ForceDelete为true。
        # 1、删除后端绑定大于等于 20 个 RS 的实例时。
        # 2、删除后端有 RS 且 5 分钟 内“出/入带宽”峰值取大 > 10Mbps 的实例时。
        # 3、单地域内 5 分钟 内删除大于等于 30 个实例时。
        # @type ForceDelete: Boolean

        attr_accessor :LoadBalancerIds, :ForceDelete

        def initialize(loadbalancerids=nil, forcedelete=nil)
          @LoadBalancerIds = loadbalancerids
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteLoadBalancer返回参数结构体
      class DeleteLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancerSnatIps请求参数结构体
      class DeleteLoadBalancerSnatIpsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡唯一ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。例如：lb-12345678。
        # @type LoadBalancerId: String
        # @param Ips: 删除SnatIp地址数组，最大支持删除数量为20个。
        # @type Ips: Array

        attr_accessor :LoadBalancerId, :Ips

        def initialize(loadbalancerid=nil, ips=nil)
          @LoadBalancerId = loadbalancerid
          @Ips = ips
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Ips = params['Ips']
        end
      end

      # DeleteLoadBalancerSnatIps返回参数结构体
      class DeleteLoadBalancerSnatIpsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderIds: <p>服务提供商ID列表</p>
        # @type ServiceProviderIds: Array

        attr_accessor :ServiceProviderIds

        def initialize(serviceproviderids=nil)
          @ServiceProviderIds = serviceproviderids
        end

        def deserialize(params)
          @ServiceProviderIds = params['ServiceProviderIds']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModelRouters请求参数结构体
      class DeleteModelRoutersRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterIds: <p>模型路由实例ID列表</p>
        # @type ModelRouterIds: Array

        attr_accessor :ModelRouterIds

        def initialize(modelrouterids=nil)
          @ModelRouterIds = modelrouterids
        end

        def deserialize(params)
          @ModelRouterIds = params['ModelRouterIds']
        end
      end

      # DeleteModelRouters返回参数结构体
      class DeleteModelRoutersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRewrite请求参数结构体
      class DeleteRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param SourceListenerId: 源监听器ID。
        # @type SourceListenerId: String
        # @param TargetListenerId: 目标监听器ID。
        # @type TargetListenerId: String
        # @param RewriteInfos: 转发规则之间的重定向关系。
        # @type RewriteInfos: Array

        attr_accessor :LoadBalancerId, :SourceListenerId, :TargetListenerId, :RewriteInfos

        def initialize(loadbalancerid=nil, sourcelistenerid=nil, targetlistenerid=nil, rewriteinfos=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerId = sourcelistenerid
          @TargetListenerId = targetlistenerid
          @RewriteInfos = rewriteinfos
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerId = params['SourceListenerId']
          @TargetListenerId = params['TargetListenerId']
          unless params['RewriteInfos'].nil?
            @RewriteInfos = []
            params['RewriteInfos'].each do |i|
              rewritelocationmap_tmp = RewriteLocationMap.new
              rewritelocationmap_tmp.deserialize(i)
              @RewriteInfos << rewritelocationmap_tmp
            end
          end
        end
      end

      # DeleteRewrite返回参数结构体
      class DeleteRewriteResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type ListenerId: String
        # @param LocationIds: 要删除的转发规则的ID组成的数组，可以通过 [DescribeLoadBalancersDetail](https://cloud.tencent.com/document/api/214/46916) 接口查询。
        # @type LocationIds: Array
        # @param Domain: 要删除的转发规则的域名，如果是多域名，可以指定多域名列表中的任意一个，可以通过 [DescribeLoadBalancersDetail](https://cloud.tencent.com/document/api/214/46916) 接口查询。
        # @type Domain: String
        # @param Url: 要删除的转发规则的转发路径，可以通过 [DescribeLoadBalancersDetail](https://cloud.tencent.com/document/api/214/46916) 接口查询。
        # @type Url: String
        # @param NewDefaultServerDomain: 监听器下必须配置一个默认域名，当需要删除默认域名时，可以指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type NewDefaultServerDomain: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationIds, :Domain, :Url, :NewDefaultServerDomain

        def initialize(loadbalancerid=nil, listenerid=nil, locationids=nil, domain=nil, url=nil, newdefaultserverdomain=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationIds = locationids
          @Domain = domain
          @Url = url
          @NewDefaultServerDomain = newdefaultserverdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationIds = params['LocationIds']
          @Domain = params['Domain']
          @Url = params['Url']
          @NewDefaultServerDomain = params['NewDefaultServerDomain']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTargetGroups请求参数结构体
      class DeleteTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组的ID数组，单次最多支持删除20个。
        # @type TargetGroupIds: Array

        attr_accessor :TargetGroupIds

        def initialize(targetgroupids=nil)
          @TargetGroupIds = targetgroupids
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
        end
      end

      # DeleteTargetGroups返回参数结构体
      class DeleteTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserGroups请求参数结构体
      class DeleteUserGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param UserGroupIds: <p>待删除的用户组ID列表，单次1-100个。不可包含「未分组」虚拟分组 ugrp-ungrouped。组内仍有 Key 时将拒绝删除，需先将 Key 移出或迁移到其他组。</p>
        # @type UserGroupIds: Array

        attr_accessor :ModelRouterId, :UserGroupIds

        def initialize(modelrouterid=nil, usergroupids=nil)
          @ModelRouterId = modelrouterid
          @UserGroupIds = usergroupids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @UserGroupIds = params['UserGroupIds']
        end
      end

      # DeleteUserGroups返回参数结构体
      class DeleteUserGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterFunctionTargets请求参数结构体
      class DeregisterFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param FunctionTargets: 待解绑的云函数列表。
        # @type FunctionTargets: Array
        # @param LocationId: 目标转发规则的 ID，当将云函数从七层转发规则上解绑时，必须输入此参数或 Domain+Url 参数。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，若已经输入 LocationId 参数，则本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的 URL，若已经输入 LocationId 参数，则本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # DeregisterFunctionTargets返回参数结构体
      class DeregisterFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterModelsFromServiceProvider请求参数结构体
      class DeregisterModelsFromServiceProviderRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>BYOK的ID</p>
        # @type ServiceProviderId: String
        # @param ModelAliases: <p>模型别名列表</p>
        # @type ModelAliases: Array

        attr_accessor :ServiceProviderId, :ModelAliases

        def initialize(serviceproviderid=nil, modelaliases=nil)
          @ServiceProviderId = serviceproviderid
          @ModelAliases = modelaliases
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @ModelAliases = params['ModelAliases']
        end
      end

      # DeregisterModelsFromServiceProvider返回参数结构体
      class DeregisterModelsFromServiceProviderResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargetGroupInstances请求参数结构体
      class DeregisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待解绑的服务器信息，支持批量解除绑定，单次批量解除数量最多为20个。
        # 在这个接口 Port 参数为必填项。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # DeregisterTargetGroupInstances返回参数结构体
      class DeregisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargetsFromClassicalLB请求参数结构体
      class DeregisterTargetsFromClassicalLBRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param InstanceIds: 后端服务的实例ID列表。
        # @type InstanceIds: Array

        attr_accessor :LoadBalancerId, :InstanceIds

        def initialize(loadbalancerid=nil, instanceids=nil)
          @LoadBalancerId = loadbalancerid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DeregisterTargetsFromClassicalLB返回参数结构体
      class DeregisterTargetsFromClassicalLBResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargets请求参数结构体
      class DeregisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式如 lb-12345678。
        # @type LoadBalancerId: String
        # @param ListenerId: 监听器 ID，格式如 lbl-12345678。
        # @type ListenerId: String
        # @param Targets: 要解绑的后端服务列表，数组长度最大支持20。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，格式如 loc-12345678，当从七层转发规则解绑机器时，必须提供此参数或Domain+URL两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # DeregisterTargets返回参数结构体
      class DeregisterTargetsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAssociatedModelAvailability请求参数结构体
      class DescribeAssociatedModelAvailabilityRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param Models: <p>模型列表</p>
        # @type Models: Array

        attr_accessor :ModelRouterId, :Models

        def initialize(modelrouterid=nil, models=nil)
          @ModelRouterId = modelrouterid
          @Models = models
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @Models = params['Models']
        end
      end

      # DescribeAssociatedModelAvailability返回参数结构体
      class DescribeAssociatedModelAvailabilityResponse < TencentCloud::Common::AbstractModel
        # @param ModelAvailability: <p>模型可用性列表</p>
        # @type ModelAvailability: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAvailability, :RequestId

        def initialize(modelavailability=nil, requestid=nil)
          @ModelAvailability = modelavailability
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAvailability'].nil?
            @ModelAvailability = []
            params['ModelAvailability'].each do |i|
              modelavailability_tmp = ModelAvailability.new
              modelavailability_tmp.deserialize(i)
              @ModelAvailability << modelavailability_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAsyncJobs请求参数结构体
      class DescribeAsyncJobsRequest < TencentCloud::Common::AbstractModel
        # @param RequestIds: <p>请求ID列表</p>
        # @type RequestIds: Array
        # @param NextToken: <p>分页游标</p>
        # @type NextToken: String
        # @param MaxResults: <p>本次查询最大数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type MaxResults: Integer

        attr_accessor :RequestIds, :NextToken, :MaxResults

        def initialize(requestids=nil, nexttoken=nil, maxresults=nil)
          @RequestIds = requestids
          @NextToken = nexttoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @RequestIds = params['RequestIds']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
        end
      end

      # DescribeAsyncJobs返回参数结构体
      class DescribeAsyncJobsResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: <p>异步任务列表</p>
        # @type Jobs: Array
        # @param NextToken: <p>分页游标</p>
        # @type NextToken: String
        # @param MaxResults: <p>本次查询最大数量</p>
        # @type MaxResults: Integer
        # @param TotalCount: <p>本次查询总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jobs, :NextToken, :MaxResults, :TotalCount, :RequestId

        def initialize(jobs=nil, nexttoken=nil, maxresults=nil, totalcount=nil, requestid=nil)
          @Jobs = jobs
          @NextToken = nexttoken
          @MaxResults = maxresults
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jobs'].nil?
            @Jobs = []
            params['Jobs'].each do |i|
              job_tmp = Job.new
              job_tmp.deserialize(i)
              @Jobs << job_tmp
            end
          end
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockIPList请求参数结构体
      class DescribeBlockIPListRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param Offset: 数据偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回IP的最大个数，默认为 100000。
        # @type Limit: Integer

        attr_accessor :LoadBalancerId, :Offset, :Limit

        def initialize(loadbalancerid=nil, offset=nil, limit=nil)
          @LoadBalancerId = loadbalancerid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBlockIPList返回参数结构体
      class DescribeBlockIPListResponse < TencentCloud::Common::AbstractModel
        # @param BlockedIPCount: 返回的IP的数量
        # @type BlockedIPCount: Integer
        # @param ClientIPField: 获取用户真实IP的字段
        # @type ClientIPField: String
        # @param BlockedIPList: 加入了12360黑名单的IP列表
        # @type BlockedIPList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlockedIPCount, :ClientIPField, :BlockedIPList, :RequestId

        def initialize(blockedipcount=nil, clientipfield=nil, blockediplist=nil, requestid=nil)
          @BlockedIPCount = blockedipcount
          @ClientIPField = clientipfield
          @BlockedIPList = blockediplist
          @RequestId = requestid
        end

        def deserialize(params)
          @BlockedIPCount = params['BlockedIPCount']
          @ClientIPField = params['ClientIPField']
          unless params['BlockedIPList'].nil?
            @BlockedIPList = []
            params['BlockedIPList'].each do |i|
              blockedip_tmp = BlockedIP.new
              blockedip_tmp.deserialize(i)
              @BlockedIPList << blockedip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockIPTask请求参数结构体
      class DescribeBlockIPTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: ModifyBlockIPList 接口返回的异步任务的ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeBlockIPTask返回参数结构体
      class DescribeBlockIPTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 1 running，2 fail，6 succ
        # @type Status: Integer
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

      # DescribeBudgetAssociations请求参数结构体
      class DescribeBudgetAssociationsRequest < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p><p>一次只允许查询一个Budget。</p>
        # @type BudgetId: String
        # @param Limit: <p>本次查询限制的数量</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询偏移量</p>
        # @type Offset: Integer
        # @param Type: <p>资源类型。</p><p>枚举值：</p><ul><li>ModelRouter：模型路由实例</li><li>Key：模型路由Key</li></ul><p>不传时返回全部资源类型。</p>
        # @type Type: String

        attr_accessor :BudgetId, :Limit, :Offset, :Type

        def initialize(budgetid=nil, limit=nil, offset=nil, type=nil)
          @BudgetId = budgetid
          @Limit = limit
          @Offset = offset
          @Type = type
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Type = params['Type']
        end
      end

      # DescribeBudgetAssociations返回参数结构体
      class DescribeBudgetAssociationsResponse < TencentCloud::Common::AbstractModel
        # @param AssociationSet: <p>Budget关联资源列表。</p>
        # @type AssociationSet: Array
        # @param TotalCount: <p>符合条件的总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssociationSet, :TotalCount, :RequestId

        def initialize(associationset=nil, totalcount=nil, requestid=nil)
          @AssociationSet = associationset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssociationSet'].nil?
            @AssociationSet = []
            params['AssociationSet'].each do |i|
              budgetassociation_tmp = BudgetAssociation.new
              budgetassociation_tmp.deserialize(i)
              @AssociationSet << budgetassociation_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBudgets请求参数结构体
      class DescribeBudgetsRequest < TencentCloud::Common::AbstractModel
        # @param BudgetIds: <p>Budget ID列表。</p>
        # @type BudgetIds: Array
        # @param Filters: <p>过滤列表。</p><p>支持：BudgetId、BudgetName、Status。</p>
        # @type Filters: Array
        # @param Limit: <p>本次查询限制的数量。</p><p>取值范围：[1, 100]</p><p>默认值：20。</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询偏移量。</p><p>默认值：0。</p>
        # @type Offset: Integer

        attr_accessor :BudgetIds, :Filters, :Limit, :Offset

        def initialize(budgetids=nil, filters=nil, limit=nil, offset=nil)
          @BudgetIds = budgetids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BudgetIds = params['BudgetIds']
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
        end
      end

      # DescribeBudgets返回参数结构体
      class DescribeBudgetsResponse < TencentCloud::Common::AbstractModel
        # @param BudgetSet: <p>Budget列表。</p>
        # @type BudgetSet: Array
        # @param TotalCount: <p>符合条件的总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BudgetSet, :TotalCount, :RequestId

        def initialize(budgetset=nil, totalcount=nil, requestid=nil)
          @BudgetSet = budgetset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BudgetSet'].nil?
            @BudgetSet = []
            params['BudgetSet'].each do |i|
              budgetinfo_tmp = BudgetInfo.new
              budgetinfo_tmp.deserialize(i)
              @BudgetSet << budgetinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBByInstanceId请求参数结构体
      class DescribeClassicalLBByInstanceIdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 后端实例ID列表。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeClassicalLBByInstanceId返回参数结构体
      class DescribeClassicalLBByInstanceIdResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerInfoList: 负载均衡相关信息列表。
        # @type LoadBalancerInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerInfoList, :RequestId

        def initialize(loadbalancerinfolist=nil, requestid=nil)
          @LoadBalancerInfoList = loadbalancerinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerInfoList'].nil?
            @LoadBalancerInfoList = []
            params['LoadBalancerInfoList'].each do |i|
              classicalloadbalancerinfo_tmp = ClassicalLoadBalancerInfo.new
              classicalloadbalancerinfo_tmp.deserialize(i)
              @LoadBalancerInfoList << classicalloadbalancerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBHealthStatus请求参数结构体
      class DescribeClassicalLBHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String

        attr_accessor :LoadBalancerId, :ListenerId

        def initialize(loadbalancerid=nil, listenerid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
        end
      end

      # DescribeClassicalLBHealthStatus返回参数结构体
      class DescribeClassicalLBHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param HealthList: 后端健康状态列表。
        # @type HealthList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthList, :RequestId

        def initialize(healthlist=nil, requestid=nil)
          @HealthList = healthlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthList'].nil?
            @HealthList = []
            params['HealthList'].each do |i|
              classicalhealth_tmp = ClassicalHealth.new
              classicalhealth_tmp.deserialize(i)
              @HealthList << classicalhealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBListeners请求参数结构体
      class DescribeClassicalLBListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 负载均衡监听器ID列表。
        # @type ListenerIds: Array
        # @param Protocol: 负载均衡监听的协议：'TCP', 'UDP', 'HTTP', 'HTTPS'。
        # @type Protocol: String
        # @param ListenerPort: 负载均衡监听端口，范围为[1-65535]。
        # @type ListenerPort: Integer
        # @param Status: 监听器的状态，0：创建中，1：运行中。
        # @type Status: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :ListenerPort, :Status

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, listenerport=nil, status=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @ListenerPort = listenerport
          @Status = status
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @ListenerPort = params['ListenerPort']
          @Status = params['Status']
        end
      end

      # DescribeClassicalLBListeners返回参数结构体
      class DescribeClassicalLBListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器列表。
        # @type Listeners: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :RequestId

        def initialize(listeners=nil, requestid=nil)
          @Listeners = listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              classicallistener_tmp = ClassicalListener.new
              classicallistener_tmp.deserialize(i)
              @Listeners << classicallistener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBTargets请求参数结构体
      class DescribeClassicalLBTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DescribeClassicalLBTargets返回参数结构体
      class DescribeClassicalLBTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Targets: 后端服务列表。
        # @type Targets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Targets, :RequestId

        def initialize(targets=nil, requestid=nil)
          @Targets = targets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              classicaltarget_tmp = ClassicalTarget.new
              classicaltarget_tmp.deserialize(i)
              @Targets << classicaltarget_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClsLogSet请求参数结构体
      class DescribeClsLogSetRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeClsLogSet返回参数结构体
      class DescribeClsLogSetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集的 ID。
        # @type LogsetId: String
        # @param HealthLogsetId: 健康检查日志集的 ID。
        # @type HealthLogsetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogsetId, :HealthLogsetId, :RequestId

        def initialize(logsetid=nil, healthlogsetid=nil, requestid=nil)
          @LogsetId = logsetid
          @HealthLogsetId = healthlogsetid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @HealthLogsetId = params['HealthLogsetId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterResources请求参数结构体
      class DescribeClusterResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回集群中资源列表数目，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 返回集群中资源列表起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 查询集群中资源列表条件，详细的过滤条件如下：
        # <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照vip过滤。</li>
        # <li> loadbalancer-id - String - 是否必填：否 - （过滤条件）按照负载均衡唯一ID过滤。</li>
        # <li> idle - String 是否必填：否 - （过滤条件）按照是否闲置过滤，如"True","False"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeClusterResources返回参数结构体
      class DescribeClusterResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ClusterResourceSet: 集群中资源列表。
        # @type ClusterResourceSet: Array
        # @param TotalCount: 集群中资源总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterResourceSet, :TotalCount, :RequestId

        def initialize(clusterresourceset=nil, totalcount=nil, requestid=nil)
          @ClusterResourceSet = clusterresourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterResourceSet'].nil?
            @ClusterResourceSet = []
            params['ClusterResourceSet'].each do |i|
              clusterresource_tmp = ClusterResource.new
              clusterresource_tmp.deserialize(i)
              @ClusterResourceSet << clusterresource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossTargets请求参数结构体
      class DescribeCrossTargetsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回后端服务列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回后端服务列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Filters: 查询跨域2.0版本云联网后端子机和网卡服务列表条件，详细的过滤条件如下：
        # <li> vpc-id - String - 是否必填：否 - （过滤条件）按照 本地私有网络ID，即负载均衡的VpcId 过滤，如："vpc-12345678"。</li>
        # <li> ip - String - 是否必填：否 - （过滤条件）按照 后端服务ip 过滤，如："192.168.0.1"。</li>
        # <li> listener-id - String - 是否必填：否 - （过滤条件）按照 监听器ID 过滤，如："lbl-12345678"。</li>
        # <li> location-id - String - 是否必填：否 - （过滤条件）按照 七层监听器规则ID 过滤，如："loc-12345678"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeCrossTargets返回参数结构体
      class DescribeCrossTargetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 后端服务列表总数。
        # @type TotalCount: Integer
        # @param CrossTargetSet: 后端服务列表。
        # @type CrossTargetSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CrossTargetSet, :RequestId

        def initialize(totalcount=nil, crosstargetset=nil, requestid=nil)
          @TotalCount = totalcount
          @CrossTargetSet = crosstargetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CrossTargetSet'].nil?
            @CrossTargetSet = []
            params['CrossTargetSet'].each do |i|
              crosstargets_tmp = CrossTargets.new
              crosstargets_tmp.deserialize(i)
              @CrossTargetSet << crosstargets_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizedConfigAssociateList请求参数结构体
      class DescribeCustomizedConfigAssociateListRequest < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID，可以通过 [DescribeCustomizedConfigList](https://cloud.tencent.com/document/product/214/60009) 接口获取。
        # @type UconfigId: String
        # @param Offset: 拉取绑定关系列表开始位置，默认值 0
        # @type Offset: Integer
        # @param Limit: 拉取绑定关系列表数目，默认值 20
        # @type Limit: Integer
        # @param Domain: 搜索域名，可以通过 [DescribeLoadBalancersDetail](https://cloud.tencent.com/document/product/214/46916) 接口返回值的 `Domain` 字段查询。
        # @type Domain: String

        attr_accessor :UconfigId, :Offset, :Limit, :Domain

        def initialize(uconfigid=nil, offset=nil, limit=nil, domain=nil)
          @UconfigId = uconfigid
          @Offset = offset
          @Limit = limit
          @Domain = domain
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Domain = params['Domain']
        end
      end

      # DescribeCustomizedConfigAssociateList返回参数结构体
      class DescribeCustomizedConfigAssociateListResponse < TencentCloud::Common::AbstractModel
        # @param BindList: 绑定关系列表
        # @type BindList: Array
        # @param TotalCount: 绑定关系总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindList, :TotalCount, :RequestId

        def initialize(bindlist=nil, totalcount=nil, requestid=nil)
          @BindList = bindlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindList'].nil?
            @BindList = []
            params['BindList'].each do |i|
              binddetailitem_tmp = BindDetailItem.new
              binddetailitem_tmp.deserialize(i)
              @BindList << binddetailitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizedConfigList请求参数结构体
      class DescribeCustomizedConfigListRequest < TencentCloud::Common::AbstractModel
        # @param ConfigType: 配置类型:CLB 负载均衡维度。 SERVER 域名维度。 LOCATION 规则维度。
        # @type ConfigType: String
        # @param Offset: 拉取页偏移，默认值0。
        # @type Offset: Integer
        # @param Limit: 拉取数目，默认值20。
        # @type Limit: Integer
        # @param ConfigName: 拉取指定配置名字，模糊匹配。
        # @type ConfigName: String
        # @param UconfigIds: 配置ID，可以通过 [DescribeCustomizedConfigList](https://cloud.tencent.com/document/api/214/60009) 接口查询。
        # @type UconfigIds: Array
        # @param Filters: 过滤条件如下：
        # - loadbalancer-id
        # 按照【负载均衡 ID】进行过滤。实例计费模式例如：lb-9vxezxza。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459)
        # - vip
        # 按照【负载均衡VIP】进行过滤。网络计费模式例如："1.1.1.1","2204::22:3"。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459)
        # @type Filters: Array

        attr_accessor :ConfigType, :Offset, :Limit, :ConfigName, :UconfigIds, :Filters

        def initialize(configtype=nil, offset=nil, limit=nil, configname=nil, uconfigids=nil, filters=nil)
          @ConfigType = configtype
          @Offset = offset
          @Limit = limit
          @ConfigName = configname
          @UconfigIds = uconfigids
          @Filters = filters
        end

        def deserialize(params)
          @ConfigType = params['ConfigType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigName = params['ConfigName']
          @UconfigIds = params['UconfigIds']
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

      # DescribeCustomizedConfigList返回参数结构体
      class DescribeCustomizedConfigListResponse < TencentCloud::Common::AbstractModel
        # @param ConfigList: 配置列表
        # @type ConfigList: Array
        # @param TotalCount: 配置数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigList, :TotalCount, :RequestId

        def initialize(configlist=nil, totalcount=nil, requestid=nil)
          @ConfigList = configlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              configlistitem_tmp = ConfigListItem.new
              configlistitem_tmp.deserialize(i)
              @ConfigList << configlistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExclusiveClusters请求参数结构体
      class DescribeExclusiveClustersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回集群列表数目，默认值为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 返回集群列表起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 查询集群列表条件，详细的过滤条件如下：
        # <li> cluster-type - String - 是否必填：否 - （过滤条件）按照 集群 的类型过滤，包括"TGW","STGW","VPCGW"。</li>
        # <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        # <li> cluster-name - String - 是否必填：否 - （过滤条件）按照 集群 的名称过滤。</li>
        # <li> cluster-tag - String - 是否必填：否 - （过滤条件）按照 集群 的标签过滤。（只有TGW/STGW集群有集群标签） </li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照 集群 内的vip过滤。</li>
        # <li> loadbalancer-id - String - 是否必填：否 - （过滤条件）按照 集群 内的负载均衡唯一ID过滤。</li>
        # <li> network - String - 是否必填：否 - （过滤条件）按照 集群 的网络类型过滤，如："Public","Private"。</li>
        # <li> zone - String - 是否必填：否 - （过滤条件）按照 集群 所在可用区过滤，如："ap-guangzhou-1"（广州一区）。</li>
        # <li> isp -- String - 是否必填：否 - （过滤条件）按照TGW集群的 Isp 类型过滤，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeExclusiveClusters返回参数结构体
      class DescribeExclusiveClustersResponse < TencentCloud::Common::AbstractModel
        # @param ClusterSet: 集群列表。
        # @type ClusterSet: Array
        # @param TotalCount: 集群总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterSet, :TotalCount, :RequestId

        def initialize(clusterset=nil, totalcount=nil, requestid=nil)
          @ClusterSet = clusterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterSet << cluster_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdleLoadBalancers请求参数结构体
      class DescribeIdleLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 数据偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param LoadBalancerRegion: 负载均衡所在地域，可以通过 [DescribeRegions](https://cloud.tencent.com/document/product/1596/77930) 接口返回值 `RegionSet.Region` 字段获取。
        # @type LoadBalancerRegion: String

        attr_accessor :Offset, :Limit, :LoadBalancerRegion

        def initialize(offset=nil, limit=nil, loadbalancerregion=nil)
          @Offset = offset
          @Limit = limit
          @LoadBalancerRegion = loadbalancerregion
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LoadBalancerRegion = params['LoadBalancerRegion']
        end
      end

      # DescribeIdleLoadBalancers返回参数结构体
      class DescribeIdleLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param IdleLoadBalancers: 闲置实例列表
        # @type IdleLoadBalancers: Array
        # @param TotalCount: 所有闲置实例数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdleLoadBalancers, :TotalCount, :RequestId

        def initialize(idleloadbalancers=nil, totalcount=nil, requestid=nil)
          @IdleLoadBalancers = idleloadbalancers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdleLoadBalancers'].nil?
            @IdleLoadBalancers = []
            params['IdleLoadBalancers'].each do |i|
              idleloadbalancer_tmp = IdleLoadBalancer.new
              idleloadbalancer_tmp.deserialize(i)
              @IdleLoadBalancers << idleloadbalancer_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntentRouterTiers请求参数结构体
      class DescribeIntentRouterTiersRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIntentRouterTiers返回参数结构体
      class DescribeIntentRouterTiersResponse < TencentCloud::Common::AbstractModel
        # @param TierSet: <p>Tier 字典列表（按 tier_id 升序排列）</p>
        # @type TierSet: Array
        # @param TotalCount: <p>Tier 总条数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TierSet, :TotalCount, :RequestId

        def initialize(tierset=nil, totalcount=nil, requestid=nil)
          @TierSet = tierset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TierSet'].nil?
            @TierSet = []
            params['TierSet'].each do |i|
              intentroutertierdictitem_tmp = IntentRouterTierDictItem.new
              intentroutertierdictitem_tmp.deserialize(i)
              @TierSet << intentroutertierdictitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntentRouters请求参数结构体
      class DescribeIntentRoutersRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param IntentRouterIds: <p>意图路由ID列表</p>
        # @type IntentRouterIds: Array

        attr_accessor :ModelRouterId, :IntentRouterIds

        def initialize(modelrouterid=nil, intentrouterids=nil)
          @ModelRouterId = modelrouterid
          @IntentRouterIds = intentrouterids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @IntentRouterIds = params['IntentRouterIds']
        end
      end

      # DescribeIntentRouters返回参数结构体
      class DescribeIntentRoutersResponse < TencentCloud::Common::AbstractModel
        # @param IntentRouterSet: <p>意图路由列表。</p>
        # @type IntentRouterSet: Array
        # @param TotalCount: <p>意图路由总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntentRouterSet, :TotalCount, :RequestId

        def initialize(intentrouterset=nil, totalcount=nil, requestid=nil)
          @IntentRouterSet = intentrouterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IntentRouterSet'].nil?
            @IntentRouterSet = []
            params['IntentRouterSet'].each do |i|
              intentrouteritem_tmp = IntentRouterItem.new
              intentrouteritem_tmp.deserialize(i)
              @IntentRouterSet << intentrouteritem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeys请求参数结构体
      class DescribeKeysRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param Filters: <p>过滤列表</p><p>支持：KeyName、BudgetId、tag-key、tag:&lt;tag-key&gt;。</p>
        # @type Filters: Array
        # @param KeyIds: <p>API Key的ID列表</p>
        # @type KeyIds: Array
        # @param Limit: <p>本次查询限制的数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询偏移量</p>
        # @type Offset: Integer

        attr_accessor :ModelRouterId, :Filters, :KeyIds, :Limit, :Offset

        def initialize(modelrouterid=nil, filters=nil, keyids=nil, limit=nil, offset=nil)
          @ModelRouterId = modelrouterid
          @Filters = filters
          @KeyIds = keyids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @KeyIds = params['KeyIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeKeys返回参数结构体
      class DescribeKeysResponse < TencentCloud::Common::AbstractModel
        # @param Keys: <p>API Key列表</p>
        # @type Keys: Array
        # @param TotalCount: <p>符合条件的总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keys, :TotalCount, :RequestId

        def initialize(keys=nil, totalcount=nil, requestid=nil)
          @Keys = keys
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              keyinfo_tmp = KeyInfo.new
              keyinfo_tmp.deserialize(i)
              @Keys << keyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLBListeners请求参数结构体
      class DescribeLBListenersRequest < TencentCloud::Common::AbstractModel
        # @param Backends: 需要查询的内网ip列表
        # @type Backends: Array

        attr_accessor :Backends

        def initialize(backends=nil)
          @Backends = backends
        end

        def deserialize(params)
          unless params['Backends'].nil?
            @Backends = []
            params['Backends'].each do |i|
              lbrsitem_tmp = LbRsItem.new
              lbrsitem_tmp.deserialize(i)
              @Backends << lbrsitem_tmp
            end
          end
        end
      end

      # DescribeLBListeners返回参数结构体
      class DescribeLBListenersResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: 绑定的后端规则
        # @type LoadBalancers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :RequestId

        def initialize(loadbalancers=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              lbitem_tmp = LBItem.new
              lbitem_tmp.deserialize(i)
              @LoadBalancers << lbitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLBOperateProtect请求参数结构体
      class DescribeLBOperateProtectRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID。
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DescribeLBOperateProtect返回参数结构体
      class DescribeLBOperateProtectResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerSet: 返回的负载均衡操作保护信息数组。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerSet, :RequestId

        def initialize(loadbalancerset=nil, requestid=nil)
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              lboperateprotectinfo_tmp = LBOperateProtectInfo.new
              lboperateprotectinfo_tmp.deserialize(i)
              @LoadBalancerSet << lboperateprotectinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListeners请求参数结构体
      class DescribeListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/api/214/30685) 接口获取。
        # @type LoadBalancerId: String
        # @param ListenerIds: 要查询的负载均衡监听器 ID 数组，最大为100个，可以通过 [DescribeListeners](https://cloud.tencent.com/document/api/214/30686) 接口获取。
        # @type ListenerIds: Array
        # @param Protocol: 要查询的监听器协议类型，取值 TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。
        # @type Protocol: String
        # @param Port: 要查询的监听器的端口，端口范围：1-65535
        # @type Port: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # DescribeListeners返回参数结构体
      class DescribeListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器列表。
        # @type Listeners: Array
        # @param TotalCount: 总的监听器个数（根据端口、协议、监听器ID过滤后）。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :TotalCount, :RequestId

        def initialize(listeners=nil, totalcount=nil, requestid=nil)
          @Listeners = listeners
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listener_tmp = Listener.new
              listener_tmp.deserialize(i)
              @Listeners << listener_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerListByCertId请求参数结构体
      class DescribeLoadBalancerListByCertIdRequest < TencentCloud::Common::AbstractModel
        # @param CertIds: 服务端证书的ID，或客户端证书的ID。可以通过 [DescribeCertificate](https://cloud.tencent.com/document/api/400/41674) 接口查询。
        # 数组最大长度为20。
        # @type CertIds: Array

        attr_accessor :CertIds

        def initialize(certids=nil)
          @CertIds = certids
        end

        def deserialize(params)
          @CertIds = params['CertIds']
        end
      end

      # DescribeLoadBalancerListByCertId返回参数结构体
      class DescribeLoadBalancerListByCertIdResponse < TencentCloud::Common::AbstractModel
        # @param CertSet: 证书ID，以及与该证书ID关联的负载均衡实例列表
        # @type CertSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertSet, :RequestId

        def initialize(certset=nil, requestid=nil)
          @CertSet = certset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertSet'].nil?
            @CertSet = []
            params['CertSet'].each do |i|
              certidrelatedwithloadbalancers_tmp = CertIdRelatedWithLoadBalancers.new
              certidrelatedwithloadbalancers_tmp.deserialize(i)
              @CertSet << certidrelatedwithloadbalancers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerOverview请求参数结构体
      class DescribeLoadBalancerOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLoadBalancerOverview返回参数结构体
      class DescribeLoadBalancerOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 负载均衡总数
        # @type TotalCount: Integer
        # @param RunningCount: 运行中的负载均衡数目
        # @type RunningCount: Integer
        # @param IsolationCount: 隔离中的负载均衡数目
        # @type IsolationCount: Integer
        # @param WillExpireCount: 即将到期的负载均衡数目
        # @type WillExpireCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RunningCount, :IsolationCount, :WillExpireCount, :RequestId

        def initialize(totalcount=nil, runningcount=nil, isolationcount=nil, willexpirecount=nil, requestid=nil)
          @TotalCount = totalcount
          @RunningCount = runningcount
          @IsolationCount = isolationcount
          @WillExpireCount = willexpirecount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RunningCount = params['RunningCount']
          @IsolationCount = params['IsolationCount']
          @WillExpireCount = params['WillExpireCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerTraffic请求参数结构体
      class DescribeLoadBalancerTrafficRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerRegion: 负载均衡所在地域，不传默认返回所有地域负载均衡。
        # @type LoadBalancerRegion: String

        attr_accessor :LoadBalancerRegion

        def initialize(loadbalancerregion=nil)
          @LoadBalancerRegion = loadbalancerregion
        end

        def deserialize(params)
          @LoadBalancerRegion = params['LoadBalancerRegion']
        end
      end

      # DescribeLoadBalancerTraffic返回参数结构体
      class DescribeLoadBalancerTrafficResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerTraffic: 按出带宽从高到低排序后的负载均衡信息。
        # @type LoadBalancerTraffic: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerTraffic, :RequestId

        def initialize(loadbalancertraffic=nil, requestid=nil)
          @LoadBalancerTraffic = loadbalancertraffic
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerTraffic'].nil?
            @LoadBalancerTraffic = []
            params['LoadBalancerTraffic'].each do |i|
              loadbalancertraffic_tmp = LoadBalancerTraffic.new
              loadbalancertraffic_tmp.deserialize(i)
              @LoadBalancerTraffic << loadbalancertraffic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancersDetail请求参数结构体
      class DescribeLoadBalancersDetailRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回负载均衡列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回负载均衡列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Fields: 选择返回的Fields列表，系统仅会返回Fileds中填写的字段，可填写的字段详情请参见<a href="https://cloud.tencent.com/document/api/214/30694#LoadBalancerDetail">LoadBalancerDetail</a>。若未在Fileds填写相关字段，则此字段返回null。Fileds中默认添加LoadBalancerId和LoadBalancerName字段。
        # @type Fields: Array
        # @param TargetType: 当Fields包含TargetId、TargetAddress、TargetPort、TargetWeight、ListenerId、Protocol、Port、LocationId、Domain、Url等Fields时，必选选择导出目标组的Target或者非目标组Target，取值范围NODE、GROUP。
        # @type TargetType: String
        # @param Filters: 查询负载均衡详细信息列表条件，详细的过滤条件如下：
        # - loadbalancer-id
        # 按照【负载均衡ID】进行过滤。例如：lb-rbw5skde。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459)
        # - project-id
        # 按照【项目ID】进行过滤。例如： "0"、"123"。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeProject](https://cloud.tencent.com/document/api/651/78725)
        # - network
        # 按照【负载均衡网络类型】进行过滤。例如：Public。
        # 类型：String
        # 必选：否
        # 可选值：Private（内网）、Public（公网）
        # - vip
        # 按照【负载均衡 VIP】进行过滤。例如："1.1.1.1","2204::22:3"。
        # 类型：String
        # 必选：否
        # - vpcid
        # 按照【负载均衡所属 VPCID】进行过滤。例如："vpc-12345678"。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeZones](https://cloud.tencent.com/document/product/213/15707)
        # - target-ip
        # 按照【后端目标内网 IP】进行过滤。例如："1.1.1.1","2203::214:4"。
        # 类型：String
        # 必选：否
        # - zone
        # 按照【负载均衡所属的可用区】进行过滤。例如："ap-guangzhou-1"。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeZones](https://cloud.tencent.com/document/product/213/15707)
        # - tag-key
        # 按照【负载均衡标签的标签键】进行过滤，例如："name"。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeTags](https://cloud.tencent.com/document/api/651/35316)
        # - tag:*
        # 按照【负载均衡的标签】进行过滤，':' 后面跟的是标签键。如过滤标签键name，标签值zhangsan,lisi，{"Name": "tag:name","Values": ["zhangsan", "lisi"]}。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeTagKeys](https://cloud.tencent.com/document/api/651/35318)
        # - fuzzy-search
        # 按照【负载均衡VIP，负载均衡名称】模糊搜索，例如："1.1"。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Fields, :TargetType, :Filters

        def initialize(limit=nil, offset=nil, fields=nil, targettype=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Fields = fields
          @TargetType = targettype
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Fields = params['Fields']
          @TargetType = params['TargetType']
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

      # DescribeLoadBalancersDetail返回参数结构体
      class DescribeLoadBalancersDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 负载均衡详情列表总数。
        # @type TotalCount: Integer
        # @param LoadBalancerDetailSet: 负载均衡详情列表。
        # @type LoadBalancerDetailSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerDetailSet, :RequestId

        def initialize(totalcount=nil, loadbalancerdetailset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerDetailSet = loadbalancerdetailset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerDetailSet'].nil?
            @LoadBalancerDetailSet = []
            params['LoadBalancerDetailSet'].each do |i|
              loadbalancerdetail_tmp = LoadBalancerDetail.new
              loadbalancerdetail_tmp.deserialize(i)
              @LoadBalancerDetailSet << loadbalancerdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancers请求参数结构体
      class DescribeLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID。实例ID数量上限为20个。
        # @type LoadBalancerIds: Array
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性。
        # @type LoadBalancerType: String
        # @param Forward: 负载均衡实例的类型。1：通用的负载均衡实例，0：传统型负载均衡实例。如果不传此参数，则查询所有类型的负载均衡实例。
        # @type Forward: Integer
        # @param LoadBalancerName: 负载均衡实例的名称，支持模糊查询。
        # @type LoadBalancerName: String
        # @param Domain: 腾讯云为负载均衡实例分配的域名，支持模糊查询。
        # @type Domain: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 地址，支持多个。
        # @type LoadBalancerVips: Array
        # @param BackendPublicIps: 负载均衡绑定的后端服务的外网 IP，只支持查询云服务器的公网 IP。
        # @type BackendPublicIps: Array
        # @param BackendPrivateIps: 负载均衡绑定的后端服务的内网 IP，只支持查询云服务器的内网 IP。
        # @type BackendPrivateIps: Array
        # @param Offset: 数据偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param OrderBy: 排序参数，支持以下字段：
        # - LoadBalancerName
        # - CreateTime
        # - Domain
        # - LoadBalancerType

        # 默认为 CreateTime。
        # @type OrderBy: String
        # @param OrderType: 1：倒序，0：顺序，默认为1，按照创建时间倒序。
        # @type OrderType: Integer
        # @param SearchKey: 模糊搜索字段，模糊匹配负载均衡实例的名称、域名、负载均衡实例的 VIP 地址，负载均衡实例ID。
        # @type SearchKey: String
        # @param ProjectId: 负载均衡实例所属的项目 ID，可以通过[DescribeProject](https://cloud.tencent.com/document/api/651/78725)接口获取，不传默认所有项目。
        # @type ProjectId: Integer
        # @param WithRs: 负载均衡是否绑定后端服务，0：没有绑定后端服务，1：绑定后端服务，-1：查询全部。
        # @type WithRs: Integer
        # @param VpcId: 负载均衡实例所属私有网络唯一ID，如 vpc-bhqkbhdx，可以通过[DescribeVpcs](https://cloud.tencent.com/document/api/215/15778)接口获取。
        # 查找基础网络类型的负载均衡可传入'0'。
        # @type VpcId: String
        # @param SecurityGroup: 安全组ID，如 sg-m1cc****，可以通过接口[DescribeSecurityGroups](https://cloud.tencent.com/document/product/215/15808)获取。
        # @type SecurityGroup: String
        # @param MasterZone: 主可用区ID，如 ："100001" （对应的是广州一区）。可通过[DescribeZones](https://cloud.tencent.com/document/product/213/15707)获取可用区列表。
        # @type MasterZone: String
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。<br/>`Filter.Name`和`Filter.Values`皆为必填项。详细的过滤条件如下：
        # - charge-type
        # 按照【实例计费模式】进行过滤。实例计费模式例如：PREPAID。
        # 类型：String
        # 必选：否
        # 可选项：PREPAID(预付费)、POSTPAID_BY_HOUR(后付费)
        # - internet-charge-type
        # 按照【网络计费模式】进行过滤。网络计费模式例如：BANDWIDTH_PREPAID。
        # 类型：String
        # 必选：否
        # 可选项：BANDWIDTH_PREPAID(预付费按带宽结算)、 TRAFFIC_POSTPAID_BY_HOUR(流量按小时后付费)、BANDWIDTH_POSTPAID_BY_HOUR(带宽按小时后付费)、BANDWIDTH_PACKAGE(带宽包用户)
        # - master-zone-id
        # 按照【CLB主可用区ID】进行过滤。例如：100001（对应的是广州一区）。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeZones](https://cloud.tencent.com/document/product/213/15707)
        # - tag-key
        # 按照【CLB 标签的键】进行过滤，例如：tag-key。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeTags](https://cloud.tencent.com/document/api/651/35316)
        # - tag:tag-key
        # 按照【CLB标签键值】进行过滤，例如：tag-test。
        # 类型：String
        # 必选：否
        # 获取方式：[DescribeTagKeys](https://cloud.tencent.com/document/api/651/35318)
        # - function-name
        # 按照【后端绑定SCF云函数的函数名称】进行过滤，例如：helloworld-1744958255。
        # 类型：String
        # 必选：否
        # 获取方式：[ListFunctions](https://cloud.tencent.com/document/api/583/18582)
        # - vip-isp
        # 按照【CLB VIP的运营商类型】进行过滤，例如：BGP。
        # 类型：String
        # 必选：否
        # 公网类型可选项：BGP(多线)、CMCC(中国移动)、CTCC(中国电信)、CUCC(中国联通)
        # 内网类型可选项：INTERNAL(内网)
        # - sla-type
        # 按照【CLB 的性能容量型规格】进行过滤，例如：clb.c4.xlarge。
        # 类型：String
        # 必选：否
        # 可选项：clb.c2.medium(标准型)、clb.c3.small(高阶型1)、clb.c3.medium(高阶型2)、clb.c4.small(超强型1)、clb.c4.medium(超强型2)、clb.c4.large(超强型3)、clb.c4.xlarge(超强型4)
        # 具体规格参数参考：
        # - exclusive
        # 按照【独占实例】进行过滤。例如：1，代表筛选独占型实例。
        # 类型：String
        # 必选：否
        # 可选项：0、1
        # @type Filters: Array
        # @param AdditionalFields: 选择返回的扩充字段，不指定时，扩充字段默认不返回。详细支持的扩充字段如下：
        # <li> TargetCount：绑定的后端服务数量</li>
        # @type AdditionalFields: Array

        attr_accessor :LoadBalancerIds, :LoadBalancerType, :Forward, :LoadBalancerName, :Domain, :LoadBalancerVips, :BackendPublicIps, :BackendPrivateIps, :Offset, :Limit, :OrderBy, :OrderType, :SearchKey, :ProjectId, :WithRs, :VpcId, :SecurityGroup, :MasterZone, :Filters, :AdditionalFields

        def initialize(loadbalancerids=nil, loadbalancertype=nil, forward=nil, loadbalancername=nil, domain=nil, loadbalancervips=nil, backendpublicips=nil, backendprivateips=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, searchkey=nil, projectid=nil, withrs=nil, vpcid=nil, securitygroup=nil, masterzone=nil, filters=nil, additionalfields=nil)
          @LoadBalancerIds = loadbalancerids
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @LoadBalancerName = loadbalancername
          @Domain = domain
          @LoadBalancerVips = loadbalancervips
          @BackendPublicIps = backendpublicips
          @BackendPrivateIps = backendprivateips
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @SearchKey = searchkey
          @ProjectId = projectid
          @WithRs = withrs
          @VpcId = vpcid
          @SecurityGroup = securitygroup
          @MasterZone = masterzone
          @Filters = filters
          @AdditionalFields = additionalfields
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @LoadBalancerName = params['LoadBalancerName']
          @Domain = params['Domain']
          @LoadBalancerVips = params['LoadBalancerVips']
          @BackendPublicIps = params['BackendPublicIps']
          @BackendPrivateIps = params['BackendPrivateIps']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @SearchKey = params['SearchKey']
          @ProjectId = params['ProjectId']
          @WithRs = params['WithRs']
          @VpcId = params['VpcId']
          @SecurityGroup = params['SecurityGroup']
          @MasterZone = params['MasterZone']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @AdditionalFields = params['AdditionalFields']
        end
      end

      # DescribeLoadBalancers返回参数结构体
      class DescribeLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        # @type TotalCount: Integer
        # @param LoadBalancerSet: 返回的负载均衡实例数组。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerSet, :RequestId

        def initialize(totalcount=nil, loadbalancerset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelAliases请求参数结构体
      class DescribeModelAliasesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>过滤条件</p><p>支持的过滤键：</p><ul><li>ModelAliasName：按模型别名过滤。</li></ul>
        # @type Filters: Array
        # @param Limit: <p>每页数量，取值范围：[1, 100]，默认值：20。</p>
        # @type Limit: Integer
        # @param Offset: <p>分页偏移量，默认值：0。</p>
        # @type Offset: Integer
        # @param Sort: <p>排序条件。支持按 InputCoefficient、InputCachedCoefficient 或 OutputCoefficient 排序，Order 支持 ASC、DESC。不传或传空数组时，默认按 OutputCoefficient 降序排列。最多支持 3 个排序条件，排序字段不可重复。</p>
        # @type Sort: Array

        attr_accessor :Filters, :Limit, :Offset, :Sort

        def initialize(filters=nil, limit=nil, offset=nil, sort=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Sort = sort
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
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Sort'].nil?
            @Sort = []
            params['Sort'].each do |i|
              sort_tmp = Sort.new
              sort_tmp.deserialize(i)
              @Sort << sort_tmp
            end
          end
        end
      end

      # DescribeModelAliases返回参数结构体
      class DescribeModelAliasesResponse < TencentCloud::Common::AbstractModel
        # @param ModelAliasSet: <p>模型别名列表。</p>
        # @type ModelAliasSet: Array
        # @param TotalCount: <p>符合条件的总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAliasSet, :TotalCount, :RequestId

        def initialize(modelaliasset=nil, totalcount=nil, requestid=nil)
          @ModelAliasSet = modelaliasset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAliasSet'].nil?
            @ModelAliasSet = []
            params['ModelAliasSet'].each do |i|
              modelalias_tmp = ModelAlias.new
              modelalias_tmp.deserialize(i)
              @ModelAliasSet << modelalias_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelAssociations请求参数结构体
      class DescribeModelAssociationsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param Limit: <p>翻页限制</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>翻页偏移量</p><p>默认值：0</p>
        # @type Offset: Integer

        attr_accessor :ModelRouterId, :Limit, :Offset

        def initialize(modelrouterid=nil, limit=nil, offset=nil)
          @ModelRouterId = modelrouterid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeModelAssociations返回参数结构体
      class DescribeModelAssociationsResponse < TencentCloud::Common::AbstractModel
        # @param ModelAssociationSet: <p>模型路由实例与模型的关联关系集合</p>
        # @type ModelAssociationSet: Array
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param TotalCount: <p>符合条件的总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAssociationSet, :ModelRouterId, :TotalCount, :RequestId

        def initialize(modelassociationset=nil, modelrouterid=nil, totalcount=nil, requestid=nil)
          @ModelAssociationSet = modelassociationset
          @ModelRouterId = modelrouterid
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAssociationSet'].nil?
            @ModelAssociationSet = []
            params['ModelAssociationSet'].each do |i|
              modelassociation_tmp = ModelAssociation.new
              modelassociation_tmp.deserialize(i)
              @ModelAssociationSet << modelassociation_tmp
            end
          end
          @ModelRouterId = params['ModelRouterId']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelKeys请求参数结构体
      class DescribeModelKeysRequest < TencentCloud::Common::AbstractModel
        # @param AccessType: <p>接入类型过滤：PublicBYOK/PublicCustom/PrivateCustom</p>
        # @type AccessType: String
        # @param Filters: <p>过滤条件</p>
        # @type Filters: Array
        # @param Limit: <p>返回数量限制</p>
        # @type Limit: Integer
        # @param Offset: <p>翻页启始索引</p>
        # @type Offset: Integer
        # @param ServiceProviderIds: <p>服务提供商ID</p>
        # @type ServiceProviderIds: Array

        attr_accessor :AccessType, :Filters, :Limit, :Offset, :ServiceProviderIds

        def initialize(accesstype=nil, filters=nil, limit=nil, offset=nil, serviceproviderids=nil)
          @AccessType = accesstype
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @ServiceProviderIds = serviceproviderids
        end

        def deserialize(params)
          @AccessType = params['AccessType']
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
          @ServiceProviderIds = params['ServiceProviderIds']
        end
      end

      # DescribeModelKeys返回参数结构体
      class DescribeModelKeysResponse < TencentCloud::Common::AbstractModel
        # @param Models: <p>模型列表（含 Key 信息）</p>
        # @type Models: Array
        # @param TotalCount: <p>模型总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Models, :TotalCount, :RequestId

        def initialize(models=nil, totalcount=nil, requestid=nil)
          @Models = models
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              modelkeyinfoitem_tmp = ModelKeyInfoItem.new
              modelkeyinfoitem_tmp.deserialize(i)
              @Models << modelkeyinfoitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelNames请求参数结构体
      class DescribeModelNamesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>分页偏移量（&gt;=0）</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量（1-100）</p>
        # @type Limit: Integer
        # @param VpcId: <p>过滤PrivateCustom类型自建模型。如果传递了此参数，则只返回具有相同VPC Id的模型。</p>
        # @type VpcId: String

        attr_accessor :Offset, :Limit, :VpcId

        def initialize(offset=nil, limit=nil, vpcid=nil)
          @Offset = offset
          @Limit = limit
          @VpcId = vpcid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VpcId = params['VpcId']
        end
      end

      # DescribeModelNames返回参数结构体
      class DescribeModelNamesResponse < TencentCloud::Common::AbstractModel
        # @param ModelNames: <p>模型标识聚合列表</p>
        # @type ModelNames: Array
        # @param TotalCount: <p>聚合后的模型标识总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelNames, :TotalCount, :RequestId

        def initialize(modelnames=nil, totalcount=nil, requestid=nil)
          @ModelNames = modelnames
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelNames'].nil?
            @ModelNames = []
            params['ModelNames'].each do |i|
              modelnameaggregateditem_tmp = ModelNameAggregatedItem.new
              modelnameaggregateditem_tmp.deserialize(i)
              @ModelNames << modelnameaggregateditem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRewrite请求参数结构体
      class DescribeModelRewriteRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String
        # @param SourceModel: <p>选填，按源模型名精确过滤（大小写敏感）。</p><p>长度 1-255 字符；不传则返回该实例的全部重写规则；命中至多 1 条；未命中返回空列表（不报错）。</p>
        # @type SourceModel: String

        attr_accessor :ModelRouterId, :SourceModel

        def initialize(modelrouterid=nil, sourcemodel=nil)
          @ModelRouterId = modelrouterid
          @SourceModel = sourcemodel
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @SourceModel = params['SourceModel']
        end
      end

      # DescribeModelRewrite返回参数结构体
      class DescribeModelRewriteResponse < TencentCloud::Common::AbstractModel
        # @param Rewrites: <p>重写规则列表，按 SourceModel 字典序排序。无规则或过滤未命中时为空数组。</p>
        # @type Rewrites: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rewrites, :RequestId

        def initialize(rewrites=nil, requestid=nil)
          @Rewrites = rewrites
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rewrites'].nil?
            @Rewrites = []
            params['Rewrites'].each do |i|
              rewriteitem_tmp = RewriteItem.new
              rewriteitem_tmp.deserialize(i)
              @Rewrites << rewriteitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterDetail请求参数结构体
      class DescribeModelRouterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String

        attr_accessor :ModelRouterId

        def initialize(modelrouterid=nil)
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # DescribeModelRouterDetail返回参数结构体
      class DescribeModelRouterDetailResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouter: <p>模型路由实例详情</p>
        # @type ModelRouter: :class:`Tencentcloud::Clb.v20180317.models.ModelRouterDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouter, :RequestId

        def initialize(modelrouter=nil, requestid=nil)
          @ModelRouter = modelrouter
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouter'].nil?
            @ModelRouter = ModelRouterDetail.new
            @ModelRouter.deserialize(params['ModelRouter'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterGuardrails请求参数结构体
      class DescribeModelRouterGuardrailsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String

        attr_accessor :ModelRouterId

        def initialize(modelrouterid=nil)
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # DescribeModelRouterGuardrails返回参数结构体
      class DescribeModelRouterGuardrailsResponse < TencentCloud::Common::AbstractModel
        # @param Guardrails: <p>当前已关联的 Guardrail 防护配置列表。</p><p>当前最多返回 1 个元素。</p>
        # @type Guardrails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Guardrails, :RequestId

        def initialize(guardrails=nil, requestid=nil)
          @Guardrails = guardrails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Guardrails'].nil?
            @Guardrails = []
            params['Guardrails'].each do |i|
              guardrailconfig_tmp = GuardrailConfig.new
              guardrailconfig_tmp.deserialize(i)
              @Guardrails << guardrailconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterLogs请求参数结构体
      class DescribeModelRouterLogsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param KeyId: <p>Key的ID</p>
        # @type KeyId: String
        # @param Model: <p>模型名称</p>
        # @type Model: String
        # @param Status: <p>请求状态</p>
        # @type Status: String
        # @param StartTime: <p>开始时间，与EndTime需要同时传入、开始时间不得早于24小时前，默认仅查询近5分钟日志</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间，与StartTime需要同时传入、开始时间不得早于24小时前，默认仅查询近5分钟日志</p>
        # @type EndTime: String
        # @param NextToken: <p>游标NextToken</p>
        # @type NextToken: String
        # @param MaxResults: <p>本次查询最大数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type MaxResults: Integer

        attr_accessor :ModelRouterId, :KeyId, :Model, :Status, :StartTime, :EndTime, :NextToken, :MaxResults

        def initialize(modelrouterid=nil, keyid=nil, model=nil, status=nil, starttime=nil, endtime=nil, nexttoken=nil, maxresults=nil)
          @ModelRouterId = modelrouterid
          @KeyId = keyid
          @Model = model
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @NextToken = nexttoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @KeyId = params['KeyId']
          @Model = params['Model']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
        end
      end

      # DescribeModelRouterLogs返回参数结构体
      class DescribeModelRouterLogsResponse < TencentCloud::Common::AbstractModel
        # @param Logs: <p>日志列表</p>
        # @type Logs: Array
        # @param TotalCount: <p>满足条件的数量</p>
        # @type TotalCount: Integer
        # @param NextToken: <p>游标NextToken</p>
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Logs, :TotalCount, :NextToken, :RequestId

        def initialize(logs=nil, totalcount=nil, nexttoken=nil, requestid=nil)
          @Logs = logs
          @TotalCount = totalcount
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Logs'].nil?
            @Logs = []
            params['Logs'].each do |i|
              modelrouterlog_tmp = ModelRouterLog.new
              modelrouterlog_tmp.deserialize(i)
              @Logs << modelrouterlog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterQuota请求参数结构体
      class DescribeModelRouterQuotaRequest < TencentCloud::Common::AbstractModel
        # @param QuotaTypes: <p>配额类型</p>
        # @type QuotaTypes: Array
        # @param ResourceIds: <p>要查询的资源ID</p>
        # @type ResourceIds: Array
        # @param DisplayFields: <p>需要展示的字段</p><p>枚举值：</p><ul><li>Used： 已使用的配额数量</li><li>Available： 剩余的配额数量</li></ul>
        # @type DisplayFields: Array

        attr_accessor :QuotaTypes, :ResourceIds, :DisplayFields

        def initialize(quotatypes=nil, resourceids=nil, displayfields=nil)
          @QuotaTypes = quotatypes
          @ResourceIds = resourceids
          @DisplayFields = displayfields
        end

        def deserialize(params)
          @QuotaTypes = params['QuotaTypes']
          @ResourceIds = params['ResourceIds']
          @DisplayFields = params['DisplayFields']
        end
      end

      # DescribeModelRouterQuota返回参数结构体
      class DescribeModelRouterQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Quotas: <p>配额信息</p>
        # @type Quotas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Quotas, :RequestId

        def initialize(quotas=nil, requestid=nil)
          @Quotas = quotas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Quotas'].nil?
            @Quotas = []
            params['Quotas'].each do |i|
              modelrouterquota_tmp = ModelRouterQuota.new
              modelrouterquota_tmp.deserialize(i)
              @Quotas << modelrouterquota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterResourcePackageDeduction请求参数结构体
      class DescribeModelRouterResourcePackageDeductionRequest < TencentCloud::Common::AbstractModel
        # @param DeductionTimeBegin: <p>抵扣起始时间</p>
        # @type DeductionTimeBegin: String
        # @param DeductionTimeEnd: <p>抵扣截止时间</p>
        # @type DeductionTimeEnd: String
        # @param ModelRouterResourcePackageId: <p>模型路由资源包Id</p>
        # @type ModelRouterResourcePackageId: String
        # @param Limit: <p>返回的数量</p><p>取值范围：[0, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>数据偏移量</p><p>默认值：0</p>
        # @type Offset: Integer
        # @param SortBy: <p>排序方式：asc，desc</p>
        # @type SortBy: String

        attr_accessor :DeductionTimeBegin, :DeductionTimeEnd, :ModelRouterResourcePackageId, :Limit, :Offset, :SortBy

        def initialize(deductiontimebegin=nil, deductiontimeend=nil, modelrouterresourcepackageid=nil, limit=nil, offset=nil, sortby=nil)
          @DeductionTimeBegin = deductiontimebegin
          @DeductionTimeEnd = deductiontimeend
          @ModelRouterResourcePackageId = modelrouterresourcepackageid
          @Limit = limit
          @Offset = offset
          @SortBy = sortby
        end

        def deserialize(params)
          @DeductionTimeBegin = params['DeductionTimeBegin']
          @DeductionTimeEnd = params['DeductionTimeEnd']
          @ModelRouterResourcePackageId = params['ModelRouterResourcePackageId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SortBy = params['SortBy']
        end
      end

      # DescribeModelRouterResourcePackageDeduction返回参数结构体
      class DescribeModelRouterResourcePackageDeductionResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageDeductionSet: <p>模型路由资源包抵扣信息</p>
        # @type ModelRouterResourcePackageDeductionSet: Array
        # @param TotalCount: <p>符合查询条件的详情信息总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterResourcePackageDeductionSet, :TotalCount, :RequestId

        def initialize(modelrouterresourcepackagedeductionset=nil, totalcount=nil, requestid=nil)
          @ModelRouterResourcePackageDeductionSet = modelrouterresourcepackagedeductionset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouterResourcePackageDeductionSet'].nil?
            @ModelRouterResourcePackageDeductionSet = []
            params['ModelRouterResourcePackageDeductionSet'].each do |i|
              modelrouterresourcepackagededuction_tmp = ModelRouterResourcePackageDeduction.new
              modelrouterresourcepackagededuction_tmp.deserialize(i)
              @ModelRouterResourcePackageDeductionSet << modelrouterresourcepackagededuction_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouterResourcePackages请求参数结构体
      class DescribeModelRouterResourcePackagesRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageIds: <p>模型路由资源包Id。</p>
        # @type ModelRouterResourcePackageIds: Array
        # @param Offset: <p>数据偏移量。</p><p>默认值：0</p>
        # @type Offset: Integer
        # @param Limit: <p>返回的数量，最大值为100。</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param OrderBy: <p>排序参数，支持以下字段：&quot;buyTime&quot;, &quot;startTime&quot;, &quot;endTime&quot;</p>
        # @type OrderBy: String
        # @param SortBy: <p>排序方式：asc，desc，默认asc</p>
        # @type SortBy: String
        # @param Filters: <p>查询的过滤条件。</p><p>每次请求的Filters的上限为10，Filter.Values的上限为100。 Filter.Name和Filter.Values皆为必填项。详细的过滤条件如下： status - Integer - 是否必填：否 - 状态：0-有效 1-已退款 2-已过期 3-已用完。 effect_time_start - String - 是否必填：否 - 生效起始时间,YYYY-MM-DD HH:MM:SS格式。 effect_time_end - String - 是否必填：否 - 生效截止时间。 expire_time_start - String - 是否必填：否 - 失效起始时间。 expire_time_end - String - 是否必填：否 - 失效截止时间。</p>
        # @type Filters: Array

        attr_accessor :ModelRouterResourcePackageIds, :Offset, :Limit, :OrderBy, :SortBy, :Filters

        def initialize(modelrouterresourcepackageids=nil, offset=nil, limit=nil, orderby=nil, sortby=nil, filters=nil)
          @ModelRouterResourcePackageIds = modelrouterresourcepackageids
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @SortBy = sortby
          @Filters = filters
        end

        def deserialize(params)
          @ModelRouterResourcePackageIds = params['ModelRouterResourcePackageIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @SortBy = params['SortBy']
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

      # DescribeModelRouterResourcePackages返回参数结构体
      class DescribeModelRouterResourcePackagesResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageSet: <p>模型路由资源包信息</p>
        # @type ModelRouterResourcePackageSet: Array
        # @param TotalCount: <p>符合查询条件的模型路由资源包数量</p>
        # @type TotalCount: Integer
        # @param TotalDosage: <p>资源包的剩余总量</p>
        # @type TotalDosage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterResourcePackageSet, :TotalCount, :TotalDosage, :RequestId

        def initialize(modelrouterresourcepackageset=nil, totalcount=nil, totaldosage=nil, requestid=nil)
          @ModelRouterResourcePackageSet = modelrouterresourcepackageset
          @TotalCount = totalcount
          @TotalDosage = totaldosage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouterResourcePackageSet'].nil?
            @ModelRouterResourcePackageSet = []
            params['ModelRouterResourcePackageSet'].each do |i|
              modelrouterpackage_tmp = ModelRouterPackage.new
              modelrouterpackage_tmp.deserialize(i)
              @ModelRouterResourcePackageSet << modelrouterpackage_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalDosage = params['TotalDosage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelRouters请求参数结构体
      class DescribeModelRoutersRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>过滤条件</p><p>支持：ModelRouterName、ModelRouterType、Status、BudgetId、tag-key、tag:&lt;tag-key&gt;。</p>
        # @type Filters: Array
        # @param Limit: <p>每页数量，1-100，默认 20</p>
        # @type Limit: Integer
        # @param ModelRouterIds: <p>模型路由实例ID列表</p>
        # @type ModelRouterIds: Array
        # @param Offset: <p>分页偏移量，默认 0</p>
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :ModelRouterIds, :Offset

        def initialize(filters=nil, limit=nil, modelrouterids=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @ModelRouterIds = modelrouterids
          @Offset = offset
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
          @Limit = params['Limit']
          @ModelRouterIds = params['ModelRouterIds']
          @Offset = params['Offset']
        end
      end

      # DescribeModelRouters返回参数结构体
      class DescribeModelRoutersResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterSet: <p>模型路由实例列表</p>
        # @type ModelRouterSet: Array
        # @param TotalCount: <p>符合条件的总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterSet, :TotalCount, :RequestId

        def initialize(modelrouterset=nil, totalcount=nil, requestid=nil)
          @ModelRouterSet = modelrouterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouterSet'].nil?
            @ModelRouterSet = []
            params['ModelRouterSet'].each do |i|
              modelrouterset_tmp = ModelRouterSet.new
              modelrouterset_tmp.deserialize(i)
              @ModelRouterSet << modelrouterset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuota请求参数结构体
      class DescribeQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeQuota返回参数结构体
      class DescribeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 配额列表
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId

        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @QuotaSet << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回可用区资源列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回可用区资源列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Filters: 查询可用区资源列表条件，详细的过滤条件如下：
        # - master-zone
        # 按照【地域可用区】进行过滤，例如：ap-guangzhou-2。
        # 类型：String
        # 必选：否
        # - ip-version
        # 按照【IP 类型】进行过滤，例如：IPv4。
        # 类型：String
        # 必选：否
        # 可选项：IPv4、IPv6、IPv6_Nat
        # - isp
        # 按照【ISP 类型】进行过滤，例如：BGP。
        # 类型：String
        # 必选：否
        # 可选项：BGP、CMCC（中国移动）、CUCC（中国联通）、CTCC（中国电信）、BGP_PRO、INTERNAL（内网）
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneResourceSet: 可用区支持的资源列表。
        # @type ZoneResourceSet: Array
        # @param TotalCount: 可用区资源列表数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneResourceSet, :TotalCount, :RequestId

        def initialize(zoneresourceset=nil, totalcount=nil, requestid=nil)
          @ZoneResourceSet = zoneresourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneResourceSet'].nil?
            @ZoneResourceSet = []
            params['ZoneResourceSet'].each do |i|
              zoneresource_tmp = ZoneResource.new
              zoneresource_tmp.deserialize(i)
              @ZoneResourceSet << zoneresource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRewrite请求参数结构体
      class DescribeRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param SourceListenerIds: 负载均衡监听器ID数组。
        # @type SourceListenerIds: Array
        # @param SourceLocationIds: 负载均衡转发规则的ID数组。
        # @type SourceLocationIds: Array

        attr_accessor :LoadBalancerId, :SourceListenerIds, :SourceLocationIds

        def initialize(loadbalancerid=nil, sourcelistenerids=nil, sourcelocationids=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerIds = sourcelistenerids
          @SourceLocationIds = sourcelocationids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerIds = params['SourceListenerIds']
          @SourceLocationIds = params['SourceLocationIds']
        end
      end

      # DescribeRewrite返回参数结构体
      class DescribeRewriteResponse < TencentCloud::Common::AbstractModel
        # @param RewriteSet: 重定向转发规则构成的数组，若无重定向规则，则返回空数组。
        # @type RewriteSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RewriteSet, :RequestId

        def initialize(rewriteset=nil, requestid=nil)
          @RewriteSet = rewriteset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RewriteSet'].nil?
            @RewriteSet = []
            params['RewriteSet'].each do |i|
              ruleoutput_tmp = RuleOutput.new
              ruleoutput_tmp.deserialize(i)
              @RewriteSet << ruleoutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceProviderHealthStatus请求参数结构体
      class DescribeServiceProviderHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>BYOK的ID</p>
        # @type ServiceProviderId: String
        # @param Limit: <p>本次查询的限制数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询翻页的偏移量</p>
        # @type Offset: Integer

        attr_accessor :ServiceProviderId, :Limit, :Offset

        def initialize(serviceproviderid=nil, limit=nil, offset=nil)
          @ServiceProviderId = serviceproviderid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceProviderHealthStatus返回参数结构体
      class DescribeServiceProviderHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckResults: <p>健康检查的结果</p>
        # @type HealthCheckResults: Array
        # @param TotalCount: <p>本次请求总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckResults, :TotalCount, :RequestId

        def initialize(healthcheckresults=nil, totalcount=nil, requestid=nil)
          @HealthCheckResults = healthcheckresults
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthCheckResults'].nil?
            @HealthCheckResults = []
            params['HealthCheckResults'].each do |i|
              modelhealthcheckresults_tmp = ModelHealthCheckResults.new
              modelhealthcheckresults_tmp.deserialize(i)
              @HealthCheckResults << modelhealthcheckresults_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupportedProviders请求参数结构体
      class DescribeSupportedProvidersRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSupportedProviders返回参数结构体
      class DescribeSupportedProvidersResponse < TencentCloud::Common::AbstractModel
        # @param Providers: <p>Provider 列表</p>
        # @type Providers: Array
        # @param TotalCount: <p>Provider 总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Providers, :TotalCount, :RequestId

        def initialize(providers=nil, totalcount=nil, requestid=nil)
          @Providers = providers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Providers'].nil?
            @Providers = []
            params['Providers'].each do |i|
              provideritem_tmp = ProviderItem.new
              provideritem_tmp.deserialize(i)
              @Providers << provideritem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupInstanceStatus请求参数结构体
      class DescribeTargetGroupInstanceStatusRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组唯一id
        # @type TargetGroupId: String
        # @param TargetGroupInstanceIps: 目标组绑定的后端服务ip列表
        # @type TargetGroupInstanceIps: Array

        attr_accessor :TargetGroupId, :TargetGroupInstanceIps

        def initialize(targetgroupid=nil, targetgroupinstanceips=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstanceIps = targetgroupinstanceips
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupInstanceIps = params['TargetGroupInstanceIps']
        end
      end

      # DescribeTargetGroupInstanceStatus返回参数结构体
      class DescribeTargetGroupInstanceStatusResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupInstanceSet: 健康检查后端rs状态列表
        # @type TargetGroupInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetGroupInstanceSet, :RequestId

        def initialize(targetgroupinstanceset=nil, requestid=nil)
          @TargetGroupInstanceSet = targetgroupinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TargetGroupInstanceSet'].nil?
            @TargetGroupInstanceSet = []
            params['TargetGroupInstanceSet'].each do |i|
              targetgroupinstancestatus_tmp = TargetGroupInstanceStatus.new
              targetgroupinstancestatus_tmp.deserialize(i)
              @TargetGroupInstanceSet << targetgroupinstancestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupInstances请求参数结构体
      class DescribeTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，当前支持按照 TargetGroupId，BindIP，InstanceId 多个条件组合过滤。
        # @type Filters: Array
        # @param Limit: 显示数量限制，默认20。
        # @type Limit: Integer
        # @param Offset: 显示的偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
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
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTargetGroupInstances返回参数结构体
      class DescribeTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次查询的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupInstanceSet: 绑定的服务器信息。
        # @type TargetGroupInstanceSet: Array
        # @param RealCount: 实际统计数量，不受Limit、Offset、CAM的影响。
        # @type RealCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupInstanceSet, :RealCount, :RequestId

        def initialize(totalcount=nil, targetgroupinstanceset=nil, realcount=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupInstanceSet = targetgroupinstanceset
          @RealCount = realcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupInstanceSet'].nil?
            @TargetGroupInstanceSet = []
            params['TargetGroupInstanceSet'].each do |i|
              targetgroupbackend_tmp = TargetGroupBackend.new
              targetgroupbackend_tmp.deserialize(i)
              @TargetGroupInstanceSet << targetgroupbackend_tmp
            end
          end
          @RealCount = params['RealCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupList请求参数结构体
      class DescribeTargetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: <p>目标组ID数组。</p>
        # @type TargetGroupIds: Array
        # @param Filters: <p>过滤条件数组，支持TargetGroupVpcId和TargetGroupName。与TargetGroupIds互斥，优先使用目标组ID。</p>
        # @type Filters: Array
        # @param Offset: <p>显示的偏移起始量。</p>
        # @type Offset: Integer
        # @param Limit: <p>每页显示条目数。</p><p>取值范围：[0, 100]</p><p>默认值：20</p>
        # @type Limit: Integer

        attr_accessor :TargetGroupIds, :Filters, :Offset, :Limit

        def initialize(targetgroupids=nil, filters=nil, offset=nil, limit=nil)
          @TargetGroupIds = targetgroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
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

      # DescribeTargetGroupList返回参数结构体
      class DescribeTargetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>显示的结果数量。</p>
        # @type TotalCount: Integer
        # @param TargetGroupSet: <p>显示的目标组信息集合。</p>
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroups请求参数结构体
      class DescribeTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID，与Filters互斥。
        # @type TargetGroupIds: Array
        # @param Limit: 显示条数限制，默认为20。
        # @type Limit: Integer
        # @param Offset: 显示的偏移起始量。
        # @type Offset: Integer
        # @param Filters: 过滤条件数组，与TargetGroupIds互斥，支持 TargetGroupVpcId（私有网络 ID）和 TargetGroupName（目标组名称）以及 Tag（标签）。
        # @type Filters: Array

        attr_accessor :TargetGroupIds, :Limit, :Offset, :Filters

        def initialize(targetgroupids=nil, limit=nil, offset=nil, filters=nil)
          @TargetGroupIds = targetgroupids
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeTargetGroups返回参数结构体
      class DescribeTargetGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 显示的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupSet: 显示的目标组信息集合。
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetHealth请求参数结构体
      class DescribeTargetHealthRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: <p>要查询的负载均衡实例ID列表。数组大小最大支持30。</p>
        # @type LoadBalancerIds: Array
        # @param ListenerIds: <p>要查询的监听器ID列表。</p>
        # @type ListenerIds: Array
        # @param LocationIds: <p>要查询的转发规则ID列表。</p>
        # @type LocationIds: Array

        attr_accessor :LoadBalancerIds, :ListenerIds, :LocationIds

        def initialize(loadbalancerids=nil, listenerids=nil, locationids=nil)
          @LoadBalancerIds = loadbalancerids
          @ListenerIds = listenerids
          @LocationIds = locationids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @ListenerIds = params['ListenerIds']
          @LocationIds = params['LocationIds']
        end
      end

      # DescribeTargetHealth返回参数结构体
      class DescribeTargetHealthResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: <p>负载均衡实例列表。</p>
        # @type LoadBalancers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :RequestId

        def initialize(loadbalancers=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancerhealth_tmp = LoadBalancerHealth.new
              loadbalancerhealth_tmp.deserialize(i)
              @LoadBalancers << loadbalancerhealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargets请求参数结构体
      class DescribeTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 监听器 ID 列表。ID 数量上限为20个。
        # @type ListenerIds: Array
        # @param Protocol: 监听器协议类型。
        # @type Protocol: String
        # @param Port: 监听器端口。
        # @type Port: Integer
        # @param Filters: 查询负载均衡绑定的后端服务列表，过滤条件如下：
        # <li> location-id - String - 是否必填：否 - （过滤条件）按照 规则ID 过滤，如："loc-12345678"。</li>
        # <li> private-ip-address - String - 是否必填：否 - （过滤条件）按照 后端服务内网IP 过滤，如："172.16.1.1"。</li>
        # <li> tag - String - 是否必填：否 - （过滤条件）按照 标签 过滤，如："tag-test"。</li>
        # @type Filters: Array

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port, :Filters

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil, filters=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
          @Filters = filters
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
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

      # DescribeTargets返回参数结构体
      class DescribeTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器后端绑定的机器信息。
        # @type Listeners: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :RequestId

        def initialize(listeners=nil, requestid=nil)
          @Listeners = listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerbackend_tmp = ListenerBackend.new
              listenerbackend_tmp.deserialize(i)
              @Listeners << listenerbackend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 请求ID，即接口返回的 RequestId 参数。
        # @type TaskId: String
        # @param DealName: 订单ID。
        # 注意：参数TaskId和DealName必须传一个。
        # @type DealName: String

        attr_accessor :TaskId, :DealName

        def initialize(taskid=nil, dealname=nil)
          @TaskId = taskid
          @DealName = dealname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DealName = params['DealName']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的当前状态。 0：成功，1：失败，2：进行中。
        # @type Status: Integer
        # @param LoadBalancerIds: 由负载均衡实例唯一 ID 组成的数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param Message: 辅助描述信息，如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :LoadBalancerIds, :Message, :RequestId

        def initialize(status=nil, loadbalancerids=nil, message=nil, requestid=nil)
          @Status = status
          @LoadBalancerIds = loadbalancerids
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @LoadBalancerIds = params['LoadBalancerIds']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpperModels请求参数结构体
      class DescribeUpperModelsRequest < TencentCloud::Common::AbstractModel
        # @param AccessType: <p>接入类型：PublicBYOK/PublicCustom/PrivateCustom</p>
        # @type AccessType: String
        # @param ApiBase: <p>上游 Provider API 地址</p><p>示例：https://api.moonshot.cn</p>
        # @type ApiBase: String
        # @param ApiKey: <p>上游 Provider API Key</p><p>用于鉴权访问上游模型列表接口</p>
        # @type ApiKey: String
        # @param HostHeader: <p>自定义 Host Header，可选</p><p>仅 VPC 内网场景需要，用于指定请求的 Host 头</p>
        # @type HostHeader: String
        # @param KeyId: <p>Key Id 配合ServiceProviderId一同输入，不指定则默认选用最近创建的Key</p>
        # @type KeyId: String
        # @param ModelPath: <p>模型列表端点路径，可选</p><p>默认值：/v1/models</p>
        # @type ModelPath: String
        # @param ModelProtocol: <p>模型协议</p>
        # @type ModelProtocol: String
        # @param ModelProvider: <p>模型提供商</p>
        # @type ModelProvider: String
        # @param ServiceProviderId: <p>BYOK 业务 ID，可选</p><p>格式：byok-xxxxxxxx</p>
        # @type ServiceProviderId: String

        attr_accessor :AccessType, :ApiBase, :ApiKey, :HostHeader, :KeyId, :ModelPath, :ModelProtocol, :ModelProvider, :ServiceProviderId

        def initialize(accesstype=nil, apibase=nil, apikey=nil, hostheader=nil, keyid=nil, modelpath=nil, modelprotocol=nil, modelprovider=nil, serviceproviderid=nil)
          @AccessType = accesstype
          @ApiBase = apibase
          @ApiKey = apikey
          @HostHeader = hostheader
          @KeyId = keyid
          @ModelPath = modelpath
          @ModelProtocol = modelprotocol
          @ModelProvider = modelprovider
          @ServiceProviderId = serviceproviderid
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @ApiBase = params['ApiBase']
          @ApiKey = params['ApiKey']
          @HostHeader = params['HostHeader']
          @KeyId = params['KeyId']
          @ModelPath = params['ModelPath']
          @ModelProtocol = params['ModelProtocol']
          @ModelProvider = params['ModelProvider']
          @ServiceProviderId = params['ServiceProviderId']
        end
      end

      # DescribeUpperModels返回参数结构体
      class DescribeUpperModelsResponse < TencentCloud::Common::AbstractModel
        # @param Models: <p>上游模型列表</p>
        # @type Models: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Models, :RequestId

        def initialize(models=nil, requestid=nil)
          @Models = models
          @RequestId = requestid
        end

        def deserialize(params)
          @Models = params['Models']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroups请求参数结构体
      class DescribeUserGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param UserGroupIds: <p>用户组ID列表，用于按ID过滤，单次最多100个；可包含「未分组」虚拟分组 ugrp-ungrouped。</p>
        # @type UserGroupIds: Array
        # @param Filters: <p>过滤列表。支持：UserGroupName、Status、tag-key、tag:&lt;tag-key&gt;。</p>
        # @type Filters: Array
        # @param Limit: <p>本次查询限制的数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询偏移量</p><p>默认值：0</p>
        # @type Offset: Integer

        attr_accessor :ModelRouterId, :UserGroupIds, :Filters, :Limit, :Offset

        def initialize(modelrouterid=nil, usergroupids=nil, filters=nil, limit=nil, offset=nil)
          @ModelRouterId = modelrouterid
          @UserGroupIds = usergroupids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @UserGroupIds = params['UserGroupIds']
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
        end
      end

      # DescribeUserGroups返回参数结构体
      class DescribeUserGroupsResponse < TencentCloud::Common::AbstractModel
        # @param UserGroups: <p>用户组列表。</p>
        # @type UserGroups: Array
        # @param TotalCount: <p>符合条件的总数（含「未分组」逻辑组 ugrp-ungrouped：当其未被过滤条件排除时计入，即 TotalCount = 真实用户组数 + 1）。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroups, :TotalCount, :RequestId

        def initialize(usergroups=nil, totalcount=nil, requestid=nil)
          @UserGroups = usergroups
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserGroups'].nil?
            @UserGroups = []
            params['UserGroups'].each do |i|
              usergroupinfo_tmp = UserGroupInfo.new
              usergroupinfo_tmp.deserialize(i)
              @UserGroups << usergroupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateBudget请求参数结构体
      class DisassociateBudgetRequest < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p>
        # @type BudgetId: String
        # @param Resources: <p>要解除关联的资源列表。</p>
        # @type Resources: Array

        attr_accessor :BudgetId, :Resources

        def initialize(budgetid=nil, resources=nil)
          @BudgetId = budgetid
          @Resources = resources
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              budgetresource_tmp = BudgetResource.new
              budgetresource_tmp.deserialize(i)
              @Resources << budgetresource_tmp
            end
          end
        end
      end

      # DisassociateBudget返回参数结构体
      class DisassociateBudgetResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateCustomizedConfig请求参数结构体
      class DisassociateCustomizedConfigRequest < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID
        # @type UconfigId: String
        # @param BindList: 解绑的列表
        # @type BindList: Array

        attr_accessor :UconfigId, :BindList

        def initialize(uconfigid=nil, bindlist=nil)
          @UconfigId = uconfigid
          @BindList = bindlist
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          unless params['BindList'].nil?
            @BindList = []
            params['BindList'].each do |i|
              binditem_tmp = BindItem.new
              binditem_tmp.deserialize(i)
              @BindList << binditem_tmp
            end
          end
        end
      end

      # DisassociateCustomizedConfig返回参数结构体
      class DisassociateCustomizedConfigResponse < TencentCloud::Common::AbstractModel
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

      # 模型路由待解除关联 Guardrail 防护配置
      class DisassociateGuardrailConfig < TencentCloud::Common::AbstractModel
        # @param GuardrailId: <p>Guardrail 防护配置 ID。</p><p>可通过 DescribeModelRouterGuardrails 获取；DisassociateModelRouterGuardrails 使用该字段定位要解除关联的防护配置。</p>
        # @type GuardrailId: String

        attr_accessor :GuardrailId

        def initialize(guardrailid=nil)
          @GuardrailId = guardrailid
        end

        def deserialize(params)
          @GuardrailId = params['GuardrailId']
        end
      end

      # DisassociateModelRouterGuardrails请求参数结构体
      class DisassociateModelRouterGuardrailsRequest < TencentCloud::Common::AbstractModel
        # @param Guardrails: <p>待解除关联的 Guardrail 防护配置列表。</p><p>每个元素只需要填写 GuardrailId。</p>
        # @type Guardrails: Array
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String

        attr_accessor :Guardrails, :ModelRouterId

        def initialize(guardrails=nil, modelrouterid=nil)
          @Guardrails = guardrails
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          unless params['Guardrails'].nil?
            @Guardrails = []
            params['Guardrails'].each do |i|
              disassociateguardrailconfig_tmp = DisassociateGuardrailConfig.new
              disassociateguardrailconfig_tmp.deserialize(i)
              @Guardrails << disassociateguardrailconfig_tmp
            end
          end
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # DisassociateModelRouterGuardrails返回参数结构体
      class DisassociateModelRouterGuardrailsResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateModelsFromModelRouter请求参数结构体
      class DisassociateModelsFromModelRouterRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param Models: <p>需要解除关联的模型信息</p>
        # @type Models: Array

        attr_accessor :ModelRouterId, :Models

        def initialize(modelrouterid=nil, models=nil)
          @ModelRouterId = modelrouterid
          @Models = models
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              modelroutermodel_tmp = ModelRouterModel.new
              modelroutermodel_tmp.deserialize(i)
              @Models << modelroutermodel_tmp
            end
          end
        end
      end

      # DisassociateModelsFromModelRouter返回参数结构体
      class DisassociateModelsFromModelRouterResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateTargetGroups请求参数结构体
      class DisassociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 待解绑的规则关系数组，支持批量解绑多个监听器，单次批量解除最多20个。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # DisassociateTargetGroups返回参数结构体
      class DisassociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 独占集群
      class ExclusiveCluster < TencentCloud::Common::AbstractModel
        # @param L4Clusters: 4层独占集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L4Clusters: Array
        # @param L7Clusters: 7层独占集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L7Clusters: Array
        # @param ClassicalCluster: vpcgw集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassicalCluster: :class:`Tencentcloud::Clb.v20180317.models.ClusterItem`

        attr_accessor :L4Clusters, :L7Clusters, :ClassicalCluster

        def initialize(l4clusters=nil, l7clusters=nil, classicalcluster=nil)
          @L4Clusters = l4clusters
          @L7Clusters = l7clusters
          @ClassicalCluster = classicalcluster
        end

        def deserialize(params)
          unless params['L4Clusters'].nil?
            @L4Clusters = []
            params['L4Clusters'].each do |i|
              clusteritem_tmp = ClusterItem.new
              clusteritem_tmp.deserialize(i)
              @L4Clusters << clusteritem_tmp
            end
          end
          unless params['L7Clusters'].nil?
            @L7Clusters = []
            params['L7Clusters'].each do |i|
              clusteritem_tmp = ClusterItem.new
              clusteritem_tmp.deserialize(i)
              @L7Clusters << clusteritem_tmp
            end
          end
          unless params['ClassicalCluster'].nil?
            @ClassicalCluster = ClusterItem.new
            @ClassicalCluster.deserialize(params['ClassicalCluster'])
          end
        end
      end

      # 暂做保留，一般用户无需关注。
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param ZhiTong: 是否开通VIP直通
        # @type ZhiTong: Boolean
        # @param TgwGroupName: TgwGroup名称
        # @type TgwGroupName: String

        attr_accessor :ZhiTong, :TgwGroupName

        def initialize(zhitong=nil, tgwgroupname=nil)
          @ZhiTong = zhitong
          @TgwGroupName = tgwgroupname
        end

        def deserialize(params)
          @ZhiTong = params['ZhiTong']
          @TgwGroupName = params['TgwGroupName']
        end
      end

      # 路由FallBack配置
      class FallBackItem < TencentCloud::Common::AbstractModel
        # @param DefaultFallBackModels: <p>默认回退模型列表</p>
        # @type DefaultFallBackModels: Array

        attr_accessor :DefaultFallBackModels

        def initialize(defaultfallbackmodels=nil)
          @DefaultFallBackModels = defaultfallbackmodels
        end

        def deserialize(params)
          @DefaultFallBackModels = params['DefaultFallBackModels']
        end
      end

      # 过滤器条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: <p>过滤器的名称</p>
        # @type Name: String
        # @param Values: <p>过滤器的值数组</p>
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

      # SCF云函数（Serverless Cloud Function）相关信息。
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param FunctionNamespace: 函数命名空间
        # @type FunctionNamespace: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionQualifier: 函数的版本名称或别名
        # @type FunctionQualifier: String
        # @param FunctionQualifierType: 标识 FunctionQualifier 参数的类型，可取值： VERSION（版本）、ALIAS（别名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionQualifierType: String

        attr_accessor :FunctionNamespace, :FunctionName, :FunctionQualifier, :FunctionQualifierType

        def initialize(functionnamespace=nil, functionname=nil, functionqualifier=nil, functionqualifiertype=nil)
          @FunctionNamespace = functionnamespace
          @FunctionName = functionname
          @FunctionQualifier = functionqualifier
          @FunctionQualifierType = functionqualifiertype
        end

        def deserialize(params)
          @FunctionNamespace = params['FunctionNamespace']
          @FunctionName = params['FunctionName']
          @FunctionQualifier = params['FunctionQualifier']
          @FunctionQualifierType = params['FunctionQualifierType']
        end
      end

      # SCF云函数（Serverless Cloud Function）作为后端服务
      class FunctionTarget < TencentCloud::Common::AbstractModel
        # @param Function: 云函数相关信息
        # @type Function: :class:`Tencentcloud::Clb.v20180317.models.FunctionInfo`
        # @param Weight: 权重
        # @type Weight: Integer

        attr_accessor :Function, :Weight

        def initialize(function=nil, weight=nil)
          @Function = function
          @Weight = weight
        end

        def deserialize(params)
          unless params['Function'].nil?
            @Function = FunctionInfo.new
            @Function.deserialize(params['Function'])
          end
          @Weight = params['Weight']
        end
      end

      # 模型路由 Guardrail 防护配置
      class GuardrailConfig < TencentCloud::Common::AbstractModel
        # @param GuardrailId: <p>Guardrail 防护配置 ID。</p><p>DescribeModelRouterGuardrails 会返回该字段；DisassociateModelRouterGuardrails 和 ModifyModelRouterGuardrails 需要使用该字段定位要操作的防护配置。</p>
        # @type GuardrailId: String
        # @param Type: <p>Guardrail 防护类型。</p><p>枚举值：</p><ul><li>WAF：使用腾讯云 WAF LLM SDK 接入配置对模型路由请求进行安全防护。</li></ul><p>当前仅支持 WAF；AssociateModelRouterGuardrails 不传时默认为 WAF，ModifyModelRouterGuardrails 不传时沿用当前已关联 Guardrail 的 Type。</p>
        # @type Type: String
        # @param InstanceId: <p>关联的腾讯云 WAF 实例 ID。</p><p>ModifyModelRouterGuardrails 在 Type 为 WAF 时必填。DescribeModelRouterGuardrails 返回。接口会校验该 WAF 实例存在且属于当前账号。</p>
        # @type InstanceId: String
        # @param ServiceId: <p>WAF LLM SDK 接入服务 ID。</p><p>该字段对应 WAF LLM SDK 接入配置中的服务标识，用于指定模型路由请求要绑定的 WAF 防护配置。ModifyModelRouterGuardrails 在 Type 为 WAF 时必填。DescribeModelRouterGuardrails 返回。接口会校验该服务配置存在于指定的 WAF 实例下。</p>
        # @type ServiceId: String
        # @param InputCheckDepth: <p>最大检测对话轮数。</p><p>ModifyModelRouterGuardrails 选填；未传时沿用当前已关联 Guardrail 的 InputCheckDepth。DescribeModelRouterGuardrails 返回。若传入，取值必须为正整数。</p>
        # @type InputCheckDepth: Integer

        attr_accessor :GuardrailId, :Type, :InstanceId, :ServiceId, :InputCheckDepth

        def initialize(guardrailid=nil, type=nil, instanceid=nil, serviceid=nil, inputcheckdepth=nil)
          @GuardrailId = guardrailid
          @Type = type
          @InstanceId = instanceid
          @ServiceId = serviceid
          @InputCheckDepth = inputcheckdepth
        end

        def deserialize(params)
          @GuardrailId = params['GuardrailId']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @ServiceId = params['ServiceId']
          @InputCheckDepth = params['InputCheckDepth']
        end
      end

      # 健康检查信息。
      # 注意，自定义探测相关参数 目前只有少量区域灰度支持。
      class HealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthSwitch: 是否开启健康检查：1（开启）、0（关闭）。
        # 默认为开启。
        # @type HealthSwitch: Integer
        # @param TimeOut: 健康检查的响应超时时间，可选值：2~60，默认值：2，单位：秒。响应超时时间要小于检查间隔时间。
        # @type TimeOut: Integer
        # @param IntervalTime: 健康检查探测间隔时间，默认值：5，IPv4 CLB实例的取值范围为：2-300，IPv6 CLB 实例的取值范围为：5-300。单位：秒。
        # 说明：部分老旧 IPv4 CLB实例的取值范围为：5-300。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2~10，单位：次。
        # @type HealthNum: Integer
        # @param UnHealthNum: 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发异常，可选值：2~10，单位：次。
        # @type UnHealthNum: Integer
        # @param HttpCode: 健康检查状态码（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式）。可选值：1~31，默认 31。
        # 1 表示探测后返回值 1xx 代表健康，2 表示返回 2xx 代表健康，4 表示返回 3xx 代表健康，8 表示返回 4xx 代表健康，16 表示返回 5xx 代表健康。若希望多种返回码都可代表健康，则将相应的值相加。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCode: Integer
        # @param HttpCheckPath: 健康检查路径（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查域名，将在HTTP协议 Host 头字段中携带。（仅适用于HTTP/HTTPS监听器和TCP监听器的HTTP健康检查方式。针对TCP监听器，当使用HTTP健康检查方式时，该参数为必填项）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckDomain: String
        # @param HttpCheckMethod: 健康检查方法（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式），默认值：HEAD，可选值HEAD或GET。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckMethod: String
        # @param CheckPort: 自定义探测相关参数。健康检查端口，默认为后端服务的端口，除非您希望指定特定端口，否则建议留空。传参数值-1可恢复默认设置。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPort: Integer
        # @param ContextType: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查的输入格式，可取值：HEX或TEXT；取值为HEX时，SendContext和RecvContext的字符只能在0123456789ABCDEF中选取且长度必须是偶数位。（仅适用于TCP/UDP监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextType: String
        # @param SendContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查发送的请求内容，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendContext: String
        # @param RecvContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查返回的结果，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecvContext: String
        # @param CheckType: 健康检查使用的协议。取值 TCP | HTTP | HTTPS | GRPC | PING | CUSTOM，UDP监听器支持PING/CUSTOM，TCP监听器支持TCP/HTTP/CUSTOM，TCP_SSL/QUIC监听器支持TCP/HTTP，HTTP规则支持HTTP/GRPC，HTTPS规则支持HTTP/HTTPS/GRPC。HTTP监听器默认值为HTTP;TCP、TCP_SSL、QUIC监听器默认值为TCP;UDP监听器默认为PING;HTTPS监听器的CheckType默认值与后端转发协议一致。
        # @type CheckType: String
        # @param HttpVersion: HTTP版本。健康检查协议CheckType的值取HTTP时，必传此字段，代表后端服务的HTTP版本：HTTP/1.0、HTTP/1.1；（仅适用于TCP监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpVersion: String
        # @param SourceIpType: 健康检查源IP类型：0（使用LB的VIP作为源IP），1（使用100.64网段IP作为源IP）。
        # @type SourceIpType: Integer
        # @param ExtendedCode: GRPC健康检查状态码（仅适用于后端转发协议为GRPC的规则）。默认值为 12，可输入值为数值、多个数值、或者范围，例如 20 或 20,25 或 0-99
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendedCode: String

        attr_accessor :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnHealthNum, :HttpCode, :HttpCheckPath, :HttpCheckDomain, :HttpCheckMethod, :CheckPort, :ContextType, :SendContext, :RecvContext, :CheckType, :HttpVersion, :SourceIpType, :ExtendedCode

        def initialize(healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcode=nil, httpcheckpath=nil, httpcheckdomain=nil, httpcheckmethod=nil, checkport=nil, contexttype=nil, sendcontext=nil, recvcontext=nil, checktype=nil, httpversion=nil, sourceiptype=nil, extendedcode=nil)
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnHealthNum = unhealthnum
          @HttpCode = httpcode
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @HttpCheckMethod = httpcheckmethod
          @CheckPort = checkport
          @ContextType = contexttype
          @SendContext = sendcontext
          @RecvContext = recvcontext
          @CheckType = checktype
          @HttpVersion = httpversion
          @SourceIpType = sourceiptype
          @ExtendedCode = extendedcode
        end

        def deserialize(params)
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnHealthNum = params['UnHealthNum']
          @HttpCode = params['HttpCode']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @HttpCheckMethod = params['HttpCheckMethod']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @SendContext = params['SendContext']
          @RecvContext = params['RecvContext']
          @CheckType = params['CheckType']
          @HttpVersion = params['HttpVersion']
          @SourceIpType = params['SourceIpType']
          @ExtendedCode = params['ExtendedCode']
        end
      end

      # 闲置实例。
      class IdleLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名字
        # @type LoadBalancerName: String
        # @param Region: 负载均衡所在地域
        # @type Region: String
        # @param Vip: 负载均衡的vip
        # @type Vip: String
        # @param IdleReason: 闲置原因。NO_RULES：没有规则，NO_RS：有规则没有绑定子机。
        # @type IdleReason: String
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # @type Status: Integer
        # @param Forward: 负载均衡类型标识，1：负载均衡，0：传统型负载均衡。
        # @type Forward: Integer
        # @param Domain: 负载均衡域名
        # @type Domain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Region, :Vip, :IdleReason, :Status, :Forward, :Domain

        def initialize(loadbalancerid=nil, loadbalancername=nil, region=nil, vip=nil, idlereason=nil, status=nil, forward=nil, domain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Region = region
          @Vip = vip
          @IdleReason = idlereason
          @Status = status
          @Forward = forward
          @Domain = domain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Region = params['Region']
          @Vip = params['Vip']
          @IdleReason = params['IdleReason']
          @Status = params['Status']
          @Forward = params['Forward']
          @Domain = params['Domain']
        end
      end

      # 创建Key的信息
      class InputKeyInfo < TencentCloud::Common::AbstractModel
        # @param KeyName: <p>Key的名称</p>
        # @type KeyName: String
        # @param PlainKey: <p>导入的明文Key</p><p>仅允许导入Key模式下输入</p>
        # @type PlainKey: String

        attr_accessor :KeyName, :PlainKey

        def initialize(keyname=nil, plainkey=nil)
          @KeyName = keyname
          @PlainKey = plainkey
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @PlainKey = params['PlainKey']
        end
      end

      # InquirePriceCreateModelRouterResourcePackage请求参数结构体
      class InquirePriceCreateModelRouterResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageAmount: <p>模型路由资源包容量</p><p>取值范围：[1000, 10000000]</p><p>单次购买的模型路由资源包容量下限为1000，上限为10000000</p>
        # @type ModelRouterResourcePackageAmount: Integer

        attr_accessor :ModelRouterResourcePackageAmount

        def initialize(modelrouterresourcepackageamount=nil)
          @ModelRouterResourcePackageAmount = modelrouterresourcepackageamount
        end

        def deserialize(params)
          @ModelRouterResourcePackageAmount = params['ModelRouterResourcePackageAmount']
        end
      end

      # InquirePriceCreateModelRouterResourcePackage返回参数结构体
      class InquirePriceCreateModelRouterResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackagePrice: <p>模型路由资源包价格</p>
        # @type ModelRouterResourcePackagePrice: :class:`Tencentcloud::Clb.v20180317.models.ItemPrice`
        # @param FirstBuy: <p>本次购买资源包是否可享受首购优惠</p><p>1:可享受首购优惠，0:不可享受首购优惠</p>
        # @type FirstBuy: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterResourcePackagePrice, :FirstBuy, :RequestId

        def initialize(modelrouterresourcepackageprice=nil, firstbuy=nil, requestid=nil)
          @ModelRouterResourcePackagePrice = modelrouterresourcepackageprice
          @FirstBuy = firstbuy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouterResourcePackagePrice'].nil?
            @ModelRouterResourcePackagePrice = ItemPrice.new
            @ModelRouterResourcePackagePrice.deserialize(params['ModelRouterResourcePackagePrice'])
          end
          @FirstBuy = params['FirstBuy']
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRefundModelRouterResourcePackage请求参数结构体
      class InquirePriceRefundModelRouterResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageIds: <p>待退款的模型路由资源包Id</p><p>非有效状态或者设置了自动续订且自动续订已生效的资源包不允许退款。</p>
        # @type ModelRouterResourcePackageIds: Array

        attr_accessor :ModelRouterResourcePackageIds

        def initialize(modelrouterresourcepackageids=nil)
          @ModelRouterResourcePackageIds = modelrouterresourcepackageids
        end

        def deserialize(params)
          @ModelRouterResourcePackageIds = params['ModelRouterResourcePackageIds']
        end
      end

      # InquirePriceRefundModelRouterResourcePackage返回参数结构体
      class InquirePriceRefundModelRouterResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageRefundPrice: <p>待退款的模型路由资源包可退价格</p>
        # @type ModelRouterResourcePackageRefundPrice: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelRouterResourcePackageRefundPrice, :RequestId

        def initialize(modelrouterresourcepackagerefundprice=nil, requestid=nil)
          @ModelRouterResourcePackageRefundPrice = modelrouterresourcepackagerefundprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelRouterResourcePackageRefundPrice'].nil?
            @ModelRouterResourcePackageRefundPrice = []
            params['ModelRouterResourcePackageRefundPrice'].each do |i|
              modelrouterresourcepackagerefundprice_tmp = ModelRouterResourcePackageRefundPrice.new
              modelrouterresourcepackagerefundprice_tmp.deserialize(i)
              @ModelRouterResourcePackageRefundPrice << modelrouterresourcepackagerefundprice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateLoadBalancer请求参数结构体
      class InquiryPriceCreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerType: 询价的负载均衡类型，OPEN为公网类型，INTERNAL为内网类型
        # @type LoadBalancerType: String
        # @param LoadBalancerChargeType: 询价的收费类型，POSTPAID为按量计费，"PREPAID"为预付费包年包月
        # @type LoadBalancerChargeType: String
        # @param LoadBalancerChargePrepaid: 询价的收费周期。（仅包年包月支持该参数）
        # @type LoadBalancerChargePrepaid: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param InternetAccessible: 询价的网络计费方式
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param GoodsNum: 询价的负载均衡实例个数，默认为1
        # @type GoodsNum: Integer
        # @param ZoneId: 指定可用区询价。如：ap-guangzhou-1
        # @type ZoneId: String
        # @param SlaType: 包年包月询价时传性能容量型规格，如：<li>clb.c2.medium（标准型）</li><li>clb.c3.small（高阶型1）</li><li>clb.c3.medium（高阶型2）</li>
        # <li>clb.c4.small（超强型1）</li><li>clb.c4.medium（超强型2）</li><li>clb.c4.large（超强型3）</li><li>clb.c4.xlarge（超强型4）</li>
        # 按量付费询价时传SLA
        # @type SlaType: String
        # @param AddressIPVersion: IP版本，可取值：IPV4、IPV6、IPv6FullChain，不区分大小写，默认值 IPV4。说明：取值为IPV6表示为IPV6 NAT64版本；取值为IPv6FullChain，表示为IPv6版本。
        # @type AddressIPVersion: String
        # @param VipIsp: 仅适用于公网负载均衡。目前仅广州、上海、南京、济南、杭州、福州、北京、石家庄、武汉、长沙、成都、重庆地域支持静态单线 IP 线路类型，如需体验，请联系商务经理申请。申请通过后，即可选择中国移动（CMCC）、中国联通（CUCC）或中国电信（CTCC）的运营商类型，网络计费模式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。 如果不指定本参数，则默认使用BGP。可通过 DescribeResources 接口查询一个地域所支持的Isp。
        # @type VipIsp: String

        attr_accessor :LoadBalancerType, :LoadBalancerChargeType, :LoadBalancerChargePrepaid, :InternetAccessible, :GoodsNum, :ZoneId, :SlaType, :AddressIPVersion, :VipIsp

        def initialize(loadbalancertype=nil, loadbalancerchargetype=nil, loadbalancerchargeprepaid=nil, internetaccessible=nil, goodsnum=nil, zoneid=nil, slatype=nil, addressipversion=nil, vipisp=nil)
          @LoadBalancerType = loadbalancertype
          @LoadBalancerChargeType = loadbalancerchargetype
          @LoadBalancerChargePrepaid = loadbalancerchargeprepaid
          @InternetAccessible = internetaccessible
          @GoodsNum = goodsnum
          @ZoneId = zoneid
          @SlaType = slatype
          @AddressIPVersion = addressipversion
          @VipIsp = vipisp
        end

        def deserialize(params)
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerChargeType = params['LoadBalancerChargeType']
          unless params['LoadBalancerChargePrepaid'].nil?
            @LoadBalancerChargePrepaid = LBChargePrepaid.new
            @LoadBalancerChargePrepaid.deserialize(params['LoadBalancerChargePrepaid'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @GoodsNum = params['GoodsNum']
          @ZoneId = params['ZoneId']
          @SlaType = params['SlaType']
          @AddressIPVersion = params['AddressIPVersion']
          @VipIsp = params['VipIsp']
        end
      end

      # InquiryPriceCreateLoadBalancer返回参数结构体
      class InquiryPriceCreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应的价格。
        # @type Price: :class:`Tencentcloud::Clb.v20180317.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceModifyLoadBalancer请求参数结构体
      class InquiryPriceModifyLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param InternetAccessible: 修改后的网络带宽信息
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`

        attr_accessor :LoadBalancerId, :InternetAccessible

        def initialize(loadbalancerid=nil, internetaccessible=nil)
          @LoadBalancerId = loadbalancerid
          @InternetAccessible = internetaccessible
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
        end
      end

      # InquiryPriceModifyLoadBalancer返回参数结构体
      class InquiryPriceModifyLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 描述价格信息
        # @type Price: :class:`Tencentcloud::Clb.v20180317.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRefundLoadBalancer请求参数结构体
      class InquiryPriceRefundLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # InquiryPriceRefundLoadBalancer返回参数结构体
      class InquiryPriceRefundLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应的价格。
        # @type Price: :class:`Tencentcloud::Clb.v20180317.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewLoadBalancer请求参数结构体
      class InquiryPriceRenewLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param LoadBalancerChargePrepaid: 续费周期
        # @type LoadBalancerChargePrepaid: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`

        attr_accessor :LoadBalancerId, :LoadBalancerChargePrepaid

        def initialize(loadbalancerid=nil, loadbalancerchargeprepaid=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerChargePrepaid = loadbalancerchargeprepaid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['LoadBalancerChargePrepaid'].nil?
            @LoadBalancerChargePrepaid = LBChargePrepaid.new
            @LoadBalancerChargePrepaid.deserialize(params['LoadBalancerChargePrepaid'])
          end
        end
      end

      # InquiryPriceRenewLoadBalancer返回参数结构体
      class InquiryPriceRenewLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 表示续费价格
        # @type Price: :class:`Tencentcloud::Clb.v20180317.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 意图路由摘要信息对象（不含分层详情）。
      class IntentRouterItem < TencentCloud::Common::AbstractModel
        # @param CreatedTime: <p>创建时间（ISO 8601格式）。</p>
        # @type CreatedTime: String
        # @param IntentRouterId: <p>意图路由ID（ir-xxx格式）。</p>
        # @type IntentRouterId: String
        # @param RouteName: <p>路由名称（例如 IntentRouter/customer-support）。</p>
        # @type RouteName: String
        # @param RouterDescribe: <p>意图路由描述。</p>
        # @type RouterDescribe: String
        # @param Status: <p>状态。</p><p>枚举值：</p><ul><li>Provisioning：创建中</li><li>Active：正常</li><li>Configuring：配置中</li><li>ConfigureFailed：配置失败</li></ul>
        # @type Status: String
        # @param Tiers: <p>分层配置列表。</p>
        # @type Tiers: Array
        # @param UpdatedTime: <p>更新时间（ISO 8601格式）。</p>
        # @type UpdatedTime: String

        attr_accessor :CreatedTime, :IntentRouterId, :RouteName, :RouterDescribe, :Status, :Tiers, :UpdatedTime

        def initialize(createdtime=nil, intentrouterid=nil, routename=nil, routerdescribe=nil, status=nil, tiers=nil, updatedtime=nil)
          @CreatedTime = createdtime
          @IntentRouterId = intentrouterid
          @RouteName = routename
          @RouterDescribe = routerdescribe
          @Status = status
          @Tiers = tiers
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @CreatedTime = params['CreatedTime']
          @IntentRouterId = params['IntentRouterId']
          @RouteName = params['RouteName']
          @RouterDescribe = params['RouterDescribe']
          @Status = params['Status']
          unless params['Tiers'].nil?
            @Tiers = []
            params['Tiers'].each do |i|
              intentroutertieritem_tmp = IntentRouterTierItem.new
              intentroutertieritem_tmp.deserialize(i)
              @Tiers << intentroutertieritem_tmp
            end
          end
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # IntentRouter Tier 字典项
      class IntentRouterTierDictItem < TencentCloud::Common::AbstractModel
        # @param TierId: <p>Tier 标识</p><p>枚举值：</p><ul><li>default： 默认</li><li>general_chat： 通用对话</li><li>transformation_rewrite： 转换与改写</li><li>knowledge_qa： 知识问答</li><li>summarization： 摘要</li><li>extraction_structuring： 抽取与结构化输出</li><li>content_generation： 内容生成</li><li>coding_technical： 编码与技术</li><li>data_math_analysis： 数据、数学与分析</li><li>reasoning_planning： 推理与规划</li><li>tool_agentic_workflow： 工具与智能体工作流</li></ul>
        # @type TierId: String
        # @param DisplayName: <p>Tier 显示名称（已国际化）</p>
        # @type DisplayName: String
        # @param Description: <p>Tier 描述（已国际化）</p>
        # @type Description: String

        attr_accessor :TierId, :DisplayName, :Description

        def initialize(tierid=nil, displayname=nil, description=nil)
          @TierId = tierid
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @TierId = params['TierId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # 意图路由分层配置对象，包含分层名称和该分层下的模型列表。
      class IntentRouterTierItem < TencentCloud::Common::AbstractModel
        # @param Models: <p>该分层下的模型显示名称列表。</p>
        # @type Models: Array
        # @param TierName: <p>Tier 标识。<br>枚举值：</p><ul><li>复杂度分层（4 个固定值，需全部包含）：SIMPLE、MEDIUM、COMPLEX、REASONING</li><li>default： 默认</li><li>general_chat： 通用对话</li><li>transformation_rewrite： 转换与改写</li><li>knowledge_qa： 知识问答</li><li>summarization： 摘要</li><li>extraction_structuring： 抽取与结构化输出</li><li>content_generation： 内容生成</li><li>coding_technical： 编码与技术</li><li>data_math_analysis： 数据、数学与分析</li><li>reasoning_planning： 推理与规划</li><li>tool_agentic_workflow： 工具与智能体工作流</li></ul>
        # @type TierName: String

        attr_accessor :Models, :TierName

        def initialize(models=nil, tiername=nil)
          @Models = models
          @TierName = tiername
        end

        def deserialize(params)
          @Models = params['Models']
          @TierName = params['TierName']
        end
      end

      # 网络计费模式，最大出带宽
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: TRAFFIC_POSTPAID_BY_HOUR 按流量按小时后计费 ; BANDWIDTH_POSTPAID_BY_HOUR 按带宽按小时后计费，国际站用户不支持该计费模式; BANDWIDTH_PACKAGE 按带宽包计费;BANDWIDTH_PREPAID按带宽预付费。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 最大出带宽，单位Mbps，仅对公网属性的共享型、性能容量型和独占型 CLB 实例、以及内网属性的性能容量型 CLB 实例生效。
        # - 对于公网属性的共享型和独占型 CLB 实例，最大出带宽的范围为1Mbps-2048Mbps。
        # - 对于公网属性和内网属性的性能容量型 CLB实例，最大出带宽的范围为1Mbps-61440Mbps。
        # （调用CreateLoadBalancer创建LB时不指定此参数则设置为默认值10Mbps。此上限可调整）
        # @type InternetMaxBandwidthOut: Integer
        # @param BandwidthpkgSubType: 带宽包的类型，如 BGP（多线）。
        # 类型如下：
        # SINGLEISP: 单线
        # BGP: 多线
        # HIGH_QUALITY_BGP: 精品BGP共享带宽包
        # SINGLEISP_CMCC: 中国移动共享带宽包
        # SINGLEISP_CTCC: 中国电信共享带宽包
        # SINGLEISP_CUCC: 中国联通共享带宽包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthpkgSubType: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :BandwidthpkgSubType

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, bandwidthpkgsubtype=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @BandwidthpkgSubType = bandwidthpkgsubtype
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @BandwidthpkgSubType = params['BandwidthpkgSubType']
        end
      end

      # 描述了单项的价格信息
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 后付费单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param ChargeUnit: 后续计价单元，可取值范围：
        # HOUR：表示计价单元是按每小时来计算。当前涉及该计价单元的场景有：实例按小时后付费（POSTPAID_BY_HOUR）、带宽按小时后付费（BANDWIDTH_POSTPAID_BY_HOUR）；
        # GB：表示计价单元是按每GB来计算。当前涉及该计价单元的场景有：流量按小时后付费（TRAFFIC_POSTPAID_BY_HOUR）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeUnit: String
        # @param OriginalPrice: 预支费用的原价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预支费用的折扣价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param UnitPriceDiscount: 后付费的折扣单价，单位:元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param Discount: 折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float

        attr_accessor :UnitPrice, :ChargeUnit, :OriginalPrice, :DiscountPrice, :UnitPriceDiscount, :Discount

        def initialize(unitprice=nil, chargeunit=nil, originalprice=nil, discountprice=nil, unitpricediscount=nil, discount=nil)
          @UnitPrice = unitprice
          @ChargeUnit = chargeunit
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @UnitPriceDiscount = unitpricediscount
          @Discount = discount
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @ChargeUnit = params['ChargeUnit']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @Discount = params['Discount']
        end
      end

      # 异步任务信息
      class Job < TencentCloud::Common::AbstractModel
        # @param ApiName: <p>接口名称</p>
        # @type ApiName: String
        # @param RequestId: <p>请求ID</p>
        # @type RequestId: String
        # @param Status: <p>异步任务状态</p><p>枚举值：</p><ul><li>Processing： 进行中</li><li>Succeeded： 成功</li><li>Failed： 失败</li></ul>
        # @type Status: String
        # @param ResourceIds: <p>资源ID</p>
        # @type ResourceIds: Array

        attr_accessor :ApiName, :RequestId, :Status, :ResourceIds

        def initialize(apiname=nil, requestid=nil, status=nil, resourceids=nil)
          @ApiName = apiname
          @RequestId = requestid
          @Status = status
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @ApiName = params['ApiName']
          @RequestId = params['RequestId']
          @Status = params['Status']
          @ResourceIds = params['ResourceIds']
        end
      end

      # Key 详情
      class KeyDetailItem < TencentCloud::Common::AbstractModel
        # @param KeyId: Key 业务 ID
        # @type KeyId: String
        # @param CreatedAt: Key 创建时间（ISO 8601）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param Name: Key 显示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :KeyId, :CreatedAt, :Name

        def initialize(keyid=nil, createdat=nil, name=nil)
          @KeyId = keyid
          @CreatedAt = createdat
          @Name = name
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @CreatedAt = params['CreatedAt']
          @Name = params['Name']
        end
      end

      # Key信息
      class KeyInfo < TencentCloud::Common::AbstractModel
        # @param Blocked: <p>是否禁用Key</p>
        # @type Blocked: Boolean
        # @param BudgetId: <p>Key关联的Budget ID。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetId: String
        # @param BudgetName: <p>Key关联的Budget名称。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetName: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param CreditUsageSet: <p>Key按Budget刷新周期划分的Credit使用情况。</p><p>当关联Budget配置多个刷新周期时，按1d、7d、30d顺序返回各周期用量；未关联Budget时返回空数组。</p>
        # @type CreditUsageSet: Array
        # @param Key: <p>Key的值</p>
        # @type Key: String
        # @param KeyId: <p>Key的ID</p>
        # @type KeyId: String
        # @param KeyName: <p>Key名称</p>
        # @type KeyName: String
        # @param ModifiedTime: <p>修改时间</p>
        # @type ModifiedTime: String
        # @param RateLimitConfig: <p>限速信息</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForKey`
        # @param Status: <p>Key状态</p><p>枚举值：</p><ul><li>Active： 正常</li></ul>
        # @type Status: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param UserGroupId: <p>所属的用户组ID</p>
        # @type UserGroupId: String
        # @param UserGroupName: <p>所属的用户组名称</p>
        # @type UserGroupName: String

        attr_accessor :Blocked, :BudgetId, :BudgetName, :CreatedTime, :CreditUsageSet, :Key, :KeyId, :KeyName, :ModifiedTime, :RateLimitConfig, :Status, :Tags, :UserGroupId, :UserGroupName

        def initialize(blocked=nil, budgetid=nil, budgetname=nil, createdtime=nil, creditusageset=nil, key=nil, keyid=nil, keyname=nil, modifiedtime=nil, ratelimitconfig=nil, status=nil, tags=nil, usergroupid=nil, usergroupname=nil)
          @Blocked = blocked
          @BudgetId = budgetid
          @BudgetName = budgetname
          @CreatedTime = createdtime
          @CreditUsageSet = creditusageset
          @Key = key
          @KeyId = keyid
          @KeyName = keyname
          @ModifiedTime = modifiedtime
          @RateLimitConfig = ratelimitconfig
          @Status = status
          @Tags = tags
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
        end

        def deserialize(params)
          @Blocked = params['Blocked']
          @BudgetId = params['BudgetId']
          @BudgetName = params['BudgetName']
          @CreatedTime = params['CreatedTime']
          unless params['CreditUsageSet'].nil?
            @CreditUsageSet = []
            params['CreditUsageSet'].each do |i|
              creditusage_tmp = CreditUsage.new
              creditusage_tmp.deserialize(i)
              @CreditUsageSet << creditusage_tmp
            end
          end
          @Key = params['Key']
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @ModifiedTime = params['ModifiedTime']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForKey.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
        end
      end

      # Key 项
      class KeyItem < TencentCloud::Common::AbstractModel
        # @param ApiKey: Provider API Key
        # @type ApiKey: String
        # @param Name: Key 标识名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :ApiKey, :Name

        def initialize(apikey=nil, name=nil)
          @ApiKey = apikey
          @Name = name
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
          @Name = params['Name']
        end
      end

      # lb实例包年包月相关配置属性
      class LBChargePrepaid < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 续费类型：AUTO_RENEW 自动续费，  MANUAL_RENEW 手动续费
        # @type RenewFlag: String
        # @param Period: 购买时长，单位：月
        # @type Period: Integer

        attr_accessor :RenewFlag, :Period

        def initialize(renewflag=nil, period=nil)
          @RenewFlag = renewflag
          @Period = period
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @Period = params['Period']
        end
      end

      # 反查Lb绑定关系。
      class LBItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: lb的字符串id
        # @type LoadBalancerId: String
        # @param Vip: lb的vip
        # @type Vip: String
        # @param Listeners: 监听器规则
        # @type Listeners: Array
        # @param Region: LB所在地域
        # @type Region: String

        attr_accessor :LoadBalancerId, :Vip, :Listeners, :Region

        def initialize(loadbalancerid=nil, vip=nil, listeners=nil, region=nil)
          @LoadBalancerId = loadbalancerid
          @Vip = vip
          @Listeners = listeners
          @Region = region
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Vip = params['Vip']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listeneritem_tmp = ListenerItem.new
              listeneritem_tmp.deserialize(i)
              @Listeners << listeneritem_tmp
            end
          end
          @Region = params['Region']
        end
      end

      # 负载均衡的操作保护信息
      class LBOperateProtectInfo < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ProtectState: 保护状态，true：表示开启了操作保护，false：表示未开启操作保护。
        # @type ProtectState: Boolean
        # @param OperatorUin: 操作保护的设置uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUin: String
        # @param Description: 设置操作保护时的描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ModifyTime: 最后修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String

        attr_accessor :LoadBalancerId, :ProtectState, :OperatorUin, :Description, :ModifyTime

        def initialize(loadbalancerid=nil, protectstate=nil, operatoruin=nil, description=nil, modifytime=nil)
          @LoadBalancerId = loadbalancerid
          @ProtectState = protectstate
          @OperatorUin = operatoruin
          @Description = description
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ProtectState = params['ProtectState']
          @OperatorUin = params['OperatorUin']
          @Description = params['Description']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 查询类型
      class LbRsItem < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的字符串id，只支持字符串id。
        # 可以通过 [DescribeVpcs](https://cloud.tencent.com/document/api/215/15778) 接口查询。
        # @type VpcId: String
        # @param PrivateIp: 需要查询后端的内网 IP，可以是 CVM 和弹性网卡。
        # 可以通过 [DescribeAddresses](https://cloud.tencent.com/document/product/215/16702) 接口查询。
        # @type PrivateIp: String

        attr_accessor :VpcId, :PrivateIp

        def initialize(vpcid=nil, privateip=nil)
          @VpcId = vpcid
          @PrivateIp = privateip
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PrivateIp = params['PrivateIp']
        end
      end

      # 反查结果数据类型。
      class LbRsTargets < TencentCloud::Common::AbstractModel
        # @param Type: 内网ip类型。“cvm”或“eni”
        # @type Type: String
        # @param PrivateIp: 后端实例的内网ip。
        # @type PrivateIp: String
        # @param Port: 绑定后端实例的端口。
        # @type Port: Integer
        # @param VpcId: rs的vpcId
        # @type VpcId: Integer
        # @param Weight: rs的权重
        # @type Weight: Integer

        attr_accessor :Type, :PrivateIp, :Port, :VpcId, :Weight

        def initialize(type=nil, privateip=nil, port=nil, vpcid=nil, weight=nil)
          @Type = type
          @PrivateIp = privateip
          @Port = port
          @VpcId = vpcid
          @Weight = weight
        end

        def deserialize(params)
          @Type = params['Type']
          @PrivateIp = params['PrivateIp']
          @Port = params['Port']
          @VpcId = params['VpcId']
          @Weight = params['Weight']
        end
      end

      # 监听器的信息
      class Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: <p>负载均衡监听器 ID</p>
        # @type ListenerId: String
        # @param Protocol: <p>监听器协议，可选值：TCP、UDP、HTTP、HTTPS、TCP_SSL、QUIC</p>
        # @type Protocol: String
        # @param Port: <p>监听器端口，端口范围：1-65535</p>
        # @type Port: Integer
        # @param Certificate: <p>监听器绑定的证书信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateOutput`
        # @param HealthCheck: <p>监听器的健康检查信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Scheduler: <p>请求的调度方式。 WRR、LEAST_CONN、IP_HASH分别表示按权重轮询、最小连接数、IP Hash。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheduler: String
        # @param SessionExpireTime: <p>会话保持时间，单位：秒。可选值：30~3600，默认 0，默认不开启。此参数仅适用于TCP/UDP监听器。</p><p>单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionExpireTime: Integer
        # @param SniSwitch: <p>是否开启SNI特性，1：表示开启，0：表示不开启（本参数仅对于HTTPS监听器有意义）</p>
        # @type SniSwitch: Integer
        # @param Rules: <p>监听器下的全部转发规则（本参数仅对于HTTP/HTTPS监听器有意义）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param ListenerName: <p>监听器的名称</p>
        # @type ListenerName: String
        # @param CreateTime: <p>监听器的创建时间。</p>
        # @type CreateTime: String
        # @param EndPort: <p>端口段结束端口，端口范围：2-65535</p>
        # @type EndPort: Integer
        # @param TargetType: <p>后端服务器类型，可选值：NODE、POLARIS、TARGETGROUP、TARGETGROUP-V2</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: String
        # @param TargetGroup: <p>绑定的目标组基本信息；当监听器绑定目标组时，会返回该字段</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroup: :class:`Tencentcloud::Clb.v20180317.models.BasicTargetGroupInfo`
        # @param SessionType: <p>会话保持类型。NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。</p>
        # @type SessionType: String
        # @param KeepaliveEnable: <p>是否开启长连接，1开启，0关闭，（本参数仅对于HTTP/HTTPS监听器有意义）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepaliveEnable: Integer
        # @param Toa: <p>仅支持Nat64 CLB TCP监听器</p>
        # @type Toa: Boolean
        # @param DeregisterTargetRst: <p>重新调度功能，解绑后端服务开关，打开此开关，当解绑后端服务时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type DeregisterTargetRst: Boolean
        # @param AttrFlags: <p>监听器的属性</p>
        # @type AttrFlags: Array
        # @param TargetGroupList: <p>绑定的目标组列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroupList: Array
        # @param MaxConn: <p>监听器最大连接数，-1表示监听器维度不限速。</p>
        # @type MaxConn: Integer
        # @param MaxCps: <p>监听器最大新增连接数，-1表示监听器维度不限速。</p>
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: <p>空闲连接超时时间，仅支持TCP监听器。默认值:900；共享型实例和独占型实例取值范围：300～900，性能容量型实例取值范围:300～1980。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleConnectTimeout: Integer
        # @param RescheduleInterval: <p>重新调度触发持续时间，取值0~3600s。仅TCP/UDP监听器支持。触发重新调度后，长连接将会在设置的调度时间内断开并完成重新分配。</p><p>单位：秒</p>
        # @type RescheduleInterval: Integer
        # @param DataCompressMode: <p>数据压缩模式</p>
        # @type DataCompressMode: String
        # @param RescheduleStartTime: <p>重新调度启动时间，配置了重新调度启动时间后，会在启动时间到达时触发重新调度。</p>
        # @type RescheduleStartTime: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Certificate, :HealthCheck, :Scheduler, :SessionExpireTime, :SniSwitch, :Rules, :ListenerName, :CreateTime, :EndPort, :TargetType, :TargetGroup, :SessionType, :KeepaliveEnable, :Toa, :DeregisterTargetRst, :AttrFlags, :TargetGroupList, :MaxConn, :MaxCps, :IdleConnectTimeout, :RescheduleInterval, :DataCompressMode, :RescheduleStartTime

        def initialize(listenerid=nil, protocol=nil, port=nil, certificate=nil, healthcheck=nil, scheduler=nil, sessionexpiretime=nil, sniswitch=nil, rules=nil, listenername=nil, createtime=nil, endport=nil, targettype=nil, targetgroup=nil, sessiontype=nil, keepaliveenable=nil, toa=nil, deregistertargetrst=nil, attrflags=nil, targetgrouplist=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil, rescheduleinterval=nil, datacompressmode=nil, reschedulestarttime=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Certificate = certificate
          @HealthCheck = healthcheck
          @Scheduler = scheduler
          @SessionExpireTime = sessionexpiretime
          @SniSwitch = sniswitch
          @Rules = rules
          @ListenerName = listenername
          @CreateTime = createtime
          @EndPort = endport
          @TargetType = targettype
          @TargetGroup = targetgroup
          @SessionType = sessiontype
          @KeepaliveEnable = keepaliveenable
          @Toa = toa
          @DeregisterTargetRst = deregistertargetrst
          @AttrFlags = attrflags
          @TargetGroupList = targetgrouplist
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
          @RescheduleInterval = rescheduleinterval
          @DataCompressMode = datacompressmode
          @RescheduleStartTime = reschedulestarttime
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Certificate'].nil?
            @Certificate = CertificateOutput.new
            @Certificate.deserialize(params['Certificate'])
          end
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
          @SessionExpireTime = params['SessionExpireTime']
          @SniSwitch = params['SniSwitch']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleoutput_tmp = RuleOutput.new
              ruleoutput_tmp.deserialize(i)
              @Rules << ruleoutput_tmp
            end
          end
          @ListenerName = params['ListenerName']
          @CreateTime = params['CreateTime']
          @EndPort = params['EndPort']
          @TargetType = params['TargetType']
          unless params['TargetGroup'].nil?
            @TargetGroup = BasicTargetGroupInfo.new
            @TargetGroup.deserialize(params['TargetGroup'])
          end
          @SessionType = params['SessionType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @Toa = params['Toa']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          @AttrFlags = params['AttrFlags']
          unless params['TargetGroupList'].nil?
            @TargetGroupList = []
            params['TargetGroupList'].each do |i|
              basictargetgroupinfo_tmp = BasicTargetGroupInfo.new
              basictargetgroupinfo_tmp.deserialize(i)
              @TargetGroupList << basictargetgroupinfo_tmp
            end
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
          @RescheduleInterval = params['RescheduleInterval']
          @DataCompressMode = params['DataCompressMode']
          @RescheduleStartTime = params['RescheduleStartTime']
        end
      end

      # 监听器上绑定的后端服务的信息
      class ListenerBackend < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID
        # @type ListenerId: String
        # @param Protocol: 监听器的协议
        # @type Protocol: String
        # @param Port: 监听器的端口
        # @type Port: Integer
        # @param Rules: 监听器下的规则信息（仅适用于HTTP/HTTPS监听器）
        # @type Rules: Array
        # @param Targets: 监听器上绑定的后端服务列表（仅适用于TCP/UDP/TCP_SSL监听器）
        # @type Targets: Array
        # @param EndPort: 若支持端口段，则为端口段结束端口；若不支持端口段，则为0
        # @type EndPort: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Rules, :Targets, :EndPort

        def initialize(listenerid=nil, protocol=nil, port=nil, rules=nil, targets=nil, endport=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Rules = rules
          @Targets = targets
          @EndPort = endport
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruletargets_tmp = RuleTargets.new
              ruletargets_tmp.deserialize(i)
              @Rules << ruletargets_tmp
            end
          end
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              backend_tmp = Backend.new
              backend_tmp.deserialize(i)
              @Targets << backend_tmp
            end
          end
          @EndPort = params['EndPort']
        end
      end

      # 监听器的健康检查信息
      class ListenerHealth < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Protocol: 监听器的协议
        # @type Protocol: String
        # @param Port: 监听器的端口
        # @type Port: Integer
        # @param Rules: 监听器的转发规则列表
        # @type Rules: Array

        attr_accessor :ListenerId, :ListenerName, :Protocol, :Port, :Rules

        def initialize(listenerid=nil, listenername=nil, protocol=nil, port=nil, rules=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @Port = port
          @Rules = rules
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulehealth_tmp = RuleHealth.new
              rulehealth_tmp.deserialize(i)
              @Rules << rulehealth_tmp
            end
          end
        end
      end

      # 反查监听器类型
      class ListenerItem < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Protocol: 监听器协议
        # @type Protocol: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param Rules: 绑定规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param Targets: 四层绑定对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param EndPort: 端口段监听器的结束端口
        # @type EndPort: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Rules, :Targets, :EndPort

        def initialize(listenerid=nil, protocol=nil, port=nil, rules=nil, targets=nil, endport=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Rules = rules
          @Targets = targets
          @EndPort = endport
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulesitems_tmp = RulesItems.new
              rulesitems_tmp.deserialize(i)
              @Rules << rulesitems_tmp
            end
          end
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              lbrstargets_tmp = LbRsTargets.new
              lbrstargets_tmp.deserialize(i)
              @Targets << lbrstargets_tmp
            end
          end
          @EndPort = params['EndPort']
        end
      end

      # 负载均衡实例的信息
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性；对于内网属性的负载均衡，可通过绑定EIP出公网，具体可参考EIP文档[绑定弹性公网IP](https://cloud.tencent.com/document/product/215/16700)。
        # @type LoadBalancerType: String
        # @param Forward: 负载均衡类型标识，1：负载均衡，0：传统型负载均衡。
        # @type Forward: Integer
        # @param Domain: 负载均衡实例的域名，仅公网传统型和域名型负载均衡实例才提供该字段。逐步下线中，建议用LoadBalancerDomain替代。
        # @type Domain: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 列表。
        # @type LoadBalancerVips: Array
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # @type Status: Integer
        # @param CreateTime: 负载均衡实例的创建时间。
        # 格式：YYYY-MM-DD HH:mm:ss
        # @type CreateTime: String
        # @param StatusTime: 负载均衡实例的上次状态转换时间。
        # 格式：YYYY-MM-DD HH:mm:ss
        # @type StatusTime: String
        # @param ProjectId: 负载均衡实例所属的项目 ID， 0 表示默认项目。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络的 ID
        # @type VpcId: String
        # @param OpenBgp: 高防 LB 的标识，1：高防负载均衡 0：非高防负载均衡。
        # @type OpenBgp: Integer
        # @param Snat: 是否开启 SNAT，在 2016 年 12 月份之前的传统型内网负载均衡都是开启了 SNAT 的。
        # @type Snat: Boolean
        # @param Isolation: 是否被隔离，0：表示未被隔离，1：表示被隔离。
        # @type Isolation: Integer
        # @param Log: 用户开启日志的信息，日志只有公网属性创建了 HTTP 、HTTPS 监听器的负载均衡才会有日志。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String
        # @param SubnetId: 负载均衡实例所在的子网（仅对内网VPC型LB有意义）
        # @type SubnetId: String
        # @param Tags: 负载均衡实例的标签信息
        # @type Tags: Array
        # @param SecureGroups: 负载均衡实例的安全组
        # @type SecureGroups: Array
        # @param TargetRegionInfo: 负载均衡实例绑定的后端设备的基本信息
        # @type TargetRegionInfo: :class:`Tencentcloud::Clb.v20180317.models.TargetRegionInfo`
        # @param AnycastZone: anycast负载均衡的发布域，对于非anycast的负载均衡，此字段返回为空字符串
        # @type AnycastZone: String
        # @param AddressIPVersion: IP版本，ipv4 | ipv6
        # @type AddressIPVersion: String
        # @param NumericalVpcId: 数值形式的私有网络 ID，可以通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)接口获取。
        # @type NumericalVpcId: Integer
        # @param VipIsp: 负载均衡IP地址所属的运营商。

        # - BGP :  BGP（多线）
        # - CMCC：中国移动单线
        # - CTCC：中国电信单线
        # - CUCC：中国联通单线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VipIsp: String
        # @param MasterZone: 主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: :class:`Tencentcloud::Clb.v20180317.models.ZoneInfo`
        # @param BackupZoneSet: 备可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupZoneSet: Array
        # @param IsolatedTime: 负载均衡实例被隔离的时间。
        # 格式：YYYY-MM-DD HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param ExpireTime: 负载均衡实例的过期时间，仅对预付费负载均衡生效。
        # 格式：YYYY-MM-DD HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param ChargeType: 负载均衡实例的计费类型，PREPAID：包年包月，POSTPAID_BY_HOUR：按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param NetworkAttributes: 负载均衡实例的网络属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAttributes: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param PrepaidAttributes: 负载均衡实例的预付费相关属性，仅在 ChargeType=PREPAID 时显示。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidAttributes: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param LogSetId: 负载均衡日志服务(CLS)的日志集ID
        # @type LogSetId: String
        # @param LogTopicId: 负载均衡日志服务(CLS)的日志主题ID
        # @type LogTopicId: String
        # @param AddressIPv6: 负载均衡实例的IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPv6: String
        # @param ExtraInfo: 暂做保留，一般用户无需关注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Clb.v20180317.models.ExtraInfo`
        # @param IsDDos: 是否可绑定高防包
        # @type IsDDos: Boolean
        # @param ConfigId: 负载均衡维度的个性化配置ID
        # @type ConfigId: String
        # @param LoadBalancerPassToTarget: 后端服务是否放通来自LB的流量
        # @type LoadBalancerPassToTarget: Boolean
        # @param ExclusiveCluster: 内网独占集群
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param IPv6Mode: IP地址版本为ipv6时此字段有意义，IPv6Nat64 | IPv6FullChain。
        # IPv6Nat64: 基于 NAT64 IPv6 过渡技术实现的负载均衡器。
        # IPv6FullChain：基于 IPv6 单栈技术实现的负载均衡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Mode: String
        # @param SnatPro: 是否开启SnatPro。
        # @type SnatPro: Boolean
        # @param SnatIps: 开启SnatPro负载均衡后，SnatIp列表。
        # @type SnatIps: Array
        # @param SlaType: 性能容量型规格。<ul><li> clb.c1.small：简约型规格 </li><li> clb.c2.medium：标准型规格 </li><li> clb.c3.small：高阶型1规格 </li><li> clb.c3.medium：高阶型2规格 </li><li> clb.c4.small：超强型1规格 </li><li> clb.c4.medium：超强型2规格 </li><li> clb.c4.large：超强型3规格 </li><li> clb.c4.xlarge：超强型4规格 </li><li>""：非性能容量型实例</li></ul>
        # @type SlaType: String
        # @param IsBlock: vip是否被封堵
        # @type IsBlock: Boolean
        # @param IsBlockTime: 封堵或解封时间。
        # 格式：YYYY-MM-DD HH:mm:ss。
        # @type IsBlockTime: String
        # @param LocalBgp: IP类型是否是本地BGP
        # @type LocalBgp: Boolean
        # @param ClusterTag: 7层独占标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTag: String
        # @param MixIpTarget: 开启IPv6FullChain负载均衡7层监听器支持混绑IPv4/IPv6目标功能。
        # @type MixIpTarget: Boolean
        # @param Zones: 私有网络内网负载均衡，就近接入模式下规则所落在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param NfvInfo: CLB是否为NFV，空：不是，l7nfv：七层是NFV。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NfvInfo: String
        # @param HealthLogSetId: 负载均衡日志服务(CLS)的健康检查日志集ID
        # @type HealthLogSetId: String
        # @param HealthLogTopicId: 负载均衡日志服务(CLS)的健康检查日志主题ID
        # @type HealthLogTopicId: String
        # @param ClusterIds: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIds: Array
        # @param AttributeFlags: 负载均衡的属性，传入字符串数组来决定是否开启
        # DeleteProtect: 删除保护，开启后防止负载均衡被误删除。
        # UserInVisible: 用户不可见，控制负载均衡对用户的可见性。
        # BlockStatus: 阻塞状态，用于限制负载均衡的某些操作或流量。
        # NoLBNat: 禁用负载均衡的NAT功能，用于特定场景下的流量直接转发。
        # BanStatus: 封禁状态，用于暂停负载均衡服务或限制访问。
        # ShiftupFlag: 升配标志，用于标识负载均衡需要升级配置或性能。
        # Stop: 停止状态，开启后负载均衡暂停服务。
        # NoVpcGw: 不使用VPC网关，用于绕过VPC网关直接处理流量。
        # SgInTgw: 安全组在TGW（Transit Gateway）中，涉及网络安全策略配置。
        # SharedLimitFlag: 共享限制标志，用于控制负载均衡的共享资源限制。
        # WafFlag: Web应用防火墙（WAF）标志，开启后启用WAF保护。
        # IsDomainCLB: 域名型负载均衡，标识负载均衡是否基于域名进行流量分发。
        # IPv6Snat: IPv6源地址转换（SNAT），用于IPv6网络的源地址处理。
        # HideDomain: 隐藏域名，用于隐私保护或特定场景下不暴露域名。
        # JumboFrame: 巨型帧支持，开启后支持更大的数据帧以提高网络效率。
        # NoLBNatL4IPdc: 四层IP直连无NAT，用于四层负载均衡直接转发IP流量。
        # VpcGwL3Service: VPC网关三层服务，涉及三层网络服务的网关功能。
        # Ipv62Flag: IPv6扩展标志，用于特定的IPv6功能支持。
        # Ipv62ExclusiveFlag: IPv6独占标志，用于专属IPv6流量处理。
        # BgpPro: BGP Pro 支持。
        # ToaClean: TOA（TCP Option Address）清理，清除TCP选项中的地址信息。
        # @type AttributeFlags: Array
        # @param LoadBalancerDomain: 负载均衡实例的域名。
        # @type LoadBalancerDomain: String
        # @param Egress: 网络出口
        # @type Egress: String
        # @param Exclusive: 实例类型是否为独占型。1：独占型实例。0：非独占型实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exclusive: Integer
        # @param TargetCount: 已绑定的后端服务数量。
        # @type TargetCount: Integer
        # @param AssociateEndpoint: 负载均衡实例关联的Endpoint id。
        # @type AssociateEndpoint: String
        # @param AvailableZoneAffinityInfo: 可用区转发亲和信息
        # @type AvailableZoneAffinityInfo: :class:`Tencentcloud::Clb.v20180317.models.AvailableZoneAffinityInfo`

        attr_accessor :LoadBalancerId, :LoadBalancerName, :LoadBalancerType, :Forward, :Domain, :LoadBalancerVips, :Status, :CreateTime, :StatusTime, :ProjectId, :VpcId, :OpenBgp, :Snat, :Isolation, :Log, :SubnetId, :Tags, :SecureGroups, :TargetRegionInfo, :AnycastZone, :AddressIPVersion, :NumericalVpcId, :VipIsp, :MasterZone, :BackupZoneSet, :IsolatedTime, :ExpireTime, :ChargeType, :NetworkAttributes, :PrepaidAttributes, :LogSetId, :LogTopicId, :AddressIPv6, :ExtraInfo, :IsDDos, :ConfigId, :LoadBalancerPassToTarget, :ExclusiveCluster, :IPv6Mode, :SnatPro, :SnatIps, :SlaType, :IsBlock, :IsBlockTime, :LocalBgp, :ClusterTag, :MixIpTarget, :Zones, :NfvInfo, :HealthLogSetId, :HealthLogTopicId, :ClusterIds, :AttributeFlags, :LoadBalancerDomain, :Egress, :Exclusive, :TargetCount, :AssociateEndpoint, :AvailableZoneAffinityInfo
        extend Gem::Deprecate
        deprecate :Log, :none, 2026, 7
        deprecate :Log=, :none, 2026, 7

        def initialize(loadbalancerid=nil, loadbalancername=nil, loadbalancertype=nil, forward=nil, domain=nil, loadbalancervips=nil, status=nil, createtime=nil, statustime=nil, projectid=nil, vpcid=nil, openbgp=nil, snat=nil, isolation=nil, log=nil, subnetid=nil, tags=nil, securegroups=nil, targetregioninfo=nil, anycastzone=nil, addressipversion=nil, numericalvpcid=nil, vipisp=nil, masterzone=nil, backupzoneset=nil, isolatedtime=nil, expiretime=nil, chargetype=nil, networkattributes=nil, prepaidattributes=nil, logsetid=nil, logtopicid=nil, addressipv6=nil, extrainfo=nil, isddos=nil, configid=nil, loadbalancerpasstotarget=nil, exclusivecluster=nil, ipv6mode=nil, snatpro=nil, snatips=nil, slatype=nil, isblock=nil, isblocktime=nil, localbgp=nil, clustertag=nil, mixiptarget=nil, zones=nil, nfvinfo=nil, healthlogsetid=nil, healthlogtopicid=nil, clusterids=nil, attributeflags=nil, loadbalancerdomain=nil, egress=nil, exclusive=nil, targetcount=nil, associateendpoint=nil, availablezoneaffinityinfo=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @Domain = domain
          @LoadBalancerVips = loadbalancervips
          @Status = status
          @CreateTime = createtime
          @StatusTime = statustime
          @ProjectId = projectid
          @VpcId = vpcid
          @OpenBgp = openbgp
          @Snat = snat
          @Isolation = isolation
          @Log = log
          @SubnetId = subnetid
          @Tags = tags
          @SecureGroups = securegroups
          @TargetRegionInfo = targetregioninfo
          @AnycastZone = anycastzone
          @AddressIPVersion = addressipversion
          @NumericalVpcId = numericalvpcid
          @VipIsp = vipisp
          @MasterZone = masterzone
          @BackupZoneSet = backupzoneset
          @IsolatedTime = isolatedtime
          @ExpireTime = expiretime
          @ChargeType = chargetype
          @NetworkAttributes = networkattributes
          @PrepaidAttributes = prepaidattributes
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @AddressIPv6 = addressipv6
          @ExtraInfo = extrainfo
          @IsDDos = isddos
          @ConfigId = configid
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @ExclusiveCluster = exclusivecluster
          @IPv6Mode = ipv6mode
          @SnatPro = snatpro
          @SnatIps = snatips
          @SlaType = slatype
          @IsBlock = isblock
          @IsBlockTime = isblocktime
          @LocalBgp = localbgp
          @ClusterTag = clustertag
          @MixIpTarget = mixiptarget
          @Zones = zones
          @NfvInfo = nfvinfo
          @HealthLogSetId = healthlogsetid
          @HealthLogTopicId = healthlogtopicid
          @ClusterIds = clusterids
          @AttributeFlags = attributeflags
          @LoadBalancerDomain = loadbalancerdomain
          @Egress = egress
          @Exclusive = exclusive
          @TargetCount = targetcount
          @AssociateEndpoint = associateendpoint
          @AvailableZoneAffinityInfo = availablezoneaffinityinfo
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @Domain = params['Domain']
          @LoadBalancerVips = params['LoadBalancerVips']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StatusTime = params['StatusTime']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @OpenBgp = params['OpenBgp']
          @Snat = params['Snat']
          @Isolation = params['Isolation']
          @Log = params['Log']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @SecureGroups = params['SecureGroups']
          unless params['TargetRegionInfo'].nil?
            @TargetRegionInfo = TargetRegionInfo.new
            @TargetRegionInfo.deserialize(params['TargetRegionInfo'])
          end
          @AnycastZone = params['AnycastZone']
          @AddressIPVersion = params['AddressIPVersion']
          @NumericalVpcId = params['NumericalVpcId']
          @VipIsp = params['VipIsp']
          unless params['MasterZone'].nil?
            @MasterZone = ZoneInfo.new
            @MasterZone.deserialize(params['MasterZone'])
          end
          unless params['BackupZoneSet'].nil?
            @BackupZoneSet = []
            params['BackupZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @BackupZoneSet << zoneinfo_tmp
            end
          end
          @IsolatedTime = params['IsolatedTime']
          @ExpireTime = params['ExpireTime']
          @ChargeType = params['ChargeType']
          unless params['NetworkAttributes'].nil?
            @NetworkAttributes = InternetAccessible.new
            @NetworkAttributes.deserialize(params['NetworkAttributes'])
          end
          unless params['PrepaidAttributes'].nil?
            @PrepaidAttributes = LBChargePrepaid.new
            @PrepaidAttributes.deserialize(params['PrepaidAttributes'])
          end
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @AddressIPv6 = params['AddressIPv6']
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @IsDDos = params['IsDDos']
          @ConfigId = params['ConfigId']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @IPv6Mode = params['IPv6Mode']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @SlaType = params['SlaType']
          @IsBlock = params['IsBlock']
          @IsBlockTime = params['IsBlockTime']
          @LocalBgp = params['LocalBgp']
          @ClusterTag = params['ClusterTag']
          @MixIpTarget = params['MixIpTarget']
          @Zones = params['Zones']
          @NfvInfo = params['NfvInfo']
          @HealthLogSetId = params['HealthLogSetId']
          @HealthLogTopicId = params['HealthLogTopicId']
          @ClusterIds = params['ClusterIds']
          @AttributeFlags = params['AttributeFlags']
          @LoadBalancerDomain = params['LoadBalancerDomain']
          @Egress = params['Egress']
          @Exclusive = params['Exclusive']
          @TargetCount = params['TargetCount']
          @AssociateEndpoint = params['AssociateEndpoint']
          unless params['AvailableZoneAffinityInfo'].nil?
            @AvailableZoneAffinityInfo = AvailableZoneAffinityInfo.new
            @AvailableZoneAffinityInfo.deserialize(params['AvailableZoneAffinityInfo'])
          end
        end
      end

      # 负载均衡详细信息
      class LoadBalancerDetail < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # Public：公网属性，Private：内网属性；对于内网属性的负载均衡，可通过绑定EIP出公网，具体可参考EIP文档。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Address: 负载均衡实例的 VIP 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param AddressIPv6: 负载均衡实例 VIP 的IPv6地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPv6: String
        # @param AddressIPVersion: 负载均衡实例IP版本，IPv4 | IPv6。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPVersion: String
        # @param IPv6Mode: 负载均衡实例IPv6地址类型，IPv6Nat64 | IPv6FullChain。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Mode: String
        # @param Zone: 负载均衡实例所在可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param AddressIsp: 负载均衡实例IP地址所属的ISP。取值范围：BGP（多线）、CMCC（中国移动）、CUCC（中国联通）、CTCC（中国电信）、INTERNAL（内网）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIsp: String
        # @param VpcId: 负载均衡实例所属私有网络的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param ProjectId: 负载均衡实例所属的项目 ID， 0 表示默认项目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param CreateTime: 负载均衡实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ChargeType: 负载均衡实例的计费类型。取值范围：PREPAID预付费、POSTPAID_BY_HOUR按量付费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param NetworkAttributes: 负载均衡实例的网络属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAttributes: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param PrepaidAttributes: 负载均衡实例的预付费相关属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidAttributes: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param ExtraInfo: 暂做保留，一般用户无需关注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Clb.v20180317.models.ExtraInfo`
        # @param ConfigId: 负载均衡维度的个性化配置ID，多个配置用逗号隔开。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param Tags: 负载均衡实例的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ListenerId: 负载均衡监听器 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Protocol: 监听器协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 监听器端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param LocationId: 转发规则的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationId: String
        # @param Domain: 转发规则的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param TargetId: 后端目标ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetId: String
        # @param TargetAddress: 后端目标的IP地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAddress: String
        # @param TargetPort: 后端目标监听端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPort: Integer
        # @param TargetWeight: 后端目标转发权重。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetWeight: Integer
        # @param Isolation: 0：表示未被隔离，1：表示被隔离。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isolation: Integer
        # @param SecurityGroup: 负载均衡绑定的安全组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: Array
        # @param LoadBalancerPassToTarget: 负载均衡安全组上移特性是否开启标识。取值范围：1表示开启、0表示未开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerPassToTarget: Integer
        # @param TargetHealth: 后端目标健康状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHealth: String
        # @param Domains: 转发规则的域名列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: String
        # @param SlaveZone: 多可用区负载均衡实例所选备区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZone: Array
        # @param Zones: 内网负载均衡实例所在可用区，由白名单CLB_Internal_Zone控制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param SniSwitch: 是否开启SNI特性，1：表示开启，0：表示不开启（本参数仅对于HTTPS监听器有意义）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniSwitch: Integer
        # @param LoadBalancerDomain: 负载均衡实例的域名。
        # @type LoadBalancerDomain: String
        # @param Egress: 网络出口
        # @type Egress: String
        # @param AttributeFlags: 负载均衡的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeFlags: Array
        # @param SlaType: 负载均衡实例的规格类型信息<ul><li> clb.c1.small：简约型规格 </li><li>clb.c2.medium：标准型规格 </li><li> clb.c3.small：高阶型1规格 </li><li> clb.c3.medium：高阶型2规格 </li><li> clb.c4.small：超强型1规格 </li><li> clb.c4.medium：超强型2规格 </li><li> clb.c4.large：超强型3规格 </li><li> clb.c4.xlarge：超强型4规格 </li><li>""：非性能容量型实例</li></ul>

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaType: String
        # @param Exclusive: 0：表示非独占型实例，1：表示独占型态实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exclusive: Integer
        # @param AvailableZoneAffinityInfo: 可用区转发亲和信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableZoneAffinityInfo: :class:`Tencentcloud::Clb.v20180317.models.AvailableZoneAffinityInfo`

        attr_accessor :LoadBalancerId, :LoadBalancerName, :LoadBalancerType, :Status, :Address, :AddressIPv6, :AddressIPVersion, :IPv6Mode, :Zone, :AddressIsp, :VpcId, :ProjectId, :CreateTime, :ChargeType, :NetworkAttributes, :PrepaidAttributes, :ExtraInfo, :ConfigId, :Tags, :ListenerId, :Protocol, :Port, :LocationId, :Domain, :Url, :TargetId, :TargetAddress, :TargetPort, :TargetWeight, :Isolation, :SecurityGroup, :LoadBalancerPassToTarget, :TargetHealth, :Domains, :SlaveZone, :Zones, :SniSwitch, :LoadBalancerDomain, :Egress, :AttributeFlags, :SlaType, :Exclusive, :AvailableZoneAffinityInfo

        def initialize(loadbalancerid=nil, loadbalancername=nil, loadbalancertype=nil, status=nil, address=nil, addressipv6=nil, addressipversion=nil, ipv6mode=nil, zone=nil, addressisp=nil, vpcid=nil, projectid=nil, createtime=nil, chargetype=nil, networkattributes=nil, prepaidattributes=nil, extrainfo=nil, configid=nil, tags=nil, listenerid=nil, protocol=nil, port=nil, locationid=nil, domain=nil, url=nil, targetid=nil, targetaddress=nil, targetport=nil, targetweight=nil, isolation=nil, securitygroup=nil, loadbalancerpasstotarget=nil, targethealth=nil, domains=nil, slavezone=nil, zones=nil, sniswitch=nil, loadbalancerdomain=nil, egress=nil, attributeflags=nil, slatype=nil, exclusive=nil, availablezoneaffinityinfo=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @Status = status
          @Address = address
          @AddressIPv6 = addressipv6
          @AddressIPVersion = addressipversion
          @IPv6Mode = ipv6mode
          @Zone = zone
          @AddressIsp = addressisp
          @VpcId = vpcid
          @ProjectId = projectid
          @CreateTime = createtime
          @ChargeType = chargetype
          @NetworkAttributes = networkattributes
          @PrepaidAttributes = prepaidattributes
          @ExtraInfo = extrainfo
          @ConfigId = configid
          @Tags = tags
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @TargetId = targetid
          @TargetAddress = targetaddress
          @TargetPort = targetport
          @TargetWeight = targetweight
          @Isolation = isolation
          @SecurityGroup = securitygroup
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @TargetHealth = targethealth
          @Domains = domains
          @SlaveZone = slavezone
          @Zones = zones
          @SniSwitch = sniswitch
          @LoadBalancerDomain = loadbalancerdomain
          @Egress = egress
          @AttributeFlags = attributeflags
          @SlaType = slatype
          @Exclusive = exclusive
          @AvailableZoneAffinityInfo = availablezoneaffinityinfo
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @Status = params['Status']
          @Address = params['Address']
          @AddressIPv6 = params['AddressIPv6']
          @AddressIPVersion = params['AddressIPVersion']
          @IPv6Mode = params['IPv6Mode']
          @Zone = params['Zone']
          @AddressIsp = params['AddressIsp']
          @VpcId = params['VpcId']
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @ChargeType = params['ChargeType']
          unless params['NetworkAttributes'].nil?
            @NetworkAttributes = InternetAccessible.new
            @NetworkAttributes.deserialize(params['NetworkAttributes'])
          end
          unless params['PrepaidAttributes'].nil?
            @PrepaidAttributes = LBChargePrepaid.new
            @PrepaidAttributes.deserialize(params['PrepaidAttributes'])
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @ConfigId = params['ConfigId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @TargetId = params['TargetId']
          @TargetAddress = params['TargetAddress']
          @TargetPort = params['TargetPort']
          @TargetWeight = params['TargetWeight']
          @Isolation = params['Isolation']
          @SecurityGroup = params['SecurityGroup']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @TargetHealth = params['TargetHealth']
          @Domains = params['Domains']
          @SlaveZone = params['SlaveZone']
          @Zones = params['Zones']
          @SniSwitch = params['SniSwitch']
          @LoadBalancerDomain = params['LoadBalancerDomain']
          @Egress = params['Egress']
          @AttributeFlags = params['AttributeFlags']
          @SlaType = params['SlaType']
          @Exclusive = params['Exclusive']
          unless params['AvailableZoneAffinityInfo'].nil?
            @AvailableZoneAffinityInfo = AvailableZoneAffinityInfo.new
            @AvailableZoneAffinityInfo.deserialize(params['AvailableZoneAffinityInfo'])
          end
        end
      end

      # 负载均衡实例的健康检查状态
      class LoadBalancerHealth < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称
        # @type LoadBalancerName: String
        # @param Listeners: 监听器列表
        # @type Listeners: Array

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Listeners

        def initialize(loadbalancerid=nil, loadbalancername=nil, listeners=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Listeners = listeners
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerhealth_tmp = ListenerHealth.new
              listenerhealth_tmp.deserialize(i)
              @Listeners << listenerhealth_tmp
            end
          end
        end
      end

      # 负载均衡流量数据。
      class LoadBalancerTraffic < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名字
        # @type LoadBalancerName: String
        # @param Region: 负载均衡所在地域
        # @type Region: String
        # @param Vip: 负载均衡的vip
        # @type Vip: String
        # @param OutBandwidth: 最大出带宽，单位：Mbps
        # @type OutBandwidth: Float
        # @param Domain: CLB域名
        # @type Domain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Region, :Vip, :OutBandwidth, :Domain

        def initialize(loadbalancerid=nil, loadbalancername=nil, region=nil, vip=nil, outbandwidth=nil, domain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Region = region
          @Vip = vip
          @OutBandwidth = outbandwidth
          @Domain = domain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Region = params['Region']
          @Vip = params['Vip']
          @OutBandwidth = params['OutBandwidth']
          @Domain = params['Domain']
        end
      end

      # ManualRewrite请求参数结构体
      class ManualRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param SourceListenerId: 源监听器 ID。
        # @type SourceListenerId: String
        # @param TargetListenerId: 目标监听器 ID。
        # @type TargetListenerId: String
        # @param RewriteInfos: 转发规则之间的重定向关系。
        # @type RewriteInfos: Array

        attr_accessor :LoadBalancerId, :SourceListenerId, :TargetListenerId, :RewriteInfos

        def initialize(loadbalancerid=nil, sourcelistenerid=nil, targetlistenerid=nil, rewriteinfos=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerId = sourcelistenerid
          @TargetListenerId = targetlistenerid
          @RewriteInfos = rewriteinfos
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerId = params['SourceListenerId']
          @TargetListenerId = params['TargetListenerId']
          unless params['RewriteInfos'].nil?
            @RewriteInfos = []
            params['RewriteInfos'].each do |i|
              rewritelocationmap_tmp = RewriteLocationMap.new
              rewritelocationmap_tmp.deserialize(i)
              @RewriteInfos << rewritelocationmap_tmp
            end
          end
        end
      end

      # ManualRewrite返回参数结构体
      class ManualRewriteResponse < TencentCloud::Common::AbstractModel
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

      # MigrateClassicalLoadBalancers请求参数结构体
      class MigrateClassicalLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 传统型负载均衡ID数组
        # @type LoadBalancerIds: Array
        # @param ExclusiveCluster: 独占集群信息
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`

        attr_accessor :LoadBalancerIds, :ExclusiveCluster

        def initialize(loadbalancerids=nil, exclusivecluster=nil)
          @LoadBalancerIds = loadbalancerids
          @ExclusiveCluster = exclusivecluster
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
        end
      end

      # MigrateClassicalLoadBalancers返回参数结构体
      class MigrateClassicalLoadBalancersResponse < TencentCloud::Common::AbstractModel
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

      # 每个待探测模态的详细结果。
      class ModalityProbeDetail < TencentCloud::Common::AbstractModel
        # @param Modality: <p>探测的模态</p>
        # @type Modality: String
        # @param Status: <p>探测结果</p><p>枚举值：</p><ul><li>Supported： 模型支持该输入模态</li><li>Unsupported： 模型不支持该输入模态</li><li>Inconclusive： 模型未明确是否支持该模态，待重新探测</li></ul>
        # @type Status: String
        # @param ErrorInfo: <p>探测该模态请求的报错详情</p>
        # @type ErrorInfo: :class:`Tencentcloud::Clb.v20180317.models.ProviderTestConnectionErrorInfo`

        attr_accessor :Modality, :Status, :ErrorInfo

        def initialize(modality=nil, status=nil, errorinfo=nil)
          @Modality = modality
          @Status = status
          @ErrorInfo = errorinfo
        end

        def deserialize(params)
          @Modality = params['Modality']
          @Status = params['Status']
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ProviderTestConnectionErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
        end
      end

      # 模型别名对象
      class ModelAlias < TencentCloud::Common::AbstractModel
        # @param Coefficient: <p>模型积分系数配置，包含 <code>InputCoefficient</code>、<code>InputCachedCoefficient</code> 和 <code>OutputCoefficient</code>。</p><p>未配置时输入系数默认为 25，缓存命中输入系数默认为 3，输出系数默认为 100。</p>
        # @type Coefficient: :class:`Tencentcloud::Clb.v20180317.models.Coefficient`
        # @param ModelAliasName: <p>模型别名名称。</p><p>若用户配置了模型别名，则为该别名；未配置时为原始模型名称。</p>
        # @type ModelAliasName: String
        # @param ServiceProviderCoefficientSet: <p>该模型别名下各 BYOK 实例（ServiceProvider）的积分系数明细，体现 ModelAlias 与 ServiceProvider 的层级关系。</p><p>默认返回该别名引用的全部实例；某实例返回 <code>Coefficient</code> 表示其单独配置了 ServiceProvider 维度系数，否则继承顶层 ModelAlias 的 <code>Coefficient</code>。</p><p>该别名当前无有效 BYOK 引用时返回空数组。</p>
        # @type ServiceProviderCoefficientSet: Array
        # @param Source: <p>模型来源。</p><p>枚举值：</p><ul><li>BYOK：用户 BYOK 配置的模型。</li></ul>
        # @type Source: String
        # @param Status: <p>状态</p><p>枚举值：</p><ul><li>Active： 正常可用</li><li>Configuring： 变配中</li><li>ConfigureFailed： 变配失败</li></ul>
        # @type Status: String

        attr_accessor :Coefficient, :ModelAliasName, :ServiceProviderCoefficientSet, :Source, :Status

        def initialize(coefficient=nil, modelaliasname=nil, serviceprovidercoefficientset=nil, source=nil, status=nil)
          @Coefficient = coefficient
          @ModelAliasName = modelaliasname
          @ServiceProviderCoefficientSet = serviceprovidercoefficientset
          @Source = source
          @Status = status
        end

        def deserialize(params)
          unless params['Coefficient'].nil?
            @Coefficient = Coefficient.new
            @Coefficient.deserialize(params['Coefficient'])
          end
          @ModelAliasName = params['ModelAliasName']
          unless params['ServiceProviderCoefficientSet'].nil?
            @ServiceProviderCoefficientSet = []
            params['ServiceProviderCoefficientSet'].each do |i|
              serviceprovidercoefficient_tmp = ServiceProviderCoefficient.new
              serviceprovidercoefficient_tmp.deserialize(i)
              @ServiceProviderCoefficientSet << serviceprovidercoefficient_tmp
            end
          end
          @Source = params['Source']
          @Status = params['Status']
        end
      end

      # 模型关联信息
      class ModelAssociation < TencentCloud::Common::AbstractModel
        # @param InputModalitiesUnion: <p>该模型最大可支持的输入多模态能力列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul>
        # @type InputModalitiesUnion: Array
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param ServiceProviders: <p>BYOK列表</p>
        # @type ServiceProviders: Array
        # @param Type: <p>模型类型</p>
        # @type Type: String

        attr_accessor :InputModalitiesUnion, :ModelName, :ServiceProviders, :Type

        def initialize(inputmodalitiesunion=nil, modelname=nil, serviceproviders=nil, type=nil)
          @InputModalitiesUnion = inputmodalitiesunion
          @ModelName = modelname
          @ServiceProviders = serviceproviders
          @Type = type
        end

        def deserialize(params)
          @InputModalitiesUnion = params['InputModalitiesUnion']
          @ModelName = params['ModelName']
          unless params['ServiceProviders'].nil?
            @ServiceProviders = []
            params['ServiceProviders'].each do |i|
              serviceprovider_tmp = ServiceProvider.new
              serviceprovider_tmp.deserialize(i)
              @ServiceProviders << serviceprovider_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # 模型可用性
      class ModelAvailability < TencentCloud::Common::AbstractModel
        # @param InputModalities: <p>该模型所有健康BYOK实例下支持的输入多模态能力的并集。模型不健康时返回空列表。</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul>
        # @type InputModalities: Array
        # @param Model: <p>模型</p>
        # @type Model: String
        # @param Status: <p>可用性状态</p><p>枚举值：</p><ul><li>Available： 可用</li><li>Unavailable： 不可用</li><li>Unknown： 未探测</li></ul>
        # @type Status: String

        attr_accessor :InputModalities, :Model, :Status

        def initialize(inputmodalities=nil, model=nil, status=nil)
          @InputModalities = inputmodalities
          @Model = model
          @Status = status
        end

        def deserialize(params)
          @InputModalities = params['InputModalities']
          @Model = params['Model']
          @Status = params['Status']
        end
      end

      # BYOK的健康检查结果
      class ModelHealthCheckResults < TencentCloud::Common::AbstractModel
        # @param ProviderKeyId: <p>BYOK的KeyID</p>
        # @type ProviderKeyId: String
        # @param Model: <p>模型</p>
        # @type Model: String
        # @param Status: <p>健康检查状态</p>
        # @type Status: String

        attr_accessor :ProviderKeyId, :Model, :Status

        def initialize(providerkeyid=nil, model=nil, status=nil)
          @ProviderKeyId = providerkeyid
          @Model = model
          @Status = status
        end

        def deserialize(params)
          @ProviderKeyId = params['ProviderKeyId']
          @Model = params['Model']
          @Status = params['Status']
        end
      end

      # model 信息
      class ModelItem < TencentCloud::Common::AbstractModel
        # @param ModelId: <p>模型唯一标识, 用于实际访问</p>
        # @type ModelId: String
        # @param InputModalities: <p>该模型当前支持的输入多模态能力列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul><p>默认值：text</p>
        # @type InputModalities: Array
        # @param ModelAlias: <p>模型别名, 可以用于实际访问</p>
        # @type ModelAlias: String

        attr_accessor :ModelId, :InputModalities, :ModelAlias

        def initialize(modelid=nil, inputmodalities=nil, modelalias=nil)
          @ModelId = modelid
          @InputModalities = inputmodalities
          @ModelAlias = modelalias
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @InputModalities = params['InputModalities']
          @ModelAlias = params['ModelAlias']
        end
      end

      # 模型及其 Key 信息
      class ModelKeyInfoItem < TencentCloud::Common::AbstractModel
        # @param AccessType: <p>接入类型</p>
        # @type AccessType: String
        # @param ApiBase: <p>API Base URL</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiBase: String
        # @param CreatedAt: <p>模型创建时间（ISO 8601）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param HostHeader: <p>自定义host header</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostHeader: String
        # @param KeyCount: <p>Key 数量</p>
        # @type KeyCount: Integer
        # @param Keys: <p>Key 详情列表</p>
        # @type Keys: Array
        # @param ModelIdsWithAlias: <p>model信息</p>
        # @type ModelIdsWithAlias: Array
        # @param ModelProvider: <p>模型供应商</p>
        # @type ModelProvider: String
        # @param Protocol: <p>模型协议</p>
        # @type Protocol: String
        # @param ServiceIps: <p>内部通信占用IP</p>
        # @type ServiceIps: Array
        # @param ServiceProviderId: <p>服务提供商ID</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>服务提供商自定义名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceProviderName: String
        # @param Status: <p>模型状态</p><p>枚举值：</p><ul><li>Active： 运行中</li><li>Provisioning： 创建中</li><li>Configuring： 变配中</li><li>Deleting： 删除中</li><li>ProvisionFailed： 创建失败</li><li>ConfigureFailed： 变配失败</li><li>DeletionFailed： 删除失败</li><li>Disabled： 已禁用</li></ul>
        # @type Status: String
        # @param SubnetId: <p>子网 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Tags: <p>标签信息</p>
        # @type Tags: Array
        # @param VerifySSL: <p>是否校验上游SSL</p>
        # @type VerifySSL: Boolean
        # @param VpcId: <p>VPC 实例 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String

        attr_accessor :AccessType, :ApiBase, :CreatedAt, :HostHeader, :KeyCount, :Keys, :ModelIdsWithAlias, :ModelProvider, :Protocol, :ServiceIps, :ServiceProviderId, :ServiceProviderName, :Status, :SubnetId, :Tags, :VerifySSL, :VpcId

        def initialize(accesstype=nil, apibase=nil, createdat=nil, hostheader=nil, keycount=nil, keys=nil, modelidswithalias=nil, modelprovider=nil, protocol=nil, serviceips=nil, serviceproviderid=nil, serviceprovidername=nil, status=nil, subnetid=nil, tags=nil, verifyssl=nil, vpcid=nil)
          @AccessType = accesstype
          @ApiBase = apibase
          @CreatedAt = createdat
          @HostHeader = hostheader
          @KeyCount = keycount
          @Keys = keys
          @ModelIdsWithAlias = modelidswithalias
          @ModelProvider = modelprovider
          @Protocol = protocol
          @ServiceIps = serviceips
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
          @Status = status
          @SubnetId = subnetid
          @Tags = tags
          @VerifySSL = verifyssl
          @VpcId = vpcid
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @ApiBase = params['ApiBase']
          @CreatedAt = params['CreatedAt']
          @HostHeader = params['HostHeader']
          @KeyCount = params['KeyCount']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              keydetailitem_tmp = KeyDetailItem.new
              keydetailitem_tmp.deserialize(i)
              @Keys << keydetailitem_tmp
            end
          end
          unless params['ModelIdsWithAlias'].nil?
            @ModelIdsWithAlias = []
            params['ModelIdsWithAlias'].each do |i|
              serviceprovidermodelitem_tmp = ServiceProviderModelItem.new
              serviceprovidermodelitem_tmp.deserialize(i)
              @ModelIdsWithAlias << serviceprovidermodelitem_tmp
            end
          end
          @ModelProvider = params['ModelProvider']
          @Protocol = params['Protocol']
          @ServiceIps = params['ServiceIps']
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VerifySSL = params['VerifySSL']
          @VpcId = params['VpcId']
        end
      end

      # 按模型标识聚合的信息
      class ModelNameAggregatedItem < TencentCloud::Common::AbstractModel
        # @param ModelName: <p>模型标识显示名称（优先使用 model_alias，否则使用 model_name）</p>
        # @type ModelName: String
        # @param ServiceProviders: <p>关联的服务商列表</p>
        # @type ServiceProviders: Array
        # @param InputModalitiesUnion: <p>该模型最大可支持的输入多模态能力列表。</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul>
        # @type InputModalitiesUnion: Array

        attr_accessor :ModelName, :ServiceProviders, :InputModalitiesUnion

        def initialize(modelname=nil, serviceproviders=nil, inputmodalitiesunion=nil)
          @ModelName = modelname
          @ServiceProviders = serviceproviders
          @InputModalitiesUnion = inputmodalitiesunion
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          unless params['ServiceProviders'].nil?
            @ServiceProviders = []
            params['ServiceProviders'].each do |i|
              serviceprovideritem_tmp = ServiceProviderItem.new
              serviceprovideritem_tmp.deserialize(i)
              @ServiceProviders << serviceprovideritem_tmp
            end
          end
          @InputModalitiesUnion = params['InputModalitiesUnion']
        end
      end

      # 查询单个实例详细信息
      class ModelRouterDetail < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>模型路由实例关联的Budget ID。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetId: String
        # @param BudgetName: <p>模型路由实例关联的Budget名称。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetName: String
        # @param ClusterInfo: <p>集群信息</p>
        # @type ClusterInfo: :class:`Tencentcloud::Clb.v20180317.models.ClusterInfo`
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param CreditUsageSet: <p>模型路由实例按Budget刷新周期划分的Credit使用情况。</p><p>当关联Budget配置多个刷新周期时，按1d、7d、30d顺序返回各周期用量；未关联Budget时返回空数组。</p>
        # @type CreditUsageSet: Array
        # @param Domain: <p>模型路由实例域名</p>
        # @type Domain: String
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param ModelRouterName: <p>模型路由名称</p><p>默认值：-</p>
        # @type ModelRouterName: String
        # @param ModelRouterType: <p>模型路由类型</p><p>枚举值：</p><ul><li>Shared： 共享型</li><li>Enterprise： 企业级</li></ul>
        # @type ModelRouterType: String
        # @param ModifiedTime: <p>修改时间</p>
        # @type ModifiedTime: String
        # @param NetworkType: <p>模型路由实例网络类型</p><p>枚举值：</p><ul><li>Internet： 公网</li><li>Intranet： 内网</li></ul>
        # @type NetworkType: String
        # @param RateLimitConfig: <p>模型路由限速信息</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForModelRouter`
        # @param RouterSetting: <p>模型路由的路由配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouterSetting: :class:`Tencentcloud::Clb.v20180317.models.RouterSettingWithFallBack`
        # @param SecurityGroups: <p>安全组ID列表</p>
        # @type SecurityGroups: Array
        # @param SecurityStatus: <p>模型路由实例的安全状态</p><p>枚举值：</p><ul><li>Normal： 正常</li><li>Banned： 已封禁</li><li>Frozen： 已冻结</li></ul>
        # @type SecurityStatus: String
        # @param ServiceEndPoints: <p>模型路由网络配置列表</p>
        # @type ServiceEndPoints: Array
        # @param Status: <p>模型路由实例状态</p><p>枚举值：</p><ul><li>Active： 运行中</li><li>Provisioning： 创建中</li><li>Configuring： 变配中</li></ul>
        # @type Status: String
        # @param SubnetId: <p>模型路由实例所属子网的ID</p>
        # @type SubnetId: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param TradeStatus: <p>模型路由实例的计费状态</p><p>枚举值：</p><ul><li>Normal： 正常</li><li>Isolated： 已隔离</li></ul>
        # @type TradeStatus: String
        # @param Vip: <p>模型路由实例VIP</p>
        # @type Vip: String
        # @param VpcId: <p>模型路由实例所属VPC的ID</p>
        # @type VpcId: String

        attr_accessor :BudgetId, :BudgetName, :ClusterInfo, :CreatedTime, :CreditUsageSet, :Domain, :ModelRouterId, :ModelRouterName, :ModelRouterType, :ModifiedTime, :NetworkType, :RateLimitConfig, :RouterSetting, :SecurityGroups, :SecurityStatus, :ServiceEndPoints, :Status, :SubnetId, :Tags, :TradeStatus, :Vip, :VpcId

        def initialize(budgetid=nil, budgetname=nil, clusterinfo=nil, createdtime=nil, creditusageset=nil, domain=nil, modelrouterid=nil, modelroutername=nil, modelroutertype=nil, modifiedtime=nil, networktype=nil, ratelimitconfig=nil, routersetting=nil, securitygroups=nil, securitystatus=nil, serviceendpoints=nil, status=nil, subnetid=nil, tags=nil, tradestatus=nil, vip=nil, vpcid=nil)
          @BudgetId = budgetid
          @BudgetName = budgetname
          @ClusterInfo = clusterinfo
          @CreatedTime = createdtime
          @CreditUsageSet = creditusageset
          @Domain = domain
          @ModelRouterId = modelrouterid
          @ModelRouterName = modelroutername
          @ModelRouterType = modelroutertype
          @ModifiedTime = modifiedtime
          @NetworkType = networktype
          @RateLimitConfig = ratelimitconfig
          @RouterSetting = routersetting
          @SecurityGroups = securitygroups
          @SecurityStatus = securitystatus
          @ServiceEndPoints = serviceendpoints
          @Status = status
          @SubnetId = subnetid
          @Tags = tags
          @TradeStatus = tradestatus
          @Vip = vip
          @VpcId = vpcid
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          @BudgetName = params['BudgetName']
          unless params['ClusterInfo'].nil?
            @ClusterInfo = ClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          @CreatedTime = params['CreatedTime']
          unless params['CreditUsageSet'].nil?
            @CreditUsageSet = []
            params['CreditUsageSet'].each do |i|
              creditusage_tmp = CreditUsage.new
              creditusage_tmp.deserialize(i)
              @CreditUsageSet << creditusage_tmp
            end
          end
          @Domain = params['Domain']
          @ModelRouterId = params['ModelRouterId']
          @ModelRouterName = params['ModelRouterName']
          @ModelRouterType = params['ModelRouterType']
          @ModifiedTime = params['ModifiedTime']
          @NetworkType = params['NetworkType']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForModelRouter.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['RouterSetting'].nil?
            @RouterSetting = RouterSettingWithFallBack.new
            @RouterSetting.deserialize(params['RouterSetting'])
          end
          @SecurityGroups = params['SecurityGroups']
          @SecurityStatus = params['SecurityStatus']
          unless params['ServiceEndPoints'].nil?
            @ServiceEndPoints = []
            params['ServiceEndPoints'].each do |i|
              serviceendpoints_tmp = ServiceEndPoints.new
              serviceendpoints_tmp.deserialize(i)
              @ServiceEndPoints << serviceendpoints_tmp
            end
          end
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TradeStatus = params['TradeStatus']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
        end
      end

      # 模型路由日志
      class ModelRouterLog < TencentCloud::Common::AbstractModel
        # @param KeyId: <p>API Key的ID</p>
        # @type KeyId: String
        # @param Model: <p>模型</p>
        # @type Model: String
        # @param Provider: <p>所属厂商</p>
        # @type Provider: String
        # @param Status: <p>请求状态</p><p>枚举值：</p><ul><li>failure： 失败</li><li>success： 成功</li></ul>
        # @type Status: String
        # @param MaxRetries: <p>最大重试次数</p>
        # @type MaxRetries: Integer
        # @param TotalTokens: <p>单次请求消耗的总Token数量</p>
        # @type TotalTokens: Integer
        # @param InputTokens: <p>单次请求输入消耗的Token数量</p>
        # @type InputTokens: Integer
        # @param OutputTokens: <p>单次请求输出消耗的Token数量</p>
        # @type OutputTokens: Integer
        # @param RequestDuration: <p>请求耗时</p><p>单位：ms</p>
        # @type RequestDuration: Integer
        # @param RequesterIp: <p>请求IP</p>
        # @type RequesterIp: String
        # @param StartTime: <p>日志查询起始时间</p>
        # @type StartTime: String
        # @param EndTime: <p>日志查询结束时间</p>
        # @type EndTime: String

        attr_accessor :KeyId, :Model, :Provider, :Status, :MaxRetries, :TotalTokens, :InputTokens, :OutputTokens, :RequestDuration, :RequesterIp, :StartTime, :EndTime

        def initialize(keyid=nil, model=nil, provider=nil, status=nil, maxretries=nil, totaltokens=nil, inputtokens=nil, outputtokens=nil, requestduration=nil, requesterip=nil, starttime=nil, endtime=nil)
          @KeyId = keyid
          @Model = model
          @Provider = provider
          @Status = status
          @MaxRetries = maxretries
          @TotalTokens = totaltokens
          @InputTokens = inputtokens
          @OutputTokens = outputtokens
          @RequestDuration = requestduration
          @RequesterIp = requesterip
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Model = params['Model']
          @Provider = params['Provider']
          @Status = params['Status']
          @MaxRetries = params['MaxRetries']
          @TotalTokens = params['TotalTokens']
          @InputTokens = params['InputTokens']
          @OutputTokens = params['OutputTokens']
          @RequestDuration = params['RequestDuration']
          @RequesterIp = params['RequesterIp']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 模型路由关联的模型
      class ModelRouterModel < TencentCloud::Common::AbstractModel
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param Provider: <p>所属厂商</p>
        # @type Provider: String
        # @param Type: <p>模型类型。</p><p>枚举值：</p><ul><li>BYOK： BYOK类型</li><li>Platform： 平台类型</li></ul>
        # @type Type: String
        # @param ServiceProviderId: <p>服务商/模型 ID（byok_model.model_id，形如 model-xxxxxxxx；Platform 类型不传）</p>
        # @type ServiceProviderId: String

        attr_accessor :ModelName, :Provider, :Type, :ServiceProviderId

        def initialize(modelname=nil, provider=nil, type=nil, serviceproviderid=nil)
          @ModelName = modelname
          @Provider = provider
          @Type = type
          @ServiceProviderId = serviceproviderid
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @Provider = params['Provider']
          @Type = params['Type']
          @ServiceProviderId = params['ServiceProviderId']
        end
      end

      # 模型路由资源包
      class ModelRouterPackage < TencentCloud::Common::AbstractModel
        # @param CapacitySize: <p>模型路由资源包总容量</p>
        # @type CapacitySize: String
        # @param CapacityRemain: <p>模型路由资源包总余量</p>
        # @type CapacityRemain: String
        # @param CapacitySizePrecise: <p>模型路由资源包容量精确值</p>
        # @type CapacitySizePrecise: String
        # @param CapacityRemainPrecise: <p>模型路由资源包总余量精确值</p>
        # @type CapacityRemainPrecise: String
        # @param AutoPurchaseFlag: <p>模型路由资源包设置用尽续购标志位 0:未设置 1:用尽到期新购</p><p>取值范围：[0, 1]</p>
        # @type AutoPurchaseFlag: Integer
        # @param ModelRouterResourcePackageId: <p>模型路由资源包Id</p>
        # @type ModelRouterResourcePackageId: String
        # @param CreateTime: <p>模型路由资源包创建时间</p>
        # @type CreateTime: String
        # @param DeductionStartTime: <p>模型路由资源包抵扣开始时间</p>
        # @type DeductionStartTime: String
        # @param DeductionEndTime: <p>模型路由资源包抵扣截止时间</p>
        # @type DeductionEndTime: String
        # @param ExpiredTime: <p>模型路由资源包失效时间</p>
        # @type ExpiredTime: String
        # @param Status: <p>模型路由资源包状态</p><p>枚举值：</p><ul><li>0： 有效</li><li>1： 已退款</li><li>2： 已过期</li><li>3： 已用完</li></ul>
        # @type Status: Integer

        attr_accessor :CapacitySize, :CapacityRemain, :CapacitySizePrecise, :CapacityRemainPrecise, :AutoPurchaseFlag, :ModelRouterResourcePackageId, :CreateTime, :DeductionStartTime, :DeductionEndTime, :ExpiredTime, :Status

        def initialize(capacitysize=nil, capacityremain=nil, capacitysizeprecise=nil, capacityremainprecise=nil, autopurchaseflag=nil, modelrouterresourcepackageid=nil, createtime=nil, deductionstarttime=nil, deductionendtime=nil, expiredtime=nil, status=nil)
          @CapacitySize = capacitysize
          @CapacityRemain = capacityremain
          @CapacitySizePrecise = capacitysizeprecise
          @CapacityRemainPrecise = capacityremainprecise
          @AutoPurchaseFlag = autopurchaseflag
          @ModelRouterResourcePackageId = modelrouterresourcepackageid
          @CreateTime = createtime
          @DeductionStartTime = deductionstarttime
          @DeductionEndTime = deductionendtime
          @ExpiredTime = expiredtime
          @Status = status
        end

        def deserialize(params)
          @CapacitySize = params['CapacitySize']
          @CapacityRemain = params['CapacityRemain']
          @CapacitySizePrecise = params['CapacitySizePrecise']
          @CapacityRemainPrecise = params['CapacityRemainPrecise']
          @AutoPurchaseFlag = params['AutoPurchaseFlag']
          @ModelRouterResourcePackageId = params['ModelRouterResourcePackageId']
          @CreateTime = params['CreateTime']
          @DeductionStartTime = params['DeductionStartTime']
          @DeductionEndTime = params['DeductionEndTime']
          @ExpiredTime = params['ExpiredTime']
          @Status = params['Status']
        end
      end

      # 模型路由相关配额
      class ModelRouterQuota < TencentCloud::Common::AbstractModel
        # @param QuotaType: <p>配额名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaType: String
        # @param ResourceId: <p>资源ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param Limit: <p>配额上限</p><p>单位：个</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Used: <p>已使用配额数量</p><p>单位：个</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Used: Integer
        # @param Available: <p>剩余配额数量</p><p>单位：个</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Available: Integer

        attr_accessor :QuotaType, :ResourceId, :Limit, :Used, :Available

        def initialize(quotatype=nil, resourceid=nil, limit=nil, used=nil, available=nil)
          @QuotaType = quotatype
          @ResourceId = resourceid
          @Limit = limit
          @Used = used
          @Available = available
        end

        def deserialize(params)
          @QuotaType = params['QuotaType']
          @ResourceId = params['ResourceId']
          @Limit = params['Limit']
          @Used = params['Used']
          @Available = params['Available']
        end
      end

      # 模型路由资源包抵扣信息
      class ModelRouterResourcePackageDeduction < TencentCloud::Common::AbstractModel
        # @param ActualDosage: <p>实际抵扣量</p>
        # @type ActualDosage: String
        # @param AfterDeductionRemain: <p>抵扣后包剩余量</p>
        # @type AfterDeductionRemain: String
        # @param BeforeDeductionRemain: <p>抵扣前包剩余量</p>
        # @type BeforeDeductionRemain: String
        # @param DeductionTime: <p>抵扣时间</p>
        # @type DeductionTime: String
        # @param Dosage: <p>原始用量</p>
        # @type Dosage: String
        # @param EndTime: <p>用量结束时间</p>
        # @type EndTime: String
        # @param ModelRouterId: <p>产生用量的模型路由实例Id</p>
        # @type ModelRouterId: String
        # @param ModelRouterResourcePackageId: <p>模型路由资源包Id</p>
        # @type ModelRouterResourcePackageId: String
        # @param StartTime: <p>用量开始时间</p>
        # @type StartTime: String

        attr_accessor :ActualDosage, :AfterDeductionRemain, :BeforeDeductionRemain, :DeductionTime, :Dosage, :EndTime, :ModelRouterId, :ModelRouterResourcePackageId, :StartTime

        def initialize(actualdosage=nil, afterdeductionremain=nil, beforedeductionremain=nil, deductiontime=nil, dosage=nil, endtime=nil, modelrouterid=nil, modelrouterresourcepackageid=nil, starttime=nil)
          @ActualDosage = actualdosage
          @AfterDeductionRemain = afterdeductionremain
          @BeforeDeductionRemain = beforedeductionremain
          @DeductionTime = deductiontime
          @Dosage = dosage
          @EndTime = endtime
          @ModelRouterId = modelrouterid
          @ModelRouterResourcePackageId = modelrouterresourcepackageid
          @StartTime = starttime
        end

        def deserialize(params)
          @ActualDosage = params['ActualDosage']
          @AfterDeductionRemain = params['AfterDeductionRemain']
          @BeforeDeductionRemain = params['BeforeDeductionRemain']
          @DeductionTime = params['DeductionTime']
          @Dosage = params['Dosage']
          @EndTime = params['EndTime']
          @ModelRouterId = params['ModelRouterId']
          @ModelRouterResourcePackageId = params['ModelRouterResourcePackageId']
          @StartTime = params['StartTime']
        end
      end

      # 模型路由资源包退款价格
      class ModelRouterResourcePackageRefundPrice < TencentCloud::Common::AbstractModel
        # @param ModelRouterPackageId: <p>模型路由资源包Id</p>
        # @type ModelRouterPackageId: String
        # @param Price: <p>可退还金额</p>
        # @type Price: Float

        attr_accessor :ModelRouterPackageId, :Price

        def initialize(modelrouterpackageid=nil, price=nil)
          @ModelRouterPackageId = modelrouterpackageid
          @Price = price
        end

        def deserialize(params)
          @ModelRouterPackageId = params['ModelRouterPackageId']
          @Price = params['Price']
        end
      end

      # 模型路由列表
      class ModelRouterSet < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>模型路由实例关联的Budget ID。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetId: String
        # @param BudgetName: <p>模型路由实例关联的Budget名称。</p><p>未关联Budget时返回空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetName: String
        # @param ClusterInfo: <p>集群信息</p>
        # @type ClusterInfo: :class:`Tencentcloud::Clb.v20180317.models.ClusterInfo`
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param CreditUsageSet: <p>模型路由实例按Budget刷新周期划分的Credit使用情况。</p><p>当关联Budget配置多个刷新周期时，按1d、7d、30d顺序返回各周期用量；未关联Budget时返回空数组。</p>
        # @type CreditUsageSet: Array
        # @param Domain: <p>模型路由实例域名</p>
        # @type Domain: String
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param ModelRouterName: <p>模型路由名称</p><p>默认值：-</p>
        # @type ModelRouterName: String
        # @param ModelRouterType: <p>模型路由类型</p><p>枚举值：</p><ul><li>Shared： 共享型</li><li>Enterprise： 企业级</li></ul>
        # @type ModelRouterType: String
        # @param ModifiedTime: <p>修改时间</p>
        # @type ModifiedTime: String
        # @param NetworkType: <p>模型路由实例网络类型</p><p>枚举值：</p><ul><li>Internet： 公网</li><li>Intranet： 内网</li></ul>
        # @type NetworkType: String
        # @param SecurityStatus: <p>模型路由实例的安全状态</p><p>枚举值：</p><ul><li>Normal： 正常</li><li>Banned： 已封禁</li><li>Frozen： 已冻结</li></ul>
        # @type SecurityStatus: String
        # @param Status: <p>模型路由实例状态</p><p>枚举值：</p><ul><li>Active： 运行中</li><li>Provisioning： 创建中</li><li>Configuring： 变配中</li></ul>
        # @type Status: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param TradeStatus: <p>模型路由实例的计费状态</p><p>枚举值：</p><ul><li>Normal： 正常</li><li>Isolated： 已隔离</li></ul>
        # @type TradeStatus: String
        # @param Vip: <p>模型路由实例VIP</p>
        # @type Vip: String
        # @param VpcId: <p>模型路由实例所属VPC的ID</p>
        # @type VpcId: String

        attr_accessor :BudgetId, :BudgetName, :ClusterInfo, :CreatedTime, :CreditUsageSet, :Domain, :ModelRouterId, :ModelRouterName, :ModelRouterType, :ModifiedTime, :NetworkType, :SecurityStatus, :Status, :Tags, :TradeStatus, :Vip, :VpcId

        def initialize(budgetid=nil, budgetname=nil, clusterinfo=nil, createdtime=nil, creditusageset=nil, domain=nil, modelrouterid=nil, modelroutername=nil, modelroutertype=nil, modifiedtime=nil, networktype=nil, securitystatus=nil, status=nil, tags=nil, tradestatus=nil, vip=nil, vpcid=nil)
          @BudgetId = budgetid
          @BudgetName = budgetname
          @ClusterInfo = clusterinfo
          @CreatedTime = createdtime
          @CreditUsageSet = creditusageset
          @Domain = domain
          @ModelRouterId = modelrouterid
          @ModelRouterName = modelroutername
          @ModelRouterType = modelroutertype
          @ModifiedTime = modifiedtime
          @NetworkType = networktype
          @SecurityStatus = securitystatus
          @Status = status
          @Tags = tags
          @TradeStatus = tradestatus
          @Vip = vip
          @VpcId = vpcid
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          @BudgetName = params['BudgetName']
          unless params['ClusterInfo'].nil?
            @ClusterInfo = ClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          @CreatedTime = params['CreatedTime']
          unless params['CreditUsageSet'].nil?
            @CreditUsageSet = []
            params['CreditUsageSet'].each do |i|
              creditusage_tmp = CreditUsage.new
              creditusage_tmp.deserialize(i)
              @CreditUsageSet << creditusage_tmp
            end
          end
          @Domain = params['Domain']
          @ModelRouterId = params['ModelRouterId']
          @ModelRouterName = params['ModelRouterName']
          @ModelRouterType = params['ModelRouterType']
          @ModifiedTime = params['ModifiedTime']
          @NetworkType = params['NetworkType']
          @SecurityStatus = params['SecurityStatus']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TradeStatus = params['TradeStatus']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
        end
      end

      # BYOK健康探测结果
      class ModelTestResult < TencentCloud::Common::AbstractModel
        # @param Model: <p>模型</p>
        # @type Model: String
        # @param Status: <p>健康状况</p><p>枚举值：</p><ul><li>Success： 健康</li><li>Error： 不健康</li></ul>
        # @type Status: String
        # @param ErrorInfo: <p>错误信息</p>
        # @type ErrorInfo: :class:`Tencentcloud::Clb.v20180317.models.ProviderTestConnectionErrorInfo`
        # @param TestConnectionRequest: <p>探测请求</p>
        # @type TestConnectionRequest: :class:`Tencentcloud::Clb.v20180317.models.TestConnectionRequestInfo`

        attr_accessor :Model, :Status, :ErrorInfo, :TestConnectionRequest

        def initialize(model=nil, status=nil, errorinfo=nil, testconnectionrequest=nil)
          @Model = model
          @Status = status
          @ErrorInfo = errorinfo
          @TestConnectionRequest = testconnectionrequest
        end

        def deserialize(params)
          @Model = params['Model']
          @Status = params['Status']
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ProviderTestConnectionErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['TestConnectionRequest'].nil?
            @TestConnectionRequest = TestConnectionRequestInfo.new
            @TestConnectionRequest.deserialize(params['TestConnectionRequest'])
          end
        end
      end

      # ModifyBlockIPList请求参数结构体
      class ModifyBlockIPListRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID
        # @type LoadBalancerIds: Array
        # @param Type: 操作类型，可取：
        # <li> add_customized_field（首次设置header，开启黑名单功能）</li>
        # <li> set_customized_field（修改header）</li>
        # <li> del_customized_field（删除header）</li>
        # <li> add_blocked（添加黑名单）</li>
        # <li> del_blocked（删除黑名单）</li>
        # <li> flush_blocked（清空黑名单）</li>
        # @type Type: String
        # @param ClientIPField: 客户端真实IP存放的header字段名
        # @type ClientIPField: String
        # @param BlockIPList: 封禁IP列表，单次操作数组最大长度支持200000
        # @type BlockIPList: Array
        # @param ExpireTime: 过期时间，单位秒，默认值3600
        # @type ExpireTime: Integer
        # @param AddStrategy: 添加IP的策略，可取：fifo（如果黑名单容量已满，新加入黑名单的IP采用先进先出策略）
        # @type AddStrategy: String

        attr_accessor :LoadBalancerIds, :Type, :ClientIPField, :BlockIPList, :ExpireTime, :AddStrategy

        def initialize(loadbalancerids=nil, type=nil, clientipfield=nil, blockiplist=nil, expiretime=nil, addstrategy=nil)
          @LoadBalancerIds = loadbalancerids
          @Type = type
          @ClientIPField = clientipfield
          @BlockIPList = blockiplist
          @ExpireTime = expiretime
          @AddStrategy = addstrategy
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @Type = params['Type']
          @ClientIPField = params['ClientIPField']
          @BlockIPList = params['BlockIPList']
          @ExpireTime = params['ExpireTime']
          @AddStrategy = params['AddStrategy']
        end
      end

      # ModifyBlockIPList返回参数结构体
      class ModifyBlockIPListResponse < TencentCloud::Common::AbstractModel
        # @param JodId: 异步任务的ID
        # @type JodId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JodId, :RequestId

        def initialize(jodid=nil, requestid=nil)
          @JodId = jodid
          @RequestId = requestid
        end

        def deserialize(params)
          @JodId = params['JodId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBudgetAttributes请求参数结构体
      class ModifyBudgetAttributesRequest < TencentCloud::Common::AbstractModel
        # @param BudgetId: <p>Budget ID。</p>
        # @type BudgetId: String
        # @param BudgetConfigs: <p>预算配置数组。</p><p>数组长度最大为3，最多可同时配置1d、7d、30d三个刷新周期，且每种刷新周期只能出现一次。BudgetResetAt不支持作为入参设置，系统会按配置的刷新周期自动维护刷新时间。</p>
        # @type BudgetConfigs: Array
        # @param BudgetName: <p>Budget名称。</p>
        # @type BudgetName: String
        # @param RateLimitConfig: <p>Budget限速配置。</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForBudget`

        attr_accessor :BudgetId, :BudgetConfigs, :BudgetName, :RateLimitConfig

        def initialize(budgetid=nil, budgetconfigs=nil, budgetname=nil, ratelimitconfig=nil)
          @BudgetId = budgetid
          @BudgetConfigs = budgetconfigs
          @BudgetName = budgetname
          @RateLimitConfig = ratelimitconfig
        end

        def deserialize(params)
          @BudgetId = params['BudgetId']
          unless params['BudgetConfigs'].nil?
            @BudgetConfigs = []
            params['BudgetConfigs'].each do |i|
              budgetconfiginput_tmp = BudgetConfigInput.new
              budgetconfiginput_tmp.deserialize(i)
              @BudgetConfigs << budgetconfiginput_tmp
            end
          end
          @BudgetName = params['BudgetName']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForBudget.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
        end
      end

      # ModifyBudgetAttributes返回参数结构体
      class ModifyBudgetAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomainAttributes请求参数结构体
      class ModifyDomainAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type ListenerId: String
        # @param Domain: 域名（必须是已经创建的转发规则下的域名），如果是多域名，可以指定多域名列表中的任意一个，可以通过[DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type Domain: String
        # @param NewDomain: 要修改的新域名。NewDomain和NewDomains只能传一个。
        # @type NewDomain: String
        # @param Certificate: 域名相关的证书信息，注意，仅对启用SNI的监听器适用，不可和MultiCertInfo 同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Http2: 是否开启HTTP2，注意，只有HTTPS域名才能开启HTTP2。
        # True: 开启HTTP2，Fasle: 不开启HTTP2。
        # @type Http2: Boolean
        # @param DefaultServer: 是否设为默认域名，注意，一个监听器下只能设置一个默认域名。
        # True: 设为默认域名，Fasle: 不设置为默认域名。
        # @type DefaultServer: Boolean
        # @param Quic: 是否开启 QUIC，注意，只有 HTTPS 域名才能开启 QUIC。
        # True: 开启 QUIC，False: 不开启QUIC。
        # @type Quic: Boolean
        # @param NewDefaultServerDomain: 监听器下必须配置一个默认域名，若要关闭原默认域名，必须同时指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个。
        # @type NewDefaultServerDomain: String
        # @param NewDomains: 要修改的新域名列表。NewDomain和NewDomains只能传一个。
        # @type NewDomains: Array
        # @param MultiCertInfo: 域名相关的证书信息，注意，仅对启用SNI的监听器适用；支持同时传入多本算法类型不同的服务器证书，不可和Certificate 同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :NewDomain, :Certificate, :Http2, :DefaultServer, :Quic, :NewDefaultServerDomain, :NewDomains, :MultiCertInfo

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, newdomain=nil, certificate=nil, http2=nil, defaultserver=nil, quic=nil, newdefaultserverdomain=nil, newdomains=nil, multicertinfo=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @NewDomain = newdomain
          @Certificate = certificate
          @Http2 = http2
          @DefaultServer = defaultserver
          @Quic = quic
          @NewDefaultServerDomain = newdefaultserverdomain
          @NewDomains = newdomains
          @MultiCertInfo = multicertinfo
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @NewDomain = params['NewDomain']
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Http2 = params['Http2']
          @DefaultServer = params['DefaultServer']
          @Quic = params['Quic']
          @NewDefaultServerDomain = params['NewDefaultServerDomain']
          @NewDomains = params['NewDomains']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
        end
      end

      # ModifyDomainAttributes返回参数结构体
      class ModifyDomainAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomain请求参数结构体
      class ModifyDomainRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID， 可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口查询。
        # @type ListenerId: String
        # @param Domain: 监听器下的某个旧域名， 可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 查询。
        # @type Domain: String
        # @param NewDomain: 新域名，	长度限制为：1-120。有三种使用格式：非正则表达式格式，通配符格式，正则表达式格式。非正则表达式格式只能使用字母、数字、‘-’、‘.’。通配符格式的使用 ‘*’ 只能在开头或者结尾。正则表达式以'~'开头。
        # @type NewDomain: String

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :NewDomain

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, newdomain=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @NewDomain = newdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @NewDomain = params['NewDomain']
        end
      end

      # ModifyDomain返回参数结构体
      class ModifyDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFunctionTargets请求参数结构体
      class ModifyFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param FunctionTargets: 要修改的后端云函数服务列表，仅支持 Event 函数类型。
        # @type FunctionTargets: Array
        # @param LocationId: 转发规则的ID，当绑定机器到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # ModifyFunctionTargets返回参数结构体
      class ModifyFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIntentRouterAttribute请求参数结构体
      class ModifyIntentRouterAttributeRequest < TencentCloud::Common::AbstractModel
        # @param IntentRouterId: <p>意图路由ID（ir-xxx格式）。</p>
        # @type IntentRouterId: String
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param RouteName: <p>新的路由名称。</p><p>选填；必须以"IntentRouter/"为前缀，后缀仅支持字母、数字、连字符和下划线，后缀长度1-128个字符。不传则不修改。</p>
        # @type RouteName: String
        # @param RouterDescribe: <p>意图路由描述。</p>
        # @type RouterDescribe: String
        # @param Tiers: <p>新的分层配置列表（全量替换）。</p><p>选填；不传则不修改。传入时必须为完整分层集合：复杂度分层须包含全部 4 个分层 SIMPLE/MEDIUM/COMPLEX/REASONING；语义分层须包含 default 及各语义 Tier（取决于实例所用协议，且不可跨协议变更）。每个分层至少包含一个模型，模型名称必须是已关联到该实例的模型。</p>
        # @type Tiers: Array

        attr_accessor :IntentRouterId, :ModelRouterId, :RouteName, :RouterDescribe, :Tiers

        def initialize(intentrouterid=nil, modelrouterid=nil, routename=nil, routerdescribe=nil, tiers=nil)
          @IntentRouterId = intentrouterid
          @ModelRouterId = modelrouterid
          @RouteName = routename
          @RouterDescribe = routerdescribe
          @Tiers = tiers
        end

        def deserialize(params)
          @IntentRouterId = params['IntentRouterId']
          @ModelRouterId = params['ModelRouterId']
          @RouteName = params['RouteName']
          @RouterDescribe = params['RouterDescribe']
          unless params['Tiers'].nil?
            @Tiers = []
            params['Tiers'].each do |i|
              tieritem_tmp = TierItem.new
              tieritem_tmp.deserialize(i)
              @Tiers << tieritem_tmp
            end
          end
        end
      end

      # ModifyIntentRouterAttribute返回参数结构体
      class ModifyIntentRouterAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKeyAttributes请求参数结构体
      class ModifyKeyAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param KeyId: <p>API Key的ID</p>
        # @type KeyId: String
        # @param KeyName: <p>Key的名称</p>
        # @type KeyName: String
        # @param RateLimitConfig: <p>限速配置</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForKey`

        attr_accessor :ModelRouterId, :KeyId, :KeyName, :RateLimitConfig

        def initialize(modelrouterid=nil, keyid=nil, keyname=nil, ratelimitconfig=nil)
          @ModelRouterId = modelrouterid
          @KeyId = keyid
          @KeyName = keyname
          @RateLimitConfig = ratelimitconfig
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForKey.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
        end
      end

      # ModifyKeyAttributes返回参数结构体
      class ModifyKeyAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKeysBlockStatus请求参数结构体
      class ModifyKeysBlockStatusRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param Blocked: <p>是否停止使用</p>
        # @type Blocked: Boolean
        # @param KeyIds: <p>需要修改的Key的ID列表</p>
        # @type KeyIds: Array

        attr_accessor :ModelRouterId, :Blocked, :KeyIds

        def initialize(modelrouterid=nil, blocked=nil, keyids=nil)
          @ModelRouterId = modelrouterid
          @Blocked = blocked
          @KeyIds = keyids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @Blocked = params['Blocked']
          @KeyIds = params['KeyIds']
        end
      end

      # ModifyKeysBlockStatus返回参数结构体
      class ModifyKeysBlockStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKeysUserGroup请求参数结构体
      class ModifyKeysUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param UserGroupId: <p>目标归属用户组ID。传真实用户组ID表示批量入组或跨组移动（Key 已属其它组则改为目标组）；传 ugrp-ungrouped 表示批量移出到未分组。</p>
        # @type UserGroupId: String
        # @param KeyIds: <p>待变更归属的 Key ID 列表，单次1-100个。</p>
        # @type KeyIds: Array

        attr_accessor :ModelRouterId, :UserGroupId, :KeyIds

        def initialize(modelrouterid=nil, usergroupid=nil, keyids=nil)
          @ModelRouterId = modelrouterid
          @UserGroupId = usergroupid
          @KeyIds = keyids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @UserGroupId = params['UserGroupId']
          @KeyIds = params['KeyIds']
        end
      end

      # ModifyKeysUserGroup返回参数结构体
      class ModifyKeysUserGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyListener请求参数结构体
      class ModifyListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: <p>负载均衡实例ID，可以通过 <a href="https://cloud.tencent.com/document/product/214/30685">DescribeLoadBalancers</a> 接口查询。</p>
        # @type LoadBalancerId: String
        # @param ListenerId: <p>负载均衡监听器ID，可以通过 <a href="https://cloud.tencent.com/document/product/214/30686">DescribeListeners</a> 接口查询。</p>
        # @type ListenerId: String
        # @param ListenerName: <p>新的监听器名称。命名规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。</p>
        # @type ListenerName: String
        # @param SessionExpireTime: <p>会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。</p>
        # @type SessionExpireTime: Integer
        # @param HealthCheck: <p>健康检查相关参数，此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。</p>
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: <p>证书相关信息，此参数仅适用于HTTPS/TCP_SSL/QUIC监听器；此参数和MultiCertInfo不能同时传入。</p>
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Scheduler: <p>监听器转发的方式。可选值：WRR（按权重轮询）、LEAST_CONN（按最小连接数）、IP_HASH（按 IP 地址哈希）<br>分别表示按权重轮询、最小连接数， 默认为 WRR。<br>使用场景：适用于TCP/UDP/TCP_SSL/QUIC监听器。七层监听器的均衡方式应在转发规则中修改。</p>
        # @type Scheduler: String
        # @param SniSwitch: <p>是否开启SNI特性，此参数仅适用于HTTPS监听器。默认0，表示不开启，1表示开启。注意：未开启SNI的监听器可以开启SNI；已开启SNI的监听器不能关闭SNI。</p>
        # @type SniSwitch: Integer
        # @param TargetType: <p>后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。</p>
        # @type TargetType: String
        # @param KeepaliveEnable: <p>是否开启长连接，此参数仅适用于HTTP/HTTPS监听器。<br>默认值0表示不开启，1表示开启。<br>若后端服务对连接数上限有限制，则建议谨慎开启。此功能目前处于内测中，如需使用，请提交 <a href="https://cloud.tencent.com/apply/p/tsodp6qm21">内测申请</a>。</p>
        # @type KeepaliveEnable: Integer
        # @param DeregisterTargetRst: <p>重新调度功能，解绑后端服务开关，打开此开关，当解绑后端服务时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type DeregisterTargetRst: Boolean
        # @param SessionType: <p>会话保持类型。NORMAL表示默认会话保持类型。QUIC_CID表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。<br>使用场景：适用于TCP/UDP/TCP_SSL/QUIC监听器。<br>默认为 NORMAL。</p>
        # @type SessionType: String
        # @param MultiCertInfo: <p>证书信息，支持同时传入不同算法类型的多本服务端证书；此参数仅适用于未开启SNI特性的HTTPS监听器。此参数和Certificate不能同时传入。</p>
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`
        # @param MaxConn: <p>监听器粒度并发连接数上限，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持。取值范围：1-实例规格并发连接上限，其中-1表示关闭监听器粒度并发连接数限速。基础网络实例不支持该参数。<br>默认为 -1，表示不限速。</p>
        # @type MaxConn: Integer
        # @param MaxCps: <p>监听器粒度新建连接数上限，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持。取值范围：1-实例规格新建连接上限，其中-1表示关闭监听器粒度新建连接数限速。基础网络实例不支持该参数。<br>默认为 -1 表示不限速。</p>
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: <p>空闲连接超时时间，此参数仅适用于TCP/UDP监听器。如需设置超过1980s，请通过 <a href="https://console.cloud.tencent.com/workorder/category">工单申请</a>,最大可设置到3600s。</p><p>取值范围：[10, 1980]</p><p>单位：秒</p><p>默认值：900</p><p>TCP监听器默认值：900，UDP监听器默认值：300s。取值范围：共享型实例和独占型实例支持：10～900，性能容量型实例支持：10~1980。</p>
        # @type IdleConnectTimeout: Integer
        # @param ProxyProtocol: <p>TCP_SSL和QUIC是否支持PP</p>
        # @type ProxyProtocol: Boolean
        # @param SnatEnable: <p>是否开启SNAT（源IP替换），True（开启）、False（关闭）。默认为关闭。注意：SnatEnable开启时会替换客户端源IP，此时<code>透传客户端源IP</code>选项关闭，反之亦然。</p>
        # @type SnatEnable: Boolean
        # @param DataCompressMode: <p>数据压缩模式</p><p>枚举值：</p><ul><li>transparent： 透明模式（默认值）</li><li>compatibility： 兼容模式（开启 gzip 兼容压缩配置）</li></ul>
        # @type DataCompressMode: String
        # @param RescheduleTargetZeroWeight: <p>重新调度功能，权重调为0开关，打开此开关，后端服务器权重调为0时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleTargetZeroWeight: Boolean
        # @param RescheduleUnhealthy: <p>重新调度功能，健康检查异常开关，打开此开关，后端服务器健康检查异常时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleUnhealthy: Boolean
        # @param RescheduleExpandTarget: <p>重新调度功能，扩容后端服务开关，打开此开关，后端服务器增加或者减少时触发重新调度。仅TCP/UDP监听器支持。</p>
        # @type RescheduleExpandTarget: Boolean
        # @param RescheduleStartTime: <p>重新调度触发开始时间，取值0~3600s。仅TCP/UDP监听器支持。</p>
        # @type RescheduleStartTime: Integer
        # @param RescheduleInterval: <p>重新调度触发持续时间，取值0~3600s。仅TCP/UDP监听器支持。</p>
        # @type RescheduleInterval: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :ListenerName, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :SniSwitch, :TargetType, :KeepaliveEnable, :DeregisterTargetRst, :SessionType, :MultiCertInfo, :MaxConn, :MaxCps, :IdleConnectTimeout, :ProxyProtocol, :SnatEnable, :DataCompressMode, :RescheduleTargetZeroWeight, :RescheduleUnhealthy, :RescheduleExpandTarget, :RescheduleStartTime, :RescheduleInterval

        def initialize(loadbalancerid=nil, listenerid=nil, listenername=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, sniswitch=nil, targettype=nil, keepaliveenable=nil, deregistertargetrst=nil, sessiontype=nil, multicertinfo=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil, proxyprotocol=nil, snatenable=nil, datacompressmode=nil, rescheduletargetzeroweight=nil, rescheduleunhealthy=nil, rescheduleexpandtarget=nil, reschedulestarttime=nil, rescheduleinterval=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @ListenerName = listenername
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @SniSwitch = sniswitch
          @TargetType = targettype
          @KeepaliveEnable = keepaliveenable
          @DeregisterTargetRst = deregistertargetrst
          @SessionType = sessiontype
          @MultiCertInfo = multicertinfo
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
          @ProxyProtocol = proxyprotocol
          @SnatEnable = snatenable
          @DataCompressMode = datacompressmode
          @RescheduleTargetZeroWeight = rescheduletargetzeroweight
          @RescheduleUnhealthy = rescheduleunhealthy
          @RescheduleExpandTarget = rescheduleexpandtarget
          @RescheduleStartTime = reschedulestarttime
          @RescheduleInterval = rescheduleinterval
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @SniSwitch = params['SniSwitch']
          @TargetType = params['TargetType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          @SessionType = params['SessionType']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
          @ProxyProtocol = params['ProxyProtocol']
          @SnatEnable = params['SnatEnable']
          @DataCompressMode = params['DataCompressMode']
          @RescheduleTargetZeroWeight = params['RescheduleTargetZeroWeight']
          @RescheduleUnhealthy = params['RescheduleUnhealthy']
          @RescheduleExpandTarget = params['RescheduleExpandTarget']
          @RescheduleStartTime = params['RescheduleStartTime']
          @RescheduleInterval = params['RescheduleInterval']
        end
      end

      # ModifyListener返回参数结构体
      class ModifyListenerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerAttributes请求参数结构体
      class ModifyLoadBalancerAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: <p>负载均衡的唯一ID，可以通过 <a href="https://cloud.tencent.com/document/product/214/30685">DescribeLoadBalancers</a> 接口获取。</p>
        # @type LoadBalancerId: String
        # @param LoadBalancerName: <p>负载均衡实例名称，规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。</p>
        # @type LoadBalancerName: String
        # @param TargetRegionInfo: <p>设置负载均衡跨地域绑定1.0的后端服务信息</p>
        # @type TargetRegionInfo: :class:`Tencentcloud::Clb.v20180317.models.TargetRegionInfo`
        # @param InternetChargeInfo: <p>网络计费相关参数</p>
        # @type InternetChargeInfo: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param LoadBalancerPassToTarget: <p>Target是否放通来自CLB的流量。<br>开启放通（true）：只验证CLB上的安全组；<br>不开启放通（false）：需同时验证CLB和后端实例上的安全组。<br>不填则不修改。</p>
        # @type LoadBalancerPassToTarget: Boolean
        # @param SwitchFlag: <p>不同计费模式之间的切换：0表示不切换，1表示预付费和后付费切换，2表示后付费之间切换。默认值：0</p>
        # @type SwitchFlag: Integer
        # @param SnatPro: <p>是否开启跨地域绑定2.0功能。不填则不修改。</p>
        # @type SnatPro: Boolean
        # @param DeleteProtect: <p>是否开启删除保护，不填则不修改。</p>
        # @type DeleteProtect: Boolean
        # @param ModifyClassicDomain: <p>将负载均衡二级域名由mycloud.com改为tencentclb.com，子域名也会变换，修改后mycloud.com域名将失效。不填则不修改。</p>
        # @type ModifyClassicDomain: Boolean
        # @param AssociateEndpoint: <p>关联的终端节点Id，可通过<a href="https://cloud.tencent.com/document/product/215/54679">DescribeVpcEndPoint</a>接口查询。传空字符串代表解除关联。</p>
        # @type AssociateEndpoint: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :TargetRegionInfo, :InternetChargeInfo, :LoadBalancerPassToTarget, :SwitchFlag, :SnatPro, :DeleteProtect, :ModifyClassicDomain, :AssociateEndpoint

        def initialize(loadbalancerid=nil, loadbalancername=nil, targetregioninfo=nil, internetchargeinfo=nil, loadbalancerpasstotarget=nil, switchflag=nil, snatpro=nil, deleteprotect=nil, modifyclassicdomain=nil, associateendpoint=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @TargetRegionInfo = targetregioninfo
          @InternetChargeInfo = internetchargeinfo
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @SwitchFlag = switchflag
          @SnatPro = snatpro
          @DeleteProtect = deleteprotect
          @ModifyClassicDomain = modifyclassicdomain
          @AssociateEndpoint = associateendpoint
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['TargetRegionInfo'].nil?
            @TargetRegionInfo = TargetRegionInfo.new
            @TargetRegionInfo.deserialize(params['TargetRegionInfo'])
          end
          unless params['InternetChargeInfo'].nil?
            @InternetChargeInfo = InternetAccessible.new
            @InternetChargeInfo.deserialize(params['InternetChargeInfo'])
          end
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @SwitchFlag = params['SwitchFlag']
          @SnatPro = params['SnatPro']
          @DeleteProtect = params['DeleteProtect']
          @ModifyClassicDomain = params['ModifyClassicDomain']
          @AssociateEndpoint = params['AssociateEndpoint']
        end
      end

      # ModifyLoadBalancerAttributes返回参数结构体
      class ModifyLoadBalancerAttributesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: <p>切换负载均衡计费方式时，可用此参数查询切换任务是否成功。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancerMixIpTarget请求参数结构体
      class ModifyLoadBalancerMixIpTargetRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID数组，默认支持20个负载均衡实例ID。
        # 可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerIds: Array
        # @param MixIpTarget: 开启/关闭IPv6FullChain负载均衡7层监听器支持混绑IPv4/IPv6目标特性。
        # @type MixIpTarget: Boolean

        attr_accessor :LoadBalancerIds, :MixIpTarget

        def initialize(loadbalancerids=nil, mixiptarget=nil)
          @LoadBalancerIds = loadbalancerids
          @MixIpTarget = mixiptarget
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @MixIpTarget = params['MixIpTarget']
        end
      end

      # ModifyLoadBalancerMixIpTarget返回参数结构体
      class ModifyLoadBalancerMixIpTargetResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerSla请求参数结构体
      class ModifyLoadBalancerSlaRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerSla: 负载均衡实例信息。
        # @type LoadBalancerSla: Array
        # @param Force: 是否强制升级，默认否。
        # @type Force: Boolean

        attr_accessor :LoadBalancerSla, :Force

        def initialize(loadbalancersla=nil, force=nil)
          @LoadBalancerSla = loadbalancersla
          @Force = force
        end

        def deserialize(params)
          unless params['LoadBalancerSla'].nil?
            @LoadBalancerSla = []
            params['LoadBalancerSla'].each do |i|
              slaupdateparam_tmp = SlaUpdateParam.new
              slaupdateparam_tmp.deserialize(i)
              @LoadBalancerSla << slaupdateparam_tmp
            end
          end
          @Force = params['Force']
        end
      end

      # ModifyLoadBalancerSla返回参数结构体
      class ModifyLoadBalancerSlaResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancersProject请求参数结构体
      class ModifyLoadBalancersProjectRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 一个或多个待操作的负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # 列表支持最大长度为20。
        # @type LoadBalancerIds: Array
        # @param ProjectId: 项目ID。可以通过 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 接口获取。
        # @type ProjectId: Integer

        attr_accessor :LoadBalancerIds, :ProjectId

        def initialize(loadbalancerids=nil, projectid=nil)
          @LoadBalancerIds = loadbalancerids
          @ProjectId = projectid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyLoadBalancersProject返回参数结构体
      class ModifyLoadBalancersProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelAliasAttributes请求参数结构体
      class ModifyModelAliasAttributesRequest < TencentCloud::Common::AbstractModel
        # @param Coefficient: <p>模型积分系数配置。</p><p>必填，至少包含 <code>InputCoefficient</code>、<code>InputCachedCoefficient</code>、<code>OutputCoefficient</code> 中的一个字段，未传字段保持原值。</p><p><code>InputCoefficient</code> 为非缓存命中输入积分系数。</p><p><code>InputCachedCoefficient</code> 为缓存命中输入积分系数，用于 provider prompt cache 命中的输入 token。</p><p><code>OutputCoefficient</code> 为输出积分系数。</p><p>各字段取值范围：[0, 5000]，仅支持整数，0 表示该类 token 不计积分。</p>
        # @type Coefficient: :class:`Tencentcloud::Clb.v20180317.models.Coefficient`
        # @param ModelAliasNames: <p>模型别名列表。</p><p>不传 <code>ServiceProviderIds</code>（按 ModelAlias 账号维度修改）时支持数组批量，同一份 Coefficient 应用到多个别名。</p><p>传入 <code>ServiceProviderIds</code>（按 ServiceProvider 维度修改）时只能传 1 个别名，锁定唯一 model 别名；去重后不等于 1 个将返回 InvalidParameter。</p>
        # @type ModelAliasNames: Array
        # @param ServiceProviderIds: <p>BYOK 实例（ServiceProvider）ID 列表。</p><p>可选，数组。传入时按 ServiceProvider 维度修改：把同一份 Coefficient 批量应用到数组内每一个实例（覆盖配置，仅作用于这些实例），此时 <code>ModelAliasNames</code> 只能传 1 个别名（即 1 别名 × N ServiceProvider）；数组需去重、非空、上限 100，任一实例不归属/不存在/该实例下无该别名将整批返回错误。不传时按 ModelAlias（账号）维度修改，作用于该别名下未单独配置覆盖的全部实例。</p>
        # @type ServiceProviderIds: Array

        attr_accessor :Coefficient, :ModelAliasNames, :ServiceProviderIds

        def initialize(coefficient=nil, modelaliasnames=nil, serviceproviderids=nil)
          @Coefficient = coefficient
          @ModelAliasNames = modelaliasnames
          @ServiceProviderIds = serviceproviderids
        end

        def deserialize(params)
          unless params['Coefficient'].nil?
            @Coefficient = Coefficient.new
            @Coefficient.deserialize(params['Coefficient'])
          end
          @ModelAliasNames = params['ModelAliasNames']
          @ServiceProviderIds = params['ServiceProviderIds']
        end
      end

      # ModifyModelAliasAttributes返回参数结构体
      class ModifyModelAliasAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelAttributes请求参数结构体
      class ModifyModelAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>BYOK的ID</p><p>参数格式：byok-kot39u7j</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>BYOK的自定义名字</p><p>入参限制：1～256个字符</p>
        # @type ServiceProviderName: String

        attr_accessor :ServiceProviderId, :ServiceProviderName

        def initialize(serviceproviderid=nil, serviceprovidername=nil)
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
        end
      end

      # ModifyModelAttributes返回参数结构体
      class ModifyModelAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelRouterAttributes请求参数结构体
      class ModifyModelRouterAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由ID</p>
        # @type ModelRouterId: String
        # @param CertId: <p>新的 HTTPS 证书ID，用于替换实例 HTTPS 服务端点当前绑定的证书。常用于证书到期前的更换场景。</p><p>使用限制：</p><ul><li>仅企业型（Enterprise）且服务端点协议为 HTTPS 的实例支持修改证书。</li><li>证书须为 SSL 证书控制台中状态为“已签发”（可用）且未过期的服务器证书（SVR 类型）。可在 <a href="https://console.cloud.tencent.com/ssl">SSL 证书控制台</a> 查看证书ID。</li><li>替换后新证书立即生效，过程中不会中断业务流量。</li><li>若传入的证书与当前绑定的证书相同，接口直接返回成功，不做任何变更。</li></ul><p>不传则证书保持不变。可通过 <code>DescribeModelRouterDetail</code> 接口的 <code>ServiceEndPoints.CertId</code> 字段查询当前绑定的证书。</p>
        # @type CertId: String
        # @param ModelRouterName: <p>模型路由名称</p>
        # @type ModelRouterName: String
        # @param RateLimitConfig: <p>限速配置</p>
        # @type RateLimitConfig: :class:`Tencentcloud::Clb.v20180317.models.RateLimitConfigForModelRouter`
        # @param RouterSetting: <p>路由配置</p>
        # @type RouterSetting: :class:`Tencentcloud::Clb.v20180317.models.RouterSettingWithFallBack`

        attr_accessor :ModelRouterId, :CertId, :ModelRouterName, :RateLimitConfig, :RouterSetting

        def initialize(modelrouterid=nil, certid=nil, modelroutername=nil, ratelimitconfig=nil, routersetting=nil)
          @ModelRouterId = modelrouterid
          @CertId = certid
          @ModelRouterName = modelroutername
          @RateLimitConfig = ratelimitconfig
          @RouterSetting = routersetting
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @CertId = params['CertId']
          @ModelRouterName = params['ModelRouterName']
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfigForModelRouter.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['RouterSetting'].nil?
            @RouterSetting = RouterSettingWithFallBack.new
            @RouterSetting.deserialize(params['RouterSetting'])
          end
        end
      end

      # ModifyModelRouterAttributes返回参数结构体
      class ModifyModelRouterAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelRouterGuardrails请求参数结构体
      class ModifyModelRouterGuardrailsRequest < TencentCloud::Common::AbstractModel
        # @param Guardrails: <p>待修改的 Guardrail 防护配置列表。</p><p>当前最多支持 1 个元素。每个元素必须填写 GuardrailId；当 Type 为 WAF 或未传按 WAF 处理时，InstanceId 和 ServiceId 必填；InputCheckDepth 为选填，不传时沿用当前已关联 Guardrail 的取值。</p>
        # @type Guardrails: Array
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String

        attr_accessor :Guardrails, :ModelRouterId

        def initialize(guardrails=nil, modelrouterid=nil)
          @Guardrails = guardrails
          @ModelRouterId = modelrouterid
        end

        def deserialize(params)
          unless params['Guardrails'].nil?
            @Guardrails = []
            params['Guardrails'].each do |i|
              guardrailconfig_tmp = GuardrailConfig.new
              guardrailconfig_tmp.deserialize(i)
              @Guardrails << guardrailconfig_tmp
            end
          end
          @ModelRouterId = params['ModelRouterId']
        end
      end

      # ModifyModelRouterGuardrails返回参数结构体
      class ModifyModelRouterGuardrailsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelRouterSecurityGroups请求参数结构体
      class ModifyModelRouterSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param SecurityGroups: <p>需要绑定的安全组ID列表</p>
        # @type SecurityGroups: Array

        attr_accessor :ModelRouterId, :SecurityGroups

        def initialize(modelrouterid=nil, securitygroups=nil)
          @ModelRouterId = modelrouterid
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @SecurityGroups = params['SecurityGroups']
        end
      end

      # ModifyModelRouterSecurityGroups返回参数结构体
      class ModifyModelRouterSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/214/30685) 接口获取。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口获取。
        # @type ListenerId: String
        # @param LocationId: 要修改的转发规则的 ID， 可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口获取。
        # @type LocationId: String
        # @param Url: 转发规则的新的转发路径，如不需修改Url，则不需提供此参数。
        # @type Url: String
        # @param HealthCheck: 健康检查信息。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Scheduler: 规则的请求转发方式，可选值：WRR、LEAST_CONN、IP_HASH
        # 分别表示按权重轮询、最小连接数、按IP哈希， 默认为 WRR。
        # @type Scheduler: String
        # @param SessionExpireTime: 会话保持时间。取值范围0或30-86400（单位：秒）。
        # 默认为0。
        # @type SessionExpireTime: Integer
        # @param ForwardType: 负载均衡实例与后端服务之间的转发协议，默认HTTP，可取值：HTTP、HTTPS、GRPC。仅HTTPS监听器该参数有效。
        # @type ForwardType: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcFunc: String
        # @param OAuth: OAuth配置信息。
        # @type OAuth: :class:`Tencentcloud::Clb.v20180317.models.OAuth`
        # @param CookieName: 自定义cookie名
        # @type CookieName: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId, :Url, :HealthCheck, :Scheduler, :SessionExpireTime, :ForwardType, :TrpcCallee, :TrpcFunc, :OAuth, :CookieName

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil, url=nil, healthcheck=nil, scheduler=nil, sessionexpiretime=nil, forwardtype=nil, trpccallee=nil, trpcfunc=nil, oauth=nil, cookiename=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
          @Url = url
          @HealthCheck = healthcheck
          @Scheduler = scheduler
          @SessionExpireTime = sessionexpiretime
          @ForwardType = forwardtype
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
          @OAuth = oauth
          @CookieName = cookiename
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Url = params['Url']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
          @SessionExpireTime = params['SessionExpireTime']
          @ForwardType = params['ForwardType']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
          unless params['OAuth'].nil?
            @OAuth = OAuth.new
            @OAuth.deserialize(params['OAuth'])
          end
          @CookieName = params['CookieName']
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyServiceProviderModelAttributes请求参数结构体
      class ModifyServiceProviderModelAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>BYOK 实例 ID</p>
        # @type ServiceProviderId: String
        # @param ModelName: <p>待修改的模型的名称（原始模型名称）</p>
        # @type ModelName: String
        # @param InputModalities: <p>该模型支持的输入多模态能力列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul>
        # @type InputModalities: Array

        attr_accessor :ServiceProviderId, :ModelName, :InputModalities

        def initialize(serviceproviderid=nil, modelname=nil, inputmodalities=nil)
          @ServiceProviderId = serviceproviderid
          @ModelName = modelname
          @InputModalities = inputmodalities
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @ModelName = params['ModelName']
          @InputModalities = params['InputModalities']
        end
      end

      # ModifyServiceProviderModelAttributes返回参数结构体
      class ModifyServiceProviderModelAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupAttribute请求参数结构体
      class ModifyTargetGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: <p>目标组的ID。</p>
        # @type TargetGroupId: String
        # @param TargetGroupName: <p>目标组的新名称。命名规则：1-80 个英文字母、汉字等国际通用语言字符，数字，连接线“-”、下划线“_”等常见字符（禁止Unicode补充字符，如emoji表情、生僻汉字等）。</p>
        # @type TargetGroupName: String
        # @param Port: <p>目标组的新默认端口。全监听目标组不支持此参数。</p>
        # @type Port: Integer
        # @param ScheduleAlgorithm: <p>调度算法，仅V2新版目标组，且后端转发协议为(HTTP|HTTPS|GRPC)时该参数有效。可选值：<br>&lt;ur&gt;<li>WRR:按权重轮询。</li><li>LEAST_CONN:最小连接数。</li><li>IP_HASH:按IP哈希。</li><li>默认为 WRR。</li>&lt;ur&gt;</p>
        # @type ScheduleAlgorithm: String
        # @param HealthCheck: <p>健康检查详情。</p>
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.TargetGroupHealthCheck`
        # @param Weight: <p>后端服务默认权重, 其中：<ul><li>取值范围[0, 100]</li><li>设置该值后，添加后端服务到目标组时， 若后端服务不单独设置权重， 则使用这里的默认权重。 </li><li>v1目标组类型不支持设置Weight参数。</li> </ul></p>
        # @type Weight: Integer
        # @param KeepaliveEnable: <p>是否开启长连接，此参数仅适用于HTTP/HTTPS目标组，true:关闭；false:开启， 默认关闭。</p>
        # @type KeepaliveEnable: Boolean
        # @param SessionExpireTime: <p>会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。TCP/UDP目标组不支持该参数。</p>
        # @type SessionExpireTime: Integer
        # @param SnatEnable: <p>是否开启SNAT（源IP替换），True（开启）、False（关闭）。默认为关闭。注意：SnatEnable开启时会替换客户端源IP，此时<code>透传客户端源IP</code>选项关闭，反之亦然。</p>
        # @type SnatEnable: Boolean

        attr_accessor :TargetGroupId, :TargetGroupName, :Port, :ScheduleAlgorithm, :HealthCheck, :Weight, :KeepaliveEnable, :SessionExpireTime, :SnatEnable

        def initialize(targetgroupid=nil, targetgroupname=nil, port=nil, schedulealgorithm=nil, healthcheck=nil, weight=nil, keepaliveenable=nil, sessionexpiretime=nil, snatenable=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
          @Port = port
          @ScheduleAlgorithm = schedulealgorithm
          @HealthCheck = healthcheck
          @Weight = weight
          @KeepaliveEnable = keepaliveenable
          @SessionExpireTime = sessionexpiretime
          @SnatEnable = snatenable
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
          @Port = params['Port']
          @ScheduleAlgorithm = params['ScheduleAlgorithm']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Weight = params['Weight']
          @KeepaliveEnable = params['KeepaliveEnable']
          @SessionExpireTime = params['SessionExpireTime']
          @SnatEnable = params['SnatEnable']
        end
      end

      # ModifyTargetGroupAttribute返回参数结构体
      class ModifyTargetGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupInstancesPort请求参数结构体
      class ModifyTargetGroupInstancesPortRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待修改端口的服务器数组，在这个接口 NewPort 和 Port 为必填项。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # ModifyTargetGroupInstancesPort返回参数结构体
      class ModifyTargetGroupInstancesPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupInstancesWeight请求参数结构体
      class ModifyTargetGroupInstancesWeightRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待修改权重的服务器数组，在这个接口 Port 为必填项。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # ModifyTargetGroupInstancesWeight返回参数结构体
      class ModifyTargetGroupInstancesWeightResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetPort请求参数结构体
      class ModifyTargetPortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Targets: 要修改端口的后端服务列表。
        # @type Targets: Array
        # @param NewPort: 后端服务绑定到监听器或转发规则的新端口。
        # @type NewPort: Integer
        # @param LocationId: 转发规则的ID，当后端服务绑定到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :NewPort, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, newport=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @NewPort = newport
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @NewPort = params['NewPort']
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # ModifyTargetPort返回参数结构体
      class ModifyTargetPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetWeight请求参数结构体
      class ModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Targets: 要修改权重的后端服务列表。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，当绑定机器到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String
        # @param Weight: 后端服务新的转发权重，取值范围：0~100，默认值10。如果设置了 Targets.Weight 参数，则此参数不生效。
        # @type Weight: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :LocationId, :Domain, :Url, :Weight

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil, weight=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Weight = weight
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @Weight = params['Weight']
        end
      end

      # ModifyTargetWeight返回参数结构体
      class ModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserGroupAttributes请求参数结构体
      class ModifyUserGroupAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param UserGroupId: <p>待修改的用户组ID。不可为「未分组」虚拟分组 ugrp-ungrouped。</p>
        # @type UserGroupId: String
        # @param BudgetId: <p>用户组关联的预算ID。不传则不修改预算关联；传入有效 budget-xxx 则将该用户组关联到此预算（若已关联其它预算则替换为本预算）。仅支持关联/替换，不支持解绑——解绑请用 DisassociateBudget。预算与组内 Key、所属实例的预算各自独立判定。</p>
        # @type BudgetId: String
        # @param IntentRouters: <p>用户组意图路由白名单（ir-xxx）。每一项须为该实例已创建的意图路由名。不传则不修改；传入即整体覆盖。</p>
        # @type IntentRouters: Array
        # @param Models: <p>用户组真实模型白名单。每一项须为该实例已关联的模型名。不传则不修改；传入即整体覆盖。</p>
        # @type Models: Array
        # @param UserGroupName: <p>用户组名称。不传则不修改；传入时长度不超过255个字符、同实例下唯一。</p>
        # @type UserGroupName: String

        attr_accessor :ModelRouterId, :UserGroupId, :BudgetId, :IntentRouters, :Models, :UserGroupName

        def initialize(modelrouterid=nil, usergroupid=nil, budgetid=nil, intentrouters=nil, models=nil, usergroupname=nil)
          @ModelRouterId = modelrouterid
          @UserGroupId = usergroupid
          @BudgetId = budgetid
          @IntentRouters = intentrouters
          @Models = models
          @UserGroupName = usergroupname
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @UserGroupId = params['UserGroupId']
          @BudgetId = params['BudgetId']
          @IntentRouters = params['IntentRouters']
          @Models = params['Models']
          @UserGroupName = params['UserGroupName']
        end
      end

      # ModifyUserGroupAttributes返回参数结构体
      class ModifyUserGroupAttributesResponse < TencentCloud::Common::AbstractModel
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

      # CLB监听器或规则绑定的多证书信息
      class MultiCertInfo < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证
        # @type SSLMode: String
        # @param CertList: 监听器或规则证书列表，单双向认证，多本服务端证书算法类型不能重复;若SSLMode为双向认证，证书列表必须包含一本ca证书。
        # @type CertList: Array
        # @param SSLVerifyClient: 双向认证时，是否开启客户端认证，ON:开启，OPTIONAL:自适应，默认ON
        # @type SSLVerifyClient: String

        attr_accessor :SSLMode, :CertList, :SSLVerifyClient

        def initialize(sslmode=nil, certlist=nil, sslverifyclient=nil)
          @SSLMode = sslmode
          @CertList = certlist
          @SSLVerifyClient = sslverifyclient
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          unless params['CertList'].nil?
            @CertList = []
            params['CertList'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @CertList << certinfo_tmp
            end
          end
          @SSLVerifyClient = params['SSLVerifyClient']
        end
      end

      # 聊天测试接口多模态附件
      class MultiModalityAttachments < TencentCloud::Common::AbstractModel
        # @param Data: <p>base64 url编码的文件内容</p>
        # @type Data: String
        # @param Type: <p>附件类型</p><p>枚举值：</p><ul><li>image： 图像</li><li>pdf： pdf（文件）</li></ul>
        # @type Type: String

        attr_accessor :Data, :Type

        def initialize(data=nil, type=nil)
          @Data = data
          @Type = type
        end

        def deserialize(params)
          @Data = params['Data']
          @Type = params['Type']
        end
      end

      # OAuth配置信息。
      class OAuth < TencentCloud::Common::AbstractModel
        # @param OAuthEnable: 开启或关闭鉴权。
        # True: 开启;
        # False: 关闭
        # 默认为关闭。
        # @type OAuthEnable: Boolean
        # @param OAuthFailureStatus: IAP全部故障后，拒绝请求还是放行。
        # BYPASS: 通过
        # REJECT: 拒绝
        # 默认为 BYPASS
        # @type OAuthFailureStatus: String

        attr_accessor :OAuthEnable, :OAuthFailureStatus

        def initialize(oauthenable=nil, oauthfailurestatus=nil)
          @OAuthEnable = oauthenable
          @OAuthFailureStatus = oauthfailurestatus
        end

        def deserialize(params)
          @OAuthEnable = params['OAuthEnable']
          @OAuthFailureStatus = params['OAuthFailureStatus']
        end
      end

      # 表示负载均衡的价格
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 描述了实例价格。
        # @type InstancePrice: :class:`Tencentcloud::Clb.v20180317.models.ItemPrice`
        # @param BandwidthPrice: 描述了网络价格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthPrice: :class:`Tencentcloud::Clb.v20180317.models.ItemPrice`
        # @param LcuPrice: 描述了lcu价格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LcuPrice: :class:`Tencentcloud::Clb.v20180317.models.ItemPrice`

        attr_accessor :InstancePrice, :BandwidthPrice, :LcuPrice

        def initialize(instanceprice=nil, bandwidthprice=nil, lcuprice=nil)
          @InstancePrice = instanceprice
          @BandwidthPrice = bandwidthprice
          @LcuPrice = lcuprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['BandwidthPrice'].nil?
            @BandwidthPrice = ItemPrice.new
            @BandwidthPrice.deserialize(params['BandwidthPrice'])
          end
          unless params['LcuPrice'].nil?
            @LcuPrice = ItemPrice.new
            @LcuPrice.deserialize(params['LcuPrice'])
          end
        end
      end

      # Provider 信息
      class ProviderItem < TencentCloud::Common::AbstractModel
        # @param Provider: <p>Provider 标识（如 openai）</p>
        # @type Provider: String
        # @param DisplayName: <p>显示名称（如 OpenAI）</p>
        # @type DisplayName: String
        # @param Protocols: <p>模型协议列表</p>
        # @type Protocols: Array
        # @param EnglishDisplayName: <p>英文显示名称</p>
        # @type EnglishDisplayName: String

        attr_accessor :Provider, :DisplayName, :Protocols, :EnglishDisplayName

        def initialize(provider=nil, displayname=nil, protocols=nil, englishdisplayname=nil)
          @Provider = provider
          @DisplayName = displayname
          @Protocols = protocols
          @EnglishDisplayName = englishdisplayname
        end

        def deserialize(params)
          @Provider = params['Provider']
          @DisplayName = params['DisplayName']
          @Protocols = params['Protocols']
          @EnglishDisplayName = params['EnglishDisplayName']
        end
      end

      # BYOK健康检查错误信息
      class ProviderTestConnectionErrorInfo < TencentCloud::Common::AbstractModel
        # @param HttpCode: <p>上游模型侧返回的HTTP状态码</p>
        # @type HttpCode: Integer
        # @param ErrorStatus: <p>错误状态码</p>
        # @type ErrorStatus: String
        # @param OriginalMessage: <p>探测请求错误信息</p>
        # @type OriginalMessage: String

        attr_accessor :HttpCode, :ErrorStatus, :OriginalMessage

        def initialize(httpcode=nil, errorstatus=nil, originalmessage=nil)
          @HttpCode = httpcode
          @ErrorStatus = errorstatus
          @OriginalMessage = originalmessage
        end

        def deserialize(params)
          @HttpCode = params['HttpCode']
          @ErrorStatus = params['ErrorStatus']
          @OriginalMessage = params['OriginalMessage']
        end
      end

      # 描述配额信息，所有配额均指当前地域下的配额。
      class Quota < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额名称，取值范围：
        # <li> TOTAL_OPEN_CLB_QUOTA：用户当前地域下的公网CLB配额 </li>
        # <li> TOTAL_INTERNAL_CLB_QUOTA：用户当前地域下的内网CLB配额 </li>
        # <li> TOTAL_LISTENER_QUOTA：一个CLB下的监听器配额 </li>
        # <li> TOTAL_LISTENER_RULE_QUOTA：一个监听器下的转发规则配额 </li>
        # <li> TOTAL_TARGET_BIND_QUOTA：一条转发规则下可绑定设备的配额 </li>
        # <li> TOTAL_SNAT_IP_QUOTA： 一个CLB实例下跨地域2.0的SNAT IP配额 </li>
        # <li>TOTAL_ISP_CLB_QUOTA：用户当前地域下的三网CLB配额 </li>
        # <li>TOTAL_FULL_PORT_RANGE_LISTENER_QUOTA：一个CLB实例下的单个协议全端口段监听器配额</li>
        # @type QuotaId: String
        # @param QuotaCurrent: 当前使用数量，为 null 时表示无意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaCurrent: Integer
        # @param QuotaLimit: 配额数量。
        # @type QuotaLimit: Integer

        attr_accessor :QuotaId, :QuotaCurrent, :QuotaLimit

        def initialize(quotaid=nil, quotacurrent=nil, quotalimit=nil)
          @QuotaId = quotaid
          @QuotaCurrent = quotacurrent
          @QuotaLimit = quotalimit
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaCurrent = params['QuotaCurrent']
          @QuotaLimit = params['QuotaLimit']
        end
      end

      # Budget限速配置
      class RateLimitConfigForBudget < TencentCloud::Common::AbstractModel
        # @param RPM: <p>每分钟限制的请求数量。</p><p>单位：次/分钟。</p>
        # @type RPM: Integer
        # @param TPM: <p>每分钟限制的Token数量。</p><p>单位：个/分钟。</p>
        # @type TPM: Integer

        attr_accessor :RPM, :TPM

        def initialize(rpm=nil, tpm=nil)
          @RPM = rpm
          @TPM = tpm
        end

        def deserialize(params)
          @RPM = params['RPM']
          @TPM = params['TPM']
        end
      end

      # 限速配置
      class RateLimitConfigForKey < TencentCloud::Common::AbstractModel
        # @param MaxParallelRequest: <p>最大并发请求数量</p><p>单位：次</p>
        # @type MaxParallelRequest: Integer
        # @param RPM: <p>每分钟限制的请求数量</p><p>单位：次/分钟</p>
        # @type RPM: Integer
        # @param TPM: <p>每分钟限制的Token数量</p><p>单位：个/分钟</p>
        # @type TPM: Integer

        attr_accessor :MaxParallelRequest, :RPM, :TPM

        def initialize(maxparallelrequest=nil, rpm=nil, tpm=nil)
          @MaxParallelRequest = maxparallelrequest
          @RPM = rpm
          @TPM = tpm
        end

        def deserialize(params)
          @MaxParallelRequest = params['MaxParallelRequest']
          @RPM = params['RPM']
          @TPM = params['TPM']
        end
      end

      # 限速配置
      class RateLimitConfigForModelRouter < TencentCloud::Common::AbstractModel
        # @param RPM: <p>每分钟限制的请求数量</p><p>单位：次/分钟</p>
        # @type RPM: Integer
        # @param TPM: <p>每分钟限制的Token数量</p><p>单位：个/分钟</p>
        # @type TPM: Integer

        attr_accessor :RPM, :TPM

        def initialize(rpm=nil, tpm=nil)
          @RPM = rpm
          @TPM = tpm
        end

        def deserialize(params)
          @RPM = params['RPM']
          @TPM = params['TPM']
        end
      end

      # RefundModelRouterResourcePackage请求参数结构体
      class RefundModelRouterResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterResourcePackageIds: <p>待退还的模型路由资源包Id</p><p>非有效状态或者设置了自动续订且自动续订已生效的资源包不允许退款。</p>
        # @type ModelRouterResourcePackageIds: Array

        attr_accessor :ModelRouterResourcePackageIds

        def initialize(modelrouterresourcepackageids=nil)
          @ModelRouterResourcePackageIds = modelrouterresourcepackageids
        end

        def deserialize(params)
          @ModelRouterResourcePackageIds = params['ModelRouterResourcePackageIds']
        end
      end

      # RefundModelRouterResourcePackage返回参数结构体
      class RefundModelRouterResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: <p>退还模型路由资源包的订单号</p>
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :RequestId

        def initialize(dealnames=nil, requestid=nil)
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # RegenerateKeys请求参数结构体
      class RegenerateKeysRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例ID</p>
        # @type ModelRouterId: String
        # @param KeyIds: <p>Key的ID列表</p>
        # @type KeyIds: Array

        attr_accessor :ModelRouterId, :KeyIds

        def initialize(modelrouterid=nil, keyids=nil)
          @ModelRouterId = modelrouterid
          @KeyIds = keyids
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @KeyIds = params['KeyIds']
        end
      end

      # RegenerateKeys返回参数结构体
      class RegenerateKeysResponse < TencentCloud::Common::AbstractModel
        # @param FailedKeyIds: <p>重新生成失败的Key的ID列表</p>
        # @type FailedKeyIds: Array
        # @param RegeneratedKeys: <p>重新生成后的Key的信息</p>
        # @type RegeneratedKeys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedKeyIds, :RegeneratedKeys, :RequestId

        def initialize(failedkeyids=nil, regeneratedkeys=nil, requestid=nil)
          @FailedKeyIds = failedkeyids
          @RegeneratedKeys = regeneratedkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedKeyIds = params['FailedKeyIds']
          unless params['RegeneratedKeys'].nil?
            @RegeneratedKeys = []
            params['RegeneratedKeys'].each do |i|
              regeneratedkey_tmp = RegeneratedKey.new
              regeneratedkey_tmp.deserialize(i)
              @RegeneratedKeys << regeneratedkey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 重新生成的Key信息
      class RegeneratedKey < TencentCloud::Common::AbstractModel
        # @param Key: <p>重新生成的明文Key</p>
        # @type Key: String
        # @param KeyId: <p>Key的ID</p>
        # @type KeyId: String

        attr_accessor :Key, :KeyId

        def initialize(key=nil, keyid=nil)
          @Key = key
          @KeyId = keyid
        end

        def deserialize(params)
          @Key = params['Key']
          @KeyId = params['KeyId']
        end
      end

      # RegisterFunctionTargets请求参数结构体
      class RegisterFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param FunctionTargets: 待绑定的云函数列表。
        # @type FunctionTargets: Array
        # @param LocationId: 目标转发规则的 ID，当将云函数绑定到七层转发规则时，必须输入此参数或 Domain+Url 参数。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，若已经输入 LocationId 参数，则本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的 URL，若已经输入 LocationId 参数，则本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # RegisterFunctionTargets返回参数结构体
      class RegisterFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # RegisterModelsToServiceProvider请求参数结构体
      class RegisterModelsToServiceProviderRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>BYOK的ID</p>
        # @type ServiceProviderId: String
        # @param Models: <p>需要关联的模型信息</p>
        # @type Models: Array

        attr_accessor :ServiceProviderId, :Models

        def initialize(serviceproviderid=nil, models=nil)
          @ServiceProviderId = serviceproviderid
          @Models = models
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              modelitem_tmp = ModelItem.new
              modelitem_tmp.deserialize(i)
              @Models << modelitem_tmp
            end
          end
        end
      end

      # RegisterModelsToServiceProvider返回参数结构体
      class RegisterModelsToServiceProviderResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargetGroupInstances请求参数结构体
      class RegisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 服务器实例数组，服务器和目标组的 VPC 需相同。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # RegisterTargetGroupInstances返回参数结构体
      class RegisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargets请求参数结构体
      class RegisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Targets: 待绑定的后端服务列表，数组长度最大支持20。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，可以通过 [DescribeListeners](https://cloud.tencent.com/document/product/214/30686) 接口获取，当绑定后端服务到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # RegisterTargets返回参数结构体
      class RegisterTargetsResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargetsWithClassicalLB请求参数结构体
      class RegisterTargetsWithClassicalLBRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param Targets: 后端服务信息。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              classicaltargetinfo_tmp = ClassicalTargetInfo.new
              classicaltargetinfo_tmp.deserialize(i)
              @Targets << classicaltargetinfo_tmp
            end
          end
        end
      end

      # RegisterTargetsWithClassicalLB返回参数结构体
      class RegisterTargetsWithClassicalLBResponse < TencentCloud::Common::AbstractModel
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

      # RemoveModelKey请求参数结构体
      class RemoveModelKeyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>服务提供商ID</p>
        # @type ServiceProviderId: String
        # @param KeyIds: <p>Key 业务 ID 列表，至少 1 个，最多 10 个</p>
        # @type KeyIds: Array

        attr_accessor :ServiceProviderId, :KeyIds

        def initialize(serviceproviderid=nil, keyids=nil)
          @ServiceProviderId = serviceproviderid
          @KeyIds = keyids
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @KeyIds = params['KeyIds']
        end
      end

      # RemoveModelKey返回参数结构体
      class RemoveModelKeyResponse < TencentCloud::Common::AbstractModel
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

      # RemoveModelRewrite请求参数结构体
      class RemoveModelRewriteRequest < TencentCloud::Common::AbstractModel
        # @param ModelRouterId: <p>模型路由实例 ID。</p>
        # @type ModelRouterId: String
        # @param SourceModel: <p>要删除的源模型名（重写规则的 key）。</p><p>长度 1-255 字符；支持特殊值 <code>default</code> 表示删除兜底规则。</p><p>当指定的 SourceModel 当前不存在重写规则时，请求幂等成功。</p>
        # @type SourceModel: String

        attr_accessor :ModelRouterId, :SourceModel

        def initialize(modelrouterid=nil, sourcemodel=nil)
          @ModelRouterId = modelrouterid
          @SourceModel = sourcemodel
        end

        def deserialize(params)
          @ModelRouterId = params['ModelRouterId']
          @SourceModel = params['SourceModel']
        end
      end

      # RemoveModelRewrite返回参数结构体
      class RemoveModelRewriteResponse < TencentCloud::Common::AbstractModel
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

      # RenewLoadBalancers请求参数结构体
      class RenewLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例唯一ID数组，最多支持20个。
        # @type LoadBalancerIds: Array
        # @param LBChargePrepaid: 负载均衡实例的预付费相关属性。
        # @type LBChargePrepaid: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`

        attr_accessor :LoadBalancerIds, :LBChargePrepaid

        def initialize(loadbalancerids=nil, lbchargeprepaid=nil)
          @LoadBalancerIds = loadbalancerids
          @LBChargePrepaid = lbchargeprepaid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['LBChargePrepaid'].nil?
            @LBChargePrepaid = LBChargePrepaid.new
            @LBChargePrepaid.deserialize(params['LBChargePrepaid'])
          end
        end
      end

      # RenewLoadBalancers返回参数结构体
      class RenewLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ReplaceCertForLoadBalancers请求参数结构体
      class ReplaceCertForLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param OldCertificateId: 需要被替换的证书的ID，可以是服务端证书或客户端证书
        # @type OldCertificateId: String
        # @param Certificate: 新证书的内容等相关信息
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`

        attr_accessor :OldCertificateId, :Certificate

        def initialize(oldcertificateid=nil, certificate=nil)
          @OldCertificateId = oldcertificateid
          @Certificate = certificate
        end

        def deserialize(params)
          @OldCertificateId = params['OldCertificateId']
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
        end
      end

      # ReplaceCertForLoadBalancers返回参数结构体
      class ReplaceCertForLoadBalancersResponse < TencentCloud::Common::AbstractModel
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

      # 资源详细信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param Type: 运营商内具体资源信息，如"CMCC", "CUCC", "CTCC", "BGP", "INTERNAL"。
        # @type Type: Array
        # @param Isp: 运营商信息，如"CMCC", "CUCC", "CTCC", "BGP", "INTERNAL"。
        # @type Isp: String
        # @param AvailabilitySet: 可用资源。
        # @type AvailabilitySet: Array
        # @param TypeSet: 运营商类型信息
        # @type TypeSet: Array

        attr_accessor :Type, :Isp, :AvailabilitySet, :TypeSet

        def initialize(type=nil, isp=nil, availabilityset=nil, typeset=nil)
          @Type = type
          @Isp = isp
          @AvailabilitySet = availabilityset
          @TypeSet = typeset
        end

        def deserialize(params)
          @Type = params['Type']
          @Isp = params['Isp']
          unless params['AvailabilitySet'].nil?
            @AvailabilitySet = []
            params['AvailabilitySet'].each do |i|
              resourceavailability_tmp = ResourceAvailability.new
              resourceavailability_tmp.deserialize(i)
              @AvailabilitySet << resourceavailability_tmp
            end
          end
          unless params['TypeSet'].nil?
            @TypeSet = []
            params['TypeSet'].each do |i|
              typeinfo_tmp = TypeInfo.new
              typeinfo_tmp.deserialize(i)
              @TypeSet << typeinfo_tmp
            end
          end
        end
      end

      # 资源可用性
      class ResourceAvailability < TencentCloud::Common::AbstractModel
        # @param Type: 运营商内具体资源信息，如"CMCC", "CUCC", "CTCC", "BGP"。
        # @type Type: String
        # @param Availability: 资源可用性，"Available"：可用，"Unavailable"：不可用
        # @type Availability: String

        attr_accessor :Type, :Availability

        def initialize(type=nil, availability=nil)
          @Type = type
          @Availability = availability
        end

        def deserialize(params)
          @Type = params['Type']
          @Availability = params['Availability']
        end
      end

      # 单条模型重写规则。
      class RewriteItem < TencentCloud::Common::AbstractModel
        # @param SourceModel: <p>源模型名（重写规则的 key）。</p><p>特殊值 <code>default</code> 表示兜底规则（命中所有未显式列出的源模型）。</p>
        # @type SourceModel: String
        # @param TargetModel: <p>目标模型名（重写规则的 value）。</p>
        # @type TargetModel: String

        attr_accessor :SourceModel, :TargetModel

        def initialize(sourcemodel=nil, targetmodel=nil)
          @SourceModel = sourcemodel
          @TargetModel = targetmodel
        end

        def deserialize(params)
          @SourceModel = params['SourceModel']
          @TargetModel = params['TargetModel']
        end
      end

      # 转发规则之间的重定向关系
      class RewriteLocationMap < TencentCloud::Common::AbstractModel
        # @param SourceLocationId: 源转发规则ID
        # @type SourceLocationId: String
        # @param TargetLocationId: 重定向目标转发规则的ID
        # @type TargetLocationId: String
        # @param RewriteCode: 重定向状态码，可取值301,302,307
        # @type RewriteCode: Integer
        # @param TakeUrl: 重定向是否携带匹配的url，配置RewriteCode时必填
        # @type TakeUrl: Boolean
        # @param SourceDomain: 源转发的域名，必须是SourceLocationId对应的域名，配置RewriteCode时必填
        # @type SourceDomain: String

        attr_accessor :SourceLocationId, :TargetLocationId, :RewriteCode, :TakeUrl, :SourceDomain

        def initialize(sourcelocationid=nil, targetlocationid=nil, rewritecode=nil, takeurl=nil, sourcedomain=nil)
          @SourceLocationId = sourcelocationid
          @TargetLocationId = targetlocationid
          @RewriteCode = rewritecode
          @TakeUrl = takeurl
          @SourceDomain = sourcedomain
        end

        def deserialize(params)
          @SourceLocationId = params['SourceLocationId']
          @TargetLocationId = params['TargetLocationId']
          @RewriteCode = params['RewriteCode']
          @TakeUrl = params['TakeUrl']
          @SourceDomain = params['SourceDomain']
        end
      end

      # 重定向目标的信息
      class RewriteTarget < TencentCloud::Common::AbstractModel
        # @param TargetListenerId: 重定向目标的监听器ID，该字段仅配置了重定向时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetListenerId: String
        # @param TargetLocationId: 重定向目标的转发规则ID，该字段仅配置了重定向时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetLocationId: String
        # @param RewriteCode: 重定向状态码
        # @type RewriteCode: Integer
        # @param TakeUrl: 重定向是否携带匹配的url
        # @type TakeUrl: Boolean
        # @param RewriteType: 重定向类型，Manual: 手动重定向，Auto:  自动重定向
        # @type RewriteType: String

        attr_accessor :TargetListenerId, :TargetLocationId, :RewriteCode, :TakeUrl, :RewriteType

        def initialize(targetlistenerid=nil, targetlocationid=nil, rewritecode=nil, takeurl=nil, rewritetype=nil)
          @TargetListenerId = targetlistenerid
          @TargetLocationId = targetlocationid
          @RewriteCode = rewritecode
          @TakeUrl = takeurl
          @RewriteType = rewritetype
        end

        def deserialize(params)
          @TargetListenerId = params['TargetListenerId']
          @TargetLocationId = params['TargetLocationId']
          @RewriteCode = params['RewriteCode']
          @TakeUrl = params['TakeUrl']
          @RewriteType = params['RewriteType']
        end
      end

      # 路由设置
      class RouterSettingWithFallBack < TencentCloud::Common::AbstractModel
        # @param CrossModelGroupRoutingStrategy: <p>模型间路由策略。</p><p>枚举值：</p><ul><li>SimpleShuffle： 简单随机路由</li><li>LowestCost： 最低积分路由</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrossModelGroupRoutingStrategy: String
        # @param FallBack: <p>回退策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FallBack: :class:`Tencentcloud::Clb.v20180317.models.FallBackItem`
        # @param RoutingStrategy: <p>模型内路由策略</p><p>枚举值：</p><ul><li>SimpleShuffle： 简单随机路由</li><li>LeastBusy： 最低繁忙路由</li><li>LatencyBasedRouting： 最低延迟路由</li><li>UsageBasedRouting： 用量均衡路由</li><li>CostBasedRouting： 最低积分路由</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoutingStrategy: String

        attr_accessor :CrossModelGroupRoutingStrategy, :FallBack, :RoutingStrategy

        def initialize(crossmodelgrouproutingstrategy=nil, fallback=nil, routingstrategy=nil)
          @CrossModelGroupRoutingStrategy = crossmodelgrouproutingstrategy
          @FallBack = fallback
          @RoutingStrategy = routingstrategy
        end

        def deserialize(params)
          @CrossModelGroupRoutingStrategy = params['CrossModelGroupRoutingStrategy']
          unless params['FallBack'].nil?
            @FallBack = FallBackItem.new
            @FallBack.deserialize(params['FallBack'])
          end
          @RoutingStrategy = params['RoutingStrategy']
        end
      end

      # 路由设置
      class RouterSettingWithoutFallBack < TencentCloud::Common::AbstractModel
        # @param RoutingStrategy: <p>路由策略</p><p>枚举值：</p><ul><li>SimpleShuffle： 简单随机路由</li><li>LeastBusy： 最低繁忙路由</li><li>LatencyBasedRouting： 最低延迟路由</li><li>UsageBasedRouting： 用量均衡路由</li><li>CostBasedRouting： 最低积分路由</li></ul>
        # @type RoutingStrategy: String

        attr_accessor :RoutingStrategy

        def initialize(routingstrategy=nil)
          @RoutingStrategy = routingstrategy
        end

        def deserialize(params)
          @RoutingStrategy = params['RoutingStrategy']
        end
      end

      # 修改节点标签的数据类型
      class RsTagRule < TencentCloud::Common::AbstractModel
        # @param ListenerId: <p>负载均衡监听器 ID。</p>
        # @type ListenerId: String
        # @param Targets: <p>要修改标签的后端机器列表。</p>
        # @type Targets: Array
        # @param LocationId: <p>转发规则的ID，七层规则时需要此参数，4层规则不需要。</p>
        # @type LocationId: String
        # @param Tag: <p>后端服务修改后的标签。此参数的优先级低于前述<a href="https://cloud.tencent.com/document/api/214/30694#Target">Target</a>中的Tag参数，即最终的标签以Target中的Tag参数值为准，仅当Target中的Tag参数为空时，才以RsTagRule中的Tag参数为准。</p>
        # @type Tag: String

        attr_accessor :ListenerId, :Targets, :LocationId, :Tag

        def initialize(listenerid=nil, targets=nil, locationid=nil, tag=nil)
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Tag = tag
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Tag = params['Tag']
        end
      end

      # 修改节点权重的数据类型
      class RsWeightRule < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param Targets: 要修改权重的后端机器列表。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，七层规则时需要此参数，4层规则不需要。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String
        # @param Weight: 后端服务修改后的转发权重，取值范围：[0，100]。此参数的优先级低于前述[Target](https://cloud.tencent.com/document/api/214/30694#Target)中的Weight参数，即最终的权重值以Target中的Weight参数值为准，仅当Target中的Weight参数为空时，才以RsWeightRule中的Weight参数为准。
        # @type Weight: Integer

        attr_accessor :ListenerId, :Targets, :LocationId, :Domain, :Url, :Weight
        extend Gem::Deprecate
        deprecate :Domain, :none, 2026, 7
        deprecate :Domain=, :none, 2026, 7
        deprecate :Url, :none, 2026, 7
        deprecate :Url=, :none, 2026, 7

        def initialize(listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil, weight=nil)
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Weight = weight
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @Weight = params['Weight']
        end
      end

      # 一条转发规则的健康检查状态
      class RuleHealth < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 转发规则的Url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param RuleId: 高级路由规则ID
        # @type RuleId: String
        # @param Targets: 本规则上绑定的后端服务的健康检查状态
        # @type Targets: Array

        attr_accessor :LocationId, :Domain, :Url, :RuleId, :Targets

        def initialize(locationid=nil, domain=nil, url=nil, ruleid=nil, targets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @RuleId = ruleid
          @Targets = targets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @RuleId = params['RuleId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targethealth_tmp = TargetHealth.new
              targethealth_tmp.deserialize(i)
              @Targets << targethealth_tmp
            end
          end
        end
      end

      # HTTP/HTTPS转发规则（输入）
      class RuleInput < TencentCloud::Common::AbstractModel
        # @param Url: 转发规则的路径。长度限制为：1~200。
        # @type Url: String
        # @param Domain: 转发规则的域名。长度限制为：1~80。Domain和Domains只需要传一个，单域名规则传Domain，多域名规则传Domains。
        # @type Domain: String
        # @param SessionExpireTime: 会话保持时间。设置为0表示关闭会话保持，开启会话保持可取值30~86400，单位：秒。
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查信息。详情请参见：[健康检查](https://cloud.tencent.com/document/product/214/6097)
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书信息；此参数和MultiCertInfo不能同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Scheduler: 规则的请求转发方式，可选值：WRR、LEAST_CONN、IP_HASH
        # 分别表示按权重轮询、最小连接数、按IP哈希， 默认为 WRR。
        # @type Scheduler: String
        # @param ForwardType: 负载均衡与后端服务之间的转发协议，目前支持 HTTP/HTTPS/GRPC/GRPCS/TRPC，TRPC暂未对外开放，默认HTTP。
        # @type ForwardType: String
        # @param DefaultServer: 是否将该域名设为默认域名，注意，一个监听器下只能设置一个默认域名。
        # @type DefaultServer: Boolean
        # @param Http2: 是否开启Http2，注意，只有HTTPS域名才能开启Http2。
        # @type Http2: Boolean
        # @param TargetType: 后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组
        # @type TargetType: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时必填。目前暂未对外开放
        # @type TrpcFunc: String
        # @param Quic: 是否开启QUIC，注意，只有HTTPS域名才能开启QUIC
        # @type Quic: Boolean
        # @param Domains: 转发规则的域名列表。每个域名的长度限制为：1~80。Domain和Domains只需要传一个，单域名规则传Domain，多域名规则传Domains。
        # @type Domains: Array
        # @param MultiCertInfo: 证书信息，支持同时传入不同算法类型的多本服务端证书；此参数和Certificate不能同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`
        # @param CookieName: 自定义cookie名
        # @type CookieName: String

        attr_accessor :Url, :Domain, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :ForwardType, :DefaultServer, :Http2, :TargetType, :TrpcCallee, :TrpcFunc, :Quic, :Domains, :MultiCertInfo, :CookieName

        def initialize(url=nil, domain=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, forwardtype=nil, defaultserver=nil, http2=nil, targettype=nil, trpccallee=nil, trpcfunc=nil, quic=nil, domains=nil, multicertinfo=nil, cookiename=nil)
          @Url = url
          @Domain = domain
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @ForwardType = forwardtype
          @DefaultServer = defaultserver
          @Http2 = http2
          @TargetType = targettype
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
          @Quic = quic
          @Domains = domains
          @MultiCertInfo = multicertinfo
          @CookieName = cookiename
        end

        def deserialize(params)
          @Url = params['Url']
          @Domain = params['Domain']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @ForwardType = params['ForwardType']
          @DefaultServer = params['DefaultServer']
          @Http2 = params['Http2']
          @TargetType = params['TargetType']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
          @Quic = params['Quic']
          @Domains = params['Domains']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
          @CookieName = params['CookieName']
        end
      end

      # HTTP/HTTPS监听器的转发规则（输出）
      class RuleOutput < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则的 ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名。
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # @type Url: String
        # @param SessionExpireTime: 会话保持时间
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查信息
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateOutput`
        # @param Scheduler: 规则的请求转发方式。
        # WRR、LEAST_CONN、IP_HASH分别表示按权重轮询、最小连接数、IP Hash。
        # @type Scheduler: String
        # @param ListenerId: 转发规则所属的监听器 ID
        # @type ListenerId: String
        # @param RewriteTarget: 转发规则的重定向目标信息
        # @type RewriteTarget: :class:`Tencentcloud::Clb.v20180317.models.RewriteTarget`
        # @param HttpGzip: 是否开启gzip
        # @type HttpGzip: Boolean
        # @param BeAutoCreated: 转发规则是否为自动创建
        # @type BeAutoCreated: Boolean
        # @param DefaultServer: 是否作为默认域名
        # @type DefaultServer: Boolean
        # @param Http2: 是否开启Http2
        # @type Http2: Boolean
        # @param ForwardType: 负载均衡与后端服务之间的转发协议
        # @type ForwardType: String
        # @param CreateTime: 转发规则的创建时间
        # @type CreateTime: String
        # @param TargetType: 后端服务器类型。NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。
        # @type TargetType: String
        # @param TargetGroup: 绑定的目标组基本信息；当规则绑定目标组时，会返回该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroup: :class:`Tencentcloud::Clb.v20180317.models.BasicTargetGroupInfo`
        # @param WafDomainId: WAF实例ID
        # @type WafDomainId: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时有效。目前暂未对外开放。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时有效。目前暂未对外开放。
        # @type TrpcFunc: String
        # @param QuicStatus: QUIC状态。QUIC_ACTIVE表示开启，QUIC_INACTIVE表示未开启。注意，只有HTTPS域名才能开启QUIC。
        # @type QuicStatus: String
        # @param Domains: 转发规则的域名列表。
        # @type Domains: Array
        # @param TargetGroupList: 绑定的目标组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroupList: Array
        # @param OAuth: OAuth配置状态信息。
        # @type OAuth: :class:`Tencentcloud::Clb.v20180317.models.OAuth`
        # @param CookieName: 自定义cookie名。
        # @type CookieName: String

        attr_accessor :LocationId, :Domain, :Url, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :ListenerId, :RewriteTarget, :HttpGzip, :BeAutoCreated, :DefaultServer, :Http2, :ForwardType, :CreateTime, :TargetType, :TargetGroup, :WafDomainId, :TrpcCallee, :TrpcFunc, :QuicStatus, :Domains, :TargetGroupList, :OAuth, :CookieName

        def initialize(locationid=nil, domain=nil, url=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, listenerid=nil, rewritetarget=nil, httpgzip=nil, beautocreated=nil, defaultserver=nil, http2=nil, forwardtype=nil, createtime=nil, targettype=nil, targetgroup=nil, wafdomainid=nil, trpccallee=nil, trpcfunc=nil, quicstatus=nil, domains=nil, targetgrouplist=nil, oauth=nil, cookiename=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @ListenerId = listenerid
          @RewriteTarget = rewritetarget
          @HttpGzip = httpgzip
          @BeAutoCreated = beautocreated
          @DefaultServer = defaultserver
          @Http2 = http2
          @ForwardType = forwardtype
          @CreateTime = createtime
          @TargetType = targettype
          @TargetGroup = targetgroup
          @WafDomainId = wafdomainid
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
          @QuicStatus = quicstatus
          @Domains = domains
          @TargetGroupList = targetgrouplist
          @OAuth = oauth
          @CookieName = cookiename
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateOutput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @ListenerId = params['ListenerId']
          unless params['RewriteTarget'].nil?
            @RewriteTarget = RewriteTarget.new
            @RewriteTarget.deserialize(params['RewriteTarget'])
          end
          @HttpGzip = params['HttpGzip']
          @BeAutoCreated = params['BeAutoCreated']
          @DefaultServer = params['DefaultServer']
          @Http2 = params['Http2']
          @ForwardType = params['ForwardType']
          @CreateTime = params['CreateTime']
          @TargetType = params['TargetType']
          unless params['TargetGroup'].nil?
            @TargetGroup = BasicTargetGroupInfo.new
            @TargetGroup.deserialize(params['TargetGroup'])
          end
          @WafDomainId = params['WafDomainId']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
          @QuicStatus = params['QuicStatus']
          @Domains = params['Domains']
          unless params['TargetGroupList'].nil?
            @TargetGroupList = []
            params['TargetGroupList'].each do |i|
              basictargetgroupinfo_tmp = BasicTargetGroupInfo.new
              basictargetgroupinfo_tmp.deserialize(i)
              @TargetGroupList << basictargetgroupinfo_tmp
            end
          end
          unless params['OAuth'].nil?
            @OAuth = OAuth.new
            @OAuth.deserialize(params['OAuth'])
          end
          @CookieName = params['CookieName']
        end
      end

      # HTTP/HTTPS监听器下的转发规则绑定的后端服务信息
      class RuleTargets < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则的 ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # @type Url: String
        # @param Targets: 后端服务的信息
        # @type Targets: Array
        # @param FunctionTargets: 后端云函数的信息
        # @type FunctionTargets: Array

        attr_accessor :LocationId, :Domain, :Url, :Targets, :FunctionTargets

        def initialize(locationid=nil, domain=nil, url=nil, targets=nil, functiontargets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
          @FunctionTargets = functiontargets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              backend_tmp = Backend.new
              backend_tmp.deserialize(i)
              @Targets << backend_tmp
            end
          end
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
        end
      end

      # 七层规则对象
      class RulesItems < TencentCloud::Common::AbstractModel
        # @param LocationId: 规则id
        # @type LocationId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Url: uri
        # @type Url: String
        # @param Targets: 绑定的后端对象
        # @type Targets: Array

        attr_accessor :LocationId, :Domain, :Url, :Targets

        def initialize(locationid=nil, domain=nil, url=nil, targets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              lbrstargets_tmp = LbRsTargets.new
              lbrstargets_tmp.deserialize(i)
              @Targets << lbrstargets_tmp
            end
          end
        end
      end

      # 模型路由网络服务信息
      class ServiceEndPoints < TencentCloud::Common::AbstractModel
        # @param CertId: <p>证书ID</p>
        # @type CertId: String
        # @param Port: <p>监听端口</p>
        # @type Port: Integer
        # @param Schema: <p>网络协议</p>
        # @type Schema: String

        attr_accessor :CertId, :Port, :Schema

        def initialize(certid=nil, port=nil, schema=nil)
          @CertId = certid
          @Port = port
          @Schema = schema
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Port = params['Port']
          @Schema = params['Schema']
        end
      end

      # BYOK信息
      class ServiceProvider < TencentCloud::Common::AbstractModel
        # @param AccessType: <p>BYOK类型</p>
        # @type AccessType: String
        # @param InputModalities: <p>单个byok实例下该模型可支持的输入多模态能力列表。</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>file： 支持文件输入（当前仅支持pdf）</li><li>image： 支持图像输入</li></ul>
        # @type InputModalities: Array
        # @param Protocol: <p>模型协议</p>
        # @type Protocol: String
        # @param Provider: <p>BYOK的所属厂商</p>
        # @type Provider: String
        # @param ServiceProviderId: <p>BYOK实例ID</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>BYOK名称</p>
        # @type ServiceProviderName: String

        attr_accessor :AccessType, :InputModalities, :Protocol, :Provider, :ServiceProviderId, :ServiceProviderName

        def initialize(accesstype=nil, inputmodalities=nil, protocol=nil, provider=nil, serviceproviderid=nil, serviceprovidername=nil)
          @AccessType = accesstype
          @InputModalities = inputmodalities
          @Protocol = protocol
          @Provider = provider
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @InputModalities = params['InputModalities']
          @Protocol = params['Protocol']
          @Provider = params['Provider']
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
        end
      end

      # BYOK 实例（ServiceProvider）维度积分系数明细
      class ServiceProviderCoefficient < TencentCloud::Common::AbstractModel
        # @param Coefficient: <p>该 BYOK 实例（ServiceProvider）维度的积分系数。</p><p>可选字段：仅当该实例单独配置了 ServiceProvider 维度系数时返回，返回值即该实例的生效系数；未返回时表示该实例继承所属 ModelAlias 的 <code>Coefficient</code>。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coefficient: :class:`Tencentcloud::Clb.v20180317.models.Coefficient`
        # @param ServiceProviderId: <p>BYOK 实例（ServiceProvider）ID。</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>BYOK 实例（ServiceProvider）名称。</p>
        # @type ServiceProviderName: String

        attr_accessor :Coefficient, :ServiceProviderId, :ServiceProviderName

        def initialize(coefficient=nil, serviceproviderid=nil, serviceprovidername=nil)
          @Coefficient = coefficient
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
        end

        def deserialize(params)
          unless params['Coefficient'].nil?
            @Coefficient = Coefficient.new
            @Coefficient.deserialize(params['Coefficient'])
          end
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
        end
      end

      # 服务商详情
      class ServiceProviderItem < TencentCloud::Common::AbstractModel
        # @param ServiceProviderId: <p>服务提供商 ID</p>
        # @type ServiceProviderId: String
        # @param ServiceProviderName: <p>用户自定义服务提供商名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceProviderName: String
        # @param ModelProvider: <p>模型供应商</p>
        # @type ModelProvider: String
        # @param InputModalities: <p>该byok实例下该模型可支持的输入多模态能力列表。</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>file： 支持文件输入（当前仅支持pdf）</li><li>image： 支持图像输入</li></ul>
        # @type InputModalities: Array

        attr_accessor :ServiceProviderId, :ServiceProviderName, :ModelProvider, :InputModalities

        def initialize(serviceproviderid=nil, serviceprovidername=nil, modelprovider=nil, inputmodalities=nil)
          @ServiceProviderId = serviceproviderid
          @ServiceProviderName = serviceprovidername
          @ModelProvider = modelprovider
          @InputModalities = inputmodalities
        end

        def deserialize(params)
          @ServiceProviderId = params['ServiceProviderId']
          @ServiceProviderName = params['ServiceProviderName']
          @ModelProvider = params['ModelProvider']
          @InputModalities = params['InputModalities']
        end
      end

      # model 信息
      class ServiceProviderModelItem < TencentCloud::Common::AbstractModel
        # @param AssociatedModelRouters: <p>关联的模型路由实例列表</p>
        # @type AssociatedModelRouters: Array
        # @param InputModalities: <p>该模型当前支持的输入多模态能力列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul><p>默认值：text</p>
        # @type InputModalities: Array
        # @param ModelAlias: <p>模型别名, 可以用于实际访问</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAlias: String
        # @param ModelId: <p>模型唯一标识, 原始模型名称</p>
        # @type ModelId: String
        # @param ProbedInputModalities: <p>该模型经探测最多支持的输入多模态能力列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>file： 支持文件输入（当前仅支持pdf）</li><li>image： 支持图像输入</li></ul><p>模型不健康时列表为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProbedInputModalities: Array

        attr_accessor :AssociatedModelRouters, :InputModalities, :ModelAlias, :ModelId, :ProbedInputModalities

        def initialize(associatedmodelrouters=nil, inputmodalities=nil, modelalias=nil, modelid=nil, probedinputmodalities=nil)
          @AssociatedModelRouters = associatedmodelrouters
          @InputModalities = inputmodalities
          @ModelAlias = modelalias
          @ModelId = modelid
          @ProbedInputModalities = probedinputmodalities
        end

        def deserialize(params)
          unless params['AssociatedModelRouters'].nil?
            @AssociatedModelRouters = []
            params['AssociatedModelRouters'].each do |i|
              associatedmodelrouteritem_tmp = AssociatedModelRouterItem.new
              associatedmodelrouteritem_tmp.deserialize(i)
              @AssociatedModelRouters << associatedmodelrouteritem_tmp
            end
          end
          @InputModalities = params['InputModalities']
          @ModelAlias = params['ModelAlias']
          @ModelId = params['ModelId']
          @ProbedInputModalities = params['ProbedInputModalities']
        end
      end

      # SetCustomizedConfigForLoadBalancer请求参数结构体
      class SetCustomizedConfigForLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param OperationType: 操作类型。
        # - ADD：创建
        # - DELETE：删除
        # - UPDATE：修改
        # - BIND：绑定
        # - UNBIND：解绑
        # @type OperationType: String
        # @param UconfigId: 个性化配置ID。除了创建个性化配置外，必传此字段，如：pz-1234abcd
        # @type UconfigId: String
        # @param ConfigContent: 个性化配置内容。创建个性化配置或修改个性化配置的内容时，必传此字段。
        # 具体限制查看 [七层个性化配置](https://cloud.tencent.com/document/product/214/15171)
        # @type ConfigContent: String
        # @param ConfigName: 个性化配置名称。创建个性化配置或修改个性化配置的名字时，必传此字段。
        # @type ConfigName: String
        # @param LoadBalancerIds: 负载均衡实例ID。绑定解绑时，必传此字段。
        # 可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerIds: Array
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :OperationType, :UconfigId, :ConfigContent, :ConfigName, :LoadBalancerIds, :Tags

        def initialize(operationtype=nil, uconfigid=nil, configcontent=nil, configname=nil, loadbalancerids=nil, tags=nil)
          @OperationType = operationtype
          @UconfigId = uconfigid
          @ConfigContent = configcontent
          @ConfigName = configname
          @LoadBalancerIds = loadbalancerids
          @Tags = tags
        end

        def deserialize(params)
          @OperationType = params['OperationType']
          @UconfigId = params['UconfigId']
          @ConfigContent = params['ConfigContent']
          @ConfigName = params['ConfigName']
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # SetCustomizedConfigForLoadBalancer返回参数结构体
      class SetCustomizedConfigForLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param ConfigId: 个性化配置ID，如：pz-1234abcd
        # @type ConfigId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigId, :RequestId

        def initialize(configid=nil, requestid=nil)
          @ConfigId = configid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @RequestId = params['RequestId']
        end
      end

      # SetLoadBalancerClsLog请求参数结构体
      class SetLoadBalancerClsLogRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param LogSetId: 日志服务(CLS)的日志集 ID。
        # <li>增加和更新日志主题时可调用 [DescribeLogsets](https://cloud.tencent.com/document/product/614/58624) 接口获取日志集 ID。</li>
        # <li>删除日志主题时，此参数填写为**空字符串**即可。</li>
        # @type LogSetId: String
        # @param LogTopicId: 日志服务(CLS)的日志主题 ID。
        # <li>增加和更新日志主题时可调用 [DescribeTopics](https://cloud.tencent.com/document/product/614/56454) 接口获取日志主题 ID。</li>
        # <li>删除日志主题时，此参数填写为**空字符串**即可。</li>
        # @type LogTopicId: String
        # @param LogType: 日志类型：
        # <li>ACCESS：访问日志</li>
        # <li>HEALTH：健康检查日志</li>
        # 默认为ACCESS。
        # @type LogType: String

        attr_accessor :LoadBalancerId, :LogSetId, :LogTopicId, :LogType

        def initialize(loadbalancerid=nil, logsetid=nil, logtopicid=nil, logtype=nil)
          @LoadBalancerId = loadbalancerid
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @LogType = logtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @LogType = params['LogType']
        end
      end

      # SetLoadBalancerClsLog返回参数结构体
      class SetLoadBalancerClsLogResponse < TencentCloud::Common::AbstractModel
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

      # SetLoadBalancerSecurityGroups请求参数结构体
      class SetLoadBalancerSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param SecurityGroups: 安全组ID构成的数组，一个负载均衡实例最多可绑定50个安全组，如果要解绑所有安全组，可不传此参数。
        # 可以通过 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/215/15808) 接口查询。
        # @type SecurityGroups: Array

        attr_accessor :LoadBalancerId, :SecurityGroups

        def initialize(loadbalancerid=nil, securitygroups=nil)
          @LoadBalancerId = loadbalancerid
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SecurityGroups = params['SecurityGroups']
        end
      end

      # SetLoadBalancerSecurityGroups返回参数结构体
      class SetLoadBalancerSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # SetLoadBalancerStartStatus请求参数结构体
      class SetLoadBalancerStartStatusRequest < TencentCloud::Common::AbstractModel
        # @param OperationType: 操作类型。Start：启动实例，Stop：停止实例。
        # @type OperationType: String
        # @param LoadBalancerId: 负载均衡实例ID，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param ListenerIds: 监听器ID。如果该字段为空，则表示操作负载均衡实例，如果不为空，则表示操作监听器。
        # @type ListenerIds: Array

        attr_accessor :OperationType, :LoadBalancerId, :ListenerIds

        def initialize(operationtype=nil, loadbalancerid=nil, listenerids=nil)
          @OperationType = operationtype
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @OperationType = params['OperationType']
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # SetLoadBalancerStartStatus返回参数结构体
      class SetLoadBalancerStartStatusResponse < TencentCloud::Common::AbstractModel
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

      # SetSecurityGroupForLoadbalancers请求参数结构体
      class SetSecurityGroupForLoadbalancersRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组ID，如 sg-12345678。可以通过 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/215/15808) 接口获取。
        # @type SecurityGroup: String
        # @param OperationType: ADD 绑定安全组；
        # DEL 解绑安全组
        # @type OperationType: String
        # @param LoadBalancerIds: 负载均衡实例ID数组，可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # 列表支持的最大长度为20。
        # @type LoadBalancerIds: Array

        attr_accessor :SecurityGroup, :OperationType, :LoadBalancerIds

        def initialize(securitygroup=nil, operationtype=nil, loadbalancerids=nil)
          @SecurityGroup = securitygroup
          @OperationType = operationtype
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @SecurityGroup = params['SecurityGroup']
          @OperationType = params['OperationType']
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # SetSecurityGroupForLoadbalancers返回参数结构体
      class SetSecurityGroupForLoadbalancersResponse < TencentCloud::Common::AbstractModel
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

      # 升级为性能容量型参数
      class SlaUpdateParam < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # 可以通过 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询。
        # @type LoadBalancerId: String
        # @param SlaType: 性能容量型规格，取值范围：
        # <li> clb.c2.medium：标准型规格 </li>
        # <li> clb.c3.small：高阶型1规格 </li>
        # <li> clb.c3.medium：高阶型2规格 </li>
        # <li> clb.c4.small：超强型1规格 </li>
        # <li> clb.c4.medium：超强型2规格 </li>
        # <li> clb.c4.large：超强型3规格 </li>
        # <li> clb.c4.xlarge：超强型4规格 </li>如需了解规格详情，请参见[实例规格对比](https://cloud.tencent.com/document/product/214/84689)
        # @type SlaType: String

        attr_accessor :LoadBalancerId, :SlaType

        def initialize(loadbalancerid=nil, slatype=nil)
          @LoadBalancerId = loadbalancerid
          @SlaType = slatype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SlaType = params['SlaType']
        end
      end

      # SnatIp的信息结构
      class SnatIp < TencentCloud::Common::AbstractModel
        # @param SubnetId: 私有网络子网的唯一性id，如subnet-12345678
        # @type SubnetId: String
        # @param Ip: IP地址，如192.168.0.1
        # @type Ip: String

        attr_accessor :SubnetId, :Ip

        def initialize(subnetid=nil, ip=nil)
          @SubnetId = subnetid
          @Ip = ip
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Ip = params['Ip']
        end
      end

      # 排序条件
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: <p>排序的字段</p>
        # @type Field: String
        # @param Order: <p>排序方式，支持ASC、DESC</p>
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 规格可用性
      class SpecAvailability < TencentCloud::Common::AbstractModel
        # @param SpecType: 规格类型。
        # <li>clb.c2.medium（标准型）</li><li>clb.c3.small（高阶型1）</li><li>clb.c3.medium（高阶型2）</li>
        # <li>clb.c4.small（超强型1）</li><li>clb.c4.medium（超强型2）</li><li>clb.c4.large（超强型3）</li><li>clb.c4.xlarge（超强型4）</li><li>shared（共享型）</li>
        # @type SpecType: String
        # @param Availability: 规格可用性。资源可用性，"Available"：可用，"Unavailable"：不可用
        # @type Availability: String

        attr_accessor :SpecType, :Availability

        def initialize(spectype=nil, availability=nil)
          @SpecType = spectype
          @Availability = availability
        end

        def deserialize(params)
          @SpecType = params['SpecType']
          @Availability = params['Availability']
        end
      end

      # 模型路由实例的标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

      # 转发目标，即绑定在负载均衡上的后端服务
      class Target < TencentCloud::Common::AbstractModel
        # @param Port: 后端服务的监听端口。
        # 注意：绑定CVM（云服务器）或ENI（弹性网卡）时必传此参数
        # @type Port: Integer
        # @param Type: 后端服务的类型，可取：CVM（云服务器）、ENI（弹性网卡）；作为入参时，目前本参数暂不生效。
        # @type Type: String
        # @param InstanceId: 绑定CVM时需要传入此参数，代表CVM的唯一 ID，可通过 DescribeInstances 接口返回字段中的 InstanceId 字段获取。表示绑定主网卡主IPv4地址；以下场景都不支持指定InstanceId：绑定非CVM，绑定CVM上的辅助网卡IP，通过跨域2.0绑定CVM，以及绑定CVM的IPv6地址等。
        # 注意：参数 InstanceId、EniIp 有且只能传入其中一个参数。
        # @type InstanceId: String
        # @param Weight: 后端服务修改后的转发权重，取值范围：[0, 100]，默认为 10。此参数的优先级高于[RsWeightRule](https://cloud.tencent.com/document/api/214/30694#RsWeightRule)中的Weight参数，即最终的权重值以此Weight参数值为准，仅当此Weight参数为空时，才以RsWeightRule中的Weight参数为准。
        # @type Weight: Integer
        # @param EniIp: 绑定IP时需要传入此参数，支持弹性网卡的IP和其他内网IP，如果是弹性网卡则必须先绑定至CVM，然后才能绑定到负载均衡实例。
        # 注意：参数 InstanceId、EniIp 有且只能传入其中一个参数。如果绑定双栈IPV6子机，则必须传该参数。如果是跨地域绑定，则必须传该参数，不支持传InstanceId参数。
        # @type EniIp: String
        # @param Tag: 标签。
        # @type Tag: String

        attr_accessor :Port, :Type, :InstanceId, :Weight, :EniIp, :Tag

        def initialize(port=nil, type=nil, instanceid=nil, weight=nil, eniip=nil, tag=nil)
          @Port = port
          @Type = type
          @InstanceId = instanceid
          @Weight = weight
          @EniIp = eniip
          @Tag = tag
        end

        def deserialize(params)
          @Port = params['Port']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @EniIp = params['EniIp']
          @Tag = params['Tag']
        end
      end

      # 规则与目标组的关联关系
      class TargetGroupAssociation < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param ListenerId: 监听器ID。访问AssociateTargetGroups和DisassociateTargetGroups接口时必传此参数。
        # @type ListenerId: String
        # @param LocationId: 转发规则ID
        # @type LocationId: String
        # @param Weight: 目标组权重，范围[0, 100]。仅绑定v2目标组时生效，如果不存在，则默认为10。
        # @type Weight: Integer

        attr_accessor :LoadBalancerId, :TargetGroupId, :ListenerId, :LocationId, :Weight

        def initialize(loadbalancerid=nil, targetgroupid=nil, listenerid=nil, locationid=nil, weight=nil)
          @LoadBalancerId = loadbalancerid
          @TargetGroupId = targetgroupid
          @ListenerId = listenerid
          @LocationId = locationid
          @Weight = weight
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @TargetGroupId = params['TargetGroupId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Weight = params['Weight']
        end
      end

      # 目标组绑定的后端服务器
      class TargetGroupBackend < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param Type: 后端服务的类型，可取：CVM、ENI（即将支持）
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口，全端口段监听器此字段返回0，代表无效端口，即不支持设置。
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # @type InstanceName: String
        # @param RegisteredTime: 后端服务被绑定的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID
        # @type EniId: String
        # @param ZoneId: 后端服务的可用区ID
        # @type ZoneId: Integer

        attr_accessor :TargetGroupId, :Type, :InstanceId, :Port, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RegisteredTime, :EniId, :ZoneId

        def initialize(targetgroupid=nil, type=nil, instanceid=nil, port=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, registeredtime=nil, eniid=nil, zoneid=nil)
          @TargetGroupId = targetgroupid
          @Type = type
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RegisteredTime = registeredtime
          @EniId = eniid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
          @ZoneId = params['ZoneId']
        end
      end

      # 目标组健康检查详情
      class TargetGroupHealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthSwitch: 是否开启健康检查。
        # @type HealthSwitch: Boolean
        # @param Protocol: 健康检查方式， 其中仅V2新版目标组类型支持该参数， 支持取值 TCP | HTTP | HTTPS | PING | CUSTOM，其中:
        # <ur><li>当目标组后端转发协议为TCP时， 健康检查方式支持 TCP/HTTP/CUSTOM， 默认为TCP。</li><li>当目标组后端转发协议为UDP时， 健康检查方式支持 PING/CUSTOM，默认为PING。</li><li>当目标组后端转发协议为HTTP时， 健康检查方式支持 HTTP/TCP， 默认为HTTP。</li><li>当目标组后端转发协议为HTTPS时， 健康检查方式支持 HTTPS/TCP， 默认为HTTPS。</li><li>当目标组后端转发协议为GRPC时， 健康检查方式支持GRPC/TCP， 默认为GRPC。</li></ur>
        # @type Protocol: String
        # @param Port: 自定义探测相关参数。健康检查端口，默认为后端服务的端口，除非您希望指定特定端口，否则建议留空。（仅适用于TCP/UDP目标组）。
        # @type Port: Integer
        # @param Timeout: 健康检查超时时间。 默认为2秒。 可配置范围：2 - 30秒。
        # @type Timeout: Integer
        # @param GapTime: 检测间隔时间。 默认为5秒。 可配置范围：2 - 300秒。
        # @type GapTime: Integer
        # @param GoodLimit: 检测健康阈值。 默认为3秒。 可配置范围：2 - 10次。
        # @type GoodLimit: Integer
        # @param BadLimit: 检测不健康阈值。 默认为3秒。 可配置范围：2 - 10次。
        # @type BadLimit: Integer
        # @param JumboFrame: 目标组下的所有rs的探测包是否开启巨帧。默认开启。仅GWLB类型目标组支持该参数。
        # @type JumboFrame: Boolean
        # @param HttpCode: 健康检查状态码（仅适用于HTTP/HTTPS目标组、TCP目标组的HTTP健康检查方式）。可选值：1~31，默认 31，其中：<url> <li>1 表示探测后返回值 1xx 代表健康。</li><li>2 表示返回 2xx 代表健康。</li><li>4 表示返回 3xx 代表健康。</li><li>8 表示返回 4xx 代表健康。</li><li>16 表示返回 5xx 代表健康。</li></url>若希望多种返回码都可代表健康，则将相应的值相加。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCode: Integer
        # @param HttpCheckDomain: 健康检查域名， 其中：<ur><li>仅适用于HTTP/HTTPS目标组和TCP目标组的HTTP健康检查方式。</li><li>针对HTTP/HTTPS目标组，当使用HTTP健康检查方式时，该参数为必填项。</li></ur>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckDomain: String
        # @param HttpCheckPath: 健康检查路径（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckPath: String
        # @param HttpCheckMethod: 健康检查方法（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式），默认值：HEAD，可选值HEAD或GET。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckMethod: String
        # @param ContextType: 健康检查的输入格式，健康检查方式取CUSTOM时，必填此字段，可取值：HEX或TEXT，其中：<ur><li>TEXT：文本格式。</li><li>HEX：十六进制格式， SendContext和RecvContext的字符只能在0123456789ABCDEF中选取且长度必须是偶数位。</li><li>仅适用于TCP/UDP目标组。</li></ur>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextType: String
        # @param SendContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查发送的请求内容，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP目标组）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendContext: String
        # @param RecvContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查返回的结果，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP目标组）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecvContext: String
        # @param HttpVersion: HTTP版本, 其中：<ur><li>健康检查协议CheckType的值取HTTP时，必传此字段。</li><li>支持配置选项：HTTP/1.0, HTTP/1.1。</li><li>仅适用于TCP目标组。</li></ur>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpVersion: String
        # @param ExtendedCode: GRPC健康检查状态码（仅适用于后端转发协议为GRPC的目标组）。默认值为 12，可输入值为数值、多个数值、或者范围，例如 20 或 20,25 或 0-99。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendedCode: String

        attr_accessor :HealthSwitch, :Protocol, :Port, :Timeout, :GapTime, :GoodLimit, :BadLimit, :JumboFrame, :HttpCode, :HttpCheckDomain, :HttpCheckPath, :HttpCheckMethod, :ContextType, :SendContext, :RecvContext, :HttpVersion, :ExtendedCode

        def initialize(healthswitch=nil, protocol=nil, port=nil, timeout=nil, gaptime=nil, goodlimit=nil, badlimit=nil, jumboframe=nil, httpcode=nil, httpcheckdomain=nil, httpcheckpath=nil, httpcheckmethod=nil, contexttype=nil, sendcontext=nil, recvcontext=nil, httpversion=nil, extendedcode=nil)
          @HealthSwitch = healthswitch
          @Protocol = protocol
          @Port = port
          @Timeout = timeout
          @GapTime = gaptime
          @GoodLimit = goodlimit
          @BadLimit = badlimit
          @JumboFrame = jumboframe
          @HttpCode = httpcode
          @HttpCheckDomain = httpcheckdomain
          @HttpCheckPath = httpcheckpath
          @HttpCheckMethod = httpcheckmethod
          @ContextType = contexttype
          @SendContext = sendcontext
          @RecvContext = recvcontext
          @HttpVersion = httpversion
          @ExtendedCode = extendedcode
        end

        def deserialize(params)
          @HealthSwitch = params['HealthSwitch']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Timeout = params['Timeout']
          @GapTime = params['GapTime']
          @GoodLimit = params['GoodLimit']
          @BadLimit = params['BadLimit']
          @JumboFrame = params['JumboFrame']
          @HttpCode = params['HttpCode']
          @HttpCheckDomain = params['HttpCheckDomain']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckMethod = params['HttpCheckMethod']
          @ContextType = params['ContextType']
          @SendContext = params['SendContext']
          @RecvContext = params['RecvContext']
          @HttpVersion = params['HttpVersion']
          @ExtendedCode = params['ExtendedCode']
        end
      end

      # 目标组信息
      class TargetGroupInfo < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: <p>目标组ID</p>
        # @type TargetGroupId: String
        # @param VpcId: <p>目标组的vpcid</p>
        # @type VpcId: String
        # @param TargetGroupName: <p>目标组的名字</p>
        # @type TargetGroupName: String
        # @param Port: <p>目标组的默认端口，全监听目标组此字段返回0，表示无效端口。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param CreatedTime: <p>目标组的创建时间</p>
        # @type CreatedTime: String
        # @param UpdatedTime: <p>目标组的修改时间</p>
        # @type UpdatedTime: String
        # @param AssociatedRule: <p>关联到的规则数组。在DescribeTargetGroupList接口调用时无法获取到该参数。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedRule: Array
        # @param Protocol: <p>目标组后端转发协议, 仅v2新版目标组返回有效值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param ScheduleAlgorithm: <p>调度算法，仅后端转发协议为(HTTP、HTTPS、GRPC)的目标组返回有效值， 可选值：<br><ur></p><li>WRR:按权重轮询。</li><li>LEAST_CONN:最小连接数。</li><li>IP_HASH:按IP哈希。</li></ur>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleAlgorithm: String
        # @param HealthCheck: <p>健康检查详情。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.TargetGroupHealthCheck`
        # @param TargetGroupType: <p>目标组类型，当前支持v1(旧版目标组), v2(新版目标组)。默认为v1旧版目标组。</p>
        # @type TargetGroupType: String
        # @param AssociatedRuleCount: <p>目标组已关联的规则数。</p>
        # @type AssociatedRuleCount: Integer
        # @param RegisteredInstancesCount: <p>目标组内的实例数量。</p>
        # @type RegisteredInstancesCount: Integer
        # @param Tag: <p>标签。</p>
        # @type Tag: Array
        # @param Weight: <p>默认权重。只有v2类型目标组返回该字段。当返回为NULL时， 表示未设置默认权重。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param FullListenSwitch: <p>是否全监听目标组。</p>
        # @type FullListenSwitch: Boolean
        # @param KeepaliveEnable: <p>是否开启长连接,  仅后端转发协议为HTTP/HTTPS/GRPC目标组返回有效值。</p>
        # @type KeepaliveEnable: Boolean
        # @param SessionExpireTime: <p>会话保持时间，仅后端转发协议为HTTP/HTTPS/GRPC目标组返回有效值。</p>
        # @type SessionExpireTime: Integer
        # @param IpVersion: <p>IP版本。</p>
        # @type IpVersion: String
        # @param SnatEnable: <p>是否开启SNAT</p>
        # @type SnatEnable: Boolean

        attr_accessor :TargetGroupId, :VpcId, :TargetGroupName, :Port, :CreatedTime, :UpdatedTime, :AssociatedRule, :Protocol, :ScheduleAlgorithm, :HealthCheck, :TargetGroupType, :AssociatedRuleCount, :RegisteredInstancesCount, :Tag, :Weight, :FullListenSwitch, :KeepaliveEnable, :SessionExpireTime, :IpVersion, :SnatEnable

        def initialize(targetgroupid=nil, vpcid=nil, targetgroupname=nil, port=nil, createdtime=nil, updatedtime=nil, associatedrule=nil, protocol=nil, schedulealgorithm=nil, healthcheck=nil, targetgrouptype=nil, associatedrulecount=nil, registeredinstancescount=nil, tag=nil, weight=nil, fulllistenswitch=nil, keepaliveenable=nil, sessionexpiretime=nil, ipversion=nil, snatenable=nil)
          @TargetGroupId = targetgroupid
          @VpcId = vpcid
          @TargetGroupName = targetgroupname
          @Port = port
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @AssociatedRule = associatedrule
          @Protocol = protocol
          @ScheduleAlgorithm = schedulealgorithm
          @HealthCheck = healthcheck
          @TargetGroupType = targetgrouptype
          @AssociatedRuleCount = associatedrulecount
          @RegisteredInstancesCount = registeredinstancescount
          @Tag = tag
          @Weight = weight
          @FullListenSwitch = fulllistenswitch
          @KeepaliveEnable = keepaliveenable
          @SessionExpireTime = sessionexpiretime
          @IpVersion = ipversion
          @SnatEnable = snatenable
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @VpcId = params['VpcId']
          @TargetGroupName = params['TargetGroupName']
          @Port = params['Port']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['AssociatedRule'].nil?
            @AssociatedRule = []
            params['AssociatedRule'].each do |i|
              associationitem_tmp = AssociationItem.new
              associationitem_tmp.deserialize(i)
              @AssociatedRule << associationitem_tmp
            end
          end
          @Protocol = params['Protocol']
          @ScheduleAlgorithm = params['ScheduleAlgorithm']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @TargetGroupType = params['TargetGroupType']
          @AssociatedRuleCount = params['AssociatedRuleCount']
          @RegisteredInstancesCount = params['RegisteredInstancesCount']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tag << taginfo_tmp
            end
          end
          @Weight = params['Weight']
          @FullListenSwitch = params['FullListenSwitch']
          @KeepaliveEnable = params['KeepaliveEnable']
          @SessionExpireTime = params['SessionExpireTime']
          @IpVersion = params['IpVersion']
          @SnatEnable = params['SnatEnable']
        end
      end

      # 目标组实例
      class TargetGroupInstance < TencentCloud::Common::AbstractModel
        # @param BindIP: 目标组实例的内网IP
        # @type BindIP: String
        # @param Port: 目标组实例的端口，全监听目标组不支持传此字段。
        # @type Port: Integer
        # @param Weight: 目标组实例的权重
        # v2目标组需要配置权重，调用CreateTargetGroup接口创建目标组时该参数与创建接口中的Weight参数必填其一。
        # 取值范围：0-100
        # @type Weight: Integer
        # @param NewPort: 目标组实例的新端口，全监听目标组不支持传此字段。
        # @type NewPort: Integer

        attr_accessor :BindIP, :Port, :Weight, :NewPort

        def initialize(bindip=nil, port=nil, weight=nil, newport=nil)
          @BindIP = bindip
          @Port = port
          @Weight = weight
          @NewPort = newport
        end

        def deserialize(params)
          @BindIP = params['BindIP']
          @Port = params['Port']
          @Weight = params['Weight']
          @NewPort = params['NewPort']
        end
      end

      # 用于目标组后端rs健康检查状态。
      class TargetGroupInstanceStatus < TencentCloud::Common::AbstractModel
        # @param InstanceIp: 后端rs的IP
        # @type InstanceIp: String
        # @param Status: 健康检查状态，参数值及含义如下：
        # ● on：表示探测中。
        # ● off：表示健康检查关闭。
        # ● health：表示健康。
        # ● unhealth：表示异常。
        # @type Status: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Port: 端口
        # @type Port: Integer
        # @param EniId: 网卡ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniId: String

        attr_accessor :InstanceIp, :Status, :InstanceId, :Port, :EniId

        def initialize(instanceip=nil, status=nil, instanceid=nil, port=nil, eniid=nil)
          @InstanceIp = instanceip
          @Status = status
          @InstanceId = instanceid
          @Port = port
          @EniId = eniid
        end

        def deserialize(params)
          @InstanceIp = params['InstanceIp']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @EniId = params['EniId']
        end
      end

      # 描述一个Target的健康信息
      class TargetHealth < TencentCloud::Common::AbstractModel
        # @param IP: Target的内网IP
        # @type IP: String
        # @param Port: Target绑定的端口
        # @type Port: Integer
        # @param HealthStatus: 当前健康状态，true：健康，false：不健康（包括尚未开始探测、探测中、状态异常等几种状态）。只有处于健康状态（且权重大于0），负载均衡才会向其转发流量。
        # @type HealthStatus: Boolean
        # @param TargetId: Target的实例ID，如 ins-12345678
        # @type TargetId: String
        # @param HealthStatusDetail: 当前健康状态的详细信息。如：Alive、Dead、Unknown、Close。Alive状态为健康，Dead状态为异常，Unknown状态包括尚未开始探测、探测中、状态未知，Close表示健康检查关闭或监听器状态停止。
        # @type HealthStatusDetail: String
        # @param HealthStatusDetial: (**该参数对象即将下线，不推荐使用，请使用HealthStatusDetail获取健康详情**) 当前健康状态的详细信息。如：Alive、Dead、Unknown。Alive状态为健康，Dead状态为异常，Unknown状态包括尚未开始探测、探测中、状态未知。
        # @type HealthStatusDetial: String
        # @param TargetGroupId: 目标组唯一ID。
        # @type TargetGroupId: String
        # @param Weight: Target的权重。
        # @type Weight: Integer

        attr_accessor :IP, :Port, :HealthStatus, :TargetId, :HealthStatusDetail, :HealthStatusDetial, :TargetGroupId, :Weight
        extend Gem::Deprecate
        deprecate :HealthStatusDetial, :none, 2026, 7
        deprecate :HealthStatusDetial=, :none, 2026, 7

        def initialize(ip=nil, port=nil, healthstatus=nil, targetid=nil, healthstatusdetail=nil, healthstatusdetial=nil, targetgroupid=nil, weight=nil)
          @IP = ip
          @Port = port
          @HealthStatus = healthstatus
          @TargetId = targetid
          @HealthStatusDetail = healthstatusdetail
          @HealthStatusDetial = healthstatusdetial
          @TargetGroupId = targetgroupid
          @Weight = weight
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
          @HealthStatus = params['HealthStatus']
          @TargetId = params['TargetId']
          @HealthStatusDetail = params['HealthStatusDetail']
          @HealthStatusDetial = params['HealthStatusDetial']
          @TargetGroupId = params['TargetGroupId']
          @Weight = params['Weight']
        end
      end

      # 负载均衡实例所绑定的后端服务的信息，包括所属地域、所属网络。
      class TargetRegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: Target所属地域，如 ap-guangzhou
        # @type Region: String
        # @param VpcId: Target所属网络，私有网络格式如 vpc-abcd1234，如果是基础网络，则为"0"
        # @type VpcId: String
        # @param NumericalVpcId: Target所属网络，私有网络格式如86323，如果是基础网络，则为0
        # @type NumericalVpcId: Integer

        attr_accessor :Region, :VpcId, :NumericalVpcId

        def initialize(region=nil, vpcid=nil, numericalvpcid=nil)
          @Region = region
          @VpcId = vpcid
          @NumericalVpcId = numericalvpcid
        end

        def deserialize(params)
          @Region = params['Region']
          @VpcId = params['VpcId']
          @NumericalVpcId = params['NumericalVpcId']
        end
      end

      # BYOK健康检查请求
      class TestConnectionRequestInfo < TencentCloud::Common::AbstractModel
        # @param RequestUrl: <p>请求URL</p>
        # @type RequestUrl: String
        # @param RequestBody: <p>请求体</p>
        # @type RequestBody: String
        # @param RequestHeaders: <p>请求头</p>
        # @type RequestHeaders: String

        attr_accessor :RequestUrl, :RequestBody, :RequestHeaders

        def initialize(requesturl=nil, requestbody=nil, requestheaders=nil)
          @RequestUrl = requesturl
          @RequestBody = requestbody
          @RequestHeaders = requestheaders
        end

        def deserialize(params)
          @RequestUrl = params['RequestUrl']
          @RequestBody = params['RequestBody']
          @RequestHeaders = params['RequestHeaders']
        end
      end

      # TestModelInputModalities请求参数结构体
      class TestModelInputModalitiesRequest < TencentCloud::Common::AbstractModel
        # @param Model: <p>待探测的模型（原始模型名称）</p>
        # @type Model: String
        # @param ProviderKey: <p>待探测的API Key（明文）</p>
        # @type ProviderKey: String
        # @param ProviderKeyId: <p>已创建的BYOK API Key ID（与ProviderKey二选一传入）</p>
        # @type ProviderKeyId: String
        # @param AccessType: <p>BYOK类型，当ProviderKey传入时必填</p>
        # @type AccessType: String
        # @param ModelProtocol: <p>模型厂商协议，当ProviderKey传入时必填</p>
        # @type ModelProtocol: String
        # @param ModelProvider: <p>模型的厂商</p>
        # @type ModelProvider: String
        # @param ApiBase: <p>自定义ApiBase，当ProviderKey传入且AccessType且PrivateCustom/PublicCustom时必填</p>
        # @type ApiBase: String
        # @param HostHeader: <p>请求携带的Host头部，当AccessType为PrivateCustom时生效</p>
        # @type HostHeader: String
        # @param ServiceProviderId: <p>BYOK实例ID，当AccessType为PrivateCustom时生效，ProviderKey传入时必填</p>
        # @type ServiceProviderId: String
        # @param VerifySSL: <p>是否校验服务提供商的SSL证书</p><p>PublicBYOK时为True且禁止传入；若传入VerifySSL，则优先同步入参逻辑；若传入了ServiceProviderId则同步已创建的Byok实例该Model的逻辑；否则PublicCustom模式下为True，PrivateCustom模式下为False。</p>
        # @type VerifySSL: Boolean

        attr_accessor :Model, :ProviderKey, :ProviderKeyId, :AccessType, :ModelProtocol, :ModelProvider, :ApiBase, :HostHeader, :ServiceProviderId, :VerifySSL

        def initialize(model=nil, providerkey=nil, providerkeyid=nil, accesstype=nil, modelprotocol=nil, modelprovider=nil, apibase=nil, hostheader=nil, serviceproviderid=nil, verifyssl=nil)
          @Model = model
          @ProviderKey = providerkey
          @ProviderKeyId = providerkeyid
          @AccessType = accesstype
          @ModelProtocol = modelprotocol
          @ModelProvider = modelprovider
          @ApiBase = apibase
          @HostHeader = hostheader
          @ServiceProviderId = serviceproviderid
          @VerifySSL = verifyssl
        end

        def deserialize(params)
          @Model = params['Model']
          @ProviderKey = params['ProviderKey']
          @ProviderKeyId = params['ProviderKeyId']
          @AccessType = params['AccessType']
          @ModelProtocol = params['ModelProtocol']
          @ModelProvider = params['ModelProvider']
          @ApiBase = params['ApiBase']
          @HostHeader = params['HostHeader']
          @ServiceProviderId = params['ServiceProviderId']
          @VerifySSL = params['VerifySSL']
        end
      end

      # TestModelInputModalities返回参数结构体
      class TestModelInputModalitiesResponse < TencentCloud::Common::AbstractModel
        # @param Model: <p>探测的模型</p>
        # @type Model: String
        # @param SupportedModalities: <p>该模型确认支持的输入模态列表</p><p>枚举值：</p><ul><li>text： 支持文本输入</li><li>image： 支持图像输入</li><li>file： 支持文件输入（当前仅支持pdf）</li></ul><p>收到上游大模型对于输入模态的响应即为“确认支持”</p>
        # @type SupportedModalities: Array
        # @param ProbeDetails: <p>每个待探测模态的详细请求结果</p>
        # @type ProbeDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :SupportedModalities, :ProbeDetails, :RequestId

        def initialize(model=nil, supportedmodalities=nil, probedetails=nil, requestid=nil)
          @Model = model
          @SupportedModalities = supportedmodalities
          @ProbeDetails = probedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @Model = params['Model']
          @SupportedModalities = params['SupportedModalities']
          unless params['ProbeDetails'].nil?
            @ProbeDetails = []
            params['ProbeDetails'].each do |i|
              modalityprobedetail_tmp = ModalityProbeDetail.new
              modalityprobedetail_tmp.deserialize(i)
              @ProbeDetails << modalityprobedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TestServiceProviderConnection请求参数结构体
      class TestServiceProviderConnectionRequest < TencentCloud::Common::AbstractModel
        # @param Models: <p>需要探测的模型列表</p><p>入参限制：上限为20个模型</p>
        # @type Models: Array
        # @param ProviderKey: <p>需要探测的Key</p>
        # @type ProviderKey: String
        # @param ProviderKeyId: <p>需要探测的KeyId，和ProviderKey二者传一个即可</p>
        # @type ProviderKeyId: String
        # @param AccessType: <p>BYOK类型，当ProviderKey存在时必传</p>
        # @type AccessType: String
        # @param ModelProvider: <p>模型的厂商</p>
        # @type ModelProvider: String
        # @param ModelProtocol: <p>模型厂商协议，当ProviderKey存在时必传</p>
        # @type ModelProtocol: String
        # @param ApiBase: <p>BYOK类型，当AccessType为PublicCustom时生效</p>
        # @type ApiBase: String
        # @param HostHeader: <p>请求携带的Host头部，当AccessType为PrivateCustom时生效</p>
        # @type HostHeader: String
        # @param ServiceProviderId: <p>BYOK的ID，当AccessType为PrivateCustom时生效</p>
        # @type ServiceProviderId: String
        # @param VerifySSL: <p>是否校验服务提供商的SSL证书</p><p>默认值：AccessType取值为：</p><ul><li>PublicBYOK时，该参数无效；</li><li>PublicCustom时，该参数默认为true；</li><li>PrivateCustom时，该参数默认为false；</li></ul>
        # @type VerifySSL: Boolean

        attr_accessor :Models, :ProviderKey, :ProviderKeyId, :AccessType, :ModelProvider, :ModelProtocol, :ApiBase, :HostHeader, :ServiceProviderId, :VerifySSL

        def initialize(models=nil, providerkey=nil, providerkeyid=nil, accesstype=nil, modelprovider=nil, modelprotocol=nil, apibase=nil, hostheader=nil, serviceproviderid=nil, verifyssl=nil)
          @Models = models
          @ProviderKey = providerkey
          @ProviderKeyId = providerkeyid
          @AccessType = accesstype
          @ModelProvider = modelprovider
          @ModelProtocol = modelprotocol
          @ApiBase = apibase
          @HostHeader = hostheader
          @ServiceProviderId = serviceproviderid
          @VerifySSL = verifyssl
        end

        def deserialize(params)
          @Models = params['Models']
          @ProviderKey = params['ProviderKey']
          @ProviderKeyId = params['ProviderKeyId']
          @AccessType = params['AccessType']
          @ModelProvider = params['ModelProvider']
          @ModelProtocol = params['ModelProtocol']
          @ApiBase = params['ApiBase']
          @HostHeader = params['HostHeader']
          @ServiceProviderId = params['ServiceProviderId']
          @VerifySSL = params['VerifySSL']
        end
      end

      # TestServiceProviderConnection返回参数结构体
      class TestServiceProviderConnectionResponse < TencentCloud::Common::AbstractModel
        # @param Results: <p>探测结果</p>
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId

        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              modeltestresult_tmp = ModelTestResult.new
              modeltestresult_tmp.deserialize(i)
              @Results << modeltestresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 意图路由分层配置对象。支持两种分层协议（二选一，不可混用）：① 复杂度分层——必须包含全部 4 个固定分层：SIMPLE/MEDIUM/COMPLEX/REASONING；② 语义分层——包含 default 及各语义 Tier。TierName 取值见下。
      class TierItem < TencentCloud::Common::AbstractModel
        # @param Models: <p>该分层下的模型显示名称列表。</p><p>至少包含一个模型，模型名称必须是已关联到该模型路由实例的模型。同一分层内不允许重复模型名称。</p>
        # @type Models: Array
        # @param TierName: <p>Tier 标识。<br>枚举值：</p><ul><li>复杂度分层（4 个固定值，需全部包含）：SIMPLE、MEDIUM、COMPLEX、REASONING</li><li>default：默认</li><li>general_chat：通用对话</li><li>transformation_rewrite：转换与改写</li><li>knowledge_qa：知识问答</li><li>summarization：摘要</li><li>extraction_structuring：抽取与结构化输出</li><li>content_generation：内容生成</li><li>coding_technical：编码与技术</li><li>data_math_analysis：数据、数学与分析</li><li>reasoning_planning：推理与规划</li><li>tool_agentic_workflow：工具与智能体工作流</li></ul>
        # @type TierName: String

        attr_accessor :Models, :TierName

        def initialize(models=nil, tiername=nil)
          @Models = models
          @TierName = tiername
        end

        def deserialize(params)
          @Models = params['Models']
          @TierName = params['TierName']
        end
      end

      # 运营商类型信息
      class TypeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 运营商类型
        # @type Type: String
        # @param SpecAvailabilitySet: 规格可用性
        # @type SpecAvailabilitySet: Array

        attr_accessor :Type, :SpecAvailabilitySet

        def initialize(type=nil, specavailabilityset=nil)
          @Type = type
          @SpecAvailabilitySet = specavailabilityset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['SpecAvailabilitySet'].nil?
            @SpecAvailabilitySet = []
            params['SpecAvailabilitySet'].each do |i|
              specavailability_tmp = SpecAvailability.new
              specavailability_tmp.deserialize(i)
              @SpecAvailabilitySet << specavailability_tmp
            end
          end
        end
      end

      # 用户组信息。
      class UserGroupInfo < TencentCloud::Common::AbstractModel
        # @param UserGroupId: <p>用户组ID。「未分组」虚拟分组固定为 ugrp-ungrouped。</p>
        # @type UserGroupId: String
        # @param UserGroupName: <p>用户组名称。「未分组」虚拟分组固定为 ungrouped。</p>
        # @type UserGroupName: String
        # @param ModelRouterId: <p>所属模型路由实例ID。</p>
        # @type ModelRouterId: String
        # @param Status: <p>用户组状态。</p><p>枚举值：</p><ul><li>Creating：创建中</li><li>Active：正常</li><li>Configuring：配置中</li><li>Deleting：删除中</li></ul><p>「未分组」虚拟分组（ugrp-ungrouped）恒为 Active。</p>
        # @type Status: String
        # @param Models: <p>用户组真实模型白名单。「未分组」虚拟分组为空数组。</p>
        # @type Models: Array
        # @param IntentRouters: <p>用户组意图路由白名单（ir-xxx）。「未分组」虚拟分组为空数组。</p>
        # @type IntentRouters: Array
        # @param BudgetId: <p>关联的Budget ID。</p><p>未关联时为空；「未分组」虚拟分组恒为空。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetId: String
        # @param BudgetName: <p>关联的Budget名称。</p><p>未关联时为空；「未分组」虚拟分组恒为空。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BudgetName: String
        # @param CreditUsageSet: <p>用户组多刷新周期 Credit 使用情况。</p><p>无多周期预算时为空数组。</p>
        # @type CreditUsageSet: Array
        # @param KeyCount: <p>用户组当前包含的 Key 数量。「未分组」虚拟分组（ugrp-ungrouped）返回该模型路由实例下未归属任何用户组的 Key 数量。</p>
        # @type KeyCount: Integer
        # @param Tags: <p>标签列表。「未分组」虚拟分组为空数组。</p>
        # @type Tags: Array
        # @param CreatedTime: <p>创建时间。「未分组」虚拟分组不返回此字段。</p>
        # @type CreatedTime: String
        # @param ModifiedTime: <p>修改时间。「未分组」虚拟分组不返回此字段。</p>
        # @type ModifiedTime: String

        attr_accessor :UserGroupId, :UserGroupName, :ModelRouterId, :Status, :Models, :IntentRouters, :BudgetId, :BudgetName, :CreditUsageSet, :KeyCount, :Tags, :CreatedTime, :ModifiedTime

        def initialize(usergroupid=nil, usergroupname=nil, modelrouterid=nil, status=nil, models=nil, intentrouters=nil, budgetid=nil, budgetname=nil, creditusageset=nil, keycount=nil, tags=nil, createdtime=nil, modifiedtime=nil)
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
          @ModelRouterId = modelrouterid
          @Status = status
          @Models = models
          @IntentRouters = intentrouters
          @BudgetId = budgetid
          @BudgetName = budgetname
          @CreditUsageSet = creditusageset
          @KeyCount = keycount
          @Tags = tags
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
          @ModelRouterId = params['ModelRouterId']
          @Status = params['Status']
          @Models = params['Models']
          @IntentRouters = params['IntentRouters']
          @BudgetId = params['BudgetId']
          @BudgetName = params['BudgetName']
          unless params['CreditUsageSet'].nil?
            @CreditUsageSet = []
            params['CreditUsageSet'].each do |i|
              creditusage_tmp = CreditUsage.new
              creditusage_tmp.deserialize(i)
              @CreditUsageSet << creditusage_tmp
            end
          end
          @KeyCount = params['KeyCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 可用区相关信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区数值形式的唯一ID，如：100001
        # @type ZoneId: Integer
        # @param Zone: 可用区字符串形式的唯一ID，如：ap-guangzhou-1
        # @type Zone: String
        # @param ZoneName: 可用区名称，如：广州一区
        # @type ZoneName: String
        # @param ZoneRegion: 可用区所属地域，如：ap-guangzhou
        # @type ZoneRegion: String
        # @param LocalZone: 可用区是否是LocalZone可用区，如：false
        # @type LocalZone: Boolean
        # @param EdgeZone: 可用区是否是EdgeZone可用区，如：false
        # @type EdgeZone: Boolean

        attr_accessor :ZoneId, :Zone, :ZoneName, :ZoneRegion, :LocalZone, :EdgeZone

        def initialize(zoneid=nil, zone=nil, zonename=nil, zoneregion=nil, localzone=nil, edgezone=nil)
          @ZoneId = zoneid
          @Zone = zone
          @ZoneName = zonename
          @ZoneRegion = zoneregion
          @LocalZone = localzone
          @EdgeZone = edgezone
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneRegion = params['ZoneRegion']
          @LocalZone = params['LocalZone']
          @EdgeZone = params['EdgeZone']
        end
      end

      # 可用区资源列表
      class ZoneResource < TencentCloud::Common::AbstractModel
        # @param MasterZone: 主可用区，如"ap-guangzhou-1"。
        # @type MasterZone: String
        # @param ResourceSet: 资源列表。
        # @type ResourceSet: Array
        # @param SlaveZone: 备可用区，如"ap-guangzhou-2"，单可用区时，备可用区为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZone: String
        # @param IPVersion: IP版本，如IPv4，IPv6，IPv6_Nat。
        # @type IPVersion: String
        # @param ZoneRegion: 可用区所属地域，如：ap-guangzhou
        # @type ZoneRegion: String
        # @param LocalZone: 可用区是否是LocalZone可用区，如：false
        # @type LocalZone: Boolean
        # @param ZoneResourceType: 可用区资源的类型，SHARED表示共享资源，EXCLUSIVE表示独占资源。
        # @type ZoneResourceType: String
        # @param EdgeZone: 可用区是否是EdgeZone可用区，如：false
        # @type EdgeZone: Boolean
        # @param Egress: 网络出口
        # @type Egress: String

        attr_accessor :MasterZone, :ResourceSet, :SlaveZone, :IPVersion, :ZoneRegion, :LocalZone, :ZoneResourceType, :EdgeZone, :Egress

        def initialize(masterzone=nil, resourceset=nil, slavezone=nil, ipversion=nil, zoneregion=nil, localzone=nil, zoneresourcetype=nil, edgezone=nil, egress=nil)
          @MasterZone = masterzone
          @ResourceSet = resourceset
          @SlaveZone = slavezone
          @IPVersion = ipversion
          @ZoneRegion = zoneregion
          @LocalZone = localzone
          @ZoneResourceType = zoneresourcetype
          @EdgeZone = edgezone
          @Egress = egress
        end

        def deserialize(params)
          @MasterZone = params['MasterZone']
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @ResourceSet << resource_tmp
            end
          end
          @SlaveZone = params['SlaveZone']
          @IPVersion = params['IPVersion']
          @ZoneRegion = params['ZoneRegion']
          @LocalZone = params['LocalZone']
          @ZoneResourceType = params['ZoneResourceType']
          @EdgeZone = params['EdgeZone']
          @Egress = params['Egress']
        end
      end

    end
  end
end

