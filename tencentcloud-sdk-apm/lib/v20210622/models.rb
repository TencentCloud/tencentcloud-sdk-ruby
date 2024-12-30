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
  module Apm
    module V20210622
      # APM 浮点数类型键值对
      class APMKV < TencentCloud::Common::AbstractModel
        # @param Key: Key 值定义
        # @type Key: String
        # @param Value: Value 值定义
        # @type Value: Float

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

      # APM 通用 KV 结构
      class APMKVItem < TencentCloud::Common::AbstractModel
        # @param Key: Key 值定义
        # @type Key: String
        # @param Value: Value 值定义
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

      # APM Agent 信息
      class ApmAgentInfo < TencentCloud::Common::AbstractModel
        # @param AgentDownloadURL: Agent 下载地址
        # @type AgentDownloadURL: String
        # @param CollectorURL: Collector 上报地址
        # @type CollectorURL: String
        # @param Token: Token 信息
        # @type Token: String
        # @param PublicCollectorURL: 外网上报地址
        # @type PublicCollectorURL: String
        # @param InnerCollectorURL: 自研 VPC 上报地址
        # @type InnerCollectorURL: String
        # @param PrivateLinkCollectorURL: 内网上报地址( Private Link 上报地址)
        # @type PrivateLinkCollectorURL: String

        attr_accessor :AgentDownloadURL, :CollectorURL, :Token, :PublicCollectorURL, :InnerCollectorURL, :PrivateLinkCollectorURL

        def initialize(agentdownloadurl=nil, collectorurl=nil, token=nil, publiccollectorurl=nil, innercollectorurl=nil, privatelinkcollectorurl=nil)
          @AgentDownloadURL = agentdownloadurl
          @CollectorURL = collectorurl
          @Token = token
          @PublicCollectorURL = publiccollectorurl
          @InnerCollectorURL = innercollectorurl
          @PrivateLinkCollectorURL = privatelinkcollectorurl
        end

        def deserialize(params)
          @AgentDownloadURL = params['AgentDownloadURL']
          @CollectorURL = params['CollectorURL']
          @Token = params['Token']
          @PublicCollectorURL = params['PublicCollectorURL']
          @InnerCollectorURL = params['InnerCollectorURL']
          @PrivateLinkCollectorURL = params['PrivateLinkCollectorURL']
        end
      end

      # 应用相关的配置列表项
      class ApmApplicationConfigView < TencentCloud::Common::AbstractModel
        # @param InstanceKey: 业务系统 ID
        # @type InstanceKey: String
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param OperationNameFilter: 接口过滤
        # @type OperationNameFilter: String
        # @param ExceptionFilter: 错误类型过滤
        # @type ExceptionFilter: String
        # @param ErrorCodeFilter: HTTP 状态码过滤
        # @type ErrorCodeFilter: String
        # @param EventEnable: 应用诊断开关（已废弃）
        # @type EventEnable: Boolean
        # @param UrlConvergenceSwitch: URL 收敛开关 0 关 1 开
        # @type UrlConvergenceSwitch: Integer
        # @param UrlConvergenceThreshold: URL 收敛阈值
        # @type UrlConvergenceThreshold: Integer
        # @param UrlConvergence: URL 收敛规则正则
        # @type UrlConvergence: String
        # @param UrlExclude: URL 排除规则正则
        # @type UrlExclude: String
        # @param IsRelatedLog: 是否开启日志 0 关 1 开
        # @type IsRelatedLog: Integer
        # @param LogSource: 日志源
        # @type LogSource: String
        # @param LogSet: 日志集
        # @type LogSet: String
        # @param LogTopicID: 日志主题
        # @type LogTopicID: String
        # @param SnapshotEnable: 方法栈快照开关 true 开启 false 关闭
        # @type SnapshotEnable: Boolean
        # @param SnapshotTimeout: 慢调用监听触发阈值
        # @type SnapshotTimeout: Integer
        # @param AgentEnable: 探针总开关
        # @type AgentEnable: Boolean
        # @param InstrumentList: 组件列表开关（已废弃）
        # @type InstrumentList: Array
        # @param TraceSquash: 链路压缩开关（已废弃）
        # @type TraceSquash: Boolean

        attr_accessor :InstanceKey, :ServiceName, :OperationNameFilter, :ExceptionFilter, :ErrorCodeFilter, :EventEnable, :UrlConvergenceSwitch, :UrlConvergenceThreshold, :UrlConvergence, :UrlExclude, :IsRelatedLog, :LogSource, :LogSet, :LogTopicID, :SnapshotEnable, :SnapshotTimeout, :AgentEnable, :InstrumentList, :TraceSquash

        def initialize(instancekey=nil, servicename=nil, operationnamefilter=nil, exceptionfilter=nil, errorcodefilter=nil, eventenable=nil, urlconvergenceswitch=nil, urlconvergencethreshold=nil, urlconvergence=nil, urlexclude=nil, isrelatedlog=nil, logsource=nil, logset=nil, logtopicid=nil, snapshotenable=nil, snapshottimeout=nil, agentenable=nil, instrumentlist=nil, tracesquash=nil)
          @InstanceKey = instancekey
          @ServiceName = servicename
          @OperationNameFilter = operationnamefilter
          @ExceptionFilter = exceptionfilter
          @ErrorCodeFilter = errorcodefilter
          @EventEnable = eventenable
          @UrlConvergenceSwitch = urlconvergenceswitch
          @UrlConvergenceThreshold = urlconvergencethreshold
          @UrlConvergence = urlconvergence
          @UrlExclude = urlexclude
          @IsRelatedLog = isrelatedlog
          @LogSource = logsource
          @LogSet = logset
          @LogTopicID = logtopicid
          @SnapshotEnable = snapshotenable
          @SnapshotTimeout = snapshottimeout
          @AgentEnable = agentenable
          @InstrumentList = instrumentlist
          @TraceSquash = tracesquash
        end

        def deserialize(params)
          @InstanceKey = params['InstanceKey']
          @ServiceName = params['ServiceName']
          @OperationNameFilter = params['OperationNameFilter']
          @ExceptionFilter = params['ExceptionFilter']
          @ErrorCodeFilter = params['ErrorCodeFilter']
          @EventEnable = params['EventEnable']
          @UrlConvergenceSwitch = params['UrlConvergenceSwitch']
          @UrlConvergenceThreshold = params['UrlConvergenceThreshold']
          @UrlConvergence = params['UrlConvergence']
          @UrlExclude = params['UrlExclude']
          @IsRelatedLog = params['IsRelatedLog']
          @LogSource = params['LogSource']
          @LogSet = params['LogSet']
          @LogTopicID = params['LogTopicID']
          @SnapshotEnable = params['SnapshotEnable']
          @SnapshotTimeout = params['SnapshotTimeout']
          @AgentEnable = params['AgentEnable']
          unless params['InstrumentList'].nil?
            @InstrumentList = []
            params['InstrumentList'].each do |i|
              instrument_tmp = Instrument.new
              instrument_tmp.deserialize(i)
              @InstrumentList << instrument_tmp
            end
          end
          @TraceSquash = params['TraceSquash']
        end
      end

      # 指标维度信息
      class ApmField < TencentCloud::Common::AbstractModel
        # @param CompareVal: 昨日同比指标值，已弃用，不建议使用
        # @type CompareVal: String
        # @param CompareVals: Compare值结果数组，推荐使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareVals: Array
        # @param Value: 指标值
        # @type Value: Float
        # @param Unit: 指标所对应的单位
        # @type Unit: String
        # @param Key: 请求数
        # @type Key: String
        # @param LastPeriodValue: 同环比上周期具体数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastPeriodValue: Array

        attr_accessor :CompareVal, :CompareVals, :Value, :Unit, :Key, :LastPeriodValue

        def initialize(compareval=nil, comparevals=nil, value=nil, unit=nil, key=nil, lastperiodvalue=nil)
          @CompareVal = compareval
          @CompareVals = comparevals
          @Value = value
          @Unit = unit
          @Key = key
          @LastPeriodValue = lastperiodvalue
        end

        def deserialize(params)
          @CompareVal = params['CompareVal']
          unless params['CompareVals'].nil?
            @CompareVals = []
            params['CompareVals'].each do |i|
              apmkvitem_tmp = APMKVItem.new
              apmkvitem_tmp.deserialize(i)
              @CompareVals << apmkvitem_tmp
            end
          end
          @Value = params['Value']
          @Unit = params['Unit']
          @Key = params['Key']
          unless params['LastPeriodValue'].nil?
            @LastPeriodValue = []
            params['LastPeriodValue'].each do |i|
              apmkv_tmp = APMKV.new
              apmkv_tmp.deserialize(i)
              @LastPeriodValue << apmkv_tmp
            end
          end
        end
      end

      # APM 业务系统信息
      class ApmInstanceDetail < TencentCloud::Common::AbstractModel
        # @param AmountOfUsedStorage: 存储使用量( MB )
        # @type AmountOfUsedStorage: Float
        # @param Name: 业务系统名
        # @type Name: String
        # @param Tags: 业务系统所属 Tag 列表
        # @type Tags: Array
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param CreateUin: 创建人 Uin
        # @type CreateUin: String
        # @param ServiceCount: 该业务系统已上报的服务端应用数量
        # @type ServiceCount: Integer
        # @param CountOfReportSpanPerDay: 日均上报 Span 数
        # @type CountOfReportSpanPerDay: Integer
        # @param AppId: AppID 信息
        # @type AppId: Integer
        # @param TraceDuration: Trace 数据保存时长
        # @type TraceDuration: Integer
        # @param Description: 业务系统描述信息
        # @type Description: String
        # @param Status: 业务系统状态
        # @type Status: Integer
        # @param Region: 业务系统所属地域
        # @type Region: String
        # @param SpanDailyCounters: 业务系统上报额度
        # @type SpanDailyCounters: Integer
        # @param BillingInstance: 业务系统是否开通计费
        # @type BillingInstance: Integer
        # @param ErrRateThreshold: 错误率阈值
        # @type ErrRateThreshold: Integer
        # @param SampleRate: 采样率阈值
        # @type SampleRate: Integer
        # @param ErrorSample: 是否开启错误采样 0  关 1 开
        # @type ErrorSample: Integer
        # @param SlowRequestSavedThreshold: 慢调用保存阈值
        # @type SlowRequestSavedThreshold: Integer
        # @param LogRegion: CLS 日志所在地域
        # @type LogRegion: String
        # @param LogSource: 日志来源
        # @type LogSource: String
        # @param IsRelatedLog: 日志功能开关 0 关 | 1 开
        # @type IsRelatedLog: Integer
        # @param LogTopicID: 日志主题ID
        # @type LogTopicID: String
        # @param ClientCount: 该实例已上报的客户端应用数量
        # @type ClientCount: Integer
        # @param TotalCount: 该实例已上报的总应用数量
        # @type TotalCount: Integer
        # @param LogSet: CLS 日志集 | ES 集群ID
        # @type LogSet: String
        # @param MetricDuration: Metric 数据保存时长
        # @type MetricDuration: Integer
        # @param CustomShowTags: 用户自定义展示标签列表
        # @type CustomShowTags: Array
        # @param PayMode: 业务系统计费模式
        # 1为预付费
        # 0为按量付费
        # @type PayMode: Integer
        # @param PayModeEffective: 业务系统计费模式是否生效
        # @type PayModeEffective: Boolean
        # @param ResponseDurationWarningThreshold: 响应时间满意阈值
        # @type ResponseDurationWarningThreshold: Integer
        # @param Free: 是否免费（0=否，1=限额免费，2=完全免费），默认0
        # @type Free: Integer
        # @param DefaultTSF: 是否 tsf 默认业务系统（0=否，1-是）
        # @type DefaultTSF: Integer
        # @param IsRelatedDashboard: 是否关联 Dashboard： 0 关 1 开
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: Dashboard ID
        # @type DashboardTopicID: String
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测
        # @type IsInstrumentationVulnerabilityScan: Integer
        # @param IsSqlInjectionAnalysis: 是否开启 SQL 注入分析
        # @type IsSqlInjectionAnalysis: Integer

        attr_accessor :AmountOfUsedStorage, :Name, :Tags, :InstanceId, :CreateUin, :ServiceCount, :CountOfReportSpanPerDay, :AppId, :TraceDuration, :Description, :Status, :Region, :SpanDailyCounters, :BillingInstance, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :LogRegion, :LogSource, :IsRelatedLog, :LogTopicID, :ClientCount, :TotalCount, :LogSet, :MetricDuration, :CustomShowTags, :PayMode, :PayModeEffective, :ResponseDurationWarningThreshold, :Free, :DefaultTSF, :IsRelatedDashboard, :DashboardTopicID, :IsInstrumentationVulnerabilityScan, :IsSqlInjectionAnalysis

        def initialize(amountofusedstorage=nil, name=nil, tags=nil, instanceid=nil, createuin=nil, servicecount=nil, countofreportspanperday=nil, appid=nil, traceduration=nil, description=nil, status=nil, region=nil, spandailycounters=nil, billinginstance=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, logregion=nil, logsource=nil, isrelatedlog=nil, logtopicid=nil, clientcount=nil, totalcount=nil, logset=nil, metricduration=nil, customshowtags=nil, paymode=nil, paymodeeffective=nil, responsedurationwarningthreshold=nil, free=nil, defaulttsf=nil, isrelateddashboard=nil, dashboardtopicid=nil, isinstrumentationvulnerabilityscan=nil, issqlinjectionanalysis=nil)
          @AmountOfUsedStorage = amountofusedstorage
          @Name = name
          @Tags = tags
          @InstanceId = instanceid
          @CreateUin = createuin
          @ServiceCount = servicecount
          @CountOfReportSpanPerDay = countofreportspanperday
          @AppId = appid
          @TraceDuration = traceduration
          @Description = description
          @Status = status
          @Region = region
          @SpanDailyCounters = spandailycounters
          @BillingInstance = billinginstance
          @ErrRateThreshold = errratethreshold
          @SampleRate = samplerate
          @ErrorSample = errorsample
          @SlowRequestSavedThreshold = slowrequestsavedthreshold
          @LogRegion = logregion
          @LogSource = logsource
          @IsRelatedLog = isrelatedlog
          @LogTopicID = logtopicid
          @ClientCount = clientcount
          @TotalCount = totalcount
          @LogSet = logset
          @MetricDuration = metricduration
          @CustomShowTags = customshowtags
          @PayMode = paymode
          @PayModeEffective = paymodeeffective
          @ResponseDurationWarningThreshold = responsedurationwarningthreshold
          @Free = free
          @DefaultTSF = defaulttsf
          @IsRelatedDashboard = isrelateddashboard
          @DashboardTopicID = dashboardtopicid
          @IsInstrumentationVulnerabilityScan = isinstrumentationvulnerabilityscan
          @IsSqlInjectionAnalysis = issqlinjectionanalysis
        end

        def deserialize(params)
          @AmountOfUsedStorage = params['AmountOfUsedStorage']
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @CreateUin = params['CreateUin']
          @ServiceCount = params['ServiceCount']
          @CountOfReportSpanPerDay = params['CountOfReportSpanPerDay']
          @AppId = params['AppId']
          @TraceDuration = params['TraceDuration']
          @Description = params['Description']
          @Status = params['Status']
          @Region = params['Region']
          @SpanDailyCounters = params['SpanDailyCounters']
          @BillingInstance = params['BillingInstance']
          @ErrRateThreshold = params['ErrRateThreshold']
          @SampleRate = params['SampleRate']
          @ErrorSample = params['ErrorSample']
          @SlowRequestSavedThreshold = params['SlowRequestSavedThreshold']
          @LogRegion = params['LogRegion']
          @LogSource = params['LogSource']
          @IsRelatedLog = params['IsRelatedLog']
          @LogTopicID = params['LogTopicID']
          @ClientCount = params['ClientCount']
          @TotalCount = params['TotalCount']
          @LogSet = params['LogSet']
          @MetricDuration = params['MetricDuration']
          @CustomShowTags = params['CustomShowTags']
          @PayMode = params['PayMode']
          @PayModeEffective = params['PayModeEffective']
          @ResponseDurationWarningThreshold = params['ResponseDurationWarningThreshold']
          @Free = params['Free']
          @DefaultTSF = params['DefaultTSF']
          @IsRelatedDashboard = params['IsRelatedDashboard']
          @DashboardTopicID = params['DashboardTopicID']
          @IsInstrumentationVulnerabilityScan = params['IsInstrumentationVulnerabilityScan']
          @IsSqlInjectionAnalysis = params['IsSqlInjectionAnalysis']
        end
      end

      # 指标列表单元
      class ApmMetricRecord < TencentCloud::Common::AbstractModel
        # @param Fields: field数组
        # @type Fields: Array
        # @param Tags: tag数组
        # @type Tags: Array

        attr_accessor :Fields, :Tags

        def initialize(fields=nil, tags=nil)
          @Fields = fields
          @Tags = tags
        end

        def deserialize(params)
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              apmfield_tmp = ApmField.new
              apmfield_tmp.deserialize(i)
              @Fields << apmfield_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
        end
      end

      # 维度（标签）对象
      class ApmTag < TencentCloud::Common::AbstractModel
        # @param Key: 维度Key(列名，标签Key)
        # @type Key: String
        # @param Value: 维度值（标签值）
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

      # CreateApmInstance请求参数结构体
      class CreateApmInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 业务系统名
        # @type Name: String
        # @param Description: 业务系统描述信息
        # @type Description: String
        # @param TraceDuration: Trace 数据保存时长，单位为天默认存储为3天
        # @type TraceDuration: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param SpanDailyCounters: 业务系统上报额度值，默认赋值为0表示不限制上报额度
        # @type SpanDailyCounters: Integer
        # @param PayMode: 业务系统的计费模式
        # @type PayMode: Integer
        # @param Free: （0=付费版；1=tsf 受限免费版；2=免费版）
        # @type Free: Integer

        attr_accessor :Name, :Description, :TraceDuration, :Tags, :SpanDailyCounters, :PayMode, :Free

        def initialize(name=nil, description=nil, traceduration=nil, tags=nil, spandailycounters=nil, paymode=nil, free=nil)
          @Name = name
          @Description = description
          @TraceDuration = traceduration
          @Tags = tags
          @SpanDailyCounters = spandailycounters
          @PayMode = paymode
          @Free = free
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @TraceDuration = params['TraceDuration']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @SpanDailyCounters = params['SpanDailyCounters']
          @PayMode = params['PayMode']
          @Free = params['Free']
        end
      end

      # CreateApmInstance返回参数结构体
      class CreateApmInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
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

      # DescribeApmAgent请求参数结构体
      class DescribeApmAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param AgentType: 接入方式
        # @type AgentType: String
        # @param NetworkMode: 环境
        # @type NetworkMode: String
        # @param LanguageEnvironment: 语言
        # @type LanguageEnvironment: String
        # @param ReportMethod: 上报方式
        # @type ReportMethod: String

        attr_accessor :InstanceId, :AgentType, :NetworkMode, :LanguageEnvironment, :ReportMethod

        def initialize(instanceid=nil, agenttype=nil, networkmode=nil, languageenvironment=nil, reportmethod=nil)
          @InstanceId = instanceid
          @AgentType = agenttype
          @NetworkMode = networkmode
          @LanguageEnvironment = languageenvironment
          @ReportMethod = reportmethod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentType = params['AgentType']
          @NetworkMode = params['NetworkMode']
          @LanguageEnvironment = params['LanguageEnvironment']
          @ReportMethod = params['ReportMethod']
        end
      end

      # DescribeApmAgent返回参数结构体
      class DescribeApmAgentResponse < TencentCloud::Common::AbstractModel
        # @param ApmAgent: Agent 信息
        # @type ApmAgent: :class:`Tencentcloud::Apm.v20210622.models.ApmAgentInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmAgent, :RequestId

        def initialize(apmagent=nil, requestid=nil)
          @ApmAgent = apmagent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmAgent'].nil?
            @ApmAgent = ApmAgentInfo.new
            @ApmAgent.deserialize(params['ApmAgent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmInstances请求参数结构体
      class DescribeApmInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Tags: Tag 列表
        # @type Tags: Array
        # @param InstanceName: 搜索业务系统名
        # @type InstanceName: String
        # @param InstanceIds: 过滤业务系统 ID
        # @type InstanceIds: Array
        # @param DemoInstanceFlag: 是否查询官方 Demo 业务系统
        # @type DemoInstanceFlag: Integer
        # @param AllRegionsFlag: 是否查询全地域业务系统
        # @type AllRegionsFlag: Integer

        attr_accessor :Tags, :InstanceName, :InstanceIds, :DemoInstanceFlag, :AllRegionsFlag

        def initialize(tags=nil, instancename=nil, instanceids=nil, demoinstanceflag=nil, allregionsflag=nil)
          @Tags = tags
          @InstanceName = instancename
          @InstanceIds = instanceids
          @DemoInstanceFlag = demoinstanceflag
          @AllRegionsFlag = allregionsflag
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @InstanceName = params['InstanceName']
          @InstanceIds = params['InstanceIds']
          @DemoInstanceFlag = params['DemoInstanceFlag']
          @AllRegionsFlag = params['AllRegionsFlag']
        end
      end

      # DescribeApmInstances返回参数结构体
      class DescribeApmInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: APM 业务系统列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :RequestId

        def initialize(instances=nil, requestid=nil)
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              apminstancedetail_tmp = ApmInstanceDetail.new
              apminstancedetail_tmp.deserialize(i)
              @Instances << apminstancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralApmApplicationConfig请求参数结构体
      class DescribeGeneralApmApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String

        attr_accessor :ServiceName, :InstanceId

        def initialize(servicename=nil, instanceid=nil)
          @ServiceName = servicename
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeGeneralApmApplicationConfig返回参数结构体
      class DescribeGeneralApmApplicationConfigResponse < TencentCloud::Common::AbstractModel
        # @param ApmApplicationConfigView: 应用配置项
        # @type ApmApplicationConfigView: :class:`Tencentcloud::Apm.v20210622.models.ApmApplicationConfigView`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmApplicationConfigView, :RequestId

        def initialize(apmapplicationconfigview=nil, requestid=nil)
          @ApmApplicationConfigView = apmapplicationconfigview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmApplicationConfigView'].nil?
            @ApmApplicationConfigView = ApmApplicationConfigView.new
            @ApmApplicationConfigView.deserialize(params['ApmApplicationConfigView'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralMetricData请求参数结构体
      class DescribeGeneralMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param Metrics: 需要查询的指标名称，不可自定义输入，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type Metrics: Array
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param ViewName: 视图名称，不可自定义输入。[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type ViewName: String
        # @param Filters: 要过滤的维度信息，不同视图有对应的指标维度，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type Filters: Array
        # @param GroupBy: 聚合维度，不同视图有对应的指标维度，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type GroupBy: Array
        # @param StartTime: 起始时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        # @type StartTime: Integer
        # @param EndTime: 结束时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        # @type EndTime: Integer
        # @param Period: 聚合粒度，单位为秒，最小为60s，即一分钟的聚合粒度；如果为空或0则计算开始时间到截止时间的指标数据，上报其他值会报错。
        # @type Period: Integer
        # @param OrderBy: 对查询指标进行排序：
        # Key 填写云 API 指标名称，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # Value 填写排序方式：
        # - asc:对查询指标进行升序排序
        # - desc：对查询指标进行降序排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param PageSize: 查询指标的限制条数，目前最多展示50条数据，PageSize取值为1-50，上送PageSize则根据PageSize的值展示限制条数。
        # @type PageSize: Integer

        attr_accessor :Metrics, :InstanceId, :ViewName, :Filters, :GroupBy, :StartTime, :EndTime, :Period, :OrderBy, :PageSize

        def initialize(metrics=nil, instanceid=nil, viewname=nil, filters=nil, groupby=nil, starttime=nil, endtime=nil, period=nil, orderby=nil, pagesize=nil)
          @Metrics = metrics
          @InstanceId = instanceid
          @ViewName = viewname
          @Filters = filters
          @GroupBy = groupby
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @OrderBy = orderby
          @PageSize = pagesize
        end

        def deserialize(params)
          @Metrics = params['Metrics']
          @InstanceId = params['InstanceId']
          @ViewName = params['ViewName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              generalfilter_tmp = GeneralFilter.new
              generalfilter_tmp.deserialize(i)
              @Filters << generalfilter_tmp
            end
          end
          @GroupBy = params['GroupBy']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @PageSize = params['PageSize']
        end
      end

      # DescribeGeneralMetricData返回参数结构体
      class DescribeGeneralMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Records: 指标结果集
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :RequestId

        def initialize(records=nil, requestid=nil)
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              line_tmp = Line.new
              line_tmp.deserialize(i)
              @Records << line_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralSpanList请求参数结构体
      class DescribeGeneralSpanListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 列表项个数
        # @type Limit: Integer
        # @param OrderBy: 排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param StartTime: Span查询开始时间戳（单位:秒）
        # @type StartTime: Integer
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Filters: 通用过滤参数
        # @type Filters: Array
        # @param BusinessName: 业务自身服务名
        # @type BusinessName: String
        # @param EndTime: Span查询结束时间戳（单位:秒）
        # @type EndTime: Integer

        attr_accessor :Offset, :Limit, :OrderBy, :StartTime, :InstanceId, :Filters, :BusinessName, :EndTime

        def initialize(offset=nil, limit=nil, orderby=nil, starttime=nil, instanceid=nil, filters=nil, businessname=nil, endtime=nil)
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @StartTime = starttime
          @InstanceId = instanceid
          @Filters = filters
          @BusinessName = businessname
          @EndTime = endtime
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @StartTime = params['StartTime']
          @InstanceId = params['InstanceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @BusinessName = params['BusinessName']
          @EndTime = params['EndTime']
        end
      end

      # DescribeGeneralSpanList返回参数结构体
      class DescribeGeneralSpanListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Spans: Span 分页列表
        # @type Spans: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Spans, :RequestId

        def initialize(totalcount=nil, spans=nil, requestid=nil)
          @TotalCount = totalcount
          @Spans = spans
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Spans'].nil?
            @Spans = []
            params['Spans'].each do |i|
              span_tmp = Span.new
              span_tmp.deserialize(i)
              @Spans << span_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMetricRecords请求参数结构体
      class DescribeMetricRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Metrics: 指标列表
        # @type Metrics: Array
        # @param GroupBy: 聚合维度
        # @type GroupBy: Array
        # @param OrderBy: 排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Offset: 分页起始点
        # @type Offset: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param BusinessName: 业务名称（默认值：taw）
        # @type BusinessName: String
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 页长
        # @type PageSize: Integer
        # @param OrFilters: Or过滤条件
        # @type OrFilters: Array
        # @param Type: 数据来源
        # @type Type: String

        attr_accessor :Filters, :Metrics, :GroupBy, :OrderBy, :InstanceId, :Limit, :StartTime, :Offset, :EndTime, :BusinessName, :PageIndex, :PageSize, :OrFilters, :Type

        def initialize(filters=nil, metrics=nil, groupby=nil, orderby=nil, instanceid=nil, limit=nil, starttime=nil, offset=nil, endtime=nil, businessname=nil, pageindex=nil, pagesize=nil, orfilters=nil, type=nil)
          @Filters = filters
          @Metrics = metrics
          @GroupBy = groupby
          @OrderBy = orderby
          @InstanceId = instanceid
          @Limit = limit
          @StartTime = starttime
          @Offset = offset
          @EndTime = endtime
          @BusinessName = businessname
          @PageIndex = pageindex
          @PageSize = pagesize
          @OrFilters = orfilters
          @Type = type
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
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              querymetricitem_tmp = QueryMetricItem.new
              querymetricitem_tmp.deserialize(i)
              @Metrics << querymetricitem_tmp
            end
          end
          @GroupBy = params['GroupBy']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @Offset = params['Offset']
          @EndTime = params['EndTime']
          @BusinessName = params['BusinessName']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          unless params['OrFilters'].nil?
            @OrFilters = []
            params['OrFilters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @OrFilters << filter_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # DescribeMetricRecords返回参数结构体
      class DescribeMetricRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Records: 指标结果集
        # @type Records: Array
        # @param TotalCount: 查询指标结果集条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :TotalCount, :RequestId

        def initialize(records=nil, totalcount=nil, requestid=nil)
          @Records = records
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              apmmetricrecord_tmp = ApmMetricRecord.new
              apmmetricrecord_tmp.deserialize(i)
              @Records << apmmetricrecord_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceOverview请求参数结构体
      class DescribeServiceOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Metrics: 指标列表
        # @type Metrics: Array
        # @param GroupBy: 聚合维度
        # @type GroupBy: Array
        # @param OrderBy: 排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Offset: 分页起始点
        # @type Offset: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :Filters, :Metrics, :GroupBy, :OrderBy, :InstanceId, :Limit, :StartTime, :Offset, :EndTime

        def initialize(filters=nil, metrics=nil, groupby=nil, orderby=nil, instanceid=nil, limit=nil, starttime=nil, offset=nil, endtime=nil)
          @Filters = filters
          @Metrics = metrics
          @GroupBy = groupby
          @OrderBy = orderby
          @InstanceId = instanceid
          @Limit = limit
          @StartTime = starttime
          @Offset = offset
          @EndTime = endtime
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
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              querymetricitem_tmp = QueryMetricItem.new
              querymetricitem_tmp.deserialize(i)
              @Metrics << querymetricitem_tmp
            end
          end
          @GroupBy = params['GroupBy']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @Offset = params['Offset']
          @EndTime = params['EndTime']
        end
      end

      # DescribeServiceOverview返回参数结构体
      class DescribeServiceOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Records: 指标结果集
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :RequestId

        def initialize(records=nil, requestid=nil)
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              apmmetricrecord_tmp = ApmMetricRecord.new
              apmmetricrecord_tmp.deserialize(i)
              @Records << apmmetricrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagValues请求参数结构体
      class DescribeTagValuesRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 维度名
        # @type TagKey: String
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param OrFilters: Or过滤条件
        # @type OrFilters: Array
        # @param Type: 使用类型
        # @type Type: String

        attr_accessor :TagKey, :InstanceId, :EndTime, :Filters, :StartTime, :OrFilters, :Type

        def initialize(tagkey=nil, instanceid=nil, endtime=nil, filters=nil, starttime=nil, orfilters=nil, type=nil)
          @TagKey = tagkey
          @InstanceId = instanceid
          @EndTime = endtime
          @Filters = filters
          @StartTime = starttime
          @OrFilters = orfilters
          @Type = type
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @InstanceId = params['InstanceId']
          @EndTime = params['EndTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @StartTime = params['StartTime']
          unless params['OrFilters'].nil?
            @OrFilters = []
            params['OrFilters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @OrFilters << filter_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # DescribeTagValues返回参数结构体
      class DescribeTagValuesResponse < TencentCloud::Common::AbstractModel
        # @param Values: 维度值列表
        # @type Values: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Values, :RequestId

        def initialize(values=nil, requestid=nil)
          @Values = values
          @RequestId = requestid
        end

        def deserialize(params)
          @Values = params['Values']
          @RequestId = params['RequestId']
        end
      end

      # 查询过滤参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤方式（=, !=, in）
        # @type Type: String
        # @param Key: 过滤维度名
        # @type Key: String
        # @param Value: 过滤值，in过滤方式用逗号分割多个值
        # @type Value: String

        attr_accessor :Type, :Key, :Value

        def initialize(type=nil, key=nil, value=nil)
          @Type = type
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 查询过滤参数
      class GeneralFilter < TencentCloud::Common::AbstractModel
        # @param Key: 过滤维度名
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

      # 组件
      class Instrument < TencentCloud::Common::AbstractModel
        # @param Name: 组件名称
        # @type Name: String
        # @param Enable: 组件开关
        # @type Enable: Boolean

        attr_accessor :Name, :Enable

        def initialize(name=nil, enable=nil)
          @Name = name
          @Enable = enable
        end

        def deserialize(params)
          @Name = params['Name']
          @Enable = params['Enable']
        end
      end

      # 指标曲线数据
      class Line < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param MetricNameCN: 指标中文名
        # @type MetricNameCN: String
        # @param TimeSerial: 时间序列
        # @type TimeSerial: Array
        # @param DataSerial: 数据序列
        # @type DataSerial: Array
        # @param Tags: 维度列表
        # @type Tags: Array

        attr_accessor :MetricName, :MetricNameCN, :TimeSerial, :DataSerial, :Tags

        def initialize(metricname=nil, metricnamecn=nil, timeserial=nil, dataserial=nil, tags=nil)
          @MetricName = metricname
          @MetricNameCN = metricnamecn
          @TimeSerial = timeserial
          @DataSerial = dataserial
          @Tags = tags
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @MetricNameCN = params['MetricNameCN']
          @TimeSerial = params['TimeSerial']
          @DataSerial = params['DataSerial']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
        end
      end

      # ModifyApmInstance请求参数结构体
      class ModifyApmInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param Name: 业务系统名
        # @type Name: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Description: 业务系统详情
        # @type Description: String
        # @param TraceDuration: Trace数据保存时长
        # @type TraceDuration: Integer
        # @param OpenBilling: 是否开启计费
        # @type OpenBilling: Boolean
        # @param SpanDailyCounters: 业务系统上报额度
        # @type SpanDailyCounters: Integer
        # @param ErrRateThreshold: 错误率阈值
        # @type ErrRateThreshold: Integer
        # @param SampleRate: 采样率
        # @type SampleRate: Integer
        # @param ErrorSample: 是否开启错误采样 0 关 1 开
        # @type ErrorSample: Integer
        # @param SlowRequestSavedThreshold: 慢请求阈值
        # @type SlowRequestSavedThreshold: Integer
        # @param IsRelatedLog: 是否开启日志功能 0 关 1 开
        # @type IsRelatedLog: Integer
        # @param LogRegion: 日志地域
        # @type LogRegion: String
        # @param LogTopicID: CLS日志主题ID | ES 索引名
        # @type LogTopicID: String
        # @param LogSet: CLS日志集 | ES集群ID
        # @type LogSet: String
        # @param LogSource: CLS | ES
        # @type LogSource: String
        # @param CustomShowTags: 用户自定义展示标签列表
        # @type CustomShowTags: Array
        # @param PayMode: 修改计费模式
        # 1为预付费
        # 0为按量付费
        # @type PayMode: Integer
        # @param ResponseDurationWarningThreshold: 响应时间满意阈值
        # @type ResponseDurationWarningThreshold: Integer
        # @param Free: （0=付费版；1=tsf受限免费版；2=免费版）
        # @type Free: Integer
        # @param IsRelatedDashboard: 是否关联dashboard： 0 关 1 开
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: dashboard ID
        # @type DashboardTopicID: String
        # @param IsSqlInjectionAnalysis: 是否开启SQL注入检测
        # @type IsSqlInjectionAnalysis: Integer
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测
        # @type IsInstrumentationVulnerabilityScan: Integer

        attr_accessor :InstanceId, :Name, :Tags, :Description, :TraceDuration, :OpenBilling, :SpanDailyCounters, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :IsRelatedLog, :LogRegion, :LogTopicID, :LogSet, :LogSource, :CustomShowTags, :PayMode, :ResponseDurationWarningThreshold, :Free, :IsRelatedDashboard, :DashboardTopicID, :IsSqlInjectionAnalysis, :IsInstrumentationVulnerabilityScan

        def initialize(instanceid=nil, name=nil, tags=nil, description=nil, traceduration=nil, openbilling=nil, spandailycounters=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, isrelatedlog=nil, logregion=nil, logtopicid=nil, logset=nil, logsource=nil, customshowtags=nil, paymode=nil, responsedurationwarningthreshold=nil, free=nil, isrelateddashboard=nil, dashboardtopicid=nil, issqlinjectionanalysis=nil, isinstrumentationvulnerabilityscan=nil)
          @InstanceId = instanceid
          @Name = name
          @Tags = tags
          @Description = description
          @TraceDuration = traceduration
          @OpenBilling = openbilling
          @SpanDailyCounters = spandailycounters
          @ErrRateThreshold = errratethreshold
          @SampleRate = samplerate
          @ErrorSample = errorsample
          @SlowRequestSavedThreshold = slowrequestsavedthreshold
          @IsRelatedLog = isrelatedlog
          @LogRegion = logregion
          @LogTopicID = logtopicid
          @LogSet = logset
          @LogSource = logsource
          @CustomShowTags = customshowtags
          @PayMode = paymode
          @ResponseDurationWarningThreshold = responsedurationwarningthreshold
          @Free = free
          @IsRelatedDashboard = isrelateddashboard
          @DashboardTopicID = dashboardtopicid
          @IsSqlInjectionAnalysis = issqlinjectionanalysis
          @IsInstrumentationVulnerabilityScan = isinstrumentationvulnerabilityscan
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @Description = params['Description']
          @TraceDuration = params['TraceDuration']
          @OpenBilling = params['OpenBilling']
          @SpanDailyCounters = params['SpanDailyCounters']
          @ErrRateThreshold = params['ErrRateThreshold']
          @SampleRate = params['SampleRate']
          @ErrorSample = params['ErrorSample']
          @SlowRequestSavedThreshold = params['SlowRequestSavedThreshold']
          @IsRelatedLog = params['IsRelatedLog']
          @LogRegion = params['LogRegion']
          @LogTopicID = params['LogTopicID']
          @LogSet = params['LogSet']
          @LogSource = params['LogSource']
          @CustomShowTags = params['CustomShowTags']
          @PayMode = params['PayMode']
          @ResponseDurationWarningThreshold = params['ResponseDurationWarningThreshold']
          @Free = params['Free']
          @IsRelatedDashboard = params['IsRelatedDashboard']
          @DashboardTopicID = params['DashboardTopicID']
          @IsSqlInjectionAnalysis = params['IsSqlInjectionAnalysis']
          @IsInstrumentationVulnerabilityScan = params['IsInstrumentationVulnerabilityScan']
        end
      end

      # ModifyApmInstance返回参数结构体
      class ModifyApmInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGeneralApmApplicationConfig请求参数结构体
      class ModifyGeneralApmApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统Id
        # @type InstanceId: String
        # @param Tags: 需要修改的字段key value分别指定字段名、字段值
        # [具体字段请见](https://cloud.tencent.com/document/product/248/111241)
        # @type Tags: Array
        # @param ServiceNames: 需要修改配置的应用列表名称
        # @type ServiceNames: Array

        attr_accessor :InstanceId, :Tags, :ServiceNames

        def initialize(instanceid=nil, tags=nil, servicenames=nil)
          @InstanceId = instanceid
          @Tags = tags
          @ServiceNames = servicenames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @ServiceNames = params['ServiceNames']
        end
      end

      # ModifyGeneralApmApplicationConfig返回参数结构体
      class ModifyGeneralApmApplicationConfigResponse < TencentCloud::Common::AbstractModel
        # @param Message: 返回值描述
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Message, :RequestId

        def initialize(message=nil, requestid=nil)
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # sql排序字段
      class OrderBy < TencentCloud::Common::AbstractModel
        # @param Key: 需要排序的字段
        # @type Key: String
        # @param Value: 顺序排序/倒序排序
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

      # 查询
      class QueryMetricItem < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Compare: 同比，已弃用，不建议使用
        # @type Compare: String
        # @param Compares: 同比，支持多种同比方式
        # @type Compares: Array

        attr_accessor :MetricName, :Compare, :Compares

        def initialize(metricname=nil, compare=nil, compares=nil)
          @MetricName = metricname
          @Compare = compare
          @Compares = compares
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Compare = params['Compare']
          @Compares = params['Compares']
        end
      end

      # Span 对象
      class Span < TencentCloud::Common::AbstractModel
        # @param TraceID: Trace ID
        # @type TraceID: String
        # @param Logs: 日志
        # @type Logs: Array
        # @param Tags: 标签
        # @type Tags: Array
        # @param Process: 上报应用服务信息
        # @type Process: :class:`Tencentcloud::Apm.v20210622.models.SpanProcess`
        # @param Timestamp: 产生时间戳(毫秒)
        # @type Timestamp: Integer
        # @param OperationName: Span 名称
        # @type OperationName: String
        # @param References: 关联关系
        # @type References: Array
        # @param StartTime: 产生时间戳(微秒)
        # @type StartTime: Integer
        # @param Duration: 持续耗时(微妙)
        # @type Duration: Integer
        # @param SpanID: Span ID
        # @type SpanID: String
        # @param StartTimeMillis: 产生时间戳(毫秒)
        # @type StartTimeMillis: Integer
        # @param ParentSpanID: Parent Span ID
        # @type ParentSpanID: String

        attr_accessor :TraceID, :Logs, :Tags, :Process, :Timestamp, :OperationName, :References, :StartTime, :Duration, :SpanID, :StartTimeMillis, :ParentSpanID

        def initialize(traceid=nil, logs=nil, tags=nil, process=nil, timestamp=nil, operationname=nil, references=nil, starttime=nil, duration=nil, spanid=nil, starttimemillis=nil, parentspanid=nil)
          @TraceID = traceid
          @Logs = logs
          @Tags = tags
          @Process = process
          @Timestamp = timestamp
          @OperationName = operationname
          @References = references
          @StartTime = starttime
          @Duration = duration
          @SpanID = spanid
          @StartTimeMillis = starttimemillis
          @ParentSpanID = parentspanid
        end

        def deserialize(params)
          @TraceID = params['TraceID']
          unless params['Logs'].nil?
            @Logs = []
            params['Logs'].each do |i|
              spanlog_tmp = SpanLog.new
              spanlog_tmp.deserialize(i)
              @Logs << spanlog_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              spantag_tmp = SpanTag.new
              spantag_tmp.deserialize(i)
              @Tags << spantag_tmp
            end
          end
          unless params['Process'].nil?
            @Process = SpanProcess.new
            @Process.deserialize(params['Process'])
          end
          @Timestamp = params['Timestamp']
          @OperationName = params['OperationName']
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              spanreference_tmp = SpanReference.new
              spanreference_tmp.deserialize(i)
              @References << spanreference_tmp
            end
          end
          @StartTime = params['StartTime']
          @Duration = params['Duration']
          @SpanID = params['SpanID']
          @StartTimeMillis = params['StartTimeMillis']
          @ParentSpanID = params['ParentSpanID']
        end
      end

      # Span日志部分

      class SpanLog < TencentCloud::Common::AbstractModel
        # @param Timestamp: 日志时间戳
        # @type Timestamp: Integer
        # @param Fields: 标签
        # @type Fields: Array

        attr_accessor :Timestamp, :Fields

        def initialize(timestamp=nil, fields=nil)
          @Timestamp = timestamp
          @Fields = fields
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              spantag_tmp = SpanTag.new
              spantag_tmp.deserialize(i)
              @Fields << spantag_tmp
            end
          end
        end
      end

      # 服务相关信息
      class SpanProcess < TencentCloud::Common::AbstractModel
        # @param ServiceName: 应用服务名称
        # @type ServiceName: String
        # @param Tags: Tags 标签数组
        # @type Tags: Array

        attr_accessor :ServiceName, :Tags

        def initialize(servicename=nil, tags=nil)
          @ServiceName = servicename
          @Tags = tags
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              spantag_tmp = SpanTag.new
              spantag_tmp.deserialize(i)
              @Tags << spantag_tmp
            end
          end
        end
      end

      # Span上下游关联关系
      class SpanReference < TencentCloud::Common::AbstractModel
        # @param RefType: 关联关系类型
        # @type RefType: String
        # @param SpanID: Span ID
        # @type SpanID: String
        # @param TraceID: Trace ID
        # @type TraceID: String

        attr_accessor :RefType, :SpanID, :TraceID

        def initialize(reftype=nil, spanid=nil, traceid=nil)
          @RefType = reftype
          @SpanID = spanid
          @TraceID = traceid
        end

        def deserialize(params)
          @RefType = params['RefType']
          @SpanID = params['SpanID']
          @TraceID = params['TraceID']
        end
      end

      # 标签
      class SpanTag < TencentCloud::Common::AbstractModel
        # @param Type: 标签类型
        # @type Type: String
        # @param Key: 标签Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Type, :Key, :Value

        def initialize(type=nil, key=nil, value=nil)
          @Type = type
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # TerminateApmInstance请求参数结构体
      class TerminateApmInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateApmInstance返回参数结构体
      class TerminateApmInstanceResponse < TencentCloud::Common::AbstractModel
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

