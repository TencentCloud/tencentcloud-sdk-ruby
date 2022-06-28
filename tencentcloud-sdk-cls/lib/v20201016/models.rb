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
  module Cls
    module V20201016
      # 告警策略描述
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param Name: 告警策略名称。
        # @type Name: String
        # @param AlarmTargets: 监控对象列表。
        # @type AlarmTargets: Array
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param Condition: 触发条件。
        # @type Condition: String
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期。单位是min。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知模板列表。
        # @type AlarmNoticeIds: Array
        # @param Status: 开启状态。
        # @type Status: Boolean
        # @param AlarmId: 告警策略ID。
        # @type AlarmId: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间。
        # @type UpdateTime: String
        # @param MessageTemplate: 自定义通知模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTemplate: String
        # @param CallBack: 自定义回调模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Analysis: Array

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status, :AlarmId, :CreateTime, :UpdateTime, :MessageTemplate, :CallBack, :Analysis
        
        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil, alarmid=nil, createtime=nil, updatetime=nil, messagetemplate=nil, callback=nil, analysis=nil)
          @Name = name
          @AlarmTargets = alarmtargets
          @MonitorTime = monitortime
          @Condition = condition
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @Status = status
          @AlarmId = alarmid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MessageTemplate = messagetemplate
          @CallBack = callback
          @Analysis = analysis
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['AlarmTargets'].nil?
            @AlarmTargets = []
            params['AlarmTargets'].each do |i|
              alarmtargetinfo_tmp = AlarmTargetInfo.new
              alarmtargetinfo_tmp.deserialize(i)
              @AlarmTargets << alarmtargetinfo_tmp
            end
          end
          unless params['MonitorTime'].nil?
            @MonitorTime = MonitorTime.new
            @MonitorTime.deserialize(params['MonitorTime'])
          end
          @Condition = params['Condition']
          @TriggerCount = params['TriggerCount']
          @AlarmPeriod = params['AlarmPeriod']
          @AlarmNoticeIds = params['AlarmNoticeIds']
          @Status = params['Status']
          @AlarmId = params['AlarmId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MessageTemplate = params['MessageTemplate']
          unless params['CallBack'].nil?
            @CallBack = CallBackInfo.new
            @CallBack.deserialize(params['CallBack'])
          end
          unless params['Analysis'].nil?
            @Analysis = []
            params['Analysis'].each do |i|
              analysisdimensional_tmp = AnalysisDimensional.new
              analysisdimensional_tmp.deserialize(i)
              @Analysis << analysisdimensional_tmp
            end
          end
        end
      end

      # 告警通知模板类型
      class AlarmNotice < TencentCloud::Common::AbstractModel
        # @param Name: 告警通知模板名称。
        # @type Name: String
        # @param Type: 告警模板的类型。可选值：
        # <br><li> Trigger - 告警触发
        # <br><li> Recovery - 告警恢复
        # <br><li> All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 告警通知模板接收者信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警通知模板回调信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebCallbacks: Array
        # @param AlarmNoticeId: 告警通知模板ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmNoticeId: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Name, :Type, :NoticeReceivers, :WebCallbacks, :AlarmNoticeId, :CreateTime, :UpdateTime
        
        def initialize(name=nil, type=nil, noticereceivers=nil, webcallbacks=nil, alarmnoticeid=nil, createtime=nil, updatetime=nil)
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @AlarmNoticeId = alarmnoticeid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeReceivers'].nil?
            @NoticeReceivers = []
            params['NoticeReceivers'].each do |i|
              noticereceiver_tmp = NoticeReceiver.new
              noticereceiver_tmp.deserialize(i)
              @NoticeReceivers << noticereceiver_tmp
            end
          end
          unless params['WebCallbacks'].nil?
            @WebCallbacks = []
            params['WebCallbacks'].each do |i|
              webcallback_tmp = WebCallback.new
              webcallback_tmp.deserialize(i)
              @WebCallbacks << webcallback_tmp
            end
          end
          @AlarmNoticeId = params['AlarmNoticeId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 告警对象
      class AlarmTarget < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID。
        # @type TopicId: String
        # @param Query: 查询语句。
        # @type Query: String
        # @param Number: 告警对象序号；从1开始递增。
        # @type Number: Integer
        # @param StartTimeOffset: 查询范围起始时间相对于告警执行时间的偏移，单位为分钟，取值为非正，最大值为0，最小值为-1440。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对于告警执行时间的偏移，单位为分钟，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
        # @type EndTimeOffset: Integer
        # @param LogsetId: 日志集ID。
        # @type LogsetId: String

        attr_accessor :TopicId, :Query, :Number, :StartTimeOffset, :EndTimeOffset, :LogsetId
        
        def initialize(topicid=nil, query=nil, number=nil, starttimeoffset=nil, endtimeoffset=nil, logsetid=nil)
          @TopicId = topicid
          @Query = query
          @Number = number
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @LogsetId = logsetid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Query = params['Query']
          @Number = params['Number']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @LogsetId = params['LogsetId']
        end
      end

      # 告警对象
      class AlarmTargetInfo < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID。
        # @type LogsetId: String
        # @param LogsetName: 日志集名称。
        # @type LogsetName: String
        # @param TopicId: 日志主题ID。
        # @type TopicId: String
        # @param TopicName: 日志主题名称。
        # @type TopicName: String
        # @param Query: 查询语句。
        # @type Query: String
        # @param Number: 告警对象序号。
        # @type Number: Integer
        # @param StartTimeOffset: 查询范围起始时间相对于告警执行时间的偏移，单位为分钟，取值为非正，最大值为0，最小值为-1440。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对于告警执行时间的偏移，单位为分钟，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
        # @type EndTimeOffset: Integer

        attr_accessor :LogsetId, :LogsetName, :TopicId, :TopicName, :Query, :Number, :StartTimeOffset, :EndTimeOffset
        
        def initialize(logsetid=nil, logsetname=nil, topicid=nil, topicname=nil, query=nil, number=nil, starttimeoffset=nil, endtimeoffset=nil)
          @LogsetId = logsetid
          @LogsetName = logsetname
          @TopicId = topicid
          @TopicName = topicname
          @Query = query
          @Number = number
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Query = params['Query']
          @Number = params['Number']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 多维分析的分析维度
      class AnalysisDimensional < TencentCloud::Common::AbstractModel
        # @param Name: 分析名称
        # @type Name: String
        # @param Type: 分析类型：query，field
        # @type Type: String
        # @param Content: 分析内容
        # @type Content: String

        attr_accessor :Name, :Type, :Content
        
        def initialize(name=nil, type=nil, content=nil)
          @Name = name
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # ApplyConfigToMachineGroup请求参数结构体
      class ApplyConfigToMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集配置ID
        # @type ConfigId: String
        # @param GroupId: 机器组ID
        # @type GroupId: String

        attr_accessor :ConfigId, :GroupId
        
        def initialize(configid=nil, groupid=nil)
          @ConfigId = configid
          @GroupId = groupid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @GroupId = params['GroupId']
        end
      end

      # ApplyConfigToMachineGroup返回参数结构体
      class ApplyConfigToMachineGroupResponse < TencentCloud::Common::AbstractModel
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

      # 回调配置
      class CallBackInfo < TencentCloud::Common::AbstractModel
        # @param Body: 回调时的Body
        # @type Body: String
        # @param Headers: 回调时的Headers
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :Body, :Headers
        
        def initialize(body=nil, headers=nil)
          @Body = body
          @Headers = headers
        end

        def deserialize(params)
          @Body = params['Body']
          @Headers = params['Headers']
        end
      end

      # CKafka的描述-需要投递到的kafka信息
      class Ckafka < TencentCloud::Common::AbstractModel
        # @param Vip: Ckafka 的 Vip
        # @type Vip: String
        # @param Vport: Ckafka 的 Vport
        # @type Vport: String
        # @param InstanceId: Ckafka 的 InstanceId
        # @type InstanceId: String
        # @param InstanceName: Ckafka 的 InstanceName
        # @type InstanceName: String
        # @param TopicId: Ckafka 的 TopicId
        # @type TopicId: String
        # @param TopicName: Ckafka 的 TopicName
        # @type TopicName: String

        attr_accessor :Vip, :Vport, :InstanceId, :InstanceName, :TopicId, :TopicName
        
        def initialize(vip=nil, vport=nil, instanceid=nil, instancename=nil, topicid=nil, topicname=nil)
          @Vip = vip
          @Vport = vport
          @InstanceId = instanceid
          @InstanceName = instancename
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # CloseKafkaConsumer请求参数结构体
      class CloseKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: CLS对应的topic标识
        # @type FromTopicId: String

        attr_accessor :FromTopicId
        
        def initialize(fromtopicid=nil)
          @FromTopicId = fromtopicid
        end

        def deserialize(params)
          @FromTopicId = params['FromTopicId']
        end
      end

      # CloseKafkaConsumer返回参数结构体
      class CloseKafkaConsumerResponse < TencentCloud::Common::AbstractModel
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

      # 日志分析的列属性
      class Column < TencentCloud::Common::AbstractModel
        # @param Name: 列的名字
        # @type Name: String
        # @param Type: 列的属性
        # @type Type: String

        attr_accessor :Name, :Type
        
        def initialize(name=nil, type=nil)
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 投递日志的压缩配置
      class CompressInfo < TencentCloud::Common::AbstractModel
        # @param Format: 压缩格式，支持gzip、lzop和none不压缩
        # @type Format: String

        attr_accessor :Format
        
        def initialize(format=nil)
          @Format = format
        end

        def deserialize(params)
          @Format = params['Format']
        end
      end

      # 特殊采集规则配置信息
      class ConfigExtraInfo < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集规则扩展配置ID
        # @type ConfigExtraId: String
        # @param Name: 采集规则名称
        # @type Name: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Type: 类型：container_stdout、container_file、host_file
        # @type Type: String
        # @param HostFile: 节点文件配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 容器文件路径信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 容器标准输出信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogFormat: 日志格式化方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogFormat: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePaths: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UserDefineRule: 用户自定义解析字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefineRule: String
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param ConfigFlag: 自建采集配置标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFlag: String
        # @param LogsetId: 日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param LogsetName: 日志集name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetName: String
        # @param TopicName: 日志主题name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :Type, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :LogType, :ExtractRule, :ExcludePaths, :UpdateTime, :CreateTime, :UserDefineRule, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName
        
        def initialize(configextraid=nil, name=nil, topicid=nil, type=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, logtype=nil, extractrule=nil, excludepaths=nil, updatetime=nil, createtime=nil, userdefinerule=nil, groupid=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil)
          @ConfigExtraId = configextraid
          @Name = name
          @TopicId = topicid
          @Type = type
          @HostFile = hostfile
          @ContainerFile = containerfile
          @ContainerStdout = containerstdout
          @LogFormat = logformat
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @UpdateTime = updatetime
          @CreateTime = createtime
          @UserDefineRule = userdefinerule
          @GroupId = groupid
          @ConfigFlag = configflag
          @LogsetId = logsetid
          @LogsetName = logsetname
          @TopicName = topicname
        end

        def deserialize(params)
          @ConfigExtraId = params['ConfigExtraId']
          @Name = params['Name']
          @TopicId = params['TopicId']
          @Type = params['Type']
          unless params['HostFile'].nil?
            @HostFile = HostFileInfo.new
            @HostFile.deserialize(params['HostFile'])
          end
          unless params['ContainerFile'].nil?
            @ContainerFile = ContainerFileInfo.new
            @ContainerFile.deserialize(params['ContainerFile'])
          end
          unless params['ContainerStdout'].nil?
            @ContainerStdout = ContainerStdoutInfo.new
            @ContainerStdout.deserialize(params['ContainerStdout'])
          end
          @LogFormat = params['LogFormat']
          @LogType = params['LogType']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @UserDefineRule = params['UserDefineRule']
          @GroupId = params['GroupId']
          @ConfigFlag = params['ConfigFlag']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @TopicName = params['TopicName']
        end
      end

      # 采集规则配置信息
      class ConfigInfo < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID
        # @type ConfigId: String
        # @param LogFormat: 日志格式化方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogFormat: String
        # @param Path: 日志采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePaths: Array
        # @param Output: 采集配置所属日志主题ID即TopicId
        # @type Output: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UserDefineRule: 用户自定义解析字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefineRule: String

        attr_accessor :ConfigId, :LogFormat, :Path, :LogType, :ExtractRule, :ExcludePaths, :Output, :UpdateTime, :CreateTime, :UserDefineRule
        
        def initialize(configid=nil, logformat=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, output=nil, updatetime=nil, createtime=nil, userdefinerule=nil)
          @ConfigId = configid
          @LogFormat = logformat
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @Output = output
          @UpdateTime = updatetime
          @CreateTime = createtime
          @UserDefineRule = userdefinerule
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @LogFormat = params['LogFormat']
          @Path = params['Path']
          @LogType = params['LogType']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @Output = params['Output']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @UserDefineRule = params['UserDefineRule']
        end
      end

      # 投递任务出入参 Content
      class ConsumerContent < TencentCloud::Common::AbstractModel
        # @param EnableTag: 是否投递 TAG 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableTag: Boolean
        # @param MetaFields: 需要投递的元数据列表，目前仅支持：\_\_SOURCE\_\_，\_\_FILENAME\_\_和\_\_TIMESTAMP\_\_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaFields: Array
        # @param TagJsonNotTiled: 当EnableTag为true时，必须填写TagJsonNotTiled字段，TagJsonNotTiled用于标识tag信息是否json平铺，TagJsonNotTiled为true时不平铺，false时平铺
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagJsonNotTiled: Boolean
        # @param TimestampAccuracy: 投递时间戳精度，可选项 [1:秒；2:毫秒] ，默认是秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimestampAccuracy: Integer

        attr_accessor :EnableTag, :MetaFields, :TagJsonNotTiled, :TimestampAccuracy
        
        def initialize(enabletag=nil, metafields=nil, tagjsonnottiled=nil, timestampaccuracy=nil)
          @EnableTag = enabletag
          @MetaFields = metafields
          @TagJsonNotTiled = tagjsonnottiled
          @TimestampAccuracy = timestampaccuracy
        end

        def deserialize(params)
          @EnableTag = params['EnableTag']
          @MetaFields = params['MetaFields']
          @TagJsonNotTiled = params['TagJsonNotTiled']
          @TimestampAccuracy = params['TimestampAccuracy']
        end
      end

      # 自建k8s-容器文件路径信息
      class ContainerFileInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: namespace可以多个，用分隔号分割,例如A,B
        # @type Namespace: String
        # @param Container: 容器名称
        # @type Container: String
        # @param LogPath: 日志文件夹
        # @type LogPath: String
        # @param FilePattern: 日志名称
        # @type FilePattern: String
        # @param IncludeLabels: pod标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeLabels: Array
        # @param WorkLoad: 工作负载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkLoad: :class:`Tencentcloud::Cls.v20201016.models.ContainerWorkLoadInfo`
        # @param ExcludeNamespace: 需要排除的namespace可以多个，用分隔号分割,例如A,B
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeNamespace: String
        # @param ExcludeLabels: 需要排除的pod标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeLabels: Array

        attr_accessor :Namespace, :Container, :LogPath, :FilePattern, :IncludeLabels, :WorkLoad, :ExcludeNamespace, :ExcludeLabels
        
        def initialize(namespace=nil, container=nil, logpath=nil, filepattern=nil, includelabels=nil, workload=nil, excludenamespace=nil, excludelabels=nil)
          @Namespace = namespace
          @Container = container
          @LogPath = logpath
          @FilePattern = filepattern
          @IncludeLabels = includelabels
          @WorkLoad = workload
          @ExcludeNamespace = excludenamespace
          @ExcludeLabels = excludelabels
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Container = params['Container']
          @LogPath = params['LogPath']
          @FilePattern = params['FilePattern']
          @IncludeLabels = params['IncludeLabels']
          unless params['WorkLoad'].nil?
            @WorkLoad = ContainerWorkLoadInfo.new
            @WorkLoad.deserialize(params['WorkLoad'])
          end
          @ExcludeNamespace = params['ExcludeNamespace']
          @ExcludeLabels = params['ExcludeLabels']
        end
      end

      # 自建k8s-容器标准输出信息
      class ContainerStdoutInfo < TencentCloud::Common::AbstractModel
        # @param AllContainers: 是否所有容器
        # @type AllContainers: Boolean
        # @param Container: container为空表所有的，不为空采集指定的容器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Container: String
        # @param Namespace: namespace可以多个，用分隔号分割,例如A,B；为空或者没有这个字段，表示所有namespace
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param IncludeLabels: pod标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeLabels: Array
        # @param WorkLoads: 工作负载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkLoads: Array
        # @param ExcludeNamespace: 需要排除的namespace可以多个，用分隔号分割,例如A,B
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeNamespace: String
        # @param ExcludeLabels: 需要排除的pod标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeLabels: Array

        attr_accessor :AllContainers, :Container, :Namespace, :IncludeLabels, :WorkLoads, :ExcludeNamespace, :ExcludeLabels
        
        def initialize(allcontainers=nil, container=nil, namespace=nil, includelabels=nil, workloads=nil, excludenamespace=nil, excludelabels=nil)
          @AllContainers = allcontainers
          @Container = container
          @Namespace = namespace
          @IncludeLabels = includelabels
          @WorkLoads = workloads
          @ExcludeNamespace = excludenamespace
          @ExcludeLabels = excludelabels
        end

        def deserialize(params)
          @AllContainers = params['AllContainers']
          @Container = params['Container']
          @Namespace = params['Namespace']
          @IncludeLabels = params['IncludeLabels']
          unless params['WorkLoads'].nil?
            @WorkLoads = []
            params['WorkLoads'].each do |i|
              containerworkloadinfo_tmp = ContainerWorkLoadInfo.new
              containerworkloadinfo_tmp.deserialize(i)
              @WorkLoads << containerworkloadinfo_tmp
            end
          end
          @ExcludeNamespace = params['ExcludeNamespace']
          @ExcludeLabels = params['ExcludeLabels']
        end
      end

      # 自建k8s-工作负载信息
      class ContainerWorkLoadInfo < TencentCloud::Common::AbstractModel
        # @param Kind: 工作负载的类型
        # @type Kind: String
        # @param Name: 工作负载的名称
        # @type Name: String
        # @param Container: 容器名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Container: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String

        attr_accessor :Kind, :Name, :Container, :Namespace
        
        def initialize(kind=nil, name=nil, container=nil, namespace=nil)
          @Kind = kind
          @Name = name
          @Container = container
          @Namespace = namespace
        end

        def deserialize(params)
          @Kind = params['Kind']
          @Name = params['Name']
          @Container = params['Container']
          @Namespace = params['Namespace']
        end
      end

      # 投递日志的内容格式配置
      class ContentInfo < TencentCloud::Common::AbstractModel
        # @param Format: 内容格式，支持json、csv
        # @type Format: String
        # @param Csv: csv格式内容描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Csv: :class:`Tencentcloud::Cls.v20201016.models.CsvInfo`
        # @param Json: json格式内容描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Json: :class:`Tencentcloud::Cls.v20201016.models.JsonInfo`
        # @param Parquet: parquet格式内容描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parquet: :class:`Tencentcloud::Cls.v20201016.models.ParquetInfo`

        attr_accessor :Format, :Csv, :Json, :Parquet
        
        def initialize(format=nil, csv=nil, json=nil, parquet=nil)
          @Format = format
          @Csv = csv
          @Json = json
          @Parquet = parquet
        end

        def deserialize(params)
          @Format = params['Format']
          unless params['Csv'].nil?
            @Csv = CsvInfo.new
            @Csv.deserialize(params['Csv'])
          end
          unless params['Json'].nil?
            @Json = JsonInfo.new
            @Json.deserialize(params['Json'])
          end
          unless params['Parquet'].nil?
            @Parquet = ParquetInfo.new
            @Parquet.deserialize(params['Parquet'])
          end
        end
      end

      # CreateAlarmNotice请求参数结构体
      class CreateAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Name: 通知渠道组名称。
        # @type Name: String
        # @param Type: 通知类型。可选值：
        # <li> Trigger - 告警触发
        # <li> Recovery - 告警恢复
        # <li> All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 通知接收对象。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 接口回调信息（包括企业微信）。
        # @type WebCallbacks: Array

        attr_accessor :Name, :Type, :NoticeReceivers, :WebCallbacks
        
        def initialize(name=nil, type=nil, noticereceivers=nil, webcallbacks=nil)
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeReceivers'].nil?
            @NoticeReceivers = []
            params['NoticeReceivers'].each do |i|
              noticereceiver_tmp = NoticeReceiver.new
              noticereceiver_tmp.deserialize(i)
              @NoticeReceivers << noticereceiver_tmp
            end
          end
          unless params['WebCallbacks'].nil?
            @WebCallbacks = []
            params['WebCallbacks'].each do |i|
              webcallback_tmp = WebCallback.new
              webcallback_tmp.deserialize(i)
              @WebCallbacks << webcallback_tmp
            end
          end
        end
      end

      # CreateAlarmNotice返回参数结构体
      class CreateAlarmNoticeResponse < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 告警模板ID
        # @type AlarmNoticeId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmNoticeId, :RequestId
        
        def initialize(alarmnoticeid=nil, requestid=nil)
          @AlarmNoticeId = alarmnoticeid
          @RequestId = requestid
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlarm请求参数结构体
      class CreateAlarmRequest < TencentCloud::Common::AbstractModel
        # @param Name: 告警策略名称
        # @type Name: String
        # @param AlarmTargets: 监控对象列表。
        # @type AlarmTargets: Array
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param Condition: 触发条件。
        # @type Condition: String
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期。单位是分钟。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知模板列表。
        # @type AlarmNoticeIds: Array
        # @param Status: 是否开启告警策略。默认值为true
        # @type Status: Boolean
        # @param MessageTemplate: 用户自定义告警内容
        # @type MessageTemplate: String
        # @param CallBack: 用户自定义回调
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析
        # @type Analysis: Array

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status, :MessageTemplate, :CallBack, :Analysis
        
        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil, messagetemplate=nil, callback=nil, analysis=nil)
          @Name = name
          @AlarmTargets = alarmtargets
          @MonitorTime = monitortime
          @Condition = condition
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @Status = status
          @MessageTemplate = messagetemplate
          @CallBack = callback
          @Analysis = analysis
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['AlarmTargets'].nil?
            @AlarmTargets = []
            params['AlarmTargets'].each do |i|
              alarmtarget_tmp = AlarmTarget.new
              alarmtarget_tmp.deserialize(i)
              @AlarmTargets << alarmtarget_tmp
            end
          end
          unless params['MonitorTime'].nil?
            @MonitorTime = MonitorTime.new
            @MonitorTime.deserialize(params['MonitorTime'])
          end
          @Condition = params['Condition']
          @TriggerCount = params['TriggerCount']
          @AlarmPeriod = params['AlarmPeriod']
          @AlarmNoticeIds = params['AlarmNoticeIds']
          @Status = params['Status']
          @MessageTemplate = params['MessageTemplate']
          unless params['CallBack'].nil?
            @CallBack = CallBackInfo.new
            @CallBack.deserialize(params['CallBack'])
          end
          unless params['Analysis'].nil?
            @Analysis = []
            params['Analysis'].each do |i|
              analysisdimensional_tmp = AnalysisDimensional.new
              analysisdimensional_tmp.deserialize(i)
              @Analysis << analysisdimensional_tmp
            end
          end
        end
      end

      # CreateAlarm返回参数结构体
      class CreateAlarmResponse < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警策略ID。
        # @type AlarmId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmId, :RequestId
        
        def initialize(alarmid=nil, requestid=nil)
          @AlarmId = alarmid
          @RequestId = requestid
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigExtra请求参数结构体
      class CreateConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param Name: 采集配置规程名称，最长63个字符，只能包含小写字符、数字及分隔符（“-”），且必须以小写字符开头，数字或小写字符结尾
        # @type Name: String
        # @param TopicId: 日志主题id
        # @type TopicId: String
        # @param Type: 类型：container_stdout、container_file、host_file
        # @type Type: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # @type LogType: String
        # @param ConfigFlag: 采集配置标
        # @type ConfigFlag: String
        # @param LogsetId: 日志集id
        # @type LogsetId: String
        # @param LogsetName: 日志集name
        # @type LogsetName: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param HostFile: 节点文件配置信息
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 容器文件路径信息
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 容器标准输出信息
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogFormat: 日志格式化方式
        # @type LogFormat: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 用户自定义采集规则，Json格式序列化的字符串
        # @type UserDefineRule: String
        # @param GroupId: 绑定的机器组id
        # @type GroupId: String
        # @param GroupIds: 绑定的机器组id列表
        # @type GroupIds: Array

        attr_accessor :Name, :TopicId, :Type, :LogType, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :GroupId, :GroupIds
        
        def initialize(name=nil, topicid=nil, type=nil, logtype=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, groupid=nil, groupids=nil)
          @Name = name
          @TopicId = topicid
          @Type = type
          @LogType = logtype
          @ConfigFlag = configflag
          @LogsetId = logsetid
          @LogsetName = logsetname
          @TopicName = topicname
          @HostFile = hostfile
          @ContainerFile = containerfile
          @ContainerStdout = containerstdout
          @LogFormat = logformat
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @UserDefineRule = userdefinerule
          @GroupId = groupid
          @GroupIds = groupids
        end

        def deserialize(params)
          @Name = params['Name']
          @TopicId = params['TopicId']
          @Type = params['Type']
          @LogType = params['LogType']
          @ConfigFlag = params['ConfigFlag']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @TopicName = params['TopicName']
          unless params['HostFile'].nil?
            @HostFile = HostFileInfo.new
            @HostFile.deserialize(params['HostFile'])
          end
          unless params['ContainerFile'].nil?
            @ContainerFile = ContainerFileInfo.new
            @ContainerFile.deserialize(params['ContainerFile'])
          end
          unless params['ContainerStdout'].nil?
            @ContainerStdout = ContainerStdoutInfo.new
            @ContainerStdout.deserialize(params['ContainerStdout'])
          end
          @LogFormat = params['LogFormat']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @UserDefineRule = params['UserDefineRule']
          @GroupId = params['GroupId']
          @GroupIds = params['GroupIds']
        end
      end

      # CreateConfigExtra返回参数结构体
      class CreateConfigExtraResponse < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集配置扩展信息ID
        # @type ConfigExtraId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigExtraId, :RequestId
        
        def initialize(configextraid=nil, requestid=nil)
          @ConfigExtraId = configextraid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConfigExtraId = params['ConfigExtraId']
          @RequestId = params['RequestId']
        end
      end

      # CreateConfig请求参数结构体
      class CreateConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 采集配置名称
        # @type Name: String
        # @param Output: 采集配置所属日志主题ID即TopicId
        # @type Output: String
        # @param Path: 日志采集路径,包含文件名
        # @type Path: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 用户自定义采集规则，Json格式序列化的字符串
        # @type UserDefineRule: String

        attr_accessor :Name, :Output, :Path, :LogType, :ExtractRule, :ExcludePaths, :UserDefineRule
        
        def initialize(name=nil, output=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil)
          @Name = name
          @Output = output
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @UserDefineRule = userdefinerule
        end

        def deserialize(params)
          @Name = params['Name']
          @Output = params['Output']
          @Path = params['Path']
          @LogType = params['LogType']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @UserDefineRule = params['UserDefineRule']
        end
      end

      # CreateConfig返回参数结构体
      class CreateConfigResponse < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集配置ID
        # @type ConfigId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateConsumer请求参数结构体
      class CreateConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题 ID
        # @type TopicId: String
        # @param NeedContent: 是否投递日志的元数据信息，默认为 true
        # @type NeedContent: Boolean
        # @param Content: 如果需要投递元数据信息，元数据信息的描述
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ConsumerContent`
        # @param Ckafka: CKafka的描述
        # @type Ckafka: :class:`Tencentcloud::Cls.v20201016.models.Ckafka`

        attr_accessor :TopicId, :NeedContent, :Content, :Ckafka
        
        def initialize(topicid=nil, needcontent=nil, content=nil, ckafka=nil)
          @TopicId = topicid
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @NeedContent = params['NeedContent']
          unless params['Content'].nil?
            @Content = ConsumerContent.new
            @Content.deserialize(params['Content'])
          end
          unless params['Ckafka'].nil?
            @Ckafka = Ckafka.new
            @Ckafka.deserialize(params['Ckafka'])
          end
        end
      end

      # CreateConsumer返回参数结构体
      class CreateConsumerResponse < TencentCloud::Common::AbstractModel
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

      # CreateExport请求参数结构体
      class CreateExportRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Count: 日志导出数量,  最大值5000万
        # @type Count: Integer
        # @param Query: 日志导出检索语句，不支持<a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>
        # @type Query: String
        # @param From: 日志导出起始时间，毫秒时间戳
        # @type From: Integer
        # @param To: 日志导出结束时间，毫秒时间戳
        # @type To: Integer
        # @param Order: 日志导出时间排序。desc，asc，默认为desc
        # @type Order: String
        # @param Format: 日志导出数据格式。json，csv，默认为json
        # @type Format: String

        attr_accessor :TopicId, :Count, :Query, :From, :To, :Order, :Format
        
        def initialize(topicid=nil, count=nil, query=nil, from=nil, to=nil, order=nil, format=nil)
          @TopicId = topicid
          @Count = count
          @Query = query
          @From = from
          @To = to
          @Order = order
          @Format = format
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Count = params['Count']
          @Query = params['Query']
          @From = params['From']
          @To = params['To']
          @Order = params['Order']
          @Format = params['Format']
        end
      end

      # CreateExport返回参数结构体
      class CreateExportResponse < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出ID。
        # @type ExportId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportId, :RequestId
        
        def initialize(exportid=nil, requestid=nil)
          @ExportId = exportid
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportId = params['ExportId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIndex请求参数结构体
      class CreateIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Rule: 索引规则
        # @type Rule: :class:`Tencentcloud::Cls.v20201016.models.RuleInfo`
        # @param Status: 是否生效，默认为true
        # @type Status: Boolean
        # @param IncludeInternalFields: 全文索引系统预置字段标记，默认false。  false:不包含系统预置字段， true:包含系统预置字段
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据相关标志位，默认为0。 0：全文索引包括开启键值索引的元数据字段， 1：全文索引包括所有元数据字段，2：全文索引不包括元数据字段。
        # @type MetadataFlag: Integer

        attr_accessor :TopicId, :Rule, :Status, :IncludeInternalFields, :MetadataFlag
        
        def initialize(topicid=nil, rule=nil, status=nil, includeinternalfields=nil, metadataflag=nil)
          @TopicId = topicid
          @Rule = rule
          @Status = status
          @IncludeInternalFields = includeinternalfields
          @MetadataFlag = metadataflag
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          unless params['Rule'].nil?
            @Rule = RuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
          @Status = params['Status']
          @IncludeInternalFields = params['IncludeInternalFields']
          @MetadataFlag = params['MetadataFlag']
        end
      end

      # CreateIndex返回参数结构体
      class CreateIndexResponse < TencentCloud::Common::AbstractModel
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

      # CreateLogset请求参数结构体
      class CreateLogsetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetName: 日志集名字，不能重名
        # @type LogsetName: String
        # @param Tags: 标签描述列表。最大支持10个标签键值对，并且不能有重复的键值对
        # @type Tags: Array

        attr_accessor :LogsetName, :Tags
        
        def initialize(logsetname=nil, tags=nil)
          @LogsetName = logsetname
          @Tags = tags
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
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

      # CreateLogset返回参数结构体
      class CreateLogsetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMachineGroup请求参数结构体
      class CreateMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 机器组名字，不能重复
        # @type GroupName: String
        # @param MachineGroupType: 创建机器组类型，Type为ip，Values中为Ip字符串列表创建机器组，Type为label， Values中为标签字符串列表创建机器组
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的机器组。最大支持10个标签键值对，同一个资源只能绑定到同一个标签键下。
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新
        # @type AutoUpdate: Boolean
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        # @type ServiceLogging: Boolean

        attr_accessor :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging
        
        def initialize(groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil)
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          unless params['MachineGroupType'].nil?
            @MachineGroupType = MachineGroupTypeInfo.new
            @MachineGroupType.deserialize(params['MachineGroupType'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoUpdate = params['AutoUpdate']
          @UpdateStartTime = params['UpdateStartTime']
          @UpdateEndTime = params['UpdateEndTime']
          @ServiceLogging = params['ServiceLogging']
        end
      end

      # CreateMachineGroup返回参数结构体
      class CreateMachineGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateShipper请求参数结构体
      class CreateShipperRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 创建的投递规则所属的日志主题ID
        # @type TopicId: String
        # @param Bucket: 创建的投递规则投递的bucket
        # @type Bucket: String
        # @param Prefix: 创建的投递规则投递目录的前缀
        # @type Prefix: String
        # @param ShipperName: 投递规则的名字
        # @type ShipperName: String
        # @param Interval: 投递的时间间隔，单位 秒，默认300，范围 300-900
        # @type Interval: Integer
        # @param MaxSize: 投递的文件的最大值，单位 MB，默认256，范围 100-256
        # @type MaxSize: Integer
        # @param FilterRules: 投递日志的过滤规则，匹配的日志进行投递，各rule之间是and关系，最多5个，数组为空则表示不过滤而全部投递
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`

        attr_accessor :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content
        
        def initialize(topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil)
          @TopicId = topicid
          @Bucket = bucket
          @Prefix = prefix
          @ShipperName = shippername
          @Interval = interval
          @MaxSize = maxsize
          @FilterRules = filterrules
          @Partition = partition
          @Compress = compress
          @Content = content
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Bucket = params['Bucket']
          @Prefix = params['Prefix']
          @ShipperName = params['ShipperName']
          @Interval = params['Interval']
          @MaxSize = params['MaxSize']
          unless params['FilterRules'].nil?
            @FilterRules = []
            params['FilterRules'].each do |i|
              filterruleinfo_tmp = FilterRuleInfo.new
              filterruleinfo_tmp.deserialize(i)
              @FilterRules << filterruleinfo_tmp
            end
          end
          @Partition = params['Partition']
          unless params['Compress'].nil?
            @Compress = CompressInfo.new
            @Compress.deserialize(params['Compress'])
          end
          unless params['Content'].nil?
            @Content = ContentInfo.new
            @Content.deserialize(params['Content'])
          end
        end
      end

      # CreateShipper返回参数结构体
      class CreateShipperResponse < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ShipperId, :RequestId
        
        def initialize(shipperid=nil, requestid=nil)
          @ShipperId = shipperid
          @RequestId = requestid
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param PartitionCount: 日志主题分区个数。默认创建1个，最大支持创建10个分区。
        # @type PartitionCount: Integer
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的日志主题。最大支持10个标签键值对，同一个资源只能绑定到同一个标签键下。
        # @type Tags: Array
        # @param AutoSplit: 是否开启自动分裂，默认值为true
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 开启自动分裂后，每个主题能够允许的最大分区数，默认值为50
        # @type MaxSplitPartitions: Integer
        # @param StorageType: 日志主题的存储类型，可选值 hot（标准存储），cold（低频存储）；默认为hot。
        # @type StorageType: String
        # @param Period: 生命周期，单位天，可取值范围1~3600。取值为3640时代表永久保存
        # @type Period: Integer

        attr_accessor :LogsetId, :TopicName, :PartitionCount, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period
        
        def initialize(logsetid=nil, topicname=nil, partitioncount=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil)
          @LogsetId = logsetid
          @TopicName = topicname
          @PartitionCount = partitioncount
          @Tags = tags
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @StorageType = storagetype
          @Period = period
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicName = params['TopicName']
          @PartitionCount = params['PartitionCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoSplit = params['AutoSplit']
          @MaxSplitPartitions = params['MaxSplitPartitions']
          @StorageType = params['StorageType']
          @Period = params['Period']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # csv内容描述
      class CsvInfo < TencentCloud::Common::AbstractModel
        # @param PrintKey: csv首行是否打印key
        # @type PrintKey: Boolean
        # @param Keys: 每列key的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Delimiter: 各字段间的分隔符
        # @type Delimiter: String
        # @param EscapeChar: 若字段内容中包含分隔符，则使用该转义符包裹改字段，只能填写单引号、双引号、空字符串
        # @type EscapeChar: String
        # @param NonExistingField: 对于上面指定的不存在字段使用该内容填充
        # @type NonExistingField: String

        attr_accessor :PrintKey, :Keys, :Delimiter, :EscapeChar, :NonExistingField
        
        def initialize(printkey=nil, keys=nil, delimiter=nil, escapechar=nil, nonexistingfield=nil)
          @PrintKey = printkey
          @Keys = keys
          @Delimiter = delimiter
          @EscapeChar = escapechar
          @NonExistingField = nonexistingfield
        end

        def deserialize(params)
          @PrintKey = params['PrintKey']
          @Keys = params['Keys']
          @Delimiter = params['Delimiter']
          @EscapeChar = params['EscapeChar']
          @NonExistingField = params['NonExistingField']
        end
      end

      # DeleteAlarmNotice请求参数结构体
      class DeleteAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组ID
        # @type AlarmNoticeId: String

        attr_accessor :AlarmNoticeId
        
        def initialize(alarmnoticeid=nil)
          @AlarmNoticeId = alarmnoticeid
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
        end
      end

      # DeleteAlarmNotice返回参数结构体
      class DeleteAlarmNoticeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAlarm请求参数结构体
      class DeleteAlarmRequest < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警策略ID。
        # @type AlarmId: String

        attr_accessor :AlarmId
        
        def initialize(alarmid=nil)
          @AlarmId = alarmid
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
        end
      end

      # DeleteAlarm返回参数结构体
      class DeleteAlarmResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfigExtra请求参数结构体
      class DeleteConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集规则扩展配置ID
        # @type ConfigExtraId: String

        attr_accessor :ConfigExtraId
        
        def initialize(configextraid=nil)
          @ConfigExtraId = configextraid
        end

        def deserialize(params)
          @ConfigExtraId = params['ConfigExtraId']
        end
      end

      # DeleteConfigExtra返回参数结构体
      class DeleteConfigExtraResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfigFromMachineGroup请求参数结构体
      class DeleteConfigFromMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param ConfigId: 采集配置ID
        # @type ConfigId: String

        attr_accessor :GroupId, :ConfigId
        
        def initialize(groupid=nil, configid=nil)
          @GroupId = groupid
          @ConfigId = configid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ConfigId = params['ConfigId']
        end
      end

      # DeleteConfigFromMachineGroup返回参数结构体
      class DeleteConfigFromMachineGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfig请求参数结构体
      class DeleteConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DeleteConfig返回参数结构体
      class DeleteConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConsumer请求参数结构体
      class DeleteConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题 ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DeleteConsumer返回参数结构体
      class DeleteConsumerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteExport请求参数结构体
      class DeleteExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出ID
        # @type ExportId: String

        attr_accessor :ExportId
        
        def initialize(exportid=nil)
          @ExportId = exportid
        end

        def deserialize(params)
          @ExportId = params['ExportId']
        end
      end

      # DeleteExport返回参数结构体
      class DeleteExportResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIndex请求参数结构体
      class DeleteIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DeleteIndex返回参数结构体
      class DeleteIndexResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLogset请求参数结构体
      class DeleteLogsetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String

        attr_accessor :LogsetId
        
        def initialize(logsetid=nil)
          @LogsetId = logsetid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
        end
      end

      # DeleteLogset返回参数结构体
      class DeleteLogsetResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachineGroup请求参数结构体
      class DeleteMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteMachineGroup返回参数结构体
      class DeleteMachineGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteShipper请求参数结构体
      class DeleteShipperRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String

        attr_accessor :ShipperId
        
        def initialize(shipperid=nil)
          @ShipperId = shipperid
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
        end
      end

      # DeleteShipper返回参数结构体
      class DeleteShipperResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DeleteTopic返回参数结构体
      class DeleteTopicResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmNotices请求参数结构体
      class DescribeAlarmNoticesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li> name
        # 按照【通知渠道组名称】进行过滤。
        # 类型：String
        # 必选：否
        # <li> alarmNoticeId
        # 按照【通知渠道组ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li> uid
        # 按照【接收用户ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li> groupId
        # 按照【接收用户组ID】进行过滤。
        # 类型：String
        # 必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAlarmNotices返回参数结构体
      class DescribeAlarmNoticesResponse < TencentCloud::Common::AbstractModel
        # @param AlarmNotices: 告警通知模板列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmNotices: Array
        # @param TotalCount: 符合条件的告警通知模板总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmNotices, :TotalCount, :RequestId
        
        def initialize(alarmnotices=nil, totalcount=nil, requestid=nil)
          @AlarmNotices = alarmnotices
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmNotices'].nil?
            @AlarmNotices = []
            params['AlarmNotices'].each do |i|
              alarmnotice_tmp = AlarmNotice.new
              alarmnotice_tmp.deserialize(i)
              @AlarmNotices << alarmnotice_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarms请求参数结构体
      class DescribeAlarmsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> name

        # 按照【告警策略名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> alarmId

        # 按照【告警策略ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> topicId

        # 按照【监控对象的日志主题ID】进行过滤。

        # 类型：String

        # 必选：否

        # <br><li> enable

        # 按照【启用状态】进行过滤。

        # 类型：String

        # 备注：enable参数值范围: 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False。 其它值将返回参数错误信息.

        # 必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAlarms返回参数结构体
      class DescribeAlarmsResponse < TencentCloud::Common::AbstractModel
        # @param Alarms: 告警策略列表。
        # @type Alarms: Array
        # @param TotalCount: 符合查询条件的告警策略数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alarms, :TotalCount, :RequestId
        
        def initialize(alarms=nil, totalcount=nil, requestid=nil)
          @Alarms = alarms
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alarms'].nil?
            @Alarms = []
            params['Alarms'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @Alarms << alarminfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigExtras请求参数结构体
      class DescribeConfigExtrasRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持的key： topicId,name, configExtraId, machineGroupId
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeConfigExtras返回参数结构体
      class DescribeConfigExtrasResponse < TencentCloud::Common::AbstractModel
        # @param Configs: 采集配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param TotalCount: 过滤到的总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Configs, :TotalCount, :RequestId
        
        def initialize(configs=nil, totalcount=nil, requestid=nil)
          @Configs = configs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              configextrainfo_tmp = ConfigExtraInfo.new
              configextrainfo_tmp.deserialize(i)
              @Configs << configextrainfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigMachineGroups请求参数结构体
      class DescribeConfigMachineGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集配置ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribeConfigMachineGroups返回参数结构体
      class DescribeConfigMachineGroupsResponse < TencentCloud::Common::AbstractModel
        # @param MachineGroups: 采集规则配置绑定的机器组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineGroups, :RequestId
        
        def initialize(machinegroups=nil, requestid=nil)
          @MachineGroups = machinegroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MachineGroups'].nil?
            @MachineGroups = []
            params['MachineGroups'].each do |i|
              machinegroupinfo_tmp = MachineGroupInfo.new
              machinegroupinfo_tmp.deserialize(i)
              @MachineGroups << machinegroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigs请求参数结构体
      class DescribeConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> configName

        # 按照【采集配置名称】进行模糊匹配过滤。
        # 类型：String

        # 必选：否

        # <br><li> configId

        # 按照【采集配置ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> topicId

        # 按照【日志主题】进行过滤。

        # 类型：String

        # 必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeConfigs返回参数结构体
      class DescribeConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Configs: 采集配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param TotalCount: 过滤到的总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Configs, :TotalCount, :RequestId
        
        def initialize(configs=nil, totalcount=nil, requestid=nil)
          @Configs = configs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              configinfo_tmp = ConfigInfo.new
              configinfo_tmp.deserialize(i)
              @Configs << configinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumer请求参数结构体
      class DescribeConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题 ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DescribeConsumer返回参数结构体
      class DescribeConsumerResponse < TencentCloud::Common::AbstractModel
        # @param Effective: 投递任务是否生效
        # @type Effective: Boolean
        # @param NeedContent: 是否投递日志的元数据信息
        # @type NeedContent: Boolean
        # @param Content: 如果需要投递元数据信息，元数据信息的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ConsumerContent`
        # @param Ckafka: CKafka的描述
        # @type Ckafka: :class:`Tencentcloud::Cls.v20201016.models.Ckafka`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Effective, :NeedContent, :Content, :Ckafka, :RequestId
        
        def initialize(effective=nil, needcontent=nil, content=nil, ckafka=nil, requestid=nil)
          @Effective = effective
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
          @RequestId = requestid
        end

        def deserialize(params)
          @Effective = params['Effective']
          @NeedContent = params['NeedContent']
          unless params['Content'].nil?
            @Content = ConsumerContent.new
            @Content.deserialize(params['Content'])
          end
          unless params['Ckafka'].nil?
            @Ckafka = Ckafka.new
            @Ckafka.deserialize(params['Ckafka'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExports请求参数结构体
      class DescribeExportsRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :TopicId, :Offset, :Limit
        
        def initialize(topicid=nil, offset=nil, limit=nil)
          @TopicId = topicid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeExports返回参数结构体
      class DescribeExportsResponse < TencentCloud::Common::AbstractModel
        # @param Exports: 日志导出列表
        # @type Exports: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Exports, :TotalCount, :RequestId
        
        def initialize(exports=nil, totalcount=nil, requestid=nil)
          @Exports = exports
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Exports'].nil?
            @Exports = []
            params['Exports'].each do |i|
              exportinfo_tmp = ExportInfo.new
              exportinfo_tmp.deserialize(i)
              @Exports << exportinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndex请求参数结构体
      class DescribeIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DescribeIndex返回参数结构体
      class DescribeIndexResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Status: 是否生效
        # @type Status: Boolean
        # @param Rule: 索引配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: :class:`Tencentcloud::Cls.v20201016.models.RuleInfo`
        # @param ModifyTime: 索引修改时间，初始值为索引创建时间。
        # @type ModifyTime: String
        # @param IncludeInternalFields: 全文索引系统预置字段标记，默认false。  false:不包含系统预置字段， true:包含系统预置字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据相关标志位，默认为0。 0：全文索引包括开启键值索引的元数据字段， 1：全文索引包括所有元数据字段，2：全文索引不包括元数据字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetadataFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :Status, :Rule, :ModifyTime, :IncludeInternalFields, :MetadataFlag, :RequestId
        
        def initialize(topicid=nil, status=nil, rule=nil, modifytime=nil, includeinternalfields=nil, metadataflag=nil, requestid=nil)
          @TopicId = topicid
          @Status = status
          @Rule = rule
          @ModifyTime = modifytime
          @IncludeInternalFields = includeinternalfields
          @MetadataFlag = metadataflag
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Status = params['Status']
          unless params['Rule'].nil?
            @Rule = RuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
          @ModifyTime = params['ModifyTime']
          @IncludeInternalFields = params['IncludeInternalFields']
          @MetadataFlag = params['MetadataFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogContext请求参数结构体
      class DescribeLogContextRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 要查询的日志主题ID
        # @type TopicId: String
        # @param BTime: 日志时间,  格式: YYYY-mm-dd HH:MM:SS.FFF
        # @type BTime: String
        # @param PkgId: 日志包序号
        # @type PkgId: String
        # @param PkgLogId: 日志包内一条日志的序号
        # @type PkgLogId: Integer
        # @param PrevLogs: 上文日志条数,  默认值10
        # @type PrevLogs: Integer
        # @param NextLogs: 下文日志条数,  默认值10
        # @type NextLogs: Integer

        attr_accessor :TopicId, :BTime, :PkgId, :PkgLogId, :PrevLogs, :NextLogs
        
        def initialize(topicid=nil, btime=nil, pkgid=nil, pkglogid=nil, prevlogs=nil, nextlogs=nil)
          @TopicId = topicid
          @BTime = btime
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @PrevLogs = prevlogs
          @NextLogs = nextlogs
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @BTime = params['BTime']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @PrevLogs = params['PrevLogs']
          @NextLogs = params['NextLogs']
        end
      end

      # DescribeLogContext返回参数结构体
      class DescribeLogContextResponse < TencentCloud::Common::AbstractModel
        # @param LogContextInfos: 日志上下文信息集合
        # @type LogContextInfos: Array
        # @param PrevOver: 上文日志是否已经返回
        # @type PrevOver: Boolean
        # @param NextOver: 下文日志是否已经返回
        # @type NextOver: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogContextInfos, :PrevOver, :NextOver, :RequestId
        
        def initialize(logcontextinfos=nil, prevover=nil, nextover=nil, requestid=nil)
          @LogContextInfos = logcontextinfos
          @PrevOver = prevover
          @NextOver = nextover
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogContextInfos'].nil?
            @LogContextInfos = []
            params['LogContextInfos'].each do |i|
              logcontextinfo_tmp = LogContextInfo.new
              logcontextinfo_tmp.deserialize(i)
              @LogContextInfos << logcontextinfo_tmp
            end
          end
          @PrevOver = params['PrevOver']
          @NextOver = params['NextOver']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogHistogram请求参数结构体
      class DescribeLogHistogramRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 要查询的日志主题ID
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句
        # @type Query: String
        # @param Interval: 时间间隔: 单位ms
        # @type Interval: Integer

        attr_accessor :TopicId, :From, :To, :Query, :Interval
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, interval=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Interval = interval
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Interval = params['Interval']
        end
      end

      # DescribeLogHistogram返回参数结构体
      class DescribeLogHistogramResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 统计周期： 单位ms
        # @type Interval: Integer
        # @param TotalCount: 命中关键字的日志总条数
        # @type TotalCount: Integer
        # @param HistogramInfos: 周期内统计结果详情
        # @type HistogramInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :TotalCount, :HistogramInfos, :RequestId
        
        def initialize(interval=nil, totalcount=nil, histograminfos=nil, requestid=nil)
          @Interval = interval
          @TotalCount = totalcount
          @HistogramInfos = histograminfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
          @TotalCount = params['TotalCount']
          unless params['HistogramInfos'].nil?
            @HistogramInfos = []
            params['HistogramInfos'].each do |i|
              histograminfo_tmp = HistogramInfo.new
              histograminfo_tmp.deserialize(i)
              @HistogramInfos << histograminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogsets请求参数结构体
      class DescribeLogsetsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> logsetName

        # 按照【日志集名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> logsetId

        # 按照【日志集ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> tagKey

        # 按照【标签键】进行过滤。

        # 类型：String

        # 必选：否

        # <br><li> tag:tagKey

        # 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        # 类型：String

        # 必选：否


        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeLogsets返回参数结构体
      class DescribeLogsetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页的总数目
        # @type TotalCount: Integer
        # @param Logsets: 日志集列表
        # @type Logsets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Logsets, :RequestId
        
        def initialize(totalcount=nil, logsets=nil, requestid=nil)
          @TotalCount = totalcount
          @Logsets = logsets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Logsets'].nil?
            @Logsets = []
            params['Logsets'].each do |i|
              logsetinfo_tmp = LogsetInfo.new
              logsetinfo_tmp.deserialize(i)
              @Logsets << logsetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineGroupConfigs请求参数结构体
      class DescribeMachineGroupConfigsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeMachineGroupConfigs返回参数结构体
      class DescribeMachineGroupConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Configs: 采集规则配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Configs, :RequestId
        
        def initialize(configs=nil, requestid=nil)
          @Configs = configs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              configinfo_tmp = ConfigInfo.new
              configinfo_tmp.deserialize(i)
              @Configs << configinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineGroups请求参数结构体
      class DescribeMachineGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> machineGroupName

        # 按照【机器组名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> machineGroupId

        # 按照【机器组ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> tagKey

        # 按照【标签键】进行过滤。

        # 类型：String

        # 必选：否

        # <br><li> tag:tagKey

        # 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        # 类型：String

        # 必选：否


        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMachineGroups返回参数结构体
      class DescribeMachineGroupsResponse < TencentCloud::Common::AbstractModel
        # @param MachineGroups: 机器组信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineGroups: Array
        # @param TotalCount: 分页的总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineGroups, :TotalCount, :RequestId
        
        def initialize(machinegroups=nil, totalcount=nil, requestid=nil)
          @MachineGroups = machinegroups
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MachineGroups'].nil?
            @MachineGroups = []
            params['MachineGroups'].each do |i|
              machinegroupinfo_tmp = MachineGroupInfo.new
              machinegroupinfo_tmp.deserialize(i)
              @MachineGroups << machinegroupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachines请求参数结构体
      class DescribeMachinesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 查询的机器组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeMachines返回参数结构体
      class DescribeMachinesResponse < TencentCloud::Common::AbstractModel
        # @param Machines: 机器状态信息组
        # @type Machines: Array
        # @param AutoUpdate: 机器组是否开启自动升级功能
        # @type AutoUpdate: Integer
        # @param UpdateStartTime: 机器组自动升级功能预设开始时间
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 机器组自动升级功能预设结束时间
        # @type UpdateEndTime: String
        # @param LatestAgentVersion: 当前用户可用最新的Loglistener版本
        # @type LatestAgentVersion: String
        # @param ServiceLogging: 是否开启服务日志
        # @type ServiceLogging: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Machines, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :LatestAgentVersion, :ServiceLogging, :RequestId
        
        def initialize(machines=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, latestagentversion=nil, servicelogging=nil, requestid=nil)
          @Machines = machines
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @LatestAgentVersion = latestagentversion
          @ServiceLogging = servicelogging
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              machineinfo_tmp = MachineInfo.new
              machineinfo_tmp.deserialize(i)
              @Machines << machineinfo_tmp
            end
          end
          @AutoUpdate = params['AutoUpdate']
          @UpdateStartTime = params['UpdateStartTime']
          @UpdateEndTime = params['UpdateEndTime']
          @LatestAgentVersion = params['LatestAgentVersion']
          @ServiceLogging = params['ServiceLogging']
          @RequestId = params['RequestId']
        end
      end

      # DescribePartitions请求参数结构体
      class DescribePartitionsRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String

        attr_accessor :TopicId
        
        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # DescribePartitions返回参数结构体
      class DescribePartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区列表
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :RequestId
        
        def initialize(partitions=nil, requestid=nil)
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partitioninfo_tmp = PartitionInfo.new
              partitioninfo_tmp.deserialize(i)
              @Partitions << partitioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShipperTasks请求参数结构体
      class DescribeShipperTasksRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String
        # @param StartTime: 查询的开始时间戳，支持最近3天的查询， 毫秒
        # @type StartTime: Integer
        # @param EndTime: 查询的结束时间戳， 毫秒
        # @type EndTime: Integer

        attr_accessor :ShipperId, :StartTime, :EndTime
        
        def initialize(shipperid=nil, starttime=nil, endtime=nil)
          @ShipperId = shipperid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeShipperTasks返回参数结构体
      class DescribeShipperTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 投递任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId
        
        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              shippertaskinfo_tmp = ShipperTaskInfo.new
              shippertaskinfo_tmp.deserialize(i)
              @Tasks << shippertaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShippers请求参数结构体
      class DescribeShippersRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> shipperName

        # 按照【投递规则名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> shipperId

        # 按照【投递规则ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> topicId

        # 按照【日志主题】进行过滤。

        # 类型：String

        # 必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeShippers返回参数结构体
      class DescribeShippersResponse < TencentCloud::Common::AbstractModel
        # @param Shippers: 投递规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shippers: Array
        # @param TotalCount: 本次查询获取到的总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Shippers, :TotalCount, :RequestId
        
        def initialize(shippers=nil, totalcount=nil, requestid=nil)
          @Shippers = shippers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Shippers'].nil?
            @Shippers = []
            params['Shippers'].each do |i|
              shipperinfo_tmp = ShipperInfo.new
              shipperinfo_tmp.deserialize(i)
              @Shippers << shipperinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopics请求参数结构体
      class DescribeTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> topicName按照【日志主题名称】进行过滤。类型：String必选：否<br><li> logsetName按照【日志集名称】进行过滤。类型：String必选：否<br><li> topicId按照【日志主题ID】进行过滤。类型：String必选：否<br><li> logsetId按照【日志集ID】进行过滤，可通过调用DescribeLogsets查询已创建的日志集列表或登录控制台进行查看；也可以调用CreateLogset创建新的日志集。类型：String必选：否<br><li> tagKey按照【标签键】进行过滤。类型：String必选：否<br><li> tag:tagKey按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换，例如tag:exampleKey。类型：String必选：否<br><li> storageType按照【日志主题的存储类型】进行过滤。可选值 hot（标准存储），cold（低频存储）类型：String必选：否每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTopics返回参数结构体
      class DescribeTopicsResponse < TencentCloud::Common::AbstractModel
        # @param Topics: 日志主题列表
        # @type Topics: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topics, :TotalCount, :RequestId
        
        def initialize(topics=nil, totalcount=nil, requestid=nil)
          @Topics = topics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              topicinfo_tmp = TopicInfo.new
              topicinfo_tmp.deserialize(i)
              @Topics << topicinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 黑名单path信息
      class ExcludePathInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型，选填File或Path
        # @type Type: String
        # @param Value: Type对应的具体内容
        # @type Value: String

        attr_accessor :Type, :Value
        
        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 日志导出信息
      class ExportInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param ExportId: 日志导出任务ID
        # @type ExportId: String
        # @param Query: 日志导出查询语句
        # @type Query: String
        # @param FileName: 日志导出文件名
        # @type FileName: String
        # @param FileSize: 日志文件大小
        # @type FileSize: Integer
        # @param Order: 日志导出时间排序
        # @type Order: String
        # @param Format: 日志导出格式
        # @type Format: String
        # @param Count: 日志导出数量
        # @type Count: Integer
        # @param Status: 日志下载状态。Processing:导出正在进行中，Complete:导出完成，Failed:导出失败，Expired:日志导出已过期（三天有效期）。
        # @type Status: String
        # @param From: 日志导出起始时间
        # @type From: Integer
        # @param To: 日志导出结束时间
        # @type To: Integer
        # @param CosPath: 日志导出路径
        # @type CosPath: String
        # @param CreateTime: 日志导出创建时间
        # @type CreateTime: String

        attr_accessor :TopicId, :ExportId, :Query, :FileName, :FileSize, :Order, :Format, :Count, :Status, :From, :To, :CosPath, :CreateTime
        
        def initialize(topicid=nil, exportid=nil, query=nil, filename=nil, filesize=nil, order=nil, format=nil, count=nil, status=nil, from=nil, to=nil, cospath=nil, createtime=nil)
          @TopicId = topicid
          @ExportId = exportid
          @Query = query
          @FileName = filename
          @FileSize = filesize
          @Order = order
          @Format = format
          @Count = count
          @Status = status
          @From = from
          @To = to
          @CosPath = cospath
          @CreateTime = createtime
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @ExportId = params['ExportId']
          @Query = params['Query']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @Order = params['Order']
          @Format = params['Format']
          @Count = params['Count']
          @Status = params['Status']
          @From = params['From']
          @To = params['To']
          @CosPath = params['CosPath']
          @CreateTime = params['CreateTime']
        end
      end

      # 日志提取规则
      class ExtractRuleInfo < TencentCloud::Common::AbstractModel
        # @param TimeKey: 时间字段的key名字，time_key和time_format必须成对出现
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeKey: String
        # @param TimeFormat: 时间字段的格式，参考c语言的strftime函数对于时间的格式说明输出参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeFormat: String
        # @param Delimiter: 分隔符类型日志的分隔符，只有log_type为delimiter_log时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delimiter: String
        # @param LogRegex: 整条日志匹配规则，只有log_type为fullregex_log时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRegex: String
        # @param BeginRegex: 行首匹配规则，只有log_type为multiline_log或fullregex_log时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginRegex: String
        # @param Keys: 取的每个字段的key名字，为空的key代表丢弃这个字段，只有log_type为delimiter_log时有效，json_log的日志使用json本身的key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param FilterKeyRegex: 需要过滤日志的key，及其对应的regex
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterKeyRegex: Array
        # @param UnMatchUpLoadSwitch: 解析失败日志是否上传，true表示上传，false表示不上传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchUpLoadSwitch: Boolean
        # @param UnMatchLogKey: 失败日志的key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchLogKey: String
        # @param Backtracking: 增量采集模式下的回溯数据量，默认-1（全量采集）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backtracking: Integer

        attr_accessor :TimeKey, :TimeFormat, :Delimiter, :LogRegex, :BeginRegex, :Keys, :FilterKeyRegex, :UnMatchUpLoadSwitch, :UnMatchLogKey, :Backtracking
        
        def initialize(timekey=nil, timeformat=nil, delimiter=nil, logregex=nil, beginregex=nil, keys=nil, filterkeyregex=nil, unmatchuploadswitch=nil, unmatchlogkey=nil, backtracking=nil)
          @TimeKey = timekey
          @TimeFormat = timeformat
          @Delimiter = delimiter
          @LogRegex = logregex
          @BeginRegex = beginregex
          @Keys = keys
          @FilterKeyRegex = filterkeyregex
          @UnMatchUpLoadSwitch = unmatchuploadswitch
          @UnMatchLogKey = unmatchlogkey
          @Backtracking = backtracking
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @TimeFormat = params['TimeFormat']
          @Delimiter = params['Delimiter']
          @LogRegex = params['LogRegex']
          @BeginRegex = params['BeginRegex']
          @Keys = params['Keys']
          unless params['FilterKeyRegex'].nil?
            @FilterKeyRegex = []
            params['FilterKeyRegex'].each do |i|
              keyregexinfo_tmp = KeyRegexInfo.new
              keyregexinfo_tmp.deserialize(i)
              @FilterKeyRegex << keyregexinfo_tmp
            end
          end
          @UnMatchUpLoadSwitch = params['UnMatchUpLoadSwitch']
          @UnMatchLogKey = params['UnMatchLogKey']
          @Backtracking = params['Backtracking']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Key: 需要过滤的字段。
        # @type Key: String
        # @param Values: 需要过滤的值。
        # @type Values: Array

        attr_accessor :Key, :Values
        
        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 投递日志的过滤规则
      class FilterRuleInfo < TencentCloud::Common::AbstractModel
        # @param Key: 过滤规则Key
        # @type Key: String
        # @param Regex: 过滤规则
        # @type Regex: String
        # @param Value: 过滤规则Value
        # @type Value: String

        attr_accessor :Key, :Regex, :Value
        
        def initialize(key=nil, regex=nil, value=nil)
          @Key = key
          @Regex = regex
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Regex = params['Regex']
          @Value = params['Value']
        end
      end

      # 全文索引配置
      class FullTextInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param Tokenizer: 全文索引的分词符，其中的每个字符代表一个分词符；
        # 仅支持英文符号及\n\t\r；
        # 推荐使用 @&?|#()='",;:<>[]{}/ \n\t\r\ 作为分词符；
        # @type Tokenizer: String
        # @param ContainZH: 是否包含中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainZH: Boolean

        attr_accessor :CaseSensitive, :Tokenizer, :ContainZH
        
        def initialize(casesensitive=nil, tokenizer=nil, containzh=nil)
          @CaseSensitive = casesensitive
          @Tokenizer = tokenizer
          @ContainZH = containzh
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          @Tokenizer = params['Tokenizer']
          @ContainZH = params['ContainZH']
        end
      end

      # GetAlarmLog请求参数结构体
      class GetAlarmLogRequest < TencentCloud::Common::AbstractModel
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为1024
        # @type Query: String
        # @param Limit: 单次查询返回的日志条数，最大值为1000
        # @type Limit: Integer
        # @param Context: 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容
        # @type Context: String
        # @param Sort: 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String
        # @param UseNewAnalysis: 为true代表使用新检索,响应参数AnalysisRecords和Columns有效， 为false时代表使用老检索方式, AnalysisResults和ColNames有效
        # @type UseNewAnalysis: Boolean

        attr_accessor :From, :To, :Query, :Limit, :Context, :Sort, :UseNewAnalysis
        
        def initialize(from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil, usenewanalysis=nil)
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
          @UseNewAnalysis = usenewanalysis
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @UseNewAnalysis = params['UseNewAnalysis']
        end
      end

      # GetAlarmLog返回参数结构体
      class GetAlarmLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 加载后续内容的Context
        # @type Context: String
        # @param ListOver: 日志查询结果是否全部返回
        # @type ListOver: Boolean
        # @param Analysis: 返回的是否为分析结果
        # @type Analysis: Boolean
        # @param ColNames: 如果Analysis为True，则返回分析结果的列名，否则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColNames: Array
        # @param Results: 日志查询结果；当Analysis为True时，可能返回为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param AnalysisResults: 日志分析结果；当Analysis为False时，可能返回为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisResults: Array
        # @param AnalysisRecords: 新的日志分析结果; UseNewAnalysis为true有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisRecords: Array
        # @param Columns: 日志分析的列属性; UseNewAnalysis为true有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :ColNames, :Results, :AnalysisResults, :AnalysisRecords, :Columns, :RequestId
        
        def initialize(context=nil, listover=nil, analysis=nil, colnames=nil, results=nil, analysisresults=nil, analysisrecords=nil, columns=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @ColNames = colnames
          @Results = results
          @AnalysisResults = analysisresults
          @AnalysisRecords = analysisrecords
          @Columns = columns
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          @Analysis = params['Analysis']
          @ColNames = params['ColNames']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              loginfo_tmp = LogInfo.new
              loginfo_tmp.deserialize(i)
              @Results << loginfo_tmp
            end
          end
          unless params['AnalysisResults'].nil?
            @AnalysisResults = []
            params['AnalysisResults'].each do |i|
              logitems_tmp = LogItems.new
              logitems_tmp.deserialize(i)
              @AnalysisResults << logitems_tmp
            end
          end
          @AnalysisRecords = params['AnalysisRecords']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 直方图详细信息
      class HistogramInfo < TencentCloud::Common::AbstractModel
        # @param Count: 统计周期内的日志条数
        # @type Count: Integer
        # @param BTime: 按 period 取整后的 unix timestamp： 单位毫秒
        # @type BTime: Integer

        attr_accessor :Count, :BTime
        
        def initialize(count=nil, btime=nil)
          @Count = count
          @BTime = btime
        end

        def deserialize(params)
          @Count = params['Count']
          @BTime = params['BTime']
        end
      end

      # 自建k8s-节点文件配置信息
      class HostFileInfo < TencentCloud::Common::AbstractModel
        # @param LogPath: 日志文件夹
        # @type LogPath: String
        # @param FilePattern: 日志文件名
        # @type FilePattern: String
        # @param CustomLabels: metadata信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLabels: Array

        attr_accessor :LogPath, :FilePattern, :CustomLabels
        
        def initialize(logpath=nil, filepattern=nil, customlabels=nil)
          @LogPath = logpath
          @FilePattern = filepattern
          @CustomLabels = customlabels
        end

        def deserialize(params)
          @LogPath = params['LogPath']
          @FilePattern = params['FilePattern']
          @CustomLabels = params['CustomLabels']
        end
      end

      # JSON类型描述
      class JsonInfo < TencentCloud::Common::AbstractModel
        # @param EnableTag: 启用标志
        # @type EnableTag: Boolean
        # @param MetaFields: 元数据信息列表, 可选值为 __SOURCE__、__FILENAME__、__TIMESTAMP__。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaFields: Array

        attr_accessor :EnableTag, :MetaFields
        
        def initialize(enabletag=nil, metafields=nil)
          @EnableTag = enabletag
          @MetaFields = metafields
        end

        def deserialize(params)
          @EnableTag = params['EnableTag']
          @MetaFields = params['MetaFields']
        end
      end

      # 需要过滤日志的key，及其对应的regex
      class KeyRegexInfo < TencentCloud::Common::AbstractModel
        # @param Key: 需要过滤日志的key
        # @type Key: String
        # @param Regex: key对应的过滤规则regex
        # @type Regex: String

        attr_accessor :Key, :Regex
        
        def initialize(key=nil, regex=nil)
          @Key = key
          @Regex = regex
        end

        def deserialize(params)
          @Key = params['Key']
          @Regex = params['Regex']
        end
      end

      # 键值或者元字段索引的字段信息
      class KeyValueInfo < TencentCloud::Common::AbstractModel
        # @param Key: 需要配置键值或者元字段索引的字段，元字段Key无需额外添加`__TAG__.`前缀，与上传日志时对应的字段Key一致即可，腾讯云控制台展示时将自动添加`__TAG__.`前缀
        # @type Key: String
        # @param Value: 字段的索引描述信息
        # @type Value: :class:`Tencentcloud::Cls.v20201016.models.ValueInfo`

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Value'].nil?
            @Value = ValueInfo.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 日志上下文信息
      class LogContextInfo < TencentCloud::Common::AbstractModel
        # @param Source: 日志来源设备
        # @type Source: String
        # @param Filename: 采集路径
        # @type Filename: String
        # @param Content: 日志内容
        # @type Content: String
        # @param PkgId: 日志包序号
        # @type PkgId: String
        # @param PkgLogId: 日志包内一条日志的序号
        # @type PkgLogId: Integer
        # @param BTime: 日志时间戳
        # @type BTime: Integer
        # @param HostName: 日志来源主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String

        attr_accessor :Source, :Filename, :Content, :PkgId, :PkgLogId, :BTime, :HostName
        
        def initialize(source=nil, filename=nil, content=nil, pkgid=nil, pkglogid=nil, btime=nil, hostname=nil)
          @Source = source
          @Filename = filename
          @Content = content
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @BTime = btime
          @HostName = hostname
        end

        def deserialize(params)
          @Source = params['Source']
          @Filename = params['Filename']
          @Content = params['Content']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @BTime = params['BTime']
          @HostName = params['HostName']
        end
      end

      # 日志结果信息
      class LogInfo < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间，单位ms
        # @type Time: Integer
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param Source: 日志来源IP
        # @type Source: String
        # @param FileName: 日志文件名称
        # @type FileName: String
        # @param PkgId: 日志上报请求包的ID
        # @type PkgId: String
        # @param PkgLogId: 请求包内日志的ID
        # @type PkgLogId: String
        # @param LogJson: 日志内容的Json序列化字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogJson: String
        # @param HostName: 日志来源主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String

        attr_accessor :Time, :TopicId, :TopicName, :Source, :FileName, :PkgId, :PkgLogId, :LogJson, :HostName
        
        def initialize(time=nil, topicid=nil, topicname=nil, source=nil, filename=nil, pkgid=nil, pkglogid=nil, logjson=nil, hostname=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @Source = source
          @FileName = filename
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @LogJson = logjson
          @HostName = hostname
        end

        def deserialize(params)
          @Time = params['Time']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Source = params['Source']
          @FileName = params['FileName']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @LogJson = params['LogJson']
          @HostName = params['HostName']
        end
      end

      # 日志中的KV对
      class LogItem < TencentCloud::Common::AbstractModel
        # @param Key: 日志Key
        # @type Key: String
        # @param Value: 日志Value
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

      # LogItem的数组
      class LogItems < TencentCloud::Common::AbstractModel
        # @param Data: 分析结果返回的KV数据对
        # @type Data: Array

        attr_accessor :Data
        
        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              logitem_tmp = LogItem.new
              logitem_tmp.deserialize(i)
              @Data << logitem_tmp
            end
          end
        end
      end

      # 日志集相关信息
      class LogsetInfo < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # @type LogsetName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Tags: 日志集绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param TopicCount: 日志集下日志主题的数目
        # @type TopicCount: Integer
        # @param RoleName: 若AssumerUin非空，则表示创建该日志集的服务方角色
        # @type RoleName: String

        attr_accessor :LogsetId, :LogsetName, :CreateTime, :Tags, :TopicCount, :RoleName
        
        def initialize(logsetid=nil, logsetname=nil, createtime=nil, tags=nil, topiccount=nil, rolename=nil)
          @LogsetId = logsetid
          @LogsetName = logsetname
          @CreateTime = createtime
          @Tags = tags
          @TopicCount = topiccount
          @RoleName = rolename
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @CreateTime = params['CreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @TopicCount = params['TopicCount']
          @RoleName = params['RoleName']
        end
      end

      # 机器组信息
      class MachineGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param GroupName: 机器组名称
        # @type GroupName: String
        # @param MachineGroupType: 机器组类型
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Tags: 机器组绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoUpdate: String
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceLogging: Boolean

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :CreateTime, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging
        
        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, createtime=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @CreateTime = createtime
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['MachineGroupType'].nil?
            @MachineGroupType = MachineGroupTypeInfo.new
            @MachineGroupType.deserialize(params['MachineGroupType'])
          end
          @CreateTime = params['CreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoUpdate = params['AutoUpdate']
          @UpdateStartTime = params['UpdateStartTime']
          @UpdateEndTime = params['UpdateEndTime']
          @ServiceLogging = params['ServiceLogging']
        end
      end

      # 机器组类型描述
      class MachineGroupTypeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 机器组类型，ip表示该机器组Values中存的是采集机器的IP地址，label表示该机器组Values中存储的是机器的标签
        # @type Type: String
        # @param Values: 机器描述列表
        # @type Values: Array

        attr_accessor :Type, :Values
        
        def initialize(type=nil, values=nil)
          @Type = type
          @Values = values
        end

        def deserialize(params)
          @Type = params['Type']
          @Values = params['Values']
        end
      end

      # 机器状态信息
      class MachineInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 机器的IP
        # @type Ip: String
        # @param Status: 机器状态，0:异常，1:正常
        # @type Status: Integer
        # @param OfflineTime: 机器离线时间，空为正常，异常返回具体时间
        # @type OfflineTime: String
        # @param AutoUpdate: 机器是否开启自动升级。0:关闭，1:开启
        # @type AutoUpdate: Integer
        # @param Version: 机器当前版本号。
        # @type Version: String
        # @param UpdateStatus: 机器升级功能状态。
        # @type UpdateStatus: Integer
        # @param ErrCode: 机器升级结果标识。
        # @type ErrCode: Integer
        # @param ErrMsg: 机器升级结果信息。
        # @type ErrMsg: String

        attr_accessor :Ip, :Status, :OfflineTime, :AutoUpdate, :Version, :UpdateStatus, :ErrCode, :ErrMsg
        
        def initialize(ip=nil, status=nil, offlinetime=nil, autoupdate=nil, version=nil, updatestatus=nil, errcode=nil, errmsg=nil)
          @Ip = ip
          @Status = status
          @OfflineTime = offlinetime
          @AutoUpdate = autoupdate
          @Version = version
          @UpdateStatus = updatestatus
          @ErrCode = errcode
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Status = params['Status']
          @OfflineTime = params['OfflineTime']
          @AutoUpdate = params['AutoUpdate']
          @Version = params['Version']
          @UpdateStatus = params['UpdateStatus']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
        end
      end

      # MergePartition请求参数结构体
      class MergePartitionRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param PartitionId: 合并的PartitionId
        # @type PartitionId: Integer

        attr_accessor :TopicId, :PartitionId
        
        def initialize(topicid=nil, partitionid=nil)
          @TopicId = topicid
          @PartitionId = partitionid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @PartitionId = params['PartitionId']
        end
      end

      # MergePartition返回参数结构体
      class MergePartitionResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 合并结果集
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :RequestId
        
        def initialize(partitions=nil, requestid=nil)
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partitioninfo_tmp = PartitionInfo.new
              partitioninfo_tmp.deserialize(i)
              @Partitions << partitioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyAlarmNotice请求参数结构体
      class ModifyAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组ID。
        # @type AlarmNoticeId: String
        # @param Name: 通知渠道组名称。
        # @type Name: String
        # @param Type: 通知类型。可选值：
        # <li> Trigger - 告警触发
        # <li> Recovery - 告警恢复
        # <li> All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 通知接收对象。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 接口回调信息（包括企业微信）。
        # @type WebCallbacks: Array

        attr_accessor :AlarmNoticeId, :Name, :Type, :NoticeReceivers, :WebCallbacks
        
        def initialize(alarmnoticeid=nil, name=nil, type=nil, noticereceivers=nil, webcallbacks=nil)
          @AlarmNoticeId = alarmnoticeid
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeReceivers'].nil?
            @NoticeReceivers = []
            params['NoticeReceivers'].each do |i|
              noticereceiver_tmp = NoticeReceiver.new
              noticereceiver_tmp.deserialize(i)
              @NoticeReceivers << noticereceiver_tmp
            end
          end
          unless params['WebCallbacks'].nil?
            @WebCallbacks = []
            params['WebCallbacks'].each do |i|
              webcallback_tmp = WebCallback.new
              webcallback_tmp.deserialize(i)
              @WebCallbacks << webcallback_tmp
            end
          end
        end
      end

      # ModifyAlarmNotice返回参数结构体
      class ModifyAlarmNoticeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarm请求参数结构体
      class ModifyAlarmRequest < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警策略ID。
        # @type AlarmId: String
        # @param Name: 告警策略名称
        # @type Name: String
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param Condition: 触发条件。
        # @type Condition: String
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期。单位是分钟。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知模板列表。
        # @type AlarmNoticeIds: Array
        # @param AlarmTargets: 监控对象列表。
        # @type AlarmTargets: Array
        # @param Status: 是否开启告警策略。
        # @type Status: Boolean
        # @param MessageTemplate: 用户自定义告警内容
        # @type MessageTemplate: String
        # @param CallBack: 用户自定义回调
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析
        # @type Analysis: Array

        attr_accessor :AlarmId, :Name, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :AlarmTargets, :Status, :MessageTemplate, :CallBack, :Analysis
        
        def initialize(alarmid=nil, name=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, alarmtargets=nil, status=nil, messagetemplate=nil, callback=nil, analysis=nil)
          @AlarmId = alarmid
          @Name = name
          @MonitorTime = monitortime
          @Condition = condition
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @AlarmTargets = alarmtargets
          @Status = status
          @MessageTemplate = messagetemplate
          @CallBack = callback
          @Analysis = analysis
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @Name = params['Name']
          unless params['MonitorTime'].nil?
            @MonitorTime = MonitorTime.new
            @MonitorTime.deserialize(params['MonitorTime'])
          end
          @Condition = params['Condition']
          @TriggerCount = params['TriggerCount']
          @AlarmPeriod = params['AlarmPeriod']
          @AlarmNoticeIds = params['AlarmNoticeIds']
          unless params['AlarmTargets'].nil?
            @AlarmTargets = []
            params['AlarmTargets'].each do |i|
              alarmtarget_tmp = AlarmTarget.new
              alarmtarget_tmp.deserialize(i)
              @AlarmTargets << alarmtarget_tmp
            end
          end
          @Status = params['Status']
          @MessageTemplate = params['MessageTemplate']
          unless params['CallBack'].nil?
            @CallBack = CallBackInfo.new
            @CallBack.deserialize(params['CallBack'])
          end
          unless params['Analysis'].nil?
            @Analysis = []
            params['Analysis'].each do |i|
              analysisdimensional_tmp = AnalysisDimensional.new
              analysisdimensional_tmp.deserialize(i)
              @Analysis << analysisdimensional_tmp
            end
          end
        end
      end

      # ModifyAlarm返回参数结构体
      class ModifyAlarmResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConfigExtra请求参数结构体
      class ModifyConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集配置扩展信息id
        # @type ConfigExtraId: String
        # @param Name: 采集配置规程名称，最长63个字符，只能包含小写字符、数字及分隔符（“-”），且必须以小写字符开头，数字或小写字符结尾
        # @type Name: String
        # @param TopicId: 日志主题id
        # @type TopicId: String
        # @param HostFile: 节点文件配置信息
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 容器文件路径信息
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 容器标准输出信息
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # @type LogType: String
        # @param LogFormat: 日志格式化方式
        # @type LogFormat: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 用户自定义采集规则，Json格式序列化的字符串
        # @type UserDefineRule: String
        # @param Type: 类型：container_stdout、container_file、host_file
        # @type Type: String
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param ConfigFlag: 自建采集配置标
        # @type ConfigFlag: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集name
        # @type LogsetName: String
        # @param TopicName: 日志主题name
        # @type TopicName: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :HostFile, :ContainerFile, :ContainerStdout, :LogType, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :Type, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName
        
        def initialize(configextraid=nil, name=nil, topicid=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logtype=nil, logformat=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, type=nil, groupid=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil)
          @ConfigExtraId = configextraid
          @Name = name
          @TopicId = topicid
          @HostFile = hostfile
          @ContainerFile = containerfile
          @ContainerStdout = containerstdout
          @LogType = logtype
          @LogFormat = logformat
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @UserDefineRule = userdefinerule
          @Type = type
          @GroupId = groupid
          @ConfigFlag = configflag
          @LogsetId = logsetid
          @LogsetName = logsetname
          @TopicName = topicname
        end

        def deserialize(params)
          @ConfigExtraId = params['ConfigExtraId']
          @Name = params['Name']
          @TopicId = params['TopicId']
          unless params['HostFile'].nil?
            @HostFile = HostFileInfo.new
            @HostFile.deserialize(params['HostFile'])
          end
          unless params['ContainerFile'].nil?
            @ContainerFile = ContainerFileInfo.new
            @ContainerFile.deserialize(params['ContainerFile'])
          end
          unless params['ContainerStdout'].nil?
            @ContainerStdout = ContainerStdoutInfo.new
            @ContainerStdout.deserialize(params['ContainerStdout'])
          end
          @LogType = params['LogType']
          @LogFormat = params['LogFormat']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @UserDefineRule = params['UserDefineRule']
          @Type = params['Type']
          @GroupId = params['GroupId']
          @ConfigFlag = params['ConfigFlag']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @TopicName = params['TopicName']
        end
      end

      # ModifyConfigExtra返回参数结构体
      class ModifyConfigExtraResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConfig请求参数结构体
      class ModifyConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID
        # @type ConfigId: String
        # @param Name: 采集规则配置名称
        # @type Name: String
        # @param Path: 日志采集路径，包含文件名
        # @type Path: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param Output: 采集配置关联的日志主题（TopicId）
        # @type Output: String
        # @param UserDefineRule: 用户自定义解析字符串，Json格式序列化的字符串
        # @type UserDefineRule: String

        attr_accessor :ConfigId, :Name, :Path, :LogType, :ExtractRule, :ExcludePaths, :Output, :UserDefineRule
        
        def initialize(configid=nil, name=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, output=nil, userdefinerule=nil)
          @ConfigId = configid
          @Name = name
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @Output = output
          @UserDefineRule = userdefinerule
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @Name = params['Name']
          @Path = params['Path']
          @LogType = params['LogType']
          unless params['ExtractRule'].nil?
            @ExtractRule = ExtractRuleInfo.new
            @ExtractRule.deserialize(params['ExtractRule'])
          end
          unless params['ExcludePaths'].nil?
            @ExcludePaths = []
            params['ExcludePaths'].each do |i|
              excludepathinfo_tmp = ExcludePathInfo.new
              excludepathinfo_tmp.deserialize(i)
              @ExcludePaths << excludepathinfo_tmp
            end
          end
          @Output = params['Output']
          @UserDefineRule = params['UserDefineRule']
        end
      end

      # ModifyConfig返回参数结构体
      class ModifyConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConsumer请求参数结构体
      class ModifyConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题 ID
        # @type TopicId: String
        # @param Effective: 投递任务是否生效，默认不生效
        # @type Effective: Boolean
        # @param NeedContent: 是否投递日志的元数据信息，默认为 false
        # @type NeedContent: Boolean
        # @param Content: 如果需要投递元数据信息，元数据信息的描述
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ConsumerContent`
        # @param Ckafka: CKafka的描述
        # @type Ckafka: :class:`Tencentcloud::Cls.v20201016.models.Ckafka`

        attr_accessor :TopicId, :Effective, :NeedContent, :Content, :Ckafka
        
        def initialize(topicid=nil, effective=nil, needcontent=nil, content=nil, ckafka=nil)
          @TopicId = topicid
          @Effective = effective
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Effective = params['Effective']
          @NeedContent = params['NeedContent']
          unless params['Content'].nil?
            @Content = ConsumerContent.new
            @Content.deserialize(params['Content'])
          end
          unless params['Ckafka'].nil?
            @Ckafka = Ckafka.new
            @Ckafka.deserialize(params['Ckafka'])
          end
        end
      end

      # ModifyConsumer返回参数结构体
      class ModifyConsumerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIndex请求参数结构体
      class ModifyIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Status: 默认不生效
        # @type Status: Boolean
        # @param Rule: 索引规则
        # @type Rule: :class:`Tencentcloud::Cls.v20201016.models.RuleInfo`
        # @param IncludeInternalFields: 全文索引系统预置字段标记，默认false。  false:不包含系统预置字段， true:包含系统预置字段
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据相关标志位，默认为0。 0：全文索引包括开启键值索引的元数据字段， 1：全文索引包括所有元数据字段，2：全文索引不包括元数据字段。
        # @type MetadataFlag: Integer

        attr_accessor :TopicId, :Status, :Rule, :IncludeInternalFields, :MetadataFlag
        
        def initialize(topicid=nil, status=nil, rule=nil, includeinternalfields=nil, metadataflag=nil)
          @TopicId = topicid
          @Status = status
          @Rule = rule
          @IncludeInternalFields = includeinternalfields
          @MetadataFlag = metadataflag
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Status = params['Status']
          unless params['Rule'].nil?
            @Rule = RuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
          @IncludeInternalFields = params['IncludeInternalFields']
          @MetadataFlag = params['MetadataFlag']
        end
      end

      # ModifyIndex返回参数结构体
      class ModifyIndexResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLogset请求参数结构体
      class ModifyLogsetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # @type LogsetName: String
        # @param Tags: 日志集的绑定的标签键值对。最大支持10个标签键值对，同一个资源只能同时绑定一个标签键。
        # @type Tags: Array

        attr_accessor :LogsetId, :LogsetName, :Tags
        
        def initialize(logsetid=nil, logsetname=nil, tags=nil)
          @LogsetId = logsetid
          @LogsetName = logsetname
          @Tags = tags
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
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

      # ModifyLogset返回参数结构体
      class ModifyLogsetResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMachineGroup请求参数结构体
      class ModifyMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param GroupName: 机器组名称
        # @type GroupName: String
        # @param MachineGroupType: 机器组类型
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新
        # @type AutoUpdate: Boolean
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        # @type ServiceLogging: Boolean

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging
        
        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['MachineGroupType'].nil?
            @MachineGroupType = MachineGroupTypeInfo.new
            @MachineGroupType.deserialize(params['MachineGroupType'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoUpdate = params['AutoUpdate']
          @UpdateStartTime = params['UpdateStartTime']
          @UpdateEndTime = params['UpdateEndTime']
          @ServiceLogging = params['ServiceLogging']
        end
      end

      # ModifyMachineGroup返回参数结构体
      class ModifyMachineGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyShipper请求参数结构体
      class ModifyShipperRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String
        # @param Bucket: 投递规则投递的新的bucket
        # @type Bucket: String
        # @param Prefix: 投递规则投递的新的目录前缀
        # @type Prefix: String
        # @param Status: 投递规则的开关状态
        # @type Status: Boolean
        # @param ShipperName: 投递规则的名字
        # @type ShipperName: String
        # @param Interval: 投递的时间间隔，单位 秒，默认300，范围 300-900
        # @type Interval: Integer
        # @param MaxSize: 投递的文件的最大值，单位 MB，默认256，范围 100-256
        # @type MaxSize: Integer
        # @param FilterRules: 投递日志的过滤规则，匹配的日志进行投递，各rule之间是and关系，最多5个，数组为空则表示不过滤而全部投递
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`

        attr_accessor :ShipperId, :Bucket, :Prefix, :Status, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content
        
        def initialize(shipperid=nil, bucket=nil, prefix=nil, status=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil)
          @ShipperId = shipperid
          @Bucket = bucket
          @Prefix = prefix
          @Status = status
          @ShipperName = shippername
          @Interval = interval
          @MaxSize = maxsize
          @FilterRules = filterrules
          @Partition = partition
          @Compress = compress
          @Content = content
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
          @Bucket = params['Bucket']
          @Prefix = params['Prefix']
          @Status = params['Status']
          @ShipperName = params['ShipperName']
          @Interval = params['Interval']
          @MaxSize = params['MaxSize']
          unless params['FilterRules'].nil?
            @FilterRules = []
            params['FilterRules'].each do |i|
              filterruleinfo_tmp = FilterRuleInfo.new
              filterruleinfo_tmp.deserialize(i)
              @FilterRules << filterruleinfo_tmp
            end
          end
          @Partition = params['Partition']
          unless params['Compress'].nil?
            @Compress = CompressInfo.new
            @Compress.deserialize(params['Compress'])
          end
          unless params['Content'].nil?
            @Content = ContentInfo.new
            @Content.deserialize(params['Content'])
          end
        end
      end

      # ModifyShipper返回参数结构体
      class ModifyShipperResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的日志主题。最大支持10个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param Status: 该日志主题是否开始采集
        # @type Status: Boolean
        # @param AutoSplit: 是否开启自动分裂
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 若开启最大分裂，该主题能够能够允许的最大分区数
        # @type MaxSplitPartitions: Integer
        # @param Period: 生命周期，单位天，可取值范围1~3600。取值为3640时代表永久保存
        # @type Period: Integer

        attr_accessor :TopicId, :TopicName, :Tags, :Status, :AutoSplit, :MaxSplitPartitions, :Period
        
        def initialize(topicid=nil, topicname=nil, tags=nil, status=nil, autosplit=nil, maxsplitpartitions=nil, period=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Tags = tags
          @Status = status
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @Period = period
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
          @AutoSplit = params['AutoSplit']
          @MaxSplitPartitions = params['MaxSplitPartitions']
          @Period = params['Period']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
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

      # 告警策略中监控任务的执行时间点
      class MonitorTime < TencentCloud::Common::AbstractModel
        # @param Type: 可选值：
        # <br><li> Period - 周期执行
        # <br><li> Fixed - 定期执行
        # @type Type: String
        # @param Time: 执行的周期，或者定制执行的时间节点。单位为分钟，取值范围为1~1440。
        # @type Time: Integer

        attr_accessor :Type, :Time
        
        def initialize(type=nil, time=nil)
          @Type = type
          @Time = time
        end

        def deserialize(params)
          @Type = params['Type']
          @Time = params['Time']
        end
      end

      # 告警通知接收者信息
      class NoticeReceiver < TencentCloud::Common::AbstractModel
        # @param ReceiverType: 接受者类型。可选值：
        # <br><li> Uin - 用户ID
        # <br><li> Group - 用户组ID
        # 暂不支持其余接收者类型。
        # @type ReceiverType: String
        # @param ReceiverIds: 接收者。
        # @type ReceiverIds: Array
        # @param ReceiverChannels: 通知接收渠道。
        # <br><li> Email - 邮件
        # <br><li> Sms - 短信
        # <br><li> WeChat - 微信
        # <br><li> Phone - 电话
        # @type ReceiverChannels: Array
        # @param StartTime: 允许接收信息的开始时间。
        # @type StartTime: String
        # @param EndTime: 允许接收信息的结束时间。
        # @type EndTime: String
        # @param Index: 位序
        # @type Index: Integer

        attr_accessor :ReceiverType, :ReceiverIds, :ReceiverChannels, :StartTime, :EndTime, :Index
        
        def initialize(receivertype=nil, receiverids=nil, receiverchannels=nil, starttime=nil, endtime=nil, index=nil)
          @ReceiverType = receivertype
          @ReceiverIds = receiverids
          @ReceiverChannels = receiverchannels
          @StartTime = starttime
          @EndTime = endtime
          @Index = index
        end

        def deserialize(params)
          @ReceiverType = params['ReceiverType']
          @ReceiverIds = params['ReceiverIds']
          @ReceiverChannels = params['ReceiverChannels']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Index = params['Index']
        end
      end

      # OpenKafkaConsumer请求参数结构体
      class OpenKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: CLS控制台创建的TopicId
        # @type FromTopicId: String

        attr_accessor :FromTopicId
        
        def initialize(fromtopicid=nil)
          @FromTopicId = fromtopicid
        end

        def deserialize(params)
          @FromTopicId = params['FromTopicId']
        end
      end

      # OpenKafkaConsumer返回参数结构体
      class OpenKafkaConsumerResponse < TencentCloud::Common::AbstractModel
        # @param TopicID: 待消费TopicId
        # @type TopicID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicID, :RequestId
        
        def initialize(topicid=nil, requestid=nil)
          @TopicID = topicid
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicID = params['TopicID']
          @RequestId = params['RequestId']
        end
      end

      # Parquet内容
      class ParquetInfo < TencentCloud::Common::AbstractModel
        # @param ParquetKeyInfo: ParquetKeyInfo数组
        # @type ParquetKeyInfo: Array

        attr_accessor :ParquetKeyInfo
        
        def initialize(parquetkeyinfo=nil)
          @ParquetKeyInfo = parquetkeyinfo
        end

        def deserialize(params)
          unless params['ParquetKeyInfo'].nil?
            @ParquetKeyInfo = []
            params['ParquetKeyInfo'].each do |i|
              parquetkeyinfo_tmp = ParquetKeyInfo.new
              parquetkeyinfo_tmp.deserialize(i)
              @ParquetKeyInfo << parquetkeyinfo_tmp
            end
          end
        end
      end

      # Parquet内容描述
      class ParquetKeyInfo < TencentCloud::Common::AbstractModel
        # @param KeyName: 键值名称
        # @type KeyName: String
        # @param KeyType: 数据类型，目前支持6种类型：string、boolean、int32、int64、float、double
        # @type KeyType: String
        # @param KeyNonExistingField: 解析失败赋值信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyNonExistingField: String

        attr_accessor :KeyName, :KeyType, :KeyNonExistingField
        
        def initialize(keyname=nil, keytype=nil, keynonexistingfield=nil)
          @KeyName = keyname
          @KeyType = keytype
          @KeyNonExistingField = keynonexistingfield
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @KeyType = params['KeyType']
          @KeyNonExistingField = params['KeyNonExistingField']
        end
      end

      # 日志主题分区信息
      class PartitionInfo < TencentCloud::Common::AbstractModel
        # @param PartitionId: 分区ID
        # @type PartitionId: Integer
        # @param Status: 分区的状态（readwrite或者是readonly）
        # @type Status: String
        # @param InclusiveBeginKey: 分区哈希键起始key
        # @type InclusiveBeginKey: String
        # @param ExclusiveEndKey: 分区哈希键结束key
        # @type ExclusiveEndKey: String
        # @param CreateTime: 分区创建时间
        # @type CreateTime: String
        # @param LastWriteTime: 只读分区数据停止写入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastWriteTime: String

        attr_accessor :PartitionId, :Status, :InclusiveBeginKey, :ExclusiveEndKey, :CreateTime, :LastWriteTime
        
        def initialize(partitionid=nil, status=nil, inclusivebeginkey=nil, exclusiveendkey=nil, createtime=nil, lastwritetime=nil)
          @PartitionId = partitionid
          @Status = status
          @InclusiveBeginKey = inclusivebeginkey
          @ExclusiveEndKey = exclusiveendkey
          @CreateTime = createtime
          @LastWriteTime = lastwritetime
        end

        def deserialize(params)
          @PartitionId = params['PartitionId']
          @Status = params['Status']
          @InclusiveBeginKey = params['InclusiveBeginKey']
          @ExclusiveEndKey = params['ExclusiveEndKey']
          @CreateTime = params['CreateTime']
          @LastWriteTime = params['LastWriteTime']
        end
      end

      # RetryShipperTask请求参数结构体
      class RetryShipperTaskRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String
        # @param TaskId: 投递任务ID
        # @type TaskId: String

        attr_accessor :ShipperId, :TaskId
        
        def initialize(shipperid=nil, taskid=nil)
          @ShipperId = shipperid
          @TaskId = taskid
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
          @TaskId = params['TaskId']
        end
      end

      # RetryShipperTask返回参数结构体
      class RetryShipperTaskResponse < TencentCloud::Common::AbstractModel
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

      # 索引规则，FullText、KeyValue、Tag参数必须输入一个有效参数
      class RuleInfo < TencentCloud::Common::AbstractModel
        # @param FullText: 全文索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullText: :class:`Tencentcloud::Cls.v20201016.models.FullTextInfo`
        # @param KeyValue: 键值索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValue: :class:`Tencentcloud::Cls.v20201016.models.RuleKeyValueInfo`
        # @param Tag: 元字段索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: :class:`Tencentcloud::Cls.v20201016.models.RuleTagInfo`

        attr_accessor :FullText, :KeyValue, :Tag
        
        def initialize(fulltext=nil, keyvalue=nil, tag=nil)
          @FullText = fulltext
          @KeyValue = keyvalue
          @Tag = tag
        end

        def deserialize(params)
          unless params['FullText'].nil?
            @FullText = FullTextInfo.new
            @FullText.deserialize(params['FullText'])
          end
          unless params['KeyValue'].nil?
            @KeyValue = RuleKeyValueInfo.new
            @KeyValue.deserialize(params['KeyValue'])
          end
          unless params['Tag'].nil?
            @Tag = RuleTagInfo.new
            @Tag.deserialize(params['Tag'])
          end
        end
      end

      # 键值索引配置
      class RuleKeyValueInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param KeyValues: 需要建立索引的键值对信息；最大只能配置100个键值对
        # @type KeyValues: Array

        attr_accessor :CaseSensitive, :KeyValues
        
        def initialize(casesensitive=nil, keyvalues=nil)
          @CaseSensitive = casesensitive
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              keyvalueinfo_tmp = KeyValueInfo.new
              keyvalueinfo_tmp.deserialize(i)
              @KeyValues << keyvalueinfo_tmp
            end
          end
        end
      end

      # 元字段索引配置
      class RuleTagInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param KeyValues: 元字段索引配置中的字段信息
        # @type KeyValues: Array

        attr_accessor :CaseSensitive, :KeyValues
        
        def initialize(casesensitive=nil, keyvalues=nil)
          @CaseSensitive = casesensitive
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              keyvalueinfo_tmp = KeyValueInfo.new
              keyvalueinfo_tmp.deserialize(i)
              @KeyValues << keyvalueinfo_tmp
            end
          end
        end
      end

      # SearchLog请求参数结构体
      class SearchLogRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 要检索分析的日志主题ID
        # @type TopicId: String
        # @param From: 要检索分析的日志的起始时间，Unix时间戳（毫秒）
        # @type From: Integer
        # @param To: 要检索分析的日志的结束时间，Unix时间戳（毫秒）
        # @type To: Integer
        # @param Query: 检索分析语句，最大长度为12KB
        # 语句由 <a href="https://cloud.tencent.com/document/product/614/47044" target="_blank">[检索条件]</a> | <a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>构成，无需对日志进行统计分析时，可省略其中的管道符<code> | </code>及SQL语句
        # @type Query: String
        # @param Limit: 表示单次查询返回的原始日志条数，最大值为1000，获取后续日志需使用Context参数
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果条数指定方式参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        # @type Limit: Integer
        # @param Context: 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时
        # 注意：
        # * 透传该参数时，请勿修改除该参数外的其它参数
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL获取后续结果参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        # @type Context: String
        # @param Sort: 原始日志是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果排序方式参考<a href="https://cloud.tencent.com/document/product/614/58978" target="_blank">SQL ORDER BY语法</a>
        # @type Sort: String
        # @param UseNewAnalysis: 为true代表使用新的检索结果返回方式，输出参数AnalysisRecords和Columns有效
        # 为false时代表使用老的检索结果返回方式, 输出AnalysisResults和ColNames有效
        # 两种返回方式在编码格式上有少量区别，建议使用true
        # @type UseNewAnalysis: Boolean

        attr_accessor :TopicId, :From, :To, :Query, :Limit, :Context, :Sort, :UseNewAnalysis
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil, usenewanalysis=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
          @UseNewAnalysis = usenewanalysis
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @UseNewAnalysis = params['UseNewAnalysis']
        end
      end

      # SearchLog返回参数结构体
      class SearchLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 透传本次接口返回的Context值，可获取后续更多日志，过期时间1小时
        # @type Context: String
        # @param ListOver: 符合检索条件的日志是否已全部返回，如未全部返回可使用Context参数获取后续更多日志
        # 注意：仅当检索分析语句(Query)不包含SQL时有效
        # @type ListOver: Boolean
        # @param Analysis: 返回的是否为统计分析（即SQL）结果
        # @type Analysis: Boolean
        # @param Results: 匹配检索条件的原始日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param ColNames: 日志统计分析结果的列名
        # 当UseNewAnalysis为false时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColNames: Array
        # @param AnalysisResults: 日志统计分析结果
        # 当UseNewAnalysis为false时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisResults: Array
        # @param AnalysisRecords: 日志统计分析结果
        # 当UseNewAnalysis为true时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisRecords: Array
        # @param Columns: 日志统计分析结果的列属性
        # 当UseNewAnalysis为true时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :Results, :ColNames, :AnalysisResults, :AnalysisRecords, :Columns, :RequestId
        
        def initialize(context=nil, listover=nil, analysis=nil, results=nil, colnames=nil, analysisresults=nil, analysisrecords=nil, columns=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @Results = results
          @ColNames = colnames
          @AnalysisResults = analysisresults
          @AnalysisRecords = analysisrecords
          @Columns = columns
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          @Analysis = params['Analysis']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              loginfo_tmp = LogInfo.new
              loginfo_tmp.deserialize(i)
              @Results << loginfo_tmp
            end
          end
          @ColNames = params['ColNames']
          unless params['AnalysisResults'].nil?
            @AnalysisResults = []
            params['AnalysisResults'].each do |i|
              logitems_tmp = LogItems.new
              logitems_tmp.deserialize(i)
              @AnalysisResults << logitems_tmp
            end
          end
          @AnalysisRecords = params['AnalysisRecords']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 投递规则
      class ShipperInfo < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则ID
        # @type ShipperId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Bucket: 投递的bucket地址
        # @type Bucket: String
        # @param Prefix: 投递的前缀目录
        # @type Prefix: String
        # @param ShipperName: 投递规则的名字
        # @type ShipperName: String
        # @param Interval: 投递的时间间隔，单位 秒
        # @type Interval: Integer
        # @param MaxSize: 投递的文件的最大值，单位 MB
        # @type MaxSize: Integer
        # @param Status: 是否生效
        # @type Status: Boolean
        # @param FilterRules: 投递日志的过滤规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`
        # @param CreateTime: 投递日志的创建时间
        # @type CreateTime: String

        attr_accessor :ShipperId, :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :Status, :FilterRules, :Partition, :Compress, :Content, :CreateTime
        
        def initialize(shipperid=nil, topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, status=nil, filterrules=nil, partition=nil, compress=nil, content=nil, createtime=nil)
          @ShipperId = shipperid
          @TopicId = topicid
          @Bucket = bucket
          @Prefix = prefix
          @ShipperName = shippername
          @Interval = interval
          @MaxSize = maxsize
          @Status = status
          @FilterRules = filterrules
          @Partition = partition
          @Compress = compress
          @Content = content
          @CreateTime = createtime
        end

        def deserialize(params)
          @ShipperId = params['ShipperId']
          @TopicId = params['TopicId']
          @Bucket = params['Bucket']
          @Prefix = params['Prefix']
          @ShipperName = params['ShipperName']
          @Interval = params['Interval']
          @MaxSize = params['MaxSize']
          @Status = params['Status']
          unless params['FilterRules'].nil?
            @FilterRules = []
            params['FilterRules'].each do |i|
              filterruleinfo_tmp = FilterRuleInfo.new
              filterruleinfo_tmp.deserialize(i)
              @FilterRules << filterruleinfo_tmp
            end
          end
          @Partition = params['Partition']
          unless params['Compress'].nil?
            @Compress = CompressInfo.new
            @Compress.deserialize(params['Compress'])
          end
          unless params['Content'].nil?
            @Content = ContentInfo.new
            @Content.deserialize(params['Content'])
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 投递任务信息
      class ShipperTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 投递任务ID
        # @type TaskId: String
        # @param ShipperId: 投递信息ID
        # @type ShipperId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param RangeStart: 本批投递的日志的开始时间戳，毫秒
        # @type RangeStart: Integer
        # @param RangeEnd: 本批投递的日志的结束时间戳， 毫秒
        # @type RangeEnd: Integer
        # @param StartTime: 本次投递任务的开始时间戳， 毫秒
        # @type StartTime: Integer
        # @param EndTime: 本次投递任务的结束时间戳， 毫秒
        # @type EndTime: Integer
        # @param Status: 本次投递的结果，"success","running","failed"
        # @type Status: String
        # @param Message: 结果的详细信息
        # @type Message: String

        attr_accessor :TaskId, :ShipperId, :TopicId, :RangeStart, :RangeEnd, :StartTime, :EndTime, :Status, :Message
        
        def initialize(taskid=nil, shipperid=nil, topicid=nil, rangestart=nil, rangeend=nil, starttime=nil, endtime=nil, status=nil, message=nil)
          @TaskId = taskid
          @ShipperId = shipperid
          @TopicId = topicid
          @RangeStart = rangestart
          @RangeEnd = rangeend
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Message = message
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ShipperId = params['ShipperId']
          @TopicId = params['TopicId']
          @RangeStart = params['RangeStart']
          @RangeEnd = params['RangeEnd']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Message = params['Message']
        end
      end

      # SplitPartition请求参数结构体
      class SplitPartitionRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param PartitionId: 待分裂分区ID
        # @type PartitionId: Integer
        # @param SplitKey: 分区切分的哈希key的位置，只在Number=2时有意义
        # @type SplitKey: String
        # @param Number: 分区分裂个数(可选)，默认等于2
        # @type Number: Integer

        attr_accessor :TopicId, :PartitionId, :SplitKey, :Number
        
        def initialize(topicid=nil, partitionid=nil, splitkey=nil, number=nil)
          @TopicId = topicid
          @PartitionId = partitionid
          @SplitKey = splitkey
          @Number = number
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @PartitionId = params['PartitionId']
          @SplitKey = params['SplitKey']
          @Number = params['Number']
        end
      end

      # SplitPartition返回参数结构体
      class SplitPartitionResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分裂结果集
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :RequestId
        
        def initialize(partitions=nil, requestid=nil)
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partitioninfo_tmp = PartitionInfo.new
              partitioninfo_tmp.deserialize(i)
              @Partitions << partitioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建资源实例时同时绑定的标签对说明
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

      # 日志主题信息
      class TopicInfo < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param PartitionCount: 主题分区个数
        # @type PartitionCount: Integer
        # @param Index: 是否开启索引
        # @type Index: Boolean
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Status: 日主主题是否开启采集
        # @type Status: Boolean
        # @param Tags: 日志主题绑定的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoSplit: 该主题是否开启自动分裂
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 若开启自动分裂的话，该主题能够允许的最大分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSplitPartitions: Integer
        # @param StorageType: 日主题的存储类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param Period: 生命周期，单位天，可取值范围1~3600。取值为3640时代表永久保存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Integer

        attr_accessor :LogsetId, :TopicId, :TopicName, :PartitionCount, :Index, :CreateTime, :Status, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period
        
        def initialize(logsetid=nil, topicid=nil, topicname=nil, partitioncount=nil, index=nil, createtime=nil, status=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @TopicName = topicname
          @PartitionCount = partitioncount
          @Index = index
          @CreateTime = createtime
          @Status = status
          @Tags = tags
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @StorageType = storagetype
          @Period = period
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @PartitionCount = params['PartitionCount']
          @Index = params['Index']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoSplit = params['AutoSplit']
          @MaxSplitPartitions = params['MaxSplitPartitions']
          @StorageType = params['StorageType']
          @Period = params['Period']
        end
      end

      # UploadLog请求参数结构体
      class UploadLogRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题id
        # @type TopicId: String
        # @param HashKey: 根据 hashkey 写入相应范围的主题分区
        # @type HashKey: String
        # @param CompressType: 压缩方法
        # @type CompressType: String

        attr_accessor :TopicId, :HashKey, :CompressType
        
        def initialize(topicid=nil, hashkey=nil, compresstype=nil)
          @TopicId = topicid
          @HashKey = hashkey
          @CompressType = compresstype
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @HashKey = params['HashKey']
          @CompressType = params['CompressType']
        end
      end

      # UploadLog返回参数结构体
      class UploadLogResponse < TencentCloud::Common::AbstractModel
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

      # 需要开启键值索引的字段的索引描述信息
      class ValueInfo < TencentCloud::Common::AbstractModel
        # @param Type: 字段类型，目前支持的类型有：long、text、double
        # @type Type: String
        # @param Tokenizer: 字段的分词符，其中的每个字符代表一个分词符；
        # 仅支持英文符号及\n\t\r；
        # long及double类型字段需为空；
        # text类型字段推荐使用 @&?|#()='",;:<>[]{}/ \n\t\r\\ 作为分词符；
        # @type Tokenizer: String
        # @param SqlFlag: 字段是否开启分析功能
        # @type SqlFlag: Boolean
        # @param ContainZH: 是否包含中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainZH: Boolean

        attr_accessor :Type, :Tokenizer, :SqlFlag, :ContainZH
        
        def initialize(type=nil, tokenizer=nil, sqlflag=nil, containzh=nil)
          @Type = type
          @Tokenizer = tokenizer
          @SqlFlag = sqlflag
          @ContainZH = containzh
        end

        def deserialize(params)
          @Type = params['Type']
          @Tokenizer = params['Tokenizer']
          @SqlFlag = params['SqlFlag']
          @ContainZH = params['ContainZH']
        end
      end

      # 回调地址
      class WebCallback < TencentCloud::Common::AbstractModel
        # @param Url: 回调地址。
        # @type Url: String
        # @param CallbackType: 回调的类型。可选值：
        # <li> WeCom
        # <li> Http
        # @type CallbackType: String
        # @param Method: 回调方法。可选值：
        # <li> POST
        # <li> PUT
        # 默认值为POST。CallbackType为Http时为必选。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Headers: 请求头。
        # 注意：该参数已废弃，请在<a href="https://cloud.tencent.com/document/product/614/56466">创建告警策略</a>接口CallBack参数中指定请求头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param Body: 请求内容。
        # 注意：该参数已废弃，请在<a href="https://cloud.tencent.com/document/product/614/56466">创建告警策略</a>接口CallBack参数中指定请求内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String
        # @param Index: 序号
        # @type Index: Integer

        attr_accessor :Url, :CallbackType, :Method, :Headers, :Body, :Index
        
        def initialize(url=nil, callbacktype=nil, method=nil, headers=nil, body=nil, index=nil)
          @Url = url
          @CallbackType = callbacktype
          @Method = method
          @Headers = headers
          @Body = body
          @Index = index
        end

        def deserialize(params)
          @Url = params['Url']
          @CallbackType = params['CallbackType']
          @Method = params['Method']
          @Headers = params['Headers']
          @Body = params['Body']
          @Index = params['Index']
        end
      end

    end
  end
end

