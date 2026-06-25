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
  module Cngw
    module V20230418
      # AI 网关 ACL 授权主体（Consumer / ConsumerGroup 共用结构），用于响应中回显 Id + Name，减少前端多次查询调用
      class AIGWACLSubject < TencentCloud::Common::AbstractModel
        # @param Id: <p>鉴权主体ID</p>
        # @type Id: String
        # @param Name: <p>鉴权主体名称</p>
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # AI 网关中消费者组简要信息
      class AIGWConsumerGroupBrief < TencentCloud::Common::AbstractModel
        # @param Name: <p>消费者组名称</p>
        # @type Name: String
        # @param ConsumerGroupId: <p>消费者组Id</p>
        # @type ConsumerGroupId: String

        attr_accessor :Name, :ConsumerGroupId

        def initialize(name=nil, consumergroupid=nil)
          @Name = name
          @ConsumerGroupId = consumergroupid
        end

        def deserialize(params)
          @Name = params['Name']
          @ConsumerGroupId = params['ConsumerGroupId']
        end
      end

      # 跨服务降级配置
      class AIGWCrossServiceFallbackConfig < TencentCloud::Common::AbstractModel
        # @param TriggerConditions: <p>触发条件</p><p>枚举值：</p><ul><li>ServiceUnavailable： 服务不可用</li><li>ConnectionTimeout： 连接超时</li><li>RateLimited： 限流</li></ul>
        # @type TriggerConditions: Array
        # @param FallbackServiceChain: <p>fallback 服务链</p>
        # @type FallbackServiceChain: Array
        # @param QuotaFallbackTrigger: <p>额度降级触发配置</p>
        # @type QuotaFallbackTrigger: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMQuotaFallbackTrigger`

        attr_accessor :TriggerConditions, :FallbackServiceChain, :QuotaFallbackTrigger

        def initialize(triggerconditions=nil, fallbackservicechain=nil, quotafallbacktrigger=nil)
          @TriggerConditions = triggerconditions
          @FallbackServiceChain = fallbackservicechain
          @QuotaFallbackTrigger = quotafallbacktrigger
        end

        def deserialize(params)
          @TriggerConditions = params['TriggerConditions']
          unless params['FallbackServiceChain'].nil?
            @FallbackServiceChain = []
            params['FallbackServiceChain'].each do |i|
              aigwfallbackserviceitem_tmp = AIGWFallbackServiceItem.new
              aigwfallbackserviceitem_tmp.deserialize(i)
              @FallbackServiceChain << aigwfallbackserviceitem_tmp
            end
          end
          unless params['QuotaFallbackTrigger'].nil?
            @QuotaFallbackTrigger = AIGWLLMQuotaFallbackTrigger.new
            @QuotaFallbackTrigger.deserialize(params['QuotaFallbackTrigger'])
          end
        end
      end

      # AI 网关自定义脱敏规则（A 层 / B 层共用结构体，MaskFormat 含义随所属层不同）
      class AIGWCustomDesensitizeRule < TencentCloud::Common::AbstractModel
        # @param Name: <p>自定义脱敏规则名称</p>
        # @type Name: String
        # @param Pattern: <p>自定义脱敏规则匹配正则</p>
        # @type Pattern: String
        # @param MaskFormat: <p>自定义脱敏规则掩码</p>
        # @type MaskFormat: String
        # @param Enabled: <p>自定义脱敏规则开关</p>
        # @type Enabled: Boolean

        attr_accessor :Name, :Pattern, :MaskFormat, :Enabled

        def initialize(name=nil, pattern=nil, maskformat=nil, enabled=nil)
          @Name = name
          @Pattern = pattern
          @MaskFormat = maskformat
          @Enabled = enabled
        end

        def deserialize(params)
          @Name = params['Name']
          @Pattern = params['Pattern']
          @MaskFormat = params['MaskFormat']
          @Enabled = params['Enabled']
        end
      end

      # 降级服务元素
      class AIGWFallbackServiceItem < TencentCloud::Common::AbstractModel
        # @param ModelServiceId: <p>模型服务 Id</p>
        # @type ModelServiceId: String
        # @param ModelServiceName: <p>模型服务名</p>
        # @type ModelServiceName: String

        attr_accessor :ModelServiceId, :ModelServiceName

        def initialize(modelserviceid=nil, modelservicename=nil)
          @ModelServiceId = modelserviceid
          @ModelServiceName = modelservicename
        end

        def deserialize(params)
          @ModelServiceId = params['ModelServiceId']
          @ModelServiceName = params['ModelServiceName']
        end
      end

      # AI 网关 A 层转发脱敏配置（请求转发到 LLM 供应商前对 messages 替换为占位符）
      class AIGWForwardDesensitizeConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: <p>转发脱敏开关</p>
        # @type Enabled: Boolean
        # @param PredefinedRuleTypes: <p>预定义规则类型</p><p>枚举值：</p><ul><li>Phone： 电话号码</li><li>IdCard： 身份证号</li><li>BankCard： 银行卡号</li><li>Email： 电子邮箱地址</li><li>IP： IP地址</li><li>Name： 姓名</li></ul>
        # @type PredefinedRuleTypes: Array
        # @param CustomRules: <p>自定义脱敏规则</p>
        # @type CustomRules: Array
        # @param PlaceholderFormat: <p>掩码</p>
        # @type PlaceholderFormat: String
        # @param OnFailure: <p>脱敏异常处理</p><p>枚举值：</p><ul><li>Reject： 拒绝请求</li><li>Skip： 跳过</li></ul>
        # @type OnFailure: String

        attr_accessor :Enabled, :PredefinedRuleTypes, :CustomRules, :PlaceholderFormat, :OnFailure

        def initialize(enabled=nil, predefinedruletypes=nil, customrules=nil, placeholderformat=nil, onfailure=nil)
          @Enabled = enabled
          @PredefinedRuleTypes = predefinedruletypes
          @CustomRules = customrules
          @PlaceholderFormat = placeholderformat
          @OnFailure = onfailure
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @PredefinedRuleTypes = params['PredefinedRuleTypes']
          unless params['CustomRules'].nil?
            @CustomRules = []
            params['CustomRules'].each do |i|
              aigwcustomdesensitizerule_tmp = AIGWCustomDesensitizeRule.new
              aigwcustomdesensitizerule_tmp.deserialize(i)
              @CustomRules << aigwcustomdesensitizerule_tmp
            end
          end
          @PlaceholderFormat = params['PlaceholderFormat']
          @OnFailure = params['OnFailure']
        end
      end

      # 用于定义kong插件自定义健康检查的配置
      class AIGWHealthCheckSetting < TencentCloud::Common::AbstractModel
        # @param HealthCheckType: <p>健康检查类型</p><p>枚举值：</p><ul><li>MCP： 标准mcp</li><li>HTTP： http</li></ul>
        # @type HealthCheckType: String
        # @param HealthCheckIntervalSecond: <p>检查间隔</p>
        # @type HealthCheckIntervalSecond: Integer
        # @param HealthCheckTimeout: <p>检查超时时间</p>
        # @type HealthCheckTimeout: Integer
        # @param HealthCheckFailThreshold: <p>检查失败阈值</p>
        # @type HealthCheckFailThreshold: Integer
        # @param HealthCheckRecoverThreshold: <p>检查恢复阈值</p>
        # @type HealthCheckRecoverThreshold: Integer
        # @param HealthCheckPath: <p>检查路径</p>
        # @type HealthCheckPath: String
        # @param HealthCheckMethod: <p>检查方法</p>
        # @type HealthCheckMethod: String

        attr_accessor :HealthCheckType, :HealthCheckIntervalSecond, :HealthCheckTimeout, :HealthCheckFailThreshold, :HealthCheckRecoverThreshold, :HealthCheckPath, :HealthCheckMethod

        def initialize(healthchecktype=nil, healthcheckintervalsecond=nil, healthchecktimeout=nil, healthcheckfailthreshold=nil, healthcheckrecoverthreshold=nil, healthcheckpath=nil, healthcheckmethod=nil)
          @HealthCheckType = healthchecktype
          @HealthCheckIntervalSecond = healthcheckintervalsecond
          @HealthCheckTimeout = healthchecktimeout
          @HealthCheckFailThreshold = healthcheckfailthreshold
          @HealthCheckRecoverThreshold = healthcheckrecoverthreshold
          @HealthCheckPath = healthcheckpath
          @HealthCheckMethod = healthcheckmethod
        end

        def deserialize(params)
          @HealthCheckType = params['HealthCheckType']
          @HealthCheckIntervalSecond = params['HealthCheckIntervalSecond']
          @HealthCheckTimeout = params['HealthCheckTimeout']
          @HealthCheckFailThreshold = params['HealthCheckFailThreshold']
          @HealthCheckRecoverThreshold = params['HealthCheckRecoverThreshold']
          @HealthCheckPath = params['HealthCheckPath']
          @HealthCheckMethod = params['HealthCheckMethod']
        end
      end

      # AI 网关意图路由配置
      class AIGWIntentRoute < TencentCloud::Common::AbstractModel
        # @param IntentModelServiceId: <p>意图识别模型id</p>
        # @type IntentModelServiceId: String
        # @param ConfidenceThreshold: <p>置信度</p>
        # @type ConfidenceThreshold: Float
        # @param DefaultModelServiceId: <p>默认服务id</p>
        # @type DefaultModelServiceId: String
        # @param Rules: <p>规则</p>
        # @type Rules: Array

        attr_accessor :IntentModelServiceId, :ConfidenceThreshold, :DefaultModelServiceId, :Rules

        def initialize(intentmodelserviceid=nil, confidencethreshold=nil, defaultmodelserviceid=nil, rules=nil)
          @IntentModelServiceId = intentmodelserviceid
          @ConfidenceThreshold = confidencethreshold
          @DefaultModelServiceId = defaultmodelserviceid
          @Rules = rules
        end

        def deserialize(params)
          @IntentModelServiceId = params['IntentModelServiceId']
          @ConfidenceThreshold = params['ConfidenceThreshold']
          @DefaultModelServiceId = params['DefaultModelServiceId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              aigwintentrouterule_tmp = AIGWIntentRouteRule.new
              aigwintentrouterule_tmp.deserialize(i)
              @Rules << aigwintentrouterule_tmp
            end
          end
        end
      end

      # AI 网关意图路由规则
      class AIGWIntentRouteRule < TencentCloud::Common::AbstractModel
        # @param IntentCode: <p>意图编码</p><p>枚举值：</p><ul><li>Coder： 代码编写</li><li>Math： 数学计算</li><li>Translation： 翻译</li><li>Flash： 快速问答</li><li>Complex： 复杂推理</li></ul>
        # @type IntentCode: String
        # @param ModelServiceId: <p>模型服务id</p>
        # @type ModelServiceId: String

        attr_accessor :IntentCode, :ModelServiceId

        def initialize(intentcode=nil, modelserviceid=nil)
          @IntentCode = intentcode
          @ModelServiceId = modelserviceid
        end

        def deserialize(params)
          @IntentCode = params['IntentCode']
          @ModelServiceId = params['ModelServiceId']
        end
      end

      # 路由匹配规则
      class AIGWKVMatch < TencentCloud::Common::AbstractModel
        # @param Key: <p>键</p>
        # @type Key: String
        # @param Value: <p>值</p>
        # @type Value: String
        # @param Operator: <p>操作类型</p>
        # @type Operator: String

        attr_accessor :Key, :Value, :Operator

        def initialize(key=nil, value=nil, operator=nil)
          @Key = key
          @Value = value
          @Operator = operator
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Operator = params['Operator']
        end
      end

      # 云原生网关模型API 配额降级触发条件信息
      class AIGWLLMQuotaFallbackTrigger < TencentCloud::Common::AbstractModel
        # @param ThresholdPercent: <p>配额感知阈值百分比（RPM 与 TPM 共用）</p><p>取值范围：[0, 99]</p>
        # @type ThresholdPercent: Integer
        # @param CheckDimension: <p>检查维度策略</p><p>枚举值：</p><ul><li>AnyInsufficient：  RPM 或 TPM 任一不足即触发</li><li>AllInsufficient： RPM 和 TPM 同时不足才触发</li></ul>
        # @type CheckDimension: String

        attr_accessor :ThresholdPercent, :CheckDimension

        def initialize(thresholdpercent=nil, checkdimension=nil)
          @ThresholdPercent = thresholdpercent
          @CheckDimension = checkdimension
        end

        def deserialize(params)
          @ThresholdPercent = params['ThresholdPercent']
          @CheckDimension = params['CheckDimension']
        end
      end

      # 云原生网关模型LLM配额限制信息
      class AIGWLLMQuotaLimit < TencentCloud::Common::AbstractModel
        # @param RPMLimit: <p>该模型服务每分钟请求数上限，0 表示该维度不限</p>
        # @type RPMLimit: Integer
        # @param TPMLimit: <p>该模型服务每分钟 Token 数上限，0 表示该维度不限</p>
        # @type TPMLimit: Integer

        attr_accessor :RPMLimit, :TPMLimit

        def initialize(rpmlimit=nil, tpmlimit=nil)
          @RPMLimit = rpmlimit
          @TPMLimit = tpmlimit
        end

        def deserialize(params)
          @RPMLimit = params['RPMLimit']
          @TPMLimit = params['TPMLimit']
        end
      end

      # 单个消费者 Token 用量查询结果
      class AIGWLLMTokenUsageItem < TencentCloud::Common::AbstractModel
        # @param ConsumerId: <p>消费者Id</p>
        # @type ConsumerId: String
        # @param ConsumerName: <p>消费者名称</p>
        # @type ConsumerName: String
        # @param ConsumerGroups: <p>消费者组信息列表</p>
        # @type ConsumerGroups: Array
        # @param ModelServiceId: <p>模型服务Id</p>
        # @type ModelServiceId: String
        # @param ModelServiceName: <p>模型服务名称</p>
        # @type ModelServiceName: String
        # @param InputTokens: <p>输入Token数（包含缓存命中Token数）</p>
        # @type InputTokens: Integer
        # @param CacheReadInputTokens: <p>命中缓存输入Token数</p>
        # @type CacheReadInputTokens: Integer
        # @param OutputTokens: <p>输出Token数</p>
        # @type OutputTokens: Integer
        # @param TotalTokens: <p>消耗总Token数</p>
        # @type TotalTokens: Integer
        # @param RequestCount: <p>请求总数</p>
        # @type RequestCount: Integer
        # @param Cost: <p>花费成本</p>
        # @type Cost: String
        # @param Currency: <p>成本货币单位</p><p>枚举值：</p><ul><li>CNY： 人民币</li></ul><p>当前仅支持CNY</p>
        # @type Currency: String

        attr_accessor :ConsumerId, :ConsumerName, :ConsumerGroups, :ModelServiceId, :ModelServiceName, :InputTokens, :CacheReadInputTokens, :OutputTokens, :TotalTokens, :RequestCount, :Cost, :Currency

        def initialize(consumerid=nil, consumername=nil, consumergroups=nil, modelserviceid=nil, modelservicename=nil, inputtokens=nil, cachereadinputtokens=nil, outputtokens=nil, totaltokens=nil, requestcount=nil, cost=nil, currency=nil)
          @ConsumerId = consumerid
          @ConsumerName = consumername
          @ConsumerGroups = consumergroups
          @ModelServiceId = modelserviceid
          @ModelServiceName = modelservicename
          @InputTokens = inputtokens
          @CacheReadInputTokens = cachereadinputtokens
          @OutputTokens = outputtokens
          @TotalTokens = totaltokens
          @RequestCount = requestcount
          @Cost = cost
          @Currency = currency
        end

        def deserialize(params)
          @ConsumerId = params['ConsumerId']
          @ConsumerName = params['ConsumerName']
          unless params['ConsumerGroups'].nil?
            @ConsumerGroups = []
            params['ConsumerGroups'].each do |i|
              aigwconsumergroupbrief_tmp = AIGWConsumerGroupBrief.new
              aigwconsumergroupbrief_tmp.deserialize(i)
              @ConsumerGroups << aigwconsumergroupbrief_tmp
            end
          end
          @ModelServiceId = params['ModelServiceId']
          @ModelServiceName = params['ModelServiceName']
          @InputTokens = params['InputTokens']
          @CacheReadInputTokens = params['CacheReadInputTokens']
          @OutputTokens = params['OutputTokens']
          @TotalTokens = params['TotalTokens']
          @RequestCount = params['RequestCount']
          @Cost = params['Cost']
          @Currency = params['Currency']
        end
      end

      # Token用量统计结果
      class AIGWLLMTokenUsageListResult < TencentCloud::Common::AbstractModel
        # @param DataList: <p>Token用量明细返回结果列表</p>
        # @type DataList: Array
        # @param TotalCount: <p>结果总数</p>
        # @type TotalCount: Integer

        attr_accessor :DataList, :TotalCount

        def initialize(datalist=nil, totalcount=nil)
          @DataList = datalist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              aigwllmtokenusageitem_tmp = AIGWLLMTokenUsageItem.new
              aigwllmtokenusageitem_tmp.deserialize(i)
              @DataList << aigwllmtokenusageitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # AI 网关token消耗统计汇总响应结果
      class AIGWLLMTokenUsageStatisticsResult < TencentCloud::Common::AbstractModel
        # @param TotalRequestCount: <p>查询时间范围内请求总数</p>
        # @type TotalRequestCount: Integer
        # @param TotalInputTokens: <p>查询时间范围内总输入Token数（包含命中缓存的Token数）</p>
        # @type TotalInputTokens: Integer
        # @param TotalOutputTokens: <p>查询时间范围内总输出Token数</p>
        # @type TotalOutputTokens: Integer
        # @param TotalCachedReadInputTokens: <p>查询时间范围内总命中缓存输入Token数</p>
        # @type TotalCachedReadInputTokens: Integer
        # @param TotalCost: <p>查询时间范围内总成本</p>
        # @type TotalCost: String
        # @param Currency: <p>成本货币单位</p>
        # @type Currency: String
        # @param TopConsumers: <p>查询时间范围内成本最高的消费者</p>
        # @type TopConsumers: Array

        attr_accessor :TotalRequestCount, :TotalInputTokens, :TotalOutputTokens, :TotalCachedReadInputTokens, :TotalCost, :Currency, :TopConsumers

        def initialize(totalrequestcount=nil, totalinputtokens=nil, totaloutputtokens=nil, totalcachedreadinputtokens=nil, totalcost=nil, currency=nil, topconsumers=nil)
          @TotalRequestCount = totalrequestcount
          @TotalInputTokens = totalinputtokens
          @TotalOutputTokens = totaloutputtokens
          @TotalCachedReadInputTokens = totalcachedreadinputtokens
          @TotalCost = totalcost
          @Currency = currency
          @TopConsumers = topconsumers
        end

        def deserialize(params)
          @TotalRequestCount = params['TotalRequestCount']
          @TotalInputTokens = params['TotalInputTokens']
          @TotalOutputTokens = params['TotalOutputTokens']
          @TotalCachedReadInputTokens = params['TotalCachedReadInputTokens']
          @TotalCost = params['TotalCost']
          @Currency = params['Currency']
          unless params['TopConsumers'].nil?
            @TopConsumers = []
            params['TopConsumers'].each do |i|
              aigwtopconsumersitem_tmp = AIGWTopConsumersItem.new
              aigwtopconsumersitem_tmp.deserialize(i)
              @TopConsumers << aigwtopconsumersitem_tmp
            end
          end
        end
      end

      # 延迟优先路由配置
      class AIGWLatencyPriorityConfig < TencentCloud::Common::AbstractModel
        # @param Rules: <p>路由规则列表</p>
        # @type Rules: Array
        # @param LatencyMetric: <p>延迟指标</p><p>枚举值：</p><ul><li>LLMLatency： LLM 延迟</li><li>NetworkLatency： 网络延迟</li></ul>
        # @type LatencyMetric: String
        # @param RouteMode: <p>路由策略</p><p>枚举值：</p><ul><li>FastMode： 快速模式</li><li>BalanceMode： 均衡模式</li></ul>
        # @type RouteMode: String

        attr_accessor :Rules, :LatencyMetric, :RouteMode

        def initialize(rules=nil, latencymetric=nil, routemode=nil)
          @Rules = rules
          @LatencyMetric = latencymetric
          @RouteMode = routemode
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              aigwlatencypriorityrouterule_tmp = AIGWLatencyPriorityRouteRule.new
              aigwlatencypriorityrouterule_tmp.deserialize(i)
              @Rules << aigwlatencypriorityrouterule_tmp
            end
          end
          @LatencyMetric = params['LatencyMetric']
          @RouteMode = params['RouteMode']
        end
      end

      # AI 网关延迟优先路由模型服务
      class AIGWLatencyPriorityRouteRule < TencentCloud::Common::AbstractModel
        # @param ModelServiceId: <p>模型服务id</p>
        # @type ModelServiceId: String

        attr_accessor :ModelServiceId

        def initialize(modelserviceid=nil)
          @ModelServiceId = modelserviceid
        end

        def deserialize(params)
          @ModelServiceId = params['ModelServiceId']
        end
      end

      # AI 网关日志输出配置
      class AIGWLogConfig < TencentCloud::Common::AbstractModel
        # @param EnableRequestLogPayloads: <p>是否开启请求 payload 记录日志</p>
        # @type EnableRequestLogPayloads: Boolean
        # @param EnableResponseLogPayloads: <p>是否开启响应 payload 记录日志</p>
        # @type EnableResponseLogPayloads: Boolean
        # @param RequestLogPayloadMaxSize: <p>日志记录的请求body的最大字节数</p><p>取值范围：[512, 1048576]</p><p>EnableRequestLogPayloads 为true时必填</p>
        # @type RequestLogPayloadMaxSize: Integer
        # @param ResponseLogPayloadMaxSize: <p>日志记录的响应body的最大字节数</p><p>取值范围：[512, 1048576]</p><p>EnableResponseLogPayloads 为true时必填</p>
        # @type ResponseLogPayloadMaxSize: Integer

        attr_accessor :EnableRequestLogPayloads, :EnableResponseLogPayloads, :RequestLogPayloadMaxSize, :ResponseLogPayloadMaxSize

        def initialize(enablerequestlogpayloads=nil, enableresponselogpayloads=nil, requestlogpayloadmaxsize=nil, responselogpayloadmaxsize=nil)
          @EnableRequestLogPayloads = enablerequestlogpayloads
          @EnableResponseLogPayloads = enableresponselogpayloads
          @RequestLogPayloadMaxSize = requestlogpayloadmaxsize
          @ResponseLogPayloadMaxSize = responselogpayloadmaxsize
        end

        def deserialize(params)
          @EnableRequestLogPayloads = params['EnableRequestLogPayloads']
          @EnableResponseLogPayloads = params['EnableResponseLogPayloads']
          @RequestLogPayloadMaxSize = params['RequestLogPayloadMaxSize']
          @ResponseLogPayloadMaxSize = params['ResponseLogPayloadMaxSize']
        end
      end

      # AI 网关 B 层日志脱敏配置（写入 LLM Log 前对 payload 掩码）
      class AIGWLogDesensitizeConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: <p>日志脱敏开关</p>
        # @type Enabled: Boolean
        # @param PredefinedRuleTypes: <p>预定义规则类型</p><p>枚举值：</p><ul><li>Phone： 电话号码</li><li>IdCard： 身份证号</li><li>BankCard： 银行卡号</li><li>Email： 邮箱地址</li><li>IP： IP地址</li><li>Name： 姓名</li></ul>
        # @type PredefinedRuleTypes: Array
        # @param CustomRules: <p>自定义脱敏规则</p>
        # @type CustomRules: Array
        # @param Scope: <p>日志脱敏范围</p><p>枚举值：</p><ul><li>Request： 请求</li><li>Response： 响应</li></ul>
        # @type Scope: Array

        attr_accessor :Enabled, :PredefinedRuleTypes, :CustomRules, :Scope

        def initialize(enabled=nil, predefinedruletypes=nil, customrules=nil, scope=nil)
          @Enabled = enabled
          @PredefinedRuleTypes = predefinedruletypes
          @CustomRules = customrules
          @Scope = scope
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @PredefinedRuleTypes = params['PredefinedRuleTypes']
          unless params['CustomRules'].nil?
            @CustomRules = []
            params['CustomRules'].each do |i|
              aigwcustomdesensitizerule_tmp = AIGWCustomDesensitizeRule.new
              aigwcustomdesensitizerule_tmp.deserialize(i)
              @CustomRules << aigwcustomdesensitizerule_tmp
            end
          end
          @Scope = params['Scope']
        end
      end

      # MCP Server详情
      class AIGWMCPServer < TencentCloud::Common::AbstractModel
        # @param ServerId: <p>MCP Server ID</p>
        # @type ServerId: String
        # @param Name: <p>MCP Server名称</p>
        # @type Name: String
        # @param ServerType: <p>MCP Server类型，取值：MCP/Rest2MCP</p>
        # @type ServerType: String
        # @param Transport: <p>协议类型，取值: StreamableHttp</p>
        # @type Transport: String
        # @param UpstreamType: <p>服务类型：</p><ul><li>Registry  </li><li>HostIP</li></ul>
        # @type UpstreamType: String
        # @param DisplayName: <p>展示名字</p>
        # @type DisplayName: String
        # @param MCPEndpoint: <p>MCP提供给客户端的Endpoint</p>
        # @type MCPEndpoint: String
        # @param UpstreamInfo: <p>注册中心来源信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamInfo: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPUpstreamInfoDetail`
        # @param SessionConfig: <p>会话配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPSessionConfig`
        # @param Timeout: <p>超时时间，单位ms</p>
        # @type Timeout: Integer
        # @param RetryCount: <p>失败重试次数</p>
        # @type RetryCount: Integer
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Status: <p>运行状态</p><p>枚举值：</p><ul><li>Online： 在线</li><li>Offline： 离线</li><li>Error： 错误</li></ul>
        # @type Status: String
        # @param EnableHealthCheck: <p>是否启用健康检查</p>
        # @type EnableHealthCheck: Boolean
        # @param HealthCheck: <p>健康检查配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Cngw.v20230418.models.AIGWHealthCheckSetting`
        # @param ToolCountLimit: <p>Tool分组内工具数量限制</p>
        # @type ToolCountLimit: Integer
        # @param ConflictStrategy: <p>Tool分组内工具命名冲突策略</p><p>枚举值：</p><ul><li>AutoPrefix： 自动前缀</li><li>Reject： 拒绝</li></ul>
        # @type ConflictStrategy: String
        # @param MarketStatus: <p>MCP 市场发布状态</p><p>枚举值：</p><ul><li>None： 未发布</li><li>Published： 已发布</li></ul>
        # @type MarketStatus: String

        attr_accessor :ServerId, :Name, :ServerType, :Transport, :UpstreamType, :DisplayName, :MCPEndpoint, :UpstreamInfo, :SessionConfig, :Timeout, :RetryCount, :CreateTime, :UpdateTime, :Description, :Status, :EnableHealthCheck, :HealthCheck, :ToolCountLimit, :ConflictStrategy, :MarketStatus

        def initialize(serverid=nil, name=nil, servertype=nil, transport=nil, upstreamtype=nil, displayname=nil, mcpendpoint=nil, upstreaminfo=nil, sessionconfig=nil, timeout=nil, retrycount=nil, createtime=nil, updatetime=nil, description=nil, status=nil, enablehealthcheck=nil, healthcheck=nil, toolcountlimit=nil, conflictstrategy=nil, marketstatus=nil)
          @ServerId = serverid
          @Name = name
          @ServerType = servertype
          @Transport = transport
          @UpstreamType = upstreamtype
          @DisplayName = displayname
          @MCPEndpoint = mcpendpoint
          @UpstreamInfo = upstreaminfo
          @SessionConfig = sessionconfig
          @Timeout = timeout
          @RetryCount = retrycount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Description = description
          @Status = status
          @EnableHealthCheck = enablehealthcheck
          @HealthCheck = healthcheck
          @ToolCountLimit = toolcountlimit
          @ConflictStrategy = conflictstrategy
          @MarketStatus = marketstatus
        end

        def deserialize(params)
          @ServerId = params['ServerId']
          @Name = params['Name']
          @ServerType = params['ServerType']
          @Transport = params['Transport']
          @UpstreamType = params['UpstreamType']
          @DisplayName = params['DisplayName']
          @MCPEndpoint = params['MCPEndpoint']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = AIGWMCPUpstreamInfoDetail.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          unless params['SessionConfig'].nil?
            @SessionConfig = AIGWMCPSessionConfig.new
            @SessionConfig.deserialize(params['SessionConfig'])
          end
          @Timeout = params['Timeout']
          @RetryCount = params['RetryCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Description = params['Description']
          @Status = params['Status']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheck'].nil?
            @HealthCheck = AIGWHealthCheckSetting.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @ToolCountLimit = params['ToolCountLimit']
          @ConflictStrategy = params['ConflictStrategy']
          @MarketStatus = params['MarketStatus']
        end
      end

      # AI 网关 MCP Server ACL 配置详情
      class AIGWMCPServerACLResult < TencentCloud::Common::AbstractModel
        # @param ACLType: <p>黑白名单鉴权类型</p><p>枚举值：</p><ul><li>None： 不鉴权</li><li>Allow： 白名单</li><li>Deny： 黑名单</li></ul>
        # @type ACLType: String
        # @param ACLConsumers: <p>关联的消费者ID列表</p>
        # @type ACLConsumers: Array
        # @param ACLConsumerGroups: <p>关联的消费者组ID列表</p>
        # @type ACLConsumerGroups: Array
        # @param AuthType: <p>认证类型</p><p>枚举值：</p><ul><li>None： 无认证</li><li>ApiKey： API Key认证</li></ul>
        # @type AuthType: String

        attr_accessor :ACLType, :ACLConsumers, :ACLConsumerGroups, :AuthType

        def initialize(acltype=nil, aclconsumers=nil, aclconsumergroups=nil, authtype=nil)
          @ACLType = acltype
          @ACLConsumers = aclconsumers
          @ACLConsumerGroups = aclconsumergroups
          @AuthType = authtype
        end

        def deserialize(params)
          @ACLType = params['ACLType']
          unless params['ACLConsumers'].nil?
            @ACLConsumers = []
            params['ACLConsumers'].each do |i|
              aigwaclsubject_tmp = AIGWACLSubject.new
              aigwaclsubject_tmp.deserialize(i)
              @ACLConsumers << aigwaclsubject_tmp
            end
          end
          unless params['ACLConsumerGroups'].nil?
            @ACLConsumerGroups = []
            params['ACLConsumerGroups'].each do |i|
              aigwaclsubject_tmp = AIGWACLSubject.new
              aigwaclsubject_tmp.deserialize(i)
              @ACLConsumerGroups << aigwaclsubject_tmp
            end
          end
          @AuthType = params['AuthType']
        end
      end

      # AI 网关 MCP Server 认证配置详情
      class AIGWMCPServerAuthResult < TencentCloud::Common::AbstractModel
        # @param AuthType: <p>MCP服务认证类型</p><p>枚举值：</p><ul><li>None： 无认证</li><li>ApiKey： API Key认证</li></ul>
        # @type AuthType: String

        attr_accessor :AuthType

        def initialize(authtype=nil)
          @AuthType = authtype
        end

        def deserialize(params)
          @AuthType = params['AuthType']
        end
      end

      # MCP Server 列表
      class AIGWMCPServerList < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param DataList: <p>mcp server 数据列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataList: Array

        attr_accessor :TotalCount, :DataList

        def initialize(totalcount=nil, datalist=nil)
          @TotalCount = totalcount
          @DataList = datalist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              aigwmcpserver_tmp = AIGWMCPServer.new
              aigwmcpserver_tmp.deserialize(i)
              @DataList << aigwmcpserver_tmp
            end
          end
        end
      end

      # 云原生网关MCP会话配置
      class AIGWMCPSessionConfig < TencentCloud::Common::AbstractModel
        # @param SessionStorage: <p>会话存储类型</p><p>枚举值：</p><ul><li>memory： 内存</li><li>redis： redis</li></ul>
        # @type SessionStorage: String
        # @param RedisConfig: <p>Redis配置</p>
        # @type RedisConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWRedisConfig`

        attr_accessor :SessionStorage, :RedisConfig

        def initialize(sessionstorage=nil, redisconfig=nil)
          @SessionStorage = sessionstorage
          @RedisConfig = redisconfig
        end

        def deserialize(params)
          @SessionStorage = params['SessionStorage']
          unless params['RedisConfig'].nil?
            @RedisConfig = AIGWRedisConfig.new
            @RedisConfig.deserialize(params['RedisConfig'])
          end
        end
      end

      # AI 网关 Tool ACL 单条记录（DescribeMCPToolACLList 数组元素）
      class AIGWMCPToolACLItem < TencentCloud::Common::AbstractModel
        # @param ToolId: <p>MCP工具ID</p>
        # @type ToolId: String
        # @param ToolName: <p>MCP工具名称</p>
        # @type ToolName: String
        # @param ACLType: <p>MCP工具鉴权类型</p><p>枚举值：</p><ul><li>None： 继承server鉴权类型</li><li>Allow： 白名单</li><li>Deny： 黑名单</li></ul>
        # @type ACLType: String
        # @param ACLConsumers: <p>关联的消费者ID列表</p>
        # @type ACLConsumers: Array
        # @param ACLConsumerGroups: <p>关联的消费者组ID列表</p>
        # @type ACLConsumerGroups: Array

        attr_accessor :ToolId, :ToolName, :ACLType, :ACLConsumers, :ACLConsumerGroups

        def initialize(toolid=nil, toolname=nil, acltype=nil, aclconsumers=nil, aclconsumergroups=nil)
          @ToolId = toolid
          @ToolName = toolname
          @ACLType = acltype
          @ACLConsumers = aclconsumers
          @ACLConsumerGroups = aclconsumergroups
        end

        def deserialize(params)
          @ToolId = params['ToolId']
          @ToolName = params['ToolName']
          @ACLType = params['ACLType']
          unless params['ACLConsumers'].nil?
            @ACLConsumers = []
            params['ACLConsumers'].each do |i|
              aigwaclsubject_tmp = AIGWACLSubject.new
              aigwaclsubject_tmp.deserialize(i)
              @ACLConsumers << aigwaclsubject_tmp
            end
          end
          unless params['ACLConsumerGroups'].nil?
            @ACLConsumerGroups = []
            params['ACLConsumerGroups'].each do |i|
              aigwaclsubject_tmp = AIGWACLSubject.new
              aigwaclsubject_tmp.deserialize(i)
              @ACLConsumerGroups << aigwaclsubject_tmp
            end
          end
        end
      end

      # AI 网关 mcp server 下所有 tool 的 ACL 状态
      class AIGWMCPToolACLListResult < TencentCloud::Common::AbstractModel
        # @param ACLType: <p>黑白名单鉴权类型</p><p>枚举值：</p><ul><li>None： 不鉴权</li><li>Allow： 白名单</li><li>Deny： 黑名单</li></ul>
        # @type ACLType: String
        # @param DataList: <p>数据列表</p>
        # @type DataList: Array
        # @param TotalCount: <p>计数</p>
        # @type TotalCount: Integer

        attr_accessor :ACLType, :DataList, :TotalCount

        def initialize(acltype=nil, datalist=nil, totalcount=nil)
          @ACLType = acltype
          @DataList = datalist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @ACLType = params['ACLType']
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              aigwmcptoolaclitem_tmp = AIGWMCPToolACLItem.new
              aigwmcptoolaclitem_tmp.deserialize(i)
              @DataList << aigwmcptoolaclitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 云原生网关MCP后端信息,用于创建、修改请求
      class AIGWMCPUpstreamInfo < TencentCloud::Common::AbstractModel
        # @param SourceId: <p>注册中心来源ID</p>
        # @type SourceId: String
        # @param Namespace: <p>命名空间</p>
        # @type Namespace: String
        # @param MCPServerId: <p>MCP服务 id</p>
        # @type MCPServerId: String
        # @param Protocol: <p>协议，UpstreamType是Registry 时必传</p><ul><li>http</li><li>https</li></ul>
        # @type Protocol: String
        # @param Host: <p>域名或ip</p>
        # @type Host: String
        # @param Port: <p>端口</p>
        # @type Port: Integer
        # @param ServiceId: <p>服务 id</p>
        # @type ServiceId: String
        # @param ServiceGroup: <p>服务分组</p>
        # @type ServiceGroup: String
        # @param MCPEndpoint: <p>mcp endpoint</p>
        # @type MCPEndpoint: String
        # @param MessageEndpoint: <p>message端点路径，SSE协议时配置</p>
        # @type MessageEndpoint: String

        attr_accessor :SourceId, :Namespace, :MCPServerId, :Protocol, :Host, :Port, :ServiceId, :ServiceGroup, :MCPEndpoint, :MessageEndpoint

        def initialize(sourceid=nil, namespace=nil, mcpserverid=nil, protocol=nil, host=nil, port=nil, serviceid=nil, servicegroup=nil, mcpendpoint=nil, messageendpoint=nil)
          @SourceId = sourceid
          @Namespace = namespace
          @MCPServerId = mcpserverid
          @Protocol = protocol
          @Host = host
          @Port = port
          @ServiceId = serviceid
          @ServiceGroup = servicegroup
          @MCPEndpoint = mcpendpoint
          @MessageEndpoint = messageendpoint
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @Namespace = params['Namespace']
          @MCPServerId = params['MCPServerId']
          @Protocol = params['Protocol']
          @Host = params['Host']
          @Port = params['Port']
          @ServiceId = params['ServiceId']
          @ServiceGroup = params['ServiceGroup']
          @MCPEndpoint = params['MCPEndpoint']
          @MessageEndpoint = params['MessageEndpoint']
        end
      end

      # 云原生网关MCP后端信息，用于展示
      class AIGWMCPUpstreamInfoDetail < TencentCloud::Common::AbstractModel
        # @param SourceId: <p>注册中心来源ID</p>
        # @type SourceId: String
        # @param SourceName: <p>注册中心来源名称, 入参不传，用于返回</p>
        # @type SourceName: String
        # @param Namespace: <p>命名空间</p>
        # @type Namespace: String
        # @param MCPServerId: <p>服务 id</p>
        # @type MCPServerId: String
        # @param Protocol: <p>协议，UpstreamType是Registry 时必传</p><ul><li>http</li><li>https</li></ul>
        # @type Protocol: String
        # @param Host: <p>域名或ip</p>
        # @type Host: String
        # @param Port: <p>端口</p>
        # @type Port: Integer
        # @param ServiceId: <p>服务 id</p>
        # @type ServiceId: String
        # @param ServiceName: <p>服务名字</p>
        # @type ServiceName: String
        # @param ServiceGroup: <p>服务分组</p>
        # @type ServiceGroup: String
        # @param MCPEndpoint: <p>mcp endpoint</p>
        # @type MCPEndpoint: String
        # @param MessageEndpoint: <p>SSE message路径</p>
        # @type MessageEndpoint: String

        attr_accessor :SourceId, :SourceName, :Namespace, :MCPServerId, :Protocol, :Host, :Port, :ServiceId, :ServiceName, :ServiceGroup, :MCPEndpoint, :MessageEndpoint

        def initialize(sourceid=nil, sourcename=nil, namespace=nil, mcpserverid=nil, protocol=nil, host=nil, port=nil, serviceid=nil, servicename=nil, servicegroup=nil, mcpendpoint=nil, messageendpoint=nil)
          @SourceId = sourceid
          @SourceName = sourcename
          @Namespace = namespace
          @MCPServerId = mcpserverid
          @Protocol = protocol
          @Host = host
          @Port = port
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceGroup = servicegroup
          @MCPEndpoint = mcpendpoint
          @MessageEndpoint = messageendpoint
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @SourceName = params['SourceName']
          @Namespace = params['Namespace']
          @MCPServerId = params['MCPServerId']
          @Protocol = params['Protocol']
          @Host = params['Host']
          @Port = params['Port']
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceGroup = params['ServiceGroup']
          @MCPEndpoint = params['MCPEndpoint']
          @MessageEndpoint = params['MessageEndpoint']
        end
      end

      # 精确缓存 redis 配置
      class AIGWRedisConfig < TencentCloud::Common::AbstractModel
        # @param Host: <p>Host</p>
        # @type Host: String
        # @param Port: <p>端口</p>
        # @type Port: Integer
        # @param Username: <p>用户名</p>
        # @type Username: String
        # @param Password: <p>密码</p>
        # @type Password: String

        attr_accessor :Host, :Port, :Username, :Password

        def initialize(host=nil, port=nil, username=nil, password=nil)
          @Host = host
          @Port = port
          @Username = username
          @Password = password
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @Username = params['Username']
          @Password = params['Password']
        end
      end

      # AI网关标签过滤
      class AIGWTagFilter < TencentCloud::Common::AbstractModel
        # @param MatchStrategy: <p>匹配策略</p><p>枚举值：</p><ul><li>AND： 并</li><li>OR： 或</li></ul>
        # @type MatchStrategy: String
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :MatchStrategy, :Tags

        def initialize(matchstrategy=nil, tags=nil)
          @MatchStrategy = matchstrategy
          @Tags = tags
        end

        def deserialize(params)
          @MatchStrategy = params['MatchStrategy']
          @Tags = params['Tags']
        end
      end

      # 最高Token用量消费者
      class AIGWTopConsumersItem < TencentCloud::Common::AbstractModel
        # @param ConsumerId: <p>消费者Id</p>
        # @type ConsumerId: String
        # @param ConsumerName: <p>消费者名称</p>
        # @type ConsumerName: String
        # @param TotalTokens: <p>该消费者花费的Token数</p>
        # @type TotalTokens: Integer

        attr_accessor :ConsumerId, :ConsumerName, :TotalTokens

        def initialize(consumerid=nil, consumername=nil, totaltokens=nil)
          @ConsumerId = consumerid
          @ConsumerName = consumername
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @ConsumerId = params['ConsumerId']
          @ConsumerName = params['ConsumerName']
          @TotalTokens = params['TotalTokens']
        end
      end

      # AddCloudNativeAPIGatewayConsumerGroupAuth请求参数结构体
      class AddCloudNativeAPIGatewayConsumerGroupAuthRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例id</p>
        # @type GatewayId: String
        # @param ResourceType: <p>授权资源类型。</p><p>枚举值：</p><ul><li>ModelAPI：模型 API</li><li>MCPServer：MCP Server</li></ul>
        # @type ResourceType: String
        # @param ResourceId: <p>对应资源的 ID。</p><ul><li>ResourceType=ModelAPI 时是模型 API ID</li><li>ResourceType=MCPServer 时是 MCP Server ID</li></ul>
        # @type ResourceId: String
        # @param ConsumerGroupIds: <p>消费者组 ID 列表（每个 ID 以 cg- 开头），长度 1-10。</p>
        # @type ConsumerGroupIds: Array

        attr_accessor :GatewayId, :ResourceType, :ResourceId, :ConsumerGroupIds

        def initialize(gatewayid=nil, resourcetype=nil, resourceid=nil, consumergroupids=nil)
          @GatewayId = gatewayid
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @ConsumerGroupIds = consumergroupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @ConsumerGroupIds = params['ConsumerGroupIds']
        end
      end

      # AddCloudNativeAPIGatewayConsumerGroupAuth返回参数结构体
      class AddCloudNativeAPIGatewayConsumerGroupAuthResponse < TencentCloud::Common::AbstractModel
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

      # 消费者结构
      class CNAPIGwConsumer < TencentCloud::Common::AbstractModel
        # @param ConsumerId: <p>消费者 ID。</p>
        # @type ConsumerId: String
        # @param Name: <p>名字</p>
        # @type Name: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>更新时间 yyyy-MM-dd hh:mm:ss</p>
        # @type ModifyTime: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ConsumerGroups: <p>消费者分组</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerGroups: Array

        attr_accessor :ConsumerId, :Name, :CreateTime, :ModifyTime, :Description, :ConsumerGroups

        def initialize(consumerid=nil, name=nil, createtime=nil, modifytime=nil, description=nil, consumergroups=nil)
          @ConsumerId = consumerid
          @Name = name
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Description = description
          @ConsumerGroups = consumergroups
        end

        def deserialize(params)
          @ConsumerId = params['ConsumerId']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Description = params['Description']
          unless params['ConsumerGroups'].nil?
            @ConsumerGroups = []
            params['ConsumerGroups'].each do |i|
              cnapigwconsumergroup_tmp = CNAPIGwConsumerGroup.new
              cnapigwconsumergroup_tmp.deserialize(i)
              @ConsumerGroups << cnapigwconsumergroup_tmp
            end
          end
        end
      end

      # 消费者组结构
      class CNAPIGwConsumerGroup < TencentCloud::Common::AbstractModel
        # @param ConsumerGroupId: 分组id
        # @type ConsumerGroupId: String
        # @param Name: 名字
        # @type Name: String
        # @param Status: 状态Disable/Enable
        # @type Status: String
        # @param Description: 描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间 yyyy-MM-dd hh:mm:ss
        # @type ModifyTime: String
        # @param BindCount: 绑定的消费者数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindCount: Integer

        attr_accessor :ConsumerGroupId, :Name, :Status, :Description, :CreateTime, :ModifyTime, :BindCount

        def initialize(consumergroupid=nil, name=nil, status=nil, description=nil, createtime=nil, modifytime=nil, bindcount=nil)
          @ConsumerGroupId = consumergroupid
          @Name = name
          @Status = status
          @Description = description
          @CreateTime = createtime
          @ModifyTime = modifytime
          @BindCount = bindcount
        end

        def deserialize(params)
          @ConsumerGroupId = params['ConsumerGroupId']
          @Name = params['Name']
          @Status = params['Status']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @BindCount = params['BindCount']
        end
      end

      # 创建资源通用结果
      class CNAPIGwCreateCommonResult < TencentCloud::Common::AbstractModel
        # @param Success: 是否成功
        # @type Success: Boolean
        # @param ID: 对应的id 值
        # @type ID: String

        attr_accessor :Success, :ID

        def initialize(success=nil, id=nil)
          @Success = success
          @ID = id
        end

        def deserialize(params)
          @Success = params['Success']
          @ID = params['ID']
        end
      end

      # MCP Tool 信息
      class CNAPIGwMCPTool < TencentCloud::Common::AbstractModel
        # @param Name: <p>名字</p>
        # @type Name: String
        # @param DisplayName: <p>展示名字</p>
        # @type DisplayName: String
        # @param Method: <p>方法</p><p>枚举值：</p><ul><li>GET： GET</li><li>POST： POST</li><li>PUT： PUT</li><li>DELETE： DELETE</li><li>PATCH： PATCH</li></ul>
        # @type Method: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param ToolId: <p>工具 id</p>
        # @type ToolId: String
        # @param ContentType: <p>报文格式</p>
        # @type ContentType: String
        # @param ServiceId: <p>服务 id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param Path: <p>路径</p>
        # @type Path: String
        # @param InputParams: <p>参数</p>
        # @type InputParams: Array
        # @param CreateTime: <p>创建时间</p><p>参数格式：yyyy-MM-dd hh:mm:ss</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p><p>参数格式：yyyy-MM-dd hh:mm:ss</p>
        # @type UpdateTime: String
        # @param Status: <p>tool状态</p><p>枚举值：</p><ul><li>Enable： 启用</li><li>Disable： 禁用</li></ul>
        # @type Status: String
        # @param CurrentVersion: <p>当前版本号</p>
        # @type CurrentVersion: String

        attr_accessor :Name, :DisplayName, :Method, :Description, :ToolId, :ContentType, :ServiceId, :Path, :InputParams, :CreateTime, :UpdateTime, :Status, :CurrentVersion

        def initialize(name=nil, displayname=nil, method=nil, description=nil, toolid=nil, contenttype=nil, serviceid=nil, path=nil, inputparams=nil, createtime=nil, updatetime=nil, status=nil, currentversion=nil)
          @Name = name
          @DisplayName = displayname
          @Method = method
          @Description = description
          @ToolId = toolid
          @ContentType = contenttype
          @ServiceId = serviceid
          @Path = path
          @InputParams = inputparams
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @CurrentVersion = currentversion
        end

        def deserialize(params)
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Method = params['Method']
          @Description = params['Description']
          @ToolId = params['ToolId']
          @ContentType = params['ContentType']
          @ServiceId = params['ServiceId']
          @Path = params['Path']
          unless params['InputParams'].nil?
            @InputParams = []
            params['InputParams'].each do |i|
              cnapigwmcptoolparam_tmp = CNAPIGwMCPToolParam.new
              cnapigwmcptoolparam_tmp.deserialize(i)
              @InputParams << cnapigwmcptoolparam_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @CurrentVersion = params['CurrentVersion']
        end
      end

      # MCP Tool 列表
      class CNAPIGwMCPToolList < TencentCloud::Common::AbstractModel
        # @param DataList: <p>MCPTool 列表</p>
        # @type DataList: Array
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer

        attr_accessor :DataList, :TotalCount

        def initialize(datalist=nil, totalcount=nil)
          @DataList = datalist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              cnapigwmcptool_tmp = CNAPIGwMCPTool.new
              cnapigwmcptool_tmp.deserialize(i)
              @DataList << cnapigwmcptool_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # MCP tool 参数
      class CNAPIGwMCPToolParam < TencentCloud::Common::AbstractModel
        # @param Name: <p>名字</p>
        # @type Name: String
        # @param Type: <p>参数类型</p><p>枚举值：</p><ul><li>string： 字符串</li><li>number： 数字</li><li>boolean： 布尔</li><li>array： 数组</li><li>object： 对象</li></ul>
        # @type Type: String
        # @param Required: <p>必填</p>
        # @type Required: Boolean
        # @param Position: <p>位置</p><p>枚举值：</p><ul><li>query： query</li><li>path： query</li><li>header： header</li><li>body： body</li></ul>
        # @type Position: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Default: <p>默认值</p>
        # @type Default: String
        # @param Items: <p>数组子项</p>
        # @type Items: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwMCPToolParam`
        # @param Properties: <p>对象属性</p>
        # @type Properties: Array
        # @param BackendName: <p>转发到后端的名称</p><p>不填则使用原始名称</p>
        # @type BackendName: String

        attr_accessor :Name, :Type, :Required, :Position, :Description, :Default, :Items, :Properties, :BackendName

        def initialize(name=nil, type=nil, required=nil, position=nil, description=nil, default=nil, items=nil, properties=nil, backendname=nil)
          @Name = name
          @Type = type
          @Required = required
          @Position = position
          @Description = description
          @Default = default
          @Items = items
          @Properties = properties
          @BackendName = backendname
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Required = params['Required']
          @Position = params['Position']
          @Description = params['Description']
          @Default = params['Default']
          unless params['Items'].nil?
            @Items = CNAPIGwMCPToolParam.new
            @Items.deserialize(params['Items'])
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              cnapigwmcptoolparam_tmp = CNAPIGwMCPToolParam.new
              cnapigwmcptoolparam_tmp.deserialize(i)
              @Properties << cnapigwmcptoolparam_tmp
            end
          end
          @BackendName = params['BackendName']
        end
      end

      # 密钥信息
      class CNAPIGwSecretKey < TencentCloud::Common::AbstractModel
        # @param SecretKeyId: <p>密钥id</p>
        # @type SecretKeyId: String
        # @param Name: <p>密钥名字</p>
        # @type Name: String
        # @param SecretType: <p>密钥协议类型。</p>
        # @type SecretType: String
        # @param Status: <p>状态。</p><p>枚举值：</p><ul><li>Enable： 启用</li><li>Disable： 禁用</li></ul>
        # @type Status: String
        # @param GenerateType: <p>密钥生成方式。</p><p>枚举值：</p><ul><li>System： 系统自动生成</li><li>Custom： 用户自定义</li><li>KMS： 使用 KMS 密钥</li></ul>
        # @type GenerateType: String
        # @param SecretValue: <p>密钥明文</p>
        # @type SecretValue: String
        # @param KmsKeyName: <p>KMS凭证名字</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyName: String
        # @param KmsKeyVersion: <p>KMS凭证版本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyVersion: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CanBind: <p>是否可以绑定</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanBind: Boolean
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>修改时间</p>
        # @type ModifyTime: String
        # @param BindCount: <p>绑定数</p>
        # @type BindCount: Integer
        # @param ResourceType: <p>密钥归属资源类型。</p><p>枚举值：</p><ul><li>Consumer： 消费者</li><li>ModelService： 模型服务</li></ul>
        # @type ResourceType: String

        attr_accessor :SecretKeyId, :Name, :SecretType, :Status, :GenerateType, :SecretValue, :KmsKeyName, :KmsKeyVersion, :Description, :CanBind, :CreateTime, :ModifyTime, :BindCount, :ResourceType

        def initialize(secretkeyid=nil, name=nil, secrettype=nil, status=nil, generatetype=nil, secretvalue=nil, kmskeyname=nil, kmskeyversion=nil, description=nil, canbind=nil, createtime=nil, modifytime=nil, bindcount=nil, resourcetype=nil)
          @SecretKeyId = secretkeyid
          @Name = name
          @SecretType = secrettype
          @Status = status
          @GenerateType = generatetype
          @SecretValue = secretvalue
          @KmsKeyName = kmskeyname
          @KmsKeyVersion = kmskeyversion
          @Description = description
          @CanBind = canbind
          @CreateTime = createtime
          @ModifyTime = modifytime
          @BindCount = bindcount
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @SecretKeyId = params['SecretKeyId']
          @Name = params['Name']
          @SecretType = params['SecretType']
          @Status = params['Status']
          @GenerateType = params['GenerateType']
          @SecretValue = params['SecretValue']
          @KmsKeyName = params['KmsKeyName']
          @KmsKeyVersion = params['KmsKeyVersion']
          @Description = params['Description']
          @CanBind = params['CanBind']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @BindCount = params['BindCount']
          @ResourceType = params['ResourceType']
        end
      end

      # LLM 模型 API
      class CloudNativeAPIGatewayLLMModelAPI < TencentCloud::Common::AbstractModel
        # @param Id: <p>模型 API ID。</p>
        # @type Id: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>修改时间</p>
        # @type ModifyTime: String
        # @param Name: <p>AI 网关 LLM 模型 API 的唯一标识名称，格式规则：2-50 字符，支持英文、数字、下划线。</p>
        # @type Name: String
        # @param SceneType: <p>选择业务场景,xa0 选项：Chat（聊天）。</p>
        # @type SceneType: String
        # @param RequestProtocol: <p>业务场景对应的请求协议，选项：OpenAI（目前只支持 OpenAI）。</p>
        # @type RequestProtocol: String
        # @param RouteList: <p>路由列表</p>
        # @type RouteList: Array
        # @param BasePath: <p>为API设置统一的前缀，格式：以/开头，支持字母、数字、短横线。</p>
        # @type BasePath: String
        # @param StripPath: <p>路径简化，<br>启用时：客户端请求路径 → 移除Base Path → 后端接收简洁路径<br>禁用时：客户端请求路径 → 完整传递给后端。</p>
        # @type StripPath: Boolean
        # @param Description: <p>模型 API 的相关描述。</p>
        # @type Description: String
        # @param ModelServiceId: <p>模型服务Id</p>
        # @type ModelServiceId: String
        # @param ModelServiceName: <p>模型服务名称</p>
        # @type ModelServiceName: String
        # @param ModelServiceRoute: <p>模型服务路由策略（是指如何路由到模型服务）</p>
        # @type ModelServiceRoute: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelServiceRoute`
        # @param MatchHeaders: <p>无</p>
        # @type MatchHeaders: Array
        # @param EnableCrossServiceFallback: <p>是否开启跨服务fallback</p>
        # @type EnableCrossServiceFallback: Boolean
        # @param CrossServiceFallbackConfig: <p>跨服务fallback配置详情</p>
        # @type CrossServiceFallbackConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWCrossServiceFallbackConfig`
        # @param DescribeCloudNativeAPIGatewayLLMModelAPI: <p>是否展示模型API</p>
        # @type DescribeCloudNativeAPIGatewayLLMModelAPI: Boolean
        # @param TagFilter: <p>标签</p>
        # @type TagFilter: :class:`Tencentcloud::Cngw.v20230418.models.AIGWTagFilter`
        # @param LogConfig: <p>日志显示相关开关</p>
        # @type LogConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLogConfig`
        # @param LogDesensitizeConfig: <p>日志脱敏规则</p>
        # @type LogDesensitizeConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLogDesensitizeConfig`
        # @param ForwardDesensitizeConfig: <p>转发脱敏规则</p>
        # @type ForwardDesensitizeConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWForwardDesensitizeConfig`

        attr_accessor :Id, :CreateTime, :ModifyTime, :Name, :SceneType, :RequestProtocol, :RouteList, :BasePath, :StripPath, :Description, :ModelServiceId, :ModelServiceName, :ModelServiceRoute, :MatchHeaders, :EnableCrossServiceFallback, :CrossServiceFallbackConfig, :DescribeCloudNativeAPIGatewayLLMModelAPI, :TagFilter, :LogConfig, :LogDesensitizeConfig, :ForwardDesensitizeConfig

        def initialize(id=nil, createtime=nil, modifytime=nil, name=nil, scenetype=nil, requestprotocol=nil, routelist=nil, basepath=nil, strippath=nil, description=nil, modelserviceid=nil, modelservicename=nil, modelserviceroute=nil, matchheaders=nil, enablecrossservicefallback=nil, crossservicefallbackconfig=nil, describecloudnativeapigatewayllmmodelapi=nil, tagfilter=nil, logconfig=nil, logdesensitizeconfig=nil, forwarddesensitizeconfig=nil)
          @Id = id
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Name = name
          @SceneType = scenetype
          @RequestProtocol = requestprotocol
          @RouteList = routelist
          @BasePath = basepath
          @StripPath = strippath
          @Description = description
          @ModelServiceId = modelserviceid
          @ModelServiceName = modelservicename
          @ModelServiceRoute = modelserviceroute
          @MatchHeaders = matchheaders
          @EnableCrossServiceFallback = enablecrossservicefallback
          @CrossServiceFallbackConfig = crossservicefallbackconfig
          @DescribeCloudNativeAPIGatewayLLMModelAPI = describecloudnativeapigatewayllmmodelapi
          @TagFilter = tagfilter
          @LogConfig = logconfig
          @LogDesensitizeConfig = logdesensitizeconfig
          @ForwardDesensitizeConfig = forwarddesensitizeconfig
        end

        def deserialize(params)
          @Id = params['Id']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Name = params['Name']
          @SceneType = params['SceneType']
          @RequestProtocol = params['RequestProtocol']
          unless params['RouteList'].nil?
            @RouteList = []
            params['RouteList'].each do |i|
              defaultkongroute_tmp = DefaultKongRoute.new
              defaultkongroute_tmp.deserialize(i)
              @RouteList << defaultkongroute_tmp
            end
          end
          @BasePath = params['BasePath']
          @StripPath = params['StripPath']
          @Description = params['Description']
          @ModelServiceId = params['ModelServiceId']
          @ModelServiceName = params['ModelServiceName']
          unless params['ModelServiceRoute'].nil?
            @ModelServiceRoute = CloudNativeAPIGatewayLLMModelServiceRoute.new
            @ModelServiceRoute.deserialize(params['ModelServiceRoute'])
          end
          unless params['MatchHeaders'].nil?
            @MatchHeaders = []
            params['MatchHeaders'].each do |i|
              aigwkvmatch_tmp = AIGWKVMatch.new
              aigwkvmatch_tmp.deserialize(i)
              @MatchHeaders << aigwkvmatch_tmp
            end
          end
          @EnableCrossServiceFallback = params['EnableCrossServiceFallback']
          unless params['CrossServiceFallbackConfig'].nil?
            @CrossServiceFallbackConfig = AIGWCrossServiceFallbackConfig.new
            @CrossServiceFallbackConfig.deserialize(params['CrossServiceFallbackConfig'])
          end
          @DescribeCloudNativeAPIGatewayLLMModelAPI = params['DescribeCloudNativeAPIGatewayLLMModelAPI']
          unless params['TagFilter'].nil?
            @TagFilter = AIGWTagFilter.new
            @TagFilter.deserialize(params['TagFilter'])
          end
          unless params['LogConfig'].nil?
            @LogConfig = AIGWLogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          unless params['LogDesensitizeConfig'].nil?
            @LogDesensitizeConfig = AIGWLogDesensitizeConfig.new
            @LogDesensitizeConfig.deserialize(params['LogDesensitizeConfig'])
          end
          unless params['ForwardDesensitizeConfig'].nil?
            @ForwardDesensitizeConfig = AIGWForwardDesensitizeConfig.new
            @ForwardDesensitizeConfig.deserialize(params['ForwardDesensitizeConfig'])
          end
        end
      end

      # LLM-单模型内降级规则
      class CloudNativeAPIGatewayLLMModelFallbackRule < TencentCloud::Common::AbstractModel
        # @param FallbackModels: 备选模型，主模型不可用时将依次按顺序尝试。
        # @type FallbackModels: Array

        attr_accessor :FallbackModels

        def initialize(fallbackmodels=nil)
          @FallbackModels = fallbackmodels
        end

        def deserialize(params)
          @FallbackModels = params['FallbackModels']
        end
      end

      # LLM-模型参数检查信息
      class CloudNativeAPIGatewayLLMModelParamCheckInfo < TencentCloud::Common::AbstractModel
        # @param AllowModelList: 允许的模型列表。
        # @type AllowModelList: Array
        # @param ModelValidationFailureStrategy: 模型参数校验失败时的处理策略，选项：Return404（返回404）、FallBackToDefaultModel（使用默认模型降级）。
        # @type ModelValidationFailureStrategy: String

        attr_accessor :AllowModelList, :ModelValidationFailureStrategy

        def initialize(allowmodellist=nil, modelvalidationfailurestrategy=nil)
          @AllowModelList = allowmodellist
          @ModelValidationFailureStrategy = modelvalidationfailurestrategy
        end

        def deserialize(params)
          @AllowModelList = params['AllowModelList']
          @ModelValidationFailureStrategy = params['ModelValidationFailureStrategy']
        end
      end

      # LLM 模型服务
      class CloudNativeAPIGatewayLLMModelService < TencentCloud::Common::AbstractModel
        # @param Id: <p>模型服务 ID。</p>
        # @type Id: String
        # @param Name: <p>模型服务名称。</p>
        # @type Name: String
        # @param CreateTime: <p>创建时间。</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>修改时间。</p>
        # @type ModifyTime: String
        # @param ServiceType: <p>服务类型，目前只支持xa0LLMService。</p>
        # @type ServiceType: String
        # @param ModelProvider: <p>选择模型提供商, 选项：OpenAI、Anthropic、Azure OpenAI、自定义HTTP。</p>
        # @type ModelProvider: String
        # @param ModelProtocol: <p>API协议标准，根据供应商动态变化：OpenAI→OpenAI/v1，Anthropic→Anthropic/v1等</p>
        # @type ModelProtocol: String
        # @param UpstreamURL: <p>自定义的模型请求 URL。</p>
        # @type UpstreamURL: String
        # @param ModelSelector: <p>模型选择方式，选项：Specify（指定模型）、PassThrough（透传请求模型）。</p>
        # @type ModelSelector: String
        # @param DefaultModel: <p>默认模型，模型选择方式为 Specify 时必填。</p>
        # @type DefaultModel: String
        # @param EnableModelFallback: <p>开启模型降级，模型选择方式为 Specify 时必填。</p>
        # @type EnableModelFallback: Boolean
        # @param ModelFallbackRule: <p>可以配置备用模型规则，EnableSpecifyModelFallbackxa0为 true 时必填。</p>
        # @type ModelFallbackRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelFallbackRule`
        # @param EnableModelParamCheck: <p>开启模型参数校验，是否校验客户端传递的 model 参数,xa0模型选择方式为 PassThrough 时必填。</p>
        # @type EnableModelParamCheck: Boolean
        # @param ModelParamCheckRule: <p>模型检验信息，EnableModelParamCheckxa0为 true 时必填。</p>
        # @type ModelParamCheckRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelParamCheckInfo`
        # @param Description: <p>描述。</p>
        # @type Description: String
        # @param ConnectTimeout: <p>连接超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：10000</p>
        # @type ConnectTimeout: Integer
        # @param WriteTimeout: <p>写入超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：60000</p>
        # @type WriteTimeout: Integer
        # @param ReadTimeout: <p>读取超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p>
        # @type ReadTimeout: Integer
        # @param Retries: <p>重试次数</p><p>取值范围：[0, 5]</p><p>单位：次</p><p>默认值：0</p>
        # @type Retries: Integer
        # @param UpstreamUrlMode: <p>路径拼接模式</p><p>枚举值：</p><ul><li>FixedPath： 固定路径</li><li>AutoConcat： 自动拼接</li></ul>
        # @type UpstreamUrlMode: String
        # @param SNI: <p>sni</p>
        # @type SNI: String
        # @param QuotaLimit: <p>配额限制</p>
        # @type QuotaLimit: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMQuotaLimit`
        # @param Tags: <p>标签</p>
        # @type Tags: String
        # @param SecretKeyIds: <p>绑定的模型服务秘钥</p>
        # @type SecretKeyIds: Array

        attr_accessor :Id, :Name, :CreateTime, :ModifyTime, :ServiceType, :ModelProvider, :ModelProtocol, :UpstreamURL, :ModelSelector, :DefaultModel, :EnableModelFallback, :ModelFallbackRule, :EnableModelParamCheck, :ModelParamCheckRule, :Description, :ConnectTimeout, :WriteTimeout, :ReadTimeout, :Retries, :UpstreamUrlMode, :SNI, :QuotaLimit, :Tags, :SecretKeyIds

        def initialize(id=nil, name=nil, createtime=nil, modifytime=nil, servicetype=nil, modelprovider=nil, modelprotocol=nil, upstreamurl=nil, modelselector=nil, defaultmodel=nil, enablemodelfallback=nil, modelfallbackrule=nil, enablemodelparamcheck=nil, modelparamcheckrule=nil, description=nil, connecttimeout=nil, writetimeout=nil, readtimeout=nil, retries=nil, upstreamurlmode=nil, sni=nil, quotalimit=nil, tags=nil, secretkeyids=nil)
          @Id = id
          @Name = name
          @CreateTime = createtime
          @ModifyTime = modifytime
          @ServiceType = servicetype
          @ModelProvider = modelprovider
          @ModelProtocol = modelprotocol
          @UpstreamURL = upstreamurl
          @ModelSelector = modelselector
          @DefaultModel = defaultmodel
          @EnableModelFallback = enablemodelfallback
          @ModelFallbackRule = modelfallbackrule
          @EnableModelParamCheck = enablemodelparamcheck
          @ModelParamCheckRule = modelparamcheckrule
          @Description = description
          @ConnectTimeout = connecttimeout
          @WriteTimeout = writetimeout
          @ReadTimeout = readtimeout
          @Retries = retries
          @UpstreamUrlMode = upstreamurlmode
          @SNI = sni
          @QuotaLimit = quotalimit
          @Tags = tags
          @SecretKeyIds = secretkeyids
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @ServiceType = params['ServiceType']
          @ModelProvider = params['ModelProvider']
          @ModelProtocol = params['ModelProtocol']
          @UpstreamURL = params['UpstreamURL']
          @ModelSelector = params['ModelSelector']
          @DefaultModel = params['DefaultModel']
          @EnableModelFallback = params['EnableModelFallback']
          unless params['ModelFallbackRule'].nil?
            @ModelFallbackRule = CloudNativeAPIGatewayLLMModelFallbackRule.new
            @ModelFallbackRule.deserialize(params['ModelFallbackRule'])
          end
          @EnableModelParamCheck = params['EnableModelParamCheck']
          unless params['ModelParamCheckRule'].nil?
            @ModelParamCheckRule = CloudNativeAPIGatewayLLMModelParamCheckInfo.new
            @ModelParamCheckRule.deserialize(params['ModelParamCheckRule'])
          end
          @Description = params['Description']
          @ConnectTimeout = params['ConnectTimeout']
          @WriteTimeout = params['WriteTimeout']
          @ReadTimeout = params['ReadTimeout']
          @Retries = params['Retries']
          @UpstreamUrlMode = params['UpstreamUrlMode']
          @SNI = params['SNI']
          unless params['QuotaLimit'].nil?
            @QuotaLimit = AIGWLLMQuotaLimit.new
            @QuotaLimit.deserialize(params['QuotaLimit'])
          end
          @Tags = params['Tags']
          @SecretKeyIds = params['SecretKeyIds']
        end
      end

      # 模型服务路由配置
      class CloudNativeAPIGatewayLLMModelServiceRoute < TencentCloud::Common::AbstractModel
        # @param SelectedTypes: <p>生效的路由算法类型：权重路由，模型名称路由、参数路由等Weighted/ModelName/Query (预留多个，暂时只能填写一个)</p>
        # @type SelectedTypes: Array
        # @param WeightedConfig: <p>权重路由配置，最多10个</p>
        # @type WeightedConfig: Array
        # @param ModelNameConfig: <p>模型名称路由配置，最多10个</p>
        # @type ModelNameConfig: Array
        # @param IntentRouteConfig: <p>意图识别</p>
        # @type IntentRouteConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWIntentRoute`
        # @param LatencyPriorityConfig: <p>延迟路由</p>
        # @type LatencyPriorityConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLatencyPriorityConfig`

        attr_accessor :SelectedTypes, :WeightedConfig, :ModelNameConfig, :IntentRouteConfig, :LatencyPriorityConfig

        def initialize(selectedtypes=nil, weightedconfig=nil, modelnameconfig=nil, intentrouteconfig=nil, latencypriorityconfig=nil)
          @SelectedTypes = selectedtypes
          @WeightedConfig = weightedconfig
          @ModelNameConfig = modelnameconfig
          @IntentRouteConfig = intentrouteconfig
          @LatencyPriorityConfig = latencypriorityconfig
        end

        def deserialize(params)
          @SelectedTypes = params['SelectedTypes']
          unless params['WeightedConfig'].nil?
            @WeightedConfig = []
            params['WeightedConfig'].each do |i|
              cloudnativeapigatewayllmmodelservicerouteweightedstrategy_tmp = CloudNativeAPIGatewayLLMModelServiceRouteWeightedStrategy.new
              cloudnativeapigatewayllmmodelservicerouteweightedstrategy_tmp.deserialize(i)
              @WeightedConfig << cloudnativeapigatewayllmmodelservicerouteweightedstrategy_tmp
            end
          end
          unless params['ModelNameConfig'].nil?
            @ModelNameConfig = []
            params['ModelNameConfig'].each do |i|
              cloudnativeapigatewayllmmodelserviceroutemodelnamestrategy_tmp = CloudNativeAPIGatewayLLMModelServiceRouteModelNameStrategy.new
              cloudnativeapigatewayllmmodelserviceroutemodelnamestrategy_tmp.deserialize(i)
              @ModelNameConfig << cloudnativeapigatewayllmmodelserviceroutemodelnamestrategy_tmp
            end
          end
          unless params['IntentRouteConfig'].nil?
            @IntentRouteConfig = AIGWIntentRoute.new
            @IntentRouteConfig.deserialize(params['IntentRouteConfig'])
          end
          unless params['LatencyPriorityConfig'].nil?
            @LatencyPriorityConfig = AIGWLatencyPriorityConfig.new
            @LatencyPriorityConfig.deserialize(params['LatencyPriorityConfig'])
          end
        end
      end

      # 模型服务模型名称路由策略
      class CloudNativeAPIGatewayLLMModelServiceRouteModelNameStrategy < TencentCloud::Common::AbstractModel
        # @param ModelServiceId: <p>模型服务id</p>
        # @type ModelServiceId: String
        # @param MatchModelName: <p>匹配模型服务</p>
        # @type MatchModelName: String
        # @param RewriteModelName: <p>重写模型</p>
        # @type RewriteModelName: String

        attr_accessor :ModelServiceId, :MatchModelName, :RewriteModelName

        def initialize(modelserviceid=nil, matchmodelname=nil, rewritemodelname=nil)
          @ModelServiceId = modelserviceid
          @MatchModelName = matchmodelname
          @RewriteModelName = rewritemodelname
        end

        def deserialize(params)
          @ModelServiceId = params['ModelServiceId']
          @MatchModelName = params['MatchModelName']
          @RewriteModelName = params['RewriteModelName']
        end
      end

      # 权重路由配置
      class CloudNativeAPIGatewayLLMModelServiceRouteWeightedStrategy < TencentCloud::Common::AbstractModel
        # @param ModelServiceId: <p>模型服务id</p>
        # @type ModelServiceId: String
        # @param Weight: <p>权重值</p>
        # @type Weight: Integer

        attr_accessor :ModelServiceId, :Weight

        def initialize(modelserviceid=nil, weight=nil)
          @ModelServiceId = modelserviceid
          @Weight = weight
        end

        def deserialize(params)
          @ModelServiceId = params['ModelServiceId']
          @Weight = params['Weight']
        end
      end

      # CreateCloudNativeAPIGatewayConsumerGroup请求参数结构体
      class CreateCloudNativeAPIGatewayConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例id</p>
        # @type GatewayId: String
        # @param Name: <p>消费者组名称，最长 60 字符。同一网关下唯一。</p>
        # @type Name: String
        # @param Status: <p>启用状态。</p><p>枚举值：</p><ul><li>Enable：启用</li><li>Disable：禁用</li></ul>
        # @type Status: String
        # @param Description: <p>消费者组描述。最长 200 字符。</p>
        # @type Description: String

        attr_accessor :GatewayId, :Name, :Status, :Description

        def initialize(gatewayid=nil, name=nil, status=nil, description=nil)
          @GatewayId = gatewayid
          @Name = name
          @Status = status
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Status = params['Status']
          @Description = params['Description']
        end
      end

      # CreateCloudNativeAPIGatewayConsumerGroup返回参数结构体
      class CreateCloudNativeAPIGatewayConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果。包含成功标识与新建资源 ID。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwCreateCommonResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwCreateCommonResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayConsumer请求参数结构体
      class CreateCloudNativeAPIGatewayConsumerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param Name: <p>消费者名称，最长 60 字符。同一网关下唯一。</p>
        # @type Name: String
        # @param Description: <p>消费者描述。最长 200 字符。</p>
        # @type Description: String

        attr_accessor :GatewayId, :Name, :Description

        def initialize(gatewayid=nil, name=nil, description=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateCloudNativeAPIGatewayConsumer返回参数结构体
      class CreateCloudNativeAPIGatewayConsumerResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果。包含成功标识与新建资源 ID。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwCreateCommonResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwCreateCommonResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayLLMModelAPI请求参数结构体
      class CreateCloudNativeAPIGatewayLLMModelAPIRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param Name: <p>模型 API 名称，最长 60 字符。同一网关下唯一。</p>
        # @type Name: String
        # @param SceneType: <p>业务场景。</p><p>枚举值：</p><ul><li>Chat：聊天</li><li>Image：图像（需要网关版本 ≥ 3.9.3）</li></ul>
        # @type SceneType: String
        # @param RequestProtocol: <p>请求协议（小写）。当前仅支持：</p><ul><li>openai</li></ul>
        # @type RequestProtocol: String
        # @param ListModelServiceId: <p>关联的模型服务 ID 列表，长度 1-10。</p><p>注：字段名建议改为 ModelServiceIds，当前保留用于兼容。</p>
        # @type ListModelServiceId: Array
        # @param RouteList: <p>路由列表，至少 1 条。每条包含 Methods/Paths/Hosts 等 Kong 路由属性。</p>
        # @type RouteList: Array
        # @param BasePath: <p>统一前缀路径（可选）。例如 /v1/openai。</p>
        # @type BasePath: String
        # @param Description: <p>模型 API 描述。最长 200 字符。</p>
        # @type Description: String
        # @param ModelServiceRoute: <p>多模型服务路由策略。ListModelServiceId 多于 1 项时必填。</p>
        # @type ModelServiceRoute: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelServiceRoute`
        # @param MatchHeaders: <p>Header 路由匹配规则。当前仅支持 Operator=exact。</p>
        # @type MatchHeaders: Array
        # @param EnableCrossServiceFallback: <p>是否启用跨服务 Fallback。开启后需提供 CrossServiceFallbackConfig。</p>
        # @type EnableCrossServiceFallback: Boolean
        # @param CrossServiceFallbackConfig: <p>跨服务 Fallback 配置。EnableCrossServiceFallback=true 时必填。</p>
        # @type CrossServiceFallbackConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWCrossServiceFallbackConfig`
        # @param TagFilter: <p>标签过滤策略。需要网关版本 ≥ 3.9.4。</p>
        # @type TagFilter: :class:`Tencentcloud::Cngw.v20230418.models.AIGWTagFilter`
        # @param LogConfig: <p>日志输出配置（请求/响应 payload 落 LLM Log）。需要网关版本 ≥ 3.9.4。</p>
        # @type LogConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLogConfig`

        attr_accessor :GatewayId, :Name, :SceneType, :RequestProtocol, :ListModelServiceId, :RouteList, :BasePath, :Description, :ModelServiceRoute, :MatchHeaders, :EnableCrossServiceFallback, :CrossServiceFallbackConfig, :TagFilter, :LogConfig

        def initialize(gatewayid=nil, name=nil, scenetype=nil, requestprotocol=nil, listmodelserviceid=nil, routelist=nil, basepath=nil, description=nil, modelserviceroute=nil, matchheaders=nil, enablecrossservicefallback=nil, crossservicefallbackconfig=nil, tagfilter=nil, logconfig=nil)
          @GatewayId = gatewayid
          @Name = name
          @SceneType = scenetype
          @RequestProtocol = requestprotocol
          @ListModelServiceId = listmodelserviceid
          @RouteList = routelist
          @BasePath = basepath
          @Description = description
          @ModelServiceRoute = modelserviceroute
          @MatchHeaders = matchheaders
          @EnableCrossServiceFallback = enablecrossservicefallback
          @CrossServiceFallbackConfig = crossservicefallbackconfig
          @TagFilter = tagfilter
          @LogConfig = logconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @SceneType = params['SceneType']
          @RequestProtocol = params['RequestProtocol']
          @ListModelServiceId = params['ListModelServiceId']
          unless params['RouteList'].nil?
            @RouteList = []
            params['RouteList'].each do |i|
              defaultkongroute_tmp = DefaultKongRoute.new
              defaultkongroute_tmp.deserialize(i)
              @RouteList << defaultkongroute_tmp
            end
          end
          @BasePath = params['BasePath']
          @Description = params['Description']
          unless params['ModelServiceRoute'].nil?
            @ModelServiceRoute = CloudNativeAPIGatewayLLMModelServiceRoute.new
            @ModelServiceRoute.deserialize(params['ModelServiceRoute'])
          end
          unless params['MatchHeaders'].nil?
            @MatchHeaders = []
            params['MatchHeaders'].each do |i|
              aigwkvmatch_tmp = AIGWKVMatch.new
              aigwkvmatch_tmp.deserialize(i)
              @MatchHeaders << aigwkvmatch_tmp
            end
          end
          @EnableCrossServiceFallback = params['EnableCrossServiceFallback']
          unless params['CrossServiceFallbackConfig'].nil?
            @CrossServiceFallbackConfig = AIGWCrossServiceFallbackConfig.new
            @CrossServiceFallbackConfig.deserialize(params['CrossServiceFallbackConfig'])
          end
          unless params['TagFilter'].nil?
            @TagFilter = AIGWTagFilter.new
            @TagFilter.deserialize(params['TagFilter'])
          end
          unless params['LogConfig'].nil?
            @LogConfig = AIGWLogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayLLMModelAPI返回参数结构体
      class CreateCloudNativeAPIGatewayLLMModelAPIResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功。</p>
        # @type Result: Boolean
        # @param ModelAPIId: <p>模型 API ID，全局唯一标识。</p>
        # @type ModelAPIId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ModelAPIId, :RequestId

        def initialize(result=nil, modelapiid=nil, requestid=nil)
          @Result = result
          @ModelAPIId = modelapiid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ModelAPIId = params['ModelAPIId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayLLMModelService请求参数结构体
      class CreateCloudNativeAPIGatewayLLMModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param Name: <p>服务名称，最长60个字符，支持中英文大小写、数字及分隔符（“-”、“_”)，不能以数字和分隔符开头，不能以分隔符结尾。</p>
        # @type Name: String
        # @param ServiceType: <p>服务类型。目前仅支持 LLMService。</p><p>枚举值：</p><ul><li>LLMService： 大语言模型服务</li></ul>
        # @type ServiceType: String
        # @param ModelProvider: <p>选择模型提供商, 选项：OpenAI、Anthropic、Azure OpenAI等。</p>
        # @type ModelProvider: String
        # @param ModelProtocol: <p>API协议标准，根据供应商动态变化：OpenAI→OpenAI/v1，Anthropic→Anthropic/v1等</p>
        # @type ModelProtocol: String
        # @param ModelSelector: <p>模型选择方式，选项：Specify（指定模型）、PassThrough（透传请求模型）。</p>
        # @type ModelSelector: String
        # @param SecretKeyIds: <p>LLM 厂商颁发的认证信息 token 。</p>
        # @type SecretKeyIds: Array
        # @param DefaultModel: <p>默认模型，模型选择方式为 Specify 时必填。</p>
        # @type DefaultModel: String
        # @param EnableModelFallback: <p>开启模型降级，模型选择方式为 Specify 时必填。</p>
        # @type EnableModelFallback: Boolean
        # @param ModelFallbackRule: <p>可以配置备用模型规则，EnableSpecifyModelFallbackxa0为 true 时必填。</p>
        # @type ModelFallbackRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelFallbackRule`
        # @param EnableModelParamCheck: <p>开启模型参数校验，是否校验客户端传递的 model 参数,xa0模型选择方式为 PassThrough 时必填</p>
        # @type EnableModelParamCheck: Boolean
        # @param ModelParamCheckRule: <p>模型检验信息，EnableModelParamCheckxa0为 true 时必填。</p>
        # @type ModelParamCheckRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelParamCheckInfo`
        # @param Description: <p>描述。</p>
        # @type Description: String
        # @param UpstreamURL: <p>服务提供商自定义 url</p>
        # @type UpstreamURL: String
        # @param ConnectTimeout: <p>连接超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：10000</p>
        # @type ConnectTimeout: Integer
        # @param WriteTimeout: <p>写入超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：60000</p>
        # @type WriteTimeout: Integer
        # @param ReadTimeout: <p>读取超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：60000</p>
        # @type ReadTimeout: Integer
        # @param Retries: <p>重试次数</p><p>取值范围：[0, 5]</p><p>单位：次</p><p>默认值：0</p>
        # @type Retries: Integer
        # @param UpstreamUrlMode: <p>路径拼接模式</p><p>枚举值：</p><ul><li>FixedPath： 固定地址</li><li>AutoConcat： 自动拼接</li></ul>
        # @type UpstreamUrlMode: String
        # @param SNI: <p>sni</p>
        # @type SNI: String
        # @param QuotaLimit: <p>模型服务级别的配额上限（RPM/TPM）。需要网关版本 ≥ 3.9.4。</p>
        # @type QuotaLimit: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMQuotaLimit`
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :GatewayId, :Name, :ServiceType, :ModelProvider, :ModelProtocol, :ModelSelector, :SecretKeyIds, :DefaultModel, :EnableModelFallback, :ModelFallbackRule, :EnableModelParamCheck, :ModelParamCheckRule, :Description, :UpstreamURL, :ConnectTimeout, :WriteTimeout, :ReadTimeout, :Retries, :UpstreamUrlMode, :SNI, :QuotaLimit, :Tags

        def initialize(gatewayid=nil, name=nil, servicetype=nil, modelprovider=nil, modelprotocol=nil, modelselector=nil, secretkeyids=nil, defaultmodel=nil, enablemodelfallback=nil, modelfallbackrule=nil, enablemodelparamcheck=nil, modelparamcheckrule=nil, description=nil, upstreamurl=nil, connecttimeout=nil, writetimeout=nil, readtimeout=nil, retries=nil, upstreamurlmode=nil, sni=nil, quotalimit=nil, tags=nil)
          @GatewayId = gatewayid
          @Name = name
          @ServiceType = servicetype
          @ModelProvider = modelprovider
          @ModelProtocol = modelprotocol
          @ModelSelector = modelselector
          @SecretKeyIds = secretkeyids
          @DefaultModel = defaultmodel
          @EnableModelFallback = enablemodelfallback
          @ModelFallbackRule = modelfallbackrule
          @EnableModelParamCheck = enablemodelparamcheck
          @ModelParamCheckRule = modelparamcheckrule
          @Description = description
          @UpstreamURL = upstreamurl
          @ConnectTimeout = connecttimeout
          @WriteTimeout = writetimeout
          @ReadTimeout = readtimeout
          @Retries = retries
          @UpstreamUrlMode = upstreamurlmode
          @SNI = sni
          @QuotaLimit = quotalimit
          @Tags = tags
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @ServiceType = params['ServiceType']
          @ModelProvider = params['ModelProvider']
          @ModelProtocol = params['ModelProtocol']
          @ModelSelector = params['ModelSelector']
          @SecretKeyIds = params['SecretKeyIds']
          @DefaultModel = params['DefaultModel']
          @EnableModelFallback = params['EnableModelFallback']
          unless params['ModelFallbackRule'].nil?
            @ModelFallbackRule = CloudNativeAPIGatewayLLMModelFallbackRule.new
            @ModelFallbackRule.deserialize(params['ModelFallbackRule'])
          end
          @EnableModelParamCheck = params['EnableModelParamCheck']
          unless params['ModelParamCheckRule'].nil?
            @ModelParamCheckRule = CloudNativeAPIGatewayLLMModelParamCheckInfo.new
            @ModelParamCheckRule.deserialize(params['ModelParamCheckRule'])
          end
          @Description = params['Description']
          @UpstreamURL = params['UpstreamURL']
          @ConnectTimeout = params['ConnectTimeout']
          @WriteTimeout = params['WriteTimeout']
          @ReadTimeout = params['ReadTimeout']
          @Retries = params['Retries']
          @UpstreamUrlMode = params['UpstreamUrlMode']
          @SNI = params['SNI']
          unless params['QuotaLimit'].nil?
            @QuotaLimit = AIGWLLMQuotaLimit.new
            @QuotaLimit.deserialize(params['QuotaLimit'])
          end
          @Tags = params['Tags']
        end
      end

      # CreateCloudNativeAPIGatewayLLMModelService返回参数结构体
      class CreateCloudNativeAPIGatewayLLMModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功</p>
        # @type Result: Boolean
        # @param ModelServiceId: <p>模型服务 ID，全局唯一标识。</p>
        # @type ModelServiceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ModelServiceId, :RequestId

        def initialize(result=nil, modelserviceid=nil, requestid=nil)
          @Result = result
          @ModelServiceId = modelserviceid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ModelServiceId = params['ModelServiceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayMCPServer请求参数结构体
      class CreateCloudNativeAPIGatewayMCPServerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param Name: <p>名字</p>
        # @type Name: String
        # @param DisplayName: <p>展示名字</p>
        # @type DisplayName: String
        # @param ServerType: <p>MCP服务类型</p><ul><li>MCP</li><li>Rest2MCP</li></ul>
        # @type ServerType: String
        # @param Transport: <p>传输协议：StreamableHttp或SSE</p><p>枚举值：</p><ul><li>StreamableHttp： Streamable HTTP</li><li>SSE： Server-Sent Events</li></ul>
        # @type Transport: String
        # @param UpstreamType: <p>后端类型</p><p>枚举值：</p><ul><li>MCPRegistry： mcp 注册中心- Registry</li><li>Registry： 普通注册中心</li><li>HostIP： 域名或ip</li><li>VirtualMCPServer： 虚拟MCPServer</li></ul>
        # @type UpstreamType: String
        # @param UpstreamInfo: <p>注册中心来源信息</p>
        # @type UpstreamInfo: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPUpstreamInfo`
        # @param SessionConfig: <p>会话配置</p>
        # @type SessionConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPSessionConfig`
        # @param Timeout: <p>超时时间，单位ms，最大60000</p>
        # @type Timeout: Integer
        # @param RetryCount: <p>重试次数，最大3次</p>
        # @type RetryCount: Integer
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param EnableHealthCheck: <p>是否启用健康检查</p>
        # @type EnableHealthCheck: Boolean
        # @param HealthCheck: <p>健康检查配置</p>
        # @type HealthCheck: :class:`Tencentcloud::Cngw.v20230418.models.AIGWHealthCheckSetting`

        attr_accessor :GatewayId, :Name, :DisplayName, :ServerType, :Transport, :UpstreamType, :UpstreamInfo, :SessionConfig, :Timeout, :RetryCount, :Description, :EnableHealthCheck, :HealthCheck

        def initialize(gatewayid=nil, name=nil, displayname=nil, servertype=nil, transport=nil, upstreamtype=nil, upstreaminfo=nil, sessionconfig=nil, timeout=nil, retrycount=nil, description=nil, enablehealthcheck=nil, healthcheck=nil)
          @GatewayId = gatewayid
          @Name = name
          @DisplayName = displayname
          @ServerType = servertype
          @Transport = transport
          @UpstreamType = upstreamtype
          @UpstreamInfo = upstreaminfo
          @SessionConfig = sessionconfig
          @Timeout = timeout
          @RetryCount = retrycount
          @Description = description
          @EnableHealthCheck = enablehealthcheck
          @HealthCheck = healthcheck
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @ServerType = params['ServerType']
          @Transport = params['Transport']
          @UpstreamType = params['UpstreamType']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = AIGWMCPUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          unless params['SessionConfig'].nil?
            @SessionConfig = AIGWMCPSessionConfig.new
            @SessionConfig.deserialize(params['SessionConfig'])
          end
          @Timeout = params['Timeout']
          @RetryCount = params['RetryCount']
          @Description = params['Description']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheck'].nil?
            @HealthCheck = AIGWHealthCheckSetting.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
        end
      end

      # CreateCloudNativeAPIGatewayMCPServer返回参数结构体
      class CreateCloudNativeAPIGatewayMCPServerResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwCreateCommonResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwCreateCommonResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewayMCPTool请求参数结构体
      class CreateCloudNativeAPIGatewayMCPToolRequest < TencentCloud::Common::AbstractModel
        # @param ContentType: <p>内容类型</p>
        # @type ContentType: String
        # @param DisplayName: <p>展示名字</p>
        # @type DisplayName: String
        # @param ServiceId: <p>服务 id</p>
        # @type ServiceId: String

        attr_accessor :ContentType, :DisplayName, :ServiceId

        def initialize(contenttype=nil, displayname=nil, serviceid=nil)
          @ContentType = contenttype
          @DisplayName = displayname
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ContentType = params['ContentType']
          @DisplayName = params['DisplayName']
          @ServiceId = params['ServiceId']
        end
      end

      # CreateCloudNativeAPIGatewayMCPTool返回参数结构体
      class CreateCloudNativeAPIGatewayMCPToolResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwCreateCommonResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwCreateCommonResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudNativeAPIGatewaySecretKey请求参数结构体
      class CreateCloudNativeAPIGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 实例 ID
        # @type GatewayId: String
        # @param SecretType: <p>密钥协议类型。</p><p>枚举值：</p><ul><li>ApiKey</li><li>Basic</li><li>Hmac</li><li>OAuth2</li><li>JWT</li></ul>
        # @type SecretType: String
        # @param Name: <p>密钥名称，2-60 字符。</p>
        # @type Name: String
        # @param GenerateType: <p>密钥生成方式。</p><p>枚举值：</p><ul><li>System：系统自动生成</li><li>Custom：用户自定义（需传 SecretValue）</li><li>KMS：使用 KMS 密钥（需传 KmsKeyName 与 KmsKeyVersion）</li></ul>
        # @type GenerateType: String
        # @param ResourceType: <p>密钥归属资源类型。</p><p>枚举值：</p><ul><li>Consumer：消费者</li><li>ModelService：模型服务</li></ul>
        # @type ResourceType: String
        # @param KmsKeyName: <p>KMS 密钥名称。GenerateType=KMS 时必填。</p>
        # @type KmsKeyName: String
        # @param KmsKeyVersion: <p>KMS 密钥版本。GenerateType=KMS 时必填。</p>
        # @type KmsKeyVersion: String
        # @param SecretValue: <p>密钥值，长度 8-256。GenerateType=Custom 时必填。</p>
        # @type SecretValue: String
        # @param Description: <p>密钥描述。最长 200 字符。</p>
        # @type Description: String

        attr_accessor :GatewayId, :SecretType, :Name, :GenerateType, :ResourceType, :KmsKeyName, :KmsKeyVersion, :SecretValue, :Description

        def initialize(gatewayid=nil, secrettype=nil, name=nil, generatetype=nil, resourcetype=nil, kmskeyname=nil, kmskeyversion=nil, secretvalue=nil, description=nil)
          @GatewayId = gatewayid
          @SecretType = secrettype
          @Name = name
          @GenerateType = generatetype
          @ResourceType = resourcetype
          @KmsKeyName = kmskeyname
          @KmsKeyVersion = kmskeyversion
          @SecretValue = secretvalue
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @SecretType = params['SecretType']
          @Name = params['Name']
          @GenerateType = params['GenerateType']
          @ResourceType = params['ResourceType']
          @KmsKeyName = params['KmsKeyName']
          @KmsKeyVersion = params['KmsKeyVersion']
          @SecretValue = params['SecretValue']
          @Description = params['Description']
        end
      end

      # CreateCloudNativeAPIGatewaySecretKey返回参数结构体
      class CreateCloudNativeAPIGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果。包含成功标识与新建资源 ID。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwCreateCommonResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwCreateCommonResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 默认kong路由，目前只在 LLM 模型 API相 关接口使用
      class DefaultKongRoute < TencentCloud::Common::AbstractModel
        # @param Name: <p>服务名字</p>
        # @type Name: String
        # @param ID: <p>服务ID</p>
        # @type ID: String
        # @param Methods: <p>HTTP Method</p>
        # @type Methods: Array
        # @param Paths: <p>Http Path</p>
        # @type Paths: Array

        attr_accessor :Name, :ID, :Methods, :Paths

        def initialize(name=nil, id=nil, methods=nil, paths=nil)
          @Name = name
          @ID = id
          @Methods = methods
          @Paths = paths
        end

        def deserialize(params)
          @Name = params['Name']
          @ID = params['ID']
          @Methods = params['Methods']
          @Paths = params['Paths']
        end
      end

      # DeleteCloudNativeAPIGatewayConsumerGroup请求参数结构体
      class DeleteCloudNativeAPIGatewayConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param ConsumerGroupId: 消费者组ID
        # @type ConsumerGroupId: String

        attr_accessor :GatewayId, :ConsumerGroupId

        def initialize(gatewayid=nil, consumergroupid=nil)
          @GatewayId = gatewayid
          @ConsumerGroupId = consumergroupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerGroupId = params['ConsumerGroupId']
        end
      end

      # DeleteCloudNativeAPIGatewayConsumerGroup返回参数结构体
      class DeleteCloudNativeAPIGatewayConsumerGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayConsumer请求参数结构体
      class DeleteCloudNativeAPIGatewayConsumerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param ConsumerId: 消费者ID
        # @type ConsumerId: String

        attr_accessor :GatewayId, :ConsumerId

        def initialize(gatewayid=nil, consumerid=nil)
          @GatewayId = gatewayid
          @ConsumerId = consumerid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerId = params['ConsumerId']
        end
      end

      # DeleteCloudNativeAPIGatewayConsumer返回参数结构体
      class DeleteCloudNativeAPIGatewayConsumerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayLLMModelAPI请求参数结构体
      class DeleteCloudNativeAPIGatewayLLMModelAPIRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 id。
        # @type GatewayId: String
        # @param ModelAPIId: 模型 API ID，全局唯一标识。
        # @type ModelAPIId: String

        attr_accessor :GatewayId, :ModelAPIId

        def initialize(gatewayid=nil, modelapiid=nil)
          @GatewayId = gatewayid
          @ModelAPIId = modelapiid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelAPIId = params['ModelAPIId']
        end
      end

      # DeleteCloudNativeAPIGatewayLLMModelAPI返回参数结构体
      class DeleteCloudNativeAPIGatewayLLMModelAPIResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功。</p>
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

      # DeleteCloudNativeAPIGatewayLLMModelService请求参数结构体
      class DeleteCloudNativeAPIGatewayLLMModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 id。
        # @type GatewayId: String
        # @param ModelServiceId: 模型服务 ID，全局唯一标识。
        # @type ModelServiceId: String

        attr_accessor :GatewayId, :ModelServiceId

        def initialize(gatewayid=nil, modelserviceid=nil)
          @GatewayId = gatewayid
          @ModelServiceId = modelserviceid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelServiceId = params['ModelServiceId']
        end
      end

      # DeleteCloudNativeAPIGatewayLLMModelService返回参数结构体
      class DeleteCloudNativeAPIGatewayLLMModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功。</p>
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

      # DeleteCloudNativeAPIGatewayMCPServer请求参数结构体
      class DeleteCloudNativeAPIGatewayMCPServerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>云原生API网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String

        attr_accessor :GatewayId, :ServerId

        def initialize(gatewayid=nil, serverid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
        end
      end

      # DeleteCloudNativeAPIGatewayMCPServer返回参数结构体
      class DeleteCloudNativeAPIGatewayMCPServerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewayMCPTool请求参数结构体
      class DeleteCloudNativeAPIGatewayMCPToolRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ToolId: <p>工具id</p>
        # @type ToolId: String
        # @param ServerId: <p>MCP 服务 id</p>
        # @type ServerId: String

        attr_accessor :GatewayId, :ToolId, :ServerId

        def initialize(gatewayid=nil, toolid=nil, serverid=nil)
          @GatewayId = gatewayid
          @ToolId = toolid
          @ServerId = serverid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ToolId = params['ToolId']
          @ServerId = params['ServerId']
        end
      end

      # DeleteCloudNativeAPIGatewayMCPTool返回参数结构体
      class DeleteCloudNativeAPIGatewayMCPToolResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudNativeAPIGatewaySecretKey请求参数结构体
      class DeleteCloudNativeAPIGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param SecretKeyId: 密钥id
        # @type SecretKeyId: String

        attr_accessor :GatewayId, :SecretKeyId

        def initialize(gatewayid=nil, secretkeyid=nil)
          @GatewayId = gatewayid
          @SecretKeyId = secretkeyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @SecretKeyId = params['SecretKeyId']
        end
      end

      # DeleteCloudNativeAPIGatewaySecretKey返回参数结构体
      class DeleteCloudNativeAPIGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCloudNativeAPIGatewayConsumerGroup请求参数结构体
      class DescribeCloudNativeAPIGatewayConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例id</p>
        # @type GatewayId: String
        # @param ConsumerGroupId: <p>消费者组ID</p>
        # @type ConsumerGroupId: String

        attr_accessor :GatewayId, :ConsumerGroupId

        def initialize(gatewayid=nil, consumergroupid=nil)
          @GatewayId = gatewayid
          @ConsumerGroupId = consumergroupid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerGroupId = params['ConsumerGroupId']
        end
      end

      # DescribeCloudNativeAPIGatewayConsumerGroup返回参数结构体
      class DescribeCloudNativeAPIGatewayConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>消费者组详情。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwConsumerGroup`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwConsumerGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayConsumer请求参数结构体
      class DescribeCloudNativeAPIGatewayConsumerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例id</p>
        # @type GatewayId: String
        # @param ConsumerId: <p>消费者ID</p>
        # @type ConsumerId: String

        attr_accessor :GatewayId, :ConsumerId

        def initialize(gatewayid=nil, consumerid=nil)
          @GatewayId = gatewayid
          @ConsumerId = consumerid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerId = params['ConsumerId']
        end
      end

      # DescribeCloudNativeAPIGatewayConsumer返回参数结构体
      class DescribeCloudNativeAPIGatewayConsumerResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>消费者详情</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwConsumer`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwConsumer.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelAPI请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelAPIRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param ModelAPIId: <p>模型 API ID，全局唯一标识。</p>
        # @type ModelAPIId: String

        attr_accessor :GatewayId, :ModelAPIId

        def initialize(gatewayid=nil, modelapiid=nil)
          @GatewayId = gatewayid
          @ModelAPIId = modelapiid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelAPIId = params['ModelAPIId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelAPI返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelAPIResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>模型 API 信息。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelAPI`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CloudNativeAPIGatewayLLMModelAPI.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelAPIs请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelAPIsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 id。
        # @type GatewayId: String
        # @param Limit: <p>每页条数，范围 [1, 1000]，默认 10。</p>
        # @type Limit: Integer
        # @param Offset: <p>起始位置，从 0 开始。</p>
        # @type Offset: Integer
        # @param Filters: <p>过滤条件。当前未启用具体字段。</p>
        # @type Filters: Array
        # @param Keyword: <p>模糊匹配模型 API 名称。</p>
        # @type Keyword: String
        # @param ConsumerGroupId: <p>消费者组 ID（以 cg- 开头），与 UseToBind 搭配使用。</p>
        # @type ConsumerGroupId: String
        # @param UseToBind: <p>是否用于绑定场景。true 时仅返回可被绑定到指定消费者组的模型 API。</p>
        # @type UseToBind: Boolean

        attr_accessor :GatewayId, :Limit, :Offset, :Filters, :Keyword, :ConsumerGroupId, :UseToBind

        def initialize(gatewayid=nil, limit=nil, offset=nil, filters=nil, keyword=nil, consumergroupid=nil, usetobind=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Keyword = keyword
          @ConsumerGroupId = consumergroupid
          @UseToBind = usetobind
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
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
          @Keyword = params['Keyword']
          @ConsumerGroupId = params['ConsumerGroupId']
          @UseToBind = params['UseToBind']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelAPIs返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelAPIsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 模型 API 列表。
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.ListCloudNativeAPIGatewayLLMModelAPI`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ListCloudNativeAPIGatewayLLMModelAPI.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelService请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param ModelServiceId: <p>模型服务 ID，全局唯一标识。</p>
        # @type ModelServiceId: String

        attr_accessor :GatewayId, :ModelServiceId

        def initialize(gatewayid=nil, modelserviceid=nil)
          @GatewayId = gatewayid
          @ModelServiceId = modelserviceid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelServiceId = params['ModelServiceId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelService返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>模型服务。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelService`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CloudNativeAPIGatewayLLMModelService.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelServices请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param Limit: <p>返回数量，默认为 10，最大值为 1000。</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量，默认为 0。</p>
        # @type Offset: Integer
        # @param Filters: <p>过滤条件，多个过滤条件之间是“与”的关系，支持 Name</p>
        # @type Filters: Array
        # @param ModelAPIId: <p>通过模型 API 筛选模型服务</p>
        # @type ModelAPIId: String
        # @param SecretKeyId: <p>通过密匙查询绑定的模型服务</p>
        # @type SecretKeyId: String
        # @param Keyword: <p>搜索关键词，模糊匹配 name 和 description</p>
        # @type Keyword: String

        attr_accessor :GatewayId, :Limit, :Offset, :Filters, :ModelAPIId, :SecretKeyId, :Keyword

        def initialize(gatewayid=nil, limit=nil, offset=nil, filters=nil, modelapiid=nil, secretkeyid=nil, keyword=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ModelAPIId = modelapiid
          @SecretKeyId = secretkeyid
          @Keyword = keyword
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
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
          @ModelAPIId = params['ModelAPIId']
          @SecretKeyId = params['SecretKeyId']
          @Keyword = params['Keyword']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMModelServices返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>模型服务列表。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.ListCloudNativeAPIGatewayLLMModelService`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ListCloudNativeAPIGatewayLLMModelService.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMTokenUsageList请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMTokenUsageListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例Id</p>
        # @type GatewayId: String
        # @param StartTime: <p>查询起始时间戳</p><p>单位：秒</p>
        # @type StartTime: Integer
        # @param EndTime: <p>查询结束时间戳</p><p>单位：秒</p>
        # @type EndTime: Integer
        # @param Filters: <p>查询过滤条件，Name取值为ConsumerId或ConsumerGroupId</p>
        # @type Filters: Array
        # @param Limit: <p>分页条件，每页条数</p>
        # @type Limit: Integer
        # @param Offset: <p>分页条件，分页偏移量</p>
        # @type Offset: Integer

        attr_accessor :GatewayId, :StartTime, :EndTime, :Filters, :Limit, :Offset

        def initialize(gatewayid=nil, starttime=nil, endtime=nil, filters=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # DescribeCloudNativeAPIGatewayLLMTokenUsageList返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMTokenUsageListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>查询Token用量明细结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMTokenUsageListResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWLLMTokenUsageListResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayLLMTokenUsageStatistics请求参数结构体
      class DescribeCloudNativeAPIGatewayLLMTokenUsageStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例Id</p>
        # @type GatewayId: String
        # @param StartTime: <p>查询开始时间戳</p><p>单位：秒</p>
        # @type StartTime: Integer
        # @param EndTime: <p>查询结束时间戳</p><p>单位：秒</p>
        # @type EndTime: Integer
        # @param Filters: <p>查询过滤条件</p>
        # @type Filters: Array

        attr_accessor :GatewayId, :StartTime, :EndTime, :Filters

        def initialize(gatewayid=nil, starttime=nil, endtime=nil, filters=nil)
          @GatewayId = gatewayid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # DescribeCloudNativeAPIGatewayLLMTokenUsageStatistics返回参数结构体
      class DescribeCloudNativeAPIGatewayLLMTokenUsageStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMTokenUsageStatisticsResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWLLMTokenUsageStatisticsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerACL请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerACLRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例 ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String

        attr_accessor :GatewayId, :ServerId

        def initialize(gatewayid=nil, serverid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerACL返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerACLResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>MCP 服务 ACL 列表结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPServerACLResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWMCPServerACLResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerAuth请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerAuthRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String

        attr_accessor :GatewayId, :ServerId

        def initialize(gatewayid=nil, serverid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerAuth返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerAuthResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>MCP服务认证查询结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPServerAuthResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWMCPServerAuthResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerList请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param Limit: <p>分页大小</p>
        # @type Limit: Integer
        # @param Offset: <p>分页偏移</p>
        # @type Offset: Integer

        attr_accessor :GatewayId, :Limit, :Offset

        def initialize(gatewayid=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServerList返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>MCP Server 列表结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPServerList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWMCPServerList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServer请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>云原生API网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String

        attr_accessor :GatewayId, :ServerId

        def initialize(gatewayid=nil, serverid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPServer返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPServerResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>mcp server详情</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPServer`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWMCPServer.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPToolACLList请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolACLListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP 服务ID</p>
        # @type ServerId: String
        # @param Limit: <p>分页大小</p>
        # @type Limit: Integer
        # @param Offset: <p>分页偏移</p>
        # @type Offset: Integer
        # @param Keyword: <p>搜索关键词</p>
        # @type Keyword: String

        attr_accessor :GatewayId, :ServerId, :Limit, :Offset, :Keyword

        def initialize(gatewayid=nil, serverid=nil, limit=nil, offset=nil, keyword=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @Limit = limit
          @Offset = offset
          @Keyword = keyword
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Keyword = params['Keyword']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPToolACLList返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolACLListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>MCP 服务 Tool ACL 列表结果</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPToolACLListResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AIGWMCPToolACLListResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPToolList请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 id</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务 id</p>
        # @type ServerId: String
        # @param Limit: <p>条数</p><p>取值范围：[1, 100]</p>
        # @type Limit: Integer
        # @param Offset: <p>开始位置</p><p>取值范围：[1, 100000]</p>
        # @type Offset: Integer

        attr_accessor :GatewayId, :ServerId, :Limit, :Offset

        def initialize(gatewayid=nil, serverid=nil, limit=nil, offset=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPToolList返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>tool 列表</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwMCPToolList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwMCPToolList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPTool请求参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例 id</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP Server id</p>
        # @type ServerId: String
        # @param ToolId: <p>工具 id</p>
        # @type ToolId: String

        attr_accessor :GatewayId, :ServerId, :ToolId

        def initialize(gatewayid=nil, serverid=nil, toolid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @ToolId = toolid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @ToolId = params['ToolId']
        end
      end

      # DescribeCloudNativeAPIGatewayMCPTool返回参数结构体
      class DescribeCloudNativeAPIGatewayMCPToolResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCloudNativeAPIGatewaySecretKey请求参数结构体
      class DescribeCloudNativeAPIGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param SecretKeyId: <p>密钥id</p>
        # @type SecretKeyId: String

        attr_accessor :GatewayId, :SecretKeyId

        def initialize(gatewayid=nil, secretkeyid=nil)
          @GatewayId = gatewayid
          @SecretKeyId = secretkeyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @SecretKeyId = params['SecretKeyId']
        end
      end

      # DescribeCloudNativeAPIGatewaySecretKey返回参数结构体
      class DescribeCloudNativeAPIGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>密钥详情。</p>
        # @type Result: :class:`Tencentcloud::Cngw.v20230418.models.CNAPIGwSecretKey`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CNAPIGwSecretKey.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudNativeAPIGatewaySecretKeyValue请求参数结构体
      class DescribeCloudNativeAPIGatewaySecretKeyValueRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 实例 ID
        # @type GatewayId: String
        # @param SecretKeyId: 密钥id
        # @type SecretKeyId: String

        attr_accessor :GatewayId, :SecretKeyId

        def initialize(gatewayid=nil, secretkeyid=nil)
          @GatewayId = gatewayid
          @SecretKeyId = secretkeyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @SecretKeyId = params['SecretKeyId']
        end
      end

      # DescribeCloudNativeAPIGatewaySecretKeyValue返回参数结构体
      class DescribeCloudNativeAPIGatewaySecretKeyValueResponse < TencentCloud::Common::AbstractModel
        # @param Result: 密钥值
        # @type Result: String
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

      # LLM 模型 API 列表
      class ListCloudNativeAPIGatewayLLMModelAPI < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param DataList: AI 网关模型 API 列表。
        # @type DataList: Array

        attr_accessor :TotalCount, :DataList

        def initialize(totalcount=nil, datalist=nil)
          @TotalCount = totalcount
          @DataList = datalist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              cloudnativeapigatewayllmmodelapi_tmp = CloudNativeAPIGatewayLLMModelAPI.new
              cloudnativeapigatewayllmmodelapi_tmp.deserialize(i)
              @DataList << cloudnativeapigatewayllmmodelapi_tmp
            end
          end
        end
      end

      # LLM 模型服务列表
      class ListCloudNativeAPIGatewayLLMModelService < TencentCloud::Common::AbstractModel
        # @param TotalCount: 模型服务数量。
        # @type TotalCount: Integer
        # @param DataList: 模型服务列表。
        # @type DataList: Array

        attr_accessor :TotalCount, :DataList

        def initialize(totalcount=nil, datalist=nil)
          @TotalCount = totalcount
          @DataList = datalist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              cloudnativeapigatewayllmmodelservice_tmp = CloudNativeAPIGatewayLLMModelService.new
              cloudnativeapigatewayllmmodelservice_tmp.deserialize(i)
              @DataList << cloudnativeapigatewayllmmodelservice_tmp
            end
          end
        end
      end

      # ModifyCloudNativeAPIGatewayConsumerGroup请求参数结构体
      class ModifyCloudNativeAPIGatewayConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param ConsumerGroupId: <p>消费者组 ID（以 cg- 开头）。</p>
        # @type ConsumerGroupId: String
        # @param Name: <p>消费者组名称，最长 60 字符。</p>
        # @type Name: String
        # @param Status: <p>启用状态。</p><p>枚举值：</p><ul><li>Enable：启用</li><li>Disable：禁用</li></ul>
        # @type Status: String
        # @param Description: <p>消费者组描述。最长 200 字符。</p>
        # @type Description: String

        attr_accessor :GatewayId, :ConsumerGroupId, :Name, :Status, :Description

        def initialize(gatewayid=nil, consumergroupid=nil, name=nil, status=nil, description=nil)
          @GatewayId = gatewayid
          @ConsumerGroupId = consumergroupid
          @Name = name
          @Status = status
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerGroupId = params['ConsumerGroupId']
          @Name = params['Name']
          @Status = params['Status']
          @Description = params['Description']
        end
      end

      # ModifyCloudNativeAPIGatewayConsumerGroup返回参数结构体
      class ModifyCloudNativeAPIGatewayConsumerGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayConsumer请求参数结构体
      class ModifyCloudNativeAPIGatewayConsumerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例id
        # @type GatewayId: String
        # @param ConsumerId: <p>消费者 ID。</p>
        # @type ConsumerId: String
        # @param Name: <p>消费者名称，最长 60 字符。</p>
        # @type Name: String
        # @param Description: <p>消费者描述。最长 200 字符。</p>
        # @type Description: String

        attr_accessor :GatewayId, :ConsumerId, :Name, :Description

        def initialize(gatewayid=nil, consumerid=nil, name=nil, description=nil)
          @GatewayId = gatewayid
          @ConsumerId = consumerid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ConsumerId = params['ConsumerId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifyCloudNativeAPIGatewayConsumer返回参数结构体
      class ModifyCloudNativeAPIGatewayConsumerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayLLMModelAPI请求参数结构体
      class ModifyCloudNativeAPIGatewayLLMModelAPIRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param ModelAPIId: <p>模型 API ID，全局唯一标识。</p>
        # @type ModelAPIId: String
        # @param Name: <p>模型 API 名称，最长 60 字符。</p>
        # @type Name: String
        # @param BasePath: <p>统一前缀路径（可选）。例如 /v1/openai。</p>
        # @type BasePath: String
        # @param Description: <p>模型 API 描述。最长 200 字符。</p>
        # @type Description: String
        # @param ListModelServiceId: <p>关联的模型服务 ID 列表，长度 1-10。</p>
        # @type ListModelServiceId: Array
        # @param ModelServiceRoute: <p>多模型服务路由策略。ListModelServiceId 多于 1 项时必填。</p>
        # @type ModelServiceRoute: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelServiceRoute`
        # @param MatchHeaders: <p>Header 路由匹配规则。当前仅支持 Operator=exact。</p>
        # @type MatchHeaders: Array
        # @param EnableCrossServiceFallback: <p>是否启用跨服务 Fallback。</p>
        # @type EnableCrossServiceFallback: Boolean
        # @param CrossServiceFallbackConfig: <p>跨服务 Fallback 配置。EnableCrossServiceFallback=true 时必填。</p>
        # @type CrossServiceFallbackConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWCrossServiceFallbackConfig`
        # @param TagFilter: <p>标签过滤策略。需要网关版本 ≥ 3.9.4。</p>
        # @type TagFilter: :class:`Tencentcloud::Cngw.v20230418.models.AIGWTagFilter`
        # @param LogConfig: <p>日志输出配置。需要网关版本 ≥ 3.9.4。</p>
        # @type LogConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLogConfig`

        attr_accessor :GatewayId, :ModelAPIId, :Name, :BasePath, :Description, :ListModelServiceId, :ModelServiceRoute, :MatchHeaders, :EnableCrossServiceFallback, :CrossServiceFallbackConfig, :TagFilter, :LogConfig

        def initialize(gatewayid=nil, modelapiid=nil, name=nil, basepath=nil, description=nil, listmodelserviceid=nil, modelserviceroute=nil, matchheaders=nil, enablecrossservicefallback=nil, crossservicefallbackconfig=nil, tagfilter=nil, logconfig=nil)
          @GatewayId = gatewayid
          @ModelAPIId = modelapiid
          @Name = name
          @BasePath = basepath
          @Description = description
          @ListModelServiceId = listmodelserviceid
          @ModelServiceRoute = modelserviceroute
          @MatchHeaders = matchheaders
          @EnableCrossServiceFallback = enablecrossservicefallback
          @CrossServiceFallbackConfig = crossservicefallbackconfig
          @TagFilter = tagfilter
          @LogConfig = logconfig
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelAPIId = params['ModelAPIId']
          @Name = params['Name']
          @BasePath = params['BasePath']
          @Description = params['Description']
          @ListModelServiceId = params['ListModelServiceId']
          unless params['ModelServiceRoute'].nil?
            @ModelServiceRoute = CloudNativeAPIGatewayLLMModelServiceRoute.new
            @ModelServiceRoute.deserialize(params['ModelServiceRoute'])
          end
          unless params['MatchHeaders'].nil?
            @MatchHeaders = []
            params['MatchHeaders'].each do |i|
              aigwkvmatch_tmp = AIGWKVMatch.new
              aigwkvmatch_tmp.deserialize(i)
              @MatchHeaders << aigwkvmatch_tmp
            end
          end
          @EnableCrossServiceFallback = params['EnableCrossServiceFallback']
          unless params['CrossServiceFallbackConfig'].nil?
            @CrossServiceFallbackConfig = AIGWCrossServiceFallbackConfig.new
            @CrossServiceFallbackConfig.deserialize(params['CrossServiceFallbackConfig'])
          end
          unless params['TagFilter'].nil?
            @TagFilter = AIGWTagFilter.new
            @TagFilter.deserialize(params['TagFilter'])
          end
          unless params['LogConfig'].nil?
            @LogConfig = AIGWLogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
        end
      end

      # ModifyCloudNativeAPIGatewayLLMModelAPI返回参数结构体
      class ModifyCloudNativeAPIGatewayLLMModelAPIResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功。</p>
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

      # ModifyCloudNativeAPIGatewayLLMModelService请求参数结构体
      class ModifyCloudNativeAPIGatewayLLMModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关 id。</p>
        # @type GatewayId: String
        # @param ModelServiceId: <p>模型服务 ID，全局唯一标识。</p>
        # @type ModelServiceId: String
        # @param Name: <p>修改服务名称，长度2-50字符，支持中英文、数字、下划线。</p>
        # @type Name: String
        # @param DefaultModel: <p>修改默认模型，模型选择方式为 Specify 时必填。</p>
        # @type DefaultModel: String
        # @param ModelSelector: <p>修改模型选择方式，选项：Specify（指定模型）、PassThrough（透传请求模型）。</p>
        # @type ModelSelector: String
        # @param EnableModelFallback: <p>修改开启模型降级，模型选择方式为 Specify 时必填。</p>
        # @type EnableModelFallback: Boolean
        # @param ModelFallbackRule: <p>修改可以配置备用模型规则，EnableSpecifyModelFallback 为 true 时必填。</p>
        # @type ModelFallbackRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelFallbackRule`
        # @param EnableModelParamCheck: <p>修改开启模型参数校验，是否校验客户端传递的 model 参数, 模型选择方式为 PassThrough 时必填</p>
        # @type EnableModelParamCheck: Boolean
        # @param ModelParamCheckRule: <p>修改模型检验信息，EnableModelParamCheck 为 true 时必填。</p>
        # @type ModelParamCheckRule: :class:`Tencentcloud::Cngw.v20230418.models.CloudNativeAPIGatewayLLMModelParamCheckInfo`
        # @param Description: <p>修改描述。</p>
        # @type Description: String
        # @param UpstreamURL: <p>修改模型服务地址</p>
        # @type UpstreamURL: String
        # @param ConnectTimeout: <p>连接超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：10000</p>
        # @type ConnectTimeout: Integer
        # @param WriteTimeout: <p>写入超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：60000</p>
        # @type WriteTimeout: Integer
        # @param ReadTimeout: <p>读取超时时间</p><p>取值范围：[1, 3600000]</p><p>单位：毫秒</p><p>默认值：60000</p>
        # @type ReadTimeout: Integer
        # @param Retries: <p>重试次数</p><p>取值范围：[0, 5]</p><p>单位：次</p><p>默认值：0</p>
        # @type Retries: Integer
        # @param UpstreamUrlMode: <p>路径拼接模式</p><p>枚举值：</p><ul><li>FixedPath： 固定路径</li><li>AutoConcat： 自动拼接</li></ul>
        # @type UpstreamUrlMode: String
        # @param SNI: <p>SNI</p>
        # @type SNI: String
        # @param QuotaLimit: <p>模型服务级别的配额上限（RPM/TPM）。需要网关版本 ≥ 3.9.4。</p>
        # @type QuotaLimit: :class:`Tencentcloud::Cngw.v20230418.models.AIGWLLMQuotaLimit`
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :GatewayId, :ModelServiceId, :Name, :DefaultModel, :ModelSelector, :EnableModelFallback, :ModelFallbackRule, :EnableModelParamCheck, :ModelParamCheckRule, :Description, :UpstreamURL, :ConnectTimeout, :WriteTimeout, :ReadTimeout, :Retries, :UpstreamUrlMode, :SNI, :QuotaLimit, :Tags

        def initialize(gatewayid=nil, modelserviceid=nil, name=nil, defaultmodel=nil, modelselector=nil, enablemodelfallback=nil, modelfallbackrule=nil, enablemodelparamcheck=nil, modelparamcheckrule=nil, description=nil, upstreamurl=nil, connecttimeout=nil, writetimeout=nil, readtimeout=nil, retries=nil, upstreamurlmode=nil, sni=nil, quotalimit=nil, tags=nil)
          @GatewayId = gatewayid
          @ModelServiceId = modelserviceid
          @Name = name
          @DefaultModel = defaultmodel
          @ModelSelector = modelselector
          @EnableModelFallback = enablemodelfallback
          @ModelFallbackRule = modelfallbackrule
          @EnableModelParamCheck = enablemodelparamcheck
          @ModelParamCheckRule = modelparamcheckrule
          @Description = description
          @UpstreamURL = upstreamurl
          @ConnectTimeout = connecttimeout
          @WriteTimeout = writetimeout
          @ReadTimeout = readtimeout
          @Retries = retries
          @UpstreamUrlMode = upstreamurlmode
          @SNI = sni
          @QuotaLimit = quotalimit
          @Tags = tags
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ModelServiceId = params['ModelServiceId']
          @Name = params['Name']
          @DefaultModel = params['DefaultModel']
          @ModelSelector = params['ModelSelector']
          @EnableModelFallback = params['EnableModelFallback']
          unless params['ModelFallbackRule'].nil?
            @ModelFallbackRule = CloudNativeAPIGatewayLLMModelFallbackRule.new
            @ModelFallbackRule.deserialize(params['ModelFallbackRule'])
          end
          @EnableModelParamCheck = params['EnableModelParamCheck']
          unless params['ModelParamCheckRule'].nil?
            @ModelParamCheckRule = CloudNativeAPIGatewayLLMModelParamCheckInfo.new
            @ModelParamCheckRule.deserialize(params['ModelParamCheckRule'])
          end
          @Description = params['Description']
          @UpstreamURL = params['UpstreamURL']
          @ConnectTimeout = params['ConnectTimeout']
          @WriteTimeout = params['WriteTimeout']
          @ReadTimeout = params['ReadTimeout']
          @Retries = params['Retries']
          @UpstreamUrlMode = params['UpstreamUrlMode']
          @SNI = params['SNI']
          unless params['QuotaLimit'].nil?
            @QuotaLimit = AIGWLLMQuotaLimit.new
            @QuotaLimit.deserialize(params['QuotaLimit'])
          end
          @Tags = params['Tags']
        end
      end

      # ModifyCloudNativeAPIGatewayLLMModelService返回参数结构体
      class ModifyCloudNativeAPIGatewayLLMModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>是否成功</p>
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

      # ModifyCloudNativeAPIGatewayMCPServerACL请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerACLRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String
        # @param ACLType: <p>ACL类型</p><p>枚举值：</p><ul><li>None： 不开启</li><li>Allow： 白名单</li><li>Deny： 黑名单</li></ul><p>默认值：None</p>
        # @type ACLType: String
        # @param ACLConsumerIds: <p>需要关联的消费者ID列表</p>
        # @type ACLConsumerIds: Array
        # @param ACLConsumerGroupIds: <p>需要关联的消费者组ID列表</p>
        # @type ACLConsumerGroupIds: Array

        attr_accessor :GatewayId, :ServerId, :ACLType, :ACLConsumerIds, :ACLConsumerGroupIds

        def initialize(gatewayid=nil, serverid=nil, acltype=nil, aclconsumerids=nil, aclconsumergroupids=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @ACLType = acltype
          @ACLConsumerIds = aclconsumerids
          @ACLConsumerGroupIds = aclconsumergroupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @ACLType = params['ACLType']
          @ACLConsumerIds = params['ACLConsumerIds']
          @ACLConsumerGroupIds = params['ACLConsumerGroupIds']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPServerACL返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerACLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayMCPServerAuth请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerAuthRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String
        # @param AuthType: <p>认证类型</p><p>枚举值：</p><ul><li>None： 无认证</li><li>ApiKey： API Key认证</li></ul>
        # @type AuthType: String

        attr_accessor :GatewayId, :ServerId, :AuthType

        def initialize(gatewayid=nil, serverid=nil, authtype=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @AuthType = authtype
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @AuthType = params['AuthType']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPServerAuth返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerAuthResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayMCPServer请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param DisplayName: <p>展示名字</p>
        # @type DisplayName: String
        # @param ServerId: <p>服务 id</p>
        # @type ServerId: String
        # @param UpstreamType: <p>后端类型</p><p>枚举值：</p><ul><li>HostIP： 域名 ip</li><li>MCPRegistry： MCP 注册中心</li><li>VirtualMCPServer： 虚拟MCP 服务</li></ul>
        # @type UpstreamType: String
        # @param Timeout: <p>超时时间，单位ms，最大60000</p>
        # @type Timeout: Integer
        # @param RetryCount: <p>重试次数，最大3次</p>
        # @type RetryCount: Integer
        # @param UpstreamInfo: <p>注册中心来源信息</p>
        # @type UpstreamInfo: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPUpstreamInfo`
        # @param SessionConfig: <p>会话配置</p>
        # @type SessionConfig: :class:`Tencentcloud::Cngw.v20230418.models.AIGWMCPSessionConfig`
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param EnableHealthCheck: <p>是否启用健康检查</p>
        # @type EnableHealthCheck: Boolean
        # @param HealthCheck: <p>健康检查配置</p>
        # @type HealthCheck: :class:`Tencentcloud::Cngw.v20230418.models.AIGWHealthCheckSetting`

        attr_accessor :GatewayId, :DisplayName, :ServerId, :UpstreamType, :Timeout, :RetryCount, :UpstreamInfo, :SessionConfig, :Description, :EnableHealthCheck, :HealthCheck

        def initialize(gatewayid=nil, displayname=nil, serverid=nil, upstreamtype=nil, timeout=nil, retrycount=nil, upstreaminfo=nil, sessionconfig=nil, description=nil, enablehealthcheck=nil, healthcheck=nil)
          @GatewayId = gatewayid
          @DisplayName = displayname
          @ServerId = serverid
          @UpstreamType = upstreamtype
          @Timeout = timeout
          @RetryCount = retrycount
          @UpstreamInfo = upstreaminfo
          @SessionConfig = sessionconfig
          @Description = description
          @EnableHealthCheck = enablehealthcheck
          @HealthCheck = healthcheck
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @DisplayName = params['DisplayName']
          @ServerId = params['ServerId']
          @UpstreamType = params['UpstreamType']
          @Timeout = params['Timeout']
          @RetryCount = params['RetryCount']
          unless params['UpstreamInfo'].nil?
            @UpstreamInfo = AIGWMCPUpstreamInfo.new
            @UpstreamInfo.deserialize(params['UpstreamInfo'])
          end
          unless params['SessionConfig'].nil?
            @SessionConfig = AIGWMCPSessionConfig.new
            @SessionConfig.deserialize(params['SessionConfig'])
          end
          @Description = params['Description']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheck'].nil?
            @HealthCheck = AIGWHealthCheckSetting.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
        end
      end

      # ModifyCloudNativeAPIGatewayMCPServer返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayMCPServerStatus请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerStatusRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>mcp server id</p>
        # @type ServerId: String
        # @param Status: <p>mcp server状态</p><p>枚举值：</p><ul><li>Online： 上线</li><li>Offline： 下线</li></ul>
        # @type Status: String

        attr_accessor :GatewayId, :ServerId, :Status

        def initialize(gatewayid=nil, serverid=nil, status=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @Status = status
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @Status = params['Status']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPServerStatus返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPServerStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果</p>
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

      # ModifyCloudNativeAPIGatewayMCPToolACL请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolACLRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCP服务ID</p>
        # @type ServerId: String
        # @param ToolId: <p>MCP工具ID</p>
        # @type ToolId: String
        # @param ACLType: <p>鉴权类型</p><p>枚举值：</p><ul><li>None： 继承server鉴权类型</li><li>Allow： 白名单</li><li>Deny： 黑名单</li></ul>
        # @type ACLType: String
        # @param ACLConsumerIds: <p>需要关联的消费者ID列表</p>
        # @type ACLConsumerIds: Array
        # @param ACLConsumerGroupIds: <p>需要关联的消费者组ID列表</p>
        # @type ACLConsumerGroupIds: Array

        attr_accessor :GatewayId, :ServerId, :ToolId, :ACLType, :ACLConsumerIds, :ACLConsumerGroupIds

        def initialize(gatewayid=nil, serverid=nil, toolid=nil, acltype=nil, aclconsumerids=nil, aclconsumergroupids=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @ToolId = toolid
          @ACLType = acltype
          @ACLConsumerIds = aclconsumerids
          @ACLConsumerGroupIds = aclconsumergroupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @ToolId = params['ToolId']
          @ACLType = params['ACLType']
          @ACLConsumerIds = params['ACLConsumerIds']
          @ACLConsumerGroupIds = params['ACLConsumerGroupIds']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPToolACL返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolACLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayMCPTool请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例 id</p>
        # @type GatewayId: String
        # @param ServerId: <p>MCPserverId</p>
        # @type ServerId: String
        # @param ToolId: <p>工具 id</p>
        # @type ToolId: String
        # @param Name: <p>工具名字</p>
        # @type Name: String
        # @param Path: <p>路径</p>
        # @type Path: String
        # @param ContentType: <p>报文格式</p>
        # @type ContentType: String
        # @param Method: <p>请求方法</p><p>枚举值：</p><ul><li>GET： GET</li><li>PUT： PUT</li><li>POST： POST</li><li>DELETE： DELETE</li><li>PATCH： PATCH</li></ul>
        # @type Method: String
        # @param DisplayName: <p>展示</p>
        # @type DisplayName: String
        # @param InputParams: <p>输入参数</p>
        # @type InputParams: Array
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param ToolVersion: <p>tool版本</p>
        # @type ToolVersion: String

        attr_accessor :GatewayId, :ServerId, :ToolId, :Name, :Path, :ContentType, :Method, :DisplayName, :InputParams, :Description, :ToolVersion

        def initialize(gatewayid=nil, serverid=nil, toolid=nil, name=nil, path=nil, contenttype=nil, method=nil, displayname=nil, inputparams=nil, description=nil, toolversion=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @ToolId = toolid
          @Name = name
          @Path = path
          @ContentType = contenttype
          @Method = method
          @DisplayName = displayname
          @InputParams = inputparams
          @Description = description
          @ToolVersion = toolversion
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @ToolId = params['ToolId']
          @Name = params['Name']
          @Path = params['Path']
          @ContentType = params['ContentType']
          @Method = params['Method']
          @DisplayName = params['DisplayName']
          unless params['InputParams'].nil?
            @InputParams = []
            params['InputParams'].each do |i|
              cnapigwmcptoolparam_tmp = CNAPIGwMCPToolParam.new
              cnapigwmcptoolparam_tmp.deserialize(i)
              @InputParams << cnapigwmcptoolparam_tmp
            end
          end
          @Description = params['Description']
          @ToolVersion = params['ToolVersion']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPTool返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudNativeAPIGatewayMCPToolStatus请求参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolStatusRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>实例 ID</p>
        # @type GatewayId: String
        # @param ServerId: <p>mcp server id</p>
        # @type ServerId: String
        # @param Status: <p>mcp tool 状态</p><p>枚举值：</p><ul><li>Enable： 启用</li><li>Disable： 禁用</li></ul>
        # @type Status: String
        # @param ToolId: <p>mcp tool id</p>
        # @type ToolId: String

        attr_accessor :GatewayId, :ServerId, :Status, :ToolId

        def initialize(gatewayid=nil, serverid=nil, status=nil, toolid=nil)
          @GatewayId = gatewayid
          @ServerId = serverid
          @Status = status
          @ToolId = toolid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ServerId = params['ServerId']
          @Status = params['Status']
          @ToolId = params['ToolId']
        end
      end

      # ModifyCloudNativeAPIGatewayMCPToolStatus返回参数结构体
      class ModifyCloudNativeAPIGatewayMCPToolStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>创建结果</p>
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

      # ModifyCloudNativeAPIGatewaySecretKey请求参数结构体
      class ModifyCloudNativeAPIGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 实例 ID
        # @type GatewayId: String
        # @param Name: 密钥名字
        # @type Name: String
        # @param SecretKeyId: 密钥id
        # @type SecretKeyId: String
        # @param Description: 描述,200字以内
        # @type Description: String

        attr_accessor :GatewayId, :Name, :SecretKeyId, :Description

        def initialize(gatewayid=nil, name=nil, secretkeyid=nil, description=nil)
          @GatewayId = gatewayid
          @Name = name
          @SecretKeyId = secretkeyid
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @SecretKeyId = params['SecretKeyId']
          @Description = params['Description']
        end
      end

      # ModifyCloudNativeAPIGatewaySecretKey返回参数结构体
      class ModifyCloudNativeAPIGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
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

      # RemoveCloudNativeAPIGatewayConsumerGroupAuth请求参数结构体
      class RemoveCloudNativeAPIGatewayConsumerGroupAuthRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: <p>网关实例id</p>
        # @type GatewayId: String
        # @param ResourceType: <p>授权资源类型。</p><p>枚举值：</p><ul><li>ModelAPI：模型 API</li><li>MCPServer：MCP Server</li></ul>
        # @type ResourceType: String
        # @param ResourceId: <p>对应资源的 ID。</p><ul><li>ResourceType=ModelAPI 时是模型 API ID</li><li>ResourceType=MCPServer 时是 MCP Server ID</li></ul>
        # @type ResourceId: String
        # @param ConsumerGroupIds: <p>消费者组 ID 列表（每个 ID 以 cg- 开头），长度 1-10。</p>
        # @type ConsumerGroupIds: Array

        attr_accessor :GatewayId, :ResourceType, :ResourceId, :ConsumerGroupIds

        def initialize(gatewayid=nil, resourcetype=nil, resourceid=nil, consumergroupids=nil)
          @GatewayId = gatewayid
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @ConsumerGroupIds = consumergroupids
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @ConsumerGroupIds = params['ConsumerGroupIds']
        end
      end

      # RemoveCloudNativeAPIGatewayConsumerGroupAuth返回参数结构体
      class RemoveCloudNativeAPIGatewayConsumerGroupAuthResponse < TencentCloud::Common::AbstractModel
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

