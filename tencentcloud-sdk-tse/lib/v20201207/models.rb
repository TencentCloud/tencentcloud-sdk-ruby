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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleUp: :class:`Tencentcloud::Tse.v20201207.models.AutoScalerRules`
        # @param ScaleDown: 缩容行为配置
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Type: 类型，Pods或Percent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Value: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Integer
        # @param PeriodSeconds: 扩容周期
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param StabilizationWindowSeconds: 稳定窗口时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StabilizationWindowSeconds: Integer
        # @param SelectPolicy: 选择策略依据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectPolicy: String
        # @param Policies: 扩容策略
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 服务治理引擎绑定的kubernetes信息
      class BoundK8SInfo < TencentCloud::Common::AbstractModel
        # @param BoundClusterId: 绑定的kubernetes集群ID
        # @type BoundClusterId: String
        # @param BoundClusterType: 绑定的kubernetes的集群类型，分tke和eks两种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundClusterType: String
        # @param SyncMode: 服务同步模式，all为全量同步，demand为按需同步
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncMode: String

        attr_accessor :BoundClusterId, :BoundClusterType, :SyncMode

        def initialize(boundclusterid=nil, boundclustertype=nil, syncmode=nil)
          @BoundClusterId = boundclusterid
          @BoundClusterType = boundclustertype
          @SyncMode = syncmode
        end

        def deserialize(params)
          @BoundClusterId = params['BoundClusterId']
          @BoundClusterType = params['BoundClusterType']
          @SyncMode = params['SyncMode']
        end
      end

      # 灰度规则列表
      class CloudAPIGatewayCanaryRuleList < TencentCloud::Common::AbstractModel
        # @param CanaryRuleList: 灰度规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanaryRuleList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceID: String
        # @param ServiceName: 服务名称，作为入参时，无意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param UpstreamName: Upstream 名称，作为入参时，无意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamName: String
        # @param Percent: 百分比，10 即 10%，范围0-100
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Enabled: 是否启用规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param ConditionList: 参数匹配条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionList: Array
        # @param BalancedServiceList: 服务的流量百分比配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BalancedServiceList: Array
        # @param ServiceId: 归属服务 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param ServiceName: 归属服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String

        attr_accessor :Priority, :Enabled, :ConditionList, :BalancedServiceList, :ServiceId, :ServiceName

        def initialize(priority=nil, enabled=nil, conditionlist=nil, balancedservicelist=nil, serviceid=nil, servicename=nil)
          @Priority = priority
          @Enabled = enabled
          @ConditionList = conditionlist
          @BalancedServiceList = balancedservicelist
          @ServiceId = serviceid
          @ServiceName = servicename
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
        end
      end

      # 灰度规则中的条件配置
      class CloudNativeAPIGatewayCanaryRuleCondition < TencentCloud::Common::AbstractModel
        # @param Type: 条件类型，支持 path, method, query, header, cookie, body 和 system。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Key: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Operator: 操作符，支持 "le", "eq", "lt", "ne", "ge", "gt", "regex", "exists", "in", "not in",  "prefix" ,"exact", "regex" 等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Value: 目标参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Delimiter: 分隔符，当 Operator 为 in 或者 not in 时生效。支持值为英文逗号，英文分号，空格，换行符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delimiter: String
        # @param GlobalConfigId: 全局配置 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalConfigId: String
        # @param GlobalConfigName: 全局配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 云原生API网关节点信息。
      class CloudNativeAPIGatewayNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 云原生网关节点 id
        # @type NodeId: String
        # @param NodeIp: 节点 ip
        # @type NodeIp: String
        # @param ZoneId: Zone id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Zone: Zone
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param GroupId: 分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :NodeId, :NodeIp, :ZoneId, :Zone, :GroupId, :GroupName, :Status

        def initialize(nodeid=nil, nodeip=nil, zoneid=nil, zone=nil, groupid=nil, groupname=nil, status=nil)
          @NodeId = nodeid
          @NodeIp = nodeip
          @ZoneId = zoneid
          @Zone = zone
          @GroupId = groupid
          @GroupName = groupname
          @Status = status
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeIp = params['NodeIp']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Status = params['Status']
        end
      end

      # 云原生API网关节点配置。
      class CloudNativeAPIGatewayNodeConfig < TencentCloud::Common::AbstractModel
        # @param Specification: 节点配置, 1c2g|2c4g|4c8g|8c16g。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Specification: String
        # @param Number: 节点数量，2-9。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param LimitBy: 限流依据
        # ip service consumer credential path header
        # @type LimitBy: String
        # @param ResponseType: 响应策略
        # url请求转发
        # text 响应配置
        # default 直接返回
        # @type ResponseType: String
        # @param HideClientHeaders: 是否隐藏限流客户端响应头
        # @type HideClientHeaders: Boolean
        # @param IsDelay: 是否开启请求排队
        # @type IsDelay: Boolean
        # @param Path: 需要进行流量控制的请求路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Header: 需要进行流量控制的请求头Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: String
        # @param ExternalRedis: 外部redis配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalRedis: :class:`Tencentcloud::Tse.v20201207.models.ExternalRedis`
        # @param Policy: 计数器策略
        # local 单机
        # redis  默认redis
        # external_redis 外部redis

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: String
        # @param RateLimitResponse: 响应配置，响应策略为text

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitResponse: :class:`Tencentcloud::Tse.v20201207.models.RateLimitResponse`
        # @param RateLimitResponseUrl: 请求转发地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitResponseUrl: String
        # @param LineUpTime: 排队时间
        # @type LineUpTime: Integer

        attr_accessor :Enabled, :QpsThresholds, :LimitBy, :ResponseType, :HideClientHeaders, :IsDelay, :Path, :Header, :ExternalRedis, :Policy, :RateLimitResponse, :RateLimitResponseUrl, :LineUpTime

        def initialize(enabled=nil, qpsthresholds=nil, limitby=nil, responsetype=nil, hideclientheaders=nil, isdelay=nil, path=nil, header=nil, externalredis=nil, policy=nil, ratelimitresponse=nil, ratelimitresponseurl=nil, lineuptime=nil)
          @Enabled = enabled
          @QpsThresholds = qpsthresholds
          @LimitBy = limitby
          @ResponseType = responsetype
          @HideClientHeaders = hideclientheaders
          @IsDelay = isdelay
          @Path = path
          @Header = header
          @ExternalRedis = externalredis
          @Policy = policy
          @RateLimitResponse = ratelimitresponse
          @RateLimitResponseUrl = ratelimitresponseurl
          @LineUpTime = lineuptime
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
          @LimitBy = params['LimitBy']
          @ResponseType = params['ResponseType']
          @HideClientHeaders = params['HideClientHeaders']
          @IsDelay = params['IsDelay']
          @Path = params['Path']
          @Header = params['Header']
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
          @LineUpTime = params['LineUpTime']
        end
      end

      # 网关实例策略
      class CloudNativeAPIGatewayStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param StrategyName: 策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param Description: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Config: 弹性伸缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyAutoScalerConfig`
        # @param GatewayId: 网关实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayId: String
        # @param CronConfig: 定时伸缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronConfig: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategyCronScalerConfig`
        # @param MaxReplicas: 最大节点数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReplicas: Integer

        attr_accessor :StrategyId, :StrategyName, :CreateTime, :ModifyTime, :Description, :Config, :GatewayId, :CronConfig, :MaxReplicas
        extend Gem::Deprecate
        deprecate :MaxReplicas, :none, 2023, 9
        deprecate :MaxReplicas=, :none, 2023, 9

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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        deprecate :CreateTime, :none, 2023, 9
        deprecate :CreateTime=, :none, 2023, 9
        deprecate :ModifyTime, :none, 2023, 9
        deprecate :ModifyTime=, :none, 2023, 9
        deprecate :StrategyId, :none, 2023, 9
        deprecate :StrategyId=, :none, 2023, 9
        deprecate :AutoScalerId, :none, 2023, 9
        deprecate :AutoScalerId=, :none, 2023, 9

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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ResourceName: 指标资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param TargetType: 指标目标类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: String
        # @param TargetValue: 指标目标值
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        deprecate :CreateTime, :none, 2023, 9
        deprecate :CreateTime=, :none, 2023, 9
        deprecate :ModifyTime, :none, 2023, 9
        deprecate :ModifyTime=, :none, 2023, 9
        deprecate :StrategyId, :none, 2023, 9
        deprecate :StrategyId=, :none, 2023, 9

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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: String
        # @param StartAt: 定时伸缩开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartAt: String
        # @param TargetReplicas: 定时伸缩目标节点数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetReplicas: Integer
        # @param Crontab: 定时伸缩cron表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateCloudNativeAPIGatewayCanaryRule请求参数结构体
      class CreateCloudNativeAPIGatewayCanaryRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param CanaryRule: 灰度规则配置
        # @type CanaryRule: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayCanaryRule`

        attr_accessor :GatewayId, :ServiceId, :CanaryRule

        def initialize(gatewayid=nil, serviceid=nil, canaryrule=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @CanaryRule = canaryrule
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          unless params['CanaryRule'].nil?
            @CanaryRule = CloudNativeAPIGatewayCanaryRule.new
            @CanaryRule.deserialize(params['CanaryRule'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayCanaryRule返回参数结构体
      class CreateCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :Name, :Type, :GatewayVersion, :NodeConfig, :VpcConfig, :Description, :Tags, :EnableCls, :FeatureVersion, :InternetMaxBandwidthOut, :EngineRegion, :IngressClassName, :TradeType, :InternetConfig

        def initialize(name=nil, type=nil, gatewayversion=nil, nodeconfig=nil, vpcconfig=nil, description=nil, tags=nil, enablecls=nil, featureversion=nil, internetmaxbandwidthout=nil, engineregion=nil, ingressclassname=nil, tradetype=nil, internetconfig=nil)
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
        end
      end

      # CreateCloudNativeAPIGateway返回参数结构体
      class CreateCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建云原生API网关实例响应结果。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreateCloudNativeAPIGatewayResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

        attr_accessor :GatewayId, :ServiceID, :RouteName, :Methods, :Hosts, :Paths, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :ForceHttps, :DestinationPorts, :Headers
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2023, 9
        deprecate :ForceHttps=, :none, 2023, 9

        def initialize(gatewayid=nil, serviceid=nil, routename=nil, methods=nil, hosts=nil, paths=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, forcehttps=nil, destinationports=nil, headers=nil)
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
        end
      end

      # CreateCloudNativeAPIGatewayRoute返回参数结构体
      class CreateCloudNativeAPIGatewayRouteResponse < TencentCloud::Common::AbstractModel
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

      # 创建网关分组信息
      class CreateCloudNativeAPIGatewayServerGroupResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param GroupId: 分组id
        # @type GroupId: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Path: 请求路径
        # @type Path: String
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

        attr_accessor :GatewayId, :Name, :Protocol, :Path, :Timeout, :Retries, :UpstreamType, :UpstreamInfo

        def initialize(gatewayid=nil, name=nil, protocol=nil, path=nil, timeout=nil, retries=nil, upstreamtype=nil, upstreaminfo=nil)
          @GatewayId = gatewayid
          @Name = name
          @Protocol = protocol
          @Path = path
          @Timeout = timeout
          @Retries = retries
          @UpstreamType = upstreamtype
          @UpstreamInfo = upstreaminfo
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Path = params['Path']
          @Timeout = params['Timeout']
          @Retries = params['Retries']
          @UpstreamType = params['UpstreamType']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayService返回参数结构体
      class CreateCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
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
        # - na-toronto：多伦多
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
        # @param EngineAdmin: 引擎的初始帐号信息。可设置参数：
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
        # @type EngineRegionInfos: Array

        attr_accessor :EngineType, :EngineVersion, :EngineProductVersion, :EngineRegion, :EngineName, :TradeType, :EngineResourceSpec, :EngineNodeNum, :VpcId, :SubnetId, :ApolloEnvParams, :EngineTags, :EngineAdmin, :PrepaidPeriod, :PrepaidRenewFlag, :EngineRegionInfos

        def initialize(enginetype=nil, engineversion=nil, engineproductversion=nil, engineregion=nil, enginename=nil, tradetype=nil, engineresourcespec=nil, enginenodenum=nil, vpcid=nil, subnetid=nil, apolloenvparams=nil, enginetags=nil, engineadmin=nil, prepaidperiod=nil, prepaidrenewflag=nil, engineregioninfos=nil)
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
        end
      end

      # CreateEngine返回参数结构体
      class CreateEngineResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例 ID
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CreateCloudNativeAPIGatewayServerGroupResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteCloudNativeAPIGatewayCanaryRule请求参数结构体
      class DeleteCloudNativeAPIGatewayCanaryRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param Priority: 优先级
        # @type Priority: Integer

        attr_accessor :GatewayId, :ServiceId, :Priority

        def initialize(gatewayid=nil, serviceid=nil, priority=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @Priority = priority
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @Priority = params['Priority']
        end
      end

      # DeleteCloudNativeAPIGatewayCanaryRule返回参数结构体
      class DeleteCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeCloudNativeAPIGatewayCanaryRules请求参数结构体
      class DescribeCloudNativeAPIGatewayCanaryRulesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param ServiceId: 服务 ID
        # @type ServiceId: String
        # @param Limit: 列表数量
        # @type Limit: Integer
        # @param Offset: 列表offset
        # @type Offset: Integer

        attr_accessor :GatewayId, :ServiceId, :Limit, :Offset

        def initialize(gatewayid=nil, serviceid=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudNativeAPIGatewayCanaryRules返回参数结构体
      class DescribeCloudNativeAPIGatewayCanaryRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 灰度规则列表
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.CloudAPIGatewayCanaryRuleList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.DescribeGatewayInstancePortResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param EnableCls: 是否开启 cls 日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCls: Boolean
        # @param TradeType: 付费模式，0表示后付费，1预付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeType: Integer
        # @param FeatureVersion: 实例版本，当前支持开发版、标准版、专业版【TRIAL、STANDARD、PROFESSIONAL】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureVersion: String
        # @param InternetMaxBandwidthOut: 公网出流量带宽，[1,2048]Mbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态)；
        # 1表示自动续费，2表示明确不自动续费(用户设置)，若业务无续费概念或无需自动续费，需要设置为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 到期时间，预付费时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String
        # @param IsolateTime: 隔离时间，实例隔离时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String
        # @param EnableInternet: 是否开启客户端公网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableInternet: Boolean
        # @param EngineRegion: 实例实际的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String
        # @param IngressClassName: Ingress class名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IngressClassName: String
        # @param InternetPayMode: 公网计费方式。可选取值 BANDWIDTH | TRAFFIC ，表示按带宽和按流量计费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetPayMode: String
        # @param GatewayMinorVersion: 云原生API网关小版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayMinorVersion: String
        # @param InstancePort: 实例监听的端口信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePort: :class:`Tencentcloud::Tse.v20201207.models.InstancePort`
        # @param LoadBalancerType: 公网CLB默认类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param PublicIpAddresses: 公网IP地址列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array

        attr_accessor :GatewayId, :Status, :Name, :Type, :GatewayVersion, :NodeConfig, :VpcConfig, :Description, :CreateTime, :Tags, :EnableCls, :TradeType, :FeatureVersion, :InternetMaxBandwidthOut, :AutoRenewFlag, :CurDeadline, :IsolateTime, :EnableInternet, :EngineRegion, :IngressClassName, :InternetPayMode, :GatewayMinorVersion, :InstancePort, :LoadBalancerType, :PublicIpAddresses

        def initialize(gatewayid=nil, status=nil, name=nil, type=nil, gatewayversion=nil, nodeconfig=nil, vpcconfig=nil, description=nil, createtime=nil, tags=nil, enablecls=nil, tradetype=nil, featureversion=nil, internetmaxbandwidthout=nil, autorenewflag=nil, curdeadline=nil, isolatetime=nil, enableinternet=nil, engineregion=nil, ingressclassname=nil, internetpaymode=nil, gatewayminorversion=nil, instanceport=nil, loadbalancertype=nil, publicipaddresses=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongServiceRouteList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tse.v20201207.models.KongServices`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 获取云原生API网关实例协议端口列表响应结果
      class DescribeGatewayInstancePortResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayId: String
        # @param GatewayInstancePortList: 网关实例协议端口列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 实例地域信息描述
      class DescribeInstanceRegionInfo < TencentCloud::Common::AbstractModel
        # @param EngineRegion: 引擎部署地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String
        # @param Replica: 引擎在该地域的副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replica: Integer
        # @param SpecId: 引擎在该地域的规格id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecId: String
        # @param IntranetVpcInfos: 内网的网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetVpcInfos: Array
        # @param EnableClientInternet: 是否开公网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableClientInternet: Boolean

        attr_accessor :EngineRegion, :Replica, :SpecId, :IntranetVpcInfos, :EnableClientInternet

        def initialize(engineregion=nil, replica=nil, specid=nil, intranetvpcinfos=nil, enableclientinternet=nil)
          @EngineRegion = engineregion
          @Replica = replica
          @SpecId = specid
          @IntranetVpcInfos = intranetvpcinfos
          @EnableClientInternet = enableclientinternet
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
          @EnableClientInternet = params['EnableClientInternet']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 翻页从第几个开始获取
        # @type Offset: Integer
        # @param Limit: 翻页获取多少个
        # @type Limit: Integer
        # @param Filters: 过滤参数
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleInternetAddress: String
        # @param ConsoleIntranetAddress: 控制台内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleIntranetAddress: String
        # @param InternetBandWidth: 客户端公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetBandWidth: Integer
        # @param ConsoleInternetBandWidth: 控制台公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleInternetBandWidth: Integer
        # @param LimiterAddressInfos: 北极星限流server节点接入IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimiterAddressInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntranetAddress, :InternetAddress, :EnvAddressInfos, :ConsoleInternetAddress, :ConsoleIntranetAddress, :InternetBandWidth, :ConsoleInternetBandWidth, :LimiterAddressInfos, :RequestId

        def initialize(intranetaddress=nil, internetaddress=nil, envaddressinfos=nil, consoleinternetaddress=nil, consoleintranetaddress=nil, internetbandwidth=nil, consoleinternetbandwidth=nil, limiteraddressinfos=nil, requestid=nil)
          @IntranetAddress = intranetaddress
          @InternetAddress = internetaddress
          @EnvAddressInfos = envaddressinfos
          @ConsoleInternetAddress = consoleinternetaddress
          @ConsoleIntranetAddress = consoleintranetaddress
          @InternetBandWidth = internetbandwidth
          @ConsoleInternetBandWidth = consoleinternetbandwidth
          @LimiterAddressInfos = limiteraddressinfos
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 引擎的初始管理帐号
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

        attr_accessor :EngineRegion, :Replica, :VpcInfos

        def initialize(engineregion=nil, replica=nil, vpcinfos=nil)
          @EngineRegion = engineregion
          @Replica = replica
          @VpcInfos = vpcinfos
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigIntranetAddress: String
        # @param EnableConfigIntranet: 是否开启config内网clb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableConfigIntranet: Boolean
        # @param InternetBandWidth: 客户端公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetBandWidth: Integer

        attr_accessor :EnvName, :EnableConfigInternet, :ConfigInternetServiceIp, :ConfigIntranetAddress, :EnableConfigIntranet, :InternetBandWidth

        def initialize(envname=nil, enableconfiginternet=nil, configinternetserviceip=nil, configintranetaddress=nil, enableconfigintranet=nil, internetbandwidth=nil)
          @EnvName = envname
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
          @ConfigIntranetAddress = configintranetaddress
          @EnableConfigIntranet = enableconfigintranet
          @InternetBandWidth = internetbandwidth
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
          @ConfigIntranetAddress = params['ConfigIntranetAddress']
          @EnableConfigIntranet = params['EnableConfigIntranet']
          @InternetBandWidth = params['InternetBandWidth']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedisHost: String
        # @param RedisPassword: redis密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedisPassword: String
        # @param RedisPort: redis端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedisPort: Integer
        # @param RedisTimeout: 超时时间  ms
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheme: String
        # @param PortList: 端口列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 实例监听端口信息
      class InstancePort < TencentCloud::Common::AbstractModel
        # @param HttpPort: 监听的 http 端口范围。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpPort: String
        # @param HttpsPort: 监听的 https 端口范围。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpsPort: String

        attr_accessor :HttpPort, :HttpsPort

        def initialize(httpport=nil, httpsport=nil)
          @HttpPort = httpport
          @HttpsPort = httpsport
        end

        def deserialize(params)
          @HttpPort = params['HttpPort']
          @HttpsPort = params['HttpsPort']
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
        # @param SlaType: 负载均衡的规格类型，传 "SLA" 表示性能容量型，不传为共享型。
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

      # 云原生网关路由信息
      class KongRoutePreview < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocols: Array
        # @param PreserveHost: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreserveHost: Boolean
        # @param HttpsRedirectStatusCode: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpsRedirectStatusCode: Integer
        # @param StripPath: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StripPath: Boolean
        # @param CreatedTime: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ForceHttps: 是否开启了强制HTTPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceHttps: Boolean
        # @param ServiceName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ServiceID: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceID: String
        # @param DestinationPorts: 目的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestinationPorts: Array
        # @param Headers: 路由的Headers
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :ID, :Name, :Methods, :Paths, :Hosts, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :CreatedTime, :ForceHttps, :ServiceName, :ServiceID, :DestinationPorts, :Headers
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2023, 9
        deprecate :ForceHttps=, :none, 2023, 9

        def initialize(id=nil, name=nil, methods=nil, paths=nil, hosts=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, createdtime=nil, forcehttps=nil, servicename=nil, serviceid=nil, destinationports=nil, headers=nil)
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
        end
      end

      # 云原生网关服务详细信息
      class KongServiceDetail < TencentCloud::Common::AbstractModel
        # @param ID: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Protocol: 后端协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Path: 后端路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Timeout: 后端延时，单位ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param Retries: 重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retries: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param UpstreamInfo: 后端配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param UpstreamType: 后端类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamType: String
        # @param Editable: 是否可编辑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Editable: Boolean
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param UpstreamInfo: 后端配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamInfo: :class:`Tencentcloud::Tse.v20201207.models.KongUpstreamInfo`
        # @param UpstreamType: 后端类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamType: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param Editable: 是否可编辑
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceList: Array
        # @param TotalCount: 列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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

        attr_accessor :Host, :Port, :Weight, :Health, :CreatedTime, :Source

        def initialize(host=nil, port=nil, weight=nil, health=nil, createdtime=nil, source=nil)
          @Host = host
          @Port = port
          @Weight = weight
          @Health = health
          @CreatedTime = createdtime
          @Source = source
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @Weight = params['Weight']
          @Health = params['Health']
          @CreatedTime = params['CreatedTime']
          @Source = params['Source']
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

        attr_accessor :Host, :Port, :SourceID, :Namespace, :ServiceName, :Targets, :SourceType, :ScfType, :ScfNamespace, :ScfLambdaName, :ScfLambdaQualifier, :SlowStart, :Algorithm, :AutoScalingGroupID, :AutoScalingCvmPort, :AutoScalingTatCmdStatus, :AutoScalingHookStatus, :SourceName, :RealSourceType

        def initialize(host=nil, port=nil, sourceid=nil, namespace=nil, servicename=nil, targets=nil, sourcetype=nil, scftype=nil, scfnamespace=nil, scflambdaname=nil, scflambdaqualifier=nil, slowstart=nil, algorithm=nil, autoscalinggroupid=nil, autoscalingcvmport=nil, autoscalingtatcmdstatus=nil, autoscalinghookstatus=nil, sourcename=nil, realsourcetype=nil)
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

        attr_accessor :GatewayId, :ServiceId, :Priority, :CanaryRule

        def initialize(gatewayid=nil, serviceid=nil, priority=nil, canaryrule=nil)
          @GatewayId = gatewayid
          @ServiceId = serviceid
          @Priority = priority
          @CanaryRule = canaryrule
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServiceId = params['ServiceId']
          @Priority = params['Priority']
          unless params['CanaryRule'].nil?
            @CanaryRule = CloudNativeAPIGatewayCanaryRule.new
            @CanaryRule.deserialize(params['CanaryRule'])
          end
        end
      end

      # ModifyCloudNativeAPIGatewayCanaryRule返回参数结构体
      class ModifyCloudNativeAPIGatewayCanaryRuleResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :GatewayId, :Name, :Description, :EnableCls, :InternetPayMode

        def initialize(gatewayid=nil, name=nil, description=nil, enablecls=nil, internetpaymode=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
          @EnableCls = enablecls
          @InternetPayMode = internetpaymode
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
          @EnableCls = params['EnableCls']
          @InternetPayMode = params['InternetPayMode']
        end
      end

      # ModifyCloudNativeAPIGateway返回参数结构体
      class ModifyCloudNativeAPIGatewayResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :GatewayId, :ServiceID, :RouteID, :RouteName, :Methods, :Hosts, :Paths, :Protocols, :PreserveHost, :HttpsRedirectStatusCode, :StripPath, :ForceHttps, :DestinationPorts, :Headers
        extend Gem::Deprecate
        deprecate :ForceHttps, :none, 2023, 9
        deprecate :ForceHttps=, :none, 2023, 9

        def initialize(gatewayid=nil, serviceid=nil, routeid=nil, routename=nil, methods=nil, hosts=nil, paths=nil, protocols=nil, preservehost=nil, httpsredirectstatuscode=nil, strippath=nil, forcehttps=nil, destinationports=nil, headers=nil)
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
        end
      end

      # ModifyCloudNativeAPIGatewayRoute返回参数结构体
      class ModifyCloudNativeAPIGatewayRouteResponse < TencentCloud::Common::AbstractModel
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
        # @param Path: 请求路径
        # @type Path: String
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

        attr_accessor :GatewayId, :Name, :Protocol, :Path, :Timeout, :Retries, :UpstreamType, :UpstreamInfo, :ID

        def initialize(gatewayid=nil, name=nil, protocol=nil, path=nil, timeout=nil, retries=nil, upstreamtype=nil, upstreaminfo=nil, id=nil)
          @GatewayId = gatewayid
          @Name = name
          @Protocol = protocol
          @Path = path
          @Timeout = timeout
          @Retries = retries
          @UpstreamType = upstreamtype
          @UpstreamInfo = upstreaminfo
          @ID = id
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Path = params['Path']
          @Timeout = params['Timeout']
          @Retries = params['Retries']
          @UpstreamType = params['UpstreamType']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = KongUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          @ID = params['ID']
        end
      end

      # ModifyCloudNativeAPIGatewayService返回参数结构体
      class ModifyCloudNativeAPIGatewayServiceResponse < TencentCloud::Common::AbstractModel
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

      # Nacos副本信息
      class NacosReplica < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Role: 角色
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingStrategy: :class:`Tencentcloud::Tse.v20201207.models.CloudNativeAPIGatewayStrategy`
        # @param GatewayId: 网关实例 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayId: String
        # @param InternetMaxBandwidthOut: 带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param SubnetIds: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: String

        attr_accessor :GroupId, :Name, :Description, :NodeConfig, :Status, :CreateTime, :IsFirstGroup, :BindingStrategy, :GatewayId, :InternetMaxBandwidthOut, :ModifyTime, :SubnetIds

        def initialize(groupid=nil, name=nil, description=nil, nodeconfig=nil, status=nil, createtime=nil, isfirstgroup=nil, bindingstrategy=nil, gatewayid=nil, internetmaxbandwidthout=nil, modifytime=nil, subnetids=nil)
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

      # 查询Limiter的接入地址
      class PolarisLimiterAddress < TencentCloud::Common::AbstractModel
        # @param IntranetAddress: VPC接入IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetAddress: String

        attr_accessor :IntranetAddress

        def initialize(intranetaddress=nil)
          @IntranetAddress = intranetaddress
        end

        def deserialize(params)
          @IntranetAddress = params['IntranetAddress']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String
        # @param Headers: Headers
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param HttpStatus: http状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param EnableStorage: 是否开启持久化存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableStorage: Boolean
        # @param StorageType: 数据存储方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param StorageCapacity: 云硬盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageCapacity: Integer
        # @param Paymode: 计费方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paymode: String
        # @param EKSClusterID: EKS集群的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EKSClusterID: String
        # @param CreateTime: 集群创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param EnvInfos: 环境配置信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvInfos: Array
        # @param EngineRegion: 引擎所在的区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String
        # @param EnableInternet: 注册引擎是否开启公网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableInternet: Boolean
        # @param VpcInfos: 私有网络列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcInfos: Array
        # @param ServiceGovernanceInfos: 服务治理相关信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGovernanceInfos: Array
        # @param Tags: 实例的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param EnableConsoleInternet: 引擎实例是否开启控制台公网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableConsoleInternet: Boolean
        # @param EnableConsoleIntranet: 引擎实例是否开启控制台内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableConsoleIntranet: Boolean
        # @param ConfigInfoVisible: 引擎实例是否展示参数配置页面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigInfoVisible: Boolean
        # @param ConsoleDefaultPwd: 引擎实例控制台默认密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleDefaultPwd: String
        # @param TradeType: 交易付费类型，0后付费/1预付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeType: Integer
        # @param AutoRenewFlag: 自动续费标记：0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 预付费到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String
        # @param IsolateTime: 隔离开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String
        # @param RegionInfos: 实例地域相关的描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionInfos: Array
        # @param EKSType: 所在EKS环境，分为common和yunti
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EKSType: String
        # @param FeatureVersion: 引擎的产品版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureVersion: String
        # @param EnableClientIntranet: 引擎实例是否开启客户端内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableClientIntranet: Boolean

        attr_accessor :InstanceId, :Name, :Edition, :Status, :SpecId, :Replica, :Type, :VpcId, :SubnetIds, :EnableStorage, :StorageType, :StorageCapacity, :Paymode, :EKSClusterID, :CreateTime, :EnvInfos, :EngineRegion, :EnableInternet, :VpcInfos, :ServiceGovernanceInfos, :Tags, :EnableConsoleInternet, :EnableConsoleIntranet, :ConfigInfoVisible, :ConsoleDefaultPwd, :TradeType, :AutoRenewFlag, :CurDeadline, :IsolateTime, :RegionInfos, :EKSType, :FeatureVersion, :EnableClientIntranet

        def initialize(instanceid=nil, name=nil, edition=nil, status=nil, specid=nil, replica=nil, type=nil, vpcid=nil, subnetids=nil, enablestorage=nil, storagetype=nil, storagecapacity=nil, paymode=nil, eksclusterid=nil, createtime=nil, envinfos=nil, engineregion=nil, enableinternet=nil, vpcinfos=nil, servicegovernanceinfos=nil, tags=nil, enableconsoleinternet=nil, enableconsoleintranet=nil, configinfovisible=nil, consoledefaultpwd=nil, tradetype=nil, autorenewflag=nil, curdeadline=nil, isolatetime=nil, regioninfos=nil, ekstype=nil, featureversion=nil, enableclientintranet=nil)
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

        attr_accessor :EngineRegion, :BoundK8SInfos, :VpcInfos, :AuthOpen, :Features, :MainPassword, :PgwVpcInfos, :LimiterVpcInfos

        def initialize(engineregion=nil, boundk8sinfos=nil, vpcinfos=nil, authopen=nil, features=nil, mainpassword=nil, pgwvpcinfos=nil, limitervpcinfos=nil)
          @EngineRegion = engineregion
          @BoundK8SInfos = boundk8sinfos
          @VpcInfos = vpcinfos
          @AuthOpen = authopen
          @Features = features
          @MainPassword = mainpassword
          @PgwVpcInfos = pgwvpcinfos
          @LimiterVpcInfos = limitervpcinfos
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
        end
      end

      # 更新云原生API网关响应结果。
      class UpdateCloudNativeAPIGatewayResult < TencentCloud::Common::AbstractModel
        # @param GatewayId: 云原生API网关ID。
        # @type GatewayId: String
        # @param Status: 云原生网关状态。
        # @type Status: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 私有网络信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param IntranetAddress: 内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetAddress: String

        attr_accessor :VpcId, :SubnetId, :IntranetAddress

        def initialize(vpcid=nil, subnetid=nil, intranetaddress=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @IntranetAddress = intranetaddress
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @IntranetAddress = params['IntranetAddress']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param AliasName: 别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

