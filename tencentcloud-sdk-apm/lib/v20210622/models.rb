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

      # 探针有关接口的相关配置
      class AgentOperationConfigView < TencentCloud::Common::AbstractModel
        # @param RetentionValid: 当前接口配置是否开启了接口白名单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionValid: Boolean
        # @param IgnoreOperation: RetentionValid为false时生效，接口配置中的黑名单配置，配置中的接口不采集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreOperation: String
        # @param RetentionOperation: RetentionValid为true时生效，接口配置中的白名单配置，仅采集配置中的接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionOperation: String

        attr_accessor :RetentionValid, :IgnoreOperation, :RetentionOperation

        def initialize(retentionvalid=nil, ignoreoperation=nil, retentionoperation=nil)
          @RetentionValid = retentionvalid
          @IgnoreOperation = ignoreoperation
          @RetentionOperation = retentionoperation
        end

        def deserialize(params)
          @RetentionValid = params['RetentionValid']
          @IgnoreOperation = params['IgnoreOperation']
          @RetentionOperation = params['RetentionOperation']
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

      # 查询应用配置返回参数
      class ApmAppConfig < TencentCloud::Common::AbstractModel
        # @param InstanceKey: 实例ID
        # @type InstanceKey: String
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param UrlConvergenceSwitch: URL收敛开关
        # @type UrlConvergenceSwitch: Integer
        # @param UrlConvergenceThreshold: URL收敛阈值
        # @type UrlConvergenceThreshold: Integer
        # @param UrlConvergence: URL收敛正则
        # @type UrlConvergence: String
        # @param ExceptionFilter: 异常过滤正则
        # @type ExceptionFilter: String
        # @param ErrorCodeFilter: 错误码过滤
        # @type ErrorCodeFilter: String
        # @param Components: 服务组件类型
        # @type Components: String
        # @param UrlExclude: URL排除正则
        # @type UrlExclude: String
        # @param LogSource: 日志来源
        # @type LogSource: String
        # @param LogRegion: 日志所在地域
        # @type LogRegion: String
        # @param IsRelatedLog: 是否开启日志 0 关 1 开
        # @type IsRelatedLog: Integer
        # @param LogTopicID: 日志主题ID
        # @type LogTopicID: String
        # @param IgnoreOperationName: 需过滤的接口名
        # @type IgnoreOperationName: String
        # @param LogSet: CLS日志集 | ES集群ID
        # @type LogSet: String
        # @param TraceRateLimit: 探针每秒上报trace数
        # @type TraceRateLimit: Integer
        # @param EnableSnapshot: 是否开启线程剖析
        # @type EnableSnapshot: Boolean
        # @param SnapshotTimeout: 线程剖析超时阈值
        # @type SnapshotTimeout: Integer
        # @param AgentEnable: 是否开启agent
        # @type AgentEnable: Boolean
        # @param InstrumentList: 组件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstrumentList: Array
        # @param TraceSquash: 是否开启链路压缩
        # @type TraceSquash: Boolean
        # @param EventEnable: 是否开启应用诊断开关
        # @type EventEnable: Boolean
        # @param AgentOperationConfigView: 探针接口相关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentOperationConfigView: :class:`Tencentcloud::Apm.v20210622.models.AgentOperationConfigView`
        # @param EnableLogConfig: 是否开启应用日志配置
        # @type EnableLogConfig: Boolean
        # @param ServiceID: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceID: String
        # @param EnableDashboardConfig: 应用是否开启dashboard配置： false 关（与业务系统保持一致）/true 开（应用级配置）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableDashboardConfig: Boolean
        # @param IsRelatedDashboard: 是否关联dashboard： 0 关 1 开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: dashboard ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardTopicID: String
        # @param EnableSecurityConfig: 是否开启应用级别配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableSecurityConfig: Boolean
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsInstrumentationVulnerabilityScan: Integer
        # @param IsSqlInjectionAnalysis: 是否开启SQL注入分析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSqlInjectionAnalysis: Integer
        # @param IsRemoteCommandExecutionAnalysis: 是否开启远程命令执行分析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRemoteCommandExecutionAnalysis: Integer
        # @param IsMemoryHijackingAnalysis: 是否开启内存马检测分析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMemoryHijackingAnalysis: Integer
        # @param LogIndexType: CLS索引类型(0=全文索引，1=键值索引)
        # @type LogIndexType: Integer
        # @param LogTraceIdKey: traceId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogTraceIdKey: String
        # @param IsDeleteAnyFileAnalysis: 是否开启删除任意文件检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeleteAnyFileAnalysis: Integer
        # @param IsReadAnyFileAnalysis: 是否开启读取任意文件检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReadAnyFileAnalysis: Integer
        # @param IsUploadAnyFileAnalysis: 是否开启上传任意文件检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUploadAnyFileAnalysis: Integer
        # @param IsIncludeAnyFileAnalysis: 是否开启包含任意文件检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIncludeAnyFileAnalysis: Integer
        # @param IsDirectoryTraversalAnalysis: 是否开启目录遍历检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDirectoryTraversalAnalysis: Integer
        # @param IsTemplateEngineInjectionAnalysis: 是否开启模板引擎注入检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTemplateEngineInjectionAnalysis: Integer
        # @param IsScriptEngineInjectionAnalysis: 是否开启脚本引擎注入检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsScriptEngineInjectionAnalysis: Integer
        # @param IsExpressionInjectionAnalysis: 是否开启表达式注入检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExpressionInjectionAnalysis: Integer
        # @param IsJNDIInjectionAnalysis: 是否开启JNDI注入检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsJNDIInjectionAnalysis: Integer
        # @param IsJNIInjectionAnalysis: 是否开启JNI注入检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsJNIInjectionAnalysis: Integer
        # @param IsWebshellBackdoorAnalysis: 是否开启Webshell后门检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWebshellBackdoorAnalysis: Integer
        # @param IsDeserializationAnalysis: 是否开启反序列化检测（0-关闭，1-开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeserializationAnalysis: Integer
        # @param UrlAutoConvergenceEnable: 接口名称自动收敛开关（0-关闭，1-开启）
        # @type UrlAutoConvergenceEnable: Boolean
        # @param UrlLongSegmentThreshold: URL长分段收敛阈值
        # @type UrlLongSegmentThreshold: Integer
        # @param UrlNumberSegmentThreshold: URL数字分段收敛阈值
        # @type UrlNumberSegmentThreshold: Integer
        # @param DisableMemoryUsed: 探针熔断内存阈值
        # @type DisableMemoryUsed: Integer
        # @param DisableCpuUsed: 探针熔断CPU阈值
        # @type DisableCpuUsed: Integer
        # @param DbStatementParametersEnabled: 是否开启SQL参数获取
        # @type DbStatementParametersEnabled: Boolean
        # @param SlowSQLThresholds: 慢SQL阈值
        # @type SlowSQLThresholds: Array
        # @param EnableDesensitizationRule: 是否开启脱敏规则
        # @type EnableDesensitizationRule: Integer
        # @param DesensitizationRule: 脱敏规则
        # @type DesensitizationRule: String
        # @param LogSpanIdKey: spanId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogSpanIdKey: String
        # @param AutoProfilingConfig: 自动性能剖析配置
        # @type AutoProfilingConfig: :class:`Tencentcloud::Apm.v20210622.models.AutoProfilingConfig`

        attr_accessor :InstanceKey, :ServiceName, :UrlConvergenceSwitch, :UrlConvergenceThreshold, :UrlConvergence, :ExceptionFilter, :ErrorCodeFilter, :Components, :UrlExclude, :LogSource, :LogRegion, :IsRelatedLog, :LogTopicID, :IgnoreOperationName, :LogSet, :TraceRateLimit, :EnableSnapshot, :SnapshotTimeout, :AgentEnable, :InstrumentList, :TraceSquash, :EventEnable, :AgentOperationConfigView, :EnableLogConfig, :ServiceID, :EnableDashboardConfig, :IsRelatedDashboard, :DashboardTopicID, :EnableSecurityConfig, :IsInstrumentationVulnerabilityScan, :IsSqlInjectionAnalysis, :IsRemoteCommandExecutionAnalysis, :IsMemoryHijackingAnalysis, :LogIndexType, :LogTraceIdKey, :IsDeleteAnyFileAnalysis, :IsReadAnyFileAnalysis, :IsUploadAnyFileAnalysis, :IsIncludeAnyFileAnalysis, :IsDirectoryTraversalAnalysis, :IsTemplateEngineInjectionAnalysis, :IsScriptEngineInjectionAnalysis, :IsExpressionInjectionAnalysis, :IsJNDIInjectionAnalysis, :IsJNIInjectionAnalysis, :IsWebshellBackdoorAnalysis, :IsDeserializationAnalysis, :UrlAutoConvergenceEnable, :UrlLongSegmentThreshold, :UrlNumberSegmentThreshold, :DisableMemoryUsed, :DisableCpuUsed, :DbStatementParametersEnabled, :SlowSQLThresholds, :EnableDesensitizationRule, :DesensitizationRule, :LogSpanIdKey, :AutoProfilingConfig

        def initialize(instancekey=nil, servicename=nil, urlconvergenceswitch=nil, urlconvergencethreshold=nil, urlconvergence=nil, exceptionfilter=nil, errorcodefilter=nil, components=nil, urlexclude=nil, logsource=nil, logregion=nil, isrelatedlog=nil, logtopicid=nil, ignoreoperationname=nil, logset=nil, traceratelimit=nil, enablesnapshot=nil, snapshottimeout=nil, agentenable=nil, instrumentlist=nil, tracesquash=nil, eventenable=nil, agentoperationconfigview=nil, enablelogconfig=nil, serviceid=nil, enabledashboardconfig=nil, isrelateddashboard=nil, dashboardtopicid=nil, enablesecurityconfig=nil, isinstrumentationvulnerabilityscan=nil, issqlinjectionanalysis=nil, isremotecommandexecutionanalysis=nil, ismemoryhijackinganalysis=nil, logindextype=nil, logtraceidkey=nil, isdeleteanyfileanalysis=nil, isreadanyfileanalysis=nil, isuploadanyfileanalysis=nil, isincludeanyfileanalysis=nil, isdirectorytraversalanalysis=nil, istemplateengineinjectionanalysis=nil, isscriptengineinjectionanalysis=nil, isexpressioninjectionanalysis=nil, isjndiinjectionanalysis=nil, isjniinjectionanalysis=nil, iswebshellbackdooranalysis=nil, isdeserializationanalysis=nil, urlautoconvergenceenable=nil, urllongsegmentthreshold=nil, urlnumbersegmentthreshold=nil, disablememoryused=nil, disablecpuused=nil, dbstatementparametersenabled=nil, slowsqlthresholds=nil, enabledesensitizationrule=nil, desensitizationrule=nil, logspanidkey=nil, autoprofilingconfig=nil)
          @InstanceKey = instancekey
          @ServiceName = servicename
          @UrlConvergenceSwitch = urlconvergenceswitch
          @UrlConvergenceThreshold = urlconvergencethreshold
          @UrlConvergence = urlconvergence
          @ExceptionFilter = exceptionfilter
          @ErrorCodeFilter = errorcodefilter
          @Components = components
          @UrlExclude = urlexclude
          @LogSource = logsource
          @LogRegion = logregion
          @IsRelatedLog = isrelatedlog
          @LogTopicID = logtopicid
          @IgnoreOperationName = ignoreoperationname
          @LogSet = logset
          @TraceRateLimit = traceratelimit
          @EnableSnapshot = enablesnapshot
          @SnapshotTimeout = snapshottimeout
          @AgentEnable = agentenable
          @InstrumentList = instrumentlist
          @TraceSquash = tracesquash
          @EventEnable = eventenable
          @AgentOperationConfigView = agentoperationconfigview
          @EnableLogConfig = enablelogconfig
          @ServiceID = serviceid
          @EnableDashboardConfig = enabledashboardconfig
          @IsRelatedDashboard = isrelateddashboard
          @DashboardTopicID = dashboardtopicid
          @EnableSecurityConfig = enablesecurityconfig
          @IsInstrumentationVulnerabilityScan = isinstrumentationvulnerabilityscan
          @IsSqlInjectionAnalysis = issqlinjectionanalysis
          @IsRemoteCommandExecutionAnalysis = isremotecommandexecutionanalysis
          @IsMemoryHijackingAnalysis = ismemoryhijackinganalysis
          @LogIndexType = logindextype
          @LogTraceIdKey = logtraceidkey
          @IsDeleteAnyFileAnalysis = isdeleteanyfileanalysis
          @IsReadAnyFileAnalysis = isreadanyfileanalysis
          @IsUploadAnyFileAnalysis = isuploadanyfileanalysis
          @IsIncludeAnyFileAnalysis = isincludeanyfileanalysis
          @IsDirectoryTraversalAnalysis = isdirectorytraversalanalysis
          @IsTemplateEngineInjectionAnalysis = istemplateengineinjectionanalysis
          @IsScriptEngineInjectionAnalysis = isscriptengineinjectionanalysis
          @IsExpressionInjectionAnalysis = isexpressioninjectionanalysis
          @IsJNDIInjectionAnalysis = isjndiinjectionanalysis
          @IsJNIInjectionAnalysis = isjniinjectionanalysis
          @IsWebshellBackdoorAnalysis = iswebshellbackdooranalysis
          @IsDeserializationAnalysis = isdeserializationanalysis
          @UrlAutoConvergenceEnable = urlautoconvergenceenable
          @UrlLongSegmentThreshold = urllongsegmentthreshold
          @UrlNumberSegmentThreshold = urlnumbersegmentthreshold
          @DisableMemoryUsed = disablememoryused
          @DisableCpuUsed = disablecpuused
          @DbStatementParametersEnabled = dbstatementparametersenabled
          @SlowSQLThresholds = slowsqlthresholds
          @EnableDesensitizationRule = enabledesensitizationrule
          @DesensitizationRule = desensitizationrule
          @LogSpanIdKey = logspanidkey
          @AutoProfilingConfig = autoprofilingconfig
        end

        def deserialize(params)
          @InstanceKey = params['InstanceKey']
          @ServiceName = params['ServiceName']
          @UrlConvergenceSwitch = params['UrlConvergenceSwitch']
          @UrlConvergenceThreshold = params['UrlConvergenceThreshold']
          @UrlConvergence = params['UrlConvergence']
          @ExceptionFilter = params['ExceptionFilter']
          @ErrorCodeFilter = params['ErrorCodeFilter']
          @Components = params['Components']
          @UrlExclude = params['UrlExclude']
          @LogSource = params['LogSource']
          @LogRegion = params['LogRegion']
          @IsRelatedLog = params['IsRelatedLog']
          @LogTopicID = params['LogTopicID']
          @IgnoreOperationName = params['IgnoreOperationName']
          @LogSet = params['LogSet']
          @TraceRateLimit = params['TraceRateLimit']
          @EnableSnapshot = params['EnableSnapshot']
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
          @EventEnable = params['EventEnable']
          unless params['AgentOperationConfigView'].nil?
            @AgentOperationConfigView = AgentOperationConfigView.new
            @AgentOperationConfigView.deserialize(params['AgentOperationConfigView'])
          end
          @EnableLogConfig = params['EnableLogConfig']
          @ServiceID = params['ServiceID']
          @EnableDashboardConfig = params['EnableDashboardConfig']
          @IsRelatedDashboard = params['IsRelatedDashboard']
          @DashboardTopicID = params['DashboardTopicID']
          @EnableSecurityConfig = params['EnableSecurityConfig']
          @IsInstrumentationVulnerabilityScan = params['IsInstrumentationVulnerabilityScan']
          @IsSqlInjectionAnalysis = params['IsSqlInjectionAnalysis']
          @IsRemoteCommandExecutionAnalysis = params['IsRemoteCommandExecutionAnalysis']
          @IsMemoryHijackingAnalysis = params['IsMemoryHijackingAnalysis']
          @LogIndexType = params['LogIndexType']
          @LogTraceIdKey = params['LogTraceIdKey']
          @IsDeleteAnyFileAnalysis = params['IsDeleteAnyFileAnalysis']
          @IsReadAnyFileAnalysis = params['IsReadAnyFileAnalysis']
          @IsUploadAnyFileAnalysis = params['IsUploadAnyFileAnalysis']
          @IsIncludeAnyFileAnalysis = params['IsIncludeAnyFileAnalysis']
          @IsDirectoryTraversalAnalysis = params['IsDirectoryTraversalAnalysis']
          @IsTemplateEngineInjectionAnalysis = params['IsTemplateEngineInjectionAnalysis']
          @IsScriptEngineInjectionAnalysis = params['IsScriptEngineInjectionAnalysis']
          @IsExpressionInjectionAnalysis = params['IsExpressionInjectionAnalysis']
          @IsJNDIInjectionAnalysis = params['IsJNDIInjectionAnalysis']
          @IsJNIInjectionAnalysis = params['IsJNIInjectionAnalysis']
          @IsWebshellBackdoorAnalysis = params['IsWebshellBackdoorAnalysis']
          @IsDeserializationAnalysis = params['IsDeserializationAnalysis']
          @UrlAutoConvergenceEnable = params['UrlAutoConvergenceEnable']
          @UrlLongSegmentThreshold = params['UrlLongSegmentThreshold']
          @UrlNumberSegmentThreshold = params['UrlNumberSegmentThreshold']
          @DisableMemoryUsed = params['DisableMemoryUsed']
          @DisableCpuUsed = params['DisableCpuUsed']
          @DbStatementParametersEnabled = params['DbStatementParametersEnabled']
          unless params['SlowSQLThresholds'].nil?
            @SlowSQLThresholds = []
            params['SlowSQLThresholds'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @SlowSQLThresholds << apmtag_tmp
            end
          end
          @EnableDesensitizationRule = params['EnableDesensitizationRule']
          @DesensitizationRule = params['DesensitizationRule']
          @LogSpanIdKey = params['LogSpanIdKey']
          unless params['AutoProfilingConfig'].nil?
            @AutoProfilingConfig = AutoProfilingConfig.new
            @AutoProfilingConfig.deserialize(params['AutoProfilingConfig'])
          end
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
        # @param DisableMemoryUsed: 探针熔断内存阈值
        # @type DisableMemoryUsed: Integer
        # @param DisableCpuUsed: 探针熔断CPU阈值
        # @type DisableCpuUsed: Integer
        # @param DbStatementParametersEnabled: 是否开启SQL参数获取
        # @type DbStatementParametersEnabled: Boolean
        # @param SlowSQLThresholds: 慢SQL阈值
        # @type SlowSQLThresholds: Array
        # @param EnableDesensitizationRule: 是否开启脱敏规则
        # @type EnableDesensitizationRule: Integer
        # @param DesensitizationRule: 脱敏规则
        # @type DesensitizationRule: String
        # @param AutoProfilingConfig: 自动性能剖析任务配置
        # @type AutoProfilingConfig: :class:`Tencentcloud::Apm.v20210622.models.AutoProfilingConfig`

        attr_accessor :InstanceKey, :ServiceName, :OperationNameFilter, :ExceptionFilter, :ErrorCodeFilter, :EventEnable, :UrlConvergenceSwitch, :UrlConvergenceThreshold, :UrlConvergence, :UrlExclude, :IsRelatedLog, :LogSource, :LogSet, :LogTopicID, :SnapshotEnable, :SnapshotTimeout, :AgentEnable, :InstrumentList, :TraceSquash, :DisableMemoryUsed, :DisableCpuUsed, :DbStatementParametersEnabled, :SlowSQLThresholds, :EnableDesensitizationRule, :DesensitizationRule, :AutoProfilingConfig

        def initialize(instancekey=nil, servicename=nil, operationnamefilter=nil, exceptionfilter=nil, errorcodefilter=nil, eventenable=nil, urlconvergenceswitch=nil, urlconvergencethreshold=nil, urlconvergence=nil, urlexclude=nil, isrelatedlog=nil, logsource=nil, logset=nil, logtopicid=nil, snapshotenable=nil, snapshottimeout=nil, agentenable=nil, instrumentlist=nil, tracesquash=nil, disablememoryused=nil, disablecpuused=nil, dbstatementparametersenabled=nil, slowsqlthresholds=nil, enabledesensitizationrule=nil, desensitizationrule=nil, autoprofilingconfig=nil)
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
          @DisableMemoryUsed = disablememoryused
          @DisableCpuUsed = disablecpuused
          @DbStatementParametersEnabled = dbstatementparametersenabled
          @SlowSQLThresholds = slowsqlthresholds
          @EnableDesensitizationRule = enabledesensitizationrule
          @DesensitizationRule = desensitizationrule
          @AutoProfilingConfig = autoprofilingconfig
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
          @DisableMemoryUsed = params['DisableMemoryUsed']
          @DisableCpuUsed = params['DisableCpuUsed']
          @DbStatementParametersEnabled = params['DbStatementParametersEnabled']
          unless params['SlowSQLThresholds'].nil?
            @SlowSQLThresholds = []
            params['SlowSQLThresholds'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @SlowSQLThresholds << apmtag_tmp
            end
          end
          @EnableDesensitizationRule = params['EnableDesensitizationRule']
          @DesensitizationRule = params['DesensitizationRule']
          unless params['AutoProfilingConfig'].nil?
            @AutoProfilingConfig = AutoProfilingConfig.new
            @AutoProfilingConfig.deserialize(params['AutoProfilingConfig'])
          end
        end
      end

      # 展示apm业务系统与其他云产品关联关系返回体
      class ApmAssociation < TencentCloud::Common::AbstractModel
        # @param PeerId: 关联产品的实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerId: String
        # @param Status: 关联关系状态：1（启用）、2（不启用）、3（已失效）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Topic: CKafka消息主题
        # @type Topic: String

        attr_accessor :PeerId, :Status, :Topic

        def initialize(peerid=nil, status=nil, topic=nil)
          @PeerId = peerid
          @Status = status
          @Topic = topic
        end

        def deserialize(params)
          @PeerId = params['PeerId']
          @Status = params['Status']
          @Topic = params['Topic']
        end
      end

      # 指标维度信息
      class ApmField < TencentCloud::Common::AbstractModel
        # @param Key: 指标名
        # @type Key: String
        # @param Value: 指标数值
        # @type Value: Float
        # @param Unit: 指标所对应的单位
        # @type Unit: String
        # @param CompareVals: 同比结果数组，推荐使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareVals: Array
        # @param LastPeriodValue: 同比上一个周期的具体指标数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastPeriodValue: Array
        # @param CompareVal: 同比指标值，已弃用，不建议使用
        # @type CompareVal: String
        # @param NameCN: 指标中文名
        # @type NameCN: String
        # @param NameEN: 指标英文名
        # @type NameEN: String

        attr_accessor :Key, :Value, :Unit, :CompareVals, :LastPeriodValue, :CompareVal, :NameCN, :NameEN

        def initialize(key=nil, value=nil, unit=nil, comparevals=nil, lastperiodvalue=nil, compareval=nil, namecn=nil, nameen=nil)
          @Key = key
          @Value = value
          @Unit = unit
          @CompareVals = comparevals
          @LastPeriodValue = lastperiodvalue
          @CompareVal = compareval
          @NameCN = namecn
          @NameEN = nameen
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Unit = params['Unit']
          unless params['CompareVals'].nil?
            @CompareVals = []
            params['CompareVals'].each do |i|
              apmkvitem_tmp = APMKVItem.new
              apmkvitem_tmp.deserialize(i)
              @CompareVals << apmkvitem_tmp
            end
          end
          unless params['LastPeriodValue'].nil?
            @LastPeriodValue = []
            params['LastPeriodValue'].each do |i|
              apmkv_tmp = APMKV.new
              apmkv_tmp.deserialize(i)
              @LastPeriodValue << apmkv_tmp
            end
          end
          @CompareVal = params['CompareVal']
          @NameCN = params['NameCN']
          @NameEN = params['NameEN']
        end
      end

      # APM 业务系统信息
      class ApmInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Name: 业务系统名
        # @type Name: String
        # @param Description: 业务系统描述信息
        # @type Description: String
        # @param Status: 业务系统状态。{
        # 1: 初始化中; 2: 运行中; 4: 限流}
        # @type Status: Integer
        # @param Region: 业务系统所属地域
        # @type Region: String
        # @param Tags: 业务系统 Tag 列表
        # @type Tags: Array
        # @param AppId: AppID 信息
        # @type AppId: Integer
        # @param CreateUin: 创建人 Uin
        # @type CreateUin: String
        # @param AmountOfUsedStorage: 存储使用量(单位：MB)
        # @type AmountOfUsedStorage: Float
        # @param ServiceCount: 该业务系统服务端应用数量
        # @type ServiceCount: Integer
        # @param CountOfReportSpanPerDay: 日均上报 Span 数
        # @type CountOfReportSpanPerDay: Integer
        # @param TraceDuration: Trace 数据保存时长（单位：天）
        # @type TraceDuration: Integer
        # @param SpanDailyCounters: 业务系统上报额度
        # @type SpanDailyCounters: Integer
        # @param BillingInstance: 业务系统是否已开通计费（0=未开通，1=已开通）
        # @type BillingInstance: Integer
        # @param ErrRateThreshold: 错误警示线（单位：%）
        # @type ErrRateThreshold: Integer
        # @param SampleRate: 采样率（单位：%）
        # @type SampleRate: Integer
        # @param ErrorSample: 是否开启错误采样（0=关, 1=开）
        # @type ErrorSample: Integer
        # @param SlowRequestSavedThreshold: 采样慢调用保存阈值（单位：ms）
        # @type SlowRequestSavedThreshold: Integer
        # @param LogRegion: CLS 日志所在地域
        # @type LogRegion: String
        # @param LogSource: 日志源
        # @type LogSource: String
        # @param IsRelatedLog: 日志功能开关（0=关， 1=开）
        # @type IsRelatedLog: Integer
        # @param LogTopicID: 日志主题 ID
        # @type LogTopicID: String
        # @param ClientCount: 该业务系统客户端应用数量
        # @type ClientCount: Integer
        # @param TotalCount: 该业务系统最近2天活跃应用数量
        # @type TotalCount: Integer
        # @param LogSet: CLS 日志集
        # @type LogSet: String
        # @param MetricDuration: Metric 数据保存时长（单位：天）
        # @type MetricDuration: Integer
        # @param CustomShowTags: 用户自定义展示标签列表
        # @type CustomShowTags: Array
        # @param PayMode: 业务系统计费模式（1为预付费，0为按量付费）
        # @type PayMode: Integer
        # @param PayModeEffective: 业务系统计费模式是否生效
        # @type PayModeEffective: Boolean
        # @param ResponseDurationWarningThreshold: 响应时间警示线（单位：ms）
        # @type ResponseDurationWarningThreshold: Integer
        # @param Free: 是否免费（0=否，1=限额免费，2=完全免费），默认0
        # @type Free: Integer
        # @param DefaultTSF: 是否 TSF 默认业务系统（0=否，1=是）
        # @type DefaultTSF: Integer
        # @param IsRelatedDashboard: 是否关联 Dashboard（0=关, 1=开）
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: 关联的 Dashboard ID
        # @type DashboardTopicID: String
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测（0=关， 1=开）
        # @type IsInstrumentationVulnerabilityScan: Integer
        # @param IsSqlInjectionAnalysis: 是否开启 SQL 注入分析（0=关， 1=开）
        # @type IsSqlInjectionAnalysis: Integer
        # @param StopReason: 限流原因。{
        # 1: 正式版限额;
        # 2: 试用版限额;
        # 4: 试用版到期;
        # 8: 账号欠费
        # }
        # @type StopReason: Integer
        # @param IsRemoteCommandExecutionAnalysis: 是否开远程命令执行检测（0=关， 1=开）
        # @type IsRemoteCommandExecutionAnalysis: Integer
        # @param IsMemoryHijackingAnalysis: 是否开内存马执行检测（0=关， 1=开）
        # @type IsMemoryHijackingAnalysis: Integer
        # @param LogIndexType: CLS索引类型(0=全文索引，1=键值索引)
        # @type LogIndexType: Integer
        # @param LogTraceIdKey: traceId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogTraceIdKey: String
        # @param IsDeleteAnyFileAnalysis: 是否开启删除任意文件检测（0-关闭，1-开启）
        # @type IsDeleteAnyFileAnalysis: Integer
        # @param IsReadAnyFileAnalysis: 是否开启读取任意文件检测（0-关闭，1-开启）
        # @type IsReadAnyFileAnalysis: Integer
        # @param IsUploadAnyFileAnalysis: 是否开启上传任意文件检测（0-关闭，1-开启）
        # @type IsUploadAnyFileAnalysis: Integer
        # @param IsIncludeAnyFileAnalysis: 是否开启包含任意文件检测（0-关闭，1-开启）
        # @type IsIncludeAnyFileAnalysis: Integer
        # @param IsDirectoryTraversalAnalysis: 是否开启目录遍历检测（0-关闭，1-开启）
        # @type IsDirectoryTraversalAnalysis: Integer
        # @param IsTemplateEngineInjectionAnalysis: 是否开启模板引擎注入检测（0-关闭，1-开启）
        # @type IsTemplateEngineInjectionAnalysis: Integer
        # @param IsScriptEngineInjectionAnalysis: 是否开启脚本引擎注入检测（0-关闭，1-开启）
        # @type IsScriptEngineInjectionAnalysis: Integer
        # @param IsExpressionInjectionAnalysis: 是否开启表达式注入检测（0-关闭，1-开启）
        # @type IsExpressionInjectionAnalysis: Integer
        # @param IsJNDIInjectionAnalysis: 是否开启JNDI注入检测（0-关闭，1-开启）
        # @type IsJNDIInjectionAnalysis: Integer
        # @param IsJNIInjectionAnalysis: 是否开启JNI注入检测（0-关闭，1-开启）
        # @type IsJNIInjectionAnalysis: Integer
        # @param IsWebshellBackdoorAnalysis: 是否开启Webshell后门检测（0-关闭，1-开启）
        # @type IsWebshellBackdoorAnalysis: Integer
        # @param IsDeserializationAnalysis: 是否开启反序列化检测（0-关闭，1-开启）
        # @type IsDeserializationAnalysis: Integer
        # @param Token: 业务系统鉴权 token
        # @type Token: String
        # @param UrlLongSegmentThreshold: URL长分段收敛阈值
        # @type UrlLongSegmentThreshold: Integer
        # @param UrlNumberSegmentThreshold: URL数字分段收敛阈值
        # @type UrlNumberSegmentThreshold: Integer
        # @param LogSpanIdKey: spanId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogSpanIdKey: String

        attr_accessor :InstanceId, :Name, :Description, :Status, :Region, :Tags, :AppId, :CreateUin, :AmountOfUsedStorage, :ServiceCount, :CountOfReportSpanPerDay, :TraceDuration, :SpanDailyCounters, :BillingInstance, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :LogRegion, :LogSource, :IsRelatedLog, :LogTopicID, :ClientCount, :TotalCount, :LogSet, :MetricDuration, :CustomShowTags, :PayMode, :PayModeEffective, :ResponseDurationWarningThreshold, :Free, :DefaultTSF, :IsRelatedDashboard, :DashboardTopicID, :IsInstrumentationVulnerabilityScan, :IsSqlInjectionAnalysis, :StopReason, :IsRemoteCommandExecutionAnalysis, :IsMemoryHijackingAnalysis, :LogIndexType, :LogTraceIdKey, :IsDeleteAnyFileAnalysis, :IsReadAnyFileAnalysis, :IsUploadAnyFileAnalysis, :IsIncludeAnyFileAnalysis, :IsDirectoryTraversalAnalysis, :IsTemplateEngineInjectionAnalysis, :IsScriptEngineInjectionAnalysis, :IsExpressionInjectionAnalysis, :IsJNDIInjectionAnalysis, :IsJNIInjectionAnalysis, :IsWebshellBackdoorAnalysis, :IsDeserializationAnalysis, :Token, :UrlLongSegmentThreshold, :UrlNumberSegmentThreshold, :LogSpanIdKey

        def initialize(instanceid=nil, name=nil, description=nil, status=nil, region=nil, tags=nil, appid=nil, createuin=nil, amountofusedstorage=nil, servicecount=nil, countofreportspanperday=nil, traceduration=nil, spandailycounters=nil, billinginstance=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, logregion=nil, logsource=nil, isrelatedlog=nil, logtopicid=nil, clientcount=nil, totalcount=nil, logset=nil, metricduration=nil, customshowtags=nil, paymode=nil, paymodeeffective=nil, responsedurationwarningthreshold=nil, free=nil, defaulttsf=nil, isrelateddashboard=nil, dashboardtopicid=nil, isinstrumentationvulnerabilityscan=nil, issqlinjectionanalysis=nil, stopreason=nil, isremotecommandexecutionanalysis=nil, ismemoryhijackinganalysis=nil, logindextype=nil, logtraceidkey=nil, isdeleteanyfileanalysis=nil, isreadanyfileanalysis=nil, isuploadanyfileanalysis=nil, isincludeanyfileanalysis=nil, isdirectorytraversalanalysis=nil, istemplateengineinjectionanalysis=nil, isscriptengineinjectionanalysis=nil, isexpressioninjectionanalysis=nil, isjndiinjectionanalysis=nil, isjniinjectionanalysis=nil, iswebshellbackdooranalysis=nil, isdeserializationanalysis=nil, token=nil, urllongsegmentthreshold=nil, urlnumbersegmentthreshold=nil, logspanidkey=nil)
          @InstanceId = instanceid
          @Name = name
          @Description = description
          @Status = status
          @Region = region
          @Tags = tags
          @AppId = appid
          @CreateUin = createuin
          @AmountOfUsedStorage = amountofusedstorage
          @ServiceCount = servicecount
          @CountOfReportSpanPerDay = countofreportspanperday
          @TraceDuration = traceduration
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
          @StopReason = stopreason
          @IsRemoteCommandExecutionAnalysis = isremotecommandexecutionanalysis
          @IsMemoryHijackingAnalysis = ismemoryhijackinganalysis
          @LogIndexType = logindextype
          @LogTraceIdKey = logtraceidkey
          @IsDeleteAnyFileAnalysis = isdeleteanyfileanalysis
          @IsReadAnyFileAnalysis = isreadanyfileanalysis
          @IsUploadAnyFileAnalysis = isuploadanyfileanalysis
          @IsIncludeAnyFileAnalysis = isincludeanyfileanalysis
          @IsDirectoryTraversalAnalysis = isdirectorytraversalanalysis
          @IsTemplateEngineInjectionAnalysis = istemplateengineinjectionanalysis
          @IsScriptEngineInjectionAnalysis = isscriptengineinjectionanalysis
          @IsExpressionInjectionAnalysis = isexpressioninjectionanalysis
          @IsJNDIInjectionAnalysis = isjndiinjectionanalysis
          @IsJNIInjectionAnalysis = isjniinjectionanalysis
          @IsWebshellBackdoorAnalysis = iswebshellbackdooranalysis
          @IsDeserializationAnalysis = isdeserializationanalysis
          @Token = token
          @UrlLongSegmentThreshold = urllongsegmentthreshold
          @UrlNumberSegmentThreshold = urlnumbersegmentthreshold
          @LogSpanIdKey = logspanidkey
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          @Region = params['Region']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @AppId = params['AppId']
          @CreateUin = params['CreateUin']
          @AmountOfUsedStorage = params['AmountOfUsedStorage']
          @ServiceCount = params['ServiceCount']
          @CountOfReportSpanPerDay = params['CountOfReportSpanPerDay']
          @TraceDuration = params['TraceDuration']
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
          @StopReason = params['StopReason']
          @IsRemoteCommandExecutionAnalysis = params['IsRemoteCommandExecutionAnalysis']
          @IsMemoryHijackingAnalysis = params['IsMemoryHijackingAnalysis']
          @LogIndexType = params['LogIndexType']
          @LogTraceIdKey = params['LogTraceIdKey']
          @IsDeleteAnyFileAnalysis = params['IsDeleteAnyFileAnalysis']
          @IsReadAnyFileAnalysis = params['IsReadAnyFileAnalysis']
          @IsUploadAnyFileAnalysis = params['IsUploadAnyFileAnalysis']
          @IsIncludeAnyFileAnalysis = params['IsIncludeAnyFileAnalysis']
          @IsDirectoryTraversalAnalysis = params['IsDirectoryTraversalAnalysis']
          @IsTemplateEngineInjectionAnalysis = params['IsTemplateEngineInjectionAnalysis']
          @IsScriptEngineInjectionAnalysis = params['IsScriptEngineInjectionAnalysis']
          @IsExpressionInjectionAnalysis = params['IsExpressionInjectionAnalysis']
          @IsJNDIInjectionAnalysis = params['IsJNDIInjectionAnalysis']
          @IsJNIInjectionAnalysis = params['IsJNIInjectionAnalysis']
          @IsWebshellBackdoorAnalysis = params['IsWebshellBackdoorAnalysis']
          @IsDeserializationAnalysis = params['IsDeserializationAnalysis']
          @Token = params['Token']
          @UrlLongSegmentThreshold = params['UrlLongSegmentThreshold']
          @UrlNumberSegmentThreshold = params['UrlNumberSegmentThreshold']
          @LogSpanIdKey = params['LogSpanIdKey']
        end
      end

      # 指标列表单元
      class ApmMetricRecord < TencentCloud::Common::AbstractModel
        # @param Fields: field数组，用于指标的查询结果
        # @type Fields: Array
        # @param Tags: tag数组，用于区分 Groupby 的对象
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

      # 展示apm业务系统关联prometheus关系返回体
      class ApmPrometheusRules < TencentCloud::Common::AbstractModel
        # @param Id: 指标匹配规则ID
        # @type Id: Integer
        # @param Name: 指标匹配规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ServiceName: 规则生效的应用。生效于全部应用就传空字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param Status: 指标匹配规则状态：1(启用)、2（不启用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param MetricNameRule: 指标匹配规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricNameRule: String
        # @param MetricMatchType: 匹配类型：0精准匹配，1前缀匹配，2后缀匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricMatchType: Integer

        attr_accessor :Id, :Name, :ServiceName, :Status, :MetricNameRule, :MetricMatchType

        def initialize(id=nil, name=nil, servicename=nil, status=nil, metricnamerule=nil, metricmatchtype=nil)
          @Id = id
          @Name = name
          @ServiceName = servicename
          @Status = status
          @MetricNameRule = metricnamerule
          @MetricMatchType = metricmatchtype
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ServiceName = params['ServiceName']
          @Status = params['Status']
          @MetricNameRule = params['MetricNameRule']
          @MetricMatchType = params['MetricMatchType']
        end
      end

      # 采样配置信息
      class ApmSampleConfig < TencentCloud::Common::AbstractModel
        # @param InstanceKey: 实例ID
        # @type InstanceKey: String
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param SampleName: 采样名字
        # @type SampleName: String
        # @param OperationName: 接口名
        # @type OperationName: String
        # @param SpanNum: 采样的span数
        # @type SpanNum: Integer
        # @param Status: 采样配置开关 0 关 1 开
        # @type Status: Integer
        # @param Tags: tags数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param SampleRate: 采样率
        # @type SampleRate: Integer
        # @param OperationType: 0=精确匹配（默认）；1=前缀匹配；2=后缀匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationType: Integer
        # @param Id: 配置Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :InstanceKey, :ServiceName, :SampleName, :OperationName, :SpanNum, :Status, :Tags, :SampleRate, :OperationType, :Id

        def initialize(instancekey=nil, servicename=nil, samplename=nil, operationname=nil, spannum=nil, status=nil, tags=nil, samplerate=nil, operationtype=nil, id=nil)
          @InstanceKey = instancekey
          @ServiceName = servicename
          @SampleName = samplename
          @OperationName = operationname
          @SpanNum = spannum
          @Status = status
          @Tags = tags
          @SampleRate = samplerate
          @OperationType = operationtype
          @Id = id
        end

        def deserialize(params)
          @InstanceKey = params['InstanceKey']
          @ServiceName = params['ServiceName']
          @SampleName = params['SampleName']
          @OperationName = params['OperationName']
          @SpanNum = params['SpanNum']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmkvitem_tmp = APMKVItem.new
              apmkvitem_tmp.deserialize(i)
              @Tags << apmkvitem_tmp
            end
          end
          @SampleRate = params['SampleRate']
          @OperationType = params['OperationType']
          @Id = params['Id']
        end
      end

      # apm应用指标信息
      class ApmServiceMetric < TencentCloud::Common::AbstractModel
        # @param Fields: filed数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fields: Array
        # @param Tags: tag数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ServiceDetail: 应用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDetail: :class:`Tencentcloud::Apm.v20210622.models.ServiceDetail`

        attr_accessor :Fields, :Tags, :ServiceDetail

        def initialize(fields=nil, tags=nil, servicedetail=nil)
          @Fields = fields
          @Tags = tags
          @ServiceDetail = servicedetail
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
          unless params['ServiceDetail'].nil?
            @ServiceDetail = ServiceDetail.new
            @ServiceDetail.deserialize(params['ServiceDetail'])
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

      # APM应用实例漏洞相关信息
      class ApmVulnerabilityServiceDetail < TencentCloud::Common::AbstractModel
        # @param ServiceInstance: 应用实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInstance: String
        # @param Path: 漏洞所在jar包路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param LastOccurTime: 最近发生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOccurTime: Integer

        attr_accessor :ServiceInstance, :Path, :LastOccurTime

        def initialize(serviceinstance=nil, path=nil, lastoccurtime=nil)
          @ServiceInstance = serviceinstance
          @Path = path
          @LastOccurTime = lastoccurtime
        end

        def deserialize(params)
          @ServiceInstance = params['ServiceInstance']
          @Path = params['Path']
          @LastOccurTime = params['LastOccurTime']
        end
      end

      # 自动性能剖析配置
      class AutoProfilingConfig < TencentCloud::Common::AbstractModel
        # @param CpuProfilingEnable: 自动CPU剖析任务开关
        # @type CpuProfilingEnable: Boolean
        # @param MemoryProfilingEnable: 自动内存剖析任务开关
        # @type MemoryProfilingEnable: Boolean
        # @param CpuProfilingThreshold: 自动CPU剖析任务阈值
        # @type CpuProfilingThreshold: Integer
        # @param MemoryProfilingThreshold: 自动内存剖析任务阈值
        # @type MemoryProfilingThreshold: Integer
        # @param CpuProfilingDuration: CPU自动剖析任务时长
        # @type CpuProfilingDuration: Integer
        # @param MemoryProfilingDuration: 内存自动剖析任务时长
        # @type MemoryProfilingDuration: Integer

        attr_accessor :CpuProfilingEnable, :MemoryProfilingEnable, :CpuProfilingThreshold, :MemoryProfilingThreshold, :CpuProfilingDuration, :MemoryProfilingDuration

        def initialize(cpuprofilingenable=nil, memoryprofilingenable=nil, cpuprofilingthreshold=nil, memoryprofilingthreshold=nil, cpuprofilingduration=nil, memoryprofilingduration=nil)
          @CpuProfilingEnable = cpuprofilingenable
          @MemoryProfilingEnable = memoryprofilingenable
          @CpuProfilingThreshold = cpuprofilingthreshold
          @MemoryProfilingThreshold = memoryprofilingthreshold
          @CpuProfilingDuration = cpuprofilingduration
          @MemoryProfilingDuration = memoryprofilingduration
        end

        def deserialize(params)
          @CpuProfilingEnable = params['CpuProfilingEnable']
          @MemoryProfilingEnable = params['MemoryProfilingEnable']
          @CpuProfilingThreshold = params['CpuProfilingThreshold']
          @MemoryProfilingThreshold = params['MemoryProfilingThreshold']
          @CpuProfilingDuration = params['CpuProfilingDuration']
          @MemoryProfilingDuration = params['MemoryProfilingDuration']
        end
      end

      # CVM元数据
      class CVMMeta < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param InstanceID: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String

        attr_accessor :Region, :InstanceID

        def initialize(region=nil, instanceid=nil)
          @Region = region
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Region = params['Region']
          @InstanceID = params['InstanceID']
        end
      end

      # 包含了视图中节点组件类型的数量
      class ComponentTopologyView < TencentCloud::Common::AbstractModel
        # @param Service: 服务纬度的节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: Integer
        # @param Database: 数据库节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: Integer
        # @param MQ: 消息队列节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MQ: Integer

        attr_accessor :Service, :Database, :MQ

        def initialize(service=nil, database=nil, mq=nil)
          @Service = service
          @Database = database
          @MQ = mq
        end

        def deserialize(params)
          @Service = params['Service']
          @Database = params['Database']
          @MQ = params['MQ']
        end
      end

      # CreateApmInstance请求参数结构体
      class CreateApmInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 业务系统名
        # @type Name: String
        # @param Description: 业务系统描述信息
        # @type Description: String
        # @param TraceDuration: Trace 数据保存时长（单位：天，默认存储时长为3天）
        # @type TraceDuration: Integer
        # @param Tags: 业务系统 Tag 列表
        # @type Tags: Array
        # @param SpanDailyCounters: 业务系统上报额度值，默认赋值为0表示不限制上报额度，已废弃
        # @type SpanDailyCounters: Integer
        # @param PayMode: 业务系统的计费模式（0=按量付费，1=预付费）
        # @type PayMode: Integer
        # @param Free: 是否为免费版业务系统（0=付费版；1=TSF 受限免费版；2=免费版）
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

      # CreateApmPrometheusRule请求参数结构体
      class CreateApmPrometheusRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 指标匹配规则名
        # @type Name: String
        # @param ServiceName: 规则生效的应用。作用全部应用就传空字符串
        # @type ServiceName: String
        # @param MetricMatchType: 指标匹配类型：0精准匹配，1前缀匹配，2后缀匹配
        # @type MetricMatchType: Integer
        # @param MetricNameRule: 客户定义的命中指标名规则。
        # @type MetricNameRule: String
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String

        attr_accessor :Name, :ServiceName, :MetricMatchType, :MetricNameRule, :InstanceId

        def initialize(name=nil, servicename=nil, metricmatchtype=nil, metricnamerule=nil, instanceid=nil)
          @Name = name
          @ServiceName = servicename
          @MetricMatchType = metricmatchtype
          @MetricNameRule = metricnamerule
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Name = params['Name']
          @ServiceName = params['ServiceName']
          @MetricMatchType = params['MetricMatchType']
          @MetricNameRule = params['MetricNameRule']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateApmPrometheusRule返回参数结构体
      class CreateApmPrometheusRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 指标匹配规则的ID
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateApmSampleConfig请求参数结构体
      class CreateApmSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param SampleRate: 采样率
        # @type SampleRate: Integer
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param SampleName: 采样规则名
        # @type SampleName: String
        # @param Tags: 采样Tags
        # @type Tags: Array
        # @param OperationName: 接口名
        # @type OperationName: String
        # @param OperationType: 0=精确匹配（默认）；1=前缀匹配；2=后缀匹配
        # @type OperationType: Integer

        attr_accessor :InstanceId, :SampleRate, :ServiceName, :SampleName, :Tags, :OperationName, :OperationType

        def initialize(instanceid=nil, samplerate=nil, servicename=nil, samplename=nil, tags=nil, operationname=nil, operationtype=nil)
          @InstanceId = instanceid
          @SampleRate = samplerate
          @ServiceName = servicename
          @SampleName = samplename
          @Tags = tags
          @OperationName = operationname
          @OperationType = operationtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SampleRate = params['SampleRate']
          @ServiceName = params['ServiceName']
          @SampleName = params['SampleName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmkvitem_tmp = APMKVItem.new
              apmkvitem_tmp.deserialize(i)
              @Tags << apmkvitem_tmp
            end
          end
          @OperationName = params['OperationName']
          @OperationType = params['OperationType']
        end
      end

      # CreateApmSampleConfig返回参数结构体
      class CreateApmSampleConfigResponse < TencentCloud::Common::AbstractModel
        # @param ApmSampleConfig: 采样配置参数
        # @type ApmSampleConfig: :class:`Tencentcloud::Apm.v20210622.models.ApmSampleConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmSampleConfig, :RequestId

        def initialize(apmsampleconfig=nil, requestid=nil)
          @ApmSampleConfig = apmsampleconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmSampleConfig'].nil?
            @ApmSampleConfig = ApmSampleConfig.new
            @ApmSampleConfig.deserialize(params['ApmSampleConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateProfileTask请求参数结构体
      class CreateProfileTaskRequest < TencentCloud::Common::AbstractModel
        # @param ServiceName: 应用名称
        # @type ServiceName: String
        # @param InstanceId: APM业务系统ID
        # @type InstanceId: String
        # @param ServiceInstance: 应用实例（在线）
        # @type ServiceInstance: String
        # @param Event: 事件类型（cpu、alloc）
        # @type Event: String
        # @param Duration: 任务持续时长(单位：毫秒)，范围限制在5~180秒
        # @type Duration: Integer
        # @param AllTimes: 执行次数，范围限制在1~100次
        # @type AllTimes: Integer
        # @param StartTime: 开始时间戳，0代表从当前开始(单位：秒)
        # @type StartTime: Integer
        # @param TaskInterval: 任务执行间隔(单位：毫秒)，范围限制在10~600秒，不可小于1.5倍的Duration
        # @type TaskInterval: Integer

        attr_accessor :ServiceName, :InstanceId, :ServiceInstance, :Event, :Duration, :AllTimes, :StartTime, :TaskInterval

        def initialize(servicename=nil, instanceid=nil, serviceinstance=nil, event=nil, duration=nil, alltimes=nil, starttime=nil, taskinterval=nil)
          @ServiceName = servicename
          @InstanceId = instanceid
          @ServiceInstance = serviceinstance
          @Event = event
          @Duration = duration
          @AllTimes = alltimes
          @StartTime = starttime
          @TaskInterval = taskinterval
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @InstanceId = params['InstanceId']
          @ServiceInstance = params['ServiceInstance']
          @Event = params['Event']
          @Duration = params['Duration']
          @AllTimes = params['AllTimes']
          @StartTime = params['StartTime']
          @TaskInterval = params['TaskInterval']
        end
      end

      # CreateProfileTask返回参数结构体
      class CreateProfileTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
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

      # DeleteApmSampleConfig请求参数结构体
      class DeleteApmSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param SampleName: 采样规则名
        # @type SampleName: String

        attr_accessor :InstanceId, :SampleName

        def initialize(instanceid=nil, samplename=nil)
          @InstanceId = instanceid
          @SampleName = samplename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SampleName = params['SampleName']
        end
      end

      # DeleteApmSampleConfig返回参数结构体
      class DeleteApmSampleConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApmAgent请求参数结构体
      class DescribeApmAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param AgentType: 接入方式，现支持 skywalking, ot, ebpf 方式接入上报，不填默认为 ot
        # @type AgentType: String
        # @param NetworkMode: 上报环境，现支持 pl (内网上报), public (外网), inner (自研 VPC )环境上报，不传默认为 public
        # @type NetworkMode: String
        # @param LanguageEnvironment: 语言，现支持 java, golang, php, python, dotNet, nodejs 语言上报，不传默认为 golang
        # @type LanguageEnvironment: String
        # @param ReportMethod: 上报方式，已弃用
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

      # DescribeApmAllVulCount请求参数结构体
      class DescribeApmAllVulCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 秒级时间戳
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeApmAllVulCount返回参数结构体
      class DescribeApmAllVulCountResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityList: 包含漏洞指标以及业务系统个数
        # @type VulnerabilityList: Array
        # @param VulnerabilityCount: 总漏洞个数
        # @type VulnerabilityCount: Integer
        # @param ImportantVulnerabilityCount: 严重漏洞个数
        # @type ImportantVulnerabilityCount: Integer
        # @param CriticalVulnerabilityCount: 高危漏洞个数
        # @type CriticalVulnerabilityCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityList, :VulnerabilityCount, :ImportantVulnerabilityCount, :CriticalVulnerabilityCount, :RequestId

        def initialize(vulnerabilitylist=nil, vulnerabilitycount=nil, importantvulnerabilitycount=nil, criticalvulnerabilitycount=nil, requestid=nil)
          @VulnerabilityList = vulnerabilitylist
          @VulnerabilityCount = vulnerabilitycount
          @ImportantVulnerabilityCount = importantvulnerabilitycount
          @CriticalVulnerabilityCount = criticalvulnerabilitycount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityList'].nil?
            @VulnerabilityList = []
            params['VulnerabilityList'].each do |i|
              apmmetricrecord_tmp = ApmMetricRecord.new
              apmmetricrecord_tmp.deserialize(i)
              @VulnerabilityList << apmmetricrecord_tmp
            end
          end
          @VulnerabilityCount = params['VulnerabilityCount']
          @ImportantVulnerabilityCount = params['ImportantVulnerabilityCount']
          @CriticalVulnerabilityCount = params['CriticalVulnerabilityCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmApplicationConfig请求参数结构体
      class DescribeApmApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String

        attr_accessor :InstanceId, :ServiceName

        def initialize(instanceid=nil, servicename=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
        end
      end

      # DescribeApmApplicationConfig返回参数结构体
      class DescribeApmApplicationConfigResponse < TencentCloud::Common::AbstractModel
        # @param ApmAppConfig: Apm应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmAppConfig: :class:`Tencentcloud::Apm.v20210622.models.ApmAppConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmAppConfig, :RequestId

        def initialize(apmappconfig=nil, requestid=nil)
          @ApmAppConfig = apmappconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmAppConfig'].nil?
            @ApmAppConfig = ApmAppConfig.new
            @ApmAppConfig.deserialize(params['ApmAppConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmAssociation请求参数结构体
      class DescribeApmAssociationRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 关联的产品名，当前只支持Prometheus
        # @type ProductName: String
        # @param InstanceId: 业务系统名
        # @type InstanceId: String

        attr_accessor :ProductName, :InstanceId

        def initialize(productname=nil, instanceid=nil)
          @ProductName = productname
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeApmAssociation返回参数结构体
      class DescribeApmAssociationResponse < TencentCloud::Common::AbstractModel
        # @param ApmAssociation: 关联的产品实例ID
        # @type ApmAssociation: :class:`Tencentcloud::Apm.v20210622.models.ApmAssociation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmAssociation, :RequestId

        def initialize(apmassociation=nil, requestid=nil)
          @ApmAssociation = apmassociation
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmAssociation'].nil?
            @ApmAssociation = ApmAssociation.new
            @ApmAssociation.deserialize(params['ApmAssociation'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmInstances请求参数结构体
      class DescribeApmInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Tags: Tag 列表
        # @type Tags: Array
        # @param InstanceName: 按业务系统名过滤，支持模糊检索
        # @type InstanceName: String
        # @param InstanceId: 按业务系统 ID 过滤，支持模糊检索
        # @type InstanceId: String
        # @param InstanceIds: 按业务系统 ID 过滤
        # @type InstanceIds: Array
        # @param DemoInstanceFlag: 是否查询官方 Demo 业务系统（0=非 Demo 业务系统，1=Demo 业务系统，默认为0）
        # @type DemoInstanceFlag: Integer
        # @param AllRegionsFlag: 是否查询全地域业务系统（0=不查询全地域，1=查询全地域，默认为0）
        # @type AllRegionsFlag: Integer

        attr_accessor :Tags, :InstanceName, :InstanceId, :InstanceIds, :DemoInstanceFlag, :AllRegionsFlag

        def initialize(tags=nil, instancename=nil, instanceid=nil, instanceids=nil, demoinstanceflag=nil, allregionsflag=nil)
          @Tags = tags
          @InstanceName = instancename
          @InstanceId = instanceid
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
          @InstanceId = params['InstanceId']
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

      # DescribeApmPrometheusRule请求参数结构体
      class DescribeApmPrometheusRuleRequest < TencentCloud::Common::AbstractModel
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

      # DescribeApmPrometheusRule返回参数结构体
      class DescribeApmPrometheusRuleResponse < TencentCloud::Common::AbstractModel
        # @param ApmPrometheusRules: 指标匹配规则
        # @type ApmPrometheusRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmPrometheusRules, :RequestId

        def initialize(apmprometheusrules=nil, requestid=nil)
          @ApmPrometheusRules = apmprometheusrules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmPrometheusRules'].nil?
            @ApmPrometheusRules = []
            params['ApmPrometheusRules'].each do |i|
              apmprometheusrules_tmp = ApmPrometheusRules.new
              apmprometheusrules_tmp.deserialize(i)
              @ApmPrometheusRules << apmprometheusrules_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmSQLInjectionDetail请求参数结构体
      class DescribeApmSQLInjectionDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param StartTime: 秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 秒级时间戳
        # @type EndTime: Integer
        # @param OrderBy: 排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param Filters: 查询过滤条件
        # @type Filters: Array
        # @param GroupBy: 聚合维度
        # @type GroupBy: Array
        # @param Metrics: 指标列表
        # @type Metrics: Array

        attr_accessor :InstanceId, :Limit, :Offset, :StartTime, :EndTime, :OrderBy, :Filters, :GroupBy, :Metrics

        def initialize(instanceid=nil, limit=nil, offset=nil, starttime=nil, endtime=nil, orderby=nil, filters=nil, groupby=nil, metrics=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @OrderBy = orderby
          @Filters = filters
          @GroupBy = groupby
          @Metrics = metrics
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @GroupBy = params['GroupBy']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              querymetricitem_tmp = QueryMetricItem.new
              querymetricitem_tmp.deserialize(i)
              @Metrics << querymetricitem_tmp
            end
          end
        end
      end

      # DescribeApmSQLInjectionDetail返回参数结构体
      class DescribeApmSQLInjectionDetailResponse < TencentCloud::Common::AbstractModel
        # @param Tags: SQL相关维度信息
        # @type Tags: Array
        # @param Records: 链路相关信息
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tags, :Records, :RequestId

        def initialize(tags=nil, records=nil, requestid=nil)
          @Tags = tags
          @Records = records
          @RequestId = requestid
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

      # DescribeApmSampleConfig请求参数结构体
      class DescribeApmSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param SampleName: 采样规则名
        # @type SampleName: String

        attr_accessor :InstanceId, :SampleName

        def initialize(instanceid=nil, samplename=nil)
          @InstanceId = instanceid
          @SampleName = samplename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SampleName = params['SampleName']
        end
      end

      # DescribeApmSampleConfig返回参数结构体
      class DescribeApmSampleConfigResponse < TencentCloud::Common::AbstractModel
        # @param ApmSampleConfigs: 采样配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmSampleConfigs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmSampleConfigs, :RequestId

        def initialize(apmsampleconfigs=nil, requestid=nil)
          @ApmSampleConfigs = apmsampleconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmSampleConfigs'].nil?
            @ApmSampleConfigs = []
            params['ApmSampleConfigs'].each do |i|
              apmsampleconfig_tmp = ApmSampleConfig.new
              apmsampleconfig_tmp.deserialize(i)
              @ApmSampleConfigs << apmsampleconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmServiceMetric请求参数结构体
      class DescribeApmServiceMetricRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param ServiceID: 应用ID
        # @type ServiceID: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param OrderBy: 排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param Demo: 是否demo模式
        # @type Demo: Boolean
        # @param ServiceStatus: 应用状态筛选，可枚举的值为：health、warning、error。如果选中多个状态用逗号隔开，例如："warning,error"
        # @type ServiceStatus: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Page: 页码
        # @type Page: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :InstanceId, :ServiceName, :ServiceID, :StartTime, :EndTime, :OrderBy, :Demo, :ServiceStatus, :Tags, :Page, :PageSize, :Filters

        def initialize(instanceid=nil, servicename=nil, serviceid=nil, starttime=nil, endtime=nil, orderby=nil, demo=nil, servicestatus=nil, tags=nil, page=nil, pagesize=nil, filters=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
          @ServiceID = serviceid
          @StartTime = starttime
          @EndTime = endtime
          @OrderBy = orderby
          @Demo = demo
          @ServiceStatus = servicestatus
          @Tags = tags
          @Page = page
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
          @ServiceID = params['ServiceID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @Demo = params['Demo']
          @ServiceStatus = params['ServiceStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @Page = params['Page']
          @PageSize = params['PageSize']
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

      # DescribeApmServiceMetric返回参数结构体
      class DescribeApmServiceMetricResponse < TencentCloud::Common::AbstractModel
        # @param ServiceMetricList: 应用指标列表
        # @type ServiceMetricList: Array
        # @param TotalCount: 符合筛选条件的应用数
        # @type TotalCount: Integer
        # @param WarningErrorCount: 警示异常应用数
        # @type WarningErrorCount: Integer
        # @param ApplicationCount: 应用总数
        # @type ApplicationCount: Integer
        # @param Page: 页码
        # @type Page: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param ErrorCount: 异常应用数
        # @type ErrorCount: Integer
        # @param WarningCount: 警示应用数
        # @type WarningCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceMetricList, :TotalCount, :WarningErrorCount, :ApplicationCount, :Page, :PageSize, :ErrorCount, :WarningCount, :RequestId

        def initialize(servicemetriclist=nil, totalcount=nil, warningerrorcount=nil, applicationcount=nil, page=nil, pagesize=nil, errorcount=nil, warningcount=nil, requestid=nil)
          @ServiceMetricList = servicemetriclist
          @TotalCount = totalcount
          @WarningErrorCount = warningerrorcount
          @ApplicationCount = applicationcount
          @Page = page
          @PageSize = pagesize
          @ErrorCount = errorcount
          @WarningCount = warningcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceMetricList'].nil?
            @ServiceMetricList = []
            params['ServiceMetricList'].each do |i|
              apmservicemetric_tmp = ApmServiceMetric.new
              apmservicemetric_tmp.deserialize(i)
              @ServiceMetricList << apmservicemetric_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @WarningErrorCount = params['WarningErrorCount']
          @ApplicationCount = params['ApplicationCount']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @ErrorCount = params['ErrorCount']
          @WarningCount = params['WarningCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmVulnerabilityCount请求参数结构体
      class DescribeApmVulnerabilityCountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: APM业务系统ID
        # @type InstanceId: String
        # @param ServiceName: APM应用名称
        # @type ServiceName: String
        # @param StartTime: 秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 秒级时间戳
        # @type EndTime: Integer
        # @param Type: 查询的数据类型，攻击检测为“attack_detect”
        # @type Type: String

        attr_accessor :InstanceId, :ServiceName, :StartTime, :EndTime, :Type

        def initialize(instanceid=nil, servicename=nil, starttime=nil, endtime=nil, type=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
        end
      end

      # DescribeApmVulnerabilityCount返回参数结构体
      class DescribeApmVulnerabilityCountResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityList: 包含漏洞指标以及业务系统个数
        # @type VulnerabilityList: Array
        # @param VulnerabilityCount: 总漏洞个数
        # @type VulnerabilityCount: Integer
        # @param ImportantVulnerabilityCount: 严重漏洞个数
        # @type ImportantVulnerabilityCount: Integer
        # @param CriticalVulnerabilityCount: 高危漏洞个数
        # @type CriticalVulnerabilityCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityList, :VulnerabilityCount, :ImportantVulnerabilityCount, :CriticalVulnerabilityCount, :RequestId

        def initialize(vulnerabilitylist=nil, vulnerabilitycount=nil, importantvulnerabilitycount=nil, criticalvulnerabilitycount=nil, requestid=nil)
          @VulnerabilityList = vulnerabilitylist
          @VulnerabilityCount = vulnerabilitycount
          @ImportantVulnerabilityCount = importantvulnerabilitycount
          @CriticalVulnerabilityCount = criticalvulnerabilitycount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityList'].nil?
            @VulnerabilityList = []
            params['VulnerabilityList'].each do |i|
              apmmetricrecord_tmp = ApmMetricRecord.new
              apmmetricrecord_tmp.deserialize(i)
              @VulnerabilityList << apmmetricrecord_tmp
            end
          end
          @VulnerabilityCount = params['VulnerabilityCount']
          @ImportantVulnerabilityCount = params['ImportantVulnerabilityCount']
          @CriticalVulnerabilityCount = params['CriticalVulnerabilityCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApmVulnerabilityDetail请求参数结构体
      class DescribeApmVulnerabilityDetailRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 秒级时间戳
        # @type EndTime: Integer
        # @param InstanceId: APM业务系统ID
        # @type InstanceId: String
        # @param Filters: 条件过滤，必填service.name, instrumentation.name, version, vul.id
        # @type Filters: Array

        attr_accessor :StartTime, :EndTime, :InstanceId, :Filters

        def initialize(starttime=nil, endtime=nil, instanceid=nil, filters=nil)
          @StartTime = starttime
          @EndTime = endtime
          @InstanceId = instanceid
          @Filters = filters
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceId = params['InstanceId']
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

      # DescribeApmVulnerabilityDetail返回参数结构体
      class DescribeApmVulnerabilityDetailResponse < TencentCloud::Common::AbstractModel
        # @param Tags: 漏洞详情
        # @type Tags: Array
        # @param ServiceInstanceList: 漏洞相关业务系统列表
        # @type ServiceInstanceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tags, :ServiceInstanceList, :RequestId

        def initialize(tags=nil, serviceinstancelist=nil, requestid=nil)
          @Tags = tags
          @ServiceInstanceList = serviceinstancelist
          @RequestId = requestid
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
          unless params['ServiceInstanceList'].nil?
            @ServiceInstanceList = []
            params['ServiceInstanceList'].each do |i|
              apmvulnerabilityservicedetail_tmp = ApmVulnerabilityServiceDetail.new
              apmvulnerabilityservicedetail_tmp.deserialize(i)
              @ServiceInstanceList << apmvulnerabilityservicedetail_tmp
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
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param ViewName: 视图名称，不可自定义输入。[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type ViewName: String
        # @param Filters: 要过滤的维度信息，不同视图有对应的指标维度，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type Filters: Array
        # @param GroupBy: 聚合维度，不同视图有对应的指标维度，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # @type GroupBy: Array
        # @param StartTime: 起始时间的时间戳，支持查询30天内的指标数据。（单位：秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间的时间戳，支持查询30天内的指标数据。（单位：秒）
        # @type EndTime: Integer
        # @param Period: 是否按固定时间跨度聚合，填入1及大于1的值按1处理，不填按0处理。
        # - 填入0，则计算开始时间到截止时间的指标数据。
        # - 填入1，则会按照开始时间到截止时间的时间跨度选择聚合粒度：
        #  - 时间跨度 (0,12) 小时，则按一分钟粒度聚合。
        #  - 时间跨度 [12,48] 小时，则按五分钟粒度聚合。
        #  - 时间跨度 (48, +∞) 小时，则按一小时粒度聚合。
        # @type Period: Integer
        # @param OrderBy: 对查询指标进行排序：
        # Key 填写云 API 指标名称，[详情请见。](https://cloud.tencent.com/document/product/248/101681)
        # Value 填写排序方式：
        # - asc：对查询指标进行升序排序
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

      # DescribeGeneralOTSpanList请求参数结构体
      class DescribeGeneralOTSpanListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param StartTime: Span 查询开始时间戳（单位：秒）
        # @type StartTime: Integer
        # @param EndTime: Span 查询结束时间戳（单位：秒）
        # @type EndTime: Integer
        # @param Filters: 通用过滤参数
        # @type Filters: Array
        # @param OrderBy: 排序
        # 现支持的 Key 有：

        # - startTime(开始时间)
        # - endTime(结束时间)
        # - duration(响应时间)

        # 现支持的 Value 有：

        # - desc(降序排序)
        # - asc(升序排序)
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param BusinessName: 业务自身服务名，控制台用户请填写taw
        # @type BusinessName: String
        # @param Limit: 单页项目个数，默认为10000，合法取值范围为0～10000
        # @type Limit: Integer
        # @param Offset: 分页
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Filters, :OrderBy, :BusinessName, :Limit, :Offset

        def initialize(instanceid=nil, starttime=nil, endtime=nil, filters=nil, orderby=nil, businessname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @OrderBy = orderby
          @BusinessName = businessname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @BusinessName = params['BusinessName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeGeneralOTSpanList返回参数结构体
      class DescribeGeneralOTSpanListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Spans: Spans字段中包含了链路数据的全部内容，由于数据经过了压缩，需要对结果进行如下三步转换，以还原始的文本。
        # 1. 将Spans字段中的文本进行 Base64 解码，得到经过压缩后字节数组。
        # 2. 使用 gzip 对压缩后的字节数组进行解压，得到压缩前的字节数组。
        # 3. 使用 UTF-8 字符集，将压缩前的字节数组转换为文本。
        # @type Spans: String
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
          @Spans = params['Spans']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralSpanList请求参数结构体
      class DescribeGeneralSpanListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param StartTime: Span 查询开始时间戳（单位：秒）
        # @type StartTime: Integer
        # @param EndTime: Span 查询结束时间戳（单位：秒）
        # @type EndTime: Integer
        # @param Filters: 通用过滤参数
        # @type Filters: Array
        # @param OrderBy: 排序
        # 现支持的 Key 有：

        # - startTime(开始时间)
        # - endTime(结束时间)
        # - duration(响应时间)

        # 现支持的 Value 有：

        # - desc(降序排序)
        # - asc(升序排序)
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param BusinessName: 业务自身服务名，控制台用户请填写taw
        # @type BusinessName: String
        # @param Limit: 单页项目个数，默认为1000，合法取值范围为1～1000
        # @type Limit: Integer
        # @param Offset: 分页
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Filters, :OrderBy, :BusinessName, :Limit, :Offset

        def initialize(instanceid=nil, starttime=nil, endtime=nil, filters=nil, orderby=nil, businessname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @OrderBy = orderby
          @BusinessName = businessname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @BusinessName = params['BusinessName']
          @Limit = params['Limit']
          @Offset = params['Offset']
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
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Metrics: 指标列表
        # @type Metrics: Array
        # @param StartTime: 开始时间（单位为秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间（单位为秒）
        # @type EndTime: Integer
        # @param GroupBy: 聚合维度
        # @type GroupBy: Array
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrFilters: Or 过滤条件
        # @type OrFilters: Array
        # @param OrderBy: 排序
        # 现支持的 Key 有：

        # - startTime(开始时间)
        # - endTime(结束时间)
        # - duration(响应时间)

        # 现支持的 Value 有：

        # - desc(降序排序)
        # - asc(升序排序)
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param BusinessName: 业务名称，控制台用户请填写taw。
        # @type BusinessName: String
        # @param Type: 特殊处理查询结果
        # @type Type: String
        # @param Limit: 每页大小，默认为1000，合法取值范围为0~1000
        # @type Limit: Integer
        # @param Offset: 分页起始点
        # @type Offset: Integer
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 页长
        # @type PageSize: Integer

        attr_accessor :InstanceId, :Metrics, :StartTime, :EndTime, :GroupBy, :Filters, :OrFilters, :OrderBy, :BusinessName, :Type, :Limit, :Offset, :PageIndex, :PageSize

        def initialize(instanceid=nil, metrics=nil, starttime=nil, endtime=nil, groupby=nil, filters=nil, orfilters=nil, orderby=nil, businessname=nil, type=nil, limit=nil, offset=nil, pageindex=nil, pagesize=nil)
          @InstanceId = instanceid
          @Metrics = metrics
          @StartTime = starttime
          @EndTime = endtime
          @GroupBy = groupby
          @Filters = filters
          @OrFilters = orfilters
          @OrderBy = orderby
          @BusinessName = businessname
          @Type = type
          @Limit = limit
          @Offset = offset
          @PageIndex = pageindex
          @PageSize = pagesize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              querymetricitem_tmp = QueryMetricItem.new
              querymetricitem_tmp.deserialize(i)
              @Metrics << querymetricitem_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @GroupBy = params['GroupBy']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrFilters'].nil?
            @OrFilters = []
            params['OrFilters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @OrFilters << filter_tmp
            end
          end
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @BusinessName = params['BusinessName']
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
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

      # DescribeOPRAllVulCount请求参数结构体
      class DescribeOPRAllVulCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 秒级时间戳
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeOPRAllVulCount返回参数结构体
      class DescribeOPRAllVulCountResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityList: 包含漏洞指标以及业务系统个数
        # @type VulnerabilityList: Array
        # @param VulnerabilityCount: 总漏洞个数
        # @type VulnerabilityCount: Integer
        # @param ImportantVulnerabilityCount: 严重漏洞个数
        # @type ImportantVulnerabilityCount: Integer
        # @param CriticalVulnerabilityCount: 高危漏洞个数
        # @type CriticalVulnerabilityCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityList, :VulnerabilityCount, :ImportantVulnerabilityCount, :CriticalVulnerabilityCount, :RequestId

        def initialize(vulnerabilitylist=nil, vulnerabilitycount=nil, importantvulnerabilitycount=nil, criticalvulnerabilitycount=nil, requestid=nil)
          @VulnerabilityList = vulnerabilitylist
          @VulnerabilityCount = vulnerabilitycount
          @ImportantVulnerabilityCount = importantvulnerabilitycount
          @CriticalVulnerabilityCount = criticalvulnerabilitycount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityList'].nil?
            @VulnerabilityList = []
            params['VulnerabilityList'].each do |i|
              apmmetricrecord_tmp = ApmMetricRecord.new
              apmmetricrecord_tmp.deserialize(i)
              @VulnerabilityList << apmmetricrecord_tmp
            end
          end
          @VulnerabilityCount = params['VulnerabilityCount']
          @ImportantVulnerabilityCount = params['ImportantVulnerabilityCount']
          @CriticalVulnerabilityCount = params['CriticalVulnerabilityCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceOverview请求参数结构体
      class DescribeServiceOverviewRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Metrics: 指标列表
        # @type Metrics: Array
        # @param StartTime: 开始时间（单位：秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间（单位：秒）
        # @type EndTime: Integer
        # @param GroupBy: 聚合维度
        # @type GroupBy: Array
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderBy: 排序方式
        # Value 填写：
        # - asc：对查询指标进行升序排序
        # - desc：对查询指标进行降序排序
        # @type OrderBy: :class:`Tencentcloud::Apm.v20210622.models.OrderBy`
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Offset: 分页起始点
        # @type Offset: Integer

        attr_accessor :InstanceId, :Metrics, :StartTime, :EndTime, :GroupBy, :Filters, :OrderBy, :Limit, :Offset

        def initialize(instanceid=nil, metrics=nil, starttime=nil, endtime=nil, groupby=nil, filters=nil, orderby=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Metrics = metrics
          @StartTime = starttime
          @EndTime = endtime
          @GroupBy = groupby
          @Filters = filters
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              querymetricitem_tmp = QueryMetricItem.new
              querymetricitem_tmp.deserialize(i)
              @Metrics << querymetricitem_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @GroupBy = params['GroupBy']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderBy'].nil?
            @OrderBy = OrderBy.new
            @OrderBy.deserialize(params['OrderBy'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
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
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param TagKey: 维度名
        # @type TagKey: String
        # @param StartTime: 开始时间（单位为秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间（单位为秒）
        # @type EndTime: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrFilters: Or 过滤条件
        # @type OrFilters: Array
        # @param Type: 使用类型
        # @type Type: String

        attr_accessor :InstanceId, :TagKey, :StartTime, :EndTime, :Filters, :OrFilters, :Type

        def initialize(instanceid=nil, tagkey=nil, starttime=nil, endtime=nil, filters=nil, orfilters=nil, type=nil)
          @InstanceId = instanceid
          @TagKey = tagkey
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @OrFilters = orfilters
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TagKey = params['TagKey']
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

      # DescribeTopologyNew请求参数结构体
      class DescribeTopologyNewRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间
        # @type EndTime: Integer
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param UpLevel: 上游层级
        # @type UpLevel: Integer
        # @param ServiceInstance: 应用实例信息
        # @type ServiceInstance: String
        # @param DownLevel: 下游层级
        # @type DownLevel: Integer
        # @param View: 视角
        # @type View: String
        # @param Filters: 过滤器
        # @type Filters: Array
        # @param Topic: 表示Topic（MQ拓扑图用）
        # @type Topic: String
        # @param Selectors: 视图筛选列表
        # @type Selectors: :class:`Tencentcloud::Apm.v20210622.models.Selectors`
        # @param Id: 视图ID
        # @type Id: String
        # @param TraceID: TraceID
        # @type TraceID: String
        # @param IsSlowTopFive: 查询top5慢响应节点
        # @type IsSlowTopFive: Boolean
        # @param GetResource: 是否获取资源层信息
        # @type GetResource: Boolean
        # @param Tags: 根据应用标签过滤
        # @type Tags: Array
        # @param Hidden: 不显示的节点类型
        # @type Hidden: :class:`Tencentcloud::Apm.v20210622.models.Selectors`

        attr_accessor :InstanceId, :StartTime, :EndTime, :ServiceName, :UpLevel, :ServiceInstance, :DownLevel, :View, :Filters, :Topic, :Selectors, :Id, :TraceID, :IsSlowTopFive, :GetResource, :Tags, :Hidden

        def initialize(instanceid=nil, starttime=nil, endtime=nil, servicename=nil, uplevel=nil, serviceinstance=nil, downlevel=nil, view=nil, filters=nil, topic=nil, selectors=nil, id=nil, traceid=nil, isslowtopfive=nil, getresource=nil, tags=nil, hidden=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @ServiceName = servicename
          @UpLevel = uplevel
          @ServiceInstance = serviceinstance
          @DownLevel = downlevel
          @View = view
          @Filters = filters
          @Topic = topic
          @Selectors = selectors
          @Id = id
          @TraceID = traceid
          @IsSlowTopFive = isslowtopfive
          @GetResource = getresource
          @Tags = tags
          @Hidden = hidden
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ServiceName = params['ServiceName']
          @UpLevel = params['UpLevel']
          @ServiceInstance = params['ServiceInstance']
          @DownLevel = params['DownLevel']
          @View = params['View']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Topic = params['Topic']
          unless params['Selectors'].nil?
            @Selectors = Selectors.new
            @Selectors.deserialize(params['Selectors'])
          end
          @Id = params['Id']
          @TraceID = params['TraceID']
          @IsSlowTopFive = params['IsSlowTopFive']
          @GetResource = params['GetResource']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          unless params['Hidden'].nil?
            @Hidden = Selectors.new
            @Hidden.deserialize(params['Hidden'])
          end
        end
      end

      # DescribeTopologyNew返回参数结构体
      class DescribeTopologyNewResponse < TencentCloud::Common::AbstractModel
        # @param Nodes: 节点集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param Edges: 边集合
        # @type Edges: Array
        # @param TopologyModifyFlag: 拓扑图是否有修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopologyModifyFlag: Integer
        # @param Selectors: 节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Selectors: :class:`Tencentcloud::Apm.v20210622.models.SelectorView`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Nodes, :Edges, :TopologyModifyFlag, :Selectors, :RequestId

        def initialize(nodes=nil, edges=nil, topologymodifyflag=nil, selectors=nil, requestid=nil)
          @Nodes = nodes
          @Edges = edges
          @TopologyModifyFlag = topologymodifyflag
          @Selectors = selectors
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              topologynode_tmp = TopologyNode.new
              topologynode_tmp.deserialize(i)
              @Nodes << topologynode_tmp
            end
          end
          unless params['Edges'].nil?
            @Edges = []
            params['Edges'].each do |i|
              topologyedgenew_tmp = TopologyEdgeNew.new
              topologyedgenew_tmp.deserialize(i)
              @Edges << topologyedgenew_tmp
            end
          end
          @TopologyModifyFlag = params['TopologyModifyFlag']
          unless params['Selectors'].nil?
            @Selectors = SelectorView.new
            @Selectors.deserialize(params['Selectors'])
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
        # @param MetricUnit: 指标数据单位
        # @type MetricUnit: String

        attr_accessor :MetricName, :MetricNameCN, :TimeSerial, :DataSerial, :Tags, :MetricUnit

        def initialize(metricname=nil, metricnamecn=nil, timeserial=nil, dataserial=nil, tags=nil, metricunit=nil)
          @MetricName = metricname
          @MetricNameCN = metricnamecn
          @TimeSerial = timeserial
          @DataSerial = dataserial
          @Tags = tags
          @MetricUnit = metricunit
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
          @MetricUnit = params['MetricUnit']
        end
      end

      # ModifyApmApplicationConfig请求参数结构体
      class ModifyApmApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param ServiceName: 应用名
        # @type ServiceName: String
        # @param UrlConvergenceSwitch: URL收敛开关,0 关 | 1 开
        # @type UrlConvergenceSwitch: Integer
        # @param UrlConvergenceThreshold: URL收敛阈值
        # @type UrlConvergenceThreshold: Integer
        # @param ExceptionFilter: 异常过滤正则规则，逗号分隔
        # @type ExceptionFilter: String
        # @param UrlConvergence: URL收敛正则规则，逗号分隔
        # @type UrlConvergence: String
        # @param ErrorCodeFilter: 错误码过滤，逗号分隔
        # @type ErrorCodeFilter: String
        # @param UrlExclude: URL排除正则规则，逗号分隔
        # @type UrlExclude: String
        # @param IsRelatedLog: 日志开关 0 关 1 开
        # @type IsRelatedLog: Integer
        # @param LogRegion: 日志地域
        # @type LogRegion: String
        # @param LogTopicID: 日志主题ID
        # @type LogTopicID: String
        # @param LogSet: CLS 日志集 | ES 集群ID
        # @type LogSet: String
        # @param LogSource: 日志来源 CLS | ES
        # @type LogSource: String
        # @param IgnoreOperationName: 需过滤的接口
        # @type IgnoreOperationName: String
        # @param EnableSnapshot: 是否开启线程剖析
        # @type EnableSnapshot: Boolean
        # @param SnapshotTimeout: 线程剖析超时阈值
        # @type SnapshotTimeout: Integer
        # @param AgentEnable: 是否开启agent
        # @type AgentEnable: Boolean
        # @param TraceSquash: 是否开启链路压缩
        # @type TraceSquash: Boolean
        # @param EventEnable: 是否开启应用诊断的开关
        # @type EventEnable: Boolean
        # @param InstrumentList: 组件列表
        # @type InstrumentList: Array
        # @param AgentOperationConfigView: 探针接口相关配置
        # @type AgentOperationConfigView: :class:`Tencentcloud::Apm.v20210622.models.AgentOperationConfigView`
        # @param EnableLogConfig: 是否开启应用日志配置
        # @type EnableLogConfig: Boolean
        # @param EnableDashboardConfig: 应用是否开启dashboard配置： false 关（与业务系统保持一致）/true 开（应用级配置）
        # @type EnableDashboardConfig: Boolean
        # @param IsRelatedDashboard: 是否关联dashboard： 0 关 1 开
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: dashboard ID
        # @type DashboardTopicID: String
        # @param LogIndexType: CLS索引类型(0=全文索引，1=键值索引)
        # @type LogIndexType: Integer
        # @param LogTraceIdKey: traceId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogTraceIdKey: String
        # @param EnableSecurityConfig: 是否开启应用安全配置
        # @type EnableSecurityConfig: Boolean
        # @param IsSqlInjectionAnalysis: 是否开启SQL注入分析
        # @type IsSqlInjectionAnalysis: Integer
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测
        # @type IsInstrumentationVulnerabilityScan: Integer
        # @param IsRemoteCommandExecutionAnalysis: 是否开启远程命令检测
        # @type IsRemoteCommandExecutionAnalysis: Integer
        # @param IsMemoryHijackingAnalysis: 是否开启内存马检测
        # @type IsMemoryHijackingAnalysis: Integer
        # @param IsDeleteAnyFileAnalysis: 是否开启删除任意文件检测（0-关闭，1-开启）
        # @type IsDeleteAnyFileAnalysis: Integer
        # @param IsReadAnyFileAnalysis: 是否开启读取任意文件检测（0-关闭，1-开启）
        # @type IsReadAnyFileAnalysis: Integer
        # @param IsUploadAnyFileAnalysis: 是否开启上传任意文件检测（0-关闭，1-开启）
        # @type IsUploadAnyFileAnalysis: Integer
        # @param IsIncludeAnyFileAnalysis: 是否开启包含任意文件检测（0-关闭，1-开启）
        # @type IsIncludeAnyFileAnalysis: Integer
        # @param IsDirectoryTraversalAnalysis: 是否开启目录遍历检测（0-关闭，1-开启）
        # @type IsDirectoryTraversalAnalysis: Integer
        # @param IsTemplateEngineInjectionAnalysis: 是否开启模板引擎注入检测（0-关闭，1-开启）
        # @type IsTemplateEngineInjectionAnalysis: Integer
        # @param IsScriptEngineInjectionAnalysis: 是否开启脚本引擎注入检测（0-关闭，1-开启）
        # @type IsScriptEngineInjectionAnalysis: Integer
        # @param IsExpressionInjectionAnalysis: 是否开启表达式注入检测（0-关闭，1-开启）
        # @type IsExpressionInjectionAnalysis: Integer
        # @param IsJNDIInjectionAnalysis: 是否开启JNDI注入检测（0-关闭，1-开启）
        # @type IsJNDIInjectionAnalysis: Integer
        # @param IsJNIInjectionAnalysis: 是否开启JNI注入检测（0-关闭，1-开启）
        # @type IsJNIInjectionAnalysis: Integer
        # @param IsWebshellBackdoorAnalysis: 是否开启Webshell后门检测（0-关闭，1-开启）
        # @type IsWebshellBackdoorAnalysis: Integer
        # @param IsDeserializationAnalysis: 是否开启反序列化检测（0-关闭，1-开启）
        # @type IsDeserializationAnalysis: Integer
        # @param UrlAutoConvergenceEnable: 接口自动收敛开关,0 关 | 1 开
        # @type UrlAutoConvergenceEnable: Boolean
        # @param UrlLongSegmentThreshold: URL长分段收敛阈值
        # @type UrlLongSegmentThreshold: Integer
        # @param UrlNumberSegmentThreshold: URL数字分段收敛阈值
        # @type UrlNumberSegmentThreshold: Integer
        # @param DisableMemoryUsed: 探针熔断内存阈值
        # @type DisableMemoryUsed: Integer
        # @param DisableCpuUsed: 探针熔断CPU阈值
        # @type DisableCpuUsed: Integer
        # @param DbStatementParametersEnabled: 是否开启SQL参数获取
        # @type DbStatementParametersEnabled: Boolean
        # @param SlowSQLThresholds: 慢SQL阈值
        # @type SlowSQLThresholds: Array
        # @param EnableDesensitizationRule: 是否开启脱敏规则
        # @type EnableDesensitizationRule: Integer
        # @param DesensitizationRule: 脱敏规则
        # @type DesensitizationRule: String
        # @param LogSpanIdKey: spanId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogSpanIdKey: String
        # @param AutoProfilingConfig: 自动性能剖析任务配置
        # @type AutoProfilingConfig: :class:`Tencentcloud::Apm.v20210622.models.AutoProfilingConfig`

        attr_accessor :InstanceId, :ServiceName, :UrlConvergenceSwitch, :UrlConvergenceThreshold, :ExceptionFilter, :UrlConvergence, :ErrorCodeFilter, :UrlExclude, :IsRelatedLog, :LogRegion, :LogTopicID, :LogSet, :LogSource, :IgnoreOperationName, :EnableSnapshot, :SnapshotTimeout, :AgentEnable, :TraceSquash, :EventEnable, :InstrumentList, :AgentOperationConfigView, :EnableLogConfig, :EnableDashboardConfig, :IsRelatedDashboard, :DashboardTopicID, :LogIndexType, :LogTraceIdKey, :EnableSecurityConfig, :IsSqlInjectionAnalysis, :IsInstrumentationVulnerabilityScan, :IsRemoteCommandExecutionAnalysis, :IsMemoryHijackingAnalysis, :IsDeleteAnyFileAnalysis, :IsReadAnyFileAnalysis, :IsUploadAnyFileAnalysis, :IsIncludeAnyFileAnalysis, :IsDirectoryTraversalAnalysis, :IsTemplateEngineInjectionAnalysis, :IsScriptEngineInjectionAnalysis, :IsExpressionInjectionAnalysis, :IsJNDIInjectionAnalysis, :IsJNIInjectionAnalysis, :IsWebshellBackdoorAnalysis, :IsDeserializationAnalysis, :UrlAutoConvergenceEnable, :UrlLongSegmentThreshold, :UrlNumberSegmentThreshold, :DisableMemoryUsed, :DisableCpuUsed, :DbStatementParametersEnabled, :SlowSQLThresholds, :EnableDesensitizationRule, :DesensitizationRule, :LogSpanIdKey, :AutoProfilingConfig

        def initialize(instanceid=nil, servicename=nil, urlconvergenceswitch=nil, urlconvergencethreshold=nil, exceptionfilter=nil, urlconvergence=nil, errorcodefilter=nil, urlexclude=nil, isrelatedlog=nil, logregion=nil, logtopicid=nil, logset=nil, logsource=nil, ignoreoperationname=nil, enablesnapshot=nil, snapshottimeout=nil, agentenable=nil, tracesquash=nil, eventenable=nil, instrumentlist=nil, agentoperationconfigview=nil, enablelogconfig=nil, enabledashboardconfig=nil, isrelateddashboard=nil, dashboardtopicid=nil, logindextype=nil, logtraceidkey=nil, enablesecurityconfig=nil, issqlinjectionanalysis=nil, isinstrumentationvulnerabilityscan=nil, isremotecommandexecutionanalysis=nil, ismemoryhijackinganalysis=nil, isdeleteanyfileanalysis=nil, isreadanyfileanalysis=nil, isuploadanyfileanalysis=nil, isincludeanyfileanalysis=nil, isdirectorytraversalanalysis=nil, istemplateengineinjectionanalysis=nil, isscriptengineinjectionanalysis=nil, isexpressioninjectionanalysis=nil, isjndiinjectionanalysis=nil, isjniinjectionanalysis=nil, iswebshellbackdooranalysis=nil, isdeserializationanalysis=nil, urlautoconvergenceenable=nil, urllongsegmentthreshold=nil, urlnumbersegmentthreshold=nil, disablememoryused=nil, disablecpuused=nil, dbstatementparametersenabled=nil, slowsqlthresholds=nil, enabledesensitizationrule=nil, desensitizationrule=nil, logspanidkey=nil, autoprofilingconfig=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
          @UrlConvergenceSwitch = urlconvergenceswitch
          @UrlConvergenceThreshold = urlconvergencethreshold
          @ExceptionFilter = exceptionfilter
          @UrlConvergence = urlconvergence
          @ErrorCodeFilter = errorcodefilter
          @UrlExclude = urlexclude
          @IsRelatedLog = isrelatedlog
          @LogRegion = logregion
          @LogTopicID = logtopicid
          @LogSet = logset
          @LogSource = logsource
          @IgnoreOperationName = ignoreoperationname
          @EnableSnapshot = enablesnapshot
          @SnapshotTimeout = snapshottimeout
          @AgentEnable = agentenable
          @TraceSquash = tracesquash
          @EventEnable = eventenable
          @InstrumentList = instrumentlist
          @AgentOperationConfigView = agentoperationconfigview
          @EnableLogConfig = enablelogconfig
          @EnableDashboardConfig = enabledashboardconfig
          @IsRelatedDashboard = isrelateddashboard
          @DashboardTopicID = dashboardtopicid
          @LogIndexType = logindextype
          @LogTraceIdKey = logtraceidkey
          @EnableSecurityConfig = enablesecurityconfig
          @IsSqlInjectionAnalysis = issqlinjectionanalysis
          @IsInstrumentationVulnerabilityScan = isinstrumentationvulnerabilityscan
          @IsRemoteCommandExecutionAnalysis = isremotecommandexecutionanalysis
          @IsMemoryHijackingAnalysis = ismemoryhijackinganalysis
          @IsDeleteAnyFileAnalysis = isdeleteanyfileanalysis
          @IsReadAnyFileAnalysis = isreadanyfileanalysis
          @IsUploadAnyFileAnalysis = isuploadanyfileanalysis
          @IsIncludeAnyFileAnalysis = isincludeanyfileanalysis
          @IsDirectoryTraversalAnalysis = isdirectorytraversalanalysis
          @IsTemplateEngineInjectionAnalysis = istemplateengineinjectionanalysis
          @IsScriptEngineInjectionAnalysis = isscriptengineinjectionanalysis
          @IsExpressionInjectionAnalysis = isexpressioninjectionanalysis
          @IsJNDIInjectionAnalysis = isjndiinjectionanalysis
          @IsJNIInjectionAnalysis = isjniinjectionanalysis
          @IsWebshellBackdoorAnalysis = iswebshellbackdooranalysis
          @IsDeserializationAnalysis = isdeserializationanalysis
          @UrlAutoConvergenceEnable = urlautoconvergenceenable
          @UrlLongSegmentThreshold = urllongsegmentthreshold
          @UrlNumberSegmentThreshold = urlnumbersegmentthreshold
          @DisableMemoryUsed = disablememoryused
          @DisableCpuUsed = disablecpuused
          @DbStatementParametersEnabled = dbstatementparametersenabled
          @SlowSQLThresholds = slowsqlthresholds
          @EnableDesensitizationRule = enabledesensitizationrule
          @DesensitizationRule = desensitizationrule
          @LogSpanIdKey = logspanidkey
          @AutoProfilingConfig = autoprofilingconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
          @UrlConvergenceSwitch = params['UrlConvergenceSwitch']
          @UrlConvergenceThreshold = params['UrlConvergenceThreshold']
          @ExceptionFilter = params['ExceptionFilter']
          @UrlConvergence = params['UrlConvergence']
          @ErrorCodeFilter = params['ErrorCodeFilter']
          @UrlExclude = params['UrlExclude']
          @IsRelatedLog = params['IsRelatedLog']
          @LogRegion = params['LogRegion']
          @LogTopicID = params['LogTopicID']
          @LogSet = params['LogSet']
          @LogSource = params['LogSource']
          @IgnoreOperationName = params['IgnoreOperationName']
          @EnableSnapshot = params['EnableSnapshot']
          @SnapshotTimeout = params['SnapshotTimeout']
          @AgentEnable = params['AgentEnable']
          @TraceSquash = params['TraceSquash']
          @EventEnable = params['EventEnable']
          unless params['InstrumentList'].nil?
            @InstrumentList = []
            params['InstrumentList'].each do |i|
              instrument_tmp = Instrument.new
              instrument_tmp.deserialize(i)
              @InstrumentList << instrument_tmp
            end
          end
          unless params['AgentOperationConfigView'].nil?
            @AgentOperationConfigView = AgentOperationConfigView.new
            @AgentOperationConfigView.deserialize(params['AgentOperationConfigView'])
          end
          @EnableLogConfig = params['EnableLogConfig']
          @EnableDashboardConfig = params['EnableDashboardConfig']
          @IsRelatedDashboard = params['IsRelatedDashboard']
          @DashboardTopicID = params['DashboardTopicID']
          @LogIndexType = params['LogIndexType']
          @LogTraceIdKey = params['LogTraceIdKey']
          @EnableSecurityConfig = params['EnableSecurityConfig']
          @IsSqlInjectionAnalysis = params['IsSqlInjectionAnalysis']
          @IsInstrumentationVulnerabilityScan = params['IsInstrumentationVulnerabilityScan']
          @IsRemoteCommandExecutionAnalysis = params['IsRemoteCommandExecutionAnalysis']
          @IsMemoryHijackingAnalysis = params['IsMemoryHijackingAnalysis']
          @IsDeleteAnyFileAnalysis = params['IsDeleteAnyFileAnalysis']
          @IsReadAnyFileAnalysis = params['IsReadAnyFileAnalysis']
          @IsUploadAnyFileAnalysis = params['IsUploadAnyFileAnalysis']
          @IsIncludeAnyFileAnalysis = params['IsIncludeAnyFileAnalysis']
          @IsDirectoryTraversalAnalysis = params['IsDirectoryTraversalAnalysis']
          @IsTemplateEngineInjectionAnalysis = params['IsTemplateEngineInjectionAnalysis']
          @IsScriptEngineInjectionAnalysis = params['IsScriptEngineInjectionAnalysis']
          @IsExpressionInjectionAnalysis = params['IsExpressionInjectionAnalysis']
          @IsJNDIInjectionAnalysis = params['IsJNDIInjectionAnalysis']
          @IsJNIInjectionAnalysis = params['IsJNIInjectionAnalysis']
          @IsWebshellBackdoorAnalysis = params['IsWebshellBackdoorAnalysis']
          @IsDeserializationAnalysis = params['IsDeserializationAnalysis']
          @UrlAutoConvergenceEnable = params['UrlAutoConvergenceEnable']
          @UrlLongSegmentThreshold = params['UrlLongSegmentThreshold']
          @UrlNumberSegmentThreshold = params['UrlNumberSegmentThreshold']
          @DisableMemoryUsed = params['DisableMemoryUsed']
          @DisableCpuUsed = params['DisableCpuUsed']
          @DbStatementParametersEnabled = params['DbStatementParametersEnabled']
          unless params['SlowSQLThresholds'].nil?
            @SlowSQLThresholds = []
            params['SlowSQLThresholds'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @SlowSQLThresholds << apmtag_tmp
            end
          end
          @EnableDesensitizationRule = params['EnableDesensitizationRule']
          @DesensitizationRule = params['DesensitizationRule']
          @LogSpanIdKey = params['LogSpanIdKey']
          unless params['AutoProfilingConfig'].nil?
            @AutoProfilingConfig = AutoProfilingConfig.new
            @AutoProfilingConfig.deserialize(params['AutoProfilingConfig'])
          end
        end
      end

      # ModifyApmApplicationConfig返回参数结构体
      class ModifyApmApplicationConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApmAssociation请求参数结构体
      class ModifyApmAssociationRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 关联的产品名，当前只支持Prometheus、CKafka
        # @type ProductName: String
        # @param Status: 关联关系的状态：// 关联关系状态：1（启用）、2（不启用）
        # @type Status: Integer
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param PeerId: 关联的产品实例ID
        # @type PeerId: String
        # @param Topic: CKafka消息主题
        # @type Topic: String

        attr_accessor :ProductName, :Status, :InstanceId, :PeerId, :Topic

        def initialize(productname=nil, status=nil, instanceid=nil, peerid=nil, topic=nil)
          @ProductName = productname
          @Status = status
          @InstanceId = instanceid
          @PeerId = peerid
          @Topic = topic
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @PeerId = params['PeerId']
          @Topic = params['Topic']
        end
      end

      # ModifyApmAssociation返回参数结构体
      class ModifyApmAssociationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApmInstance请求参数结构体
      class ModifyApmInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统 ID
        # @type InstanceId: String
        # @param Name: 业务系统名
        # @type Name: String
        # @param Tags: Tag 列表
        # @type Tags: Array
        # @param Description: 业务系统描述
        # @type Description: String
        # @param TraceDuration: Trace 数据保存时长（单位：天）
        # @type TraceDuration: Integer
        # @param OpenBilling: 是否开启计费
        # @type OpenBilling: Boolean
        # @param SpanDailyCounters: 业务系统上报额度
        # @type SpanDailyCounters: Integer
        # @param ErrRateThreshold: 错误率警示线，当应用的平均错误率超出该阈值时，系统会给出异常提示。
        # @type ErrRateThreshold: Integer
        # @param SampleRate: 采样率（单位：%）
        # @type SampleRate: Integer
        # @param ErrorSample: 是否开启错误采样（0=关, 1=开）
        # @type ErrorSample: Integer
        # @param SlowRequestSavedThreshold: 采样慢调用保存阈值（单位：ms）
        # @type SlowRequestSavedThreshold: Integer
        # @param IsRelatedLog: 是否开启日志功能（0=关, 1=开）
        # @type IsRelatedLog: Integer
        # @param LogRegion: 日志地域，开启日志功能后才会生效
        # @type LogRegion: String
        # @param LogTopicID: CLS 日志主题 ID，开启日志功能后才会生效
        # @type LogTopicID: String
        # @param LogSet: 日志集，开启日志功能后才会生效
        # @type LogSet: String
        # @param LogSource: 日志源，开启日志功能后才会生效
        # @type LogSource: String
        # @param CustomShowTags: 用户自定义展示标签列表
        # @type CustomShowTags: Array
        # @param PayMode: 修改计费模式（1为预付费，0为按量付费）
        # @type PayMode: Integer
        # @param ResponseDurationWarningThreshold: 响应时间警示线
        # @type ResponseDurationWarningThreshold: Integer
        # @param Free: 是否免费（0=付费版；1=TSF 受限免费版；2=免费版），默认0
        # @type Free: Integer
        # @param IsRelatedDashboard: 是否关联 Dashboard（0=关,1=开）
        # @type IsRelatedDashboard: Integer
        # @param DashboardTopicID: 关联的 Dashboard ID，开启关联 Dashboard 后才会生效
        # @type DashboardTopicID: String
        # @param IsSqlInjectionAnalysis: 是否开启 SQL 注入检测（0=关,1=开）
        # @type IsSqlInjectionAnalysis: Integer
        # @param IsInstrumentationVulnerabilityScan: 是否开启组件漏洞检测（0=关,1=开）
        # @type IsInstrumentationVulnerabilityScan: Integer
        # @param IsRemoteCommandExecutionAnalysis: 是否开启远程命令攻击检测
        # @type IsRemoteCommandExecutionAnalysis: Integer
        # @param IsMemoryHijackingAnalysis: 是否开启内存马检测
        # @type IsMemoryHijackingAnalysis: Integer
        # @param LogIndexType: CLS索引类型(0=全文索引，1=键值索引)
        # @type LogIndexType: Integer
        # @param LogTraceIdKey: traceId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogTraceIdKey: String
        # @param IsDeleteAnyFileAnalysis: 是否开启删除任意文件检测（0-关闭，1-开启）
        # @type IsDeleteAnyFileAnalysis: Integer
        # @param IsReadAnyFileAnalysis: 是否开启读取任意文件检测（0-关闭，1-开启）
        # @type IsReadAnyFileAnalysis: Integer
        # @param IsUploadAnyFileAnalysis: 是否开启上传任意文件检测（0-关闭，1-开启）
        # @type IsUploadAnyFileAnalysis: Integer
        # @param IsIncludeAnyFileAnalysis: 是否开启包含任意文件检测（0-关闭，1-开启）
        # @type IsIncludeAnyFileAnalysis: Integer
        # @param IsDirectoryTraversalAnalysis: 是否开启目录遍历检测（0-关闭，1-开启）
        # @type IsDirectoryTraversalAnalysis: Integer
        # @param IsTemplateEngineInjectionAnalysis: 是否开启模板引擎注入检测（0-关闭，1-开启）
        # @type IsTemplateEngineInjectionAnalysis: Integer
        # @param IsScriptEngineInjectionAnalysis: 是否开启脚本引擎注入检测（0-关闭，1-开启）
        # @type IsScriptEngineInjectionAnalysis: Integer
        # @param IsExpressionInjectionAnalysis: 是否开启表达式注入检测（0-关闭，1-开启）
        # @type IsExpressionInjectionAnalysis: Integer
        # @param IsJNDIInjectionAnalysis: 是否开启JNDI注入检测（0-关闭，1-开启）
        # @type IsJNDIInjectionAnalysis: Integer
        # @param IsJNIInjectionAnalysis: 是否开启JNI注入检测（0-关闭，1-开启）
        # @type IsJNIInjectionAnalysis: Integer
        # @param IsWebshellBackdoorAnalysis: 是否开启Webshell后门检测（0-关闭，1-开启）
        # @type IsWebshellBackdoorAnalysis: Integer
        # @param IsDeserializationAnalysis: 是否开启反序列化检测（0-关闭，1-开启）
        # @type IsDeserializationAnalysis: Integer
        # @param UrlLongSegmentThreshold: URL长分段收敛阈值
        # @type UrlLongSegmentThreshold: Integer
        # @param UrlNumberSegmentThreshold: URL数字分段收敛阈值
        # @type UrlNumberSegmentThreshold: Integer
        # @param LogSpanIdKey: spanId的索引key: 当CLS索引类型为键值索引时生效
        # @type LogSpanIdKey: String

        attr_accessor :InstanceId, :Name, :Tags, :Description, :TraceDuration, :OpenBilling, :SpanDailyCounters, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :IsRelatedLog, :LogRegion, :LogTopicID, :LogSet, :LogSource, :CustomShowTags, :PayMode, :ResponseDurationWarningThreshold, :Free, :IsRelatedDashboard, :DashboardTopicID, :IsSqlInjectionAnalysis, :IsInstrumentationVulnerabilityScan, :IsRemoteCommandExecutionAnalysis, :IsMemoryHijackingAnalysis, :LogIndexType, :LogTraceIdKey, :IsDeleteAnyFileAnalysis, :IsReadAnyFileAnalysis, :IsUploadAnyFileAnalysis, :IsIncludeAnyFileAnalysis, :IsDirectoryTraversalAnalysis, :IsTemplateEngineInjectionAnalysis, :IsScriptEngineInjectionAnalysis, :IsExpressionInjectionAnalysis, :IsJNDIInjectionAnalysis, :IsJNIInjectionAnalysis, :IsWebshellBackdoorAnalysis, :IsDeserializationAnalysis, :UrlLongSegmentThreshold, :UrlNumberSegmentThreshold, :LogSpanIdKey

        def initialize(instanceid=nil, name=nil, tags=nil, description=nil, traceduration=nil, openbilling=nil, spandailycounters=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, isrelatedlog=nil, logregion=nil, logtopicid=nil, logset=nil, logsource=nil, customshowtags=nil, paymode=nil, responsedurationwarningthreshold=nil, free=nil, isrelateddashboard=nil, dashboardtopicid=nil, issqlinjectionanalysis=nil, isinstrumentationvulnerabilityscan=nil, isremotecommandexecutionanalysis=nil, ismemoryhijackinganalysis=nil, logindextype=nil, logtraceidkey=nil, isdeleteanyfileanalysis=nil, isreadanyfileanalysis=nil, isuploadanyfileanalysis=nil, isincludeanyfileanalysis=nil, isdirectorytraversalanalysis=nil, istemplateengineinjectionanalysis=nil, isscriptengineinjectionanalysis=nil, isexpressioninjectionanalysis=nil, isjndiinjectionanalysis=nil, isjniinjectionanalysis=nil, iswebshellbackdooranalysis=nil, isdeserializationanalysis=nil, urllongsegmentthreshold=nil, urlnumbersegmentthreshold=nil, logspanidkey=nil)
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
          @IsRemoteCommandExecutionAnalysis = isremotecommandexecutionanalysis
          @IsMemoryHijackingAnalysis = ismemoryhijackinganalysis
          @LogIndexType = logindextype
          @LogTraceIdKey = logtraceidkey
          @IsDeleteAnyFileAnalysis = isdeleteanyfileanalysis
          @IsReadAnyFileAnalysis = isreadanyfileanalysis
          @IsUploadAnyFileAnalysis = isuploadanyfileanalysis
          @IsIncludeAnyFileAnalysis = isincludeanyfileanalysis
          @IsDirectoryTraversalAnalysis = isdirectorytraversalanalysis
          @IsTemplateEngineInjectionAnalysis = istemplateengineinjectionanalysis
          @IsScriptEngineInjectionAnalysis = isscriptengineinjectionanalysis
          @IsExpressionInjectionAnalysis = isexpressioninjectionanalysis
          @IsJNDIInjectionAnalysis = isjndiinjectionanalysis
          @IsJNIInjectionAnalysis = isjniinjectionanalysis
          @IsWebshellBackdoorAnalysis = iswebshellbackdooranalysis
          @IsDeserializationAnalysis = isdeserializationanalysis
          @UrlLongSegmentThreshold = urllongsegmentthreshold
          @UrlNumberSegmentThreshold = urlnumbersegmentthreshold
          @LogSpanIdKey = logspanidkey
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
          @IsRemoteCommandExecutionAnalysis = params['IsRemoteCommandExecutionAnalysis']
          @IsMemoryHijackingAnalysis = params['IsMemoryHijackingAnalysis']
          @LogIndexType = params['LogIndexType']
          @LogTraceIdKey = params['LogTraceIdKey']
          @IsDeleteAnyFileAnalysis = params['IsDeleteAnyFileAnalysis']
          @IsReadAnyFileAnalysis = params['IsReadAnyFileAnalysis']
          @IsUploadAnyFileAnalysis = params['IsUploadAnyFileAnalysis']
          @IsIncludeAnyFileAnalysis = params['IsIncludeAnyFileAnalysis']
          @IsDirectoryTraversalAnalysis = params['IsDirectoryTraversalAnalysis']
          @IsTemplateEngineInjectionAnalysis = params['IsTemplateEngineInjectionAnalysis']
          @IsScriptEngineInjectionAnalysis = params['IsScriptEngineInjectionAnalysis']
          @IsExpressionInjectionAnalysis = params['IsExpressionInjectionAnalysis']
          @IsJNDIInjectionAnalysis = params['IsJNDIInjectionAnalysis']
          @IsJNIInjectionAnalysis = params['IsJNIInjectionAnalysis']
          @IsWebshellBackdoorAnalysis = params['IsWebshellBackdoorAnalysis']
          @IsDeserializationAnalysis = params['IsDeserializationAnalysis']
          @UrlLongSegmentThreshold = params['UrlLongSegmentThreshold']
          @UrlNumberSegmentThreshold = params['UrlNumberSegmentThreshold']
          @LogSpanIdKey = params['LogSpanIdKey']
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

      # ModifyApmPrometheusRule请求参数结构体
      class ModifyApmPrometheusRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param Name: 所要修改的规则名
        # @type Name: String
        # @param Status: 规则状态：1(启用)、2（不启用）、3（删除）
        # @type Status: Integer
        # @param ServiceName: 规则生效的应用。生效于全部应用就传空（这个如果不修改也要传旧的规则）
        # @type ServiceName: String
        # @param MetricMatchType: 匹配类型：0精准匹配，1前缀匹配，2后缀匹配（这个如果不修改也要传旧的规则）
        # @type MetricMatchType: Integer
        # @param MetricNameRule: 客户定义的命中指标名规则。
        # @type MetricNameRule: String

        attr_accessor :Id, :InstanceId, :Name, :Status, :ServiceName, :MetricMatchType, :MetricNameRule

        def initialize(id=nil, instanceid=nil, name=nil, status=nil, servicename=nil, metricmatchtype=nil, metricnamerule=nil)
          @Id = id
          @InstanceId = instanceid
          @Name = name
          @Status = status
          @ServiceName = servicename
          @MetricMatchType = metricmatchtype
          @MetricNameRule = metricnamerule
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Status = params['Status']
          @ServiceName = params['ServiceName']
          @MetricMatchType = params['MetricMatchType']
          @MetricNameRule = params['MetricNameRule']
        end
      end

      # ModifyApmPrometheusRule返回参数结构体
      class ModifyApmPrometheusRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApmSampleConfig请求参数结构体
      class ModifyApmSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 业务系统ID
        # @type InstanceId: String
        # @param SampleName: 采样规则名
        # @type SampleName: String
        # @param SampleRate: 采样率
        # @type SampleRate: Integer
        # @param ServiceName: 应用名，生效于所有应用则填空
        # @type ServiceName: String
        # @param OperationName: 接口名
        # @type OperationName: String
        # @param Tags: 采样tag
        # @type Tags: Array
        # @param Status: 采样开关 0关 1开 2删除
        # @type Status: Integer
        # @param Id: 配置Id
        # @type Id: Integer
        # @param OperationType: 0=精确匹配（默认）；1=前缀匹配；2=后缀匹配
        # @type OperationType: Integer

        attr_accessor :InstanceId, :SampleName, :SampleRate, :ServiceName, :OperationName, :Tags, :Status, :Id, :OperationType

        def initialize(instanceid=nil, samplename=nil, samplerate=nil, servicename=nil, operationname=nil, tags=nil, status=nil, id=nil, operationtype=nil)
          @InstanceId = instanceid
          @SampleName = samplename
          @SampleRate = samplerate
          @ServiceName = servicename
          @OperationName = operationname
          @Tags = tags
          @Status = status
          @Id = id
          @OperationType = operationtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SampleName = params['SampleName']
          @SampleRate = params['SampleRate']
          @ServiceName = params['ServiceName']
          @OperationName = params['OperationName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmkvitem_tmp = APMKVItem.new
              apmkvitem_tmp.deserialize(i)
              @Tags << apmkvitem_tmp
            end
          end
          @Status = params['Status']
          @Id = params['Id']
          @OperationType = params['OperationType']
        end
      end

      # ModifyApmSampleConfig返回参数结构体
      class ModifyApmSampleConfigResponse < TencentCloud::Common::AbstractModel
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

      # 排序字段
      class OrderBy < TencentCloud::Common::AbstractModel
        # @param Key: 需要排序的字段，现支持 startTIme, endTime, duration
        # @type Key: String
        # @param Value: asc 顺序排序 / desc 倒序排序
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

      # 节点位置信息
      class Position < TencentCloud::Common::AbstractModel
        # @param X: 节点位置横坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: 节点位置纵坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float

        attr_accessor :X, :Y

        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 查询
      class QueryMetricItem < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Compares: 同比，现支持 CompareByYesterday (与昨天相比)和CompareByLastWeek (与上周相比)
        # @type Compares: Array
        # @param Compare: 同比，已弃用，不建议使用
        # @type Compare: String

        attr_accessor :MetricName, :Compares, :Compare

        def initialize(metricname=nil, compares=nil, compare=nil)
          @MetricName = metricname
          @Compares = compares
          @Compare = compare
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Compares = params['Compares']
          @Compare = params['Compare']
        end
      end

      # 资源层信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param Type: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Array
        # @param TKEMeta: tke资源层信息
        # @type TKEMeta: Array
        # @param CVMMeta: cvm资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMMeta: Array

        attr_accessor :Type, :TKEMeta, :CVMMeta

        def initialize(type=nil, tkemeta=nil, cvmmeta=nil)
          @Type = type
          @TKEMeta = tkemeta
          @CVMMeta = cvmmeta
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TKEMeta'].nil?
            @TKEMeta = []
            params['TKEMeta'].each do |i|
              tkemeta_tmp = TkeMeta.new
              tkemeta_tmp.deserialize(i)
              @TKEMeta << tkemeta_tmp
            end
          end
          unless params['CVMMeta'].nil?
            @CVMMeta = []
            params['CVMMeta'].each do |i|
              cvmmeta_tmp = CVMMeta.new
              cvmmeta_tmp.deserialize(i)
              @CVMMeta << cvmmeta_tmp
            end
          end
        end
      end

      # 包含了节点的组件数量和健康度数量
      class SelectorView < TencentCloud::Common::AbstractModel
        # @param Component: 组件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: :class:`Tencentcloud::Apm.v20210622.models.ComponentTopologyView`

        attr_accessor :Component

        def initialize(component=nil)
          @Component = component
        end

        def deserialize(params)
          unless params['Component'].nil?
            @Component = ComponentTopologyView.new
            @Component.deserialize(params['Component'])
          end
        end
      end

      # 视图方案勾选情况
      class Selectors < TencentCloud::Common::AbstractModel
        # @param Component: 组件勾选情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: Array

        attr_accessor :Component

        def initialize(component=nil)
          @Component = component
        end

        def deserialize(params)
          @Component = params['Component']
        end
      end

      # 应用详细信息
      class ServiceDetail < TencentCloud::Common::AbstractModel
        # @param ServiceID: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceID: String
        # @param InstanceKey: 业务系统ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String
        # @param AppID: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param CreateUIN: 主账号uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUIN: String
        # @param ServiceName: 应用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ServiceDescription: 应用描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDescription: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceName: 业务系统名称
        # @type InstanceName: String

        attr_accessor :ServiceID, :InstanceKey, :AppID, :CreateUIN, :ServiceName, :ServiceDescription, :Region, :Tags, :InstanceName

        def initialize(serviceid=nil, instancekey=nil, appid=nil, createuin=nil, servicename=nil, servicedescription=nil, region=nil, tags=nil, instancename=nil)
          @ServiceID = serviceid
          @InstanceKey = instancekey
          @AppID = appid
          @CreateUIN = createuin
          @ServiceName = servicename
          @ServiceDescription = servicedescription
          @Region = region
          @Tags = tags
          @InstanceName = instancename
        end

        def deserialize(params)
          @ServiceID = params['ServiceID']
          @InstanceKey = params['InstanceKey']
          @AppID = params['AppID']
          @CreateUIN = params['CreateUIN']
          @ServiceName = params['ServiceName']
          @ServiceDescription = params['ServiceDescription']
          @Region = params['Region']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @InstanceName = params['InstanceName']
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

      # tke资源元数据
      class TkeMeta < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param PodName: pod name
        # @type PodName: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Deployment: 工作负载
        # @type Deployment: String
        # @param PodIP: pod ip
        # @type PodIP: String
        # @param NodeIP: node ip
        # @type NodeIP: String

        attr_accessor :Region, :ClusterID, :PodName, :Namespace, :Deployment, :PodIP, :NodeIP

        def initialize(region=nil, clusterid=nil, podname=nil, namespace=nil, deployment=nil, podip=nil, nodeip=nil)
          @Region = region
          @ClusterID = clusterid
          @PodName = podname
          @Namespace = namespace
          @Deployment = deployment
          @PodIP = podip
          @NodeIP = nodeip
        end

        def deserialize(params)
          @Region = params['Region']
          @ClusterID = params['ClusterID']
          @PodName = params['PodName']
          @Namespace = params['Namespace']
          @Deployment = params['Deployment']
          @PodIP = params['PodIP']
          @NodeIP = params['NodeIP']
        end
      end

      # 拓扑图边定义
      class TopologyEdgeNew < TencentCloud::Common::AbstractModel
        # @param Source: 源节点
        # @type Source: String
        # @param Id: 边ID
        # @type Id: String
        # @param Weight: 边权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Float
        # @param Target: 目标节点
        # @type Target: String
        # @param Duration: 响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Float
        # @param ErrRate: 错误率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrRate: Float
        # @param Qps: 吞吐量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Float
        # @param Type: 边类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Color: 边颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String
        # @param SqlRequestCount: Sql调用数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlRequestCount: Float
        # @param SqlErrorRequestCount: Sql调用错误数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlErrorRequestCount: Float
        # @param SourceComp: 边上源节点类型 应用/MQ/DB
        # @type SourceComp: String
        # @param TargetComp: 边上目标节点类型 应用/MQ/DB
        # @type TargetComp: String

        attr_accessor :Source, :Id, :Weight, :Target, :Duration, :ErrRate, :Qps, :Type, :Color, :SqlRequestCount, :SqlErrorRequestCount, :SourceComp, :TargetComp

        def initialize(source=nil, id=nil, weight=nil, target=nil, duration=nil, errrate=nil, qps=nil, type=nil, color=nil, sqlrequestcount=nil, sqlerrorrequestcount=nil, sourcecomp=nil, targetcomp=nil)
          @Source = source
          @Id = id
          @Weight = weight
          @Target = target
          @Duration = duration
          @ErrRate = errrate
          @Qps = qps
          @Type = type
          @Color = color
          @SqlRequestCount = sqlrequestcount
          @SqlErrorRequestCount = sqlerrorrequestcount
          @SourceComp = sourcecomp
          @TargetComp = targetcomp
        end

        def deserialize(params)
          @Source = params['Source']
          @Id = params['Id']
          @Weight = params['Weight']
          @Target = params['Target']
          @Duration = params['Duration']
          @ErrRate = params['ErrRate']
          @Qps = params['Qps']
          @Type = params['Type']
          @Color = params['Color']
          @SqlRequestCount = params['SqlRequestCount']
          @SqlErrorRequestCount = params['SqlErrorRequestCount']
          @SourceComp = params['SourceComp']
          @TargetComp = params['TargetComp']
        end
      end

      # 拓扑图边节点
      class TopologyNode < TencentCloud::Common::AbstractModel
        # @param ErrRate: 错误率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrRate: Float
        # @param Kind: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Name: 节点名
        # @type Name: String
        # @param Weight: 节点权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Float
        # @param Color: 节点颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String
        # @param Duration: 响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Float
        # @param Qps: 吞吐量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Float
        # @param Type: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Id: 节点ID
        # @type Id: String
        # @param Size: 节点大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: String
        # @param IsModule: 节点是否为组件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsModule: Boolean
        # @param Position: 节点位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: :class:`Tencentcloud::Apm.v20210622.models.Position`
        # @param Tags: 节点标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CanDrillDown: 节点是否可以下钻
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDrillDown: Boolean
        # @param Resource: 资源层信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Apm.v20210622.models.Resource`
        # @param NodeView: 拓扑节点视图名字
        # @type NodeView: String
        # @param ConsumerDuration: MQ 消费者视角的响应时间 ms
        # @type ConsumerDuration: Float
        # @param ConsumerErrRate: MQ 消费者视角的错误率 %
        # @type ConsumerErrRate: Float
        # @param ConsumerQps: MQ 消费者视角的吞吐量
        # @type ConsumerQps: Float
        # @param ServiceId: 应用 ID
        # @type ServiceId: String

        attr_accessor :ErrRate, :Kind, :Name, :Weight, :Color, :Duration, :Qps, :Type, :Id, :Size, :IsModule, :Position, :Tags, :CanDrillDown, :Resource, :NodeView, :ConsumerDuration, :ConsumerErrRate, :ConsumerQps, :ServiceId

        def initialize(errrate=nil, kind=nil, name=nil, weight=nil, color=nil, duration=nil, qps=nil, type=nil, id=nil, size=nil, ismodule=nil, position=nil, tags=nil, candrilldown=nil, resource=nil, nodeview=nil, consumerduration=nil, consumererrrate=nil, consumerqps=nil, serviceid=nil)
          @ErrRate = errrate
          @Kind = kind
          @Name = name
          @Weight = weight
          @Color = color
          @Duration = duration
          @Qps = qps
          @Type = type
          @Id = id
          @Size = size
          @IsModule = ismodule
          @Position = position
          @Tags = tags
          @CanDrillDown = candrilldown
          @Resource = resource
          @NodeView = nodeview
          @ConsumerDuration = consumerduration
          @ConsumerErrRate = consumererrrate
          @ConsumerQps = consumerqps
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ErrRate = params['ErrRate']
          @Kind = params['Kind']
          @Name = params['Name']
          @Weight = params['Weight']
          @Color = params['Color']
          @Duration = params['Duration']
          @Qps = params['Qps']
          @Type = params['Type']
          @Id = params['Id']
          @Size = params['Size']
          @IsModule = params['IsModule']
          unless params['Position'].nil?
            @Position = Position.new
            @Position.deserialize(params['Position'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apmtag_tmp = ApmTag.new
              apmtag_tmp.deserialize(i)
              @Tags << apmtag_tmp
            end
          end
          @CanDrillDown = params['CanDrillDown']
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          @NodeView = params['NodeView']
          @ConsumerDuration = params['ConsumerDuration']
          @ConsumerErrRate = params['ConsumerErrRate']
          @ConsumerQps = params['ConsumerQps']
          @ServiceId = params['ServiceId']
        end
      end

    end
  end
end

