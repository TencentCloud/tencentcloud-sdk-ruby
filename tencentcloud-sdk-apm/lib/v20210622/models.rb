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
      # APM浮点数类型键值对
      class APMKV < TencentCloud::Common::AbstractModel
        # @param Key: Key值定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: Value值定义
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # Apm通用KV结构
      class APMKVItem < TencentCloud::Common::AbstractModel
        # @param Key: Key值定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: Value值定义
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

      # apm Agent信息
      class ApmAgentInfo < TencentCloud::Common::AbstractModel
        # @param AgentDownloadURL: Agent下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentDownloadURL: String
        # @param CollectorURL: Collector上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CollectorURL: String
        # @param Token: Token信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param PublicCollectorURL: 外网上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicCollectorURL: String
        # @param InnerCollectorURL: 自研VPC上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerCollectorURL: String
        # @param PrivateLinkCollectorURL: 内网上报地址(Private Link上报地址)
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 指标维度信息
      class ApmField < TencentCloud::Common::AbstractModel
        # @param CompareVal: 昨日同比指标值，已弃用，不建议使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareVal: String
        # @param CompareVals: Compare值结果数组，推荐使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareVals: Array
        # @param Value: 指标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float
        # @param Unit: 指标所对应的单位
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # apm实例信息
      class ApmInstanceDetail < TencentCloud::Common::AbstractModel
        # @param AmountOfUsedStorage: 存储使用量(MB)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AmountOfUsedStorage: Float
        # @param Name: 实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Tags: 实例所属tag列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CreateUin: 创建人Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: String
        # @param ServiceCount: 该实例已上报的服务端应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCount: Integer
        # @param CountOfReportSpanPerDay: 日均上报Span数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountOfReportSpanPerDay: Integer
        # @param AppId: AppId信息
        # @type AppId: Integer
        # @param TraceDuration: Trace数据保存时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceDuration: Integer
        # @param Description: 实例描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Region: 实例所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SpanDailyCounters: 实例上报额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpanDailyCounters: Integer
        # @param BillingInstance: 实例是否开通计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInstance: Integer
        # @param ErrRateThreshold: 错误率阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrRateThreshold: Integer
        # @param SampleRate: 采样率阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleRate: Integer
        # @param ErrorSample: 是否开启错误采样 0  关 1 开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorSample: Integer
        # @param SlowRequestSavedThreshold: 慢调用保存阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowRequestSavedThreshold: Integer
        # @param LogRegion: cls日志所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRegion: String
        # @param LogSource: 日志来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSource: String
        # @param IsRelatedLog: 日志功能开关 0 关 | 1 开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRelatedLog: Integer
        # @param LogTopicID: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicID: String
        # @param ClientCount: 该实例已上报的客户端应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCount: Integer
        # @param TotalCount: 该实例已上报的总应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param LogSet: CLS日志集 | ES集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSet: String
        # @param MetricDuration: Metric数据保存时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricDuration: Integer
        # @param CustomShowTags: 用户自定义展示标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomShowTags: Array

        attr_accessor :AmountOfUsedStorage, :Name, :Tags, :InstanceId, :CreateUin, :ServiceCount, :CountOfReportSpanPerDay, :AppId, :TraceDuration, :Description, :Status, :Region, :SpanDailyCounters, :BillingInstance, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :LogRegion, :LogSource, :IsRelatedLog, :LogTopicID, :ClientCount, :TotalCount, :LogSet, :MetricDuration, :CustomShowTags

        def initialize(amountofusedstorage=nil, name=nil, tags=nil, instanceid=nil, createuin=nil, servicecount=nil, countofreportspanperday=nil, appid=nil, traceduration=nil, description=nil, status=nil, region=nil, spandailycounters=nil, billinginstance=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, logregion=nil, logsource=nil, isrelatedlog=nil, logtopicid=nil, clientcount=nil, totalcount=nil, logset=nil, metricduration=nil, customshowtags=nil)
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
        # @param Name: 实例名
        # @type Name: String
        # @param Description: 实例描述信息
        # @type Description: String
        # @param TraceDuration: Trace数据保存时长
        # @type TraceDuration: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param SpanDailyCounters: 实例上报额度值
        # @type SpanDailyCounters: Integer

        attr_accessor :Name, :Description, :TraceDuration, :Tags, :SpanDailyCounters

        def initialize(name=nil, description=nil, traceduration=nil, tags=nil, spandailycounters=nil)
          @Name = name
          @Description = description
          @TraceDuration = traceduration
          @Tags = tags
          @SpanDailyCounters = spandailycounters
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
        end
      end

      # CreateApmInstance返回参数结构体
      class CreateApmInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeApmAgent请求参数结构体
      class DescribeApmAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
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
        # @param ApmAgent: Agent信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmAgent: :class:`Tencentcloud::Apm.v20210622.models.ApmAgentInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Tags: Tag列表
        # @type Tags: Array
        # @param InstanceName: 搜索实例名
        # @type InstanceName: String
        # @param InstanceIds: 过滤实例ID
        # @type InstanceIds: Array
        # @param DemoInstanceFlag: 是否查询官方demo实例
        # @type DemoInstanceFlag: Integer
        # @param AllRegionsFlag: 是否查询全地域实例
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
        # @param Instances: apm实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeGeneralMetricData请求参数结构体
      class DescribeGeneralMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 要过滤的维度信息：
        # service_metric视图支持：service.name（服务名）、span.kind（客户端/服务端视角）为维度进行过滤，service.name（服务名）必填。
        # span.kind:
        # 	server:服务端视角
        # 	client:客户端视角
        # 默认为服务端视角进行查询。
        # runtime_metric视图支持：service.name（服务名）维度进行过滤，service.name（服务名）必填。
        # sql_metric视图支持：service.name（服务名）、db.instance（数据库名称）、db.ip（数据库实例ip）维度进行过滤，查询service_slow_sql_count（慢sql）指标时service.name必填，查询sql_duration_avg（耗时）指标时db.instance（数据库名称）必填。
        # @type Filters: Array
        # @param Metrics: 需要查询的指标，不可自定义输入。
        # service_metric视图支持：service_request_count（总请求）、service_duration（平均响应时间）、service_error_req_rate（平均错误率）、service_slow_call_count（慢调用）、service_error_request_count（异常数量）。
        # runtime_metric视图支持：service_gc_full_count（Full GC）。
        # sql_metric视图支持：service_slow_sql_count（慢sql）、sql_duration_avg（耗时）。
        # @type Metrics: Array
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param ViewName: 视图名称，不可自定义输入。支持：service_metric、runtime_metric、sql_metric。
        # @type ViewName: String
        # @param GroupBy: 聚合维度：
        # service_metric视图支持：service.name（服务名）、span.kind （客户端/服务端视角）维度进行聚合，service.name（服务名）必填。
        # runtime_metric视图支持：service.name（服务名）维度进行聚合，service.name（服务名）必填。
        # sql_metric视图支持：service.name（服务名）、db.statement（sql语句）维度进行聚合，查询service_slow_sql_count（慢sql）时service.name（服务名）必填，查询sql_duration_avg（耗时）指标时service.name（服务名）、db.statement（sql语句）必填。
        # @type GroupBy: Array
        # @param StartTime: 起始时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        # @type StartTime: Integer
        # @param EndTime: 结束时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        # @type EndTime: Integer
        # @param Period: 聚合粒度，单位为秒，最小为60s，即一分钟的聚合粒度；如果为空或0则计算开始时间到截止时间的指标数据，上报其他值会报错。
        # @type Period: Integer
        # @param OrderBy: 对查询指标进行排序：
        # service_metric视图支持：service_request_count（总请求）、service_duration（平均响应时间）、service_error_req_rate（平均错误率）、service_slow_call_count（慢调用）、service_error_request_count（异常数量）。
        # runtime_metric视图支持：service_gc_full_count（Full GC）。
        # sql_metric视图支持：service_slow_sql_count（慢sql）、sql_duration_avg（耗时）。
        # asc:对查询指标进行升序排序
        # desc：对查询指标进行降序排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param PageSize: 查询指标的限制条数，目前最多展示50条数据，PageSize取值为1-50，上送PageSize则根据PageSize的值展示限制条数。
        # @type PageSize: Integer

        attr_accessor :Filters, :Metrics, :InstanceId, :ViewName, :GroupBy, :StartTime, :EndTime, :Period, :OrderBy, :PageSize

        def initialize(filters=nil, metrics=nil, instanceid=nil, viewname=nil, groupby=nil, starttime=nil, endtime=nil, period=nil, orderby=nil, pagesize=nil)
          @Filters = filters
          @Metrics = metrics
          @InstanceId = instanceid
          @ViewName = viewname
          @GroupBy = groupby
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @OrderBy = orderby
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              generalfilter_tmp = GeneralFilter.new
              generalfilter_tmp.deserialize(i)
              @Filters << generalfilter_tmp
            end
          end
          @Metrics = params['Metrics']
          @InstanceId = params['InstanceId']
          @ViewName = params['ViewName']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例ID
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

        attr_accessor :Filters, :Metrics, :GroupBy, :OrderBy, :InstanceId, :Limit, :StartTime, :Offset, :EndTime, :BusinessName, :PageIndex, :PageSize, :OrFilters

        def initialize(filters=nil, metrics=nil, groupby=nil, orderby=nil, instanceid=nil, limit=nil, starttime=nil, offset=nil, endtime=nil, businessname=nil, pageindex=nil, pagesize=nil, orfilters=nil)
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
        end
      end

      # DescribeMetricRecords返回参数结构体
      class DescribeMetricRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Records: 指标结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Records: Array
        # @param TotalCount: 查询指标结果集条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例ID
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 指标曲线数据
      class Line < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param MetricNameCN: 指标中文名
        # @type MetricNameCN: String
        # @param TimeSerial: 时间序列
        # @type TimeSerial: Array
        # @param DataSerial: 数据序列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSerial: Array
        # @param Tags: 维度列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名
        # @type Name: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Description: 实例详情
        # @type Description: String
        # @param TraceDuration: Trace数据保存时长
        # @type TraceDuration: Integer
        # @param OpenBilling: 是否开启计费
        # @type OpenBilling: Boolean
        # @param SpanDailyCounters: 实例上报额度
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

        attr_accessor :InstanceId, :Name, :Tags, :Description, :TraceDuration, :OpenBilling, :SpanDailyCounters, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :IsRelatedLog, :LogRegion, :LogTopicID, :LogSet, :LogSource, :CustomShowTags

        def initialize(instanceid=nil, name=nil, tags=nil, description=nil, traceduration=nil, openbilling=nil, spandailycounters=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, isrelatedlog=nil, logregion=nil, logtopicid=nil, logset=nil, logsource=nil, customshowtags=nil)
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
        end
      end

      # ModifyApmInstance返回参数结构体
      class ModifyApmInstanceResponse < TencentCloud::Common::AbstractModel
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

      # TerminateApmInstance请求参数结构体
      class TerminateApmInstanceRequest < TencentCloud::Common::AbstractModel
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

      # TerminateApmInstance返回参数结构体
      class TerminateApmInstanceResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

