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
  module Tse
    module V20201207
      # 云原生网关限流插件参数限流的精确Qps阈值
      class AccurateQpsThreshold < TencentCloud::Common::AbstractModel
        # @param Unit: qps阈值控制维度,包含:second、minute、hour、day、month、year
        # @type Unit: String
        # @param GlobalConfigId: 全局配置ID
        # @type GlobalConfigId: String

        attr_accessor :Unit, :GlobalConfigId

        def initialize(unit=nil, globalconfigid=nil)
          @Unit = unit
          @GlobalConfigId = globalconfigid
        end

        def deserialize(params)
          @Unit = params['Unit']
          @GlobalConfigId = params['GlobalConfigId']
        end
      end

      # Apollo 环境配置参数
      class ApolloEnvParam < TencentCloud::Common::AbstractModel
        # @param Name: 环境名称
        # @type Name: String
        # @param EngineResourceSpec: 环境内引擎的节点规格 ID
        # -1C2G
        # -2C4G
        # 兼容原spec-xxxxxx形式的规格ID
        # @type EngineResourceSpec: String
        # @param EngineNodeNum: 环境内引擎的节点数量
        # @type EngineNodeNum: Integer
        # @param StorageCapacity: 配置存储空间大小，以GB为单位
        # @type StorageCapacity: Integer
        # @param VpcId: VPC ID。在 VPC 的子网内分配一个 IP 作为 ConfigServer 的访问地址
        # @type VpcId: String
        # @param SubnetId: 子网 ID。在 VPC 的子网内分配一个 IP 作为 ConfigServer 的访问地址
        # @type SubnetId: String
        # @param EnvDesc: 环境描述
        # @type EnvDesc: String

        attr_accessor :Name, :EngineResourceSpec, :EngineNodeNum, :StorageCapacity, :VpcId, :SubnetId, :EnvDesc

        def initialize(name=nil, engineresourcespec=nil, enginenodenum=nil, storagecapacity=nil, vpcid=nil, subnetid=nil, envdesc=nil)
          @Name = name
          @EngineResourceSpec = engineresourcespec
          @EngineNodeNum = enginenodenum
          @StorageCapacity = storagecapacity
          @VpcId = vpcid
          @SubnetId = subnetid
          @EnvDesc = envdesc
        end

        def deserialize(params)
          @Name = params['Name']
          @EngineResourceSpec = params['EngineResourceSpec']
          @EngineNodeNum = params['EngineNodeNum']
          @StorageCapacity = params['StorageCapacity']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EnvDesc = params['EnvDesc']
        end
      end

      # 指标伸缩行为
      class AutoScalerBehavior < TencentCloud::Common::AbstractModel
        # @param ScaleUp: 扩容行为配置
        # @type ScaleUp: :class:`Tencentcloud::Tse.v20201207.models.AutoScalerRules`
        # @param ScaleDown: 缩容行为配置
        # @type ScaleDown: :class:`Tencentcloud::Tse.v20201207.models.AutoScalerRules`

        attr_accessor :ScaleUp, :ScaleDown

        def initialize(scaleup=nil, scaledown=nil)
          @ScaleUp = scaleup
          @ScaleDown = scaledown
        end

        def deserialize(params)
          unless params['ScaleUp'].nil?
            @ScaleUp = AutoScalerRules.new
            @ScaleUp.deserialize(params['ScaleUp'])
          end
          unless params['ScaleDown'].nil?
            @ScaleDown = AutoScalerRules.new
            @ScaleDown.deserialize(params['ScaleDown'])
          end
        end
      end

      # 扩容策略
      class AutoScalerPolicy < TencentCloud::Common::AbstractModel
        # @param Type: 类型，Pods
        # @type Type: String
        # @param Value: 数量
        # @type Value: Integer
        # @param PeriodSeconds: 扩容周期
        # @type PeriodSeconds: Integer

        attr_accessor :Type, :Value, :PeriodSeconds

        def initialize(type=nil, value=nil, periodseconds=nil)
          @Type = type
          @Value = value
          @PeriodSeconds = periodseconds
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
          @PeriodSeconds = params['PeriodSeconds']
        end
      end

      # 指标伸缩的规则
      class AutoScalerRules < TencentCloud::Common::AbstractModel
        # @param StabilizationWindowSeconds: 稳定窗口时间，扩容时默认0，缩容时默认300
        # @type StabilizationWindowSeconds: Integer
        # @param SelectPolicy: 选择策略依据
        # @type SelectPolicy: String
        # @param Policies: 扩缩容策略
        # @type Policies: Array

        attr_accessor :StabilizationWindowSeconds, :SelectPolicy, :Policies

        def initialize(stabilizationwindowseconds=nil, selectpolicy=nil, policies=nil)
          @StabilizationWindowSeconds = stabilizationwindowseconds
          @SelectPolicy = selectpolicy
          @Policies = policies
        end

        def deserialize(params)
          @StabilizationWindowSeconds = params['StabilizationWindowSeconds']
          @SelectPolicy = params['SelectPolicy']
          unless params['Policies'].nil?
            @Policies = []
            params['Policies'].each do |i|
              autoscalerpolicy_tmp = AutoScalerPolicy.new
              autoscalerpolicy_tmp.deserialize(i)
              @Policies << autoscalerpolicy_tmp
            end
          end
        end
      end

      # BindAutoScalerResourceStrategyToGroups请求参数结构体
      class BindAutoScalerResourceStrategyToGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param GroupIds: 网关分组ID列表
        # @type GroupIds: Array

        attr_accessor :GatewayId, :StrategyId, :GroupIds

        def initialize(gatewayid=nil, strategyid=nil, groupids=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
          @GroupIds = groupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
          @GroupIds = params['GroupIds']
        end
      end

      # BindAutoScalerResourceStrategyToGroups返回参数结构体
      class BindAutoScalerResourceStrategyToGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 服务治理引擎绑定的kubernetes信息
      class BoundK8SInfo < TencentCloud::Common::AbstractModel
        # @param BoundClusterId: 绑定的kubernetes集群ID
        # @type BoundClusterId: String
        # @param BoundClusterType: 绑定的kubernetes的集群类型，分tke和eks两种
        # @type BoundClusterType: String
        # @param SyncMode: 服务同步模式，all为全量同步，demand为按需同步
        # @type SyncMode: String
        # @param BindRegion: 绑定的kubernetes集群所在地域
        # @type BindRegion: String

        attr_accessor :BoundClusterId, :BoundClusterType, :SyncMode, :BindRegion

        def initialize(boundclusterid=nil, boundclustertype=nil, syncmode=nil, bindregion=nil)
          @BoundClusterId = boundclusterid
          @BoundClusterType = boundclustertype
          @SyncMode = syncmode
          @BindRegion = bindregion
        end

        def deserialize(params)
          @BoundClusterId = params['BoundClusterId']
          @BoundClusterType = params['BoundClusterType']
          @SyncMode = params['SyncMode']
          @BindRegion = params['BindRegion']
        end
      end

      # CLB多可用区信息
      class CLBMultiRegion < TencentCloud::Common::AbstractModel
        # @param CLBMultiZoneFlag: 是否启用多可用区
        # @type CLBMultiZoneFlag: Boolean
        # @param CLBMasterZone: 主可用区信息
        # @type CLBMasterZone: String
        # @param CLBSlaveZone: 备可用区信息
        # @type CLBSlaveZone: String

        attr_accessor :CLBMultiZoneFlag, :CLBMasterZone, :CLBSlaveZone

        def initialize(clbmultizoneflag=nil, clbmasterzone=nil, clbslavezone=nil)
          @CLBMultiZoneFlag = clbmultizoneflag
          @CLBMasterZone = clbmasterzone
          @CLBSlaveZone = clbslavezone
        end

        def deserialize(params)
          @CLBMultiZoneFlag = params['CLBMultiZoneFlag']
          @CLBMasterZone = params['CLBMasterZone']
          @CLBSlaveZone = params['CLBSlaveZone']
        end
      end

      # 灰度规则 Priority - Rule
      class CanaryPriorityRule < TencentCloud::Common::AbstractModel
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param CanaryRule: 灰度规则配置
        # @type CanaryRule: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayCanaryRule`

        attr_accessor :Priority, :CanaryRule

        def initialize(priority=nil, canaryrule=nil)
          @Priority = priority
          @CanaryRule = canaryrule
        end

        def deserialize(params)
          @Priority = params['Priority']
          unless params['CanaryRule'].nil?
            @CanaryRule = CloudNativeAPIGatewayCanaryRule.new
            @CanaryRule.deserialize(params['CanaryRule'])
          end
        end
      end

      # 证书信息
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param Id: 唯一id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CloseWafProtection请求参数结构体
      class CloseWafProtectionRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Type:  防护资源的类型。
        # - Global  实例
        # - Service  服务
        # - Route  路由
        # - Object  对象
        # @type Type: String
        # @param List: 当资源类型 Type 是 Service 或 Route 的时候，传入的服务或路由的列表
        # @type List: Array

        attr_accessor :GatewayId, :Type, :List

        def initialize(gatewayid=nil, type=nil, list=nil)
          @GatewayId = gatewayid
          @Type = type
          @List = list
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Type = params['Type']
          @List = params['List']
        end
      end

      # CloseWafProtection返回参数结构体
      class CloseWafProtectionResponse < TencentCloud::Common::AbstractModel
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

      # 灰度规则列表
      class CloudAPIGatewayCanaryRuleList < TencentCloud::Common::AbstractModel
        # @param CanaryRuleList: 灰度规则
        # @type CanaryRuleList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer

        attr_accessor :CanaryRuleList, :TotalCount

        def initialize(canaryrulelist=nil, totalcount=nil)
          @CanaryRuleList = canaryrulelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['CanaryRuleList'].nil?
            @CanaryRuleList = []
            params['CanaryRuleList'].each do |i|
              cloudnativeapigatewaycanaryrule_tmp = CloudNativeAPIGatewayCanaryRule.new
              cloudnativeapigatewaycanaryrule_tmp.deserialize(i)
              @CanaryRuleList << cloudnativeapigatewaycanaryrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 含百分比流量配置的服务
      class CloudNativeAPIGatewayBalancedService < TencentCloud::Common::AbstractModel
        # @param ServiceID: 服务 ID，作为入参时，必填
        # @type ServiceID: String
        # @param ServiceName: 服务名称，作为入参时，无意义
        # @type ServiceName: String
        # @param UpstreamName: Upstream 名称，作为入参时，无意义
        # @type UpstreamName: String
        # @param Percent: 百分比，10 即 10%，范围0-100
        # @type Percent: Float

        attr_accessor :ServiceID, :ServiceName, :UpstreamName, :Percent

        def initialize(serviceid=nil, servicename=nil, upstreamname=nil, percent=nil)
          @ServiceID = serviceid
          @ServiceName = servicename
          @UpstreamName = upstreamname
          @Percent = percent
        end

        def deserialize(params)
          @ServiceID = params['ServiceID']
          @ServiceName = params['ServiceName']
          @UpstreamName = params['UpstreamName']
          @Percent = params['Percent']
        end
      end

      # 灰度规则
      class CloudNativeAPIGatewayCanaryRule < TencentCloud::Common::AbstractModel
        # @param Priority: 优先级，值范围为 0 到 100；值越大，优先级越高；不同规则间优先级不可重复
        # @type Priority: Integer
        # @param Enabled: 是否启用规则
        # @type Enabled: Boolean
        # @param ConditionList: 参数匹配条件
        # @type ConditionList: Array
        # @param BalancedServiceList: 服务的流量百分比配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BalancedServiceList: Array
        # @param ServiceId: 归属服务 ID
        # @type ServiceId: String
        # @param ServiceName: 归属服务名称
        # @type ServiceName: String
        # @param RuleType: 灰度规则类别
        # Standard｜Lane
        # @type RuleType: String
        # @param MatchType: 全链路灰度策略多个条件之间的匹配方式，与AND，或OR
        # @type MatchType: String
        # @param GroupId: 泳道组ID
        # @type GroupId: String
        # @param GroupName: 泳道组名称
        # @type GroupName: String
        # @param LaneId: 泳道ID
        # @type LaneId: String
        # @param LaneName: 泳道名称
        # @type LaneName: String
        # @param MatchMode: 泳道匹配规则：严格STRICT｜宽松PERMISSIVE
        # @type MatchMode: String
        # @param LaneTag: 泳道标签
        # @type LaneTag: String

        attr_accessor :Priority, :Enabled, :ConditionList, :BalancedServiceList, :ServiceId, :ServiceName, :RuleType, :MatchType, :GroupId, :GroupName, :LaneId, :LaneName, :MatchMode, :LaneTag

        def initialize(priority=nil, enabled=nil, conditionlist=nil, balancedservicelist=nil, serviceid=nil, servicename=nil, ruletype=nil, matchtype=nil, groupid=nil, groupname=nil, laneid=nil, lanename=nil, matchmode=nil, lanetag=nil)
          @Priority = priority
          @Enabled = enabled
          @ConditionList = conditionlist
          @BalancedServiceList = balancedservicelist
          @ServiceId = serviceid
          @ServiceName = servicename
          @RuleType = ruletype
          @MatchType = matchtype
          @GroupId = groupid
          @GroupName = groupname
          @LaneId = laneid
          @LaneName = lanename
          @MatchMode = matchmode
          @LaneTag = lanetag
        end

        def deserialize(params)
          @Priority = params['Priority']
          @Enabled = params['Enabled']
          unless params['ConditionList'].nil?
            @ConditionList = []
            params['ConditionList'].each do |i|
              cloudnativeapigatewaycanaryrulecondition_tmp = CloudNativeAPIGatewayCanaryRuleCondition.new
              cloudnativeapigatewaycanaryrulecondition_tmp.deserialize(i)
              @ConditionList << cloudnativeapigatewaycanaryrulecondition_tmp
            end
          end
          unless params['BalancedServiceList'].nil?
            @BalancedServiceList = []
            params['BalancedServiceList'].each do |i|
              cloudnativeapigatewaybalancedservice_tmp = CloudNativeAPIGatewayBalancedService.new
              cloudnativeapigatewaybalancedservice_tmp.deserialize(i)
              @BalancedServiceList << cloudnativeapigatewaybalancedservice_tmp
            end
          end
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @RuleType = params['RuleType']
          @MatchType = params['MatchType']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @LaneId = params['LaneId']
          @LaneName = params['LaneName']
          @MatchMode = params['MatchMode']
          @LaneTag = params['LaneTag']
        end
      end

      # 灰度规则中的条件配置
      class CloudNativeAPIGatewayCanaryRuleCondition < TencentCloud::Common::AbstractModel
        # @param Type: 条件类型，支持 path, method, query, header, cookie, body 和 system。
        # @type Type: String
        # @param Key: 参数名
        # @type Key: String
        # @param Operator: 操作符，支持 "le", "eq", "lt", "ne", "ge", "gt", "regex", "exists", "in", "not in",  "prefix" ,"exact", "regex" 等
        # @type Operator: String
        # @param Value: 目标参数值
        # @type Value: String
        # @param Delimiter: 分隔符，当 Operator 为 in 或者 not in 时生效。支持值为英文逗号，英文分号，空格，换行符。
        # @type Delimiter: String
        # @param GlobalConfigId: 全局配置 Id
        # @type GlobalConfigId: String
        # @param GlobalConfigName: 全局配置名称
        # @type GlobalConfigName: String

        attr_accessor :Type, :Key, :Operator, :Value, :Delimiter, :GlobalConfigId, :GlobalConfigName

        def initialize(type=nil, key=nil, operator=nil, value=nil, delimiter=nil, globalconfigid=nil, globalconfigname=nil)
          @Type = type
          @Key = key
          @Operator = operator
          @Value = value
          @Delimiter = delimiter
          @GlobalConfigId = globalconfigid
          @GlobalConfigName = globalconfigname
        end

        def deserialize(params)
          @Type = params['Type']
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
          @Delimiter = params['Delimiter']
          @GlobalConfigId = params['GlobalConfigId']
          @GlobalConfigName = params['GlobalConfigName']
        end
      end

      # 云原生API网关配置信息。
      class CloudNativeAPIGatewayConfig < TencentCloud::Common::AbstractModel
        # @param ConsoleType: 控制台类型。
        # @type ConsoleType: String
        # @param HttpUrl: HTTP链接地址。
        # @type HttpUrl: String
        # @param HttpsUrl: HTTPS链接地址。
        # @type HttpsUrl: String
        # @param NetType: 网络类型, Open|Internal。
        # @type NetType: String
        # @param AdminUser: 管理员用户名。
        # @type AdminUser: String
        # @param AdminPassword: 管理员密码。
        # @type AdminPassword: String
        # @param Status: 网络状态, Open|Closed|Updating
        # @type Status: String
        # @param AccessControl: 网络访问策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessControl: :class:`Tencentcloud::Tse.v20201207.models.NetworkAccessControl`
        # @param SubnetId: 内网子网 ID
        # @type SubnetId: String
        # @param VpcId: 内网VPC ID
        # @type VpcId: String
        # @param Description: 负载均衡的描述
        # @type Description: String
        # @param SlaType: 负载均衡的规格类型
        # @type SlaType: String
        # @param SlaName: clb规格名称
        # @type SlaName: String
        # @param Vip: clb vip
        # @type Vip: String
        # @param InternetMaxBandwidthOut: 带宽
        # @type InternetMaxBandwidthOut: Integer
        # @param MultiZoneFlag: 是否多可用区
        # @type MultiZoneFlag: Boolean
        # @param MasterZoneId: 主可用区
        # @type MasterZoneId: String
        # @param SlaveZoneId: 备可用区
        # @type SlaveZoneId: String
        # @param MasterZoneName: 主可用区名称
        # @type MasterZoneName: String
        # @param SlaveZoneName: 备可用区名称
        # @type SlaveZoneName: String
        # @param NetworkId: 网络 id
        # @type NetworkId: String
        # @param IPV6FullChain: 是否为新 ipv6 CLB
        # @type IPV6FullChain: Boolean

        attr_accessor :ConsoleType, :HttpUrl, :HttpsUrl, :NetType, :AdminUser, :AdminPassword, :Status, :AccessControl, :SubnetId, :VpcId, :Description, :SlaType, :SlaName, :Vip, :InternetMaxBandwidthOut, :MultiZoneFlag, :MasterZoneId, :SlaveZoneId, :MasterZoneName, :SlaveZoneName, :NetworkId, :IPV6FullChain

        def initialize(consoletype=nil, httpurl=nil, httpsurl=nil, nettype=nil, adminuser=nil, adminpassword=nil, status=nil, accesscontrol=nil, subnetid=nil, vpcid=nil, description=nil, slatype=nil, slaname=nil, vip=nil, internetmaxbandwidthout=nil, multizoneflag=nil, masterzoneid=nil, slavezoneid=nil, masterzonename=nil, slavezonename=nil, networkid=nil, ipv6fullchain=nil)
          @ConsoleType = consoletype
          @HttpUrl = httpurl
          @HttpsUrl = httpsurl
          @NetType = nettype
          @AdminUser = adminuser
          @AdminPassword = adminpassword
          @Status = status
          @AccessControl = accesscontrol
          @SubnetId = subnetid
          @VpcId = vpcid
          @Description = description
          @SlaType = slatype
          @SlaName = slaname
          @Vip = vip
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @MultiZoneFlag = multizoneflag
          @MasterZoneId = masterzoneid
          @SlaveZoneId = slavezoneid
          @MasterZoneName = masterzonename
          @SlaveZoneName = slavezonename
          @NetworkId = networkid
          @IPV6FullChain = ipv6fullchain
        end

        def deserialize(params)
          @ConsoleType = params['ConsoleType']
          @HttpUrl = params['HttpUrl']
          @HttpsUrl = params['HttpsUrl']
          @NetType = params['NetType']
          @AdminUser = params['AdminUser']
          @AdminPassword = params['AdminPassword']
          @Status = params['Status']
          unless params['AccessControl'].nil?
            @AccessControl = NetworkAccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Description = params['Description']
          @SlaType = params['SlaType']
          @SlaName = params['SlaName']
          @Vip = params['Vip']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @MultiZoneFlag = params['MultiZoneFlag']
          @MasterZoneId = params['MasterZoneId']
          @SlaveZoneId = params['SlaveZoneId']
          @MasterZoneName = params['MasterZoneName']
          @SlaveZoneName = params['SlaveZoneName']
          @NetworkId = params['NetworkId']
          @IPV6FullChain = params['IPV6FullChain']
        end
      end

      # 云原生API网关节点信息。
      class CloudNativeAPIGatewayNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 云原生网关节点 id
        # @type NodeId: String
        # @param NodeIp: 节点 ip
        # @type NodeIp: String
        # @param ZoneId: Zone id
        # @type ZoneId: String
        # @param Zone: Zone
        # @type Zone: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupName: 分组名
        # @type GroupName: String
        # @param Status: 状态
        # @type Status: String
        # @param Weight: 节点权重
        # @type Weight: Integer
        # @param IsDefaultWeight: 是否默认权重
        # @type IsDefaultWeight: Boolean

        attr_accessor :NodeId, :NodeIp, :ZoneId, :Zone, :GroupId, :GroupName, :Status, :Weight, :IsDefaultWeight

        def initialize(nodeid=nil, nodeip=nil, zoneid=nil, zone=nil, groupid=nil, groupname=nil, status=nil, weight=nil, isdefaultweight=nil)
          @NodeId = nodeid
          @NodeIp = nodeip
          @ZoneId = zoneid
          @Zone = zone
          @GroupId = groupid
          @GroupName = groupname
          @Status = status
          @Weight = weight
          @IsDefaultWeight = isdefaultweight
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeIp = params['NodeIp']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Status = params['Status']
          @Weight = params['Weight']
          @IsDefaultWeight = params['IsDefaultWeight']
        end
      end

      # 云原生API网关节点配置。
      class CloudNativeAPIGatewayNodeConfig < TencentCloud::Common::AbstractModel
        # @param Specification: 节点配置, 1c2g|2c4g|4c8g|8c16g。
        # @type Specification: String
        # @param Number: 节点数量，2-9。
        # @type Number: Integer

        attr_accessor :Specification, :Number

        def initialize(specification=nil, number=nil)
          @Specification = specification
          @Number = number
        end

        def deserialize(params)
          @Specification = params['Specification']
          @Number = params['Number']
        end
      end

      # 云原生网关Tse 限流插件配置
      class CloudNativeAPIGatewayRateLimitDetail < TencentCloud::Common::AbstractModel
        # @param Enabled: 插件启用状态
        # @type Enabled: Boolean
        # @param QpsThresholds: qps阈值
        # @type QpsThresholds: Array
        # @param Path: 需要进行流量控制的请求路径
        # @type Path: String
        # @param Header: 需要进行流量控制的请求头Key
        # @type Header: String
        # @param LimitBy: 限流依据
        # ip service consumer credential path header
        # @type LimitBy: String
        # @param ExternalRedis: 外部redis配置
        # @type ExternalRedis: :class:`Tencentcloud::Tse.v20201207.models.ExternalRedis`
        # @param Policy: 计数器策略
        # local 单机
        # redis  默认redis
        # external_redis 外部redis
        # @type Policy: String
        # @param RateLimitResponse: 响应配置，响应策略为text
        # @type RateLimitResponse: :class:`Tencentcloud::Tse.v20201207.models.RateLimitResponse`
        # @param RateLimitResponseUrl: 请求转发地址
        # @type RateLimitResponseUrl: String
        # @param ResponseType: 响应策略
        # url请求转发
        # text 响应配置
        # default 直接返回
        # @type ResponseType: String
        # @param HideClientHeaders: 是否隐藏限流客户端响应头
        # @type HideClientHeaders: Boolean
        # @param LineUpTime: 排队时间
        # @type LineUpTime: Integer
        # @param IsDelay: 是否开启请求排队
        # @type IsDelay: Boolean
        # @param BasicLimitQpsThresholds: 基础限流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicLimitQpsThresholds: Array
        # @param LimitRules: 参数限流的规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitRules: Array

        attr_accessor :Enabled, :QpsThresholds, :Path, :Header, :LimitBy, :ExternalRedis, :Policy, :RateLimitResponse, :RateLimitResponseUrl, :ResponseType, :HideClientHeaders, :LineUpTime, :IsDelay, :BasicLimitQpsThresholds, :LimitRules

        def initialize(enabled=nil, qpsthresholds=nil, path=nil, header=nil, limitby=nil, externalredis=nil, policy=nil, ratelimitresponse=nil, ratelimitresponseurl=nil, responsetype=nil, hideclientheaders=nil, lineuptime=nil, isdelay=nil, basiclimitqpsthresholds=nil, limitrules=nil)
          @Enabled = enabled
          @QpsThresholds = qpsthresholds
          @Path = path
          @Header = header
          @LimitBy = limitby
          @ExternalRedis = externalredis
          @Policy = policy
          @RateLimitResponse = ratelimitresponse
          @RateLimitResponseUrl = ratelimitresponseurl
          @ResponseType = responsetype
          @HideClientHeaders = hideclientheaders
          @LineUpTime = lineuptime
          @IsDelay = isdelay
          @BasicLimitQpsThresholds = basiclimitqpsthresholds
          @LimitRules = limitrules
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          unless params['QpsThresholds'].nil?
            @QpsThresholds = []
            params['QpsThresholds'].each do |i|
              qpsthreshold_tmp = QpsThreshold.new
              qpsthreshold_tmp.deserialize(i)
              @QpsThresholds << qpsthreshold_tmp
            end
          end
          @Path = params['Path']
          @Header = params['Header']
          @LimitBy = params['LimitBy']
          unless params['ExternalRedis'].nil?
            @ExternalRedis = ExternalRedis.new
            @ExternalRedis.deserialize(params['ExternalRedis'])
          end
          @Policy = params['Policy']
          unless params['RateLimitResponse'].nil?
            @RateLimitResponse = RateLimitResponse.new
            @RateLimitResponse.deserialize(params['RateLimitResponse'])
          end
          @RateLimitResponseUrl = params['RateLimitResponseUrl']
          @ResponseType = params['ResponseType']
          @HideClientHeaders = params['HideClientHeaders']
          @LineUpTime = params['LineUpTime']
          @IsDelay = params['IsDelay']
          unless params['BasicLimitQpsThresholds'].nil?
            @BasicLimitQpsThresholds = []
            params['BasicLimitQpsThresholds'].each do |i|
              qpsthreshold_tmp = QpsThreshold.new
              qpsthreshold_tmp.deserialize(i)
              @BasicLimitQpsThresholds << qpsthreshold_tmp
            end
          end
          unless params['LimitRules'].nil?
            @LimitRules = []
            params['LimitRules'].each do |i|
              limitrule_tmp = LimitRule.new
              limitrule_tmp.deserialize(i)
              @LimitRules << limitrule_tmp
            end
          end
        end
      end

      # 网关实例策略
      class CloudNativeAPIGatewayStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # @type ModifyTime: String
        # @param Description: 策略描述
        # @type Description: String
        # @param Config: 弹性伸缩配置
        # @type Config: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyAutoScalerConfig`
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param CronConfig: 定时伸缩配置
        # @type CronConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`
        # @param MaxReplicas: 最大节点数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReplicas: Integer

        attr_accessor :StrategyId, :StrategyName, :CreateTime, :ModifyTime, :Description, :Config, :GatewayId, :CronConfig, :MaxReplicas
        extend Gem::Deprecate
        deprecate :MaxReplicas, :none, 2025, 6
        deprecate :MaxReplicas=, :none, 2025, 6

        def initialize(strategyid=nil, strategyname=nil, createtime=nil, modifytime=nil, description=nil, config=nil, gatewayid=nil, cronconfig=nil, maxreplicas=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Description = description
          @Config = config
          @GatewayId = gatewayid
          @CronConfig = cronconfig
          @MaxReplicas = maxreplicas
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Description = params['Description']
          unless params['Config'].nil?
            @Config = CloudNativeAPIGatewayStrategyAutoScalerConfig.new
            @Config.deserialize(params['Config'])
          end
          @GatewayId = params['GatewayId']
          unless params['CronConfig'].nil?
            @CronConfig = CloudNativeAPIGatewayStrategyCronScalerConfig.new
            @CronConfig.deserialize(params['CronConfig'])
          end
          @MaxReplicas = params['MaxReplicas']
        end
      end

      # 弹性伸缩策略
      class CloudNativeAPIGatewayStrategyAutoScalerConfig < TencentCloud::Common::AbstractModel
        # @param MaxReplicas: 最大副本数
        # @type MaxReplicas: Integer
        # @param Metrics: 指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param Enabled: 是否开启指标伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param StrategyId: 弹性策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyId: String
        # @param AutoScalerId: 指标配置ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoScalerId: String
        # @param Behavior: 指标伸缩行为配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Behavior: :class:`Tencentcloud::Tse.v20201207.models.AutoScalerBehavior`

        attr_accessor :MaxReplicas, :Metrics, :Enabled, :CreateTime, :ModifyTime, :StrategyId, :AutoScalerId, :Behavior
        extend Gem::Deprecate
        deprecate :Enabled, :none, 2025, 6
        deprecate :Enabled=, :none, 2025, 6
        deprecate :CreateTime, :none, 2025, 6
        deprecate :CreateTime=, :none, 2025, 6
        deprecate :ModifyTime, :none, 2025, 6
        deprecate :ModifyTime=, :none, 2025, 6
        deprecate :StrategyId, :none, 2025, 6
        deprecate :StrategyId=, :none, 2025, 6
        deprecate :AutoScalerId, :none, 2025, 6
        deprecate :AutoScalerId=, :none, 2025, 6

        def initialize(maxreplicas=nil, metrics=nil, enabled=nil, createtime=nil, modifytime=nil, strategyid=nil, autoscalerid=nil, behavior=nil)
          @MaxReplicas = maxreplicas
          @Metrics = metrics
          @Enabled = enabled
          @CreateTime = createtime
          @ModifyTime = modifytime
          @StrategyId = strategyid
          @AutoScalerId = autoscalerid
          @Behavior = behavior
        end

        def deserialize(params)
          @MaxReplicas = params['MaxReplicas']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              cloudnativeapigatewaystrategyautoscalerconfigmetric_tmp = CloudNativeAPIGatewayStrategyAutoScalerConfigMetric.new
              cloudnativeapigatewaystrategyautoscalerconfigmetric_tmp.deserialize(i)
              @Metrics << cloudnativeapigatewaystrategyautoscalerconfigmetric_tmp
            end
          end
          @Enabled = params['Enabled']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @StrategyId = params['StrategyId']
          @AutoScalerId = params['AutoScalerId']
          unless params['Behavior'].nil?
            @Behavior = AutoScalerBehavior.new
            @Behavior.deserialize(params['Behavior'])
          end
        end
      end

      # 弹性伸缩配置指标
      class CloudNativeAPIGatewayStrategyAutoScalerConfigMetric < TencentCloud::Common::AbstractModel
        # @param Type: 指标类型
        # - Resource
        # @type Type: String
        # @param ResourceName: 指标资源名称
        # - cpu
        # - memory
        # @type ResourceName: String
        # @param TargetType: 指标目标类型，目前只支持百分比Utilization
        # @type TargetType: String
        # @param TargetValue: 指标目标值
        # @type TargetValue: Integer

        attr_accessor :Type, :ResourceName, :TargetType, :TargetValue

        def initialize(type=nil, resourcename=nil, targettype=nil, targetvalue=nil)
          @Type = type
          @ResourceName = resourcename
          @TargetType = targettype
          @TargetValue = targetvalue
        end

        def deserialize(params)
          @Type = params['Type']
          @ResourceName = params['ResourceName']
          @TargetType = params['TargetType']
          @TargetValue = params['TargetValue']
        end
      end

      # 策略绑定的网关分组信息
      class CloudNativeAPIGatewayStrategyBindingGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 网关分组ID
        # @type GroupId: String
        # @param NodeConfig: 节点配置
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`
        # @param BindTime: 绑定时间
        # @type BindTime: String
        # @param GroupName: 网关分组名称
        # @type GroupName: String
        # @param Status: 绑定状态
        # @type Status: String

        attr_accessor :GroupId, :NodeConfig, :BindTime, :GroupName, :Status

        def initialize(groupid=nil, nodeconfig=nil, bindtime=nil, groupname=nil, status=nil)
          @GroupId = groupid
          @NodeConfig = nodeconfig
          @BindTime = bindtime
          @GroupName = groupname
          @Status = status
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
          @BindTime = params['BindTime']
          @GroupName = params['GroupName']
          @Status = params['Status']
        end
      end

      # 定时伸缩策略配置
      class CloudNativeAPIGatewayStrategyCronScalerConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启定时伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param Params: 定时伸缩配置参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param StrategyId: 弹性策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyId: String

        attr_accessor :Enabled, :Params, :CreateTime, :ModifyTime, :StrategyId
        extend Gem::Deprecate
        deprecate :Enabled, :none, 2025, 6
        deprecate :Enabled=, :none, 2025, 6
        deprecate :CreateTime, :none, 2025, 6
        deprecate :CreateTime=, :none, 2025, 6
        deprecate :ModifyTime, :none, 2025, 6
        deprecate :ModifyTime=, :none, 2025, 6
        deprecate :StrategyId, :none, 2025, 6
        deprecate :StrategyId=, :none, 2025, 6

        def initialize(enabled=nil, params=nil, createtime=nil, modifytime=nil, strategyid=nil)
          @Enabled = enabled
          @Params = params
          @CreateTime = createtime
          @ModifyTime = modifytime
          @StrategyId = strategyid
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              cloudnativeapigatewaystrategycronscalerconfigparam_tmp = CloudNativeAPIGatewayStrategyCronScalerConfigParam.new
              cloudnativeapigatewaystrategycronscalerconfigparam_tmp.deserialize(i)
              @Params << cloudnativeapigatewaystrategycronscalerconfigparam_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @StrategyId = params['StrategyId']
        end
      end

      # 定时伸缩配置参数
      class CloudNativeAPIGatewayStrategyCronScalerConfigParam < TencentCloud::Common::AbstractModel
        # @param Period: 定时伸缩周期
        # @type Period: String
        # @param StartAt: 定时伸缩开始时间
        # @type StartAt: String
        # @param TargetReplicas: 定时伸缩目标节点数，不超过指标伸缩中定义的最大节点数
        # @type TargetReplicas: Integer
        # @param Crontab: 定时伸缩cron表达式，无需输入
        # @type Crontab: String

        attr_accessor :Period, :StartAt, :TargetReplicas, :Crontab

        def initialize(period=nil, startat=nil, targetreplicas=nil, crontab=nil)
          @Period = period
          @StartAt = startat
          @TargetReplicas = targetreplicas
          @Crontab = crontab
        end

        def deserialize(params)
          @Period = params['Period']
          @StartAt = params['StartAt']
          @TargetReplicas = params['TargetReplicas']
          @Crontab = params['Crontab']
        end
      end

      # 云原生API网关vpc配置。
      class CloudNativeAPIGatewayVpcConfig < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID。
        # @type VpcId: String
        # @param SubnetId: 子网ID。
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

      # 配置文件
      class ConfigFile < TencentCloud::Common::AbstractModel
        # @param Id: 配置文件id
        # @type Id: Integer
        # @param Name: 配置文件名称
        # @type Name: String
        # @param Namespace: 配置文件命名空间
        # @type Namespace: String
        # @param Group: 配置文件组
        # @type Group: String
        # @param Content: 配置文件内容
        # @type Content: String
        # @param Format: 配置文件格式
        # @type Format: String
        # @param Comment: 配置文件注释
        # @type Comment: String
        # @param Status: 配置文件状态
        # @type Status: String
        # @param Tags: 配置文件标签数组
        # @type Tags: Array
        # @param CreateTime: 配置文件创建时间
        # @type CreateTime: String
        # @param CreateBy: 配置文件创建者
        # @type CreateBy: String
        # @param ModifyTime: 配置文件修改时间
        # @type ModifyTime: String
        # @param ModifyBy: 配置文件修改者
        # @type ModifyBy: String
        # @param ReleaseTime: 配置文件发布时间
        # @type ReleaseTime: String
        # @param ReleaseBy: 配置文件发布者
        # @type ReleaseBy: String
        # @param ConfigFileSupportedClient: 配置文件类型
        # @type ConfigFileSupportedClient: Integer
        # @param ConfigFilePersistent: 配置文件持久化
        # @type ConfigFilePersistent: :class:`Tencentcloud::Tse.v20201207.models.ConfigFilePersistent`
        # @param Encrypted: 是否开启加密算法
        # @type Encrypted: Boolean
        # @param EncryptAlgo: 加密算法
        # @type EncryptAlgo: String

        attr_accessor :Id, :Name, :Namespace, :Group, :Content, :Format, :Comment, :Status, :Tags, :CreateTime, :CreateBy, :ModifyTime, :ModifyBy, :ReleaseTime, :ReleaseBy, :ConfigFileSupportedClient, :ConfigFilePersistent, :Encrypted, :EncryptAlgo

        def initialize(id=nil, name=nil, namespace=nil, group=nil, content=nil, format=nil, comment=nil, status=nil, tags=nil, createtime=nil, createby=nil, modifytime=nil, modifyby=nil, releasetime=nil, releaseby=nil, configfilesupportedclient=nil, configfilepersistent=nil, encrypted=nil, encryptalgo=nil)
          @Id = id
          @Name = name
          @Namespace = namespace
          @Group = group
          @Content = content
          @Format = format
          @Comment = comment
          @Status = status
          @Tags = tags
          @CreateTime = createtime
          @CreateBy = createby
          @ModifyTime = modifytime
          @ModifyBy = modifyby
          @ReleaseTime = releasetime
          @ReleaseBy = releaseby
          @ConfigFileSupportedClient = configfilesupportedclient
          @ConfigFilePersistent = configfilepersistent
          @Encrypted = encrypted
          @EncryptAlgo = encryptalgo
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Content = params['Content']
          @Format = params['Format']
          @Comment = params['Comment']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              configfiletag_tmp = ConfigFileTag.new
              configfiletag_tmp.deserialize(i)
              @Tags << configfiletag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @CreateBy = params['CreateBy']
          @ModifyTime = params['ModifyTime']
          @ModifyBy = params['ModifyBy']
          @ReleaseTime = params['ReleaseTime']
          @ReleaseBy = params['ReleaseBy']
          @ConfigFileSupportedClient = params['ConfigFileSupportedClient']
          unless params['ConfigFilePersistent'].nil?
            @ConfigFilePersistent = ConfigFilePersistent.new
            @ConfigFilePersistent.deserialize(params['ConfigFilePersistent'])
          end
          @Encrypted = params['Encrypted']
          @EncryptAlgo = params['EncryptAlgo']
        end
      end

      # 配置文件组
      class ConfigFileGroup < TencentCloud::Common::AbstractModel
        # @param Id: 配置文件组id
        # @type Id: Integer
        # @param Name: 配置文件组名称
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Comment: 备注
        # @type Comment: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param CreateBy: 创建者
        # @type CreateBy: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param ModifyBy: 修改者
        # @type ModifyBy: String
        # @param FileCount: 文件数
        # @type FileCount: Integer
        # @param UserIds: 关联用户，link_users
        # @type UserIds: Array
        # @param GroupIds: 组id，link_groups
        # @type GroupIds: Array
        # @param RemoveUserIds: remove_link_users
        # @type RemoveUserIds: Array
        # @param RemoveGroupIds: remove_link_groups
        # @type RemoveGroupIds: Array
        # @param Editable: 是否可编辑
        # @type Editable: Boolean
        # @param Owner: 归属者
        # @type Owner: String
        # @param Department: 部门
        # @type Department: String
        # @param Business: 业务
        # @type Business: String
        # @param ConfigFileGroupTags: 配置文件组标签
        # @type ConfigFileGroupTags: Array

        attr_accessor :Id, :Name, :Namespace, :Comment, :CreateTime, :CreateBy, :ModifyTime, :ModifyBy, :FileCount, :UserIds, :GroupIds, :RemoveUserIds, :RemoveGroupIds, :Editable, :Owner, :Department, :Business, :ConfigFileGroupTags

        def initialize(id=nil, name=nil, namespace=nil, comment=nil, createtime=nil, createby=nil, modifytime=nil, modifyby=nil, filecount=nil, userids=nil, groupids=nil, removeuserids=nil, removegroupids=nil, editable=nil, owner=nil, department=nil, business=nil, configfilegrouptags=nil)
          @Id = id
          @Name = name
          @Namespace = namespace
          @Comment = comment
          @CreateTime = createtime
          @CreateBy = createby
          @ModifyTime = modifytime
          @ModifyBy = modifyby
          @FileCount = filecount
          @UserIds = userids
          @GroupIds = groupids
          @RemoveUserIds = removeuserids
          @RemoveGroupIds = removegroupids
          @Editable = editable
          @Owner = owner
          @Department = department
          @Business = business
          @ConfigFileGroupTags = configfilegrouptags
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Comment = params['Comment']
          @CreateTime = params['CreateTime']
          @CreateBy = params['CreateBy']
          @ModifyTime = params['ModifyTime']
          @ModifyBy = params['ModifyBy']
          @FileCount = params['FileCount']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @RemoveUserIds = params['RemoveUserIds']
          @RemoveGroupIds = params['RemoveGroupIds']
          @Editable = params['Editable']
          @Owner = params['Owner']
          @Department = params['Department']
          @Business = params['Business']
          unless params['ConfigFileGroupTags'].nil?
            @ConfigFileGroupTags = []
            params['ConfigFileGroupTags'].each do |i|
              configfilegrouptag_tmp = ConfigFileGroupTag.new
              configfilegrouptag_tmp.deserialize(i)
              @ConfigFileGroupTags << configfilegrouptag_tmp
            end
          end
        end
      end

      # 配置文件标签
      class ConfigFileGroupTag < TencentCloud::Common::AbstractModel
        # @param Key: key-value 键
        # @type Key: String
        # @param Value: key-value 值
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

      # 配置文件持久化
      class ConfigFilePersistent < TencentCloud::Common::AbstractModel
        # @param Encoding: 文件编码
        # @type Encoding: String
        # @param Path: 文件下发路径
        # @type Path: String
        # @param PostCmd: 文件后置命令
        # @type PostCmd: String

        attr_accessor :Encoding, :Path, :PostCmd

        def initialize(encoding=nil, path=nil, postcmd=nil)
          @Encoding = encoding
          @Path = path
          @PostCmd = postcmd
        end

        def deserialize(params)
          @Encoding = params['Encoding']
          @Path = params['Path']
          @PostCmd = params['PostCmd']
        end
      end

      # 发布详情
      class ConfigFilePublishInfo < TencentCloud::Common::AbstractModel
        # @param ReleaseName: 发布名称
        # @type ReleaseName: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 发布组
        # @type Group: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param Content: 内容
        # @type Content: String
        # @param Comment: 描述
        # @type Comment: String
        # @param Format: 格式
        # @type Format: String
        # @param CreateBy: 创建者
        # @type CreateBy: String
        # @param ModifyBy: 修改者
        # @type ModifyBy: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :ReleaseName, :Namespace, :Group, :FileName, :Content, :Comment, :Format, :CreateBy, :ModifyBy, :Tags

        def initialize(releasename=nil, namespace=nil, group=nil, filename=nil, content=nil, comment=nil, format=nil, createby=nil, modifyby=nil, tags=nil)
          @ReleaseName = releasename
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @Content = content
          @Comment = comment
          @Format = format
          @CreateBy = createby
          @ModifyBy = modifyby
          @Tags = tags
        end

        def deserialize(params)
          @ReleaseName = params['ReleaseName']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @Content = params['Content']
          @Comment = params['Comment']
          @Format = params['Format']
          @CreateBy = params['CreateBy']
          @ModifyBy = params['ModifyBy']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              configfiletag_tmp = ConfigFileTag.new
              configfiletag_tmp.deserialize(i)
              @Tags << configfiletag_tmp
            end
          end
        end
      end

      # 配置文件发布
      class ConfigFileRelease < TencentCloud::Common::AbstractModel
        # @param Id: 配置文件发布id
        # @type Id: Integer
        # @param Name: 配置文件发布名称
        # @type Name: String
        # @param Namespace: 配置文件发布命名空间
        # @type Namespace: String
        # @param Group: 配置文件发布组
        # @type Group: String
        # @param FileName: 配置文件发布文件名称
        # @type FileName: String
        # @param Content: 配置文件发布内容
        # @type Content: String
        # @param Comment: 配置文件发布注释
        # @type Comment: String
        # @param Md5: 配置文件发布Md5
        # @type Md5: String
        # @param Version: 配置文件发布版本
        # @type Version: Integer
        # @param CreateTime: 配置文件发布创建时间
        # @type CreateTime: String
        # @param CreateBy: 配置文件发布创建者
        # @type CreateBy: String
        # @param ModifyTime: 配置文件发布修改时间
        # @type ModifyTime: String
        # @param ModifyBy: 配置文件发布修改者
        # @type ModifyBy: String
        # @param ReleaseDescription: 发布描述
        # @type ReleaseDescription: String
        # @param Active: 是否生效
        # @type Active: Boolean
        # @param Format: 格式
        # @type Format: String
        # @param ConfigFileId: 配置文件ID
        # @type ConfigFileId: String
        # @param ConfigFileSupportedClient: 配置文件类型
        # @type ConfigFileSupportedClient: Integer
        # @param ConfigFilePersistent: 配置文件持久化
        # @type ConfigFilePersistent: :class:`Tencentcloud::Tse.v20201207.models.ConfigFilePersistent`

        attr_accessor :Id, :Name, :Namespace, :Group, :FileName, :Content, :Comment, :Md5, :Version, :CreateTime, :CreateBy, :ModifyTime, :ModifyBy, :ReleaseDescription, :Active, :Format, :ConfigFileId, :ConfigFileSupportedClient, :ConfigFilePersistent

        def initialize(id=nil, name=nil, namespace=nil, group=nil, filename=nil, content=nil, comment=nil, md5=nil, version=nil, createtime=nil, createby=nil, modifytime=nil, modifyby=nil, releasedescription=nil, active=nil, format=nil, configfileid=nil, configfilesupportedclient=nil, configfilepersistent=nil)
          @Id = id
          @Name = name
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @Content = content
          @Comment = comment
          @Md5 = md5
          @Version = version
          @CreateTime = createtime
          @CreateBy = createby
          @ModifyTime = modifytime
          @ModifyBy = modifyby
          @ReleaseDescription = releasedescription
          @Active = active
          @Format = format
          @ConfigFileId = configfileid
          @ConfigFileSupportedClient = configfilesupportedclient
          @ConfigFilePersistent = configfilepersistent
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @Content = params['Content']
          @Comment = params['Comment']
          @Md5 = params['Md5']
          @Version = params['Version']
          @CreateTime = params['CreateTime']
          @CreateBy = params['CreateBy']
          @ModifyTime = params['ModifyTime']
          @ModifyBy = params['ModifyBy']
          @ReleaseDescription = params['ReleaseDescription']
          @Active = params['Active']
          @Format = params['Format']
          @ConfigFileId = params['ConfigFileId']
          @ConfigFileSupportedClient = params['ConfigFileSupportedClient']
          unless params['ConfigFilePersistent'].nil?
            @ConfigFilePersistent = ConfigFilePersistent.new
            @ConfigFilePersistent.deserialize(params['ConfigFilePersistent'])
          end
        end
      end

      # 配置发布删除
      class ConfigFileReleaseDeletion < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 配置分组
        # @type Group: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param ReleaseVersion: 发布版本
        # @type ReleaseVersion: String
        # @param Id: 配置发布ID
        # @type Id: Integer

        attr_accessor :Namespace, :Group, :FileName, :ReleaseVersion, :Id

        def initialize(namespace=nil, group=nil, filename=nil, releaseversion=nil, id=nil)
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @ReleaseVersion = releaseversion
          @Id = id
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @ReleaseVersion = params['ReleaseVersion']
          @Id = params['Id']
        end
      end

      # 配置文件发布历史
      class ConfigFileReleaseHistory < TencentCloud::Common::AbstractModel
        # @param Id: 配置文件发布历史记录id
        # @type Id: Integer
        # @param Name: 配置文件发布历史名称
        # @type Name: String
        # @param Namespace: 配置文件发布历史命名空间
        # @type Namespace: String
        # @param Group: 配置文件发布历史组
        # @type Group: String
        # @param FileName: 配置文件发布历史名称
        # @type FileName: String
        # @param Content: 配置文件发布历史内容
        # @type Content: String
        # @param Format: 配置文件发布历史格式
        # @type Format: String
        # @param Comment: 配置文件发布历史注释
        # @type Comment: String
        # @param Md5: 配置文件发布历史Md5
        # @type Md5: String
        # @param Type: 配置文件发布历史类型
        # @type Type: String
        # @param Status: 配置文件发布历史状态
        # @type Status: String
        # @param Tags: 配置文件发布历史标签组
        # @type Tags: Array
        # @param CreateTime: 配置文件发布创建时间
        # @type CreateTime: String
        # @param CreateBy: 配置文件发布创建者
        # @type CreateBy: String
        # @param ModifyTime: 配置文件发布修改时间
        # @type ModifyTime: String
        # @param ModifyBy: 配置文件发布修改者
        # @type ModifyBy: String
        # @param ReleaseDescription: 发布描述
        # @type ReleaseDescription: String
        # @param ReleaseReason: 原因，用于失败时原因展示
        # @type ReleaseReason: String
        # @param ConfigFileSupportedClient: 配置文件类型
        # @type ConfigFileSupportedClient: Integer
        # @param ConfigFilePersistent: 配置文件持久化
        # @type ConfigFilePersistent: :class:`Tencentcloud::Tse.v20201207.models.ConfigFilePersistent`

        attr_accessor :Id, :Name, :Namespace, :Group, :FileName, :Content, :Format, :Comment, :Md5, :Type, :Status, :Tags, :CreateTime, :CreateBy, :ModifyTime, :ModifyBy, :ReleaseDescription, :ReleaseReason, :ConfigFileSupportedClient, :ConfigFilePersistent

        def initialize(id=nil, name=nil, namespace=nil, group=nil, filename=nil, content=nil, format=nil, comment=nil, md5=nil, type=nil, status=nil, tags=nil, createtime=nil, createby=nil, modifytime=nil, modifyby=nil, releasedescription=nil, releasereason=nil, configfilesupportedclient=nil, configfilepersistent=nil)
          @Id = id
          @Name = name
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @Content = content
          @Format = format
          @Comment = comment
          @Md5 = md5
          @Type = type
          @Status = status
          @Tags = tags
          @CreateTime = createtime
          @CreateBy = createby
          @ModifyTime = modifytime
          @ModifyBy = modifyby
          @ReleaseDescription = releasedescription
          @ReleaseReason = releasereason
          @ConfigFileSupportedClient = configfilesupportedclient
          @ConfigFilePersistent = configfilepersistent
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @Content = params['Content']
          @Format = params['Format']
          @Comment = params['Comment']
          @Md5 = params['Md5']
          @Type = params['Type']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              configfiletag_tmp = ConfigFileTag.new
              configfiletag_tmp.deserialize(i)
              @Tags << configfiletag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @CreateBy = params['CreateBy']
          @ModifyTime = params['ModifyTime']
          @ModifyBy = params['ModifyBy']
          @ReleaseDescription = params['ReleaseDescription']
          @ReleaseReason = params['ReleaseReason']
          @ConfigFileSupportedClient = params['ConfigFileSupportedClient']
          unless params['ConfigFilePersistent'].nil?
            @ConfigFilePersistent = ConfigFilePersistent.new
            @ConfigFilePersistent.deserialize(params['ConfigFilePersistent'])
          end
        end
      end

      # 配置文件标签
      class ConfigFileTag < TencentCloud::Common::AbstractModel
        # @param Key: key-value 键
        # @type Key: String
        # @param Value: key-value 值
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

      # 配置文件模板
      class ConfigFileTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 配置文件模板id
        # @type Id: Integer
        # @param Name: 配置文件模板名称
        # @type Name: String
        # @param Content: 配置文件模板内容
        # @type Content: String
        # @param Format: 配置文件模板格式
        # @type Format: String
        # @param Comment: 配置文件模板注释
        # @type Comment: String
        # @param CreateTime: 配置文件模板创建时间
        # @type CreateTime: String
        # @param CreateBy: 配置文件模板创建者
        # @type CreateBy: String
        # @param ModifyTime: 配置文件模板修改时间
        # @type ModifyTime: String
        # @param ModifyBy: 配置文件模板修改者
        # @type ModifyBy: String

        attr_accessor :Id, :Name, :Content, :Format, :Comment, :CreateTime, :CreateBy, :ModifyTime, :ModifyBy

        def initialize(id=nil, name=nil, content=nil, format=nil, comment=nil, createtime=nil, createby=nil, modifytime=nil, modifyby=nil)
          @Id = id
          @Name = name
          @Content = content
          @Format = format
          @Comment = comment
          @CreateTime = createtime
          @CreateBy = createby
          @ModifyTime = modifytime
          @ModifyBy = modifyby
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Content = params['Content']
          @Format = params['Format']
          @Comment = params['Comment']
          @CreateTime = params['CreateTime']
          @CreateBy = params['CreateBy']
          @ModifyTime = params['ModifyTime']
          @ModifyBy = params['ModifyBy']
        end
      end

      # CreateAutoScalerResourceStrategy请求参数结构体
      class CreateAutoScalerResourceStrategyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param Description: 策略描述
        # @type Description: String
        # @param Config: 指标伸缩配置
        # @type Config: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyAutoScalerConfig`
        # @param CronScalerConfig: 定时伸缩配置列表
        # @type CronScalerConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`
        # @param MaxReplicas: 最大节点数
        # @type MaxReplicas: Integer
        # @param CronConfig: 定时伸缩配置
        # @type CronConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`

        attr_accessor :GatewayId, :StrategyName, :Description, :Config, :CronScalerConfig, :MaxReplicas, :CronConfig
        extend Gem::Deprecate
        deprecate :CronScalerConfig, :none, 2025, 6
        deprecate :CronScalerConfig=, :none, 2025, 6
        deprecate :MaxReplicas, :none, 2025, 6
        deprecate :MaxReplicas=, :none, 2025, 6

        def initialize(gatewayid=nil, strategyname=nil, description=nil, config=nil, cronscalerconfig=nil, maxreplicas=nil, cronconfig=nil)
          @GatewayId = gatewayid
          @StrategyName = strategyname
          @Description = description
          @Config = config
          @CronScalerConfig = cronscalerconfig
          @MaxReplicas = maxreplicas
          @CronConfig = cronconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyName = params['StrategyName']
          @Description = params['Description']
          unless params['Config'].nil?
            @Config = CloudNativeAPIGatewayStrategyAutoScalerConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['CronScalerConfig'].nil?
            @CronScalerConfig = CloudNativeAPIGatewayStrategyCronScalerConfig.new
            @CronScalerConfig.deserialize(params['CronScalerConfig'])
          end
          @MaxReplicas = params['MaxReplicas']
          unless params['CronConfig'].nil?
            @CronConfig = CloudNativeAPIGatewayStrategyCronScalerConfig.new
            @CronConfig.deserialize(params['CronConfig'])
          end
        end
      end

      # CreateAutoScalerResourceStrategy返回参数结构体
      class CreateAutoScalerResourceStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param StrategyId: 策略Id
        # @type StrategyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :StrategyId, :RequestId
        extend Gem::Deprecate
        deprecate :Result, :none, 2025, 6
        deprecate :Result=, :none, 2025, 6

        def initialize(result=nil, strategyid=nil, requestid=nil)
          @Result = result
          @StrategyId = strategyid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @StrategyId = params['StrategyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayCanaryRule请求参数结构体
      class CreateCloudNativeAPIGatewayCanaryRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param CanaryRule: 灰度规则配置
        # @type CanaryRule: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayCanaryRule`
        # @param CanaryRuleList: 灰度规则配置列表，如果配置了此参数，将以此参数为准，忽略CanaryRule参数
        # @type CanaryRuleList: Array

        attr_accessor :GatewayId, :ServiceId, :CanaryRule, :CanaryRuleList

        def initialize(gatewayid=nil, serviceid=nil, canaryrule=nil, canaryrulelist=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @CanaryRule = canaryrule
          @CanaryRuleList = canaryrulelist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          unless params['CanaryRule'].nil?
            @CanaryRule = CloudNativeAPIGatewayCanaryRule.new
            @CanaryRule.deserialize(params['CanaryRule'])
          end
          unless params['CanaryRuleList'].nil?
            @CanaryRuleList = []
            params['CanaryRuleList'].each do |i|
              cloudnativeapigatewaycanaryrule_tmp = CloudNativeAPIGatewayCanaryRule.new
              cloudnativeapigatewaycanaryrule_tmp.deserialize(i)
              @CanaryRuleList << cloudnativeapigatewaycanaryrule_tmp
            end
          end
        end
      end

      # CreateCloudNativeAPIGatewayCanaryRule返回参数结构体
      class CreateCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudNativeAPIGatewayCertificate请求参数结构体
      class CreateCloudNativeAPIGatewayCertificateRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param BindDomains: 绑定的域名
        # @type BindDomains: Array
        # @param CertId: ssl平台证书 Id
        # @type CertId: String
        # @param Name: 证书名称
        # @type Name: String
        # @param Key: 证书私钥
        # @type Key: String
        # @param Crt: 证书pem格式
        # @type Crt: String

        attr_accessor :GatewayId, :BindDomains, :CertId, :Name, :Key, :Crt
        extend Gem::Deprecate
        deprecate :Key, :none, 2025, 6
        deprecate :Key=, :none, 2025, 6
        deprecate :Crt, :none, 2025, 6
        deprecate :Crt=, :none, 2025, 6

        def initialize(gatewayid=nil, binddomains=nil, certid=nil, name=nil, key=nil, crt=nil)
          @GatewayId = gatewayid
          @BindDomains = binddomains
          @CertId = certid
          @Name = name
          @Key = key
          @Crt = crt
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @BindDomains = params['BindDomains']
          @CertId = params['CertId']
          @Name = params['Name']
          @Key = params['Key']
          @Crt = params['Crt']
        end
      end

      # CreateCloudNativeAPIGatewayCertificate返回参数结构体
      class CreateCloudNativeAPIGatewayCertificateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建证书结果
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CertificateInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CertificateInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayPublicNetwork请求参数结构体
      class CreateCloudNativeAPIGatewayPublicNetworkRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 分组id。
        # @type GroupId: String
        # @param InternetConfig: 公网负载均衡配置。
        # @type InternetConfig: :class:`Tencentcloud::Tse.v20201207.models.InternetConfig`

        attr_accessor :GatewayId, :GroupId, :InternetConfig

        def initialize(gatewayid=nil, groupid=nil, internetconfig=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @InternetConfig = internetconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          unless params['InternetConfig'].nil?
            @InternetConfig = InternetConfig.new
            @InternetConfig.deserialize(params['InternetConfig'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayPublicNetwork返回参数结构体
      class CreateCloudNativeAPIGatewayPublicNetworkResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreatePublicNetworkResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreatePublicNetworkResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGateway请求参数结构体
      class CreateCloudNativeAPIGatewayRequest < TencentCloud::Common::AbstractModel
        # @param Name: 云原生API网关名字, 最多支持60个字符。
        # @type Name: String
        # @param Type: 云原生API网关类型, 目前只支持kong。
        # @type Type: String
        # @param GatewayVersion: 云原生API网关版本。参考值：
        # - 2.4.1
        # - 2.5.1
        # @type GatewayVersion: String
        # @param NodeConfig: 云原生API网关节点配置。
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`
        # @param VpcConfig: 云原生API网关vpc配置。
        # @type VpcConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayVpcConfig`
        # @param Description: 云原生API网关描述信息, 最多支持120个字符。
        # @type Description: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param EnableCls: 是否开启 CLS 日志。默认值：fasle
        # @type EnableCls: Boolean
        # @param FeatureVersion: 产品版本。参考值：
        # - TRIAL：开发版
        # - STANDARD：标准版 （默认值）
        # - PROFESSIONAL：专业版
        # @type FeatureVersion: String
        # @param InternetMaxBandwidthOut: 公网出流量带宽，[1,2048]Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param EngineRegion: 实例实际的地域信息，默认值：ap-guangzhou
        # @type EngineRegion: String
        # @param IngressClassName: ingress Class名称
        # @type IngressClassName: String
        # @param TradeType: 付费类型。参考值：
        # 0：后付费（默认值）
        # 1：预付费（接口暂不支持创建预付费实例）
        # @type TradeType: Integer
        # @param InternetConfig: 公网相关配置
        # @type InternetConfig: :class:`Tencentcloud::Tse.v20201207.models.InternetConfig`
        # @param PromId: 关联的prometheus ID
        # @type PromId: String

        attr_accessor :Name, :Type, :GatewayVersion, :NodeConfig, :VpcConfig, :Description, :Tags, :EnableCls, :FeatureVersion, :InternetMaxBandwidthOut, :EngineRegion, :IngressClassName, :TradeType, :InternetConfig, :PromId

        def initialize(name=nil, type=nil, gatewayversion=nil, nodeconfig=nil, vpcconfig=nil, description=nil, tags=nil, enablecls=nil, featureversion=nil, internetmaxbandwidthout=nil, engineregion=nil, ingressclassname=nil, tradetype=nil, internetconfig=nil, promid=nil)
          @Name = name
          @Type = type
          @GatewayVersion = gatewayversion
          @NodeConfig = nodeconfig
          @VpcConfig = vpcconfig
          @Description = description
          @Tags = tags
          @EnableCls = enablecls
          @FeatureVersion = featureversion
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @EngineRegion = engineregion
          @IngressClassName = ingressclassname
          @TradeType = tradetype
          @InternetConfig = internetconfig
          @PromId = promid
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @GatewayVersion = params['GatewayVersion']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
          unless params['VpcConfig'].nil?
            @VpcConfig = CloudNativeAPIGatewayVpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @Tags << instancetaginfo_tmp
            end
          end
          @EnableCls = params['EnableCls']
          @FeatureVersion = params['FeatureVersion']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @EngineRegion = params['EngineRegion']
          @IngressClassName = params['IngressClassName']
          @TradeType = params['TradeType']
          unless params['InternetConfig'].nil?
            @InternetConfig = InternetConfig.new
            @InternetConfig.deserialize(params['InternetConfig'])
          end
          @PromId = params['PromId']
        end
      end

      # CreateCloudNativeAPIGateway返回参数结构体
      class CreateCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建云原生API网关实例响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreateCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateCloudNativeAPIGatewayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建云原生API网关响应结果。
      class CreateCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID。
        # @type GatewayId: String
        # @param Status: 云原生网关状态。
        # @type Status: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :GatewayId, :Status, :TaskId

        def initialize(gatewayid=nil, status=nil, taskid=nil)
          @GatewayId = gatewayid
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # CreateCloudNativeAPIGatewayRouteRateLimit请求参数结构体
      class CreateCloudNativeAPIGatewayRouteRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 路由id，或路由名称。
        # 不支持“未命名”
        # @type Id: String
        # @param LimitDetail: 限流配置
        # @type LimitDetail: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`

        attr_accessor :GatewayId, :Id, :LimitDetail

        def initialize(gatewayid=nil, id=nil, limitdetail=nil)
          @GatewayId = gatewayid
          @Id = id
          @LimitDetail = limitdetail
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
          unless params['LimitDetail'].nil?
            @LimitDetail = CloudNativeAPIGatewayRateLimitDetail.new
            @LimitDetail.deserialize(params['LimitDetail'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayRouteRateLimit返回参数结构体
      class CreateCloudNativeAPIGatewayRouteRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudNativeAPIGatewayRoute请求参数结构体
      class CreateCloudNativeAPIGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param ServiceID: 所属服务的ID
        # @type ServiceID: String
        # @param RouteName: 路由的名字，实例级别唯一，可以不提供
        # @type RouteName: String
        # @param Methods: 路由的方法，其中方法可选值：
        # - GET
        # - POST
        # - DELETE
        # - PUT
        # - OPTIONS
        # - PATCH
        # - HEAD
        # - ANY
        # - TRACE
        # - COPY
        # - MOVE
        # - PROPFIND
        # - PROPPATCH
        # - MKCOL
        # - LOCK
        # - UNLOCK
        # @type Methods: Array
        # @param Hosts: 路由的域名
        # @type Hosts: Array
        # @param Paths: 路由的路径
        # @type Paths: Array
        # @param Protocols: 路由的协议，可选
        # - https
        # - http
        # @type Protocols: Array
        # @param PreserveHost: 转发到后端时是否保留Host
        # @type PreserveHost: Boolean
        # @param HttpsRedirectStatusCode: https重定向状态码
        # @type HttpsRedirectStatusCode: Integer
        # @param StripPath: 转发到后端时是否StripPath
        # @type StripPath: Boolean
        # @param ForceHttps: 是否开启强制HTTPS
        # @type ForceHttps: Boolean
        # @param DestinationPorts: 四层匹配的目的端口
        # @type DestinationPorts: Array
        # @param Headers: 路由的Headers
        # @type Headers: Array
        # @param RequestBuffering: 是否缓存请求body，默认true
        # @type RequestBuffering: Boolean
        # @param ResponseBuffering: 是否缓存响应body，默认true
        # @type ResponseBuffering: Boolean
        # @param RegexPriority: 正则优先级
        # @type RegexPriority: Integer

        attr_accessor :GatewayId, :ServiceID, :RouteName, :Methods, :Hosts, :Paths, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :ForceHttps, :DestinationPorts, :Headers, :RequestBuffering, :ResponseBuffering, :RegexPriority
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2025, 6
        deprecate :ForceHttps=, :none, 2025, 6

        def initialize(gatewayid=nil, serviceid=nil, routename=nil, methods=nil, hosts=nil, paths=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, forcehttps=nil, destinationports=nil, headers=nil, requestbuffering=nil, responsebuffering=nil, regexpriority=nil)
          @GatewayId = gatewayid
          @ServiceID = serviceid
          @RouteName = routename
          @Methods = methods
          @Hosts = hosts
          @Paths = paths
          @Protocols = protocols
          @PreserveHost = preservehost
          @HttpsRedirectStatusCode = httpsredirectstatuscode
          @StripPath = strippath
          @ForceHttps = forcehttps
          @DestinationPorts = destinationports
          @Headers = headers
          @RequestBuffering = requestbuffering
          @ResponseBuffering = responsebuffering
          @RegexPriority = regexpriority
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceID = params['ServiceID']
          @RouteName = params['RouteName']
          @Methods = params['Methods']
          @Hosts = params['Hosts']
          @Paths = params['Paths']
          @Protocols = params['Protocols']
          @PreserveHost = params['PreserveHost']
          @HttpsRedirectStatusCode = params['HttpsRedirectStatusCode']
          @StripPath = params['StripPath']
          @ForceHttps = params['ForceHttps']
          @DestinationPorts = params['DestinationPorts']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              kvmapping_tmp = KVMapping.new
              kvmapping_tmp.deserialize(i)
              @Headers << kvmapping_tmp
            end
          end
          @RequestBuffering = params['RequestBuffering']
          @ResponseBuffering = params['ResponseBuffering']
          @RegexPriority = params['RegexPriority']
        end
      end

      # CreateCloudNativeAPIGatewayRoute返回参数结构体
      class CreateCloudNativeAPIGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # 创建网关分组信息
      class CreateCloudNativeAPIGatewayServerGroupResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param GroupId: 分组id
        # @type GroupId: String
        # @param Status: 状态
        # @type Status: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :GatewayId, :GroupId, :Status, :TaskId

        def initialize(gatewayid=nil, groupid=nil, status=nil, taskid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # CreateCloudNativeAPIGatewayServiceRateLimit请求参数结构体
      class CreateCloudNativeAPIGatewayServiceRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名称，或服务ID
        # @type Name: String
        # @param LimitDetail: 限流配置
        # @type LimitDetail: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`

        attr_accessor :GatewayId, :Name, :LimitDetail

        def initialize(gatewayid=nil, name=nil, limitdetail=nil)
          @GatewayId = gatewayid
          @Name = name
          @LimitDetail = limitdetail
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          unless params['LimitDetail'].nil?
            @LimitDetail = CloudNativeAPIGatewayRateLimitDetail.new
            @LimitDetail.deserialize(params['LimitDetail'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayServiceRateLimit返回参数结构体
      class CreateCloudNativeAPIGatewayServiceRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudNativeAPIGatewayService请求参数结构体
      class CreateCloudNativeAPIGatewayServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名称
        # @type Name: String
        # @param Protocol: 请求协议：
        # - https
        # - http
        # - tcp
        # - udp
        # @type Protocol: String
        # @param Timeout: 超时时间，单位ms
        # @type Timeout: Integer
        # @param Retries: 重试次数
        # @type Retries: Integer
        # @param UpstreamType: 服务类型:
        # - Kubernetes
        # - Registry
        # - IPList
        # - HostIP
        # - Scf
        # @type UpstreamType: String
        # @param UpstreamInfo: 服务配置信息
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param Path: 请求路径
        # @type Path: String

        attr_accessor :GatewayId, :Name, :Protocol, :Timeout, :Retries, :UpstreamType, :UpstreamInfo, :Path

        def initialize(gatewayid=nil, name=nil, protocol=nil, timeout=nil, retries=nil, upstreamtype=nil, upstreaminfo=nil, path=nil)
          @GatewayId = gatewayid
          @Name = name
          @Protocol = protocol
          @Timeout = timeout
          @Retries = retries
          @UpstreamType = upstreamtype
          @UpstreamInfo = upstreaminfo
          @Path = path
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Timeout = params['Timeout']
          @Retries = params['Retries']
          @UpstreamType = params['UpstreamType']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          @Path = params['Path']
        end
      end

      # CreateCloudNativeAPIGatewayService返回参数结构体
      class CreateCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 网关服务创建结果
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreateGatewayServiceResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateGatewayServiceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigFileGroup请求参数结构体
      class CreateConfigFileGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例 id
        # @type InstanceId: String
        # @param ConfigFileGroup: 配置文件组实体
        # @type ConfigFileGroup: :class:`Tencentcloud::Tse.v20201207.models.ConfigFileGroup`

        attr_accessor :InstanceId, :ConfigFileGroup

        def initialize(instanceid=nil, configfilegroup=nil)
          @InstanceId = instanceid
          @ConfigFileGroup = configfilegroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFileGroup'].nil?
            @ConfigFileGroup = ConfigFileGroup.new
            @ConfigFileGroup.deserialize(params['ConfigFileGroup'])
          end
        end
      end

      # CreateConfigFileGroup返回参数结构体
      class CreateConfigFileGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否创建成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigFile请求参数结构体
      class CreateConfigFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE 实例id
        # @type InstanceId: String
        # @param ConfigFile: 配置文件列表详情
        # @type ConfigFile: :class:`Tencentcloud::Tse.v20201207.models.ConfigFile`

        attr_accessor :InstanceId, :ConfigFile

        def initialize(instanceid=nil, configfile=nil)
          @InstanceId = instanceid
          @ConfigFile = configfile
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFile'].nil?
            @ConfigFile = ConfigFile.new
            @ConfigFile.deserialize(params['ConfigFile'])
          end
        end
      end

      # CreateConfigFile返回参数结构体
      class CreateConfigFileResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否创建成功
        # @type Result: Boolean
        # @param ConfigFileId: 创建的配置文件Id
        # @type ConfigFileId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ConfigFileId, :RequestId

        def initialize(result=nil, configfileid=nil, requestid=nil)
          @Result = result
          @ConfigFileId = configfileid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ConfigFileId = params['ConfigFileId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEngine请求参数结构体
      class CreateEngineRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎类型。参考值：
        # - zookeeper
        # - nacos
        # - consul
        # - apollo
        # - eureka
        # - polaris
        # @type EngineType: String
        # @param EngineVersion: 引擎的开源版本。每种引擎支持的开源版本不同，请参考产品文档或者控制台购买页
        # @type EngineVersion: String
        # @param EngineProductVersion: 引擎的产品版本。参考值：
        # - STANDARD： 标准版
        # - PROFESSIONAL: 专业版（Zookeeper）/企业版（PolarisMesh）

        # 引擎各版本及可选择的规格、节点数说明：
        # apollo - STANDARD版本
        # 规格列表：1C2G、2C4G、4C8G、8C16G、16C32G
        # 节点数：1，2，3，4，5

        # eureka - STANDARD版本
        # 规格列表：1C2G、2C4G、4C8G、8C16G、16C32G
        # 节点数：3，4，5

        # polarismesh - STANDARD版本
        # 规格列表：NUM50、NUM100、NUM200、NUM500、NUM1000、NUM5000、NUM10000、NUM50000

        # 兼容原spec-xxxxxx形式的规格ID
        # @type EngineProductVersion: String
        # @param EngineRegion: 引擎所在地域。参考值说明：
        # 中国区 参考值：
        # - ap-guangzhou：广州
        # - ap-beijing：北京
        # - ap-chengdu：成都
        # - ap-chongqing：重庆
        # - ap-nanjing：南京
        # - ap-shanghai：上海
        # - ap-hongkong：香港
        # - ap-taipei：台北
        # 亚太区 参考值：
        # - ap-jakarta：雅加达
        # - ap-singapore：新加坡
        # 北美区 参考值
        # - na-siliconvalley：硅谷
        # - na-ashburn: 弗吉尼亚
        # 金融专区 参考值
        # - ap-beijing-fsi：北京金融
        # - ap-shanghai-fsi：上海金融
        # - ap-shenzhen-fsi：深圳金融
        # @type EngineRegion: String
        # @param EngineName: 引擎名称。参考值：
        # - eurek-test
        # @type EngineName: String
        # @param TradeType: 付费类型。参考值：
        # - 0：后付费
        # - 1：预付费（接口暂不支持创建预付费实例）
        # @type TradeType: Integer
        # @param EngineResourceSpec: 引擎的节点规格 ID。参见EngineProductVersion字段说明
        # @type EngineResourceSpec: String
        # @param EngineNodeNum: 引擎的节点数量。参见EngineProductVersion字段说明
        # @type EngineNodeNum: Integer
        # @param VpcId: VPC ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        # - vpc-conz6aix
        # @type VpcId: String
        # @param SubnetId: 子网 ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        # - subnet-ahde9me9
        # @type SubnetId: String
        # @param ApolloEnvParams: Apollo 环境配置参数列表。参数说明：
        # 如果创建Apollo类型，此参数为必填的环境信息列表，最多可选4个环境。环境信息参数说明：
        # - Name：环境名。参考值：prod, dev, fat, uat
        # - EngineResourceSpec：环境内引擎的节点规格ID。参见EngineProductVersion参数说明
        # - EngineNodeNum：环境内引擎的节点数量。参见EngineProductVersion参数说明，其中prod环境支持的节点数为2，3，4，5
        # - StorageCapacity：配置存储空间大小，以GB为单位，步长为5.参考值：35
        # - VpcId：VPC ID。参考值：vpc-conz6aix
        # - SubnetId：子网 ID。参考值：subnet-ahde9me9
        # @type ApolloEnvParams: Array
        # @param EngineTags: 引擎的标签列表。用户自定义的key/value形式，无参考值
        # @type EngineTags: Array
        # @param EngineAdmin: 引擎的初始账号信息。可设置参数：
        # - Name：控制台初始用户名
        # - Password：控制台初始密码
        # - Token：引擎接口的管理员 Token
        # @type EngineAdmin: :class:`Tencentcloud::Tse.v20201207.models.EngineAdmin`
        # @param PrepaidPeriod: 预付费时长，以月为单位
        # @type PrepaidPeriod: Integer
        # @param PrepaidRenewFlag: 自动续费标记，仅预付费使用。参考值：
        # - 0：不自动续费
        # - 1：自动续费
        # @type PrepaidRenewFlag: Integer
        # @param EngineRegionInfos: 跨地域部署的引擎地域配置详情
        # zk标准版没有跨地域部署，请不要填写
        # zk专业版跨地域部署开启了固定Leader所在地域，需要满足以下条件
        # - 固定Leader所在地域当前仅支持跨两个地域
        # - leader地域的副本数必须是3/2 + 1，5/2+1，7/2+1，也就是 2，3，4
        # @type EngineRegionInfos: Array
        # @param StorageType: zk标准版请填CLOUD_PREMIUM，zk标准版无法选择磁盘类型和磁盘容量，默认为CLOUD_PREMIUM
        # zk专业版可以为：CLOUD_SSD,CLOUD_SSD_PLUS,CLOUD_PREMIUM
        # @type StorageType: String
        # @param StorageCapacity: zk标准版请填50，zk标准版无法选择磁盘类型和磁盘容量，磁盘容量默认为50
        # @type StorageCapacity: Integer
        # @param StorageOption: zk专业版至多有两个盘，且磁盘的容量在50-3200之间
        # 如果只有一个磁盘，storageCapacity与storageOption里面的capacity应该一致
        # @type StorageOption: Array
        # @param AffinityConstraint: ZK引擎实例，可用区分布约束，STRICT:强约束，PERMISSIVE: 弱约束
        # @type AffinityConstraint: String

        attr_accessor :EngineType, :EngineVersion, :EngineProductVersion, :EngineRegion, :EngineName, :TradeType, :EngineResourceSpec, :EngineNodeNum, :VpcId, :SubnetId, :ApolloEnvParams, :EngineTags, :EngineAdmin, :PrepaidPeriod, :PrepaidRenewFlag, :EngineRegionInfos, :StorageType, :StorageCapacity, :StorageOption, :AffinityConstraint

        def initialize(enginetype=nil, engineversion=nil, engineproductversion=nil, engineregion=nil, enginename=nil, tradetype=nil, engineresourcespec=nil, enginenodenum=nil, vpcid=nil, subnetid=nil, apolloenvparams=nil, enginetags=nil, engineadmin=nil, prepaidperiod=nil, prepaidrenewflag=nil, engineregioninfos=nil, storagetype=nil, storagecapacity=nil, storageoption=nil, affinityconstraint=nil)
          @EngineType = enginetype
          @EngineVersion = engineversion
          @EngineProductVersion = engineproductversion
          @EngineRegion = engineregion
          @EngineName = enginename
          @TradeType = tradetype
          @EngineResourceSpec = engineresourcespec
          @EngineNodeNum = enginenodenum
          @VpcId = vpcid
          @SubnetId = subnetid
          @ApolloEnvParams = apolloenvparams
          @EngineTags = enginetags
          @EngineAdmin = engineadmin
          @PrepaidPeriod = prepaidperiod
          @PrepaidRenewFlag = prepaidrenewflag
          @EngineRegionInfos = engineregioninfos
          @StorageType = storagetype
          @StorageCapacity = storagecapacity
          @StorageOption = storageoption
          @AffinityConstraint = affinityconstraint
        end

        def deserialize(params)
          @EngineType = params['EngineType']
          @EngineVersion = params['EngineVersion']
          @EngineProductVersion = params['EngineProductVersion']
          @EngineRegion = params['EngineRegion']
          @EngineName = params['EngineName']
          @TradeType = params['TradeType']
          @EngineResourceSpec = params['EngineResourceSpec']
          @EngineNodeNum = params['EngineNodeNum']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['ApolloEnvParams'].nil?
            @ApolloEnvParams = []
            params['ApolloEnvParams'].each do |i|
              apolloenvparam_tmp = ApolloEnvParam.new
              apolloenvparam_tmp.deserialize(i)
              @ApolloEnvParams << apolloenvparam_tmp
            end
          end
          unless params['EngineTags'].nil?
            @EngineTags = []
            params['EngineTags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @EngineTags << instancetaginfo_tmp
            end
          end
          unless params['EngineAdmin'].nil?
            @EngineAdmin = EngineAdmin.new
            @EngineAdmin.deserialize(params['EngineAdmin'])
          end
          @PrepaidPeriod = params['PrepaidPeriod']
          @PrepaidRenewFlag = params['PrepaidRenewFlag']
          unless params['EngineRegionInfos'].nil?
            @EngineRegionInfos = []
            params['EngineRegionInfos'].each do |i|
              engineregioninfo_tmp = EngineRegionInfo.new
              engineregioninfo_tmp.deserialize(i)
              @EngineRegionInfos << engineregioninfo_tmp
            end
          end
          @StorageType = params['StorageType']
          @StorageCapacity = params['StorageCapacity']
          unless params['StorageOption'].nil?
            @StorageOption = []
            params['StorageOption'].each do |i|
              storageoption_tmp = StorageOption.new
              storageoption_tmp.deserialize(i)
              @StorageOption << storageoption_tmp
            end
          end
          @AffinityConstraint = params['AffinityConstraint']
        end
      end

      # CreateEngine返回参数结构体
      class CreateEngineResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例 ID
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

      # 创建云原生网关服务结果
      class CreateGatewayServiceResult < TencentCloud::Common::AbstractModel
        # @param ServiceId: 网关服务ID
        # @type ServiceId: String

        attr_accessor :ServiceId

        def initialize(serviceid=nil)
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
        end
      end

      # CreateGovernanceAlias请求参数结构体
      class CreateGovernanceAliasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param Alias: 服务别名
        # @type Alias: String
        # @param AliasNamespace: 服务别名命名空间
        # @type AliasNamespace: String
        # @param Service: 服务别名所指向的服务名
        # @type Service: String
        # @param Namespace: 服务别名所指向的命名空间
        # @type Namespace: String
        # @param Comment: 服务别名描述
        # @type Comment: String

        attr_accessor :InstanceId, :Alias, :AliasNamespace, :Service, :Namespace, :Comment

        def initialize(instanceid=nil, _alias=nil, aliasnamespace=nil, service=nil, namespace=nil, comment=nil)
          @InstanceId = instanceid
          @Alias = _alias
          @AliasNamespace = aliasnamespace
          @Service = service
          @Namespace = namespace
          @Comment = comment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @AliasNamespace = params['AliasNamespace']
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Comment = params['Comment']
        end
      end

      # CreateGovernanceAlias返回参数结构体
      class CreateGovernanceAliasResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateGovernanceInstances请求参数结构体
      class CreateGovernanceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceInstances: 服务实例信息。
        # @type GovernanceInstances: Array

        attr_accessor :InstanceId, :GovernanceInstances

        def initialize(instanceid=nil, governanceinstances=nil)
          @InstanceId = instanceid
          @GovernanceInstances = governanceinstances
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceInstances'].nil?
            @GovernanceInstances = []
            params['GovernanceInstances'].each do |i|
              governanceinstanceinput_tmp = GovernanceInstanceInput.new
              governanceinstanceinput_tmp.deserialize(i)
              @GovernanceInstances << governanceinstanceinput_tmp
            end
          end
        end
      end

      # CreateGovernanceInstances返回参数结构体
      class CreateGovernanceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateGovernanceNamespaces请求参数结构体
      class CreateGovernanceNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例id。
        # @type InstanceId: String
        # @param GovernanceNamespaces: 命名空间信息。
        # @type GovernanceNamespaces: Array

        attr_accessor :InstanceId, :GovernanceNamespaces

        def initialize(instanceid=nil, governancenamespaces=nil)
          @InstanceId = instanceid
          @GovernanceNamespaces = governancenamespaces
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceNamespaces'].nil?
            @GovernanceNamespaces = []
            params['GovernanceNamespaces'].each do |i|
              governancenamespaceinput_tmp = GovernanceNamespaceInput.new
              governancenamespaceinput_tmp.deserialize(i)
              @GovernanceNamespaces << governancenamespaceinput_tmp
            end
          end
        end
      end

      # CreateGovernanceNamespaces返回参数结构体
      class CreateGovernanceNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateGovernanceServices请求参数结构体
      class CreateGovernanceServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例 id。
        # @type InstanceId: String
        # @param GovernanceServices: 服务信息。
        # @type GovernanceServices: Array

        attr_accessor :InstanceId, :GovernanceServices

        def initialize(instanceid=nil, governanceservices=nil)
          @InstanceId = instanceid
          @GovernanceServices = governanceservices
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceServices'].nil?
            @GovernanceServices = []
            params['GovernanceServices'].each do |i|
              governanceserviceinput_tmp = GovernanceServiceInput.new
              governanceserviceinput_tmp.deserialize(i)
              @GovernanceServices << governanceserviceinput_tmp
            end
          end
        end
      end

      # CreateGovernanceServices返回参数结构体
      class CreateGovernanceServicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateNativeGatewayServerGroup请求参数结构体
      class CreateNativeGatewayServerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id。
        # 只支持后付费实例
        # @type GatewayId: String
        # @param Name: 网关分组名
        # @type Name: String
        # @param NodeConfig: 节点配置
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param Description: 描述信息
        # @type Description: String
        # @param InternetMaxBandwidthOut: 公网带宽信息
        # @type InternetMaxBandwidthOut: Integer
        # @param InternetConfig: 公网配置。
        # @type InternetConfig: :class:`Tencentcloud::Tse.v20201207.models.InternetConfig`

        attr_accessor :GatewayId, :Name, :NodeConfig, :SubnetId, :Description, :InternetMaxBandwidthOut, :InternetConfig

        def initialize(gatewayid=nil, name=nil, nodeconfig=nil, subnetid=nil, description=nil, internetmaxbandwidthout=nil, internetconfig=nil)
          @GatewayId = gatewayid
          @Name = name
          @NodeConfig = nodeconfig
          @SubnetId = subnetid
          @Description = description
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InternetConfig = internetconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
          @SubnetId = params['SubnetId']
          @Description = params['Description']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          unless params['InternetConfig'].nil?
            @InternetConfig = InternetConfig.new
            @InternetConfig.deserialize(params['InternetConfig'])
          end
        end
      end

      # CreateNativeGatewayServerGroup返回参数结构体
      class CreateNativeGatewayServerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 网关分组创建信息
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreateCloudNativeAPIGatewayServerGroupResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateCloudNativeAPIGatewayServerGroupResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNativeGatewayServiceSource请求参数结构体
      class CreateNativeGatewayServiceSourceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayID: 网关实例ID
        # @type GatewayID: String
        # @param SourceType: 服务来源类型，参考值：
        # - TSE-Nacos
        # - TSE-Consul
        # - TSE-PolarisMesh
        # - Customer-Nacos
        # - Customer-Consul
        # - Customer-PolarisMesh
        # - TSF
        # - TKE
        # - EKS
        # - PrivateDNS
        # - Customer-DNS
        # @type SourceType: String
        # @param SourceID: 服务来源实例ID，当SourceType的值不为PrivateDNS或Customer-DNS时，必填
        # @type SourceID: String
        # @param SourceName: 服务来源实例名称，当SourceType的值不为PrivateDNS时，必填
        # @type SourceName: String
        # @param SourceInfo: 服务来源实例额外信息
        # @type SourceInfo: :class:`Tencentcloud::Tse.v20201207.models.SourceInfo`

        attr_accessor :GatewayID, :SourceType, :SourceID, :SourceName, :SourceInfo

        def initialize(gatewayid=nil, sourcetype=nil, sourceid=nil, sourcename=nil, sourceinfo=nil)
          @GatewayID = gatewayid
          @SourceType = sourcetype
          @SourceID = sourceid
          @SourceName = sourcename
          @SourceInfo = sourceinfo
        end

        def deserialize(params)
          @GatewayID = params['GatewayID']
          @SourceType = params['SourceType']
          @SourceID = params['SourceID']
          @SourceName = params['SourceName']
          unless params['SourceInfo'].nil?
            @SourceInfo = SourceInfo.new
            @SourceInfo.deserialize(params['SourceInfo'])
          end
        end
      end

      # CreateNativeGatewayServiceSource返回参数结构体
      class CreateNativeGatewayServiceSourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrUpdateConfigFileAndRelease请求参数结构体
      class CreateOrUpdateConfigFileAndReleaseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ConfigFilePublishInfo: 配置文件列表详情
        # @type ConfigFilePublishInfo: :class:`Tencentcloud::Tse.v20201207.models.ConfigFilePublishInfo`
        # @param StrictEnable: 控制开启校验配置版本是否已经存在
        # @type StrictEnable: Boolean

        attr_accessor :InstanceId, :ConfigFilePublishInfo, :StrictEnable

        def initialize(instanceid=nil, configfilepublishinfo=nil, strictenable=nil)
          @InstanceId = instanceid
          @ConfigFilePublishInfo = configfilepublishinfo
          @StrictEnable = strictenable
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFilePublishInfo'].nil?
            @ConfigFilePublishInfo = ConfigFilePublishInfo.new
            @ConfigFilePublishInfo.deserialize(params['ConfigFilePublishInfo'])
          end
          @StrictEnable = params['StrictEnable']
        end
      end

      # CreateOrUpdateConfigFileAndRelease返回参数结构体
      class CreateOrUpdateConfigFileAndReleaseResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功
        # @type Result: Boolean
        # @param ConfigFileReleaseId: 配置发布Id
        # @type ConfigFileReleaseId: String
        # @param ConfigFileId: 配置文件Id
        # @type ConfigFileId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ConfigFileReleaseId, :ConfigFileId, :RequestId

        def initialize(result=nil, configfilereleaseid=nil, configfileid=nil, requestid=nil)
          @Result = result
          @ConfigFileReleaseId = configfilereleaseid
          @ConfigFileId = configfileid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ConfigFileReleaseId = params['ConfigFileReleaseId']
          @ConfigFileId = params['ConfigFileId']
          @RequestId = params['RequestId']
        end
      end

      # 创建kong客户端公网结果
      class CreatePublicNetworkResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param NetworkId: 客户端公网网络ID
        # @type NetworkId: String

        attr_accessor :GatewayId, :GroupId, :NetworkId

        def initialize(gatewayid=nil, groupid=nil, networkid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @NetworkId = networkid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @NetworkId = params['NetworkId']
        end
      end

      # CreateWafDomains请求参数结构体
      class CreateWafDomainsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Domains: WAF 防护域名列表
        # @type Domains: Array

        attr_accessor :GatewayId, :Domains

        def initialize(gatewayid=nil, domains=nil)
          @GatewayId = gatewayid
          @Domains = domains
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Domains = params['Domains']
        end
      end

      # CreateWafDomains返回参数结构体
      class CreateWafDomainsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAutoScalerResourceStrategy请求参数结构体
      class DeleteAutoScalerResourceStrategyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String

        attr_accessor :GatewayId, :StrategyId

        def initialize(gatewayid=nil, strategyid=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
        end
      end

      # DeleteAutoScalerResourceStrategy返回参数结构体
      class DeleteAutoScalerResourceStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudNativeAPIGatewayCanaryRule请求参数结构体
      class DeleteCloudNativeAPIGatewayCanaryRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param PriorityList: 优先级列表，如果配置了此参数，将以此参数为准，忽略Priority参数
        # @type PriorityList: Array

        attr_accessor :GatewayId, :ServiceId, :Priority, :PriorityList

        def initialize(gatewayid=nil, serviceid=nil, priority=nil, prioritylist=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @Priority = priority
          @PriorityList = prioritylist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @Priority = params['Priority']
          @PriorityList = params['PriorityList']
        end
      end

      # DeleteCloudNativeAPIGatewayCanaryRule返回参数结构体
      class DeleteCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayCertificate请求参数结构体
      class DeleteCloudNativeAPIGatewayCertificateRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 证书Id
        # @type Id: String

        attr_accessor :GatewayId, :Id

        def initialize(gatewayid=nil, id=nil)
          @GatewayId = gatewayid
          @Id = id
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
        end
      end

      # DeleteCloudNativeAPIGatewayCertificate返回参数结构体
      class DeleteCloudNativeAPIGatewayCertificateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayPublicNetwork请求参数结构体
      class DeleteCloudNativeAPIGatewayPublicNetworkRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 分组id，kong类型时必填
        # @type GroupId: String
        # @param InternetAddressVersion: 公网类型
        # - IPV4 （默认值）
        # - IPV6
        # @type InternetAddressVersion: String
        # @param Vip: 公网ip，存在多个公网时必填
        # @type Vip: String

        attr_accessor :GatewayId, :GroupId, :InternetAddressVersion, :Vip

        def initialize(gatewayid=nil, groupid=nil, internetaddressversion=nil, vip=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @InternetAddressVersion = internetaddressversion
          @Vip = vip
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @InternetAddressVersion = params['InternetAddressVersion']
          @Vip = params['Vip']
        end
      end

      # DeleteCloudNativeAPIGatewayPublicNetwork返回参数结构体
      class DeleteCloudNativeAPIGatewayPublicNetworkResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGateway请求参数结构体
      class DeleteCloudNativeAPIGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param DeleteClsTopic: 是否删除实例关联的 CLS 日志主题。
        # @type DeleteClsTopic: Boolean

        attr_accessor :GatewayId, :DeleteClsTopic

        def initialize(gatewayid=nil, deleteclstopic=nil)
          @GatewayId = gatewayid
          @DeleteClsTopic = deleteclstopic
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @DeleteClsTopic = params['DeleteClsTopic']
        end
      end

      # DeleteCloudNativeAPIGateway返回参数结构体
      class DeleteCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除云原生API网关实例响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DeleteCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeleteCloudNativeAPIGatewayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除云原生API网关响应结果。
      class DeleteCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生网关ID。
        # @type GatewayId: String
        # @param Status: 云原生网关状态。
        # @type Status: String

        attr_accessor :GatewayId, :Status

        def initialize(gatewayid=nil, status=nil)
          @GatewayId = gatewayid
          @Status = status
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Status = params['Status']
        end
      end

      # DeleteCloudNativeAPIGatewayRouteRateLimit请求参数结构体
      class DeleteCloudNativeAPIGatewayRouteRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关Id
        # @type GatewayId: String
        # @param Id: 路由Id，或路由名称。
        # 不支持“未命名”
        # @type Id: String

        attr_accessor :GatewayId, :Id

        def initialize(gatewayid=nil, id=nil)
          @GatewayId = gatewayid
          @Id = id
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
        end
      end

      # DeleteCloudNativeAPIGatewayRouteRateLimit返回参数结构体
      class DeleteCloudNativeAPIGatewayRouteRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayRoute请求参数结构体
      class DeleteCloudNativeAPIGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 路由的ID或名字，不支持名称“未命名”
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DeleteCloudNativeAPIGatewayRoute返回参数结构体
      class DeleteCloudNativeAPIGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayServiceRateLimit请求参数结构体
      class DeleteCloudNativeAPIGatewayServiceRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关Id
        # @type GatewayId: String
        # @param Name: 服务名称，或服务ID
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DeleteCloudNativeAPIGatewayServiceRateLimit返回参数结构体
      class DeleteCloudNativeAPIGatewayServiceRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayService请求参数结构体
      class DeleteCloudNativeAPIGatewayServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名字，服务ID
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DeleteCloudNativeAPIGatewayService返回参数结构体
      class DeleteCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfigFileGroup请求参数结构体
      class DeleteConfigFileGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例 id。
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 组
        # @type Group: String

        attr_accessor :InstanceId, :Namespace, :Group

        def initialize(instanceid=nil, namespace=nil, group=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
        end
      end

      # DeleteConfigFileGroup返回参数结构体
      class DeleteConfigFileGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否删除成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteConfigFileReleases请求参数结构体
      class DeleteConfigFileReleasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ConfigFileReleases: 待删除配置发布详情
        # @type ConfigFileReleases: Array

        attr_accessor :InstanceId, :ConfigFileReleases

        def initialize(instanceid=nil, configfilereleases=nil)
          @InstanceId = instanceid
          @ConfigFileReleases = configfilereleases
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFileReleases'].nil?
            @ConfigFileReleases = []
            params['ConfigFileReleases'].each do |i|
              configfilereleasedeletion_tmp = ConfigFileReleaseDeletion.new
              configfilereleasedeletion_tmp.deserialize(i)
              @ConfigFileReleases << configfilereleasedeletion_tmp
            end
          end
        end
      end

      # DeleteConfigFileReleases返回参数结构体
      class DeleteConfigFileReleasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除配置发布结果
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteConfigFiles请求参数结构体
      class DeleteConfigFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 配置分组名称
        # @type Group: String
        # @param Name: 配置文件名称
        # @type Name: String
        # @param Id: 配置文件Id
        # @type Id: String

        attr_accessor :InstanceId, :Namespace, :Group, :Name, :Id

        def initialize(instanceid=nil, namespace=nil, group=nil, name=nil, id=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @Name = name
          @Id = id
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Name = params['Name']
          @Id = params['Id']
        end
      end

      # DeleteConfigFiles返回参数结构体
      class DeleteConfigFilesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteEngine请求参数结构体
      class DeleteEngineRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteEngine返回参数结构体
      class DeleteEngineResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGovernanceAliases请求参数结构体
      class DeleteGovernanceAliasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceAliases: 服务别名列表
        # @type GovernanceAliases: Array

        attr_accessor :InstanceId, :GovernanceAliases

        def initialize(instanceid=nil, governancealiases=nil)
          @InstanceId = instanceid
          @GovernanceAliases = governancealiases
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceAliases'].nil?
            @GovernanceAliases = []
            params['GovernanceAliases'].each do |i|
              governancealias_tmp = GovernanceAlias.new
              governancealias_tmp.deserialize(i)
              @GovernanceAliases << governancealias_tmp
            end
          end
        end
      end

      # DeleteGovernanceAliases返回参数结构体
      class DeleteGovernanceAliasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGovernanceInstancesByHost请求参数结构体
      class DeleteGovernanceInstancesByHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceInstances: 要删除的服务实例信息。
        # @type GovernanceInstances: Array

        attr_accessor :InstanceId, :GovernanceInstances

        def initialize(instanceid=nil, governanceinstances=nil)
          @InstanceId = instanceid
          @GovernanceInstances = governanceinstances
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceInstances'].nil?
            @GovernanceInstances = []
            params['GovernanceInstances'].each do |i|
              governanceinstanceupdate_tmp = GovernanceInstanceUpdate.new
              governanceinstanceupdate_tmp.deserialize(i)
              @GovernanceInstances << governanceinstanceupdate_tmp
            end
          end
        end
      end

      # DeleteGovernanceInstancesByHost返回参数结构体
      class DeleteGovernanceInstancesByHostResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGovernanceInstances请求参数结构体
      class DeleteGovernanceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceInstances: 要删除的服务实例信息。
        # @type GovernanceInstances: Array

        attr_accessor :InstanceId, :GovernanceInstances

        def initialize(instanceid=nil, governanceinstances=nil)
          @InstanceId = instanceid
          @GovernanceInstances = governanceinstances
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceInstances'].nil?
            @GovernanceInstances = []
            params['GovernanceInstances'].each do |i|
              governanceinstanceupdate_tmp = GovernanceInstanceUpdate.new
              governanceinstanceupdate_tmp.deserialize(i)
              @GovernanceInstances << governanceinstanceupdate_tmp
            end
          end
        end
      end

      # DeleteGovernanceInstances返回参数结构体
      class DeleteGovernanceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGovernanceNamespaces请求参数结构体
      class DeleteGovernanceNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例 id。
        # @type InstanceId: String
        # @param GovernanceNamespaces: 命名空间信息。
        # @type GovernanceNamespaces: Array

        attr_accessor :InstanceId, :GovernanceNamespaces

        def initialize(instanceid=nil, governancenamespaces=nil)
          @InstanceId = instanceid
          @GovernanceNamespaces = governancenamespaces
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceNamespaces'].nil?
            @GovernanceNamespaces = []
            params['GovernanceNamespaces'].each do |i|
              governancenamespaceinput_tmp = GovernanceNamespaceInput.new
              governancenamespaceinput_tmp.deserialize(i)
              @GovernanceNamespaces << governancenamespaceinput_tmp
            end
          end
        end
      end

      # DeleteGovernanceNamespaces返回参数结构体
      class DeleteGovernanceNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGovernanceServices请求参数结构体
      class DeleteGovernanceServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceServices: 服务信息。
        # @type GovernanceServices: Array

        attr_accessor :InstanceId, :GovernanceServices

        def initialize(instanceid=nil, governanceservices=nil)
          @InstanceId = instanceid
          @GovernanceServices = governanceservices
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceServices'].nil?
            @GovernanceServices = []
            params['GovernanceServices'].each do |i|
              governanceserviceinput_tmp = GovernanceServiceInput.new
              governanceserviceinput_tmp.deserialize(i)
              @GovernanceServices << governanceserviceinput_tmp
            end
          end
        end
      end

      # DeleteGovernanceServices返回参数结构体
      class DeleteGovernanceServicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除服务结果。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteNativeGatewayServerGroup请求参数结构体
      class DeleteNativeGatewayServerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id。
        # 只支持后付费实例
        # @type GatewayId: String
        # @param GroupId: 网关分组id
        # @type GroupId: String

        attr_accessor :GatewayId, :GroupId

        def initialize(gatewayid=nil, groupid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteNativeGatewayServerGroup返回参数结构体
      class DeleteNativeGatewayServerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除信息
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DeleteNativeGatewayServerGroupResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeleteNativeGatewayServerGroupResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除网关实例结果
      class DeleteNativeGatewayServerGroupResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param GroupId: 网关分组id
        # @type GroupId: String
        # @param Status: 删除状态
        # @type Status: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :GatewayId, :GroupId, :Status, :TaskId

        def initialize(gatewayid=nil, groupid=nil, status=nil, taskid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # DeleteNativeGatewayServiceSource请求参数结构体
      class DeleteNativeGatewayServiceSourceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayID: 网关实例 ID
        # @type GatewayID: String
        # @param SourceID: 服务来源实例 ID
        # @type SourceID: String

        attr_accessor :GatewayID, :SourceID

        def initialize(gatewayid=nil, sourceid=nil)
          @GatewayID = gatewayid
          @SourceID = sourceid
        end

        def deserialize(params)
          @GatewayID = params['GatewayID']
          @SourceID = params['SourceID']
        end
      end

      # DeleteNativeGatewayServiceSource返回参数结构体
      class DeleteNativeGatewayServiceSourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteWafDomains请求参数结构体
      class DeleteWafDomainsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Domains: WAF 防护域名列表
        # @type Domains: Array

        attr_accessor :GatewayId, :Domains

        def initialize(gatewayid=nil, domains=nil)
          @GatewayId = gatewayid
          @Domains = domains
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Domains = params['Domains']
        end
      end

      # DeleteWafDomains返回参数结构体
      class DeleteWafDomainsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAllConfigFileTemplates请求参数结构体
      class DescribeAllConfigFileTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAllConfigFileTemplates返回参数结构体
      class DescribeAllConfigFileTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总数量
        # @type TotalCount: Integer
        # @param ConfigFileTemplates: 配置文件模板列表
        # @type ConfigFileTemplates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigFileTemplates, :RequestId

        def initialize(totalcount=nil, configfiletemplates=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigFileTemplates = configfiletemplates
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigFileTemplates'].nil?
            @ConfigFileTemplates = []
            params['ConfigFileTemplates'].each do |i|
              configfiletemplate_tmp = ConfigFileTemplate.new
              configfiletemplate_tmp.deserialize(i)
              @ConfigFileTemplates << configfiletemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalerResourceStrategies请求参数结构体
      class DescribeAutoScalerResourceStrategiesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String

        attr_accessor :GatewayId, :StrategyId

        def initialize(gatewayid=nil, strategyid=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeAutoScalerResourceStrategies返回参数结构体
      class DescribeAutoScalerResourceStrategiesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生API网关实例弹性伸缩策略列表响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.ListCloudNativeAPIGatewayStrategyResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ListCloudNativeAPIGatewayStrategyResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalerResourceStrategyBindingGroups请求参数结构体
      class DescribeAutoScalerResourceStrategyBindingGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询数量限制
        # @type Limit: Integer

        attr_accessor :GatewayId, :StrategyId, :Offset, :Limit

        def initialize(gatewayid=nil, strategyid=nil, offset=nil, limit=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAutoScalerResourceStrategyBindingGroups返回参数结构体
      class DescribeAutoScalerResourceStrategyBindingGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 云原生API网关实例策略绑定网关分组列表响应结果
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.ListCloudNativeAPIGatewayStrategyBindingGroupInfoResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ListCloudNativeAPIGatewayStrategyBindingGroupInfoResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayCanaryRules请求参数结构体
      class DescribeCloudNativeAPIGatewayCanaryRulesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param RuleType: 灰度规则类别 Standard｜Lane
        # @type RuleType: String
        # @param Limit: 列表数量
        # @type Limit: Integer
        # @param Offset: 列表offset
        # @type Offset: Integer

        attr_accessor :GatewayId, :ServiceId, :RuleType, :Limit, :Offset

        def initialize(gatewayid=nil, serviceid=nil, ruletype=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @RuleType = ruletype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @RuleType = params['RuleType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudNativeAPIGatewayCanaryRules返回参数结构体
      class DescribeCloudNativeAPIGatewayCanaryRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 灰度规则列表
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CloudAPIGatewayCanaryRuleList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CloudAPIGatewayCanaryRuleList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayCertificateDetails请求参数结构体
      class DescribeCloudNativeAPIGatewayCertificateDetailsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 证书Id
        # @type Id: String

        attr_accessor :GatewayId, :Id

        def initialize(gatewayid=nil, id=nil)
          @GatewayId = gatewayid
          @Id = id
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
        end
      end

      # DescribeCloudNativeAPIGatewayCertificateDetails返回参数结构体
      class DescribeCloudNativeAPIGatewayCertificateDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongCertificate`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongCertificate.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayCertificates请求参数结构体
      class DescribeCloudNativeAPIGatewayCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Limit: 列表数量
        # @type Limit: Integer
        # @param Offset: 列表offset
        # @type Offset: Integer
        # @param Filters: 过滤条件，多个过滤条件之间是与的关系，支持BindDomain ，Name
        # @type Filters: Array

        attr_accessor :GatewayId, :Limit, :Offset, :Filters

        def initialize(gatewayid=nil, limit=nil, offset=nil, filters=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              listfilter_tmp = ListFilter.new
              listfilter_tmp.deserialize(i)
              @Filters << listfilter_tmp
            end
          end
        end
      end

      # DescribeCloudNativeAPIGatewayCertificates返回参数结构体
      class DescribeCloudNativeAPIGatewayCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongCertificatesList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongCertificatesList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayConfig请求参数结构体
      class DescribeCloudNativeAPIGatewayConfigRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 分组id，不填时为默认分组
        # @type GroupId: String

        attr_accessor :GatewayId, :GroupId

        def initialize(gatewayid=nil, groupid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
        end
      end

      # DescribeCloudNativeAPIGatewayConfig返回参数结构体
      class DescribeCloudNativeAPIGatewayConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生API网关响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeCloudNativeAPIGatewayConfigResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeCloudNativeAPIGatewayConfigResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取云原生API网关实例网络配置结果。
      class DescribeCloudNativeAPIGatewayConfigResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID。
        # @type GatewayId: String
        # @param ConfigList: 分组网络配置列表。
        # @type ConfigList: Array
        # @param GroupSubnetId: 分组子网信息
        # @type GroupSubnetId: String
        # @param GroupVpcId: 分组VPC信息
        # @type GroupVpcId: String
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :GatewayId, :ConfigList, :GroupSubnetId, :GroupVpcId, :GroupId

        def initialize(gatewayid=nil, configlist=nil, groupsubnetid=nil, groupvpcid=nil, groupid=nil)
          @GatewayId = gatewayid
          @ConfigList = configlist
          @GroupSubnetId = groupsubnetid
          @GroupVpcId = groupvpcid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              cloudnativeapigatewayconfig_tmp = CloudNativeAPIGatewayConfig.new
              cloudnativeapigatewayconfig_tmp.deserialize(i)
              @ConfigList << cloudnativeapigatewayconfig_tmp
            end
          end
          @GroupSubnetId = params['GroupSubnetId']
          @GroupVpcId = params['GroupVpcId']
          @GroupId = params['GroupId']
        end
      end

      # DescribeCloudNativeAPIGatewayInfoByIp请求参数结构体
      class DescribeCloudNativeAPIGatewayInfoByIpRequest < TencentCloud::Common::AbstractModel
        # @param PublicNetworkIP: 云原生网关的公网ip
        # @type PublicNetworkIP: String

        attr_accessor :PublicNetworkIP

        def initialize(publicnetworkip=nil)
          @PublicNetworkIP = publicnetworkip
        end

        def deserialize(params)
          @PublicNetworkIP = params['PublicNetworkIP']
        end
      end

      # DescribeCloudNativeAPIGatewayInfoByIp返回参数结构体
      class DescribeCloudNativeAPIGatewayInfoByIpResponse < TencentCloud::Common::AbstractModel
        # @param Result: 出参
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeInstanceInfoByIpResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeInstanceInfoByIpResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayNodes请求参数结构体
      class DescribeCloudNativeAPIGatewayNodesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 实例分组id
        # @type GroupId: String
        # @param Limit: 翻页获取多少个
        # @type Limit: Integer
        # @param Offset: 翻页从第几个开始获取
        # @type Offset: Integer

        attr_accessor :GatewayId, :GroupId, :Limit, :Offset

        def initialize(gatewayid=nil, groupid=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudNativeAPIGatewayNodes返回参数结构体
      class DescribeCloudNativeAPIGatewayNodesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生网关节点列表结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeCloudNativeAPIGatewayNodesResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeCloudNativeAPIGatewayNodesResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取网关节点信息
      class DescribeCloudNativeAPIGatewayNodesResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 获取云原生API网关节点列表响应结果。
        # @type TotalCount: Integer
        # @param NodeList: 云原生API网关节点列表。
        # @type NodeList: Array

        attr_accessor :TotalCount, :NodeList

        def initialize(totalcount=nil, nodelist=nil)
          @TotalCount = totalcount
          @NodeList = nodelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              cloudnativeapigatewaynode_tmp = CloudNativeAPIGatewayNode.new
              cloudnativeapigatewaynode_tmp.deserialize(i)
              @NodeList << cloudnativeapigatewaynode_tmp
            end
          end
        end
      end

      # DescribeCloudNativeAPIGatewayPorts请求参数结构体
      class DescribeCloudNativeAPIGatewayPortsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeCloudNativeAPIGatewayPorts返回参数结构体
      class DescribeCloudNativeAPIGatewayPortsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 云原生API网关实例协议端口列表响应结果
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeGatewayInstancePortResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeGatewayInstancePortResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGateway请求参数结构体
      class DescribeCloudNativeAPIGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeCloudNativeAPIGateway返回参数结构体
      class DescribeCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生API网关基础信息响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeCloudNativeAPIGatewayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取云原生API网关基础信息响应结果。
      class DescribeCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID。
        # @type GatewayId: String
        # @param Status: 云原生API网关状态。
        # @type Status: String
        # @param Name: 云原生API网关名。
        # @type Name: String
        # @param Type: 云原生API网关类型。
        # @type Type: String
        # @param GatewayVersion: 实例版本：
        # - 2.4.1
        # - 2.5.1
        # @type GatewayVersion: String
        # @param NodeConfig: 云原生API网关节点信息。
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`
        # @param VpcConfig: 云原生API网关vpc配置。
        # @type VpcConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayVpcConfig`
        # @param Description: 云原生API网关描述。
        # @type Description: String
        # @param CreateTime: 云原生API网关创建时间。
        # @type CreateTime: String
        # @param Tags: 实例的标签信息
        # @type Tags: Array
        # @param EnableCls: 是否开启 cls 日志
        # @type EnableCls: Boolean
        # @param TradeType: 付费模式，0表示后付费，1预付费
        # @type TradeType: Integer
        # @param FeatureVersion: 实例版本，当前支持开发版、标准版、专业版【TRIAL、STANDARD、PROFESSIONAL】
        # @type FeatureVersion: String
        # @param InternetMaxBandwidthOut: 公网出流量带宽，[1,2048]Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态)；
        # 1表示自动续费，2表示明确不自动续费(用户设置)，若业务无续费概念或无需自动续费，需要设置为0
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 到期时间，预付费时使用
        # @type CurDeadline: String
        # @param IsolateTime: 隔离时间，实例隔离时使用
        # @type IsolateTime: String
        # @param EnableInternet: 是否开启客户端公网。
        # @type EnableInternet: Boolean
        # @param EngineRegion: 实例实际的地域信息
        # @type EngineRegion: String
        # @param IngressClassName: Ingress class名称
        # @type IngressClassName: String
        # @param InternetPayMode: 公网计费方式。可选取值 BANDWIDTH | TRAFFIC ，表示按带宽和按流量计费。
        # @type InternetPayMode: String
        # @param GatewayMinorVersion: 云原生API网关小版本号
        # @type GatewayMinorVersion: String
        # @param InstancePort: 实例监听的端口信息
        # @type InstancePort: :class:`Tencentcloud::Tse.v20201207.models.InstancePort`
        # @param LoadBalancerType: 公网CLB默认类型
        # @type LoadBalancerType: String
        # @param PublicIpAddresses: 公网IP地址列表
        # @type PublicIpAddresses: Array
        # @param DeleteProtect: 是否开启删除保护
        # @type DeleteProtect: Boolean

        attr_accessor :GatewayId, :Status, :Name, :Type, :GatewayVersion, :NodeConfig, :VpcConfig, :Description, :CreateTime, :Tags, :EnableCls, :TradeType, :FeatureVersion, :InternetMaxBandwidthOut, :AutoRenewFlag, :CurDeadline, :IsolateTime, :EnableInternet, :EngineRegion, :IngressClassName, :InternetPayMode, :GatewayMinorVersion, :InstancePort, :LoadBalancerType, :PublicIpAddresses, :DeleteProtect

        def initialize(gatewayid=nil, status=nil, name=nil, type=nil, gatewayversion=nil, nodeconfig=nil, vpcconfig=nil, description=nil, createtime=nil, tags=nil, enablecls=nil, tradetype=nil, featureversion=nil, internetmaxbandwidthout=nil, autorenewflag=nil, curdeadline=nil, isolatetime=nil, enableinternet=nil, engineregion=nil, ingressclassname=nil, internetpaymode=nil, gatewayminorversion=nil, instanceport=nil, loadbalancertype=nil, publicipaddresses=nil, deleteprotect=nil)
          @GatewayId = gatewayid
          @Status = status
          @Name = name
          @Type = type
          @GatewayVersion = gatewayversion
          @NodeConfig = nodeconfig
          @VpcConfig = vpcconfig
          @Description = description
          @CreateTime = createtime
          @Tags = tags
          @EnableCls = enablecls
          @TradeType = tradetype
          @FeatureVersion = featureversion
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @AutoRenewFlag = autorenewflag
          @CurDeadline = curdeadline
          @IsolateTime = isolatetime
          @EnableInternet = enableinternet
          @EngineRegion = engineregion
          @IngressClassName = ingressclassname
          @InternetPayMode = internetpaymode
          @GatewayMinorVersion = gatewayminorversion
          @InstancePort = instanceport
          @LoadBalancerType = loadbalancertype
          @PublicIpAddresses = publicipaddresses
          @DeleteProtect = deleteprotect
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Status = params['Status']
          @Name = params['Name']
          @Type = params['Type']
          @GatewayVersion = params['GatewayVersion']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
          unless params['VpcConfig'].nil?
            @VpcConfig = CloudNativeAPIGatewayVpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @Tags << instancetaginfo_tmp
            end
          end
          @EnableCls = params['EnableCls']
          @TradeType = params['TradeType']
          @FeatureVersion = params['FeatureVersion']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CurDeadline = params['CurDeadline']
          @IsolateTime = params['IsolateTime']
          @EnableInternet = params['EnableInternet']
          @EngineRegion = params['EngineRegion']
          @IngressClassName = params['IngressClassName']
          @InternetPayMode = params['InternetPayMode']
          @GatewayMinorVersion = params['GatewayMinorVersion']
          unless params['InstancePort'].nil?
            @InstancePort = InstancePort.new
            @InstancePort.deserialize(params['InstancePort'])
          end
          @LoadBalancerType = params['LoadBalancerType']
          @PublicIpAddresses = params['PublicIpAddresses']
          @DeleteProtect = params['DeleteProtect']
        end
      end

      # DescribeCloudNativeAPIGatewayRouteRateLimit请求参数结构体
      class DescribeCloudNativeAPIGatewayRouteRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关Id
        # @type GatewayId: String
        # @param Id: 路由Id，或路由名称。
        # 不支持“未命名”
        # @type Id: String

        attr_accessor :GatewayId, :Id

        def initialize(gatewayid=nil, id=nil)
          @GatewayId = gatewayid
          @Id = id
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
        end
      end

      # DescribeCloudNativeAPIGatewayRouteRateLimit返回参数结构体
      class DescribeCloudNativeAPIGatewayRouteRateLimitResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生网关限流插件(路由)
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CloudNativeAPIGatewayRateLimitDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayRoutes请求参数结构体
      class DescribeCloudNativeAPIGatewayRoutesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Limit: 翻页单页查询限制数量[0,1000], 默认值0
        # @type Limit: Integer
        # @param Offset: 翻页单页偏移量，默认值0
        # @type Offset: Integer
        # @param ServiceName: 服务的名字，精确匹配
        # @type ServiceName: String
        # @param RouteName: 路由的名字，精确匹配
        # @type RouteName: String
        # @param Filters: 过滤条件，多个过滤条件之间是与的关系，支持 name, path, host, method, service, protocol
        # @type Filters: Array

        attr_accessor :GatewayId, :Limit, :Offset, :ServiceName, :RouteName, :Filters

        def initialize(gatewayid=nil, limit=nil, offset=nil, servicename=nil, routename=nil, filters=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
          @ServiceName = servicename
          @RouteName = routename
          @Filters = filters
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ServiceName = params['ServiceName']
          @RouteName = params['RouteName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              listfilter_tmp = ListFilter.new
              listfilter_tmp.deserialize(i)
              @Filters << listfilter_tmp
            end
          end
        end
      end

      # DescribeCloudNativeAPIGatewayRoutes返回参数结构体
      class DescribeCloudNativeAPIGatewayRoutesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongServiceRouteList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongServiceRouteList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayServiceRateLimit请求参数结构体
      class DescribeCloudNativeAPIGatewayServiceRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关Id
        # @type GatewayId: String
        # @param Name: 服务名称，或服务ID。
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DescribeCloudNativeAPIGatewayServiceRateLimit返回参数结构体
      class DescribeCloudNativeAPIGatewayServiceRateLimitResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生网关限流插件(服务)
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CloudNativeAPIGatewayRateLimitDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayServices请求参数结构体
      class DescribeCloudNativeAPIGatewayServicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Limit: 列表数量
        # @type Limit: Integer
        # @param Offset: 列表 offset
        # @type Offset: Integer
        # @param Filters: 过滤条件，多个过滤条件之间是与的关系，支持 name,upstreamType
        # @type Filters: Array

        attr_accessor :GatewayId, :Limit, :Offset, :Filters

        def initialize(gatewayid=nil, limit=nil, offset=nil, filters=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              listfilter_tmp = ListFilter.new
              listfilter_tmp.deserialize(i)
              @Filters << listfilter_tmp
            end
          end
        end
      end

      # DescribeCloudNativeAPIGatewayServices返回参数结构体
      class DescribeCloudNativeAPIGatewayServicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongServices`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongServices.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayUpstream请求参数结构体
      class DescribeCloudNativeAPIGatewayUpstreamRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param ServiceName: 服务名字
        # @type ServiceName: String

        attr_accessor :GatewayId, :ServiceName

        def initialize(gatewayid=nil, servicename=nil)
          @GatewayId = gatewayid
          @ServiceName = servicename
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceName = params['ServiceName']
        end
      end

      # DescribeCloudNativeAPIGatewayUpstream返回参数结构体
      class DescribeCloudNativeAPIGatewayUpstreamResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongUpstreamList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGateways请求参数结构体
      class DescribeCloudNativeAPIGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 请求过滤参数，支持按照实例名称、ID和标签键值（Name、GatewayId、Tag）筛选
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

      # DescribeCloudNativeAPIGateways返回参数结构体
      class DescribeCloudNativeAPIGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生API网关实例列表响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.ListCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ListCloudNativeAPIGatewayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFileGroups请求参数结构体
      class DescribeConfigFileGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id
        # @type InstanceId: String
        # @param Namespace: 根据命名空间过滤
        # @type Namespace: String
        # @param Group: 根据配置文件组名过滤
        # @type Group: String
        # @param FileName: 根据配置文件组名过滤
        # @type FileName: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Namespace, :Group, :FileName, :Limit, :Offset

        def initialize(instanceid=nil, namespace=nil, group=nil, filename=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConfigFileGroups返回参数结构体
      class DescribeConfigFileGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数量
        # @type TotalCount: Integer
        # @param ConfigFileGroups: 配置文件组列表
        # @type ConfigFileGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigFileGroups, :RequestId

        def initialize(totalcount=nil, configfilegroups=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigFileGroups = configfilegroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigFileGroups'].nil?
            @ConfigFileGroups = []
            params['ConfigFileGroups'].each do |i|
              configfilegroup_tmp = ConfigFileGroup.new
              configfilegroup_tmp.deserialize(i)
              @ConfigFileGroups << configfilegroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFileReleaseHistories请求参数结构体
      class DescribeConfigFileReleaseHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 组
        # @type Group: String
        # @param Name: 名称
        # @type Name: String
        # @param EndId: 发布历史记录id，用于分页优化，一般指定 EndId，就不用指定 Offset，否则分页可能不连续
        # @type EndId: Integer
        # @param ConfigFileId: 配置文件ID
        # @type ConfigFileId: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Namespace, :Group, :Name, :EndId, :ConfigFileId, :Limit, :Offset

        def initialize(instanceid=nil, namespace=nil, group=nil, name=nil, endid=nil, configfileid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @Name = name
          @EndId = endid
          @ConfigFileId = configfileid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Name = params['Name']
          @EndId = params['EndId']
          @ConfigFileId = params['ConfigFileId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConfigFileReleaseHistories返回参数结构体
      class DescribeConfigFileReleaseHistoriesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总数量
        # @type TotalCount: Integer
        # @param ConfigFileReleaseHistories: 配置文件发布历史列表
        # @type ConfigFileReleaseHistories: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigFileReleaseHistories, :RequestId

        def initialize(totalcount=nil, configfilereleasehistories=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigFileReleaseHistories = configfilereleasehistories
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigFileReleaseHistories'].nil?
            @ConfigFileReleaseHistories = []
            params['ConfigFileReleaseHistories'].each do |i|
              configfilereleasehistory_tmp = ConfigFileReleaseHistory.new
              configfilereleasehistory_tmp.deserialize(i)
              @ConfigFileReleaseHistories << configfilereleasehistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFileRelease请求参数结构体
      class DescribeConfigFileReleaseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Group: 配置分组名称
        # @type Group: String
        # @param Name: 配置文件名称
        # @type Name: String
        # @param ReleaseName: 配置文件发布名称
        # @type ReleaseName: String
        # @param Id: 配置文件发布Id
        # @type Id: String

        attr_accessor :InstanceId, :Namespace, :Group, :Name, :ReleaseName, :Id

        def initialize(instanceid=nil, namespace=nil, group=nil, name=nil, releasename=nil, id=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @Name = name
          @ReleaseName = releasename
          @Id = id
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Name = params['Name']
          @ReleaseName = params['ReleaseName']
          @Id = params['Id']
        end
      end

      # DescribeConfigFileRelease返回参数结构体
      class DescribeConfigFileReleaseResponse < TencentCloud::Common::AbstractModel
        # @param ConfigFileRelease: 配置文件发布详情
        # @type ConfigFileRelease: :class:`Tencentcloud::Tse.v20201207.models.ConfigFileRelease`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigFileRelease, :RequestId

        def initialize(configfilerelease=nil, requestid=nil)
          @ConfigFileRelease = configfilerelease
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigFileRelease'].nil?
            @ConfigFileRelease = ConfigFileRelease.new
            @ConfigFileRelease.deserialize(params['ConfigFileRelease'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFileReleaseVersions请求参数结构体
      class DescribeConfigFileReleaseVersionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 配置分组
        # @type Group: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param ConfigFileId: 配置文件ID
        # @type ConfigFileId: String

        attr_accessor :InstanceId, :Namespace, :Group, :FileName, :ConfigFileId

        def initialize(instanceid=nil, namespace=nil, group=nil, filename=nil, configfileid=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @ConfigFileId = configfileid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @ConfigFileId = params['ConfigFileId']
        end
      end

      # DescribeConfigFileReleaseVersions返回参数结构体
      class DescribeConfigFileReleaseVersionsResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseVersions: 版本信息
        # @type ReleaseVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseVersions, :RequestId

        def initialize(releaseversions=nil, requestid=nil)
          @ReleaseVersions = releaseversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReleaseVersions'].nil?
            @ReleaseVersions = []
            params['ReleaseVersions'].each do |i|
              releaseversion_tmp = ReleaseVersion.new
              releaseversion_tmp.deserialize(i)
              @ReleaseVersions << releaseversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFileReleases请求参数结构体
      class DescribeConfigFileReleasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Limit: 条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 配置分组
        # @type Group: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param OnlyUse: 只保护处于使用状态
        # @type OnlyUse: Boolean
        # @param ReleaseName: 发布名称
        # @type ReleaseName: String
        # @param OrderField: 排序字段，mtime/version/name
        # ，默认version
        # @type OrderField: String
        # @param OrderDesc: 排序，asc/desc，默认 desc
        # @type OrderDesc: String
        # @param Id: 配置发布ID
        # @type Id: String

        attr_accessor :InstanceId, :Limit, :Offset, :Namespace, :Group, :FileName, :OnlyUse, :ReleaseName, :OrderField, :OrderDesc, :Id

        def initialize(instanceid=nil, limit=nil, offset=nil, namespace=nil, group=nil, filename=nil, onlyuse=nil, releasename=nil, orderfield=nil, orderdesc=nil, id=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @Namespace = namespace
          @Group = group
          @FileName = filename
          @OnlyUse = onlyuse
          @ReleaseName = releasename
          @OrderField = orderfield
          @OrderDesc = orderdesc
          @Id = id
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
          @OnlyUse = params['OnlyUse']
          @ReleaseName = params['ReleaseName']
          @OrderField = params['OrderField']
          @OrderDesc = params['OrderDesc']
          @Id = params['Id']
        end
      end

      # DescribeConfigFileReleases返回参数结构体
      class DescribeConfigFileReleasesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Releases: 发布列表
        # @type Releases: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Releases, :RequestId

        def initialize(totalcount=nil, releases=nil, requestid=nil)
          @TotalCount = totalcount
          @Releases = releases
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Releases'].nil?
            @Releases = []
            params['Releases'].each do |i|
              configfilerelease_tmp = ConfigFileRelease.new
              configfilerelease_tmp.deserialize(i)
              @Releases << configfilerelease_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFile请求参数结构体
      class DescribeConfigFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Group: 组
        # @type Group: String
        # @param Name: 配置文件名称
        # @type Name: String
        # @param Id: 配置文件Id
        # @type Id: String

        attr_accessor :InstanceId, :Namespace, :Group, :Name, :Id

        def initialize(instanceid=nil, namespace=nil, group=nil, name=nil, id=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @Name = name
          @Id = id
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Name = params['Name']
          @Id = params['Id']
        end
      end

      # DescribeConfigFile返回参数结构体
      class DescribeConfigFileResponse < TencentCloud::Common::AbstractModel
        # @param ConfigFile: 配置文件
        # @type ConfigFile: :class:`Tencentcloud::Tse.v20201207.models.ConfigFile`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigFile, :RequestId

        def initialize(configfile=nil, requestid=nil)
          @ConfigFile = configfile
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigFile'].nil?
            @ConfigFile = ConfigFile.new
            @ConfigFile.deserialize(params['ConfigFile'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFilesByGroup请求参数结构体
      class DescribeConfigFilesByGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Namespace: 命名空间名
        # @type Namespace: String
        # @param Group: 组名
        # @type Group: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Namespace, :Group, :Limit, :Offset

        def initialize(instanceid=nil, namespace=nil, group=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Group = group
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConfigFilesByGroup返回参数结构体
      class DescribeConfigFilesByGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数量
        # @type TotalCount: Integer
        # @param ConfigFiles: 配置文件列表
        # @type ConfigFiles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigFiles, :RequestId

        def initialize(totalcount=nil, configfiles=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigFiles = configfiles
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigFiles'].nil?
            @ConfigFiles = []
            params['ConfigFiles'].each do |i|
              configfile_tmp = ConfigFile.new
              configfile_tmp.deserialize(i)
              @ConfigFiles << configfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigFiles请求参数结构体
      class DescribeConfigFilesRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param Group: 组名
        # @type Group: String
        # @param Name: 配置文件名称
        # @type Name: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Id: 配置文件ID
        # @type Id: String

        attr_accessor :Namespace, :InstanceId, :Group, :Name, :Tags, :Limit, :Offset, :Id

        def initialize(namespace=nil, instanceid=nil, group=nil, name=nil, tags=nil, limit=nil, offset=nil, id=nil)
          @Namespace = namespace
          @InstanceId = instanceid
          @Group = group
          @Name = name
          @Tags = tags
          @Limit = limit
          @Offset = offset
          @Id = id
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              configfiletag_tmp = ConfigFileTag.new
              configfiletag_tmp.deserialize(i)
              @Tags << configfiletag_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Id = params['Id']
        end
      end

      # DescribeConfigFiles返回参数结构体
      class DescribeConfigFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页总数量
        # @type TotalCount: Integer
        # @param ConfigFiles: 配置文件列表
        # @type ConfigFiles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigFiles, :RequestId

        def initialize(totalcount=nil, configfiles=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigFiles = configfiles
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigFiles'].nil?
            @ConfigFiles = []
            params['ConfigFiles'].each do |i|
              configfile_tmp = ConfigFile.new
              configfile_tmp.deserialize(i)
              @ConfigFiles << configfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取云原生API网关实例协议端口列表响应结果
      class DescribeGatewayInstancePortResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID
        # @type GatewayId: String
        # @param GatewayInstancePortList: 网关实例协议端口列表
        # @type GatewayInstancePortList: Array

        attr_accessor :GatewayId, :GatewayInstancePortList

        def initialize(gatewayid=nil, gatewayinstanceportlist=nil)
          @GatewayId = gatewayid
          @GatewayInstancePortList = gatewayinstanceportlist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          unless params['GatewayInstancePortList'].nil?
            @GatewayInstancePortList = []
            params['GatewayInstancePortList'].each do |i|
              gatewayinstanceschemeandports_tmp = GatewayInstanceSchemeAndPorts.new
              gatewayinstanceschemeandports_tmp.deserialize(i)
              @GatewayInstancePortList << gatewayinstanceschemeandports_tmp
            end
          end
        end
      end

      # DescribeGovernanceAliases请求参数结构体
      class DescribeGovernanceAliasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param Service: 服务别名所指向的服务名。
        # @type Service: String
        # @param Namespace: 服务别名所指向的命名空间名。
        # @type Namespace: String
        # @param Alias: 服务别名。
        # @type Alias: String
        # @param AliasNamespace: 服务别名命名空间。
        # @type AliasNamespace: String
        # @param Comment: 服务别名描述。
        # @type Comment: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Service, :Namespace, :Alias, :AliasNamespace, :Comment, :Offset, :Limit

        def initialize(instanceid=nil, service=nil, namespace=nil, _alias=nil, aliasnamespace=nil, comment=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Service = service
          @Namespace = namespace
          @Alias = _alias
          @AliasNamespace = aliasnamespace
          @Comment = comment
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Alias = params['Alias']
          @AliasNamespace = params['AliasNamespace']
          @Comment = params['Comment']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGovernanceAliases返回参数结构体
      class DescribeGovernanceAliasesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务别名总数量。
        # @type TotalCount: Integer
        # @param Content: 服务别名列表。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              governancealias_tmp = GovernanceAlias.new
              governancealias_tmp.deserialize(i)
              @Content << governancealias_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGovernanceInstances请求参数结构体
      class DescribeGovernanceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Service: 实例所在的服务名。
        # @type Service: String
        # @param Namespace: 实例所在命名空间名。
        # @type Namespace: String
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param Host: 根据实例ip过滤，多个ip使用英文逗号分隔。
        # @type Host: String
        # @param InstanceVersion: 根据实例版本过滤。
        # @type InstanceVersion: String
        # @param Protocol: 根据实例协议过滤。
        # @type Protocol: String
        # @param HealthStatus: 根据实例健康状态过滤。false：表示不健康，true：表示健康。
        # @type HealthStatus: Boolean
        # @param Isolate: 根据实例隔离状态过滤。false：表示非隔离，true：表示隔离中。
        # @type Isolate: Boolean
        # @param Metadatas: 根据元数据信息过滤。目前只支持一组元数据键值，若传了多个键值对，只会以第一个过滤。
        # @type Metadatas: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Location: 地域
        # @type Location: :class:`Tencentcloud::Tse.v20201207.models.Location`

        attr_accessor :Service, :Namespace, :InstanceId, :Host, :InstanceVersion, :Protocol, :HealthStatus, :Isolate, :Metadatas, :Offset, :Limit, :Location

        def initialize(service=nil, namespace=nil, instanceid=nil, host=nil, instanceversion=nil, protocol=nil, healthstatus=nil, isolate=nil, metadatas=nil, offset=nil, limit=nil, location=nil)
          @Service = service
          @Namespace = namespace
          @InstanceId = instanceid
          @Host = host
          @InstanceVersion = instanceversion
          @Protocol = protocol
          @HealthStatus = healthstatus
          @Isolate = isolate
          @Metadatas = metadatas
          @Offset = offset
          @Limit = limit
          @Location = location
        end

        def deserialize(params)
          @Service = params['Service']
          @Namespace = params['Namespace']
          @InstanceId = params['InstanceId']
          @Host = params['Host']
          @InstanceVersion = params['InstanceVersion']
          @Protocol = params['Protocol']
          @HealthStatus = params['HealthStatus']
          @Isolate = params['Isolate']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # DescribeGovernanceInstances返回参数结构体
      class DescribeGovernanceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务实例总数量。
        # @type TotalCount: Integer
        # @param Content: 服务里实例列表。
        # @type Content: Array
        # @param Location: 地域
        # @type Location: :class:`Tencentcloud::Tse.v20201207.models.Location`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :Location, :RequestId

        def initialize(totalcount=nil, content=nil, location=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @Location = location
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              governanceinstance_tmp = GovernanceInstance.new
              governanceinstance_tmp.deserialize(i)
              @Content << governanceinstance_tmp
            end
          end
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGovernanceNamespaces请求参数结构体
      class DescribeGovernanceNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id
        # @type InstanceId: String
        # @param Name: 根据命名空间名称过滤。
        # @type Name: String
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Name, :SyncToGlobalRegistry, :Offset, :Limit

        def initialize(instanceid=nil, name=nil, synctoglobalregistry=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Name = name
          @SyncToGlobalRegistry = synctoglobalregistry
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGovernanceNamespaces返回参数结构体
      class DescribeGovernanceNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数量。
        # @type TotalCount: Integer
        # @param Content: 治理中心命名空间实例列表。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              governancenamespace_tmp = GovernanceNamespace.new
              governancenamespace_tmp.deserialize(i)
              @Content << governancenamespace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGovernanceServiceContractVersions请求参数结构体
      class DescribeGovernanceServiceContractVersionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例ID
        # @type InstanceId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Service: 服务名
        # @type Service: String

        attr_accessor :InstanceId, :Namespace, :Service

        def initialize(instanceid=nil, namespace=nil, service=nil)
          @InstanceId = instanceid
          @Namespace = namespace
          @Service = service
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Namespace = params['Namespace']
          @Service = params['Service']
        end
      end

      # DescribeGovernanceServiceContractVersions返回参数结构体
      class DescribeGovernanceServiceContractVersionsResponse < TencentCloud::Common::AbstractModel
        # @param GovernanceServiceContractVersions: 服务契约版本列表
        # @type GovernanceServiceContractVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GovernanceServiceContractVersions, :RequestId

        def initialize(governanceservicecontractversions=nil, requestid=nil)
          @GovernanceServiceContractVersions = governanceservicecontractversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GovernanceServiceContractVersions'].nil?
            @GovernanceServiceContractVersions = []
            params['GovernanceServiceContractVersions'].each do |i|
              governanceservicecontractversion_tmp = GovernanceServiceContractVersion.new
              governanceservicecontractversion_tmp.deserialize(i)
              @GovernanceServiceContractVersions << governanceservicecontractversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGovernanceServiceContracts请求参数结构体
      class DescribeGovernanceServiceContractsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 北极星引擎实例ID
        # @type InstanceId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页条数
        # @type Limit: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Service: 服务名
        # @type Service: String
        # @param Name: 契约名称
        # @type Name: String
        # @param ContractVersion: 契约版本
        # @type ContractVersion: String
        # @param Protocol: 契约协议
        # @type Protocol: String
        # @param Brief: 是否只展示基本信息
        # @type Brief: Boolean

        attr_accessor :InstanceId, :Offset, :Limit, :Namespace, :Service, :Name, :ContractVersion, :Protocol, :Brief

        def initialize(instanceid=nil, offset=nil, limit=nil, namespace=nil, service=nil, name=nil, contractversion=nil, protocol=nil, brief=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Namespace = namespace
          @Service = service
          @Name = name
          @ContractVersion = contractversion
          @Protocol = protocol
          @Brief = brief
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Namespace = params['Namespace']
          @Service = params['Service']
          @Name = params['Name']
          @ContractVersion = params['ContractVersion']
          @Protocol = params['Protocol']
          @Brief = params['Brief']
        end
      end

      # DescribeGovernanceServiceContracts返回参数结构体
      class DescribeGovernanceServiceContractsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Size: 返回条数
        # @type Size: Integer
        # @param ServiceContracts: 契约定义列表
        # @type ServiceContracts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Size, :ServiceContracts, :RequestId

        def initialize(totalcount=nil, size=nil, servicecontracts=nil, requestid=nil)
          @TotalCount = totalcount
          @Size = size
          @ServiceContracts = servicecontracts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Size = params['Size']
          unless params['ServiceContracts'].nil?
            @ServiceContracts = []
            params['ServiceContracts'].each do |i|
              governanceservicecontract_tmp = GovernanceServiceContract.new
              governanceservicecontract_tmp.deserialize(i)
              @ServiceContracts << governanceservicecontract_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGovernanceServices请求参数结构体
      class DescribeGovernanceServicesRequest < TencentCloud::Common::AbstractModel
        # @param Name: 按照服务名过滤，精确匹配。
        # @type Name: String
        # @param Namespace: 按照命名空间过滤，精确匹配。
        # @type Namespace: String
        # @param Metadatas: 使用元数据过滤，目前只支持一组元组数，若传了多条，只会使用第一条元数据过滤。
        # @type Metadatas: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param InstanceId: tse 实例 id。
        # @type InstanceId: String
        # @param Department: 服务所属部门。
        # @type Department: String
        # @param Business: 服务所属业务。
        # @type Business: String
        # @param Host: 服务中实例的ip，用来过滤服务。
        # @type Host: String
        # @param OnlyExistHealthyInstance: 是否只查询存在健康实例的服务
        # @type OnlyExistHealthyInstance: Boolean
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: String

        attr_accessor :Name, :Namespace, :Metadatas, :Offset, :Limit, :InstanceId, :Department, :Business, :Host, :OnlyExistHealthyInstance, :SyncToGlobalRegistry

        def initialize(name=nil, namespace=nil, metadatas=nil, offset=nil, limit=nil, instanceid=nil, department=nil, business=nil, host=nil, onlyexisthealthyinstance=nil, synctoglobalregistry=nil)
          @Name = name
          @Namespace = namespace
          @Metadatas = metadatas
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @Department = department
          @Business = business
          @Host = host
          @OnlyExistHealthyInstance = onlyexisthealthyinstance
          @SyncToGlobalRegistry = synctoglobalregistry
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @Department = params['Department']
          @Business = params['Business']
          @Host = params['Host']
          @OnlyExistHealthyInstance = params['OnlyExistHealthyInstance']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
        end
      end

      # DescribeGovernanceServices返回参数结构体
      class DescribeGovernanceServicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务数总量。
        # @type TotalCount: Integer
        # @param Content: 服务信息详情。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              governanceservice_tmp = GovernanceService.new
              governanceservice_tmp.deserialize(i)
              @Content << governanceservice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 根据公网IP查询云原生网关实例信息出参
      class DescribeInstanceInfoByIpResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 实例id
        # @type GatewayId: String
        # @param GroupId: 分组id
        # @type GroupId: String

        attr_accessor :GatewayId, :GroupId

        def initialize(gatewayid=nil, groupid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
        end
      end

      # 实例地域信息描述
      class DescribeInstanceRegionInfo < TencentCloud::Common::AbstractModel
        # @param EngineRegion: 引擎部署地域信息
        # @type EngineRegion: String
        # @param Replica: 引擎在该地域的副本数
        # @type Replica: Integer
        # @param SpecId: 引擎在该地域的规格id
        # @type SpecId: String
        # @param IntranetVpcInfos: 客户端内网的网络信息
        # @type IntranetVpcInfos: Array
        # @param ConsoleIntranetVpcInfos: 控制台内网的网络信息
        # @type ConsoleIntranetVpcInfos: Array
        # @param EnableClientInternet: 是否开公网
        # @type EnableClientInternet: Boolean
        # @param LimiterIntranetVpcInfos: 限流客户端内网的网络信息
        # @type LimiterIntranetVpcInfos: Array
        # @param MainRegion: 是否为主地域，仅在服务治理中心多地域有效
        # @type MainRegion: Boolean
        # @param EKSClusterID: 该地域所在的EKS集群
        # @type EKSClusterID: String

        attr_accessor :EngineRegion, :Replica, :SpecId, :IntranetVpcInfos, :ConsoleIntranetVpcInfos, :EnableClientInternet, :LimiterIntranetVpcInfos, :MainRegion, :EKSClusterID

        def initialize(engineregion=nil, replica=nil, specid=nil, intranetvpcinfos=nil, consoleintranetvpcinfos=nil, enableclientinternet=nil, limiterintranetvpcinfos=nil, mainregion=nil, eksclusterid=nil)
          @EngineRegion = engineregion
          @Replica = replica
          @SpecId = specid
          @IntranetVpcInfos = intranetvpcinfos
          @ConsoleIntranetVpcInfos = consoleintranetvpcinfos
          @EnableClientInternet = enableclientinternet
          @LimiterIntranetVpcInfos = limiterintranetvpcinfos
          @MainRegion = mainregion
          @EKSClusterID = eksclusterid
        end

        def deserialize(params)
          @EngineRegion = params['EngineRegion']
          @Replica = params['Replica']
          @SpecId = params['SpecId']
          unless params['IntranetVpcInfos'].nil?
            @IntranetVpcInfos = []
            params['IntranetVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @IntranetVpcInfos << vpcinfo_tmp
            end
          end
          unless params['ConsoleIntranetVpcInfos'].nil?
            @ConsoleIntranetVpcInfos = []
            params['ConsoleIntranetVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @ConsoleIntranetVpcInfos << vpcinfo_tmp
            end
          end
          @EnableClientInternet = params['EnableClientInternet']
          unless params['LimiterIntranetVpcInfos'].nil?
            @LimiterIntranetVpcInfos = []
            params['LimiterIntranetVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @LimiterIntranetVpcInfos << vpcinfo_tmp
            end
          end
          @MainRegion = params['MainRegion']
          @EKSClusterID = params['EKSClusterID']
        end
      end

      # DescribeInstanceTagInfos请求参数结构体
      class DescribeInstanceTagInfosRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceTagInfos返回参数结构体
      class DescribeInstanceTagInfosResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TagInfos: 实例标签集合
        # @type TagInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :TagInfos, :RequestId

        def initialize(instanceid=nil, taginfos=nil, requestid=nil)
          @InstanceId = instanceid
          @TagInfos = taginfos
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['TagInfos'].nil?
            @TagInfos = []
            params['TagInfos'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @TagInfos << instancetaginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNacosReplicas请求参数结构体
      class DescribeNacosReplicasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例ID
        # @type InstanceId: String
        # @param Limit: 副本列表Limit
        # @type Limit: Integer
        # @param Offset: 副本列表Offset
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset

        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNacosReplicas返回参数结构体
      class DescribeNacosReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Replicas: 引擎实例副本信息
        # @type Replicas: Array
        # @param TotalCount: 副本个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Replicas, :TotalCount, :RequestId

        def initialize(replicas=nil, totalcount=nil, requestid=nil)
          @Replicas = replicas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Replicas'].nil?
            @Replicas = []
            params['Replicas'].each do |i|
              nacosreplica_tmp = NacosReplica.new
              nacosreplica_tmp.deserialize(i)
              @Replicas << nacosreplica_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNacosServerInterfaces请求参数结构体
      class DescribeNacosServerInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Limit: 返回的列表个数
        # @type Limit: Integer
        # @param Offset: 返回的列表起始偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset

        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNacosServerInterfaces返回参数结构体
      class DescribeNacosServerInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 接口总个数
        # @type TotalCount: Integer
        # @param Content: 接口列表
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              nacosserverinterface_tmp = NacosServerInterface.new
              nacosserverinterface_tmp.deserialize(i)
              @Content << nacosserverinterface_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNativeGatewayServerGroups请求参数结构体
      class DescribeNativeGatewayServerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20。
        # @type Limit: Integer
        # @param Filters: 过滤参数，支持按照分组名称、分组ID（Name、GroupId）筛选
        # @type Filters: Array

        attr_accessor :GatewayId, :Offset, :Limit, :Filters

        def initialize(gatewayid=nil, offset=nil, limit=nil, filters=nil)
          @GatewayId = gatewayid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
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

      # DescribeNativeGatewayServerGroups返回参数结构体
      class DescribeNativeGatewayServerGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分组列表信息
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.NativeGatewayServerGroups`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = NativeGatewayServerGroups.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNativeGatewayServiceSources请求参数结构体
      class DescribeNativeGatewayServiceSourcesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayID: 网关实例ID
        # @type GatewayID: String
        # @param Limit: 单页条数，最大100
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param SourceName: 服务来源实例名称，模糊搜索
        # @type SourceName: String
        # @param SourceTypes: 微服务引擎类型：TSE-Nacos｜TSE-Consul｜TSE-PolarisMesh｜Customer-Nacos｜Customer-Consul｜Customer-PolarisMesh
        # @type SourceTypes: Array
        # @param OrderField: 排序字段类型，当前仅支持SourceName
        # @type OrderField: String
        # @param OrderType: 排序类型，AES/DESC
        # @type OrderType: String

        attr_accessor :GatewayID, :Limit, :Offset, :SourceName, :SourceTypes, :OrderField, :OrderType

        def initialize(gatewayid=nil, limit=nil, offset=nil, sourcename=nil, sourcetypes=nil, orderfield=nil, ordertype=nil)
          @GatewayID = gatewayid
          @Limit = limit
          @Offset = offset
          @SourceName = sourcename
          @SourceTypes = sourcetypes
          @OrderField = orderfield
          @OrderType = ordertype
        end

        def deserialize(params)
          @GatewayID = params['GatewayID']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceName = params['SourceName']
          @SourceTypes = params['SourceTypes']
          @OrderField = params['OrderField']
          @OrderType = params['OrderType']
        end
      end

      # DescribeNativeGatewayServiceSources返回参数结构体
      class DescribeNativeGatewayServiceSourcesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总实例数
        # @type Total: Integer
        # @param List: 服务来源实例列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              nativegatewayservicesourceitem_tmp = NativeGatewayServiceSourceItem.new
              nativegatewayservicesourceitem_tmp.deserialize(i)
              @List << nativegatewayservicesourceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOneCloudNativeAPIGatewayService请求参数结构体
      class DescribeOneCloudNativeAPIGatewayServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名字，或服务ID
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DescribeOneCloudNativeAPIGatewayService返回参数结构体
      class DescribeOneCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongServiceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KongServiceDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicAddressConfig请求参数结构体
      class DescribePublicAddressConfigRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param GroupId: 查询该分组的公网信息，不传则查询实例所有的公网负载均衡信息
        # @type GroupId: String

        attr_accessor :GatewayId, :GroupId

        def initialize(gatewayid=nil, groupid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
        end
      end

      # DescribePublicAddressConfig返回参数结构体
      class DescribePublicAddressConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 公网地址信息
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribePublicAddressConfigResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribePublicAddressConfigResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取云原生api网关公网地址信息响应结果
      class DescribePublicAddressConfigResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param ConfigList: 公网地址信息
        # @type ConfigList: Array
        # @param TotalCount: 总个数
        # @type TotalCount: Integer

        attr_accessor :GatewayId, :ConfigList, :TotalCount

        def initialize(gatewayid=nil, configlist=nil, totalcount=nil)
          @GatewayId = gatewayid
          @ConfigList = configlist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              publicaddressconfig_tmp = PublicAddressConfig.new
              publicaddressconfig_tmp.deserialize(i)
              @ConfigList << publicaddressconfig_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # DescribePublicNetwork请求参数结构体
      class DescribePublicNetworkRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 网关分组ID
        # @type GroupId: String
        # @param NetworkId: 网络ID
        # @type NetworkId: String

        attr_accessor :GatewayId, :GroupId, :NetworkId

        def initialize(gatewayid=nil, groupid=nil, networkid=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @NetworkId = networkid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @NetworkId = params['NetworkId']
        end
      end

      # DescribePublicNetwork返回参数结构体
      class DescribePublicNetworkResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云原生API网关公网详情响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribePublicNetworkResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribePublicNetworkResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询客户端公网信息
      class DescribePublicNetworkResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param GroupId: 网关分组ID
        # @type GroupId: String
        # @param PublicNetwork: 客户端公网信息
        # @type PublicNetwork: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayConfig`

        attr_accessor :GatewayId, :GroupId, :PublicNetwork

        def initialize(gatewayid=nil, groupid=nil, publicnetwork=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @PublicNetwork = publicnetwork
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          unless params['PublicNetwork'].nil?
            @PublicNetwork = CloudNativeAPIGatewayConfig.new
            @PublicNetwork.deserialize(params['PublicNetwork'])
          end
        end
      end

      # DescribeSREInstanceAccessAddress请求参数结构体
      class DescribeSREInstanceAccessAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 注册引擎实例Id
        # @type InstanceId: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Workload: 引擎其他组件名称（pushgateway、polaris-limiter）
        # @type Workload: String
        # @param EngineRegion: 部署地域
        # @type EngineRegion: String

        attr_accessor :InstanceId, :VpcId, :SubnetId, :Workload, :EngineRegion

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, workload=nil, engineregion=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Workload = workload
          @EngineRegion = engineregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Workload = params['Workload']
          @EngineRegion = params['EngineRegion']
        end
      end

      # DescribeSREInstanceAccessAddress返回参数结构体
      class DescribeSREInstanceAccessAddressResponse < TencentCloud::Common::AbstractModel
        # @param IntranetAddress: 内网访问地址
        # @type IntranetAddress: String
        # @param InternetAddress: 公网访问地址
        # @type InternetAddress: String
        # @param EnvAddressInfos: apollo多环境公网ip
        # @type EnvAddressInfos: Array
        # @param ConsoleInternetAddress: 控制台公网访问地址
        # @type ConsoleInternetAddress: String
        # @param ConsoleIntranetAddress: 控制台内网访问地址
        # @type ConsoleIntranetAddress: String
        # @param InternetBandWidth: 客户端公网带宽
        # @type InternetBandWidth: Integer
        # @param ConsoleInternetBandWidth: 控制台公网带宽
        # @type ConsoleInternetBandWidth: Integer
        # @param LimiterAddressInfos: 北极星限流server节点接入IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimiterAddressInfos: Array
        # @param CLBMultiRegion: InternetAddress 的公网 CLB 多可用区信息
        # @type CLBMultiRegion: :class:`Tencentcloud::Tse.v20201207.models.CLBMultiRegion`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntranetAddress, :InternetAddress, :EnvAddressInfos, :ConsoleInternetAddress, :ConsoleIntranetAddress, :InternetBandWidth, :ConsoleInternetBandWidth, :LimiterAddressInfos, :CLBMultiRegion, :RequestId

        def initialize(intranetaddress=nil, internetaddress=nil, envaddressinfos=nil, consoleinternetaddress=nil, consoleintranetaddress=nil, internetbandwidth=nil, consoleinternetbandwidth=nil, limiteraddressinfos=nil, clbmultiregion=nil, requestid=nil)
          @IntranetAddress = intranetaddress
          @InternetAddress = internetaddress
          @EnvAddressInfos = envaddressinfos
          @ConsoleInternetAddress = consoleinternetaddress
          @ConsoleIntranetAddress = consoleintranetaddress
          @InternetBandWidth = internetbandwidth
          @ConsoleInternetBandWidth = consoleinternetbandwidth
          @LimiterAddressInfos = limiteraddressinfos
          @CLBMultiRegion = clbmultiregion
          @RequestId = requestid
        end

        def deserialize(params)
          @IntranetAddress = params['IntranetAddress']
          @InternetAddress = params['InternetAddress']
          unless params['EnvAddressInfos'].nil?
            @EnvAddressInfos = []
            params['EnvAddressInfos'].each do |i|
              envaddressinfo_tmp = EnvAddressInfo.new
              envaddressinfo_tmp.deserialize(i)
              @EnvAddressInfos << envaddressinfo_tmp
            end
          end
          @ConsoleInternetAddress = params['ConsoleInternetAddress']
          @ConsoleIntranetAddress = params['ConsoleIntranetAddress']
          @InternetBandWidth = params['InternetBandWidth']
          @ConsoleInternetBandWidth = params['ConsoleInternetBandWidth']
          unless params['LimiterAddressInfos'].nil?
            @LimiterAddressInfos = []
            params['LimiterAddressInfos'].each do |i|
              polarislimiteraddress_tmp = PolarisLimiterAddress.new
              polarislimiteraddress_tmp.deserialize(i)
              @LimiterAddressInfos << polarislimiteraddress_tmp
            end
          end
          unless params['CLBMultiRegion'].nil?
            @CLBMultiRegion = CLBMultiRegion.new
            @CLBMultiRegion.deserialize(params['CLBMultiRegion'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSREInstances请求参数结构体
      class DescribeSREInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 请求过滤参数
        # @type Filters: Array
        # @param Limit: 翻页单页查询限制数量[0,1000], 默认值0
        # @type Limit: Integer
        # @param Offset: 翻页单页偏移量，默认值0
        # @type Offset: Integer
        # @param QueryType: 查询类型
        # @type QueryType: String
        # @param QuerySource: 调用方来源
        # @type QuerySource: String

        attr_accessor :Filters, :Limit, :Offset, :QueryType, :QuerySource

        def initialize(filters=nil, limit=nil, offset=nil, querytype=nil, querysource=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @QueryType = querytype
          @QuerySource = querysource
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
          @QueryType = params['QueryType']
          @QuerySource = params['QuerySource']
        end
      end

      # DescribeSREInstances返回参数结构体
      class DescribeSREInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Content: 实例记录
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              sreinstance_tmp = SREInstance.new
              sreinstance_tmp.deserialize(i)
              @Content << sreinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpstreamHealthCheckConfig请求参数结构体
      class DescribeUpstreamHealthCheckConfigRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 网关服务名称
        # @type Name: String

        attr_accessor :GatewayId, :Name

        def initialize(gatewayid=nil, name=nil)
          @GatewayId = gatewayid
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
        end
      end

      # DescribeUpstreamHealthCheckConfig返回参数结构体
      class DescribeUpstreamHealthCheckConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 健康检查配置
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.UpstreamHealthCheckConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UpstreamHealthCheckConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWafDomains请求参数结构体
      class DescribeWafDomainsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeWafDomains返回参数结构体
      class DescribeWafDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 已被 WAF 防护域名
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeWafDomainsResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeWafDomainsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取WAF保护域名列表
      class DescribeWafDomainsResult < TencentCloud::Common::AbstractModel
        # @param Domains: WAF防护域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array

        attr_accessor :Domains

        def initialize(domains=nil)
          @Domains = domains
        end

        def deserialize(params)
          @Domains = params['Domains']
        end
      end

      # DescribeWafProtection请求参数结构体
      class DescribeWafProtectionRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Type:  防护资源的类型。
        # - Global  实例
        # - Service  服务
        # - Route  路由
        # - Object  对象
        # @type Type: String
        # @param TypeList: 防护资源类型列表，支持查询多个类型（Global、Service、Route、Object）。为空时，默认查询Global类型。
        # @type TypeList: Array

        attr_accessor :GatewayId, :Type, :TypeList
        extend Gem::Deprecate
        deprecate :Type, :none, 2025, 6
        deprecate :Type=, :none, 2025, 6

        def initialize(gatewayid=nil, type=nil, typelist=nil)
          @GatewayId = gatewayid
          @Type = type
          @TypeList = typelist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Type = params['Type']
          @TypeList = params['TypeList']
        end
      end

      # DescribeWafProtection返回参数结构体
      class DescribeWafProtectionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 保护状态
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeWafProtectionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeWafProtectionResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取WAF保护资源状态
      class DescribeWafProtectionResult < TencentCloud::Common::AbstractModel
        # @param GlobalStatus: 全局防护状态
        # @type GlobalStatus: String
        # @param ServicesStatus: 服务防护状态
        # @type ServicesStatus: Array
        # @param RouteStatus: 路由防护状态
        # @type RouteStatus: Array
        # @param ObjectStatus: 对象防护状态
        # @type ObjectStatus: String

        attr_accessor :GlobalStatus, :ServicesStatus, :RouteStatus, :ObjectStatus

        def initialize(globalstatus=nil, servicesstatus=nil, routestatus=nil, objectstatus=nil)
          @GlobalStatus = globalstatus
          @ServicesStatus = servicesstatus
          @RouteStatus = routestatus
          @ObjectStatus = objectstatus
        end

        def deserialize(params)
          @GlobalStatus = params['GlobalStatus']
          unless params['ServicesStatus'].nil?
            @ServicesStatus = []
            params['ServicesStatus'].each do |i|
              servicewafstatus_tmp = ServiceWafStatus.new
              servicewafstatus_tmp.deserialize(i)
              @ServicesStatus << servicewafstatus_tmp
            end
          end
          unless params['RouteStatus'].nil?
            @RouteStatus = []
            params['RouteStatus'].each do |i|
              routewafstatus_tmp = RouteWafStatus.new
              routewafstatus_tmp.deserialize(i)
              @RouteStatus << routewafstatus_tmp
            end
          end
          @ObjectStatus = params['ObjectStatus']
        end
      end

      # DescribeZookeeperReplicas请求参数结构体
      class DescribeZookeeperReplicasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 注册引擎实例ID
        # @type InstanceId: String
        # @param Limit: 副本列表Limit
        # @type Limit: Integer
        # @param Offset: 副本列表Offset
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset

        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeZookeeperReplicas返回参数结构体
      class DescribeZookeeperReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Replicas: 注册引擎实例副本信息
        # @type Replicas: Array
        # @param TotalCount: 副本个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Replicas, :TotalCount, :RequestId

        def initialize(replicas=nil, totalcount=nil, requestid=nil)
          @Replicas = replicas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Replicas'].nil?
            @Replicas = []
            params['Replicas'].each do |i|
              zookeeperreplica_tmp = ZookeeperReplica.new
              zookeeperreplica_tmp.deserialize(i)
              @Replicas << zookeeperreplica_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZookeeperServerInterfaces请求参数结构体
      class DescribeZookeeperServerInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Limit: 返回的列表个数
        # @type Limit: Integer
        # @param Offset: 返回的列表起始偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset

        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeZookeeperServerInterfaces返回参数结构体
      class DescribeZookeeperServerInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 接口总个数
        # @type TotalCount: Integer
        # @param Content: 接口列表
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId

        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              zookeeperserverinterface_tmp = ZookeeperServerInterface.new
              zookeeperserverinterface_tmp.deserialize(i)
              @Content << zookeeperserverinterface_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 引擎的初始管理账号，当前仅支持Apollo引擎
      class EngineAdmin < TencentCloud::Common::AbstractModel
        # @param Name: 控制台初始用户名
        # @type Name: String
        # @param Password: 控制台初始密码
        # @type Password: String
        # @param Token: 引擎接口的管理员 Token
        # @type Token: String

        attr_accessor :Name, :Password, :Token

        def initialize(name=nil, password=nil, token=nil)
          @Name = name
          @Password = password
          @Token = token
        end

        def deserialize(params)
          @Name = params['Name']
          @Password = params['Password']
          @Token = params['Token']
        end
      end

      # 引擎地域配置详情
      class EngineRegionInfo < TencentCloud::Common::AbstractModel
        # @param EngineRegion: 引擎节点所在地域
        # @type EngineRegion: String
        # @param Replica: 此地域节点分配数量
        # @type Replica: Integer
        # @param VpcInfos: 集群网络信息
        # @type VpcInfos: Array
        # @param MainRegion: Polaris: 是否为主地域
        # Zookeeper: 是否为Leader固定地域
        # @type MainRegion: Boolean
        # @param SpecId: 引擎规格ID
        # @type SpecId: String

        attr_accessor :EngineRegion, :Replica, :VpcInfos, :MainRegion, :SpecId

        def initialize(engineregion=nil, replica=nil, vpcinfos=nil, mainregion=nil, specid=nil)
          @EngineRegion = engineregion
          @Replica = replica
          @VpcInfos = vpcinfos
          @MainRegion = mainregion
          @SpecId = specid
        end

        def deserialize(params)
          @EngineRegion = params['EngineRegion']
          @Replica = params['Replica']
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          @MainRegion = params['MainRegion']
          @SpecId = params['SpecId']
        end
      end

      # 多环境网络信息
      class EnvAddressInfo < TencentCloud::Common::AbstractModel
        # @param EnvName: 环境名
        # @type EnvName: String
        # @param EnableConfigInternet: 是否开启config公网
        # @type EnableConfigInternet: Boolean
        # @param ConfigInternetServiceIp: config公网ip
        # @type ConfigInternetServiceIp: String
        # @param ConfigIntranetAddress: config内网访问地址
        # @type ConfigIntranetAddress: String
        # @param EnableConfigIntranet: 是否开启config内网clb
        # @type EnableConfigIntranet: Boolean
        # @param InternetBandWidth: 客户端公网带宽
        # @type InternetBandWidth: Integer
        # @param CLBMultiRegion: 客户端公网CLB多可用区信息
        # @type CLBMultiRegion: :class:`Tencentcloud::Tse.v20201207.models.CLBMultiRegion`

        attr_accessor :EnvName, :EnableConfigInternet, :ConfigInternetServiceIp, :ConfigIntranetAddress, :EnableConfigIntranet, :InternetBandWidth, :CLBMultiRegion

        def initialize(envname=nil, enableconfiginternet=nil, configinternetserviceip=nil, configintranetaddress=nil, enableconfigintranet=nil, internetbandwidth=nil, clbmultiregion=nil)
          @EnvName = envname
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
          @ConfigIntranetAddress = configintranetaddress
          @EnableConfigIntranet = enableconfigintranet
          @InternetBandWidth = internetbandwidth
          @CLBMultiRegion = clbmultiregion
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
          @ConfigIntranetAddress = params['ConfigIntranetAddress']
          @EnableConfigIntranet = params['EnableConfigIntranet']
          @InternetBandWidth = params['InternetBandWidth']
          unless params['CLBMultiRegion'].nil?
            @CLBMultiRegion = CLBMultiRegion.new
            @CLBMultiRegion.deserialize(params['CLBMultiRegion'])
          end
        end
      end

      # 环境具体信息
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvName: 环境名称
        # @type EnvName: String
        # @param VpcInfos: 环境对应的网络信息
        # @type VpcInfos: Array
        # @param StorageCapacity: 云硬盘容量
        # @type StorageCapacity: Integer
        # @param Status: 运行状态
        # @type Status: String
        # @param AdminServiceIp: Admin service 访问地址
        # @type AdminServiceIp: String
        # @param ConfigServiceIp: Config service访问地址
        # @type ConfigServiceIp: String
        # @param EnableConfigInternet: 是否开启config-server公网
        # @type EnableConfigInternet: Boolean
        # @param ConfigInternetServiceIp: config-server公网访问地址
        # @type ConfigInternetServiceIp: String
        # @param SpecId: 规格ID
        # @type SpecId: String
        # @param EnvReplica: 环境的节点数
        # @type EnvReplica: Integer
        # @param RunningCount: 环境运行的节点数
        # @type RunningCount: Integer
        # @param AliasEnvName: 环境别名
        # @type AliasEnvName: String
        # @param EnvDesc: 环境描述
        # @type EnvDesc: String
        # @param ClientBandWidth: 客户端带宽
        # @type ClientBandWidth: Integer
        # @param EnableConfigIntranet: 客户端内网开关
        # @type EnableConfigIntranet: Boolean

        attr_accessor :EnvName, :VpcInfos, :StorageCapacity, :Status, :AdminServiceIp, :ConfigServiceIp, :EnableConfigInternet, :ConfigInternetServiceIp, :SpecId, :EnvReplica, :RunningCount, :AliasEnvName, :EnvDesc, :ClientBandWidth, :EnableConfigIntranet

        def initialize(envname=nil, vpcinfos=nil, storagecapacity=nil, status=nil, adminserviceip=nil, configserviceip=nil, enableconfiginternet=nil, configinternetserviceip=nil, specid=nil, envreplica=nil, runningcount=nil, aliasenvname=nil, envdesc=nil, clientbandwidth=nil, enableconfigintranet=nil)
          @EnvName = envname
          @VpcInfos = vpcinfos
          @StorageCapacity = storagecapacity
          @Status = status
          @AdminServiceIp = adminserviceip
          @ConfigServiceIp = configserviceip
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
          @SpecId = specid
          @EnvReplica = envreplica
          @RunningCount = runningcount
          @AliasEnvName = aliasenvname
          @EnvDesc = envdesc
          @ClientBandWidth = clientbandwidth
          @EnableConfigIntranet = enableconfigintranet
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          @StorageCapacity = params['StorageCapacity']
          @Status = params['Status']
          @AdminServiceIp = params['AdminServiceIp']
          @ConfigServiceIp = params['ConfigServiceIp']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
          @SpecId = params['SpecId']
          @EnvReplica = params['EnvReplica']
          @RunningCount = params['RunningCount']
          @AliasEnvName = params['AliasEnvName']
          @EnvDesc = params['EnvDesc']
          @ClientBandWidth = params['ClientBandWidth']
          @EnableConfigIntranet = params['EnableConfigIntranet']
        end
      end

      # 云原生网关限流插件外部redis配置
      class ExternalRedis < TencentCloud::Common::AbstractModel
        # @param RedisHost: redis ip
        # @type RedisHost: String
        # @param RedisPassword: redis密码
        # @type RedisPassword: String
        # @param RedisPort: redis端口
        # @type RedisPort: Integer
        # @param RedisTimeout: 超时时间  ms
        # @type RedisTimeout: Integer

        attr_accessor :RedisHost, :RedisPassword, :RedisPort, :RedisTimeout

        def initialize(redishost=nil, redispassword=nil, redisport=nil, redistimeout=nil)
          @RedisHost = redishost
          @RedisPassword = redispassword
          @RedisPort = redisport
          @RedisTimeout = redistimeout
        end

        def deserialize(params)
          @RedisHost = params['RedisHost']
          @RedisPassword = params['RedisPassword']
          @RedisPort = params['RedisPort']
          @RedisTimeout = params['RedisTimeout']
        end
      end

      # 查询过滤通用对象
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数名
        # @type Name: String
        # @param Values: 过滤参数值
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

      # 网关实例协议端口列表
      class GatewayInstanceSchemeAndPorts < TencentCloud::Common::AbstractModel
        # @param Scheme: 端口协议，可选HTTP、HTTPS、TCP和UDP
        # @type Scheme: String
        # @param PortList: 端口列表
        # @type PortList: Array

        attr_accessor :Scheme, :PortList

        def initialize(scheme=nil, portlist=nil)
          @Scheme = scheme
          @PortList = portlist
        end

        def deserialize(params)
          @Scheme = params['Scheme']
          @PortList = params['PortList']
        end
      end

      # 服务别名结构信息
      class GovernanceAlias < TencentCloud::Common::AbstractModel
        # @param Alias: 服务别名
        # @type Alias: String
        # @param AliasNamespace: 服务别名命名空间
        # @type AliasNamespace: String
        # @param Service: 服务别名指向的服务名
        # @type Service: String
        # @param Namespace: 服务别名指向的服务命名空间
        # @type Namespace: String
        # @param Comment: 服务别名的描述信息
        # @type Comment: String
        # @param CreateTime: 服务别名创建时间
        # @type CreateTime: String
        # @param ModifyTime: 服务别名修改时间
        # @type ModifyTime: String
        # @param Id: 服务别名ID
        # @type Id: String
        # @param Editable: 该服务别名是否可以编辑
        # @type Editable: Boolean
        # @param Metadatas: 元数据信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadatas: Array

        attr_accessor :Alias, :AliasNamespace, :Service, :Namespace, :Comment, :CreateTime, :ModifyTime, :Id, :Editable, :Metadatas

        def initialize(_alias=nil, aliasnamespace=nil, service=nil, namespace=nil, comment=nil, createtime=nil, modifytime=nil, id=nil, editable=nil, metadatas=nil)
          @Alias = _alias
          @AliasNamespace = aliasnamespace
          @Service = service
          @Namespace = namespace
          @Comment = comment
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Id = id
          @Editable = editable
          @Metadatas = metadatas
        end

        def deserialize(params)
          @Alias = params['Alias']
          @AliasNamespace = params['AliasNamespace']
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Comment = params['Comment']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Id = params['Id']
          @Editable = params['Editable']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
        end
      end

      # 治理中心实例信息。
      class GovernanceInstance < TencentCloud::Common::AbstractModel
        # @param Id: 实例id。
        # @type Id: String
        # @param Service: 实例所在服务名。
        # @type Service: String
        # @param Namespace: 实例所在命名空间名。
        # @type Namespace: String
        # @param Host: 实例ip地址。
        # @type Host: String
        # @param Port: 实例端口信息。
        # @type Port: Integer
        # @param Protocol: 通信协议。
        # @type Protocol: String
        # @param Version: 版本信息。
        # @type Version: String
        # @param Weight: 负载均衡权重。
        # @type Weight: Integer
        # @param EnableHealthCheck: 是否开启健康检查。
        # @type EnableHealthCheck: Boolean
        # @param Healthy: 实例是否健康。
        # @type Healthy: Boolean
        # @param Isolate: 实例是否隔离。
        # @type Isolate: Boolean
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param ModifyTime: 实例修改时间。
        # @type ModifyTime: String
        # @param Metadatas: 元数据数组。
        # @type Metadatas: Array
        # @param Ttl: 上报心跳间隔。
        # @type Ttl: Integer
        # @param InstanceVersion: 版本信息。
        # @type InstanceVersion: String
        # @param HealthStatus: 状态信息
        # @type HealthStatus: String
        # @param Comment: 描述
        # @type Comment: String

        attr_accessor :Id, :Service, :Namespace, :Host, :Port, :Protocol, :Version, :Weight, :EnableHealthCheck, :Healthy, :Isolate, :CreateTime, :ModifyTime, :Metadatas, :Ttl, :InstanceVersion, :HealthStatus, :Comment

        def initialize(id=nil, service=nil, namespace=nil, host=nil, port=nil, protocol=nil, version=nil, weight=nil, enablehealthcheck=nil, healthy=nil, isolate=nil, createtime=nil, modifytime=nil, metadatas=nil, ttl=nil, instanceversion=nil, healthstatus=nil, comment=nil)
          @Id = id
          @Service = service
          @Namespace = namespace
          @Host = host
          @Port = port
          @Protocol = protocol
          @Version = version
          @Weight = weight
          @EnableHealthCheck = enablehealthcheck
          @Healthy = healthy
          @Isolate = isolate
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Metadatas = metadatas
          @Ttl = ttl
          @InstanceVersion = instanceversion
          @HealthStatus = healthstatus
          @Comment = comment
        end

        def deserialize(params)
          @Id = params['Id']
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Host = params['Host']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @Version = params['Version']
          @Weight = params['Weight']
          @EnableHealthCheck = params['EnableHealthCheck']
          @Healthy = params['Healthy']
          @Isolate = params['Isolate']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
          @Ttl = params['Ttl']
          @InstanceVersion = params['InstanceVersion']
          @HealthStatus = params['HealthStatus']
          @Comment = params['Comment']
        end
      end

      # 实例信息
      class GovernanceInstanceInput < TencentCloud::Common::AbstractModel
        # @param Service: 实例所在服务名。
        # @type Service: String
        # @param Namespace: 实例服务所在命名空间。
        # @type Namespace: String
        # @param Weight: 实例负载均衡权重信息。不填默认为100。
        # @type Weight: Integer
        # @param Healthy: 实例默认健康信息。不填默认为健康。
        # @type Healthy: Boolean
        # @param Isolate: 实例隔离信息。不填默认为非隔离。
        # @type Isolate: Boolean
        # @param Host: 实例ip。
        # @type Host: String
        # @param Port: 实例监听端口。
        # @type Port: Integer
        # @param Protocol: 实例使用协议。不填默认为空。
        # @type Protocol: String
        # @param InstanceVersion: 实例版本。不填默认为空。
        # @type InstanceVersion: String
        # @param EnableHealthCheck: 是否启用健康检查。不填默认不启用。
        # @type EnableHealthCheck: Boolean
        # @param Ttl: 上报心跳时间间隔。若 EnableHealthCheck 为不启用，则此参数不生效；若 EnableHealthCheck 启用，此参数不填，则默认 ttl 为 5s。
        # @type Ttl: Integer

        attr_accessor :Service, :Namespace, :Weight, :Healthy, :Isolate, :Host, :Port, :Protocol, :InstanceVersion, :EnableHealthCheck, :Ttl

        def initialize(service=nil, namespace=nil, weight=nil, healthy=nil, isolate=nil, host=nil, port=nil, protocol=nil, instanceversion=nil, enablehealthcheck=nil, ttl=nil)
          @Service = service
          @Namespace = namespace
          @Weight = weight
          @Healthy = healthy
          @Isolate = isolate
          @Host = host
          @Port = port
          @Protocol = protocol
          @InstanceVersion = instanceversion
          @EnableHealthCheck = enablehealthcheck
          @Ttl = ttl
        end

        def deserialize(params)
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Weight = params['Weight']
          @Healthy = params['Healthy']
          @Isolate = params['Isolate']
          @Host = params['Host']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @InstanceVersion = params['InstanceVersion']
          @EnableHealthCheck = params['EnableHealthCheck']
          @Ttl = params['Ttl']
        end
      end

      # 实例信息
      class GovernanceInstanceUpdate < TencentCloud::Common::AbstractModel
        # @param Service: 实例所在服务名。
        # @type Service: String
        # @param Namespace: 实例服务所在命名空间。
        # @type Namespace: String
        # @param Weight: 实例负载均衡权重信息。不填默认为100。
        # @type Weight: Integer
        # @param Healthy: 实例默认健康信息。不填默认为健康。
        # @type Healthy: Boolean
        # @param Isolate: 实例隔离信息。不填默认为非隔离。
        # @type Isolate: Boolean
        # @param Host: 实例ip。
        # @type Host: String
        # @param Port: 实例监听端口。
        # @type Port: Integer
        # @param Protocol: 实例使用协议。不填默认为空。
        # @type Protocol: String
        # @param InstanceVersion: 实例版本。不填默认为空。
        # @type InstanceVersion: String
        # @param EnableHealthCheck: 是否启用健康检查。不填默认不启用。
        # @type EnableHealthCheck: Boolean
        # @param Ttl: 上报心跳时间间隔。若 EnableHealthCheck 为不启用，则此参数不生效；若 EnableHealthCheck 启用，此参数不填，则默认 ttl 为 5s。
        # @type Ttl: Integer
        # @param Id: 治理中心服务实例id。
        # @type Id: String
        # @param Metadatas: 元数据信息。
        # @type Metadatas: Array

        attr_accessor :Service, :Namespace, :Weight, :Healthy, :Isolate, :Host, :Port, :Protocol, :InstanceVersion, :EnableHealthCheck, :Ttl, :Id, :Metadatas

        def initialize(service=nil, namespace=nil, weight=nil, healthy=nil, isolate=nil, host=nil, port=nil, protocol=nil, instanceversion=nil, enablehealthcheck=nil, ttl=nil, id=nil, metadatas=nil)
          @Service = service
          @Namespace = namespace
          @Weight = weight
          @Healthy = healthy
          @Isolate = isolate
          @Host = host
          @Port = port
          @Protocol = protocol
          @InstanceVersion = instanceversion
          @EnableHealthCheck = enablehealthcheck
          @Ttl = ttl
          @Id = id
          @Metadatas = metadatas
        end

        def deserialize(params)
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Weight = params['Weight']
          @Healthy = params['Healthy']
          @Isolate = params['Isolate']
          @Host = params['Host']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @InstanceVersion = params['InstanceVersion']
          @EnableHealthCheck = params['EnableHealthCheck']
          @Ttl = params['Ttl']
          @Id = params['Id']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
        end
      end

      # 服务契约接口定义
      class GovernanceInterfaceDescription < TencentCloud::Common::AbstractModel
        # @param ID: 契约接口ID
        # @type ID: String
        # @param Method: 方法名称
        # @type Method: String
        # @param Path: 路径/接口名称
        # @type Path: String
        # @param Content: 内容
        # @type Content: String
        # @param Source: 创建来源
        # @type Source: String
        # @param Revision: 信息摘要
        # @type Revision: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Name: 接口名称
        # @type Name: String

        attr_accessor :ID, :Method, :Path, :Content, :Source, :Revision, :CreateTime, :ModifyTime, :Name

        def initialize(id=nil, method=nil, path=nil, content=nil, source=nil, revision=nil, createtime=nil, modifytime=nil, name=nil)
          @ID = id
          @Method = method
          @Path = path
          @Content = content
          @Source = source
          @Revision = revision
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Name = name
        end

        def deserialize(params)
          @ID = params['ID']
          @Method = params['Method']
          @Path = params['Path']
          @Content = params['Content']
          @Source = params['Source']
          @Revision = params['Revision']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Name = params['Name']
        end
      end

      # 治理中心命名空间
      class GovernanceNamespace < TencentCloud::Common::AbstractModel
        # @param Name: 命名空间名称。
        # @type Name: String
        # @param Comment: 命名空间描述信息。
        # @type Comment: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ModifyTime: 修改时间。
        # @type ModifyTime: String
        # @param TotalServiceCount: 命名空间下总服务数据量
        # @type TotalServiceCount: Integer
        # @param TotalHealthInstanceCount: 命名空间下总健康实例数量
        # @type TotalHealthInstanceCount: Integer
        # @param TotalInstanceCount: 命名空间下总实例数量
        # @type TotalInstanceCount: Integer
        # @param Id: 命名空间ID
        # @type Id: String
        # @param Editable: 是否可以编辑
        # @type Editable: Boolean
        # @param UserIds: 可以操作此命名空间的用户ID列表
        # @type UserIds: Array
        # @param GroupIds: 可以操作此命名空间的用户组ID列表
        # @type GroupIds: Array
        # @param RemoveUserIds: 移除可以操作此命名空间的用户ID列表
        # @type RemoveUserIds: Array
        # @param RemoveGroupIds: 移除可以操作此命名空间的用户组ID列表
        # @type RemoveGroupIds: Array
        # @param ServiceExportTo: 该命名空间下的服务对哪些命名空间可见
        # @type ServiceExportTo: Array
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: Boolean
        # @param Metadatas: 元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadatas: Array

        attr_accessor :Name, :Comment, :CreateTime, :ModifyTime, :TotalServiceCount, :TotalHealthInstanceCount, :TotalInstanceCount, :Id, :Editable, :UserIds, :GroupIds, :RemoveUserIds, :RemoveGroupIds, :ServiceExportTo, :SyncToGlobalRegistry, :Metadatas

        def initialize(name=nil, comment=nil, createtime=nil, modifytime=nil, totalservicecount=nil, totalhealthinstancecount=nil, totalinstancecount=nil, id=nil, editable=nil, userids=nil, groupids=nil, removeuserids=nil, removegroupids=nil, serviceexportto=nil, synctoglobalregistry=nil, metadatas=nil)
          @Name = name
          @Comment = comment
          @CreateTime = createtime
          @ModifyTime = modifytime
          @TotalServiceCount = totalservicecount
          @TotalHealthInstanceCount = totalhealthinstancecount
          @TotalInstanceCount = totalinstancecount
          @Id = id
          @Editable = editable
          @UserIds = userids
          @GroupIds = groupids
          @RemoveUserIds = removeuserids
          @RemoveGroupIds = removegroupids
          @ServiceExportTo = serviceexportto
          @SyncToGlobalRegistry = synctoglobalregistry
          @Metadatas = metadatas
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @TotalServiceCount = params['TotalServiceCount']
          @TotalHealthInstanceCount = params['TotalHealthInstanceCount']
          @TotalInstanceCount = params['TotalInstanceCount']
          @Id = params['Id']
          @Editable = params['Editable']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @RemoveUserIds = params['RemoveUserIds']
          @RemoveGroupIds = params['RemoveGroupIds']
          @ServiceExportTo = params['ServiceExportTo']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
        end
      end

      # 治理中心命名空间输入参数
      class GovernanceNamespaceInput < TencentCloud::Common::AbstractModel
        # @param Name: 命名空间名。
        # @type Name: String
        # @param Comment: 描述信息。
        # @type Comment: String
        # @param UserIds: 新增的可以操作此命名空间的用户ID列表
        # @type UserIds: Array
        # @param GroupIds: 新增的可以操作此命名空间的用户组ID列表
        # @type GroupIds: Array
        # @param RemoveUserIds: 移除可以操作此命名空间的用户ID列表
        # @type RemoveUserIds: Array
        # @param RemoveGroupIds: 移除可以操作此命名空间的用户组ID列表
        # @type RemoveGroupIds: Array
        # @param ServiceExportTo: 该命名空间下的服务对哪些命名空间下可见，
        # 1、为空或者不填写，表示仅当前命名空间可见
        # 2、列表内容仅一个元素，且为字符 *，表示所有命名空间可见（包括新增）
        # 3、列表内容为部份命名空间名称，则只对这些命名空间下可见
        # @type ServiceExportTo: Array
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: Boolean

        attr_accessor :Name, :Comment, :UserIds, :GroupIds, :RemoveUserIds, :RemoveGroupIds, :ServiceExportTo, :SyncToGlobalRegistry

        def initialize(name=nil, comment=nil, userids=nil, groupids=nil, removeuserids=nil, removegroupids=nil, serviceexportto=nil, synctoglobalregistry=nil)
          @Name = name
          @Comment = comment
          @UserIds = userids
          @GroupIds = groupids
          @RemoveUserIds = removeuserids
          @RemoveGroupIds = removegroupids
          @ServiceExportTo = serviceexportto
          @SyncToGlobalRegistry = synctoglobalregistry
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @RemoveUserIds = params['RemoveUserIds']
          @RemoveGroupIds = params['RemoveGroupIds']
          @ServiceExportTo = params['ServiceExportTo']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
        end
      end

      # 治理中心服务信息。
      class GovernanceService < TencentCloud::Common::AbstractModel
        # @param Name: 服务名称。
        # @type Name: String
        # @param Namespace: 命名空间名称。
        # @type Namespace: String
        # @param Metadatas: 元数据信息数组。
        # @type Metadatas: Array
        # @param Comment: 描述信息。
        # @type Comment: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ModifyTime: 修改时间。
        # @type ModifyTime: String
        # @param Department: 服务所属部门。
        # @type Department: String
        # @param Business: 服务所属业务。
        # @type Business: String
        # @param HealthyInstanceCount: 健康服务实例数
        # @type HealthyInstanceCount: Integer
        # @param TotalInstanceCount: 服务实例总数
        # @type TotalInstanceCount: Integer
        # @param Id: 服务ID
        # @type Id: String
        # @param Editable: 是否可以编辑
        # @type Editable: Boolean
        # @param UserIds: 可以编辑该资源的用户ID
        # @type UserIds: Array
        # @param GroupIds: 可以编辑该资源的用户组ID
        # @type GroupIds: Array
        # @param RemoveUserIds: 移除可以编辑该资源的用户ID
        # @type RemoveUserIds: Array
        # @param RemoveGroupIds: 移除可以编辑该资源的用户组ID
        # @type RemoveGroupIds: Array
        # @param ExportTo: 该服务对哪些命名空间可见
        # @type ExportTo: Array
        # @param Revision: 该服务信息摘要签名
        # @type Revision: String
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: Boolean

        attr_accessor :Name, :Namespace, :Metadatas, :Comment, :CreateTime, :ModifyTime, :Department, :Business, :HealthyInstanceCount, :TotalInstanceCount, :Id, :Editable, :UserIds, :GroupIds, :RemoveUserIds, :RemoveGroupIds, :ExportTo, :Revision, :SyncToGlobalRegistry

        def initialize(name=nil, namespace=nil, metadatas=nil, comment=nil, createtime=nil, modifytime=nil, department=nil, business=nil, healthyinstancecount=nil, totalinstancecount=nil, id=nil, editable=nil, userids=nil, groupids=nil, removeuserids=nil, removegroupids=nil, exportto=nil, revision=nil, synctoglobalregistry=nil)
          @Name = name
          @Namespace = namespace
          @Metadatas = metadatas
          @Comment = comment
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Department = department
          @Business = business
          @HealthyInstanceCount = healthyinstancecount
          @TotalInstanceCount = totalinstancecount
          @Id = id
          @Editable = editable
          @UserIds = userids
          @GroupIds = groupids
          @RemoveUserIds = removeuserids
          @RemoveGroupIds = removegroupids
          @ExportTo = exportto
          @Revision = revision
          @SyncToGlobalRegistry = synctoglobalregistry
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
          @Comment = params['Comment']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Department = params['Department']
          @Business = params['Business']
          @HealthyInstanceCount = params['HealthyInstanceCount']
          @TotalInstanceCount = params['TotalInstanceCount']
          @Id = params['Id']
          @Editable = params['Editable']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @RemoveUserIds = params['RemoveUserIds']
          @RemoveGroupIds = params['RemoveGroupIds']
          @ExportTo = params['ExportTo']
          @Revision = params['Revision']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
        end
      end

      # 服务契约定义
      class GovernanceServiceContract < TencentCloud::Common::AbstractModel
        # @param Name: 契约名称
        # @type Name: String
        # @param Namespace: 所属服务命名空间
        # @type Namespace: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param ID: 契约ID
        # @type ID: String
        # @param Service: 所属服务名称
        # @type Service: String
        # @param Version: 版本
        # @type Version: String
        # @param Revision: 信息摘要
        # @type Revision: String
        # @param Content: 额外内容描述
        # @type Content: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Interfaces: 契约接口列表
        # @type Interfaces: Array
        # @param Metadatas: 元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadatas: Array

        attr_accessor :Name, :Namespace, :Protocol, :ID, :Service, :Version, :Revision, :Content, :CreateTime, :ModifyTime, :Interfaces, :Metadatas

        def initialize(name=nil, namespace=nil, protocol=nil, id=nil, service=nil, version=nil, revision=nil, content=nil, createtime=nil, modifytime=nil, interfaces=nil, metadatas=nil)
          @Name = name
          @Namespace = namespace
          @Protocol = protocol
          @ID = id
          @Service = service
          @Version = version
          @Revision = revision
          @Content = content
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Interfaces = interfaces
          @Metadatas = metadatas
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Protocol = params['Protocol']
          @ID = params['ID']
          @Service = params['Service']
          @Version = params['Version']
          @Revision = params['Revision']
          @Content = params['Content']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          unless params['Interfaces'].nil?
            @Interfaces = []
            params['Interfaces'].each do |i|
              governanceinterfacedescription_tmp = GovernanceInterfaceDescription.new
              governanceinterfacedescription_tmp.deserialize(i)
              @Interfaces << governanceinterfacedescription_tmp
            end
          end
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
        end
      end

      # 服务契约版本信息
      class GovernanceServiceContractVersion < TencentCloud::Common::AbstractModel
        # @param Version: 契约版本
        # @type Version: String
        # @param Name: 契约名称
        # @type Name: String
        # @param Key: 唯一名称
        # @type Key: String

        attr_accessor :Version, :Name, :Key

        def initialize(version=nil, name=nil, key=nil)
          @Version = version
          @Name = name
          @Key = key
        end

        def deserialize(params)
          @Version = params['Version']
          @Name = params['Name']
          @Key = params['Key']
        end
      end

      # 治理中心服务入参
      class GovernanceServiceInput < TencentCloud::Common::AbstractModel
        # @param Name: 服务名。
        # @type Name: String
        # @param Namespace: 服务所属命名空间。
        # @type Namespace: String
        # @param Comment: 服务描述信息。
        # @type Comment: String
        # @param Metadatas: 服务元数据。
        # @type Metadatas: Array
        # @param Department: 服务所属部门。
        # @type Department: String
        # @param Business: 服务所属业务。
        # @type Business: String
        # @param UserIds: 被添加进来可以操作此命名空间的用户ID列表
        # @type UserIds: Array
        # @param GroupIds: 被添加进来可以操作此命名空间的用户组ID列表
        # @type GroupIds: Array
        # @param RemoveUserIds: 从操作此命名空间的用户组ID列表被移除的ID列表
        # @type RemoveUserIds: Array
        # @param RemoveGroupIds: 从可以操作此命名空间的用户组ID列表中被移除的ID列表
        # @type RemoveGroupIds: Array
        # @param ExportTo: 该服务对哪些命名空间可见
        # @type ExportTo: Array
        # @param SyncToGlobalRegistry: 是否开启同步到全局注册中心
        # @type SyncToGlobalRegistry: Boolean

        attr_accessor :Name, :Namespace, :Comment, :Metadatas, :Department, :Business, :UserIds, :GroupIds, :RemoveUserIds, :RemoveGroupIds, :ExportTo, :SyncToGlobalRegistry

        def initialize(name=nil, namespace=nil, comment=nil, metadatas=nil, department=nil, business=nil, userids=nil, groupids=nil, removeuserids=nil, removegroupids=nil, exportto=nil, synctoglobalregistry=nil)
          @Name = name
          @Namespace = namespace
          @Comment = comment
          @Metadatas = metadatas
          @Department = department
          @Business = business
          @UserIds = userids
          @GroupIds = groupids
          @RemoveUserIds = removeuserids
          @RemoveGroupIds = removegroupids
          @ExportTo = exportto
          @SyncToGlobalRegistry = synctoglobalregistry
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Comment = params['Comment']
          unless params['Metadatas'].nil?
            @Metadatas = []
            params['Metadatas'].each do |i|
              metadata_tmp = Metadata.new
              metadata_tmp.deserialize(i)
              @Metadatas << metadata_tmp
            end
          end
          @Department = params['Department']
          @Business = params['Business']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @RemoveUserIds = params['RemoveUserIds']
          @RemoveGroupIds = params['RemoveGroupIds']
          @ExportTo = params['ExportTo']
          @SyncToGlobalRegistry = params['SyncToGlobalRegistry']
        end
      end

      # 实例监听端口信息
      class InstancePort < TencentCloud::Common::AbstractModel
        # @param HttpPort: 监听的 http 端口范围。
        # @type HttpPort: String
        # @param HttpsPort: 监听的 https 端口范围。
        # @type HttpsPort: String
        # @param TcpPort: 监听的 tcp 端口范围。
        # @type TcpPort: String
        # @param UdpPort: 监听的 udp 端口范围。
        # @type UdpPort: String

        attr_accessor :HttpPort, :HttpsPort, :TcpPort, :UdpPort

        def initialize(httpport=nil, httpsport=nil, tcpport=nil, udpport=nil)
          @HttpPort = httpport
          @HttpsPort = httpsport
          @TcpPort = tcpport
          @UdpPort = udpport
        end

        def deserialize(params)
          @HttpPort = params['HttpPort']
          @HttpsPort = params['HttpsPort']
          @TcpPort = params['TcpPort']
          @UdpPort = params['UdpPort']
        end
      end

      # 引擎实例的标签信息
      class InstanceTagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
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

      # 公网负载均衡配置
      class InternetConfig < TencentCloud::Common::AbstractModel
        # @param InternetAddressVersion: 公网地址版本，可选："IPV4" | "IPV6" 。不填默认 IPV4 。
        # @type InternetAddressVersion: String
        # @param InternetPayMode: 公网付费类型，当前仅可选："BANDWIDTH"。不填默认为 "BANDWIDTH"
        # @type InternetPayMode: String
        # @param InternetMaxBandwidthOut: 公网带宽。
        # @type InternetMaxBandwidthOut: Integer
        # @param Description: 负载均衡描述
        # @type Description: String
        # @param SlaType: 负载均衡的规格类型，支持clb.c2.medium、clb.c3.small、clb.c3.medium、clb.c4.small、clb.c4.medium、clb.c4.large、clb.c4.xlarge，不传为共享型。
        # @type SlaType: String
        # @param MultiZoneFlag: 负载均衡是否多可用区
        # @type MultiZoneFlag: Boolean
        # @param MasterZoneId: 主可用区
        # @type MasterZoneId: String
        # @param SlaveZoneId: 备可用区
        # @type SlaveZoneId: String

        attr_accessor :InternetAddressVersion, :InternetPayMode, :InternetMaxBandwidthOut, :Description, :SlaType, :MultiZoneFlag, :MasterZoneId, :SlaveZoneId

        def initialize(internetaddressversion=nil, internetpaymode=nil, internetmaxbandwidthout=nil, description=nil, slatype=nil, multizoneflag=nil, masterzoneid=nil, slavezoneid=nil)
          @InternetAddressVersion = internetaddressversion
          @InternetPayMode = internetpaymode
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Description = description
          @SlaType = slatype
          @MultiZoneFlag = multizoneflag
          @MasterZoneId = masterzoneid
          @SlaveZoneId = slavezoneid
        end

        def deserialize(params)
          @InternetAddressVersion = params['InternetAddressVersion']
          @InternetPayMode = params['InternetPayMode']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @Description = params['Description']
          @SlaType = params['SlaType']
          @MultiZoneFlag = params['MultiZoneFlag']
          @MasterZoneId = params['MasterZoneId']
          @SlaveZoneId = params['SlaveZoneId']
        end
      end

      # 键值对
      class KVMapping < TencentCloud::Common::AbstractModel
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

      # 键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # Key/Value结构
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 条件的Key
        # @type Key: String
        # @param Value: 条件的Value
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

      # Kong网关主动健康检查配置
      class KongActiveHealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthyInterval: 主动健康检查健康探测间隔，单位：秒，0表示不开启
        # @type HealthyInterval: Integer
        # @param UnHealthyInterval: 主动健康检查异常探测间隔，单位：秒，0表示不开启
        # @type UnHealthyInterval: Integer
        # @param HttpPath: 在 GET HTTP 请求中使用的路径，以作为主动运行状况检查的探测器运行。默认： ”/”。
        # @type HttpPath: String
        # @param Timeout: GET HTTP 请求的超时时间，单位：秒。默认 60。
        # @type Timeout: Float

        attr_accessor :HealthyInterval, :UnHealthyInterval, :HttpPath, :Timeout

        def initialize(healthyinterval=nil, unhealthyinterval=nil, httppath=nil, timeout=nil)
          @HealthyInterval = healthyinterval
          @UnHealthyInterval = unhealthyinterval
          @HttpPath = httppath
          @Timeout = timeout
        end

        def deserialize(params)
          @HealthyInterval = params['HealthyInterval']
          @UnHealthyInterval = params['UnHealthyInterval']
          @HttpPath = params['HttpPath']
          @Timeout = params['Timeout']
        end
      end

      # 云原生网关证书
      class KongCertificate < TencentCloud::Common::AbstractModel
        # @param Cert: 无
        # @type Cert: :class:`Tencentcloud::Tse.v20201207.models.KongCertificatesPreview`

        attr_accessor :Cert

        def initialize(cert=nil)
          @Cert = cert
        end

        def deserialize(params)
          unless params['Cert'].nil?
            @Cert = KongCertificatesPreview.new
            @Cert.deserialize(params['Cert'])
          end
        end
      end

      # kong证书列表
      class KongCertificatesList < TencentCloud::Common::AbstractModel
        # @param Total: 证书列表总数
        # @type Total: Integer
        # @param CertificatesList: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatesList: Array
        # @param Pages: 证书列表总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer

        attr_accessor :Total, :CertificatesList, :Pages
        extend Gem::Deprecate
        deprecate :Pages, :none, 2025, 6
        deprecate :Pages=, :none, 2025, 6

        def initialize(total=nil, certificateslist=nil, pages=nil)
          @Total = total
          @CertificatesList = certificateslist
          @Pages = pages
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CertificatesList'].nil?
            @CertificatesList = []
            params['CertificatesList'].each do |i|
              kongcertificatespreview_tmp = KongCertificatesPreview.new
              kongcertificatespreview_tmp.deserialize(i)
              @CertificatesList << kongcertificatespreview_tmp
            end
          end
          @Pages = params['Pages']
        end
      end

      # 云原生网关证书预览信息
      class KongCertificatesPreview < TencentCloud::Common::AbstractModel
        # @param Name: 证书名称
        # @type Name: String
        # @param Id: Id
        # @type Id: String
        # @param BindDomains: 绑定的域名
        # @type BindDomains: Array
        # @param Status: 证书状态：expired(已过期)
        #                    active(生效中)
        # @type Status: String
        # @param Crt: 证书pem格式
        # @type Crt: String
        # @param Key: 证书私钥
        # @type Key: String
        # @param ExpireTime: 证书过期时间
        # @type ExpireTime: String
        # @param CreateTime: 证书上传时间
        # @type CreateTime: String
        # @param IssueTime: 证书签发时间
        # @type IssueTime: String
        # @param CertSource: 证书来源：native(kong自定义证书)
        #                     ssl(ssl平台证书)
        # @type CertSource: String
        # @param CertId: ssl平台证书Id
        # @type CertId: String

        attr_accessor :Name, :Id, :BindDomains, :Status, :Crt, :Key, :ExpireTime, :CreateTime, :IssueTime, :CertSource, :CertId

        def initialize(name=nil, id=nil, binddomains=nil, status=nil, crt=nil, key=nil, expiretime=nil, createtime=nil, issuetime=nil, certsource=nil, certid=nil)
          @Name = name
          @Id = id
          @BindDomains = binddomains
          @Status = status
          @Crt = crt
          @Key = key
          @ExpireTime = expiretime
          @CreateTime = createtime
          @IssueTime = issuetime
          @CertSource = certsource
          @CertId = certid
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @BindDomains = params['BindDomains']
          @Status = params['Status']
          @Crt = params['Crt']
          @Key = params['Key']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @IssueTime = params['IssueTime']
          @CertSource = params['CertSource']
          @CertId = params['CertId']
        end
      end

      # Kong网关被动健康检查配置
      class KongPassiveHealthCheck < TencentCloud::Common::AbstractModel
        # @param Type: 后端target协议类型，被动健康检查支持http和tcp，主动健康检查支持http
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 云原生网关路由信息
      class KongRoutePreview < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # @type ID: String
        # @param Name: 服务名字
        # @type Name: String
        # @param Methods: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Methods: Array
        # @param Paths: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paths: Array
        # @param Hosts: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hosts: Array
        # @param Protocols: 无
        # @type Protocols: Array
        # @param PreserveHost: 无
        # @type PreserveHost: Boolean
        # @param HttpsRedirectStatusCode: 无
        # @type HttpsRedirectStatusCode: Integer
        # @param StripPath: 无
        # @type StripPath: Boolean
        # @param CreatedTime: 无
        # @type CreatedTime: String
        # @param ForceHttps: 是否开启了强制HTTPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceHttps: Boolean
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param ServiceID: 服务ID
        # @type ServiceID: String
        # @param DestinationPorts: 目的端口
        # @type DestinationPorts: Array
        # @param Headers: 路由的Headers
        # @type Headers: Array
        # @param RequestBuffering: 是否缓存请求body，默认true
        # @type RequestBuffering: Boolean
        # @param ResponseBuffering: 是否缓存响应body，默认true
        # @type ResponseBuffering: Boolean
        # @param RegexPriority: 正则优先级
        # @type RegexPriority: Integer

        attr_accessor :ID, :Name, :Methods, :Paths, :Hosts, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :CreatedTime, :ForceHttps, :ServiceName, :ServiceID, :DestinationPorts, :Headers, :RequestBuffering, :ResponseBuffering, :RegexPriority
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2025, 6
        deprecate :ForceHttps=, :none, 2025, 6

        def initialize(id=nil, name=nil, methods=nil, paths=nil, hosts=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, createdtime=nil, forcehttps=nil, servicename=nil, serviceid=nil, destinationports=nil, headers=nil, requestbuffering=nil, responsebuffering=nil, regexpriority=nil)
          @ID = id
          @Name = name
          @Methods = methods
          @Paths = paths
          @Hosts = hosts
          @Protocols = protocols
          @PreserveHost = preservehost
          @HttpsRedirectStatusCode = httpsredirectstatuscode
          @StripPath = strippath
          @CreatedTime = createdtime
          @ForceHttps = forcehttps
          @ServiceName = servicename
          @ServiceID = serviceid
          @DestinationPorts = destinationports
          @Headers = headers
          @RequestBuffering = requestbuffering
          @ResponseBuffering = responsebuffering
          @RegexPriority = regexpriority
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Methods = params['Methods']
          @Paths = params['Paths']
          @Hosts = params['Hosts']
          @Protocols = params['Protocols']
          @PreserveHost = params['PreserveHost']
          @HttpsRedirectStatusCode = params['HttpsRedirectStatusCode']
          @StripPath = params['StripPath']
          @CreatedTime = params['CreatedTime']
          @ForceHttps = params['ForceHttps']
          @ServiceName = params['ServiceName']
          @ServiceID = params['ServiceID']
          @DestinationPorts = params['DestinationPorts']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              kvmapping_tmp = KVMapping.new
              kvmapping_tmp.deserialize(i)
              @Headers << kvmapping_tmp
            end
          end
          @RequestBuffering = params['RequestBuffering']
          @ResponseBuffering = params['ResponseBuffering']
          @RegexPriority = params['RegexPriority']
        end
      end

      # 云原生网关服务详细信息
      class KongServiceDetail < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # @type ID: String
        # @param Name: 服务名字
        # @type Name: String
        # @param Protocol: 后端协议
        # @type Protocol: String
        # @param Path: 后端路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Timeout: 后端延时，单位ms
        # @type Timeout: Integer
        # @param Retries: 重试次数
        # @type Retries: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param UpstreamInfo: 后端配置
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param UpstreamType: 后端类型
        # @type UpstreamType: String
        # @param Editable: 是否可编辑
        # @type Editable: Boolean
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String

        attr_accessor :ID, :Name, :Protocol, :Path, :Timeout, :Retries, :Tags, :UpstreamInfo, :UpstreamType, :Editable, :CreatedTime

        def initialize(id=nil, name=nil, protocol=nil, path=nil, timeout=nil, retries=nil, tags=nil, upstreaminfo=nil, upstreamtype=nil, editable=nil, createdtime=nil)
          @ID = id
          @Name = name
          @Protocol = protocol
          @Path = path
          @Timeout = timeout
          @Retries = retries
          @Tags = tags
          @UpstreamInfo = upstreaminfo
          @UpstreamType = upstreamtype
          @Editable = editable
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Path = params['Path']
          @Timeout = params['Timeout']
          @Retries = params['Retries']
          @Tags = params['Tags']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          @UpstreamType = params['UpstreamType']
          @Editable = params['Editable']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 云原生网关服务预览信息
      class KongServicePreview < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # @type ID: String
        # @param Name: 服务名字
        # @type Name: String
        # @param Tags: 标签
        # @type Tags: Array
        # @param UpstreamInfo: 后端配置
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param UpstreamType: 后端类型
        # @type UpstreamType: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Editable: 是否可编辑
        # @type Editable: Boolean
        # @param Path: 请求路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String

        attr_accessor :ID, :Name, :Tags, :UpstreamInfo, :UpstreamType, :CreatedTime, :Editable, :Path

        def initialize(id=nil, name=nil, tags=nil, upstreaminfo=nil, upstreamtype=nil, createdtime=nil, editable=nil, path=nil)
          @ID = id
          @Name = name
          @Tags = tags
          @UpstreamInfo = upstreaminfo
          @UpstreamType = upstreamtype
          @CreatedTime = createdtime
          @Editable = editable
          @Path = path
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Tags = params['Tags']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          @UpstreamType = params['UpstreamType']
          @CreatedTime = params['CreatedTime']
          @Editable = params['Editable']
          @Path = params['Path']
        end
      end

      # kong服务路由列表
      class KongServiceRouteList < TencentCloud::Common::AbstractModel
        # @param RouteList: 无
        # @type RouteList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer

        attr_accessor :RouteList, :TotalCount

        def initialize(routelist=nil, totalcount=nil)
          @RouteList = routelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['RouteList'].nil?
            @RouteList = []
            params['RouteList'].each do |i|
              kongroutepreview_tmp = KongRoutePreview.new
              kongroutepreview_tmp.deserialize(i)
              @RouteList << kongroutepreview_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # kong实例的服务列表
      class KongServices < TencentCloud::Common::AbstractModel
        # @param ServiceList: kong实例的服务列表
        # @type ServiceList: Array
        # @param TotalCount: 列表总数
        # @type TotalCount: Integer

        attr_accessor :ServiceList, :TotalCount

        def initialize(servicelist=nil, totalcount=nil)
          @ServiceList = servicelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['ServiceList'].nil?
            @ServiceList = []
            params['ServiceList'].each do |i|
              kongservicepreview_tmp = KongServicePreview.new
              kongservicepreview_tmp.deserialize(i)
              @ServiceList << kongservicepreview_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # Kong Upstream中的Target
      class KongTarget < TencentCloud::Common::AbstractModel
        # @param Host: Host
        # @type Host: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Weight: 权重
        # @type Weight: Integer
        # @param Health: 健康状态
        # @type Health: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Source: Target的来源
        # @type Source: String
        # @param CvmInstanceId: CVM实例ID
        # @type CvmInstanceId: String
        # @param CvmInstanceName: CVM实例名称
        # @type CvmInstanceName: String
        # @param Tags: target标签
        # @type Tags: Array

        attr_accessor :Host, :Port, :Weight, :Health, :CreatedTime, :Source, :CvmInstanceId, :CvmInstanceName, :Tags

        def initialize(host=nil, port=nil, weight=nil, health=nil, createdtime=nil, source=nil, cvminstanceid=nil, cvminstancename=nil, tags=nil)
          @Host = host
          @Port = port
          @Weight = weight
          @Health = health
          @CreatedTime = createdtime
          @Source = source
          @CvmInstanceId = cvminstanceid
          @CvmInstanceName = cvminstancename
          @Tags = tags
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @Weight = params['Weight']
          @Health = params['Health']
          @CreatedTime = params['CreatedTime']
          @Source = params['Source']
          @CvmInstanceId = params['CvmInstanceId']
          @CvmInstanceName = params['CvmInstanceName']
          @Tags = params['Tags']
        end
      end

      # 服务的后端配置
      class KongUpstreamInfo < TencentCloud::Common::AbstractModel
        # @param Host: IP或域名
        # @type Host: String
        # @param Port: 端口
        # @type Port: Integer
        # @param SourceID: 服务来源ID
        # @type SourceID: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param ServiceName: 服务（注册中心或Kubernetes中的服务）名字
        # @type ServiceName: String
        # @param Targets: 服务后端类型是IPList时提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param SourceType: 服务来源类型
        # @type SourceType: String
        # @param ScfType: SCF函数类型
        # @type ScfType: String
        # @param ScfNamespace: SCF函数命名空间
        # @type ScfNamespace: String
        # @param ScfLambdaName: SCF函数名
        # @type ScfLambdaName: String
        # @param ScfLambdaQualifier: SCF函数版本
        # @type ScfLambdaQualifier: String
        # @param SlowStart: 冷启动时间，单位秒
        # @type SlowStart: Integer
        # @param Algorithm: 负载均衡算法，默认为 round-robin，还支持 least-connections，consisten_hashing
        # @type Algorithm: String
        # @param AutoScalingGroupID: CVM弹性伸缩组ID
        # @type AutoScalingGroupID: String
        # @param AutoScalingCvmPort: CVM弹性伸缩组端口
        # @type AutoScalingCvmPort: Integer
        # @param AutoScalingTatCmdStatus: CVM弹性伸缩组使用的CVM TAT命令状态
        # @type AutoScalingTatCmdStatus: String
        # @param AutoScalingHookStatus: CVM弹性伸缩组生命周期挂钩状态
        # @type AutoScalingHookStatus: String
        # @param SourceName: 服务来源的名字
        # @type SourceName: String
        # @param RealSourceType: 精确的服务来源类型，新建服务来源时候传入的类型
        # @type RealSourceType: String
        # @param HealthStatus: upstream健康状态HEALTHY（健康）, UNHEALTHY（异常）, HEALTHCHECKS_OFF（未开启）和NONE（不支持健康检查）
        # @type HealthStatus: String
        # @param ScfCamAuthEnable: 云函数是否开启CAM鉴权，不填时默认为开启(true)
        # @type ScfCamAuthEnable: Boolean
        # @param ScfIsBase64Encoded: 云函数是否开启Base64编码，默认为false
        # @type ScfIsBase64Encoded: Boolean
        # @param ScfIsIntegratedResponse: 云函数是否开启响应集成，默认为false
        # @type ScfIsIntegratedResponse: Boolean

        attr_accessor :Host, :Port, :SourceID, :Namespace, :ServiceName, :Targets, :SourceType, :ScfType, :ScfNamespace, :ScfLambdaName, :ScfLambdaQualifier, :SlowStart, :Algorithm, :AutoScalingGroupID, :AutoScalingCvmPort, :AutoScalingTatCmdStatus, :AutoScalingHookStatus, :SourceName, :RealSourceType, :HealthStatus, :ScfCamAuthEnable, :ScfIsBase64Encoded, :ScfIsIntegratedResponse

        def initialize(host=nil, port=nil, sourceid=nil, namespace=nil, servicename=nil, targets=nil, sourcetype=nil, scftype=nil, scfnamespace=nil, scflambdaname=nil, scflambdaqualifier=nil, slowstart=nil, algorithm=nil, autoscalinggroupid=nil, autoscalingcvmport=nil, autoscalingtatcmdstatus=nil, autoscalinghookstatus=nil, sourcename=nil, realsourcetype=nil, healthstatus=nil, scfcamauthenable=nil, scfisbase64encoded=nil, scfisintegratedresponse=nil)
          @Host = host
          @Port = port
          @SourceID = sourceid
          @Namespace = namespace
          @ServiceName = servicename
          @Targets = targets
          @SourceType = sourcetype
          @ScfType = scftype
          @ScfNamespace = scfnamespace
          @ScfLambdaName = scflambdaname
          @ScfLambdaQualifier = scflambdaqualifier
          @SlowStart = slowstart
          @Algorithm = algorithm
          @AutoScalingGroupID = autoscalinggroupid
          @AutoScalingCvmPort = autoscalingcvmport
          @AutoScalingTatCmdStatus = autoscalingtatcmdstatus
          @AutoScalingHookStatus = autoscalinghookstatus
          @SourceName = sourcename
          @RealSourceType = realsourcetype
          @HealthStatus = healthstatus
          @ScfCamAuthEnable = scfcamauthenable
          @ScfIsBase64Encoded = scfisbase64encoded
          @ScfIsIntegratedResponse = scfisintegratedresponse
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @SourceID = params['SourceID']
          @Namespace = params['Namespace']
          @ServiceName = params['ServiceName']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              kongtarget_tmp = KongTarget.new
              kongtarget_tmp.deserialize(i)
              @Targets << kongtarget_tmp
            end
          end
          @SourceType = params['SourceType']
          @ScfType = params['ScfType']
          @ScfNamespace = params['ScfNamespace']
          @ScfLambdaName = params['ScfLambdaName']
          @ScfLambdaQualifier = params['ScfLambdaQualifier']
          @SlowStart = params['SlowStart']
          @Algorithm = params['Algorithm']
          @AutoScalingGroupID = params['AutoScalingGroupID']
          @AutoScalingCvmPort = params['AutoScalingCvmPort']
          @AutoScalingTatCmdStatus = params['AutoScalingTatCmdStatus']
          @AutoScalingHookStatus = params['AutoScalingHookStatus']
          @SourceName = params['SourceName']
          @RealSourceType = params['RealSourceType']
          @HealthStatus = params['HealthStatus']
          @ScfCamAuthEnable = params['ScfCamAuthEnable']
          @ScfIsBase64Encoded = params['ScfIsBase64Encoded']
          @ScfIsIntegratedResponse = params['ScfIsIntegratedResponse']
        end
      end

      # kong后端upstream列表
      class KongUpstreamList < TencentCloud::Common::AbstractModel
        # @param UpstreamList: 无
        # @type UpstreamList: Array

        attr_accessor :UpstreamList

        def initialize(upstreamlist=nil)
          @UpstreamList = upstreamlist
        end

        def deserialize(params)
          unless params['UpstreamList'].nil?
            @UpstreamList = []
            params['UpstreamList'].each do |i|
              kongupstreampreview_tmp = KongUpstreamPreview.new
              kongupstreampreview_tmp.deserialize(i)
              @UpstreamList << kongupstreampreview_tmp
            end
          end
        end
      end

      # 云原生网关Upstream信息
      class KongUpstreamPreview < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # @type ID: String
        # @param Name: 服务名字
        # @type Name: String
        # @param Target: 后端配置
        # @type Target: Array

        attr_accessor :ID, :Name, :Target

        def initialize(id=nil, name=nil, target=nil)
          @ID = id
          @Name = name
          @Target = target
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          unless params['Target'].nil?
            @Target = []
            params['Target'].each do |i|
              kongtarget_tmp = KongTarget.new
              kongtarget_tmp.deserialize(i)
              @Target << kongtarget_tmp
            end
          end
        end
      end

      # 参数限流的规则
      class LimitRule < TencentCloud::Common::AbstractModel
        # @param Filters: 请求匹配条件
        # @type Filters: Array
        # @param LimitBy: 参数限流依据组合
        # @type LimitBy: Array
        # @param QpsThresholds: 限流阈值
        # @type QpsThresholds: Array
        # @param AccurateQpsThresholds: 精确限流阈值
        # @type AccurateQpsThresholds: Array

        attr_accessor :Filters, :LimitBy, :QpsThresholds, :AccurateQpsThresholds

        def initialize(filters=nil, limitby=nil, qpsthresholds=nil, accurateqpsthresholds=nil)
          @Filters = filters
          @LimitBy = limitby
          @QpsThresholds = qpsthresholds
          @AccurateQpsThresholds = accurateqpsthresholds
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              rulefilter_tmp = RuleFilter.new
              rulefilter_tmp.deserialize(i)
              @Filters << rulefilter_tmp
            end
          end
          unless params['LimitBy'].nil?
            @LimitBy = []
            params['LimitBy'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @LimitBy << keyvalue_tmp
            end
          end
          unless params['QpsThresholds'].nil?
            @QpsThresholds = []
            params['QpsThresholds'].each do |i|
              qpsthreshold_tmp = QpsThreshold.new
              qpsthreshold_tmp.deserialize(i)
              @QpsThresholds << qpsthreshold_tmp
            end
          end
          unless params['AccurateQpsThresholds'].nil?
            @AccurateQpsThresholds = []
            params['AccurateQpsThresholds'].each do |i|
              accurateqpsthreshold_tmp = AccurateQpsThreshold.new
              accurateqpsthreshold_tmp.deserialize(i)
              @AccurateQpsThresholds << accurateqpsthreshold_tmp
            end
          end
        end
      end

      # 获取云原生API网关实例列表响应结果。
      class ListCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数。
        # @type TotalCount: Integer
        # @param GatewayList: 云原生API网关实例列表。
        # @type GatewayList: Array

        attr_accessor :TotalCount, :GatewayList

        def initialize(totalcount=nil, gatewaylist=nil)
          @TotalCount = totalcount
          @GatewayList = gatewaylist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GatewayList'].nil?
            @GatewayList = []
            params['GatewayList'].each do |i|
              describecloudnativeapigatewayresult_tmp = DescribeCloudNativeAPIGatewayResult.new
              describecloudnativeapigatewayresult_tmp.deserialize(i)
              @GatewayList << describecloudnativeapigatewayresult_tmp
            end
          end
        end
      end

      # 获取云原生API网关实例策略绑定网关分组列表响应结果。
      class ListCloudNativeAPIGatewayStrategyBindingGroupInfoResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param GroupInfos: 云原生API网关实例策略绑定网关分组列表
        # @type GroupInfos: Array

        attr_accessor :TotalCount, :GroupInfos

        def initialize(totalcount=nil, groupinfos=nil)
          @TotalCount = totalcount
          @GroupInfos = groupinfos
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GroupInfos'].nil?
            @GroupInfos = []
            params['GroupInfos'].each do |i|
              cloudnativeapigatewaystrategybindinggroupinfo_tmp = CloudNativeAPIGatewayStrategyBindingGroupInfo.new
              cloudnativeapigatewaystrategybindinggroupinfo_tmp.deserialize(i)
              @GroupInfos << cloudnativeapigatewaystrategybindinggroupinfo_tmp
            end
          end
        end
      end

      # 获取云原生API网关实例策略响应结果。
      class ListCloudNativeAPIGatewayStrategyResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数。
        # @type TotalCount: Integer
        # @param StrategyList: 云原生API网关实例策略列表。
        # @type StrategyList: Array

        attr_accessor :TotalCount, :StrategyList

        def initialize(totalcount=nil, strategylist=nil)
          @TotalCount = totalcount
          @StrategyList = strategylist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StrategyList'].nil?
            @StrategyList = []
            params['StrategyList'].each do |i|
              cloudnativeapigatewaystrategy_tmp = CloudNativeAPIGatewayStrategy.new
              cloudnativeapigatewaystrategy_tmp.deserialize(i)
              @StrategyList << cloudnativeapigatewaystrategy_tmp
            end
          end
        end
      end

      # 列表过滤条件，模糊匹配
      class ListFilter < TencentCloud::Common::AbstractModel
        # @param Key: 过滤字段
        # @type Key: String
        # @param Value: 过滤值
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

      # 新增Location字段，展示zone/region/campus
      class Location < TencentCloud::Common::AbstractModel
        # @param Region: 大区
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Campus: 机房
        # @type Campus: String

        attr_accessor :Region, :Zone, :Campus

        def initialize(region=nil, zone=nil, campus=nil)
          @Region = region
          @Zone = zone
          @Campus = campus
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          @Campus = params['Campus']
        end
      end

      # 元数据信息
      class Metadata < TencentCloud::Common::AbstractModel
        # @param Key: 元数据键名。
        # @type Key: String
        # @param Value: 元数据键值。不填则默认为空字符串。
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

      # ModifyAutoScalerResourceStrategy请求参数结构体
      class ModifyAutoScalerResourceStrategyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param Description: 策略描述
        # @type Description: String
        # @param Config: 指标伸缩配置
        # @type Config: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyAutoScalerConfig`
        # @param CronScalerConfig: 定时伸缩配置
        # @type CronScalerConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`
        # @param MaxReplicas: 最大节点数
        # @type MaxReplicas: Integer
        # @param CronConfig: 指标伸缩配置
        # @type CronConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`

        attr_accessor :GatewayId, :StrategyId, :StrategyName, :Description, :Config, :CronScalerConfig, :MaxReplicas, :CronConfig
        extend Gem::Deprecate
        deprecate :CronScalerConfig, :none, 2025, 6
        deprecate :CronScalerConfig=, :none, 2025, 6
        deprecate :MaxReplicas, :none, 2025, 6
        deprecate :MaxReplicas=, :none, 2025, 6

        def initialize(gatewayid=nil, strategyid=nil, strategyname=nil, description=nil, config=nil, cronscalerconfig=nil, maxreplicas=nil, cronconfig=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
          @StrategyName = strategyname
          @Description = description
          @Config = config
          @CronScalerConfig = cronscalerconfig
          @MaxReplicas = maxreplicas
          @CronConfig = cronconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @Description = params['Description']
          unless params['Config'].nil?
            @Config = CloudNativeAPIGatewayStrategyAutoScalerConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['CronScalerConfig'].nil?
            @CronScalerConfig = CloudNativeAPIGatewayStrategyCronScalerConfig.new
            @CronScalerConfig.deserialize(params['CronScalerConfig'])
          end
          @MaxReplicas = params['MaxReplicas']
          unless params['CronConfig'].nil?
            @CronConfig = CloudNativeAPIGatewayStrategyCronScalerConfig.new
            @CronConfig.deserialize(params['CronConfig'])
          end
        end
      end

      # ModifyAutoScalerResourceStrategy返回参数结构体
      class ModifyAutoScalerResourceStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCloudNativeAPIGatewayCanaryRule请求参数结构体
      class ModifyCloudNativeAPIGatewayCanaryRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param Priority: 优先级，同一个服务的灰度规则优先级是唯一的
        # @type Priority: Integer
        # @param CanaryRule: 灰度规则配置
        # @type CanaryRule: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayCanaryRule`
        # @param CanaryRuleList: 灰度规则配置列表，如果配置了此参数，将以此参数为准，忽略Priority和CanaryRule参数
        # @type CanaryRuleList: Array

        attr_accessor :GatewayId, :ServiceId, :Priority, :CanaryRule, :CanaryRuleList

        def initialize(gatewayid=nil, serviceid=nil, priority=nil, canaryrule=nil, canaryrulelist=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @Priority = priority
          @CanaryRule = canaryrule
          @CanaryRuleList = canaryrulelist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @Priority = params['Priority']
          unless params['CanaryRule'].nil?
            @CanaryRule = CloudNativeAPIGatewayCanaryRule.new
            @CanaryRule.deserialize(params['CanaryRule'])
          end
          unless params['CanaryRuleList'].nil?
            @CanaryRuleList = []
            params['CanaryRuleList'].each do |i|
              canarypriorityrule_tmp = CanaryPriorityRule.new
              canarypriorityrule_tmp.deserialize(i)
              @CanaryRuleList << canarypriorityrule_tmp
            end
          end
        end
      end

      # ModifyCloudNativeAPIGatewayCanaryRule返回参数结构体
      class ModifyCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayCertificate请求参数结构体
      class ModifyCloudNativeAPIGatewayCertificateRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 证书id
        # @type Id: String
        # @param Name: 证书名称，即将废弃
        # @type Name: String
        # @param Key: 证书私钥，CertSource为native时必填。
        # @type Key: String
        # @param Crt: 证书pem格式，CertSource为native时必填。
        # @type Crt: String
        # @param BindDomains: 绑定的域名，即将废弃
        # @type BindDomains: Array
        # @param CertId: ssl平台证书 Id，CertSource为ssl时必填。
        # @type CertId: String
        # @param CertSource: 证书来源
        # - ssl (ssl平台证书)，默认值
        # - native (kong自定义证书)
        # @type CertSource: String

        attr_accessor :GatewayId, :Id, :Name, :Key, :Crt, :BindDomains, :CertId, :CertSource
        extend Gem::Deprecate
        deprecate :Name, :none, 2025, 6
        deprecate :Name=, :none, 2025, 6
        deprecate :BindDomains, :none, 2025, 6
        deprecate :BindDomains=, :none, 2025, 6

        def initialize(gatewayid=nil, id=nil, name=nil, key=nil, crt=nil, binddomains=nil, certid=nil, certsource=nil)
          @GatewayId = gatewayid
          @Id = id
          @Name = name
          @Key = key
          @Crt = crt
          @BindDomains = binddomains
          @CertId = certid
          @CertSource = certsource
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
          @Name = params['Name']
          @Key = params['Key']
          @Crt = params['Crt']
          @BindDomains = params['BindDomains']
          @CertId = params['CertId']
          @CertSource = params['CertSource']
        end
      end

      # ModifyCloudNativeAPIGatewayCertificate返回参数结构体
      class ModifyCloudNativeAPIGatewayCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGateway请求参数结构体
      class ModifyCloudNativeAPIGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param Name: 云原生API网关名字, 最多支持60个字符。
        # @type Name: String
        # @param Description: 云原生API网关描述信息, 最多支持120个字符。
        # @type Description: String
        # @param EnableCls: 是否开启 CLS 日志。暂时取值只能是 true，即只能从关闭状态变成开启状态。
        # @type EnableCls: Boolean
        # @param InternetPayMode: 公网计费模式。可选取值 BANDWIDTH | TRAFFIC ，表示按带宽和按流量计费。
        # @type InternetPayMode: String
        # @param DeleteProtect: 是否开启实例删除保护,默认false
        # @type DeleteProtect: Boolean

        attr_accessor :GatewayId, :Name, :Description, :EnableCls, :InternetPayMode, :DeleteProtect

        def initialize(gatewayid=nil, name=nil, description=nil, enablecls=nil, internetpaymode=nil, deleteprotect=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
          @EnableCls = enablecls
          @InternetPayMode = internetpaymode
          @DeleteProtect = deleteprotect
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
          @EnableCls = params['EnableCls']
          @InternetPayMode = params['InternetPayMode']
          @DeleteProtect = params['DeleteProtect']
        end
      end

      # ModifyCloudNativeAPIGateway返回参数结构体
      class ModifyCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayRouteRateLimit请求参数结构体
      class ModifyCloudNativeAPIGatewayRouteRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 路由id，或路由名称。
        # 不支持“未命名”
        # @type Id: String
        # @param LimitDetail: 限流配置
        # @type LimitDetail: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`

        attr_accessor :GatewayId, :Id, :LimitDetail

        def initialize(gatewayid=nil, id=nil, limitdetail=nil)
          @GatewayId = gatewayid
          @Id = id
          @LimitDetail = limitdetail
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
          unless params['LimitDetail'].nil?
            @LimitDetail = CloudNativeAPIGatewayRateLimitDetail.new
            @LimitDetail.deserialize(params['LimitDetail'])
          end
        end
      end

      # ModifyCloudNativeAPIGatewayRouteRateLimit返回参数结构体
      class ModifyCloudNativeAPIGatewayRouteRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayRoute请求参数结构体
      class ModifyCloudNativeAPIGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param ServiceID: 所属服务的ID
        # @type ServiceID: String
        # @param RouteID: 路由的ID，实例级别唯一
        # @type RouteID: String
        # @param RouteName: 路由的名字，实例级别唯一，可以不提供
        # @type RouteName: String
        # @param Methods: 路由的方法，其中方法可选值：
        # - GET
        # - POST
        # - DELETE
        # - PUT
        # - OPTIONS
        # - PATCH
        # - HEAD
        # - ANY
        # - TRACE
        # - COPY
        # - MOVE
        # - PROPFIND
        # - PROPPATCH
        # - MKCOL
        # - LOCK
        # - UNLOCK
        # @type Methods: Array
        # @param Hosts: 路由的域名
        # @type Hosts: Array
        # @param Paths: 路由的路径
        # @type Paths: Array
        # @param Protocols: 路由的协议，可选
        # - https
        # - http
        # @type Protocols: Array
        # @param PreserveHost: 转发到后端时是否保留Host
        # @type PreserveHost: Boolean
        # @param HttpsRedirectStatusCode: https重定向状态码
        # @type HttpsRedirectStatusCode: Integer
        # @param StripPath: 转发到后端时是否StripPath
        # @type StripPath: Boolean
        # @param ForceHttps: 是否开启强制HTTPS
        # @type ForceHttps: Boolean
        # @param DestinationPorts: 四层匹配的目的端口
        # @type DestinationPorts: Array
        # @param Headers: 路由的Headers
        # @type Headers: Array
        # @param RequestBuffering: 是否缓存请求body，默认true
        # @type RequestBuffering: Boolean
        # @param ResponseBuffering: 是否缓存响应body，默认true
        # @type ResponseBuffering: Boolean
        # @param RegexPriority: 增加优先级
        # @type RegexPriority: Integer

        attr_accessor :GatewayId, :ServiceID, :RouteID, :RouteName, :Methods, :Hosts, :Paths, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :ForceHttps, :DestinationPorts, :Headers, :RequestBuffering, :ResponseBuffering, :RegexPriority
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2025, 6
        deprecate :ForceHttps=, :none, 2025, 6

        def initialize(gatewayid=nil, serviceid=nil, routeid=nil, routename=nil, methods=nil, hosts=nil, paths=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, forcehttps=nil, destinationports=nil, headers=nil, requestbuffering=nil, responsebuffering=nil, regexpriority=nil)
          @GatewayId = gatewayid
          @ServiceID = serviceid
          @RouteID = routeid
          @RouteName = routename
          @Methods = methods
          @Hosts = hosts
          @Paths = paths
          @Protocols = protocols
          @PreserveHost = preservehost
          @HttpsRedirectStatusCode = httpsredirectstatuscode
          @StripPath = strippath
          @ForceHttps = forcehttps
          @DestinationPorts = destinationports
          @Headers = headers
          @RequestBuffering = requestbuffering
          @ResponseBuffering = responsebuffering
          @RegexPriority = regexpriority
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceID = params['ServiceID']
          @RouteID = params['RouteID']
          @RouteName = params['RouteName']
          @Methods = params['Methods']
          @Hosts = params['Hosts']
          @Paths = params['Paths']
          @Protocols = params['Protocols']
          @PreserveHost = params['PreserveHost']
          @HttpsRedirectStatusCode = params['HttpsRedirectStatusCode']
          @StripPath = params['StripPath']
          @ForceHttps = params['ForceHttps']
          @DestinationPorts = params['DestinationPorts']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              kvmapping_tmp = KVMapping.new
              kvmapping_tmp.deserialize(i)
              @Headers << kvmapping_tmp
            end
          end
          @RequestBuffering = params['RequestBuffering']
          @ResponseBuffering = params['ResponseBuffering']
          @RegexPriority = params['RegexPriority']
        end
      end

      # ModifyCloudNativeAPIGatewayRoute返回参数结构体
      class ModifyCloudNativeAPIGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayServiceRateLimit请求参数结构体
      class ModifyCloudNativeAPIGatewayServiceRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名称，或服务ID
        # @type Name: String
        # @param LimitDetail: 限流配置
        # @type LimitDetail: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayRateLimitDetail`

        attr_accessor :GatewayId, :Name, :LimitDetail

        def initialize(gatewayid=nil, name=nil, limitdetail=nil)
          @GatewayId = gatewayid
          @Name = name
          @LimitDetail = limitdetail
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          unless params['LimitDetail'].nil?
            @LimitDetail = CloudNativeAPIGatewayRateLimitDetail.new
            @LimitDetail.deserialize(params['LimitDetail'])
          end
        end
      end

      # ModifyCloudNativeAPIGatewayServiceRateLimit返回参数结构体
      class ModifyCloudNativeAPIGatewayServiceRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayService请求参数结构体
      class ModifyCloudNativeAPIGatewayServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 服务名称
        # @type Name: String
        # @param Protocol: 请求协议：
        # - https
        # - http
        # - tcp
        # - udp
        # @type Protocol: String
        # @param Timeout: 超时时间，单位ms
        # @type Timeout: Integer
        # @param Retries: 重试次数
        # @type Retries: Integer
        # @param UpstreamType: 服务类型:
        # - Kubernetes
        # - Registry
        # - IPList
        # - HostIP
        # - Scf
        # @type UpstreamType: String
        # @param UpstreamInfo: 服务配置
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param ID: 服务ID
        # @type ID: String
        # @param Path: 请求路径
        # @type Path: String

        attr_accessor :GatewayId, :Name, :Protocol, :Timeout, :Retries, :UpstreamType, :UpstreamInfo, :ID, :Path

        def initialize(gatewayid=nil, name=nil, protocol=nil, timeout=nil, retries=nil, upstreamtype=nil, upstreaminfo=nil, id=nil, path=nil)
          @GatewayId = gatewayid
          @Name = name
          @Protocol = protocol
          @Timeout = timeout
          @Retries = retries
          @UpstreamType = upstreamtype
          @UpstreamInfo = upstreaminfo
          @ID = id
          @Path = path
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Timeout = params['Timeout']
          @Retries = params['Retries']
          @UpstreamType = params['UpstreamType']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          @ID = params['ID']
          @Path = params['Path']
        end
      end

      # ModifyCloudNativeAPIGatewayService返回参数结构体
      class ModifyCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConfigFileGroup请求参数结构体
      class ModifyConfigFileGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id
        # @type InstanceId: String
        # @param ConfigFileGroup: 配置文件组
        # @type ConfigFileGroup: :class:`Tencentcloud::Tse.v20201207.models.ConfigFileGroup`

        attr_accessor :InstanceId, :ConfigFileGroup

        def initialize(instanceid=nil, configfilegroup=nil)
          @InstanceId = instanceid
          @ConfigFileGroup = configfilegroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFileGroup'].nil?
            @ConfigFileGroup = ConfigFileGroup.new
            @ConfigFileGroup.deserialize(params['ConfigFileGroup'])
          end
        end
      end

      # ModifyConfigFileGroup返回参数结构体
      class ModifyConfigFileGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyConfigFiles请求参数结构体
      class ModifyConfigFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ins-df344df5
        # @type InstanceId: String
        # @param ConfigFile: 配置文件列表
        # @type ConfigFile: :class:`Tencentcloud::Tse.v20201207.models.ConfigFile`

        attr_accessor :InstanceId, :ConfigFile

        def initialize(instanceid=nil, configfile=nil)
          @InstanceId = instanceid
          @ConfigFile = configfile
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFile'].nil?
            @ConfigFile = ConfigFile.new
            @ConfigFile.deserialize(params['ConfigFile'])
          end
        end
      end

      # ModifyConfigFiles返回参数结构体
      class ModifyConfigFilesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyConsoleNetwork请求参数结构体
      class ModifyConsoleNetworkRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param NetworkType: 网络类型：
        # - Open 公网
        # - Internal 内网（暂不支持）
        # @type NetworkType: String
        # @param Operate: 开启Konga网络，不填时默认为Open
        # - Open，开启
        # - Close，关闭
        # @type Operate: String
        # @param AccessControl: 访问控制策略
        # @type AccessControl: :class:`Tencentcloud::Tse.v20201207.models.NetworkAccessControl`

        attr_accessor :GatewayId, :NetworkType, :Operate, :AccessControl

        def initialize(gatewayid=nil, networktype=nil, operate=nil, accesscontrol=nil)
          @GatewayId = gatewayid
          @NetworkType = networktype
          @Operate = operate
          @AccessControl = accesscontrol
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @NetworkType = params['NetworkType']
          @Operate = params['Operate']
          unless params['AccessControl'].nil?
            @AccessControl = NetworkAccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
        end
      end

      # ModifyConsoleNetwork返回参数结构体
      class ModifyConsoleNetworkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGovernanceAlias请求参数结构体
      class ModifyGovernanceAliasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param Alias: 服务别名
        # @type Alias: String
        # @param AliasNamespace: 服务别名命名空间
        # @type AliasNamespace: String
        # @param Service: 服务别名所指向的服务名
        # @type Service: String
        # @param Namespace: 服务别名所指向的命名空间
        # @type Namespace: String
        # @param Comment: 服务别名描述
        # @type Comment: String

        attr_accessor :InstanceId, :Alias, :AliasNamespace, :Service, :Namespace, :Comment

        def initialize(instanceid=nil, _alias=nil, aliasnamespace=nil, service=nil, namespace=nil, comment=nil)
          @InstanceId = instanceid
          @Alias = _alias
          @AliasNamespace = aliasnamespace
          @Service = service
          @Namespace = namespace
          @Comment = comment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @AliasNamespace = params['AliasNamespace']
          @Service = params['Service']
          @Namespace = params['Namespace']
          @Comment = params['Comment']
        end
      end

      # ModifyGovernanceAlias返回参数结构体
      class ModifyGovernanceAliasResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyGovernanceInstances请求参数结构体
      class ModifyGovernanceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceInstances: 服务实例信息。
        # @type GovernanceInstances: Array

        attr_accessor :InstanceId, :GovernanceInstances

        def initialize(instanceid=nil, governanceinstances=nil)
          @InstanceId = instanceid
          @GovernanceInstances = governanceinstances
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceInstances'].nil?
            @GovernanceInstances = []
            params['GovernanceInstances'].each do |i|
              governanceinstanceupdate_tmp = GovernanceInstanceUpdate.new
              governanceinstanceupdate_tmp.deserialize(i)
              @GovernanceInstances << governanceinstanceupdate_tmp
            end
          end
        end
      end

      # ModifyGovernanceInstances返回参数结构体
      class ModifyGovernanceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyGovernanceNamespaces请求参数结构体
      class ModifyGovernanceNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse实例id。
        # @type InstanceId: String
        # @param GovernanceNamespaces: 命名空间信息。
        # @type GovernanceNamespaces: Array

        attr_accessor :InstanceId, :GovernanceNamespaces

        def initialize(instanceid=nil, governancenamespaces=nil)
          @InstanceId = instanceid
          @GovernanceNamespaces = governancenamespaces
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceNamespaces'].nil?
            @GovernanceNamespaces = []
            params['GovernanceNamespaces'].each do |i|
              governancenamespaceinput_tmp = GovernanceNamespaceInput.new
              governancenamespaceinput_tmp.deserialize(i)
              @GovernanceNamespaces << governancenamespaceinput_tmp
            end
          end
        end
      end

      # ModifyGovernanceNamespaces返回参数结构体
      class ModifyGovernanceNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyGovernanceServices请求参数结构体
      class ModifyGovernanceServicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tse 实例 id。
        # @type InstanceId: String
        # @param GovernanceServices: 服务信息。
        # @type GovernanceServices: Array

        attr_accessor :InstanceId, :GovernanceServices

        def initialize(instanceid=nil, governanceservices=nil)
          @InstanceId = instanceid
          @GovernanceServices = governanceservices
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GovernanceServices'].nil?
            @GovernanceServices = []
            params['GovernanceServices'].each do |i|
              governanceserviceinput_tmp = GovernanceServiceInput.new
              governanceserviceinput_tmp.deserialize(i)
              @GovernanceServices << governanceserviceinput_tmp
            end
          end
        end
      end

      # ModifyGovernanceServices返回参数结构体
      class ModifyGovernanceServicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNativeGatewayServerGroup请求参数结构体
      class ModifyNativeGatewayServerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 网关分组 id
        # @type GroupId: String
        # @param Name: 云原生API网关名字, 最多支持60个字符。
        # @type Name: String
        # @param Description: 云原生API网关描述信息, 最多支持120个字符。
        # @type Description: String

        attr_accessor :GatewayId, :GroupId, :Name, :Description

        def initialize(gatewayid=nil, groupid=nil, name=nil, description=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifyNativeGatewayServerGroup返回参数结构体
      class ModifyNativeGatewayServerGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNativeGatewayServiceSource请求参数结构体
      class ModifyNativeGatewayServiceSourceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayID: 网关实例ID
        # @type GatewayID: String
        # @param SourceID: 服务来源实例ID
        # @type SourceID: String
        # @param SourceName: 服务来源名称
        # @type SourceName: String
        # @param SourceInfo: 服务来源实例额外信息
        # @type SourceInfo: :class:`Tencentcloud::Tse.v20201207.models.SourceInfo`

        attr_accessor :GatewayID, :SourceID, :SourceName, :SourceInfo

        def initialize(gatewayid=nil, sourceid=nil, sourcename=nil, sourceinfo=nil)
          @GatewayID = gatewayid
          @SourceID = sourceid
          @SourceName = sourcename
          @SourceInfo = sourceinfo
        end

        def deserialize(params)
          @GatewayID = params['GatewayID']
          @SourceID = params['SourceID']
          @SourceName = params['SourceName']
          unless params['SourceInfo'].nil?
            @SourceInfo = SourceInfo.new
            @SourceInfo.deserialize(params['SourceInfo'])
          end
        end
      end

      # ModifyNativeGatewayServiceSource返回参数结构体
      class ModifyNativeGatewayServiceSourceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkAccessStrategy请求参数结构体
      class ModifyNetworkAccessStrategyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 分组id
        # @type GroupId: String
        # @param NetworkType: 网络类型：
        # - Open 公网
        # - Internal 内网	（暂不支持）
        # @type NetworkType: String
        # @param Vip: ip地址
        # @type Vip: String
        # @param AccessControl: 访问控制策略
        # @type AccessControl: :class:`Tencentcloud::Tse.v20201207.models.NetworkAccessControl`

        attr_accessor :GatewayId, :GroupId, :NetworkType, :Vip, :AccessControl

        def initialize(gatewayid=nil, groupid=nil, networktype=nil, vip=nil, accesscontrol=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @NetworkType = networktype
          @Vip = vip
          @AccessControl = accesscontrol
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @NetworkType = params['NetworkType']
          @Vip = params['Vip']
          unless params['AccessControl'].nil?
            @AccessControl = NetworkAccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
        end
      end

      # ModifyNetworkAccessStrategy返回参数结构体
      class ModifyNetworkAccessStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkBasicInfo请求参数结构体
      class ModifyNetworkBasicInfoRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # @type GatewayId: String
        # @param GroupId: 分组id
        # @type GroupId: String
        # @param NetworkType: 网络类型：
        # - Open 公网ipv4
        # - Open-IPv6 公网ipv6
        # - Internal 内网
        # @type NetworkType: String
        # @param Vip: ip地址
        # @type Vip: String
        # @param InternetMaxBandwidthOut: 公网出流量带宽[1,2048]Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param Description: 负载均衡描述
        # @type Description: String

        attr_accessor :GatewayId, :GroupId, :NetworkType, :Vip, :InternetMaxBandwidthOut, :Description

        def initialize(gatewayid=nil, groupid=nil, networktype=nil, vip=nil, internetmaxbandwidthout=nil, description=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @NetworkType = networktype
          @Vip = vip
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          @NetworkType = params['NetworkType']
          @Vip = params['Vip']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @Description = params['Description']
        end
      end

      # ModifyNetworkBasicInfo返回参数结构体
      class ModifyNetworkBasicInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUpstreamNodeStatus请求参数结构体
      class ModifyUpstreamNodeStatusRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param Host: 访问IP地址或域名
        # @type Host: String
        # @param Port: 访问端口
        # @type Port: Integer
        # @param Status: HEALTHY或UNHEALTHY
        # @type Status: String

        attr_accessor :GatewayId, :ServiceName, :Host, :Port, :Status

        def initialize(gatewayid=nil, servicename=nil, host=nil, port=nil, status=nil)
          @GatewayId = gatewayid
          @ServiceName = servicename
          @Host = host
          @Port = port
          @Status = status
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceName = params['ServiceName']
          @Host = params['Host']
          @Port = params['Port']
          @Status = params['Status']
        end
      end

      # ModifyUpstreamNodeStatus返回参数结构体
      class ModifyUpstreamNodeStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # Nacos副本信息
      class NacosReplica < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Role: 角色
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param VpcId: VPC ID
        # @type VpcId: String

        attr_accessor :Name, :Role, :Status, :SubnetId, :Zone, :ZoneId, :VpcId

        def initialize(name=nil, role=nil, status=nil, subnetid=nil, zone=nil, zoneid=nil, vpcid=nil)
          @Name = name
          @Role = role
          @Status = status
          @SubnetId = subnetid
          @Zone = zone
          @ZoneId = zoneid
          @VpcId = vpcid
        end

        def deserialize(params)
          @Name = params['Name']
          @Role = params['Role']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
        end
      end

      # nacos服务端接口列表，用于云监控
      class NacosServerInterface < TencentCloud::Common::AbstractModel
        # @param Interface: 接口名
        # @type Interface: String

        attr_accessor :Interface

        def initialize(interface=nil)
          @Interface = interface
        end

        def deserialize(params)
          @Interface = params['Interface']
        end
      end

      # 云原生网关分组信息
      class NativeGatewayServerGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 云原生网关分组唯一id
        # @type GroupId: String
        # @param Name: 分组名
        # @type Name: String
        # @param Description: 描述信息
        # @type Description: String
        # @param NodeConfig: 节点规格、节点数信息
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`
        # @param Status: 网关分组状态。
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsFirstGroup: 是否是默认分组。
        # 0：否。
        # 1：是。
        # @type IsFirstGroup: Integer
        # @param BindingStrategy: 关联策略信息
        # @type BindingStrategy: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategy`
        # @param GatewayId: 网关实例 id
        # @type GatewayId: String
        # @param InternetMaxBandwidthOut: 带宽
        # @type InternetMaxBandwidthOut: Integer
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param SubnetIds: 子网id
        # @type SubnetIds: String
        # @param DefaultWeight: 分组默认权重
        # @type DefaultWeight: Integer
        # @param ElasticNumber: 弹性节点
        # @type ElasticNumber: Integer
        # @param SupportTOA: 是否支持TOA
        # @type SupportTOA: Boolean
        # @param SupportIPV6: 是否支持IPV6
        # @type SupportIPV6: Boolean

        attr_accessor :GroupId, :Name, :Description, :NodeConfig, :Status, :CreateTime, :IsFirstGroup, :BindingStrategy, :GatewayId, :InternetMaxBandwidthOut, :ModifyTime, :SubnetIds, :DefaultWeight, :ElasticNumber, :SupportTOA, :SupportIPV6

        def initialize(groupid=nil, name=nil, description=nil, nodeconfig=nil, status=nil, createtime=nil, isfirstgroup=nil, bindingstrategy=nil, gatewayid=nil, internetmaxbandwidthout=nil, modifytime=nil, subnetids=nil, defaultweight=nil, elasticnumber=nil, supporttoa=nil, supportipv6=nil)
          @GroupId = groupid
          @Name = name
          @Description = description
          @NodeConfig = nodeconfig
          @Status = status
          @CreateTime = createtime
          @IsFirstGroup = isfirstgroup
          @BindingStrategy = bindingstrategy
          @GatewayId = gatewayid
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @ModifyTime = modifytime
          @SubnetIds = subnetids
          @DefaultWeight = defaultweight
          @ElasticNumber = elasticnumber
          @SupportTOA = supporttoa
          @SupportIPV6 = supportipv6
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @IsFirstGroup = params['IsFirstGroup']
          unless params['BindingStrategy'].nil?
            @BindingStrategy = CloudNativeAPIGatewayStrategy.new
            @BindingStrategy.deserialize(params['BindingStrategy'])
          end
          @GatewayId = params['GatewayId']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @ModifyTime = params['ModifyTime']
          @SubnetIds = params['SubnetIds']
          @DefaultWeight = params['DefaultWeight']
          @ElasticNumber = params['ElasticNumber']
          @SupportTOA = params['SupportTOA']
          @SupportIPV6 = params['SupportIPV6']
        end
      end

      # 网关分组列表
      class NativeGatewayServerGroups < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param GatewayGroupList: 分组信息数组。
        # @type GatewayGroupList: Array

        attr_accessor :TotalCount, :GatewayGroupList

        def initialize(totalcount=nil, gatewaygrouplist=nil)
          @TotalCount = totalcount
          @GatewayGroupList = gatewaygrouplist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GatewayGroupList'].nil?
            @GatewayGroupList = []
            params['GatewayGroupList'].each do |i|
              nativegatewayservergroup_tmp = NativeGatewayServerGroup.new
              nativegatewayservergroup_tmp.deserialize(i)
              @GatewayGroupList << nativegatewayservergroup_tmp
            end
          end
        end
      end

      # 网关数据来源单个描述
      class NativeGatewayServiceSourceItem < TencentCloud::Common::AbstractModel
        # @param GatewayID: 网关实例ID
        # @type GatewayID: String
        # @param SourceID: 服务来源ID
        # @type SourceID: String
        # @param SourceName: 服务来源名称
        # @type SourceName: String
        # @param SourceType: 服务来源类型
        # @type SourceType: String
        # @param SourceInfo: 服务来源额外信息
        # @type SourceInfo: :class:`Tencentcloud::Tse.v20201207.models.SourceInfo`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :GatewayID, :SourceID, :SourceName, :SourceType, :SourceInfo, :CreateTime, :ModifyTime

        def initialize(gatewayid=nil, sourceid=nil, sourcename=nil, sourcetype=nil, sourceinfo=nil, createtime=nil, modifytime=nil)
          @GatewayID = gatewayid
          @SourceID = sourceid
          @SourceName = sourcename
          @SourceType = sourcetype
          @SourceInfo = sourceinfo
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @GatewayID = params['GatewayID']
          @SourceID = params['SourceID']
          @SourceName = params['SourceName']
          @SourceType = params['SourceType']
          unless params['SourceInfo'].nil?
            @SourceInfo = SourceInfo.new
            @SourceInfo.deserialize(params['SourceInfo'])
          end
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 网络访问策略
      class NetworkAccessControl < TencentCloud::Common::AbstractModel
        # @param Mode: 访问模式：Whitelist|Blacklist
        # @type Mode: String
        # @param CidrWhiteList: 白名单列表
        # @type CidrWhiteList: Array
        # @param CidrBlackList: 黑名单列表
        # @type CidrBlackList: Array

        attr_accessor :Mode, :CidrWhiteList, :CidrBlackList

        def initialize(mode=nil, cidrwhitelist=nil, cidrblacklist=nil)
          @Mode = mode
          @CidrWhiteList = cidrwhitelist
          @CidrBlackList = cidrblacklist
        end

        def deserialize(params)
          @Mode = params['Mode']
          @CidrWhiteList = params['CidrWhiteList']
          @CidrBlackList = params['CidrBlackList']
        end
      end

      # OpenWafProtection请求参数结构体
      class OpenWafProtectionRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Type:  防护资源的类型。
        # - Global  实例
        # - Service  服务
        # - Route  路由
        # - Object  对象（接口暂不支持）
        # @type Type: String
        # @param List: 当资源类型 Type 是 Service 或 Route 的时候，传入的服务或路由的列表
        # @type List: Array

        attr_accessor :GatewayId, :Type, :List

        def initialize(gatewayid=nil, type=nil, list=nil)
          @GatewayId = gatewayid
          @Type = type
          @List = list
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Type = params['Type']
          @List = params['List']
        end
      end

      # OpenWafProtection返回参数结构体
      class OpenWafProtectionResponse < TencentCloud::Common::AbstractModel
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

      # 北极星日志主题信息
      class PolarisCLSTopicInfo < TencentCloud::Common::AbstractModel
        # @param LogSetId: 日志集ID
        # @type LogSetId: String
        # @param LogSetName: 日志集名称
        # @type LogSetName: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String

        attr_accessor :LogSetId, :LogSetName, :TopicId, :TopicName

        def initialize(logsetid=nil, logsetname=nil, topicid=nil, topicname=nil)
          @LogSetId = logsetid
          @LogSetName = logsetname
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @LogSetId = params['LogSetId']
          @LogSetName = params['LogSetName']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # 查询Limiter的接入地址
      class PolarisLimiterAddress < TencentCloud::Common::AbstractModel
        # @param IntranetAddress: VPC接入IP列表
        # @type IntranetAddress: String

        attr_accessor :IntranetAddress

        def initialize(intranetaddress=nil)
          @IntranetAddress = intranetaddress
        end

        def deserialize(params)
          @IntranetAddress = params['IntranetAddress']
        end
      end

      # 公网地址信息
      class PublicAddressConfig < TencentCloud::Common::AbstractModel
        # @param Vip: 公网 ip
        # @type Vip: String
        # @param InternetMaxBandwidthOut: 公网最大带宽
        # @type InternetMaxBandwidthOut: Integer
        # @param GroupId: 公网所属分组 id
        # @type GroupId: String
        # @param GroupName: 公网所属分组名
        # @type GroupName: String
        # @param NetworkId: 公网负载均衡 id
        # @type NetworkId: String
        # @param Description: 公网负载均衡描述
        # @type Description: String

        attr_accessor :Vip, :InternetMaxBandwidthOut, :GroupId, :GroupName, :NetworkId, :Description

        def initialize(vip=nil, internetmaxbandwidthout=nil, groupid=nil, groupname=nil, networkid=nil, description=nil)
          @Vip = vip
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @GroupId = groupid
          @GroupName = groupname
          @NetworkId = networkid
          @Description = description
        end

        def deserialize(params)
          @Vip = params['Vip']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NetworkId = params['NetworkId']
          @Description = params['Description']
        end
      end

      # PublishConfigFiles请求参数结构体
      class PublishConfigFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param ConfigFileReleases: 配置文件发布
        # @type ConfigFileReleases: :class:`Tencentcloud::Tse.v20201207.models.ConfigFileRelease`
        # @param StrictEnable: 控制开启校验配置版本是否已经存在
        # @type StrictEnable: Boolean

        attr_accessor :InstanceId, :ConfigFileReleases, :StrictEnable

        def initialize(instanceid=nil, configfilereleases=nil, strictenable=nil)
          @InstanceId = instanceid
          @ConfigFileReleases = configfilereleases
          @StrictEnable = strictenable
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConfigFileReleases'].nil?
            @ConfigFileReleases = ConfigFileRelease.new
            @ConfigFileReleases.deserialize(params['ConfigFileReleases'])
          end
          @StrictEnable = params['StrictEnable']
        end
      end

      # PublishConfigFiles返回参数结构体
      class PublishConfigFilesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置文件发布是否成功
        # @type Result: Boolean
        # @param ConfigFileReleaseId: 配置文件发布Id
        # @type ConfigFileReleaseId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ConfigFileReleaseId, :RequestId

        def initialize(result=nil, configfilereleaseid=nil, requestid=nil)
          @Result = result
          @ConfigFileReleaseId = configfilereleaseid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ConfigFileReleaseId = params['ConfigFileReleaseId']
          @RequestId = params['RequestId']
        end
      end

      # 云原生网关限流插件Qps阈值
      class QpsThreshold < TencentCloud::Common::AbstractModel
        # @param Unit: qps阈值控制维度,包含:second、minute、hour、day、month、year
        # @type Unit: String
        # @param Max: 阈值
        # @type Max: Integer

        attr_accessor :Unit, :Max

        def initialize(unit=nil, max=nil)
          @Unit = unit
          @Max = max
        end

        def deserialize(params)
          @Unit = params['Unit']
          @Max = params['Max']
        end
      end

      # 云原生网关限流插件自定义响应
      class RateLimitResponse < TencentCloud::Common::AbstractModel
        # @param Body: 自定义响应体
        # @type Body: String
        # @param Headers: Headers
        # @type Headers: Array
        # @param HttpStatus: http状态码
        # @type HttpStatus: Integer

        attr_accessor :Body, :Headers, :HttpStatus

        def initialize(body=nil, headers=nil, httpstatus=nil)
          @Body = body
          @Headers = headers
          @HttpStatus = httpstatus
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              kvmapping_tmp = KVMapping.new
              kvmapping_tmp.deserialize(i)
              @Headers << kvmapping_tmp
            end
          end
          @HttpStatus = params['HttpStatus']
        end
      end

      # 配置发布版本信息
      class ReleaseVersion < TencentCloud::Common::AbstractModel
        # @param Name: 配置发布的版本
        # @type Name: String
        # @param Active: 是否生效
        # @type Active: Boolean
        # @param Id: 配置发布的ID
        # @type Id: String
        # @param Namespace: 配置发布的命名空间
        # @type Namespace: String
        # @param Group: 配置发布的分组
        # @type Group: String
        # @param FileName: 配置发布的文件名
        # @type FileName: String

        attr_accessor :Name, :Active, :Id, :Namespace, :Group, :FileName

        def initialize(name=nil, active=nil, id=nil, namespace=nil, group=nil, filename=nil)
          @Name = name
          @Active = active
          @Id = id
          @Namespace = namespace
          @Group = group
          @FileName = filename
        end

        def deserialize(params)
          @Name = params['Name']
          @Active = params['Active']
          @Id = params['Id']
          @Namespace = params['Namespace']
          @Group = params['Group']
          @FileName = params['FileName']
        end
      end

      # RestartSREInstance请求参数结构体
      class RestartSREInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 微服务引擎实例Id
        # @type InstanceId: String
        # @param EnvTypes: 重启的环境类型（PROD，DEV，UAT等）
        # @type EnvTypes: Array
        # @param NodeName: 指定需要重启的实例节点（当前仅支持zk单节点重启）
        # @type NodeName: String

        attr_accessor :InstanceId, :EnvTypes, :NodeName

        def initialize(instanceid=nil, envtypes=nil, nodename=nil)
          @InstanceId = instanceid
          @EnvTypes = envtypes
          @NodeName = nodename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EnvTypes = params['EnvTypes']
          @NodeName = params['NodeName']
        end
      end

      # RestartSREInstance返回参数结构体
      class RestartSREInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # RollbackConfigFileReleases请求参数结构体
      class RollbackConfigFileReleasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: TSE实例id
        # @type InstanceId: String
        # @param RollbackConfigFileReleases: 回滚发布
        # @type RollbackConfigFileReleases: Array

        attr_accessor :InstanceId, :RollbackConfigFileReleases

        def initialize(instanceid=nil, rollbackconfigfilereleases=nil)
          @InstanceId = instanceid
          @RollbackConfigFileReleases = rollbackconfigfilereleases
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['RollbackConfigFileReleases'].nil?
            @RollbackConfigFileReleases = []
            params['RollbackConfigFileReleases'].each do |i|
              configfilerelease_tmp = ConfigFileRelease.new
              configfilerelease_tmp.deserialize(i)
              @RollbackConfigFileReleases << configfilerelease_tmp
            end
          end
        end
      end

      # RollbackConfigFileReleases返回参数结构体
      class RollbackConfigFileReleasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 回滚结果
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 路由 WAF 状态
      class RouteWafStatus < TencentCloud::Common::AbstractModel
        # @param Name: 路由的名字
        # @type Name: String
        # @param Id: 路由的 ID
        # @type Id: String
        # @param Status:  路由是否开启 WAF 防护
        # @type Status: String
        # @param Methods: 方法
        # @type Methods: Array
        # @param Paths: 路径
        # @type Paths: Array
        # @param Hosts: 域名
        # @type Hosts: Array
        # @param ServiceName: 路由对应服务的名字
        # @type ServiceName: String
        # @param ServiceId: 路由对应服务的ID
        # @type ServiceId: String

        attr_accessor :Name, :Id, :Status, :Methods, :Paths, :Hosts, :ServiceName, :ServiceId

        def initialize(name=nil, id=nil, status=nil, methods=nil, paths=nil, hosts=nil, servicename=nil, serviceid=nil)
          @Name = name
          @Id = id
          @Status = status
          @Methods = methods
          @Paths = paths
          @Hosts = hosts
          @ServiceName = servicename
          @ServiceId = serviceid
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Status = params['Status']
          @Methods = params['Methods']
          @Paths = params['Paths']
          @Hosts = params['Hosts']
          @ServiceName = params['ServiceName']
          @ServiceId = params['ServiceId']
        end
      end

      # 限流规则的Filter
      class RuleFilter < TencentCloud::Common::AbstractModel
        # @param Key: 限流条件的Key
        # @type Key: String
        # @param Values: 限流条件的Values
        # @type Values: Array
        # @param Operator: 操作符
        # @type Operator: String
        # @param Name: header或query对应的name
        # @type Name: String

        attr_accessor :Key, :Values, :Operator, :Name

        def initialize(key=nil, values=nil, operator=nil, name=nil)
          @Key = key
          @Values = values
          @Operator = operator
          @Name = name
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
          @Operator = params['Operator']
          @Name = params['Name']
        end
      end

      # 微服务注册引擎实例
      class SREInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 名称
        # @type Name: String
        # @param Edition: 版本号
        # @type Edition: String
        # @param Status: 状态, 枚举值:creating/create_fail/running/updating/update_fail/restarting/restart_fail/destroying/destroy_fail
        # @type Status: String
        # @param SpecId: 规格ID
        # @type SpecId: String
        # @param Replica: 副本数
        # @type Replica: Integer
        # @param Type: 类型
        # @type Type: String
        # @param VpcId: Vpc iD
        # @type VpcId: String
        # @param SubnetIds: 子网ID
        # @type SubnetIds: Array
        # @param EnableStorage: 是否开启持久化存储
        # @type EnableStorage: Boolean
        # @param StorageType: 数据存储方式
        # @type StorageType: String
        # @param StorageCapacity: 云硬盘容量
        # @type StorageCapacity: Integer
        # @param Paymode: 计费方式
        # @type Paymode: String
        # @param EKSClusterID: EKS集群的ID
        # @type EKSClusterID: String
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param EnvInfos: 环境配置信息列表
        # @type EnvInfos: Array
        # @param EngineRegion: 引擎所在的区域
        # @type EngineRegion: String
        # @param EnableInternet: 注册引擎是否开启公网
        # @type EnableInternet: Boolean
        # @param VpcInfos: 私有网络列表信息
        # @type VpcInfos: Array
        # @param ServiceGovernanceInfos: 服务治理相关信息列表
        # @type ServiceGovernanceInfos: Array
        # @param Tags: 实例的标签信息
        # @type Tags: Array
        # @param EnableConsoleInternet: 引擎实例是否开启控制台公网访问地址
        # @type EnableConsoleInternet: Boolean
        # @param EnableConsoleIntranet: 引擎实例是否开启控制台内网访问地址
        # @type EnableConsoleIntranet: Boolean
        # @param ConfigInfoVisible: 引擎实例是否展示参数配置页面
        # @type ConfigInfoVisible: Boolean
        # @param ConsoleDefaultPwd: 引擎实例控制台默认密码
        # @type ConsoleDefaultPwd: String
        # @param TradeType: 交易付费类型，0后付费/1预付费
        # @type TradeType: Integer
        # @param AutoRenewFlag: 自动续费标记：0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 预付费到期时间
        # @type CurDeadline: String
        # @param IsolateTime: 隔离开始时间
        # @type IsolateTime: String
        # @param RegionInfos: 实例地域相关的描述信息
        # @type RegionInfos: Array
        # @param EKSType: 所在EKS环境，分为common和yunti
        # @type EKSType: String
        # @param FeatureVersion: 引擎的产品版本
        # @type FeatureVersion: String
        # @param EnableClientIntranet: 引擎实例是否开启客户端内网访问地址
        # @type EnableClientIntranet: Boolean
        # @param StorageOption: 存储额外配置选项
        # @type StorageOption: Array
        # @param ZookeeperRegionInfo: Zookeeper的额外环境数据信息
        # @type ZookeeperRegionInfo: :class:`Tencentcloud::Tse.v20201207.models.ZookeeperRegionInfo`
        # @param DeployMode: 部署架构
        # @type DeployMode: String
        # @param GlobalType: 全局属性
        # @type GlobalType: String
        # @param GroupType: 所属组类型
        # @type GroupType: String
        # @param GroupId: 组id
        # @type GroupId: Array
        # @param IsMainRegion: 是否为主地域
        # @type IsMainRegion: Boolean

        attr_accessor :InstanceId, :Name, :Edition, :Status, :SpecId, :Replica, :Type, :VpcId, :SubnetIds, :EnableStorage, :StorageType, :StorageCapacity, :Paymode, :EKSClusterID, :CreateTime, :EnvInfos, :EngineRegion, :EnableInternet, :VpcInfos, :ServiceGovernanceInfos, :Tags, :EnableConsoleInternet, :EnableConsoleIntranet, :ConfigInfoVisible, :ConsoleDefaultPwd, :TradeType, :AutoRenewFlag, :CurDeadline, :IsolateTime, :RegionInfos, :EKSType, :FeatureVersion, :EnableClientIntranet, :StorageOption, :ZookeeperRegionInfo, :DeployMode, :GlobalType, :GroupType, :GroupId, :IsMainRegion

        def initialize(instanceid=nil, name=nil, edition=nil, status=nil, specid=nil, replica=nil, type=nil, vpcid=nil, subnetids=nil, enablestorage=nil, storagetype=nil, storagecapacity=nil, paymode=nil, eksclusterid=nil, createtime=nil, envinfos=nil, engineregion=nil, enableinternet=nil, vpcinfos=nil, servicegovernanceinfos=nil, tags=nil, enableconsoleinternet=nil, enableconsoleintranet=nil, configinfovisible=nil, consoledefaultpwd=nil, tradetype=nil, autorenewflag=nil, curdeadline=nil, isolatetime=nil, regioninfos=nil, ekstype=nil, featureversion=nil, enableclientintranet=nil, storageoption=nil, zookeeperregioninfo=nil, deploymode=nil, globaltype=nil, grouptype=nil, groupid=nil, ismainregion=nil)
          @InstanceId = instanceid
          @Name = name
          @Edition = edition
          @Status = status
          @SpecId = specid
          @Replica = replica
          @Type = type
          @VpcId = vpcid
          @SubnetIds = subnetids
          @EnableStorage = enablestorage
          @StorageType = storagetype
          @StorageCapacity = storagecapacity
          @Paymode = paymode
          @EKSClusterID = eksclusterid
          @CreateTime = createtime
          @EnvInfos = envinfos
          @EngineRegion = engineregion
          @EnableInternet = enableinternet
          @VpcInfos = vpcinfos
          @ServiceGovernanceInfos = servicegovernanceinfos
          @Tags = tags
          @EnableConsoleInternet = enableconsoleinternet
          @EnableConsoleIntranet = enableconsoleintranet
          @ConfigInfoVisible = configinfovisible
          @ConsoleDefaultPwd = consoledefaultpwd
          @TradeType = tradetype
          @AutoRenewFlag = autorenewflag
          @CurDeadline = curdeadline
          @IsolateTime = isolatetime
          @RegionInfos = regioninfos
          @EKSType = ekstype
          @FeatureVersion = featureversion
          @EnableClientIntranet = enableclientintranet
          @StorageOption = storageoption
          @ZookeeperRegionInfo = zookeeperregioninfo
          @DeployMode = deploymode
          @GlobalType = globaltype
          @GroupType = grouptype
          @GroupId = groupid
          @IsMainRegion = ismainregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Edition = params['Edition']
          @Status = params['Status']
          @SpecId = params['SpecId']
          @Replica = params['Replica']
          @Type = params['Type']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @EnableStorage = params['EnableStorage']
          @StorageType = params['StorageType']
          @StorageCapacity = params['StorageCapacity']
          @Paymode = params['Paymode']
          @EKSClusterID = params['EKSClusterID']
          @CreateTime = params['CreateTime']
          unless params['EnvInfos'].nil?
            @EnvInfos = []
            params['EnvInfos'].each do |i|
              envinfo_tmp = EnvInfo.new
              envinfo_tmp.deserialize(i)
              @EnvInfos << envinfo_tmp
            end
          end
          @EngineRegion = params['EngineRegion']
          @EnableInternet = params['EnableInternet']
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          unless params['ServiceGovernanceInfos'].nil?
            @ServiceGovernanceInfos = []
            params['ServiceGovernanceInfos'].each do |i|
              servicegovernanceinfo_tmp = ServiceGovernanceInfo.new
              servicegovernanceinfo_tmp.deserialize(i)
              @ServiceGovernanceInfos << servicegovernanceinfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Tags << kvpair_tmp
            end
          end
          @EnableConsoleInternet = params['EnableConsoleInternet']
          @EnableConsoleIntranet = params['EnableConsoleIntranet']
          @ConfigInfoVisible = params['ConfigInfoVisible']
          @ConsoleDefaultPwd = params['ConsoleDefaultPwd']
          @TradeType = params['TradeType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CurDeadline = params['CurDeadline']
          @IsolateTime = params['IsolateTime']
          unless params['RegionInfos'].nil?
            @RegionInfos = []
            params['RegionInfos'].each do |i|
              describeinstanceregioninfo_tmp = DescribeInstanceRegionInfo.new
              describeinstanceregioninfo_tmp.deserialize(i)
              @RegionInfos << describeinstanceregioninfo_tmp
            end
          end
          @EKSType = params['EKSType']
          @FeatureVersion = params['FeatureVersion']
          @EnableClientIntranet = params['EnableClientIntranet']
          unless params['StorageOption'].nil?
            @StorageOption = []
            params['StorageOption'].each do |i|
              storageoption_tmp = StorageOption.new
              storageoption_tmp.deserialize(i)
              @StorageOption << storageoption_tmp
            end
          end
          unless params['ZookeeperRegionInfo'].nil?
            @ZookeeperRegionInfo = ZookeeperRegionInfo.new
            @ZookeeperRegionInfo.deserialize(params['ZookeeperRegionInfo'])
          end
          @DeployMode = params['DeployMode']
          @GlobalType = params['GlobalType']
          @GroupType = params['GroupType']
          @GroupId = params['GroupId']
          @IsMainRegion = params['IsMainRegion']
        end
      end

      # 服务治理相关的信息
      class ServiceGovernanceInfo < TencentCloud::Common::AbstractModel
        # @param EngineRegion: 引擎所在的地域
        # @type EngineRegion: String
        # @param BoundK8SInfos: 服务治理引擎绑定的kubernetes集群信息
        # @type BoundK8SInfos: Array
        # @param VpcInfos: 服务治理引擎绑定的网络信息
        # @type VpcInfos: Array
        # @param AuthOpen: 当前实例鉴权是否开启
        # @type AuthOpen: Boolean
        # @param Features: 该实例支持的功能，鉴权就是 Auth
        # @type Features: Array
        # @param MainPassword: 主账户名默认为 polaris，该值为主账户的默认密码
        # @type MainPassword: String
        # @param PgwVpcInfos: 服务治理pushgateway引擎绑定的网络信息
        # @type PgwVpcInfos: Array
        # @param LimiterVpcInfos: 服务治理限流server引擎绑定的网络信息
        # @type LimiterVpcInfos: Array
        # @param CLSTopics: 引擎关联CLS日志主题信息
        # @type CLSTopics: Array
        # @param SubPassword: 子用户密码
        # @type SubPassword: String

        attr_accessor :EngineRegion, :BoundK8SInfos, :VpcInfos, :AuthOpen, :Features, :MainPassword, :PgwVpcInfos, :LimiterVpcInfos, :CLSTopics, :SubPassword

        def initialize(engineregion=nil, boundk8sinfos=nil, vpcinfos=nil, authopen=nil, features=nil, mainpassword=nil, pgwvpcinfos=nil, limitervpcinfos=nil, clstopics=nil, subpassword=nil)
          @EngineRegion = engineregion
          @BoundK8SInfos = boundk8sinfos
          @VpcInfos = vpcinfos
          @AuthOpen = authopen
          @Features = features
          @MainPassword = mainpassword
          @PgwVpcInfos = pgwvpcinfos
          @LimiterVpcInfos = limitervpcinfos
          @CLSTopics = clstopics
          @SubPassword = subpassword
        end

        def deserialize(params)
          @EngineRegion = params['EngineRegion']
          unless params['BoundK8SInfos'].nil?
            @BoundK8SInfos = []
            params['BoundK8SInfos'].each do |i|
              boundk8sinfo_tmp = BoundK8SInfo.new
              boundk8sinfo_tmp.deserialize(i)
              @BoundK8SInfos << boundk8sinfo_tmp
            end
          end
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          @AuthOpen = params['AuthOpen']
          @Features = params['Features']
          @MainPassword = params['MainPassword']
          unless params['PgwVpcInfos'].nil?
            @PgwVpcInfos = []
            params['PgwVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @PgwVpcInfos << vpcinfo_tmp
            end
          end
          unless params['LimiterVpcInfos'].nil?
            @LimiterVpcInfos = []
            params['LimiterVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @LimiterVpcInfos << vpcinfo_tmp
            end
          end
          unless params['CLSTopics'].nil?
            @CLSTopics = []
            params['CLSTopics'].each do |i|
              polarisclstopicinfo_tmp = PolarisCLSTopicInfo.new
              polarisclstopicinfo_tmp.deserialize(i)
              @CLSTopics << polarisclstopicinfo_tmp
            end
          end
          @SubPassword = params['SubPassword']
        end
      end

      # 服务的 WAF 状态
      class ServiceWafStatus < TencentCloud::Common::AbstractModel
        # @param Name:  服务的名字
        # @type Name: String
        # @param Id: 服务的 ID
        # @type Id: String
        # @param Type: 服务的类型
        # @type Type: String
        # @param Status:  服务是否开启 WAF 防护
        # @type Status: String

        attr_accessor :Name, :Id, :Type, :Status

        def initialize(name=nil, id=nil, type=nil, status=nil)
          @Name = name
          @Id = id
          @Type = type
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Type = params['Type']
          @Status = params['Status']
        end
      end

      # 服务来源
      class SourceInfo < TencentCloud::Common::AbstractModel
        # @param Addresses: 微服务引擎接入IP地址信息
        # @type Addresses: Array
        # @param VpcInfo: 微服务引擎VPC信息
        # @type VpcInfo: :class:`Tencentcloud::Tse.v20201207.models.SourceInstanceVpcInfo`
        # @param Auth: 微服务引擎鉴权信息
        # @type Auth: :class:`Tencentcloud::Tse.v20201207.models.SourceInstanceAuth`

        attr_accessor :Addresses, :VpcInfo, :Auth

        def initialize(addresses=nil, vpcinfo=nil, auth=nil)
          @Addresses = addresses
          @VpcInfo = vpcinfo
          @Auth = auth
        end

        def deserialize(params)
          @Addresses = params['Addresses']
          unless params['VpcInfo'].nil?
            @VpcInfo = SourceInstanceVpcInfo.new
            @VpcInfo.deserialize(params['VpcInfo'])
          end
          unless params['Auth'].nil?
            @Auth = SourceInstanceAuth.new
            @Auth.deserialize(params['Auth'])
          end
        end
      end

      # 实例鉴权信息
      class SourceInstanceAuth < TencentCloud::Common::AbstractModel
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 账户密码
        # @type Password: String
        # @param AccessToken: 访问凭据 token
        # @type AccessToken: String

        attr_accessor :Username, :Password, :AccessToken

        def initialize(username=nil, password=nil, accesstoken=nil)
          @Username = username
          @Password = password
          @AccessToken = accesstoken
        end

        def deserialize(params)
          @Username = params['Username']
          @Password = params['Password']
          @AccessToken = params['AccessToken']
        end
      end

      # 微服务引擎实例的VPC信息
      class SourceInstanceVpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcID: 微服务引擎VPC信息
        # @type VpcID: String
        # @param SubnetID: 微服务引擎子网信息
        # @type SubnetID: String

        attr_accessor :VpcID, :SubnetID

        def initialize(vpcid=nil, subnetid=nil)
          @VpcID = vpcid
          @SubnetID = subnetid
        end

        def deserialize(params)
          @VpcID = params['VpcID']
          @SubnetID = params['SubnetID']
        end
      end

      # 存储的额外选项
      class StorageOption < TencentCloud::Common::AbstractModel
        # @param Name: 存储对象，分为snap和txn两种
        # @type Name: String
        # @param Type: 存储类型，分为三类CLOUD_PREMIUM/CLOUD_SSD/CLOUD_SSD_PLUS，分别对应高性能云硬盘、SSD云硬盘、增强型SSD云硬盘
        # @type Type: String
        # @param Capacity: 存储容量，[50, 3200]的范围
        # @type Capacity: Integer

        attr_accessor :Name, :Type, :Capacity

        def initialize(name=nil, type=nil, capacity=nil)
          @Name = name
          @Type = type
          @Capacity = capacity
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Capacity = params['Capacity']
        end
      end

      # UnbindAutoScalerResourceStrategyFromGroups请求参数结构体
      class UnbindAutoScalerResourceStrategyFromGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param GroupIds: 网关分组ID列表
        # @type GroupIds: Array

        attr_accessor :GatewayId, :StrategyId, :GroupIds

        def initialize(gatewayid=nil, strategyid=nil, groupids=nil)
          @GatewayId = gatewayid
          @StrategyId = strategyid
          @GroupIds = groupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StrategyId = params['StrategyId']
          @GroupIds = params['GroupIds']
        end
      end

      # UnbindAutoScalerResourceStrategyFromGroups返回参数结构体
      class UnbindAutoScalerResourceStrategyFromGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCloudNativeAPIGatewayCertificateInfo请求参数结构体
      class UpdateCloudNativeAPIGatewayCertificateInfoRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Id: 证书id
        # @type Id: String
        # @param BindDomains: 绑定的域名列表
        # @type BindDomains: Array
        # @param Name: 证书名称
        # @type Name: String

        attr_accessor :GatewayId, :Id, :BindDomains, :Name

        def initialize(gatewayid=nil, id=nil, binddomains=nil, name=nil)
          @GatewayId = gatewayid
          @Id = id
          @BindDomains = binddomains
          @Name = name
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Id = params['Id']
          @BindDomains = params['BindDomains']
          @Name = params['Name']
        end
      end

      # UpdateCloudNativeAPIGatewayCertificateInfo返回参数结构体
      class UpdateCloudNativeAPIGatewayCertificateInfoResponse < TencentCloud::Common::AbstractModel
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

      # 更新云原生API网关响应结果。
      class UpdateCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID。
        # @type GatewayId: String
        # @param Status: 云原生网关状态。
        # @type Status: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :GatewayId, :Status, :TaskId

        def initialize(gatewayid=nil, status=nil, taskid=nil)
          @GatewayId = gatewayid
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # UpdateCloudNativeAPIGatewaySpec请求参数结构体
      class UpdateCloudNativeAPIGatewaySpecRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关实例ID。
        # 只支持后付费实例
        # @type GatewayId: String
        # @param GroupId: 网关分组id
        # @type GroupId: String
        # @param NodeConfig: 网关分组节点规格配置。
        # @type NodeConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayNodeConfig`

        attr_accessor :GatewayId, :GroupId, :NodeConfig

        def initialize(gatewayid=nil, groupid=nil, nodeconfig=nil)
          @GatewayId = gatewayid
          @GroupId = groupid
          @NodeConfig = nodeconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GroupId = params['GroupId']
          unless params['NodeConfig'].nil?
            @NodeConfig = CloudNativeAPIGatewayNodeConfig.new
            @NodeConfig.deserialize(params['NodeConfig'])
          end
        end
      end

      # UpdateCloudNativeAPIGatewaySpec返回参数结构体
      class UpdateCloudNativeAPIGatewaySpecResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新云原生API网关实例规格的响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.UpdateCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UpdateCloudNativeAPIGatewayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateEngineInternetAccess请求参数结构体
      class UpdateEngineInternetAccessRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎ID
        # @type InstanceId: String
        # @param EngineType: 引擎类型
        # @type EngineType: String
        # @param EnableClientInternetAccess: 是否开启客户端公网访问，true开 false关
        # @type EnableClientInternetAccess: Boolean

        attr_accessor :InstanceId, :EngineType, :EnableClientInternetAccess

        def initialize(instanceid=nil, enginetype=nil, enableclientinternetaccess=nil)
          @InstanceId = instanceid
          @EngineType = enginetype
          @EnableClientInternetAccess = enableclientinternetaccess
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EngineType = params['EngineType']
          @EnableClientInternetAccess = params['EnableClientInternetAccess']
        end
      end

      # UpdateEngineInternetAccess返回参数结构体
      class UpdateEngineInternetAccessResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUpstreamHealthCheckConfig请求参数结构体
      class UpdateUpstreamHealthCheckConfigRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param Name: 网关服务名称
        # @type Name: String
        # @param HealthCheckConfig: 健康检查配置
        # @type HealthCheckConfig: :class:`Tencentcloud::Tse.v20201207.models.UpstreamHealthCheckConfig`

        attr_accessor :GatewayId, :Name, :HealthCheckConfig

        def initialize(gatewayid=nil, name=nil, healthcheckconfig=nil)
          @GatewayId = gatewayid
          @Name = name
          @HealthCheckConfig = healthcheckconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = UpstreamHealthCheckConfig.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
        end
      end

      # UpdateUpstreamHealthCheckConfig返回参数结构体
      class UpdateUpstreamHealthCheckConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UpdateUpstreamTargets请求参数结构体
      class UpdateUpstreamTargetsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID
        # @type GatewayId: String
        # @param Name: 服务名称或ID
        # @type Name: String
        # @param Targets: 实例列表
        # @type Targets: Array

        attr_accessor :GatewayId, :Name, :Targets

        def initialize(gatewayid=nil, name=nil, targets=nil)
          @GatewayId = gatewayid
          @Name = name
          @Targets = targets
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              kongtarget_tmp = KongTarget.new
              kongtarget_tmp.deserialize(i)
              @Targets << kongtarget_tmp
            end
          end
        end
      end

      # UpdateUpstreamTargets返回参数结构体
      class UpdateUpstreamTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否更新成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 云原生网关健康检查配置
      class UpstreamHealthCheckConfig < TencentCloud::Common::AbstractModel
        # @param EnableActiveHealthCheck: 开启主动健康检查
        # @type EnableActiveHealthCheck: Boolean
        # @param ActiveHealthCheck: 主动健康检查配置
        # @type ActiveHealthCheck: :class:`Tencentcloud::Tse.v20201207.models.KongActiveHealthCheck`
        # @param EnablePassiveHealthCheck: 开启被动健康检查
        # @type EnablePassiveHealthCheck: Boolean
        # @param PassiveHealthCheck: 被动健康检查配置
        # @type PassiveHealthCheck: :class:`Tencentcloud::Tse.v20201207.models.KongPassiveHealthCheck`
        # @param Successes: 连续健康阈值，单位：次
        # @type Successes: Integer
        # @param Failures: 连续异常阈值，单位：次
        # @type Failures: Integer
        # @param Timeouts: 超时阈值，单位：次
        # @type Timeouts: Integer
        # @param HealthyHttpStatuses: 健康HTTP状态码
        # @type HealthyHttpStatuses: Array
        # @param UnhealthyHttpStatuses: 异常HTTP状态码
        # @type UnhealthyHttpStatuses: Array
        # @param IgnoreZeroWeightNodes: 健康检查监控上报的数据屏蔽权重为0的节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreZeroWeightNodes: Boolean
        # @param ZeroWeightHeathCheck: 健康检查支持权重为0节点
        # @type ZeroWeightHeathCheck: Boolean

        attr_accessor :EnableActiveHealthCheck, :ActiveHealthCheck, :EnablePassiveHealthCheck, :PassiveHealthCheck, :Successes, :Failures, :Timeouts, :HealthyHttpStatuses, :UnhealthyHttpStatuses, :IgnoreZeroWeightNodes, :ZeroWeightHeathCheck
        extend Gem::Deprecate
        deprecate :IgnoreZeroWeightNodes, :none, 2025, 6
        deprecate :IgnoreZeroWeightNodes=, :none, 2025, 6

        def initialize(enableactivehealthcheck=nil, activehealthcheck=nil, enablepassivehealthcheck=nil, passivehealthcheck=nil, successes=nil, failures=nil, timeouts=nil, healthyhttpstatuses=nil, unhealthyhttpstatuses=nil, ignorezeroweightnodes=nil, zeroweightheathcheck=nil)
          @EnableActiveHealthCheck = enableactivehealthcheck
          @ActiveHealthCheck = activehealthcheck
          @EnablePassiveHealthCheck = enablepassivehealthcheck
          @PassiveHealthCheck = passivehealthcheck
          @Successes = successes
          @Failures = failures
          @Timeouts = timeouts
          @HealthyHttpStatuses = healthyhttpstatuses
          @UnhealthyHttpStatuses = unhealthyhttpstatuses
          @IgnoreZeroWeightNodes = ignorezeroweightnodes
          @ZeroWeightHeathCheck = zeroweightheathcheck
        end

        def deserialize(params)
          @EnableActiveHealthCheck = params['EnableActiveHealthCheck']
          unless params['ActiveHealthCheck'].nil?
            @ActiveHealthCheck = KongActiveHealthCheck.new
            @ActiveHealthCheck.deserialize(params['ActiveHealthCheck'])
          end
          @EnablePassiveHealthCheck = params['EnablePassiveHealthCheck']
          unless params['PassiveHealthCheck'].nil?
            @PassiveHealthCheck = KongPassiveHealthCheck.new
            @PassiveHealthCheck.deserialize(params['PassiveHealthCheck'])
          end
          @Successes = params['Successes']
          @Failures = params['Failures']
          @Timeouts = params['Timeouts']
          @HealthyHttpStatuses = params['HealthyHttpStatuses']
          @UnhealthyHttpStatuses = params['UnhealthyHttpStatuses']
          @IgnoreZeroWeightNodes = params['IgnoreZeroWeightNodes']
          @ZeroWeightHeathCheck = params['ZeroWeightHeathCheck']
        end
      end

      # 私有网络信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param IntranetAddress: 内网访问地址
        # @type IntranetAddress: String
        # @param LbSubnetId: 负载均衡均衡接入点子网ID
        # @type LbSubnetId: String

        attr_accessor :VpcId, :SubnetId, :IntranetAddress, :LbSubnetId

        def initialize(vpcid=nil, subnetid=nil, intranetaddress=nil, lbsubnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @IntranetAddress = intranetaddress
          @LbSubnetId = lbsubnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @IntranetAddress = params['IntranetAddress']
          @LbSubnetId = params['LbSubnetId']
        end
      end

      # Zookeeper的地域额外信息记录
      class ZookeeperRegionInfo < TencentCloud::Common::AbstractModel
        # @param DeployMode: 部署架构信息

        # - SingleRegion: 普通单地域
        # - MultiRegion: 普通多地域场景
        # - MasterSlave: 两地域，主备地域场景
        # @type DeployMode: String
        # @param MainRegion: 主地域的额外信息
        # @type MainRegion: :class:`Tencentcloud::Tse.v20201207.models.ZookeeperRegionMyIdInfo`
        # @param OtherRegions: 其他地域的额外信息
        # @type OtherRegions: Array

        attr_accessor :DeployMode, :MainRegion, :OtherRegions

        def initialize(deploymode=nil, mainregion=nil, otherregions=nil)
          @DeployMode = deploymode
          @MainRegion = mainregion
          @OtherRegions = otherregions
        end

        def deserialize(params)
          @DeployMode = params['DeployMode']
          unless params['MainRegion'].nil?
            @MainRegion = ZookeeperRegionMyIdInfo.new
            @MainRegion.deserialize(params['MainRegion'])
          end
          unless params['OtherRegions'].nil?
            @OtherRegions = []
            params['OtherRegions'].each do |i|
              zookeeperregionmyidinfo_tmp = ZookeeperRegionMyIdInfo.new
              zookeeperregionmyidinfo_tmp.deserialize(i)
              @OtherRegions << zookeeperregionmyidinfo_tmp
            end
          end
        end
      end

      # Zookeeper的地域信息的 myid 信息记录
      class ZookeeperRegionMyIdInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息
        # @type Region: String
        # @param MyIdStart: myid 的起始号段
        # @type MyIdStart: Integer
        # @param MyIdEnd: myid 的结束号段
        # @type MyIdEnd: Integer

        attr_accessor :Region, :MyIdStart, :MyIdEnd

        def initialize(region=nil, myidstart=nil, myidend=nil)
          @Region = region
          @MyIdStart = myidstart
          @MyIdEnd = myidend
        end

        def deserialize(params)
          @Region = params['Region']
          @MyIdStart = params['MyIdStart']
          @MyIdEnd = params['MyIdEnd']
        end
      end

      # Zookeeper副本信息
      class ZookeeperReplica < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Role: 角色
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param AliasName: 别名
        # @type AliasName: String
        # @param VpcId: VPC ID
        # @type VpcId: String

        attr_accessor :Name, :Role, :Status, :SubnetId, :Zone, :ZoneId, :AliasName, :VpcId

        def initialize(name=nil, role=nil, status=nil, subnetid=nil, zone=nil, zoneid=nil, aliasname=nil, vpcid=nil)
          @Name = name
          @Role = role
          @Status = status
          @SubnetId = subnetid
          @Zone = zone
          @ZoneId = zoneid
          @AliasName = aliasname
          @VpcId = vpcid
        end

        def deserialize(params)
          @Name = params['Name']
          @Role = params['Role']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @AliasName = params['AliasName']
          @VpcId = params['VpcId']
        end
      end

      # Zookeeper服务端接口列表，用于云监控
      class ZookeeperServerInterface < TencentCloud::Common::AbstractModel
        # @param Interface: 接口名
        # @type Interface: String

        attr_accessor :Interface

        def initialize(interface=nil)
          @Interface = interface
        end

        def deserialize(params)
          @Interface = params['Interface']
        end
      end

    end
  end
end

