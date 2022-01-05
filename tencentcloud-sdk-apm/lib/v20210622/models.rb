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
        # @param ServiceCount: 该实例已上报的服务数
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

        attr_accessor :AmountOfUsedStorage, :Name, :Tags, :InstanceId, :CreateUin, :ServiceCount, :CountOfReportSpanPerDay, :AppId, :TraceDuration, :Description, :Status, :Region, :SpanDailyCounters, :BillingInstance, :ErrRateThreshold, :SampleRate, :ErrorSample, :SlowRequestSavedThreshold, :LogRegion, :LogSource, :IsRelatedLog, :LogTopicID
        
        def initialize(amountofusedstorage=nil, name=nil, tags=nil, instanceid=nil, createuin=nil, servicecount=nil, countofreportspanperday=nil, appid=nil, traceduration=nil, description=nil, status=nil, region=nil, spandailycounters=nil, billinginstance=nil, errratethreshold=nil, samplerate=nil, errorsample=nil, slowrequestsavedthreshold=nil, logregion=nil, logsource=nil, isrelatedlog=nil, logtopicid=nil)
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

        attr_accessor :InstanceId, :AgentType, :NetworkMode, :LanguageEnvironment
        
        def initialize(instanceid=nil, agenttype=nil, networkmode=nil, languageenvironment=nil)
          @InstanceId = instanceid
          @AgentType = agenttype
          @NetworkMode = networkmode
          @LanguageEnvironment = languageenvironment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentType = params['AgentType']
          @NetworkMode = params['NetworkMode']
          @LanguageEnvironment = params['LanguageEnvironment']
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

        attr_accessor :Tags, :InstanceName, :InstanceIds
        
        def initialize(tags=nil, instancename=nil, instanceids=nil)
          @Tags = tags
          @InstanceName = instancename
          @InstanceIds = instanceids
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

    end
  end
end

