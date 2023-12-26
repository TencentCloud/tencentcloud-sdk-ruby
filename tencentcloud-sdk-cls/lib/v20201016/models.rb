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
      # AddMachineGroupInfo请求参数结构体
      class AddMachineGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param MachineGroupType: 机器组类型
        # 目前type支持 ip 和 label
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`

        attr_accessor :GroupId, :MachineGroupType

        def initialize(groupid=nil, machinegrouptype=nil)
          @GroupId = groupid
          @MachineGroupType = machinegrouptype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['MachineGroupType'].nil?
            @MachineGroupType = MachineGroupTypeInfo.new
            @MachineGroupType.deserialize(params['MachineGroupType'])
          end
        end
      end

      # AddMachineGroupInfo返回参数结构体
      class AddMachineGroupInfoResponse < TencentCloud::Common::AbstractModel
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

      # 告警多维分析一些配置信息
      class AlarmAnalysisConfig < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 值
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

      # 告警分类信息
      class AlarmClassification < TencentCloud::Common::AbstractModel
        # @param Key: 分类键
        # @type Key: String
        # @param Value: 分类值
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

      # 告警策略描述
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param Name: 告警策略名称。
        # @type Name: String
        # @param AlarmTargets: 监控对象列表。
        # @type AlarmTargets: Array
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param Condition: 单触发条件。与MultiConditions参数互斥。
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
        # @param GroupTriggerStatus: 分组触发状态。1：开启，0：关闭（默认）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupTriggerStatus: Boolean
        # @param GroupTriggerCondition: 分组触发条件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupTriggerCondition: Array
        # @param MonitorObjectType: 监控对象类型。0:执行语句共用监控对象;1:每个执行语句单独选择监控对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorObjectType: Integer
        # @param AlarmLevel: 告警级别。0:警告(Warn);1:提醒(Info);2:紧急 (Critical)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param MultiConditions: 多触发条件。与
        # Condition互斥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiConditions: Array

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status, :AlarmId, :CreateTime, :UpdateTime, :MessageTemplate, :CallBack, :Analysis, :GroupTriggerStatus, :GroupTriggerCondition, :MonitorObjectType, :AlarmLevel, :MultiConditions

        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil, alarmid=nil, createtime=nil, updatetime=nil, messagetemplate=nil, callback=nil, analysis=nil, grouptriggerstatus=nil, grouptriggercondition=nil, monitorobjecttype=nil, alarmlevel=nil, multiconditions=nil)
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
          @GroupTriggerStatus = grouptriggerstatus
          @GroupTriggerCondition = grouptriggercondition
          @MonitorObjectType = monitorobjecttype
          @AlarmLevel = alarmlevel
          @MultiConditions = multiconditions
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
          @GroupTriggerStatus = params['GroupTriggerStatus']
          @GroupTriggerCondition = params['GroupTriggerCondition']
          @MonitorObjectType = params['MonitorObjectType']
          @AlarmLevel = params['AlarmLevel']
          unless params['MultiConditions'].nil?
            @MultiConditions = []
            params['MultiConditions'].each do |i|
              multicondition_tmp = MultiCondition.new
              multicondition_tmp.deserialize(i)
              @MultiConditions << multicondition_tmp
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
        # @param NoticeRules: 通知规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeRules: Array

        attr_accessor :Name, :Type, :NoticeReceivers, :WebCallbacks, :AlarmNoticeId, :CreateTime, :UpdateTime, :NoticeRules

        def initialize(name=nil, type=nil, noticereceivers=nil, webcallbacks=nil, alarmnoticeid=nil, createtime=nil, updatetime=nil, noticerules=nil)
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @AlarmNoticeId = alarmnoticeid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NoticeRules = noticerules
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
          unless params['NoticeRules'].nil?
            @NoticeRules = []
            params['NoticeRules'].each do |i|
              noticerule_tmp = NoticeRule.new
              noticerule_tmp.deserialize(i)
              @NoticeRules << noticerule_tmp
            end
          end
        end
      end

      # 告警对象
      class AlarmTarget < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param Query: 查询语句。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Query: String
        # @param Number: 告警对象序号；从1开始递增。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Number: Integer
        # @param StartTimeOffset: 查询范围起始时间相对于告警执行时间的偏移，单位为分钟，取值为非正，最大值为0，最小值为-1440。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对于告警执行时间的偏移，单位为分钟，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeOffset: Integer
        # @param LogsetId: 日志集ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param SyntaxRule: 检索语法规则，默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # 详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyntaxRule: Integer

        attr_accessor :TopicId, :Query, :Number, :StartTimeOffset, :EndTimeOffset, :LogsetId, :SyntaxRule

        def initialize(topicid=nil, query=nil, number=nil, starttimeoffset=nil, endtimeoffset=nil, logsetid=nil, syntaxrule=nil)
          @TopicId = topicid
          @Query = query
          @Number = number
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @LogsetId = logsetid
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Query = params['Query']
          @Number = params['Number']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @LogsetId = params['LogsetId']
          @SyntaxRule = params['SyntaxRule']
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

      # 告警通知渠道组详情
      class AlertHistoryNotice < TencentCloud::Common::AbstractModel
        # @param Name: 通知渠道组名称
        # @type Name: String
        # @param AlarmNoticeId: 通知渠道组ID
        # @type AlarmNoticeId: String

        attr_accessor :Name, :AlarmNoticeId

        def initialize(name=nil, alarmnoticeid=nil)
          @Name = name
          @AlarmNoticeId = alarmnoticeid
        end

        def deserialize(params)
          @Name = params['Name']
          @AlarmNoticeId = params['AlarmNoticeId']
        end
      end

      # 告警历史详情
      class AlertHistoryRecord < TencentCloud::Common::AbstractModel
        # @param RecordId: 告警历史ID
        # @type RecordId: String
        # @param AlarmId: 告警策略ID
        # @type AlarmId: String
        # @param AlarmName: 告警策略名称
        # @type AlarmName: String
        # @param TopicId: 监控对象ID
        # @type TopicId: String
        # @param TopicName: 监控对象名称
        # @type TopicName: String
        # @param Region: 监控对象所属地域
        # @type Region: String
        # @param Trigger: 触发条件
        # @type Trigger: String
        # @param TriggerCount: 持续周期，持续满足触发条件TriggerCount个周期后，再进行告警
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警通知发送频率，单位为分钟
        # @type AlarmPeriod: Integer
        # @param Notices: 通知渠道组
        # @type Notices: Array
        # @param Duration: 告警持续时间，单位为分钟
        # @type Duration: Integer
        # @param Status: 告警状态，0代表未恢复，1代表已恢复，2代表已失效
        # @type Status: Integer
        # @param CreateTime: 告警发生时间，毫秒级Unix时间戳
        # @type CreateTime: Integer
        # @param GroupTriggerCondition: 告警分组触发时对应的分组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupTriggerCondition: Array
        # @param AlarmLevel: 告警级别，0代表警告(Warn)，1代表提醒(Info)，2代表紧急 (Critical)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param MonitorObjectType: 监控对象类型。
        # 0:执行语句共用监控对象; 1:每个执行语句单独选择监控对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorObjectType: Integer

        attr_accessor :RecordId, :AlarmId, :AlarmName, :TopicId, :TopicName, :Region, :Trigger, :TriggerCount, :AlarmPeriod, :Notices, :Duration, :Status, :CreateTime, :GroupTriggerCondition, :AlarmLevel, :MonitorObjectType

        def initialize(recordid=nil, alarmid=nil, alarmname=nil, topicid=nil, topicname=nil, region=nil, trigger=nil, triggercount=nil, alarmperiod=nil, notices=nil, duration=nil, status=nil, createtime=nil, grouptriggercondition=nil, alarmlevel=nil, monitorobjecttype=nil)
          @RecordId = recordid
          @AlarmId = alarmid
          @AlarmName = alarmname
          @TopicId = topicid
          @TopicName = topicname
          @Region = region
          @Trigger = trigger
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @Notices = notices
          @Duration = duration
          @Status = status
          @CreateTime = createtime
          @GroupTriggerCondition = grouptriggercondition
          @AlarmLevel = alarmlevel
          @MonitorObjectType = monitorobjecttype
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @AlarmId = params['AlarmId']
          @AlarmName = params['AlarmName']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Region = params['Region']
          @Trigger = params['Trigger']
          @TriggerCount = params['TriggerCount']
          @AlarmPeriod = params['AlarmPeriod']
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              alerthistorynotice_tmp = AlertHistoryNotice.new
              alerthistorynotice_tmp.deserialize(i)
              @Notices << alerthistorynotice_tmp
            end
          end
          @Duration = params['Duration']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          unless params['GroupTriggerCondition'].nil?
            @GroupTriggerCondition = []
            params['GroupTriggerCondition'].each do |i|
              grouptriggerconditioninfo_tmp = GroupTriggerConditionInfo.new
              grouptriggerconditioninfo_tmp.deserialize(i)
              @GroupTriggerCondition << grouptriggerconditioninfo_tmp
            end
          end
          @AlarmLevel = params['AlarmLevel']
          @MonitorObjectType = params['MonitorObjectType']
        end
      end

      # 多维分析的分析维度
      class AnalysisDimensional < TencentCloud::Common::AbstractModel
        # @param Name: 分析名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 分析类型：query，field ，original
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Content: 分析内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param ConfigInfo: 多维分析配置。

        # 当Analysis的Type字段为query（自定义）时，支持
        # {
        # "Key": "SyntaxRule",  // 语法规则
        # "Value": "1"  //0：Lucene语法 ，1： CQL语法
        # }



        # 当Analysis的Type字段为field（top5）时,  支持
        #  {
        #     "Key": "QueryIndex",
        #     "Value": "-1" //  -1：自定义， 1：执行语句1， 2：执行语句2
        # },{
        #     "Key": "CustomQuery", //检索语句。 QueryIndex为-1时有效且必填
        #     "Value": "* | select count(*) as count"
        # },{
        #     "Key": "SyntaxRule", // 查不到这个字段也是老语法（Lucene）
        #     "Value": "0"//0:Lucene, 1:CQL
        # }

        # 当Analysis的Type字段为original（原始日志）时,  支持
        # {
        #     "Key": "Fields",
        #     "Value": "__SOURCE__,__HOSTNAME__,__TIMESTAMP__,__PKG_LOGID__,__TAG__.pod_ip"
        # }, {
        #     "Key": "QueryIndex",
        #     "Value": "-1" //  -1：自定义， 1：执行语句1， 2：执行语句2
        # },{
        #     "Key": "CustomQuery", //  //检索语句。 QueryIndex为-1时有效且必填
        #     "Value": "* | select count(*) as count"
        # },{
        #     "Key": "Format", //显示形式。1：每条日志一行，2：每条日志每个字段一行
        #     "Value": "2"
        # },
        # {
        #     "Key": "Limit", //最大日志条数
        #     "Value": "5"
        # },{
        #     "Key": "SyntaxRule", // 查不到这个字段也是老语法
        #     "Value": "0"//0:Lucene, 1:CQL
        # }
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigInfo: Array

        attr_accessor :Name, :Type, :Content, :ConfigInfo

        def initialize(name=nil, type=nil, content=nil, configinfo=nil)
          @Name = name
          @Type = type
          @Content = content
          @ConfigInfo = configinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Content = params['Content']
          unless params['ConfigInfo'].nil?
            @ConfigInfo = []
            params['ConfigInfo'].each do |i|
              alarmanalysisconfig_tmp = AlarmAnalysisConfig.new
              alarmanalysisconfig_tmp.deserialize(i)
              @ConfigInfo << alarmanalysisconfig_tmp
            end
          end
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

      # CheckFunction请求参数结构体
      class CheckFunctionRequest < TencentCloud::Common::AbstractModel
        # @param EtlContent: 用户输入的加工语句
        # @type EtlContent: String
        # @param DstResources: 加工任务目的topic_id以及别名
        # @type DstResources: Array
        # @param FuncType: 数据加工目标主题的类型. 1 固定主题 2动态创建
        # @type FuncType: Integer

        attr_accessor :EtlContent, :DstResources, :FuncType

        def initialize(etlcontent=nil, dstresources=nil, functype=nil)
          @EtlContent = etlcontent
          @DstResources = dstresources
          @FuncType = functype
        end

        def deserialize(params)
          @EtlContent = params['EtlContent']
          unless params['DstResources'].nil?
            @DstResources = []
            params['DstResources'].each do |i|
              datatransformresouceinfo_tmp = DataTransformResouceInfo.new
              datatransformresouceinfo_tmp.deserialize(i)
              @DstResources << datatransformresouceinfo_tmp
            end
          end
          @FuncType = params['FuncType']
        end
      end

      # CheckFunction返回参数结构体
      class CheckFunctionResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 失败错误码
        # @type ErrorCode: Integer
        # @param ErrorMsg: 失败错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :ErrorMsg, :RequestId

        def initialize(errorcode=nil, errormsg=nil, requestid=nil)
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # CheckRechargeKafkaServer请求参数结构体
      class CheckRechargeKafkaServerRequest < TencentCloud::Common::AbstractModel
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # @type KafkaType: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID。
        # KafkaType为0时，KafkaInstance必填
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址。
        # KafkaType为1时，ServerAddr必填
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。IsEncryptionAddr参数为true时必填
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`

        attr_accessor :KafkaType, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol

        def initialize(kafkatype=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil)
          @KafkaType = kafkatype
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
        end

        def deserialize(params)
          @KafkaType = params['KafkaType']
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
        end
      end

      # CheckRechargeKafkaServer返回参数结构体
      class CheckRechargeKafkaServerResponse < TencentCloud::Common::AbstractModel
        # @param Status: Kafka集群可访问状态，0：可正常访问 ...
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param FromTopicId: 日志主题ID
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
        # @param Format: 压缩格式，支持gzip、lzop、snappy和none不压缩
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedConfig: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :Type, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :LogType, :ExtractRule, :ExcludePaths, :UpdateTime, :CreateTime, :UserDefineRule, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :AdvancedConfig

        def initialize(configextraid=nil, name=nil, topicid=nil, type=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, logtype=nil, extractrule=nil, excludepaths=nil, updatetime=nil, createtime=nil, userdefinerule=nil, groupid=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, advancedconfig=nil)
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
          @AdvancedConfig = advancedconfig
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
          @AdvancedConfig = params['AdvancedConfig']
        end
      end

      # 采集规则配置信息
      class ConfigInfo < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID
        # @type ConfigId: String
        # @param Name: 采集规则配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedConfig: String

        attr_accessor :ConfigId, :Name, :LogFormat, :Path, :LogType, :ExtractRule, :ExcludePaths, :Output, :UpdateTime, :CreateTime, :UserDefineRule, :AdvancedConfig

        def initialize(configid=nil, name=nil, logformat=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, output=nil, updatetime=nil, createtime=nil, userdefinerule=nil, advancedconfig=nil)
          @ConfigId = configid
          @Name = name
          @LogFormat = logformat
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @Output = output
          @UpdateTime = updatetime
          @CreateTime = createtime
          @UserDefineRule = userdefinerule
          @AdvancedConfig = advancedconfig
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @Name = params['Name']
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
          @AdvancedConfig = params['AdvancedConfig']
        end
      end

      # 投递任务出入参 Content
      class ConsumerContent < TencentCloud::Common::AbstractModel
        # @param EnableTag: 是否投递 TAG 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableTag: Boolean
        # @param MetaFields: 需要投递的元数据列表，目前仅支持：\_\_SOURCE\_\_，\_\_FILENAME\_\_，\_\_TIMESTAMP\_\_，\_\_HOSTNAME\_\_和\_\_PKGID\_\_
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
        # @param FilePaths: 日志文件信息
        # @type FilePaths: Array
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
        # @param CustomLabels: metadata信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLabels: Array

        attr_accessor :Namespace, :Container, :LogPath, :FilePattern, :FilePaths, :IncludeLabels, :WorkLoad, :ExcludeNamespace, :ExcludeLabels, :CustomLabels

        def initialize(namespace=nil, container=nil, logpath=nil, filepattern=nil, filepaths=nil, includelabels=nil, workload=nil, excludenamespace=nil, excludelabels=nil, customlabels=nil)
          @Namespace = namespace
          @Container = container
          @LogPath = logpath
          @FilePattern = filepattern
          @FilePaths = filepaths
          @IncludeLabels = includelabels
          @WorkLoad = workload
          @ExcludeNamespace = excludenamespace
          @ExcludeLabels = excludelabels
          @CustomLabels = customlabels
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Container = params['Container']
          @LogPath = params['LogPath']
          @FilePattern = params['FilePattern']
          unless params['FilePaths'].nil?
            @FilePaths = []
            params['FilePaths'].each do |i|
              filepathinfo_tmp = FilePathInfo.new
              filepathinfo_tmp.deserialize(i)
              @FilePaths << filepathinfo_tmp
            end
          end
          @IncludeLabels = params['IncludeLabels']
          unless params['WorkLoad'].nil?
            @WorkLoad = ContainerWorkLoadInfo.new
            @WorkLoad.deserialize(params['WorkLoad'])
          end
          @ExcludeNamespace = params['ExcludeNamespace']
          @ExcludeLabels = params['ExcludeLabels']
          @CustomLabels = params['CustomLabels']
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
        # @param CustomLabels: metadata信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomLabels: Array

        attr_accessor :AllContainers, :Container, :Namespace, :IncludeLabels, :WorkLoads, :ExcludeNamespace, :ExcludeLabels, :CustomLabels

        def initialize(allcontainers=nil, container=nil, namespace=nil, includelabels=nil, workloads=nil, excludenamespace=nil, excludelabels=nil, customlabels=nil)
          @AllContainers = allcontainers
          @Container = container
          @Namespace = namespace
          @IncludeLabels = includelabels
          @WorkLoads = workloads
          @ExcludeNamespace = excludenamespace
          @ExcludeLabels = excludelabels
          @CustomLabels = customlabels
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
          @CustomLabels = params['CustomLabels']
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

      # cos导入配置信息
      class CosRechargeInfo < TencentCloud::Common::AbstractModel
        # @param Id: COS导入配置ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param TopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param LogsetId: 日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param Name: COS导入任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Bucket: COS存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketRegion: String
        # @param Prefix: COS文件所在文件夹的前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prefix: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文；
        # 默认为minimalist_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogType: String
        # @param Status: 状态   status 0: 已创建, 1: 运行中, 2: 已停止, 3: 已完成, 4: 运行失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Enable: 是否启用:   0： 未启用  ， 1：启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Progress: 进度条百分值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param Compress: supported: "", "gzip", "lzop", "snappy”; 默认空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compress: String
        # @param ExtractRuleInfo: 见： ExtractRuleInfo 结构描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractRuleInfo: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`

        attr_accessor :Id, :TopicId, :LogsetId, :Name, :Bucket, :BucketRegion, :Prefix, :LogType, :Status, :Enable, :CreateTime, :UpdateTime, :Progress, :Compress, :ExtractRuleInfo

        def initialize(id=nil, topicid=nil, logsetid=nil, name=nil, bucket=nil, bucketregion=nil, prefix=nil, logtype=nil, status=nil, enable=nil, createtime=nil, updatetime=nil, progress=nil, compress=nil, extractruleinfo=nil)
          @Id = id
          @TopicId = topicid
          @LogsetId = logsetid
          @Name = name
          @Bucket = bucket
          @BucketRegion = bucketregion
          @Prefix = prefix
          @LogType = logtype
          @Status = status
          @Enable = enable
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Progress = progress
          @Compress = compress
          @ExtractRuleInfo = extractruleinfo
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
          @LogsetId = params['LogsetId']
          @Name = params['Name']
          @Bucket = params['Bucket']
          @BucketRegion = params['BucketRegion']
          @Prefix = params['Prefix']
          @LogType = params['LogType']
          @Status = params['Status']
          @Enable = params['Enable']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Progress = params['Progress']
          @Compress = params['Compress']
          unless params['ExtractRuleInfo'].nil?
            @ExtractRuleInfo = ExtractRuleInfo.new
            @ExtractRuleInfo.deserialize(params['ExtractRuleInfo'])
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
        # @param NoticeRules: 通知规则。

        #  注意:

        # - Type、NoticeReceivers和WebCallbacks是一组配置，NoticeRules是另一组配置，2组配置互斥。

        # @type NoticeRules: Array

        attr_accessor :Name, :Type, :NoticeReceivers, :WebCallbacks, :NoticeRules

        def initialize(name=nil, type=nil, noticereceivers=nil, webcallbacks=nil, noticerules=nil)
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @NoticeRules = noticerules
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
          unless params['NoticeRules'].nil?
            @NoticeRules = []
            params['NoticeRules'].each do |i|
              noticerule_tmp = NoticeRule.new
              noticerule_tmp.deserialize(i)
              @NoticeRules << noticerule_tmp
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
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期，单位是分钟。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知模板列表。
        # @type AlarmNoticeIds: Array
        # @param Condition: 触发条件
        #  注意:
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。
        # @type Condition: String
        # @param AlarmLevel: 告警级别
        # 0:警告(Warn); 1:提醒(Info); 2:紧急 (Critical)。
        # 注意:
        # - 不填则默认为0。
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。
        # @type AlarmLevel: Integer
        # @param MultiConditions: 多触发条件
        #  注意:
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。


        # @type MultiConditions: Array
        # @param Status: 是否开启告警策略。
        # 默认值为true
        # @type Status: Boolean
        # @param Enable: 该参数已废弃，请使用Status参数控制是否开启告警策略。
        # @type Enable: Boolean
        # @param MessageTemplate: 用户自定义告警内容
        # @type MessageTemplate: String
        # @param CallBack: 用户自定义回调
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析
        # @type Analysis: Array
        # @param GroupTriggerStatus: 分组触发状态。
        # 默认值false
        # @type GroupTriggerStatus: Boolean
        # @param GroupTriggerCondition: 分组触发条件。
        # @type GroupTriggerCondition: Array
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的告警策略。

        # 最大支持10个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param MonitorObjectType: 监控对象类型。0:执行语句共用监控对象; 1:每个执行语句单独选择监控对象。
        # 不填则默认为0。
        # 当值为1时，AlarmTargets元素个数不能超过10个，AlarmTargets中的Number必须是从1开始的连续正整数，不能重复。
        # @type MonitorObjectType: Integer
        # @param Classifications: 告警附加分类信息列表。
        # Classifications元素个数不能超过20个。
        # Classifications元素的Key不能为空，不能重复，长度不能超过50个字符，符合正则 `^[a-z]([a-z0-9_]{0,49})$`。
        # Classifications元素的Value长度不能超过200个字符。
        # @type Classifications: Array

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Condition, :AlarmLevel, :MultiConditions, :Status, :Enable, :MessageTemplate, :CallBack, :Analysis, :GroupTriggerStatus, :GroupTriggerCondition, :Tags, :MonitorObjectType, :Classifications

        def initialize(name=nil, alarmtargets=nil, monitortime=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, condition=nil, alarmlevel=nil, multiconditions=nil, status=nil, enable=nil, messagetemplate=nil, callback=nil, analysis=nil, grouptriggerstatus=nil, grouptriggercondition=nil, tags=nil, monitorobjecttype=nil, classifications=nil)
          @Name = name
          @AlarmTargets = alarmtargets
          @MonitorTime = monitortime
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @Condition = condition
          @AlarmLevel = alarmlevel
          @MultiConditions = multiconditions
          @Status = status
          @Enable = enable
          @MessageTemplate = messagetemplate
          @CallBack = callback
          @Analysis = analysis
          @GroupTriggerStatus = grouptriggerstatus
          @GroupTriggerCondition = grouptriggercondition
          @Tags = tags
          @MonitorObjectType = monitorobjecttype
          @Classifications = classifications
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
          @TriggerCount = params['TriggerCount']
          @AlarmPeriod = params['AlarmPeriod']
          @AlarmNoticeIds = params['AlarmNoticeIds']
          @Condition = params['Condition']
          @AlarmLevel = params['AlarmLevel']
          unless params['MultiConditions'].nil?
            @MultiConditions = []
            params['MultiConditions'].each do |i|
              multicondition_tmp = MultiCondition.new
              multicondition_tmp.deserialize(i)
              @MultiConditions << multicondition_tmp
            end
          end
          @Status = params['Status']
          @Enable = params['Enable']
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
          @GroupTriggerStatus = params['GroupTriggerStatus']
          @GroupTriggerCondition = params['GroupTriggerCondition']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @MonitorObjectType = params['MonitorObjectType']
          unless params['Classifications'].nil?
            @Classifications = []
            params['Classifications'].each do |i|
              alarmclassification_tmp = AlarmClassification.new
              alarmclassification_tmp.deserialize(i)
              @Classifications << alarmclassification_tmp
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # @type AdvancedConfig: String

        attr_accessor :Name, :TopicId, :Type, :LogType, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :GroupId, :GroupIds, :AdvancedConfig

        def initialize(name=nil, topicid=nil, type=nil, logtype=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, groupid=nil, groupids=nil, advancedconfig=nil)
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
          @AdvancedConfig = advancedconfig
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
          @AdvancedConfig = params['AdvancedConfig']
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # @type AdvancedConfig: String

        attr_accessor :Name, :Output, :Path, :LogType, :ExtractRule, :ExcludePaths, :UserDefineRule, :AdvancedConfig

        def initialize(name=nil, output=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, advancedconfig=nil)
          @Name = name
          @Output = output
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @UserDefineRule = userdefinerule
          @AdvancedConfig = advancedconfig
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
          @AdvancedConfig = params['AdvancedConfig']
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
        # @param Compression: 投递时压缩方式，取值0，2，3。[0:NONE；2:SNAPPY；3:LZ4]
        # @type Compression: Integer

        attr_accessor :TopicId, :NeedContent, :Content, :Ckafka, :Compression

        def initialize(topicid=nil, needcontent=nil, content=nil, ckafka=nil, compression=nil)
          @TopicId = topicid
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
          @Compression = compression
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
          @Compression = params['Compression']
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

      # CreateCosRecharge请求参数结构体
      class CreateCosRechargeRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题 ID
        # @type TopicId: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param Name: 投递任务名称
        # @type Name: String
        # @param Bucket: COS存储桶。
        # 存储桶命名规范：https://cloud.tencent.com/document/product/436/13312
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域。地域和访问域名：https://cloud.tencent.com/document/product/436/6224
        # @type BucketRegion: String
        # @param Prefix: COS文件所在文件夹的前缀
        # @type Prefix: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文；
        # 默认为minimalist_log
        # @type LogType: String
        # @param Compress: supported: "", "gzip", "lzop", "snappy"; 默认空
        # @type Compress: String
        # @param ExtractRuleInfo: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRuleInfo: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`

        attr_accessor :TopicId, :LogsetId, :Name, :Bucket, :BucketRegion, :Prefix, :LogType, :Compress, :ExtractRuleInfo

        def initialize(topicid=nil, logsetid=nil, name=nil, bucket=nil, bucketregion=nil, prefix=nil, logtype=nil, compress=nil, extractruleinfo=nil)
          @TopicId = topicid
          @LogsetId = logsetid
          @Name = name
          @Bucket = bucket
          @BucketRegion = bucketregion
          @Prefix = prefix
          @LogType = logtype
          @Compress = compress
          @ExtractRuleInfo = extractruleinfo
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @LogsetId = params['LogsetId']
          @Name = params['Name']
          @Bucket = params['Bucket']
          @BucketRegion = params['BucketRegion']
          @Prefix = params['Prefix']
          @LogType = params['LogType']
          @Compress = params['Compress']
          unless params['ExtractRuleInfo'].nil?
            @ExtractRuleInfo = ExtractRuleInfo.new
            @ExtractRuleInfo.deserialize(params['ExtractRuleInfo'])
          end
        end
      end

      # CreateCosRecharge返回参数结构体
      class CreateCosRechargeResponse < TencentCloud::Common::AbstractModel
        # @param Id: cos_recharge记录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataTransform请求参数结构体
      class CreateDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param FuncType: 任务类型. 1: 指定主题；2:动态创建
        # @type FuncType: Integer
        # @param SrcTopicId: 源日志主题
        # @type SrcTopicId: String
        # @param Name: 加工任务名称
        # @type Name: String
        # @param EtlContent: 加工语句
        # @type EtlContent: String
        # @param TaskType: 加工类型  1 使用源日志主题中的随机数据，进行加工预览 :2 使用用户自定义测试数据，进行加工预览 3 创建真实加工任务
        # @type TaskType: Integer
        # @param EnableFlag: 任务启动状态.   默认为1:开启,  2:关闭
        # @type EnableFlag: Integer
        # @param DstResources: 加工任务目的topic_id以及别名,当FuncType=1时，该参数必填，当FuncType=2时，无需填写
        # @type DstResources: Array
        # @param PreviewLogStatistics: 用于预览加工结果的测试数据
        # @type PreviewLogStatistics: Array

        attr_accessor :FuncType, :SrcTopicId, :Name, :EtlContent, :TaskType, :EnableFlag, :DstResources, :PreviewLogStatistics

        def initialize(functype=nil, srctopicid=nil, name=nil, etlcontent=nil, tasktype=nil, enableflag=nil, dstresources=nil, previewlogstatistics=nil)
          @FuncType = functype
          @SrcTopicId = srctopicid
          @Name = name
          @EtlContent = etlcontent
          @TaskType = tasktype
          @EnableFlag = enableflag
          @DstResources = dstresources
          @PreviewLogStatistics = previewlogstatistics
        end

        def deserialize(params)
          @FuncType = params['FuncType']
          @SrcTopicId = params['SrcTopicId']
          @Name = params['Name']
          @EtlContent = params['EtlContent']
          @TaskType = params['TaskType']
          @EnableFlag = params['EnableFlag']
          unless params['DstResources'].nil?
            @DstResources = []
            params['DstResources'].each do |i|
              datatransformresouceinfo_tmp = DataTransformResouceInfo.new
              datatransformresouceinfo_tmp.deserialize(i)
              @DstResources << datatransformresouceinfo_tmp
            end
          end
          unless params['PreviewLogStatistics'].nil?
            @PreviewLogStatistics = []
            params['PreviewLogStatistics'].each do |i|
              previewlogstatistic_tmp = PreviewLogStatistic.new
              previewlogstatistic_tmp.deserialize(i)
              @PreviewLogStatistics << previewlogstatistic_tmp
            end
          end
        end
      end

      # CreateDataTransform返回参数结构体
      class CreateDataTransformResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateDeliverCloudFunction请求参数结构体
      class CreateDeliverCloudFunctionRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递规则属于的 topic id
        # @type TopicId: String
        # @param FunctionName: 投递的云函数名字
        # @type FunctionName: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Qualifier: 函数版本
        # @type Qualifier: String
        # @param Timeout: 投递最长等待时间，单位：秒
        # @type Timeout: Integer
        # @param MaxMsgNum: 投递最大消息数
        # @type MaxMsgNum: Integer

        attr_accessor :TopicId, :FunctionName, :Namespace, :Qualifier, :Timeout, :MaxMsgNum

        def initialize(topicid=nil, functionname=nil, namespace=nil, qualifier=nil, timeout=nil, maxmsgnum=nil)
          @TopicId = topicid
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
          @Timeout = timeout
          @MaxMsgNum = maxmsgnum
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @Timeout = params['Timeout']
          @MaxMsgNum = params['MaxMsgNum']
        end
      end

      # CreateDeliverCloudFunction返回参数结构体
      class CreateDeliverCloudFunctionResponse < TencentCloud::Common::AbstractModel
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
        # @param SyntaxRule: 语法规则,  默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # @type SyntaxRule: Integer

        attr_accessor :TopicId, :Count, :Query, :From, :To, :Order, :Format, :SyntaxRule

        def initialize(topicid=nil, count=nil, query=nil, from=nil, to=nil, order=nil, format=nil, syntaxrule=nil)
          @TopicId = topicid
          @Count = count
          @Query = query
          @From = from
          @To = to
          @Order = order
          @Format = format
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Count = params['Count']
          @Query = params['Query']
          @From = params['From']
          @To = params['To']
          @Order = params['Order']
          @Format = params['Format']
          @SyntaxRule = params['SyntaxRule']
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
        # @param IncludeInternalFields: 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引，默认为false，推荐设置为true
        # * false:不包含
        # * true:包含
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引，默认为0，推荐设置为1
        # * 0:仅包含开启键值索引的元数据字段
        # * 1:包含所有元数据字段
        # * 2:不包含任何元数据字段
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

      # CreateKafkaRecharge请求参数结构体
      class CreateKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 导入CLS目标topic ID
        # @type TopicId: String
        # @param Name: Kafka导入配置名称
        # @type Name: String
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # @type KafkaType: Integer
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开
        # @type UserKafkaTopics: String
        # @param Offset: 导入数据位置，-2:最早（默认），-1：最晚
        # @type Offset: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID，KafkaType为0时必填
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址，KafkaType为1时必填
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接，KafkaType为1时必填
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。
        # KafkaType为1并且IsEncryptionAddr为true时Protocol必填
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param ConsumerGroupName: 用户Kafka消费组名称
        # @type ConsumerGroupName: String
        # @param LogRechargeRule: 日志导入规则。
        # 必填字段。
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`

        attr_accessor :TopicId, :Name, :KafkaType, :UserKafkaTopics, :Offset, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol, :ConsumerGroupName, :LogRechargeRule

        def initialize(topicid=nil, name=nil, kafkatype=nil, userkafkatopics=nil, offset=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil, consumergroupname=nil, logrechargerule=nil)
          @TopicId = topicid
          @Name = name
          @KafkaType = kafkatype
          @UserKafkaTopics = userkafkatopics
          @Offset = offset
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
          @ConsumerGroupName = consumergroupname
          @LogRechargeRule = logrechargerule
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Name = params['Name']
          @KafkaType = params['KafkaType']
          @UserKafkaTopics = params['UserKafkaTopics']
          @Offset = params['Offset']
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
          @ConsumerGroupName = params['ConsumerGroupName']
          unless params['LogRechargeRule'].nil?
            @LogRechargeRule = LogRechargeRuleInfo.new
            @LogRechargeRule.deserialize(params['LogRechargeRule'])
          end
        end
      end

      # CreateKafkaRecharge返回参数结构体
      class CreateKafkaRechargeResponse < TencentCloud::Common::AbstractModel
        # @param Id: Kafka导入配置ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
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
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array
        # @param OSType: 系统类型，默认0，0：Linux，1: Windows
        # @type OSType: Integer

        attr_accessor :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :MetaTags, :OSType

        def initialize(groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, metatags=nil, ostype=nil)
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @MetaTags = metatags
          @OSType = ostype
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
          unless params['MetaTags'].nil?
            @MetaTags = []
            params['MetaTags'].each do |i|
              metataginfo_tmp = MetaTagInfo.new
              metataginfo_tmp.deserialize(i)
              @MetaTags << metataginfo_tmp
            end
          end
          @OSType = params['OSType']
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

      # CreateScheduledSql请求参数结构体
      class CreateScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param SrcTopicId: 源日志主题
        # @type SrcTopicId: String
        # @param Name: 任务名称
        # @type Name: String
        # @param EnableFlag: 任务启动状态.  1开启,  2关闭
        # @type EnableFlag: Integer
        # @param DstResource: 定时SQL分析目标日志主题
        # @type DstResource: :class:`Tencentcloud::Cls.v20201016.models.ScheduledSqlResouceInfo`
        # @param ScheduledSqlContent: 查询语句
        # @type ScheduledSqlContent: String
        # @param ProcessStartTime: 调度开始时间,Unix时间戳，单位ms
        # @type ProcessStartTime: Integer
        # @param ProcessType: 调度类型，1:持续运行 2:指定时间范围
        # @type ProcessType: Integer
        # @param ProcessPeriod: 调度周期(分钟)
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 单次查询的时间窗口,如果您的目标主题为指标主题，建议该参数的大小不超过30分钟，否则可能转指标失败。
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息
        # @type SrcTopicRegion: String
        # @param ProcessEndTime: 调度结束时间，当ProcessType=2时为必传字段, Unix时间戳，单位ms
        # @type ProcessEndTime: Integer
        # @param SyntaxRule: 查询语法规则。 默认值为0。0：Lucene语法，1：CQL语法
        # @type SyntaxRule: Integer

        attr_accessor :SrcTopicId, :Name, :EnableFlag, :DstResource, :ScheduledSqlContent, :ProcessStartTime, :ProcessType, :ProcessPeriod, :ProcessTimeWindow, :ProcessDelay, :SrcTopicRegion, :ProcessEndTime, :SyntaxRule

        def initialize(srctopicid=nil, name=nil, enableflag=nil, dstresource=nil, scheduledsqlcontent=nil, processstarttime=nil, processtype=nil, processperiod=nil, processtimewindow=nil, processdelay=nil, srctopicregion=nil, processendtime=nil, syntaxrule=nil)
          @SrcTopicId = srctopicid
          @Name = name
          @EnableFlag = enableflag
          @DstResource = dstresource
          @ScheduledSqlContent = scheduledsqlcontent
          @ProcessStartTime = processstarttime
          @ProcessType = processtype
          @ProcessPeriod = processperiod
          @ProcessTimeWindow = processtimewindow
          @ProcessDelay = processdelay
          @SrcTopicRegion = srctopicregion
          @ProcessEndTime = processendtime
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @SrcTopicId = params['SrcTopicId']
          @Name = params['Name']
          @EnableFlag = params['EnableFlag']
          unless params['DstResource'].nil?
            @DstResource = ScheduledSqlResouceInfo.new
            @DstResource.deserialize(params['DstResource'])
          end
          @ScheduledSqlContent = params['ScheduledSqlContent']
          @ProcessStartTime = params['ProcessStartTime']
          @ProcessType = params['ProcessType']
          @ProcessPeriod = params['ProcessPeriod']
          @ProcessTimeWindow = params['ProcessTimeWindow']
          @ProcessDelay = params['ProcessDelay']
          @SrcTopicRegion = params['SrcTopicRegion']
          @ProcessEndTime = params['ProcessEndTime']
          @SyntaxRule = params['SyntaxRule']
        end
      end

      # CreateScheduledSql返回参数结构体
      class CreateScheduledSqlResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param MaxSize: 投递的文件的最大值，单位 MB，默认256，范围 5-256
        # @type MaxSize: Integer
        # @param FilterRules: 投递日志的过滤规则，匹配的日志进行投递，各rule之间是and关系，最多5个，数组为空则表示不过滤而全部投递
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`
        # @param FilenameMode: 投递文件命名配置，0：随机数命名，1：投递时间命名，默认0（随机数命名）
        # @type FilenameMode: Integer
        # @param StartTime: 投递数据范围的开始时间点，不能超出日志主题的生命周期起点。如果用户不填写，默认为用户新建投递任务的时间。
        # @type StartTime: Integer
        # @param EndTime: 投递数据范围的结束时间点，不能填写未来时间。如果用户不填写，默认为持续投递，即无限。
        # @type EndTime: Integer

        attr_accessor :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content, :FilenameMode, :StartTime, :EndTime

        def initialize(topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil, filenamemode=nil, starttime=nil, endtime=nil)
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
          @FilenameMode = filenamemode
          @StartTime = starttime
          @EndTime = endtime
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
          @FilenameMode = params['FilenameMode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreateShipper返回参数结构体
      class CreateShipperResponse < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递任务ID
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
        # @param Period: 生命周期，单位天，标准存储取值范围1\~3600，低频存储取值范围7\~3600天。取值为3640时代表永久保存
        # @type Period: Integer
        # @param Describes: 日志主题描述
        # @type Describes: String
        # @param HotPeriod: 0：关闭日志沉降。
        # 非0：开启日志沉降后标准存储的天数。HotPeriod需要大于等于7，且小于Period。仅在StorageType为 hot 时生效
        # @type HotPeriod: Integer
        # @param IsWebTracking: 免鉴权开关； false: 关闭 true： 开启
        # @type IsWebTracking: Boolean

        attr_accessor :LogsetId, :TopicName, :PartitionCount, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period, :Describes, :HotPeriod, :IsWebTracking

        def initialize(logsetid=nil, topicname=nil, partitioncount=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil, describes=nil, hotperiod=nil, iswebtracking=nil)
          @LogsetId = logsetid
          @TopicName = topicname
          @PartitionCount = partitioncount
          @Tags = tags
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @StorageType = storagetype
          @Period = period
          @Describes = describes
          @HotPeriod = hotperiod
          @IsWebTracking = iswebtracking
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
          @Describes = params['Describes']
          @HotPeriod = params['HotPeriod']
          @IsWebTracking = params['IsWebTracking']
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

      # 仪表盘信息
      class DashboardInfo < TencentCloud::Common::AbstractModel
        # @param DashboardId: 仪表盘id
        # @type DashboardId: String
        # @param DashboardName: 仪表盘名字
        # @type DashboardName: String
        # @param Data: 仪表盘数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param CreateTime: 创建仪表盘的时间
        # @type CreateTime: String
        # @param AssumerUin: AssumerUin非空则表示创建该日志主题的服务方Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssumerUin: Integer
        # @param RoleName: RoleName非空则表示创建该日志主题的服务方使用的角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param AssumerName: AssumerName非空则表示创建该日志主题的服务方名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssumerName: String
        # @param Tags: 日志主题绑定的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DashboardRegion: 仪表盘所在地域： 为了兼容老的地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardRegion: String
        # @param UpdateTime: 修改仪表盘的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DashboardTopicInfos: 仪表盘对应的topic相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardTopicInfos: Array

        attr_accessor :DashboardId, :DashboardName, :Data, :CreateTime, :AssumerUin, :RoleName, :AssumerName, :Tags, :DashboardRegion, :UpdateTime, :DashboardTopicInfos

        def initialize(dashboardid=nil, dashboardname=nil, data=nil, createtime=nil, assumeruin=nil, rolename=nil, assumername=nil, tags=nil, dashboardregion=nil, updatetime=nil, dashboardtopicinfos=nil)
          @DashboardId = dashboardid
          @DashboardName = dashboardname
          @Data = data
          @CreateTime = createtime
          @AssumerUin = assumeruin
          @RoleName = rolename
          @AssumerName = assumername
          @Tags = tags
          @DashboardRegion = dashboardregion
          @UpdateTime = updatetime
          @DashboardTopicInfos = dashboardtopicinfos
        end

        def deserialize(params)
          @DashboardId = params['DashboardId']
          @DashboardName = params['DashboardName']
          @Data = params['Data']
          @CreateTime = params['CreateTime']
          @AssumerUin = params['AssumerUin']
          @RoleName = params['RoleName']
          @AssumerName = params['AssumerName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DashboardRegion = params['DashboardRegion']
          @UpdateTime = params['UpdateTime']
          unless params['DashboardTopicInfos'].nil?
            @DashboardTopicInfos = []
            params['DashboardTopicInfos'].each do |i|
              dashboardtopicinfo_tmp = DashboardTopicInfo.new
              dashboardtopicinfo_tmp.deserialize(i)
              @DashboardTopicInfos << dashboardtopicinfo_tmp
            end
          end
        end
      end

      # 仪表盘关联的topic信息
      class DashboardTopicInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题id
        # @type TopicId: String
        # @param Region: topic所在的地域
        # @type Region: String

        attr_accessor :TopicId, :Region

        def initialize(topicid=nil, region=nil)
          @TopicId = topicid
          @Region = region
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Region = params['Region']
        end
      end

      # 数据加工的资源信息
      class DataTransformResouceInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 目标主题id
        # @type TopicId: String
        # @param Alias: 别名
        # @type Alias: String

        attr_accessor :TopicId, :Alias

        def initialize(topicid=nil, _alias=nil)
          @TopicId = topicid
          @Alias = _alias
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Alias = params['Alias']
        end
      end

      # 数据加工任务基本详情
      class DataTransformTaskInfo < TencentCloud::Common::AbstractModel
        # @param Name: 数据加工任务名称
        # @type Name: String
        # @param TaskId: 数据加工任务id
        # @type TaskId: String
        # @param EnableFlag: 任务启用状态，默认为1，正常开启,  2关闭
        # @type EnableFlag: Integer
        # @param Type: 加工任务类型，1： DSL， 2：SQL
        # @type Type: Integer
        # @param SrcTopicId: 源日志主题
        # @type SrcTopicId: String
        # @param Status: 当前加工任务状态（1准备中/2运行中/3停止中/4已停止）
        # @type Status: Integer
        # @param CreateTime: 加工任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间
        # @type UpdateTime: String
        # @param LastEnableTime: 最后启用时间，如果需要重建集群，修改该时间
        # @type LastEnableTime: String
        # @param SrcTopicName: 日志主题名称
        # @type SrcTopicName: String
        # @param LogsetId: 日志集id
        # @type LogsetId: String
        # @param DstResources: 加工任务目的topic_id以及别名
        # @type DstResources: Array
        # @param EtlContent: 加工逻辑函数
        # @type EtlContent: String

        attr_accessor :Name, :TaskId, :EnableFlag, :Type, :SrcTopicId, :Status, :CreateTime, :UpdateTime, :LastEnableTime, :SrcTopicName, :LogsetId, :DstResources, :EtlContent

        def initialize(name=nil, taskid=nil, enableflag=nil, type=nil, srctopicid=nil, status=nil, createtime=nil, updatetime=nil, lastenabletime=nil, srctopicname=nil, logsetid=nil, dstresources=nil, etlcontent=nil)
          @Name = name
          @TaskId = taskid
          @EnableFlag = enableflag
          @Type = type
          @SrcTopicId = srctopicid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LastEnableTime = lastenabletime
          @SrcTopicName = srctopicname
          @LogsetId = logsetid
          @DstResources = dstresources
          @EtlContent = etlcontent
        end

        def deserialize(params)
          @Name = params['Name']
          @TaskId = params['TaskId']
          @EnableFlag = params['EnableFlag']
          @Type = params['Type']
          @SrcTopicId = params['SrcTopicId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LastEnableTime = params['LastEnableTime']
          @SrcTopicName = params['SrcTopicName']
          @LogsetId = params['LogsetId']
          unless params['DstResources'].nil?
            @DstResources = []
            params['DstResources'].each do |i|
              datatransformresouceinfo_tmp = DataTransformResouceInfo.new
              datatransformresouceinfo_tmp.deserialize(i)
              @DstResources << datatransformresouceinfo_tmp
            end
          end
          @EtlContent = params['EtlContent']
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

      # DeleteDataTransform请求参数结构体
      class DeleteDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 数据加工任务id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteDataTransform返回参数结构体
      class DeleteDataTransformResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKafkaRecharge请求参数结构体
      class DeleteKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: Kafka导入配置ID
        # @type Id: String
        # @param TopicId: 导入CLS目标topic ID
        # @type TopicId: String

        attr_accessor :Id, :TopicId

        def initialize(id=nil, topicid=nil)
          @Id = id
          @TopicId = topicid
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
        end
      end

      # DeleteKafkaRecharge返回参数结构体
      class DeleteKafkaRechargeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachineGroupInfo请求参数结构体
      class DeleteMachineGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # @type GroupId: String
        # @param MachineGroupType: 机器组类型
        # 目前type支持 ip 和 label
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`

        attr_accessor :GroupId, :MachineGroupType

        def initialize(groupid=nil, machinegrouptype=nil)
          @GroupId = groupid
          @MachineGroupType = machinegrouptype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['MachineGroupType'].nil?
            @MachineGroupType = MachineGroupTypeInfo.new
            @MachineGroupType.deserialize(params['MachineGroupType'])
          end
        end
      end

      # DeleteMachineGroupInfo返回参数结构体
      class DeleteMachineGroupInfoResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScheduledSql请求参数结构体
      class DeleteScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param SrcTopicId: 源日志主题ID
        # @type SrcTopicId: String

        attr_accessor :TaskId, :SrcTopicId

        def initialize(taskid=nil, srctopicid=nil)
          @TaskId = taskid
          @SrcTopicId = srctopicid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SrcTopicId = params['SrcTopicId']
        end
      end

      # DeleteScheduledSql返回参数结构体
      class DeleteScheduledSqlResponse < TencentCloud::Common::AbstractModel
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

        # <li> deliverFlag
        # 按照【投递状态】进行过滤。
        # 类型：String
        # 必选：否
        # 可选值： "1":未启用,  "2": 已启用, "3":投递异常

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
        # @param Filters: name
        # - 按照【告警策略名称】进行过滤。
        # - 类型：String
        # - 必选：否

        # alarmId
        # - 按照【告警策略ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # topicId
        # - 按照【监控对象的日志主题ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # enable
        # - 按照【启用状态】进行过滤。
        # - 类型：String
        # - 备注：enable参数值范围: 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False。 其它值将返回参数错误信息.
        # - 必选：否

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

      # DescribeAlertRecordHistory请求参数结构体
      class DescribeAlertRecordHistoryRequest < TencentCloud::Common::AbstractModel
        # @param From: 查询时间范围启始时间，毫秒级unix时间戳
        # @type From: Integer
        # @param To: 查询时间范围结束时间，毫秒级unix时间戳
        # @type To: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，最大值100。
        # @type Limit: Integer
        # @param Filters: - alertId：按照告警策略ID进行过滤。类型：String 必选：否
        # - topicId：按照监控对象ID进行过滤。类型：String 必选：否
        # - status：按照告警状态进行过滤。类型：String 必选：否，0代表未恢复，1代表已恢复，2代表已失效
        # - alarmLevel：按照告警等级进行过滤。类型：String 必选：否，0代表警告，1代表提醒，2代表紧急

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array

        attr_accessor :From, :To, :Offset, :Limit, :Filters

        def initialize(from=nil, to=nil, offset=nil, limit=nil, filters=nil)
          @From = from
          @To = to
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
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

      # DescribeAlertRecordHistory返回参数结构体
      class DescribeAlertRecordHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 告警历史总数
        # @type TotalCount: Integer
        # @param Records: 告警历史详情
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Records, :RequestId

        def initialize(totalcount=nil, records=nil, requestid=nil)
          @TotalCount = totalcount
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              alerthistoryrecord_tmp = AlertHistoryRecord.new
              alerthistoryrecord_tmp.deserialize(i)
              @Records << alerthistoryrecord_tmp
            end
          end
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
        # @param Filters: configName
        # - 按照【采集配置名称】进行模糊匹配过滤。
        # - 类型：String
        # - 必选：否

        # configId
        # - 按照【采集配置ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # topicId
        # - 按照【日志主题】进行过滤。
        # - 类型：String
        # - 必选：否

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
        # @param Compression: 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Effective, :NeedContent, :Content, :Ckafka, :Compression, :RequestId

        def initialize(effective=nil, needcontent=nil, content=nil, ckafka=nil, compression=nil, requestid=nil)
          @Effective = effective
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
          @Compression = compression
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
          @Compression = params['Compression']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCosRecharges请求参数结构体
      class DescribeCosRechargesRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题 ID
        # @type TopicId: String
        # @param Status: 状态   status 0: 已创建, 1: 运行中, 2: 已停止, 3: 已完成, 4: 运行失败。
        # @type Status: Integer
        # @param Enable: 是否启用:   0： 未启用  ， 1：启用
        # @type Enable: Integer

        attr_accessor :TopicId, :Status, :Enable

        def initialize(topicid=nil, status=nil, enable=nil)
          @TopicId = topicid
          @Status = status
          @Enable = enable
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Status = params['Status']
          @Enable = params['Enable']
        end
      end

      # DescribeCosRecharges返回参数结构体
      class DescribeCosRechargesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 见: CosRechargeInfo 结构描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              cosrechargeinfo_tmp = CosRechargeInfo.new
              cosrechargeinfo_tmp.deserialize(i)
              @Data << cosrechargeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDashboards请求参数结构体
      class DescribeDashboardsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Filters: <br><li>dashboardId

        # 按照【仪表盘id】进行过滤。
        # 类型：String

        # 必选：否</li>

        # <br><li> dashboardName

        # 按照【仪表盘名字】进行模糊搜索过滤。
        # 类型：String

        # 必选：否</li>

        # <br><li> dashboardRegion

        # 按照【仪表盘地域】进行过滤，为了兼容老的仪表盘，通过云API创建的仪表盘没有地域属性
        # 类型：String

        # 必选：否</li>

        # <br><li> tagKey

        # 按照【标签键】进行过滤。

        # 类型：String

        # 必选：否</li>

        # <br><li> tag:tagKey

        # 按照【标签键值对】进行过滤。tag-key使用具体的标签键进行替换。使用请参考示例2。

        # 类型：String

        # 必选：否</li>

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param TopicIdRegionFilter: 按照topicId和regionId过滤。
        # @type TopicIdRegionFilter: Array

        attr_accessor :Offset, :Limit, :Filters, :TopicIdRegionFilter

        def initialize(offset=nil, limit=nil, filters=nil, topicidregionfilter=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @TopicIdRegionFilter = topicidregionfilter
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
          unless params['TopicIdRegionFilter'].nil?
            @TopicIdRegionFilter = []
            params['TopicIdRegionFilter'].each do |i|
              topicidandregion_tmp = TopicIdAndRegion.new
              topicidandregion_tmp.deserialize(i)
              @TopicIdRegionFilter << topicidandregion_tmp
            end
          end
        end
      end

      # DescribeDashboards返回参数结构体
      class DescribeDashboardsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 仪表盘的数量
        # @type TotalCount: Integer
        # @param DashboardInfos: 仪表盘详细明细
        # @type DashboardInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DashboardInfos, :RequestId

        def initialize(totalcount=nil, dashboardinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @DashboardInfos = dashboardinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DashboardInfos'].nil?
            @DashboardInfos = []
            params['DashboardInfos'].each do |i|
              dashboardinfo_tmp = DashboardInfo.new
              dashboardinfo_tmp.deserialize(i)
              @DashboardInfos << dashboardinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataTransformInfo请求参数结构体
      class DescribeDataTransformInfoRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> taskName

        # 按照【加工任务名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> taskId

        # 按照【加工任务id】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> srctopicId

        # 按照【源topicId】进行过滤。
        # 类型：String

        # 必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Type: 默认值为2.   1: 获取单个任务的详细信息 2：获取任务列表
        # @type Type: Integer
        # @param TaskId: Type为1， 此参数必填
        # @type TaskId: String

        attr_accessor :Filters, :Offset, :Limit, :Type, :TaskId

        def initialize(filters=nil, offset=nil, limit=nil, type=nil, taskid=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Type = type
          @TaskId = taskid
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
          @Type = params['Type']
          @TaskId = params['TaskId']
        end
      end

      # DescribeDataTransformInfo返回参数结构体
      class DescribeDataTransformInfoResponse < TencentCloud::Common::AbstractModel
        # @param DataTransformTaskInfos: 数据加工任务列表信息
        # @type DataTransformTaskInfos: Array
        # @param TotalCount: 任务总次数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataTransformTaskInfos, :TotalCount, :RequestId

        def initialize(datatransformtaskinfos=nil, totalcount=nil, requestid=nil)
          @DataTransformTaskInfos = datatransformtaskinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataTransformTaskInfos'].nil?
            @DataTransformTaskInfos = []
            params['DataTransformTaskInfos'].each do |i|
              datatransformtaskinfo_tmp = DataTransformTaskInfo.new
              datatransformtaskinfo_tmp.deserialize(i)
              @DataTransformTaskInfos << datatransformtaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param IncludeInternalFields: 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引
        # * false:不包含
        # * true:包含
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引
        # * 0:仅包含开启键值索引的元数据字段
        # * 1:包含所有元数据字段
        # * 2:不包含任何元数据字段
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

      # DescribeKafkaConsumer请求参数结构体
      class DescribeKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题ID
        # @type FromTopicId: String

        attr_accessor :FromTopicId

        def initialize(fromtopicid=nil)
          @FromTopicId = fromtopicid
        end

        def deserialize(params)
          @FromTopicId = params['FromTopicId']
        end
      end

      # DescribeKafkaConsumer返回参数结构体
      class DescribeKafkaConsumerResponse < TencentCloud::Common::AbstractModel
        # @param Status: Kafka协议消费是否打开
        # @type Status: Boolean
        # @param TopicID: KafkaConsumer 消费时使用的Topic参数
        # @type TopicID: String
        # @param Compression: 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        # @type Compression: Integer
        # @param ConsumerContent: kafka协议消费数据格式
        # @type ConsumerContent: :class:`Tencentcloud::Cls.v20201016.models.KafkaConsumerContent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :TopicID, :Compression, :ConsumerContent, :RequestId

        def initialize(status=nil, topicid=nil, compression=nil, consumercontent=nil, requestid=nil)
          @Status = status
          @TopicID = topicid
          @Compression = compression
          @ConsumerContent = consumercontent
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @TopicID = params['TopicID']
          @Compression = params['Compression']
          unless params['ConsumerContent'].nil?
            @ConsumerContent = KafkaConsumerContent.new
            @ConsumerContent.deserialize(params['ConsumerContent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafkaRecharges请求参数结构体
      class DescribeKafkaRechargesRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题 ID
        # @type TopicId: String
        # @param Id: 导入配置ID
        # @type Id: String
        # @param Status: 状态   status 1: 运行中, 2: 暂停...
        # @type Status: Integer

        attr_accessor :TopicId, :Id, :Status

        def initialize(topicid=nil, id=nil, status=nil)
          @TopicId = topicid
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # DescribeKafkaRecharges返回参数结构体
      class DescribeKafkaRechargesResponse < TencentCloud::Common::AbstractModel
        # @param Infos: KafkaRechargeInfo 信息列表
        # @type Infos: Array
        # @param TotalCount: Kafka导入信息总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Infos, :TotalCount, :RequestId

        def initialize(infos=nil, totalcount=nil, requestid=nil)
          @Infos = infos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              kafkarechargeinfo_tmp = KafkaRechargeInfo.new
              kafkarechargeinfo_tmp.deserialize(i)
              @Infos << kafkarechargeinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafkaUser请求参数结构体
      class DescribeKafkaUserRequest < TencentCloud::Common::AbstractModel
        # @param UserName: kafka消费用户名
        # @type UserName: String

        attr_accessor :UserName

        def initialize(username=nil)
          @UserName = username
        end

        def deserialize(params)
          @UserName = params['UserName']
        end
      end

      # DescribeKafkaUser返回参数结构体
      class DescribeKafkaUserResponse < TencentCloud::Common::AbstractModel
        # @param UserName: kafka消费用户名
        # @type UserName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserName, :RequestId

        def initialize(username=nil, requestid=nil)
          @UserName = username
          @RequestId = requestid
        end

        def deserialize(params)
          @UserName = params['UserName']
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
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句
        # @type Query: String
        # @param TopicId: 要查询的日志主题ID
        # @type TopicId: String
        # @param Interval: 时间间隔: 单位ms  限制性条件：(To-From) / interval <= 200
        # @type Interval: Integer
        # @param SyntaxRule: 检索语法规则，默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # 详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>
        # @type SyntaxRule: Integer

        attr_accessor :From, :To, :Query, :TopicId, :Interval, :SyntaxRule

        def initialize(from=nil, to=nil, query=nil, topicid=nil, interval=nil, syntaxrule=nil)
          @From = from
          @To = to
          @Query = query
          @TopicId = topicid
          @Interval = interval
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @TopicId = params['TopicId']
          @Interval = params['Interval']
          @SyntaxRule = params['SyntaxRule']
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
        # @param Filters: logsetName
        # - 按照【日志集名称】进行过滤。
        # - 类型：String
        # - 必选：否

        # logsetId
        # - 按照【日志集ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # tagKey
        # - 按照【标签键】进行过滤。
        # - 类型：String
        # - 必选：否

        # tag:tagKey
        # - 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        # - 类型：String
        # - 必选：否

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
        # @param Filters: machineGroupName
        # - 按照【机器组名称】进行过滤。
        # - 类型：String
        # - 必选：否

        # machineGroupId
        # - 按照【机器组ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # osType
        # - 按照【操作系统类型】进行过滤。
        # - 类型：Int
        # - 必选：否

        # tagKey
        # - 按照【标签键】进行过滤。
        # - 类型：String
        # - 必选：否

        # tag:tagKey
        # - 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        # - 类型：String
        # - 必选：否

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

      # DescribeScheduledSqlInfo请求参数结构体
      class DescribeScheduledSqlInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Name: 任务名称。
        # @type Name: String
        # @param TaskId: 任务id。
        # @type TaskId: String
        # @param Filters: <li>srcTopicName按照【源日志主题名称】进行过滤，模糊匹配。类型：String。必选：否</li>
        # <li>dstTopicName按照【目标日志主题名称】进行过滤，模糊匹配。类型：String。必选：否</li>
        # <li>srcTopicId按照【源日志主题ID】进行过滤。类型：String。必选：否</li>
        # <li>dstTopicId按照【目标日志主题ID】进行过滤。类型：String。必选：否</li>
        # <li>bizType按照【主题类型】进行过滤,0日志主题 1指标主题。类型：String。必选：否</li>
        # <li>status按照【任务状态】进行过滤，1:运行 2:停止。类型：String。必选：否</li>
        # <li>taskName按照【任务名称】进行过滤，模糊匹配。类型：String。必选：否</li>
        # <li>taskId按照【任务ID】进行过滤，模糊匹配。类型：String。必选：否</li>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Name, :TaskId, :Filters

        def initialize(offset=nil, limit=nil, name=nil, taskid=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Name = name
          @TaskId = taskid
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Name = params['Name']
          @TaskId = params['TaskId']
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

      # DescribeScheduledSqlInfo返回参数结构体
      class DescribeScheduledSqlInfoResponse < TencentCloud::Common::AbstractModel
        # @param ScheduledSqlTaskInfos: ScheduledSQL任务列表信息
        # @type ScheduledSqlTaskInfos: Array
        # @param TotalCount: 任务总次数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScheduledSqlTaskInfos, :TotalCount, :RequestId

        def initialize(scheduledsqltaskinfos=nil, totalcount=nil, requestid=nil)
          @ScheduledSqlTaskInfos = scheduledsqltaskinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScheduledSqlTaskInfos'].nil?
            @ScheduledSqlTaskInfos = []
            params['ScheduledSqlTaskInfos'].each do |i|
              scheduledsqltaskinfo_tmp = ScheduledSqlTaskInfo.new
              scheduledsqltaskinfo_tmp.deserialize(i)
              @ScheduledSqlTaskInfos << scheduledsqltaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param Filters: - shipperName：按照【投递规则名称】进行过滤。类型：String。必选：否
        # - shipperId：按照【投递规则ID】进行过滤。类型：String。必选：否
        # - topicId：按照【日志主题】进行过滤。类型：String。必选：否

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
        # @param Filters: <li> topicName按照【日志主题名称】进行过滤，默认为模糊匹配，可使用PreciseSearch参数设置为精确匹配。类型：String必选：否<br><li> logsetName按照【日志集名称】进行过滤，默认为模糊匹配，可使用PreciseSearch参数设置为精确匹配。类型：String必选：否<br><li> topicId按照【日志主题ID】进行过滤。类型：String必选：否<br><li> logsetId按照【日志集ID】进行过滤，可通过调用DescribeLogsets查询已创建的日志集列表或登录控制台进行查看；也可以调用CreateLogset创建新的日志集。类型：String必选：否<br><li> tagKey按照【标签键】进行过滤。类型：String必选：否<br><li> tag:tagKey按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换，例如tag:exampleKey。类型：String必选：否<br><li> storageType按照【日志主题的存储类型】进行过滤。可选值 hot（标准存储），cold（低频存储）类型：String必选：否每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param PreciseSearch: 控制Filters相关字段是否为精确匹配。
        # - 0: 默认值，topicName和logsetName模糊匹配
        # - 1: topicName精确匹配
        # - 2: logsetName精确匹配
        # - 3: topicName和logsetName都精确匹配
        # @type PreciseSearch: Integer
        # @param BizType: 主题类型
        # - 0:日志主题，默认值
        # - 1:指标主题
        # @type BizType: Integer

        attr_accessor :Filters, :Offset, :Limit, :PreciseSearch, :BizType

        def initialize(filters=nil, offset=nil, limit=nil, precisesearch=nil, biztype=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @PreciseSearch = precisesearch
          @BizType = biztype
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
          @PreciseSearch = params['PreciseSearch']
          @BizType = params['BizType']
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

      # 动态索引配置，启用后将自动把日志内的字段添加到键值索引字段列表中，包括日志中新增的字段。
      class DynamicIndex < TencentCloud::Common::AbstractModel
        # @param Status: 动态索引配置开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # Windows事件日志采集配置
      class EventLog < TencentCloud::Common::AbstractModel
        # @param EventChannel: 事件通道，支持Application，Security，Setup，System，ALL
        # @type EventChannel: String
        # @param TimeType: 时间类型，1:用户自定义，2:当前时间
        # @type TimeType: Integer
        # @param Timestamp: 时间，用户选择自定义时间类型时，需要指定时间
        # @type Timestamp: Integer
        # @param EventIDs: 事件ID过滤列表
        # @type EventIDs: Array

        attr_accessor :EventChannel, :TimeType, :Timestamp, :EventIDs

        def initialize(eventchannel=nil, timetype=nil, timestamp=nil, eventids=nil)
          @EventChannel = eventchannel
          @TimeType = timetype
          @Timestamp = timestamp
          @EventIDs = eventids
        end

        def deserialize(params)
          @EventChannel = params['EventChannel']
          @TimeType = params['TimeType']
          @Timestamp = params['Timestamp']
          @EventIDs = params['EventIDs']
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
        # @param Status: 日志下载状态。Processing:导出正在进行中，Completed:导出完成，Failed:导出失败，Expired:日志导出已过期(三天有效期), Queuing 排队中
        # @type Status: String
        # @param From: 日志导出起始时间
        # @type From: Integer
        # @param To: 日志导出结束时间
        # @type To: Integer
        # @param CosPath: 日志导出路径
        # @type CosPath: String
        # @param CreateTime: 日志导出创建时间
        # @type CreateTime: String
        # @param SyntaxRule: 语法规则。 默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # @type SyntaxRule: Integer

        attr_accessor :TopicId, :ExportId, :Query, :FileName, :FileSize, :Order, :Format, :Count, :Status, :From, :To, :CosPath, :CreateTime, :SyntaxRule

        def initialize(topicid=nil, exportid=nil, query=nil, filename=nil, filesize=nil, order=nil, format=nil, count=nil, status=nil, from=nil, to=nil, cospath=nil, createtime=nil, syntaxrule=nil)
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
          @SyntaxRule = syntaxrule
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
          @SyntaxRule = params['SyntaxRule']
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
        # @param Keys: 取的每个字段的key名字，为空的key代表丢弃这个字段，只有log_type为delimiter_log时有效，json_log的日志使用json本身的key。限制100个。
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
        # @param IsGBK: 是否为Gbk编码.   0: 否, 1: 是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGBK: Integer
        # @param JsonStandard: 是否为标准json.   0: 否, 1: 是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonStandard: Integer
        # @param Protocol: syslog传输协议，取值为tcp或者udp。
        # 该字段适用于：创建采集规则配置、修改采集规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Address: syslog系统日志采集指定采集器监听的地址和端口 ，形式：[ip]:[port]。举例：127.0.0.1:9000
        # 该字段适用于：创建采集规则配置、修改采集规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param ParseProtocol: rfc3164：指定系统日志采集使用RFC3164协议解析日志。
        # rfc5424：指定系统日志采集使用RFC5424协议解析日志。
        # auto：自动匹配rfc3164或者rfc5424其中一种协议
        # 该字段适用于：创建采集规则配置、修改采集规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParseProtocol: String
        # @param MetadataType: 元数据类型，0: 不使用元数据信息，1:使用机器组元数据，2:使用用户自定义元数据，3:使用采集配置路径，
        # @type MetadataType: Integer
        # @param PathRegex: 采集配置路径正则表达式，MetadataType为3时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathRegex: String
        # @param MetaTags: 用户自定义元数据信息，MetadataType为2时必填
        # @type MetaTags: Array
        # @param EventLogRules: Windows事件日志采集
        # @type EventLogRules: Array

        attr_accessor :TimeKey, :TimeFormat, :Delimiter, :LogRegex, :BeginRegex, :Keys, :FilterKeyRegex, :UnMatchUpLoadSwitch, :UnMatchLogKey, :Backtracking, :IsGBK, :JsonStandard, :Protocol, :Address, :ParseProtocol, :MetadataType, :PathRegex, :MetaTags, :EventLogRules

        def initialize(timekey=nil, timeformat=nil, delimiter=nil, logregex=nil, beginregex=nil, keys=nil, filterkeyregex=nil, unmatchuploadswitch=nil, unmatchlogkey=nil, backtracking=nil, isgbk=nil, jsonstandard=nil, protocol=nil, address=nil, parseprotocol=nil, metadatatype=nil, pathregex=nil, metatags=nil, eventlogrules=nil)
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
          @IsGBK = isgbk
          @JsonStandard = jsonstandard
          @Protocol = protocol
          @Address = address
          @ParseProtocol = parseprotocol
          @MetadataType = metadatatype
          @PathRegex = pathregex
          @MetaTags = metatags
          @EventLogRules = eventlogrules
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
          @IsGBK = params['IsGBK']
          @JsonStandard = params['JsonStandard']
          @Protocol = params['Protocol']
          @Address = params['Address']
          @ParseProtocol = params['ParseProtocol']
          @MetadataType = params['MetadataType']
          @PathRegex = params['PathRegex']
          unless params['MetaTags'].nil?
            @MetaTags = []
            params['MetaTags'].each do |i|
              metataginfo_tmp = MetaTagInfo.new
              metataginfo_tmp.deserialize(i)
              @MetaTags << metataginfo_tmp
            end
          end
          unless params['EventLogRules'].nil?
            @EventLogRules = []
            params['EventLogRules'].each do |i|
              eventlog_tmp = EventLog.new
              eventlog_tmp.deserialize(i)
              @EventLogRules << eventlog_tmp
            end
          end
        end
      end

      # 文件路径信息
      class FilePathInfo < TencentCloud::Common::AbstractModel
        # @param Path: 文件路径
        # @type Path: String
        # @param File: 文件名称
        # @type File: String

        attr_accessor :Path, :File

        def initialize(path=nil, file=nil)
          @Path = path
          @File = file
        end

        def deserialize(params)
          @Path = params['Path']
          @File = params['File']
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
        # 仅支持英文符号、\n\t\r及转义符\；
        # 注意：\n\t\r本身已被转义，直接使用双引号包裹即可作为入参，无需再次转义。使用API Explorer进行调试时请使用JSON参数输入方式，以避免\n\t\r被重复转义
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
        # @param From: 要查询的执行详情的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的执行详情的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询过滤条件，例如：
        # - 按告警策略ID查询：`alert_id:"alarm-0745ec00-e605-xxxx-b50b-54afe61fc971"`
        # - 按监控对象ID查询：`monitored_object:"823d8bfa-76a7-xxxx-8399-8cda74d4009b" `
        # - 按告警策略ID及监控对象ID查询：`alert_id:"alarm-0745ec00-e605-xxxx-b50b-54afe61fc971" AND monitored_object:"823d8bfa-76a7-xxxx-8399-8cda74d4009b"`
        # - 按告警策略ID及监控对象ID查询支持SQL语句：`(alert_id:"alarm-5ce45495-09e8-4d58-xxxx-768134bf330c") AND (monitored_object:"3c514e84-6f1f-46ec-xxxx-05de6163f7fe") AND NOT condition_evaluate_result: "Skip" AND condition_evaluate_result:[* TO *] | SELECT count(*) as top50StatisticsTotalCount, count_if(condition_evaluate_result='ProcessError') as top50StatisticsFailureCount, count_if(notification_send_result!='NotSend') as top50NoticeTotalCount, count_if(notification_send_result='SendPartFail' or notification_send_result='SendFail') as top50NoticeFailureCount, alert_id, alert_name, monitored_object, topic_type, happen_threshold, alert_threshold, notify_template group by alert_id, alert_name, monitored_object,topic_type, happen_threshold, alert_threshold, notify_template order by top50StatisticsTotalCount desc limit 1`
        # @type Query: String
        # @param Limit: 单次查询返回的执行详情条数，最大值为1000
        # @type Limit: Integer
        # @param Context: 加载更多详情时使用，透传上次返回的Context值，获取后续的执行详情
        # @type Context: String
        # @param Sort: 执行详情是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String
        # @param UseNewAnalysis: 如果Query包含SQL语句，UseNewAnalysis为true时响应参数AnalysisRecords和Columns有效， UseNewAnalysis为false时响应参数AnalysisResults和ColNames有效
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
        # @param Context: 加载后续详情的Context
        # @type Context: String
        # @param ListOver: 指定时间范围内的告警执行详情是否完整返回
        # @type ListOver: Boolean
        # @param Analysis: 返回的结果是否为SQL分析结果
        # @type Analysis: Boolean
        # @param ColNames: 分析结果的列名，如果Query语句有SQL查询，则返回查询字段的列名；
        # 否则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColNames: Array
        # @param Results: 执行详情查询结果。

        # 当Query字段无SQL语句时，返回查询结果。
        # 当Query字段有SQL语句时，可能返回null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param AnalysisResults: 执行详情统计分析结果。当Query字段有SQL语句时，返回sql统计结果，否则可能返回null。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisResults: Array
        # @param AnalysisRecords: 执行详情统计分析结果; UseNewAnalysis为true有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisRecords: Array
        # @param Columns: 分析结果的列名， UseNewAnalysis为true有效
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

      # 分组触发条件
      class GroupTriggerConditionInfo < TencentCloud::Common::AbstractModel
        # @param Key: 分组触发字段名称
        # @type Key: String
        # @param Value: 分组触发字段值
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
        # @param MetaFields: 元数据信息列表, 可选值为 __SOURCE__、__FILENAME__、__TIMESTAMP__、__HOSTNAME__。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaFields: Array
        # @param JsonType: 投递Json格式，0：字符串方式投递；1:以结构化方式投递
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonType: Integer

        attr_accessor :EnableTag, :MetaFields, :JsonType

        def initialize(enabletag=nil, metafields=nil, jsontype=nil)
          @EnableTag = enabletag
          @MetaFields = metafields
          @JsonType = jsontype
        end

        def deserialize(params)
          @EnableTag = params['EnableTag']
          @MetaFields = params['MetaFields']
          @JsonType = params['JsonType']
        end
      end

      # kafka协议消费内容
      class KafkaConsumerContent < TencentCloud::Common::AbstractModel
        # @param Format: 消费格式 0:全文；1:json
        # @type Format: Integer
        # @param EnableTag: 是否投递 TAG 信息
        # Format为0时，此字段不需要赋值
        # @type EnableTag: Boolean
        # @param MetaFields: 元数据信息列表, 可选值为：\_\_SOURCE\_\_、\_\_FILENAME\_\_
        # 、\_\_TIMESTAMP\_\_、\_\_HOSTNAME\_\_、\_\_PKGID\_\_
        # Format为0时，此字段不需要赋值
        # @type MetaFields: Array
        # @param TagTransaction: tag数据处理方式：
        # 1:不平铺（默认值）
        # 2:平铺
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTransaction: Integer
        # @param JsonType: 消费数据Json格式：
        # 1：不转义（默认格式）
        # 2：转义
        # @type JsonType: Integer

        attr_accessor :Format, :EnableTag, :MetaFields, :TagTransaction, :JsonType

        def initialize(format=nil, enabletag=nil, metafields=nil, tagtransaction=nil, jsontype=nil)
          @Format = format
          @EnableTag = enabletag
          @MetaFields = metafields
          @TagTransaction = tagtransaction
          @JsonType = jsontype
        end

        def deserialize(params)
          @Format = params['Format']
          @EnableTag = params['EnableTag']
          @MetaFields = params['MetaFields']
          @TagTransaction = params['TagTransaction']
          @JsonType = params['JsonType']
        end
      end

      # Kafka访问协议
      class KafkaProtocolInfo < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议类型，支持的协议类型包括 plaintext、sasl_plaintext 或 sasl_ssl。建议使用 sasl_ssl，此协议会进行连接加密同时需要用户认证。
        # 入参必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Mechanism: 加密类型，支持 PLAIN、SCRAM-SHA-256 或 SCRAM-SHA-512。
        # 当Protocol为sasl_plaintext或sasl_ssl时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mechanism: String
        # @param UserName: 用户名。
        # 当Protocol为sasl_plaintext或sasl_ssl时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: 用户密码。
        # 当Protocol为sasl_plaintext或sasl_ssl时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String

        attr_accessor :Protocol, :Mechanism, :UserName, :Password

        def initialize(protocol=nil, mechanism=nil, username=nil, password=nil)
          @Protocol = protocol
          @Mechanism = mechanism
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Mechanism = params['Mechanism']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # Kafka导入配置信息
      class KafkaRechargeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param TopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param Name: Kafka导入任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaType: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID，KafkaType为0时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议，IsEncryptionAddr参数为true时必填
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserKafkaTopics: String
        # @param ConsumerGroupName: 用户Kafka消费组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerGroupName: String
        # @param Status: 状态   status 1: 运行中, 2: 暂停 ...
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Offset: 导入数据位置，-2:最早（默认），-1：最晚
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param LogRechargeRule: 日志导入规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`

        attr_accessor :Id, :TopicId, :Name, :KafkaType, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol, :UserKafkaTopics, :ConsumerGroupName, :Status, :Offset, :CreateTime, :UpdateTime, :LogRechargeRule

        def initialize(id=nil, topicid=nil, name=nil, kafkatype=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil, userkafkatopics=nil, consumergroupname=nil, status=nil, offset=nil, createtime=nil, updatetime=nil, logrechargerule=nil)
          @Id = id
          @TopicId = topicid
          @Name = name
          @KafkaType = kafkatype
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
          @UserKafkaTopics = userkafkatopics
          @ConsumerGroupName = consumergroupname
          @Status = status
          @Offset = offset
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LogRechargeRule = logrechargerule
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
          @Name = params['Name']
          @KafkaType = params['KafkaType']
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
          @UserKafkaTopics = params['UserKafkaTopics']
          @ConsumerGroupName = params['ConsumerGroupName']
          @Status = params['Status']
          @Offset = params['Offset']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['LogRechargeRule'].nil?
            @LogRechargeRule = LogRechargeRuleInfo.new
            @LogRechargeRule.deserialize(params['LogRechargeRule'])
          end
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
        # @param Key: 需要配置键值或者元字段索引的字段名称，仅支持字母、数字、下划线和-./@，且不能以下划线开头

        # 注意：
        # 1，元字段（tag）的Key无需额外添加`__TAG__.`前缀，与上传日志时对应的字段Key一致即可，腾讯云控制台展示时将自动添加`__TAG__.`前缀
        # 2，键值索引（KeyValue）及元字段索引（Tag）中的Key总数不能超过300
        # 3，Key的层级不能超过10层，例如a.b.c.d.e.f.g.h.j.k
        # 4，不允许同时包含json父子级字段，例如a及a.b
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
        # @param RawLog: 原始日志(仅在日志创建索引异常时有值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawLog: String
        # @param IndexStatus: 日志创建索引异常原因(仅在日志创建索引异常时有值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStatus: String

        attr_accessor :Source, :Filename, :Content, :PkgId, :PkgLogId, :BTime, :HostName, :RawLog, :IndexStatus

        def initialize(source=nil, filename=nil, content=nil, pkgid=nil, pkglogid=nil, btime=nil, hostname=nil, rawlog=nil, indexstatus=nil)
          @Source = source
          @Filename = filename
          @Content = content
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @BTime = btime
          @HostName = hostname
          @RawLog = rawlog
          @IndexStatus = indexstatus
        end

        def deserialize(params)
          @Source = params['Source']
          @Filename = params['Filename']
          @Content = params['Content']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @BTime = params['BTime']
          @HostName = params['HostName']
          @RawLog = params['RawLog']
          @IndexStatus = params['IndexStatus']
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
        # @param RawLog: 原始日志(仅在日志创建索引异常时有值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawLog: String
        # @param IndexStatus: 日志创建索引异常原因(仅在日志创建索引异常时有值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStatus: String

        attr_accessor :Time, :TopicId, :TopicName, :Source, :FileName, :PkgId, :PkgLogId, :LogJson, :HostName, :RawLog, :IndexStatus

        def initialize(time=nil, topicid=nil, topicname=nil, source=nil, filename=nil, pkgid=nil, pkglogid=nil, logjson=nil, hostname=nil, rawlog=nil, indexstatus=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @Source = source
          @FileName = filename
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @LogJson = logjson
          @HostName = hostname
          @RawLog = rawlog
          @IndexStatus = indexstatus
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
          @RawLog = params['RawLog']
          @IndexStatus = params['IndexStatus']
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

      # 日志导入规则
      class LogRechargeRuleInfo < TencentCloud::Common::AbstractModel
        # @param RechargeType: 导入类型，支持json_log：json格式日志，minimalist_log: 单行全文，fullregex_log: 单行完全正则
        # @type RechargeType: String
        # @param EncodingFormat: 解析编码格式，0: UTF-8（默认值），1: GBK
        # @type EncodingFormat: Integer
        # @param DefaultTimeSwitch: 使用默认时间，true：开启（默认值）， flase：关闭
        # @type DefaultTimeSwitch: Boolean
        # @param LogRegex: 整条日志匹配规则，只有RechargeType为fullregex_log时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRegex: String
        # @param UnMatchLogSwitch: 解析失败日志是否上传，true表示上传，false表示不上传
        # @type UnMatchLogSwitch: Boolean
        # @param UnMatchLogKey: 解析失败日志的键名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchLogKey: String
        # @param UnMatchLogTimeSrc: 解析失败日志时间来源，0: 系统当前时间，1: Kafka消息时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchLogTimeSrc: Integer
        # @param DefaultTimeSrc: 默认时间来源，0: 系统当前时间，1: Kafka消息时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultTimeSrc: Integer
        # @param TimeKey: 时间字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeKey: String
        # @param TimeRegex: 时间提取正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeRegex: String
        # @param TimeFormat: 时间字段格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeFormat: String
        # @param TimeZone: 时间字段时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param Metadata: 元数据信息，Kafka导入支持kafka_topic,kafka_partition,kafka_offset,kafka_timestamp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: Array
        # @param Keys: 日志Key列表，RechargeType为full_regex_log时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array

        attr_accessor :RechargeType, :EncodingFormat, :DefaultTimeSwitch, :LogRegex, :UnMatchLogSwitch, :UnMatchLogKey, :UnMatchLogTimeSrc, :DefaultTimeSrc, :TimeKey, :TimeRegex, :TimeFormat, :TimeZone, :Metadata, :Keys

        def initialize(rechargetype=nil, encodingformat=nil, defaulttimeswitch=nil, logregex=nil, unmatchlogswitch=nil, unmatchlogkey=nil, unmatchlogtimesrc=nil, defaulttimesrc=nil, timekey=nil, timeregex=nil, timeformat=nil, timezone=nil, metadata=nil, keys=nil)
          @RechargeType = rechargetype
          @EncodingFormat = encodingformat
          @DefaultTimeSwitch = defaulttimeswitch
          @LogRegex = logregex
          @UnMatchLogSwitch = unmatchlogswitch
          @UnMatchLogKey = unmatchlogkey
          @UnMatchLogTimeSrc = unmatchlogtimesrc
          @DefaultTimeSrc = defaulttimesrc
          @TimeKey = timekey
          @TimeRegex = timeregex
          @TimeFormat = timeformat
          @TimeZone = timezone
          @Metadata = metadata
          @Keys = keys
        end

        def deserialize(params)
          @RechargeType = params['RechargeType']
          @EncodingFormat = params['EncodingFormat']
          @DefaultTimeSwitch = params['DefaultTimeSwitch']
          @LogRegex = params['LogRegex']
          @UnMatchLogSwitch = params['UnMatchLogSwitch']
          @UnMatchLogKey = params['UnMatchLogKey']
          @UnMatchLogTimeSrc = params['UnMatchLogTimeSrc']
          @DefaultTimeSrc = params['DefaultTimeSrc']
          @TimeKey = params['TimeKey']
          @TimeRegex = params['TimeRegex']
          @TimeFormat = params['TimeFormat']
          @TimeZone = params['TimeZone']
          @Metadata = params['Metadata']
          @Keys = params['Keys']
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
        # @param AssumerName: 云产品标识，日志集由其它云产品创建时，该字段会显示云产品名称，例如CDN、TKE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssumerName: String
        # @param Tags: 日志集绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param TopicCount: 日志集下日志主题的数目
        # @type TopicCount: Integer
        # @param RoleName: 若AssumerName非空，则表示创建该日志集的服务方角色
        # @type RoleName: String

        attr_accessor :LogsetId, :LogsetName, :CreateTime, :AssumerName, :Tags, :TopicCount, :RoleName

        def initialize(logsetid=nil, logsetname=nil, createtime=nil, assumername=nil, tags=nil, topiccount=nil, rolename=nil)
          @LogsetId = logsetid
          @LogsetName = logsetname
          @CreateTime = createtime
          @AssumerName = assumername
          @Tags = tags
          @TopicCount = topiccount
          @RoleName = rolename
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @CreateTime = params['CreateTime']
          @AssumerName = params['AssumerName']
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
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array
        # @param OSType: 操作系统类型，0: Linux，1: windows
        # @type OSType: Integer

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :CreateTime, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :MetaTags, :OSType

        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, createtime=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, metatags=nil, ostype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @CreateTime = createtime
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @MetaTags = metatags
          @OSType = ostype
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
          unless params['MetaTags'].nil?
            @MetaTags = []
            params['MetaTags'].each do |i|
              metataginfo_tmp = MetaTagInfo.new
              metataginfo_tmp.deserialize(i)
              @MetaTags << metataginfo_tmp
            end
          end
          @OSType = params['OSType']
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
        # @param InstanceID: 机器实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
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

        attr_accessor :Ip, :InstanceID, :Status, :OfflineTime, :AutoUpdate, :Version, :UpdateStatus, :ErrCode, :ErrMsg

        def initialize(ip=nil, instanceid=nil, status=nil, offlinetime=nil, autoupdate=nil, version=nil, updatestatus=nil, errcode=nil, errmsg=nil)
          @Ip = ip
          @InstanceID = instanceid
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
          @InstanceID = params['InstanceID']
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

      # 元数据信息
      class MetaTagInfo < TencentCloud::Common::AbstractModel
        # @param Key: 元数据key
        # @type Key: String
        # @param Value: 元数据value
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

      # 过滤器
      class MetricLabel < TencentCloud::Common::AbstractModel
        # @param Key: 指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 指标内容
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
        # @param NoticeRules: 通知规则。

        # 注意:

        # - Type、NoticeReceivers和WebCallbacks是一组配置，NoticeRules是另一组配置，2组配置互斥。
        # - 传其中一组数据，则另一组数据置空。
        # @type NoticeRules: Array

        attr_accessor :AlarmNoticeId, :Name, :Type, :NoticeReceivers, :WebCallbacks, :NoticeRules

        def initialize(alarmnoticeid=nil, name=nil, type=nil, noticereceivers=nil, webcallbacks=nil, noticerules=nil)
          @AlarmNoticeId = alarmnoticeid
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @NoticeRules = noticerules
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
          unless params['NoticeRules'].nil?
            @NoticeRules = []
            params['NoticeRules'].each do |i|
              noticerule_tmp = NoticeRule.new
              noticerule_tmp.deserialize(i)
              @NoticeRules << noticerule_tmp
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

        # 注意:
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。
        # @type Condition: String
        # @param AlarmLevel: 告警级别。

        # 0:警告(Warn);1:提醒(Info);2:紧急 (Critical)

        # 注意:
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。
        # @type AlarmLevel: Integer
        # @param MultiConditions: 多触发条件。

        # 注意:
        # - Condition和AlarmLevel是一组配置，MultiConditions是另一组配置，2组配置互斥。
        # @type MultiConditions: Array
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
        # @param Enable: 该参数已废弃，请使用Status参数控制是否开启告警策略。
        # @type Enable: Boolean
        # @param MessageTemplate: 用户自定义告警内容
        # @type MessageTemplate: String
        # @param CallBack: 用户自定义回调
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析
        # @type Analysis: Array
        # @param GroupTriggerStatus: 分组触发状态。true：开启，false：关闭（默认）
        # @type GroupTriggerStatus: Boolean
        # @param GroupTriggerCondition: 分组触发条件。
        # @type GroupTriggerCondition: Array
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的告警策略。最大支持10个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param MonitorObjectType: 监控对象类型。0:执行语句共用监控对象; 1:每个执行语句单独选择监控对象。
        # 当值为1时，AlarmTargets元素个数不能超过10个，AlarmTargets中的Number必须是从1开始的连续正整数，不能重复。
        # @type MonitorObjectType: Integer
        # @param Classifications: 告警附加分类信息列表。
        # Classifications元素个数不能超过20个。
        # Classifications元素的Key不能为空，不能重复，长度不能超过50个字符，符合正则 `^[a-z]([a-z0-9_]{0,49})$`。
        # Classifications元素的Value长度不能超过200个字符。
        # @type Classifications: Array

        attr_accessor :AlarmId, :Name, :MonitorTime, :Condition, :AlarmLevel, :MultiConditions, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :AlarmTargets, :Status, :Enable, :MessageTemplate, :CallBack, :Analysis, :GroupTriggerStatus, :GroupTriggerCondition, :Tags, :MonitorObjectType, :Classifications

        def initialize(alarmid=nil, name=nil, monitortime=nil, condition=nil, alarmlevel=nil, multiconditions=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, alarmtargets=nil, status=nil, enable=nil, messagetemplate=nil, callback=nil, analysis=nil, grouptriggerstatus=nil, grouptriggercondition=nil, tags=nil, monitorobjecttype=nil, classifications=nil)
          @AlarmId = alarmid
          @Name = name
          @MonitorTime = monitortime
          @Condition = condition
          @AlarmLevel = alarmlevel
          @MultiConditions = multiconditions
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @AlarmTargets = alarmtargets
          @Status = status
          @Enable = enable
          @MessageTemplate = messagetemplate
          @CallBack = callback
          @Analysis = analysis
          @GroupTriggerStatus = grouptriggerstatus
          @GroupTriggerCondition = grouptriggercondition
          @Tags = tags
          @MonitorObjectType = monitorobjecttype
          @Classifications = classifications
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @Name = params['Name']
          unless params['MonitorTime'].nil?
            @MonitorTime = MonitorTime.new
            @MonitorTime.deserialize(params['MonitorTime'])
          end
          @Condition = params['Condition']
          @AlarmLevel = params['AlarmLevel']
          unless params['MultiConditions'].nil?
            @MultiConditions = []
            params['MultiConditions'].each do |i|
              multicondition_tmp = MultiCondition.new
              multicondition_tmp.deserialize(i)
              @MultiConditions << multicondition_tmp
            end
          end
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
          @Enable = params['Enable']
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
          @GroupTriggerStatus = params['GroupTriggerStatus']
          @GroupTriggerCondition = params['GroupTriggerCondition']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @MonitorObjectType = params['MonitorObjectType']
          unless params['Classifications'].nil?
            @Classifications = []
            params['Classifications'].each do |i|
              alarmclassification_tmp = AlarmClassification.new
              alarmclassification_tmp.deserialize(i)
              @Classifications << alarmclassification_tmp
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # @type AdvancedConfig: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :HostFile, :ContainerFile, :ContainerStdout, :LogType, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :Type, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :AdvancedConfig

        def initialize(configextraid=nil, name=nil, topicid=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logtype=nil, logformat=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, type=nil, groupid=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, advancedconfig=nil)
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
          @AdvancedConfig = advancedconfig
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
          @AdvancedConfig = params['AdvancedConfig']
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
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # @type AdvancedConfig: String

        attr_accessor :ConfigId, :Name, :Path, :LogType, :ExtractRule, :ExcludePaths, :Output, :UserDefineRule, :AdvancedConfig

        def initialize(configid=nil, name=nil, path=nil, logtype=nil, extractrule=nil, excludepaths=nil, output=nil, userdefinerule=nil, advancedconfig=nil)
          @ConfigId = configid
          @Name = name
          @Path = path
          @LogType = logtype
          @ExtractRule = extractrule
          @ExcludePaths = excludepaths
          @Output = output
          @UserDefineRule = userdefinerule
          @AdvancedConfig = advancedconfig
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
          @AdvancedConfig = params['AdvancedConfig']
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
        # @param Compression: 投递时压缩方式，取值0，2，3。[0:NONE；2:SNAPPY；3:LZ4]
        # @type Compression: Integer

        attr_accessor :TopicId, :Effective, :NeedContent, :Content, :Ckafka, :Compression

        def initialize(topicid=nil, effective=nil, needcontent=nil, content=nil, ckafka=nil, compression=nil)
          @TopicId = topicid
          @Effective = effective
          @NeedContent = needcontent
          @Content = content
          @Ckafka = ckafka
          @Compression = compression
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
          @Compression = params['Compression']
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

      # ModifyCosRecharge请求参数结构体
      class ModifyCosRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: COS导入配置ID
        # @type Id: String
        # @param TopicId: 日志主题Id
        # @type TopicId: String
        # @param Name: COS导入任务名称
        # @type Name: String
        # @param Enable: 是否启用:   0： 未启用  ， 1：启用
        # @type Enable: Integer

        attr_accessor :Id, :TopicId, :Name, :Enable

        def initialize(id=nil, topicid=nil, name=nil, enable=nil)
          @Id = id
          @TopicId = topicid
          @Name = name
          @Enable = enable
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
          @Name = params['Name']
          @Enable = params['Enable']
        end
      end

      # ModifyCosRecharge返回参数结构体
      class ModifyCosRechargeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDataTransform请求参数结构体
      class ModifyDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 加工任务id
        # @type TaskId: String
        # @param Name: 加工任务名称
        # @type Name: String
        # @param EtlContent: 加工语句
        # @type EtlContent: String
        # @param EnableFlag: 任务启动状态. 默认为1，开启,  2关闭
        # @type EnableFlag: Integer
        # @param DstResources: 加工任务目的topic_id以及别名
        # @type DstResources: Array
        # @param HasServicesLog: 是否开启投递服务日志。1关闭，2开启
        # @type HasServicesLog: Integer

        attr_accessor :TaskId, :Name, :EtlContent, :EnableFlag, :DstResources, :HasServicesLog

        def initialize(taskid=nil, name=nil, etlcontent=nil, enableflag=nil, dstresources=nil, hasserviceslog=nil)
          @TaskId = taskid
          @Name = name
          @EtlContent = etlcontent
          @EnableFlag = enableflag
          @DstResources = dstresources
          @HasServicesLog = hasserviceslog
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @EtlContent = params['EtlContent']
          @EnableFlag = params['EnableFlag']
          unless params['DstResources'].nil?
            @DstResources = []
            params['DstResources'].each do |i|
              datatransformresouceinfo_tmp = DataTransformResouceInfo.new
              datatransformresouceinfo_tmp.deserialize(i)
              @DstResources << datatransformresouceinfo_tmp
            end
          end
          @HasServicesLog = params['HasServicesLog']
        end
      end

      # ModifyDataTransform返回参数结构体
      class ModifyDataTransformResponse < TencentCloud::Common::AbstractModel
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
        # @param IncludeInternalFields: 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引，默认为false，推荐设置为true
        # * false:不包含
        # * true:包含
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引，默认为0，推荐设置为1
        # * 0:仅包含开启键值索引的元数据字段
        # * 1:包含所有元数据字段
        # * 2:不包含任何元数据字段
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

      # ModifyKafkaConsumer请求参数结构体
      class ModifyKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题ID
        # @type FromTopicId: String
        # @param Compression: 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        # @type Compression: Integer
        # @param ConsumerContent: kafka协议消费数据格式
        # @type ConsumerContent: :class:`Tencentcloud::Cls.v20201016.models.KafkaConsumerContent`

        attr_accessor :FromTopicId, :Compression, :ConsumerContent

        def initialize(fromtopicid=nil, compression=nil, consumercontent=nil)
          @FromTopicId = fromtopicid
          @Compression = compression
          @ConsumerContent = consumercontent
        end

        def deserialize(params)
          @FromTopicId = params['FromTopicId']
          @Compression = params['Compression']
          unless params['ConsumerContent'].nil?
            @ConsumerContent = KafkaConsumerContent.new
            @ConsumerContent.deserialize(params['ConsumerContent'])
          end
        end
      end

      # ModifyKafkaConsumer返回参数结构体
      class ModifyKafkaConsumerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKafkaRecharge请求参数结构体
      class ModifyKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: Kafka导入配置ID
        # @type Id: String
        # @param TopicId: 导入CLS目标topic ID
        # @type TopicId: String
        # @param Name: Kafka导入配置名称
        # @type Name: String
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # @type KafkaType: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID，KafkaType为0时必填
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议，IsEncryptionAddr参数为true时必填
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开
        # @type UserKafkaTopics: String
        # @param ConsumerGroupName: 用户Kafka消费组名称
        # @type ConsumerGroupName: String
        # @param LogRechargeRule: 日志导入规则
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`
        # @param StatusControl: 导入控制，1：暂停，2：继续
        # @type StatusControl: Integer

        attr_accessor :Id, :TopicId, :Name, :KafkaType, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol, :UserKafkaTopics, :ConsumerGroupName, :LogRechargeRule, :StatusControl

        def initialize(id=nil, topicid=nil, name=nil, kafkatype=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil, userkafkatopics=nil, consumergroupname=nil, logrechargerule=nil, statuscontrol=nil)
          @Id = id
          @TopicId = topicid
          @Name = name
          @KafkaType = kafkatype
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
          @UserKafkaTopics = userkafkatopics
          @ConsumerGroupName = consumergroupname
          @LogRechargeRule = logrechargerule
          @StatusControl = statuscontrol
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
          @Name = params['Name']
          @KafkaType = params['KafkaType']
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
          @UserKafkaTopics = params['UserKafkaTopics']
          @ConsumerGroupName = params['ConsumerGroupName']
          unless params['LogRechargeRule'].nil?
            @LogRechargeRule = LogRechargeRuleInfo.new
            @LogRechargeRule.deserialize(params['LogRechargeRule'])
          end
          @StatusControl = params['StatusControl']
        end
      end

      # ModifyKafkaRecharge返回参数结构体
      class ModifyKafkaRechargeResponse < TencentCloud::Common::AbstractModel
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
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :MetaTags

        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, metatags=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @MetaTags = metatags
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
          unless params['MetaTags'].nil?
            @MetaTags = []
            params['MetaTags'].each do |i|
              metataginfo_tmp = MetaTagInfo.new
              metataginfo_tmp.deserialize(i)
              @MetaTags << metataginfo_tmp
            end
          end
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

      # ModifyScheduledSql请求参数结构体
      class ModifyScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param SrcTopicId: 源日志主题
        # @type SrcTopicId: String
        # @param EnableFlag: 任务启动状态.   1开启,  2关闭
        # @type EnableFlag: Integer
        # @param DstResource: 定时SQL分析的目标日志主题
        # @type DstResource: :class:`Tencentcloud::Cls.v20201016.models.ScheduledSqlResouceInfo`
        # @param ScheduledSqlContent: 查询语句
        # @type ScheduledSqlContent: String
        # @param ProcessPeriod: 调度周期(分钟)
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 单次查询的时间窗口. 例子中为近15分钟
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息
        # @type SrcTopicRegion: String
        # @param Name: 任务名称
        # @type Name: String
        # @param SyntaxRule: 语法规则。 默认值为0。 0：Lucene语法，1：CQL语法
        # @type SyntaxRule: Integer

        attr_accessor :TaskId, :SrcTopicId, :EnableFlag, :DstResource, :ScheduledSqlContent, :ProcessPeriod, :ProcessTimeWindow, :ProcessDelay, :SrcTopicRegion, :Name, :SyntaxRule

        def initialize(taskid=nil, srctopicid=nil, enableflag=nil, dstresource=nil, scheduledsqlcontent=nil, processperiod=nil, processtimewindow=nil, processdelay=nil, srctopicregion=nil, name=nil, syntaxrule=nil)
          @TaskId = taskid
          @SrcTopicId = srctopicid
          @EnableFlag = enableflag
          @DstResource = dstresource
          @ScheduledSqlContent = scheduledsqlcontent
          @ProcessPeriod = processperiod
          @ProcessTimeWindow = processtimewindow
          @ProcessDelay = processdelay
          @SrcTopicRegion = srctopicregion
          @Name = name
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SrcTopicId = params['SrcTopicId']
          @EnableFlag = params['EnableFlag']
          unless params['DstResource'].nil?
            @DstResource = ScheduledSqlResouceInfo.new
            @DstResource.deserialize(params['DstResource'])
          end
          @ScheduledSqlContent = params['ScheduledSqlContent']
          @ProcessPeriod = params['ProcessPeriod']
          @ProcessTimeWindow = params['ProcessTimeWindow']
          @ProcessDelay = params['ProcessDelay']
          @SrcTopicRegion = params['SrcTopicRegion']
          @Name = params['Name']
          @SyntaxRule = params['SyntaxRule']
        end
      end

      # ModifyScheduledSql返回参数结构体
      class ModifyScheduledSqlResponse < TencentCloud::Common::AbstractModel
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
        # @param MaxSize: 投递的文件的最大值，单位 MB，默认256，范围 5-256
        # @type MaxSize: Integer
        # @param FilterRules: 投递日志的过滤规则，匹配的日志进行投递，各rule之间是and关系，最多5个，数组为空则表示不过滤而全部投递
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`
        # @param FilenameMode: 投递文件命名配置，0：随机数命名，1：投递时间命名，默认0（随机数命名）
        # @type FilenameMode: Integer

        attr_accessor :ShipperId, :Bucket, :Prefix, :Status, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content, :FilenameMode

        def initialize(shipperid=nil, bucket=nil, prefix=nil, status=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil, filenamemode=nil)
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
          @FilenameMode = filenamemode
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
          @FilenameMode = params['FilenameMode']
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
        # @param Period: 生命周期，单位天，标准存储取值范围1\~3600，低频存储取值范围7\~3600。取值为3640时代表永久保存
        # @type Period: Integer
        # @param Describes: 日志主题描述
        # @type Describes: String
        # @param HotPeriod: 0：关闭日志沉降。
        # 非0：开启日志沉降后标准存储的天数。HotPeriod需要大于等于7，且小于Period。仅在StorageType为 hot 时生效
        # @type HotPeriod: Integer
        # @param IsWebTracking: 免鉴权开关； false: 关闭 true: 开启
        # @type IsWebTracking: Boolean

        attr_accessor :TopicId, :TopicName, :Tags, :Status, :AutoSplit, :MaxSplitPartitions, :Period, :Describes, :HotPeriod, :IsWebTracking

        def initialize(topicid=nil, topicname=nil, tags=nil, status=nil, autosplit=nil, maxsplitpartitions=nil, period=nil, describes=nil, hotperiod=nil, iswebtracking=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Tags = tags
          @Status = status
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @Period = period
          @Describes = describes
          @HotPeriod = hotperiod
          @IsWebTracking = iswebtracking
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
          @Describes = params['Describes']
          @HotPeriod = params['HotPeriod']
          @IsWebTracking = params['IsWebTracking']
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

      # 多触发条件。
      class MultiCondition < TencentCloud::Common::AbstractModel
        # @param Condition: 触发条件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String
        # @param AlarmLevel: 告警级别。0:警告(Warn); 1:提醒(Info); 2:紧急 (Critical)。
        # <li> 不填则默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer

        attr_accessor :Condition, :AlarmLevel

        def initialize(condition=nil, alarmlevel=nil)
          @Condition = condition
          @AlarmLevel = alarmlevel
        end

        def deserialize(params)
          @Condition = params['Condition']
          @AlarmLevel = params['AlarmLevel']
        end
      end

      # 多日志主题检索相关信息
      class MultiTopicSearchInformation < TencentCloud::Common::AbstractModel
        # @param TopicId: 要检索分析的日志主题ID
        # @type TopicId: String
        # @param Context: 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时
        # @type Context: String

        attr_accessor :TopicId, :Context

        def initialize(topicid=nil, context=nil)
          @TopicId = topicid
          @Context = context
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Context = params['Context']
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

      # 通知规则
      class NoticeRule < TencentCloud::Common::AbstractModel
        # @param NoticeReceivers: 告警通知模板接收者信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警通知模板回调信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebCallbacks: Array
        # @param Rule: 匹配规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: String

        attr_accessor :NoticeReceivers, :WebCallbacks, :Rule

        def initialize(noticereceivers=nil, webcallbacks=nil, rule=nil)
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @Rule = rule
        end

        def deserialize(params)
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
          @Rule = params['Rule']
        end
      end

      # OpenKafkaConsumer请求参数结构体
      class OpenKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题ID
        # @type FromTopicId: String
        # @param Compression: 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        # @type Compression: Integer
        # @param ConsumerContent: kafka协议消费数据格式
        # @type ConsumerContent: :class:`Tencentcloud::Cls.v20201016.models.KafkaConsumerContent`

        attr_accessor :FromTopicId, :Compression, :ConsumerContent

        def initialize(fromtopicid=nil, compression=nil, consumercontent=nil)
          @FromTopicId = fromtopicid
          @Compression = compression
          @ConsumerContent = consumercontent
        end

        def deserialize(params)
          @FromTopicId = params['FromTopicId']
          @Compression = params['Compression']
          unless params['ConsumerContent'].nil?
            @ConsumerContent = KafkaConsumerContent.new
            @ConsumerContent.deserialize(params['ConsumerContent'])
          end
        end
      end

      # OpenKafkaConsumer返回参数结构体
      class OpenKafkaConsumerResponse < TencentCloud::Common::AbstractModel
        # @param TopicID: KafkaConsumer 消费时使用的Topic参数
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

      # PreviewKafkaRecharge请求参数结构体
      class PreviewKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param PreviewType: 预览类型，1:源数据预览，2:导出结果预览
        # @type PreviewType: Integer
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # @type KafkaType: Integer
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开。最多支持100个。
        # @type UserKafkaTopics: String
        # @param Offset: 导入数据位置，-2:最早（默认），-1：最晚
        # @type Offset: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID。
        # KafkaType为0时KafkaInstance必填
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址。
        # KafkaType为1时ServerAddr必填
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接。。
        # KafkaType为1时有效。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。
        # KafkaType为1并且IsEncryptionAddr为true时Protocol必填
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param ConsumerGroupName: 用户Kafka消费组
        # @type ConsumerGroupName: String
        # @param LogRechargeRule: 日志导入规则
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`

        attr_accessor :PreviewType, :KafkaType, :UserKafkaTopics, :Offset, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol, :ConsumerGroupName, :LogRechargeRule

        def initialize(previewtype=nil, kafkatype=nil, userkafkatopics=nil, offset=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil, consumergroupname=nil, logrechargerule=nil)
          @PreviewType = previewtype
          @KafkaType = kafkatype
          @UserKafkaTopics = userkafkatopics
          @Offset = offset
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
          @ConsumerGroupName = consumergroupname
          @LogRechargeRule = logrechargerule
        end

        def deserialize(params)
          @PreviewType = params['PreviewType']
          @KafkaType = params['KafkaType']
          @UserKafkaTopics = params['UserKafkaTopics']
          @Offset = params['Offset']
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
          @ConsumerGroupName = params['ConsumerGroupName']
          unless params['LogRechargeRule'].nil?
            @LogRechargeRule = LogRechargeRuleInfo.new
            @LogRechargeRule.deserialize(params['LogRechargeRule'])
          end
        end
      end

      # PreviewKafkaRecharge返回参数结构体
      class PreviewKafkaRechargeResponse < TencentCloud::Common::AbstractModel
        # @param LogSample: 日志样例，PreviewType为2时返回
        # @type LogSample: String
        # @param LogData: 日志预览结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogSample, :LogData, :RequestId

        def initialize(logsample=nil, logdata=nil, requestid=nil)
          @LogSample = logsample
          @LogData = logdata
          @RequestId = requestid
        end

        def deserialize(params)
          @LogSample = params['LogSample']
          @LogData = params['LogData']
          @RequestId = params['RequestId']
        end
      end

      # 预览数据详情
      class PreviewLogStatistic < TencentCloud::Common::AbstractModel
        # @param LogContent: 日志内容
        # @type LogContent: String
        # @param LineNum: 行号
        # @type LineNum: Integer
        # @param DstTopicId: 目标日志主题
        # @type DstTopicId: String
        # @param FailReason: 失败错误码， 空字符串""表示正常
        # @type FailReason: String
        # @param Time: 日志时间戳
        # @type Time: String
        # @param DstTopicName: 目标topic-name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstTopicName: String

        attr_accessor :LogContent, :LineNum, :DstTopicId, :FailReason, :Time, :DstTopicName

        def initialize(logcontent=nil, linenum=nil, dsttopicid=nil, failreason=nil, time=nil, dsttopicname=nil)
          @LogContent = logcontent
          @LineNum = linenum
          @DstTopicId = dsttopicid
          @FailReason = failreason
          @Time = time
          @DstTopicName = dsttopicname
        end

        def deserialize(params)
          @LogContent = params['LogContent']
          @LineNum = params['LineNum']
          @DstTopicId = params['DstTopicId']
          @FailReason = params['FailReason']
          @Time = params['Time']
          @DstTopicName = params['DstTopicName']
        end
      end

      # QueryMetric请求参数结构体
      class QueryMetricRequest < TencentCloud::Common::AbstractModel
        # @param Query: 查询语句，使用PromQL语法
        # @type Query: String
        # @param TopicId: 指标主题ID
        # @type TopicId: String
        # @param Time: 查询时间，秒级Unix时间戳
        # @type Time: Integer

        attr_accessor :Query, :TopicId, :Time

        def initialize(query=nil, topicid=nil, time=nil)
          @Query = query
          @TopicId = topicid
          @Time = time
        end

        def deserialize(params)
          @Query = params['Query']
          @TopicId = params['TopicId']
          @Time = params['Time']
        end
      end

      # QueryMetric返回参数结构体
      class QueryMetricResponse < TencentCloud::Common::AbstractModel
        # @param ResultType: 指标查询结果类型
        # @type ResultType: String
        # @param Result: 指标查询结果
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultType, :Result, :RequestId

        def initialize(resulttype=nil, result=nil, requestid=nil)
          @ResultType = resulttype
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultType = params['ResultType']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # QueryRangeMetric请求参数结构体
      class QueryRangeMetricRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 指标主题ID
        # @type TopicId: String
        # @param Query: 查询语句，使用PromQL语法
        # @type Query: String
        # @param Start: 查询起始时间，秒级Unix时间戳
        # @type Start: Integer
        # @param End: 查询结束时间，秒级Unix时间戳
        # @type End: Integer
        # @param Step: 查询时间间隔，单位秒
        # @type Step: Integer

        attr_accessor :TopicId, :Query, :Start, :End, :Step

        def initialize(topicid=nil, query=nil, start=nil, _end=nil, step=nil)
          @TopicId = topicid
          @Query = query
          @Start = start
          @End = _end
          @Step = step
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Query = params['Query']
          @Start = params['Start']
          @End = params['End']
          @Step = params['Step']
        end
      end

      # QueryRangeMetric返回参数结构体
      class QueryRangeMetricResponse < TencentCloud::Common::AbstractModel
        # @param ResultType: 指标查询结果类型
        # @type ResultType: String
        # @param Result: 指标查询结果
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultType, :Result, :RequestId

        def initialize(resulttype=nil, result=nil, requestid=nil)
          @ResultType = resulttype
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultType = params['ResultType']
          @Result = params['Result']
          @RequestId = params['RequestId']
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
        # @param FullText: 全文索引配置, 如果为空时代表未开启全文索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullText: :class:`Tencentcloud::Cls.v20201016.models.FullTextInfo`
        # @param KeyValue: 键值索引配置，如果为空时代表未开启键值索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValue: :class:`Tencentcloud::Cls.v20201016.models.RuleKeyValueInfo`
        # @param Tag: 元字段索引配置，如果为空时代表未开启元字段索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: :class:`Tencentcloud::Cls.v20201016.models.RuleTagInfo`
        # @param DynamicIndex: 动态索引配置，为空时代表未开启动态索引。
        # 启用后将自动把日志内的字段添加到键值索引字段列表中，包括日志中新增的字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicIndex: :class:`Tencentcloud::Cls.v20201016.models.DynamicIndex`

        attr_accessor :FullText, :KeyValue, :Tag, :DynamicIndex

        def initialize(fulltext=nil, keyvalue=nil, tag=nil, dynamicindex=nil)
          @FullText = fulltext
          @KeyValue = keyvalue
          @Tag = tag
          @DynamicIndex = dynamicindex
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
          unless params['DynamicIndex'].nil?
            @DynamicIndex = DynamicIndex.new
            @DynamicIndex.deserialize(params['DynamicIndex'])
          end
        end
      end

      # 键值索引配置
      class RuleKeyValueInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param KeyValues: 需要建立索引的键值对信息
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

      # ScheduledSql的资源信息
      class ScheduledSqlResouceInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 目标主题id
        # @type TopicId: String
        # @param Region: 主题的地域信息
        # @type Region: String
        # @param BizType: 主题类型：0为日志主题，1为指标主题
        # @type BizType: Integer
        # @param MetricName: 指标名称。当BizType为1时，MetricName需要填写
        # @type MetricName: String
        # @param MetricNames: 指标名称
        # BizType为1时，优先使用MetricNames字段多指标只能填充到MetricNames字段，单指标建议填充到MetricName字段
        # @type MetricNames: Array
        # @param MetricLabels: 指标维度，不接受时间类型。
        # @type MetricLabels: Array
        # @param CustomTime: 指标时间戳，默认值为SQL查询时间范围的左侧时间点，您也可以指定其他字段（类型为uinx时间、TimeStamp，精度毫秒）为指标时间戳。
        # @type CustomTime: String
        # @param CustomMetricLabels: 除了MetricLabels，您还可以使用该参数，为指标补充静态的维度。
        # 维度名以字母或下划线开头，后面可以跟字母、数字或下划线，长度小于等于1024 字节
        # @type CustomMetricLabels: Array

        attr_accessor :TopicId, :Region, :BizType, :MetricName, :MetricNames, :MetricLabels, :CustomTime, :CustomMetricLabels

        def initialize(topicid=nil, region=nil, biztype=nil, metricname=nil, metricnames=nil, metriclabels=nil, customtime=nil, custommetriclabels=nil)
          @TopicId = topicid
          @Region = region
          @BizType = biztype
          @MetricName = metricname
          @MetricNames = metricnames
          @MetricLabels = metriclabels
          @CustomTime = customtime
          @CustomMetricLabels = custommetriclabels
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Region = params['Region']
          @BizType = params['BizType']
          @MetricName = params['MetricName']
          @MetricNames = params['MetricNames']
          @MetricLabels = params['MetricLabels']
          @CustomTime = params['CustomTime']
          unless params['CustomMetricLabels'].nil?
            @CustomMetricLabels = []
            params['CustomMetricLabels'].each do |i|
              metriclabel_tmp = MetricLabel.new
              metriclabel_tmp.deserialize(i)
              @CustomMetricLabels << metriclabel_tmp
            end
          end
        end
      end

      # ScheduledSql任务详情
      class ScheduledSqlTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: ScheduledSql任务id
        # @type TaskId: String
        # @param Name: ScheduledSql任务名称
        # @type Name: String
        # @param SrcTopicId: 源日志主题id
        # @type SrcTopicId: String
        # @param SrcTopicName: 源日志主题名称
        # @type SrcTopicName: String
        # @param DstResource: 定时SQL分析目标主题
        # @type DstResource: :class:`Tencentcloud::Cls.v20201016.models.ScheduledSqlResouceInfo`
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间
        # @type UpdateTime: String
        # @param Status: 任务状态，1:运行 2:停止 3:异常-找不到源日志主题 4:异常-找不到目标主题

        # 5: 访问权限问题 6:内部故障 7:其他故障
        # @type Status: Integer
        # @param EnableFlag: 任务启用状态，1开启,  2关闭
        # @type EnableFlag: Integer
        # @param ScheduledSqlContent: 查询语句
        # @type ScheduledSqlContent: String
        # @param ProcessStartTime: 调度开始时间
        # @type ProcessStartTime: String
        # @param ProcessType: 调度类型，1:持续运行 2:指定时间范围
        # @type ProcessType: Integer
        # @param ProcessEndTime: 调度结束时间，当process_type=2时为必传字段
        # @type ProcessEndTime: String
        # @param ProcessPeriod: 调度周期(分钟)
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 查询的时间窗口. @m-15m, @m，意为近15分钟
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息
        # @type SrcTopicRegion: String
        # @param SyntaxRule: 语法规则，0：Lucene语法，1：CQL语法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyntaxRule: Integer

        attr_accessor :TaskId, :Name, :SrcTopicId, :SrcTopicName, :DstResource, :CreateTime, :UpdateTime, :Status, :EnableFlag, :ScheduledSqlContent, :ProcessStartTime, :ProcessType, :ProcessEndTime, :ProcessPeriod, :ProcessTimeWindow, :ProcessDelay, :SrcTopicRegion, :SyntaxRule

        def initialize(taskid=nil, name=nil, srctopicid=nil, srctopicname=nil, dstresource=nil, createtime=nil, updatetime=nil, status=nil, enableflag=nil, scheduledsqlcontent=nil, processstarttime=nil, processtype=nil, processendtime=nil, processperiod=nil, processtimewindow=nil, processdelay=nil, srctopicregion=nil, syntaxrule=nil)
          @TaskId = taskid
          @Name = name
          @SrcTopicId = srctopicid
          @SrcTopicName = srctopicname
          @DstResource = dstresource
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @EnableFlag = enableflag
          @ScheduledSqlContent = scheduledsqlcontent
          @ProcessStartTime = processstarttime
          @ProcessType = processtype
          @ProcessEndTime = processendtime
          @ProcessPeriod = processperiod
          @ProcessTimeWindow = processtimewindow
          @ProcessDelay = processdelay
          @SrcTopicRegion = srctopicregion
          @SyntaxRule = syntaxrule
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @SrcTopicId = params['SrcTopicId']
          @SrcTopicName = params['SrcTopicName']
          unless params['DstResource'].nil?
            @DstResource = ScheduledSqlResouceInfo.new
            @DstResource.deserialize(params['DstResource'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @EnableFlag = params['EnableFlag']
          @ScheduledSqlContent = params['ScheduledSqlContent']
          @ProcessStartTime = params['ProcessStartTime']
          @ProcessType = params['ProcessType']
          @ProcessEndTime = params['ProcessEndTime']
          @ProcessPeriod = params['ProcessPeriod']
          @ProcessTimeWindow = params['ProcessTimeWindow']
          @ProcessDelay = params['ProcessDelay']
          @SrcTopicRegion = params['SrcTopicRegion']
          @SyntaxRule = params['SyntaxRule']
        end
      end

      # SearchCosRechargeInfo请求参数结构体
      class SearchCosRechargeInfoRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题 ID
        # @type TopicId: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param Name: 投递任务名称
        # @type Name: String
        # @param Bucket: 存储桶。
        # 存储桶命名规范：https://cloud.tencent.com/document/product/436/13312
        # @type Bucket: String
        # @param BucketRegion: 存储桶所在地域。
        # 地域和访问域名：https://cloud.tencent.com/document/product/436/6224
        # @type BucketRegion: String
        # @param Prefix: cos文件所在文件夹的前缀
        # @type Prefix: String
        # @param Compress: 压缩模式:   "", "gzip", "lzop", "snappy”;   默认""
        # @type Compress: String

        attr_accessor :TopicId, :LogsetId, :Name, :Bucket, :BucketRegion, :Prefix, :Compress

        def initialize(topicid=nil, logsetid=nil, name=nil, bucket=nil, bucketregion=nil, prefix=nil, compress=nil)
          @TopicId = topicid
          @LogsetId = logsetid
          @Name = name
          @Bucket = bucket
          @BucketRegion = bucketregion
          @Prefix = prefix
          @Compress = compress
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @LogsetId = params['LogsetId']
          @Name = params['Name']
          @Bucket = params['Bucket']
          @BucketRegion = params['BucketRegion']
          @Prefix = params['Prefix']
          @Compress = params['Compress']
        end
      end

      # SearchCosRechargeInfo返回参数结构体
      class SearchCosRechargeInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 匹配到的存储桶下的某个文件的前几行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Sum: 匹配到的存储桶下的文件个数
        # @type Sum: Integer
        # @param Path: 当前预览文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Msg: 预览获取数据失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Status: 状态
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Sum, :Path, :Msg, :Status, :RequestId

        def initialize(data=nil, sum=nil, path=nil, msg=nil, status=nil, requestid=nil)
          @Data = data
          @Sum = sum
          @Path = path
          @Msg = msg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Sum = params['Sum']
          @Path = params['Path']
          @Msg = params['Msg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 多日志主题检索错误信息
      class SearchLogErrors < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param ErrorCodeStr: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeStr: String

        attr_accessor :TopicId, :ErrorMsg, :ErrorCodeStr

        def initialize(topicid=nil, errormsg=nil, errorcodestr=nil)
          @TopicId = topicid
          @ErrorMsg = errormsg
          @ErrorCodeStr = errorcodestr
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @ErrorMsg = params['ErrorMsg']
          @ErrorCodeStr = params['ErrorCodeStr']
        end
      end

      # 多日志主题检索topic信息
      class SearchLogInfos < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Period: 日志存储生命周期
        # @type Period: Integer
        # @param Context: 透传本次接口返回的Context值，可获取后续更多日志，过期时间1小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String

        attr_accessor :TopicId, :Period, :Context

        def initialize(topicid=nil, period=nil, context=nil)
          @TopicId = topicid
          @Period = period
          @Context = context
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Period = params['Period']
          @Context = params['Context']
        end
      end

      # SearchLog请求参数结构体
      class SearchLogRequest < TencentCloud::Common::AbstractModel
        # @param From: 要检索分析的日志的起始时间，Unix时间戳（毫秒）
        # @type From: Integer
        # @param To: 要检索分析的日志的结束时间，Unix时间戳（毫秒）
        # @type To: Integer
        # @param Query: 检索分析语句，最大长度为12KB
        # 语句由 <a href="https://cloud.tencent.com/document/product/614/47044" target="_blank">[检索条件]</a> | <a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>构成，无需对日志进行统计分析时，可省略其中的管道符<code> | </code>及SQL语句
        # 使用*或空字符串可查询所有日志
        # @type Query: String
        # @param TopicId: - 要检索分析的日志主题ID，仅能指定一个日志主题。
        # - 如需同时检索多个日志主题，请使用Topics参数。
        # @type TopicId: String
        # @param Limit: 表示单次查询返回的原始日志条数，默认为100，最大值为1000，获取后续日志需使用Context参数
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果条数指定方式参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        # @type Limit: Integer
        # @param Context: 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时。
        # 注意：
        # * 透传该参数时，请勿修改除该参数外的其它参数
        # * 仅适用于单日志主题检索，检索多个日志主题时，请使用Topics中的Context
        # * 仅当检索分析语句(Query)不包含SQL时有效，SQL获取后续结果参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
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
        # @param SamplingRate: 执行统计分析（Query中包含SQL）时，是否对原始日志先进行采样，再进行统计分析。
        # 0：自动采样;
        # 0～1：按指定采样率采样，例如0.02;
        # 1：不采样，即精确分析
        # 默认值为1
        # @type SamplingRate: Float
        # @param SyntaxRule: 检索语法规则，默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # 详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>
        # @type SyntaxRule: Integer
        # @param Topics: - 要检索分析的日志主题列表，最大支持20个日志主题。
        # - 检索单个日志主题时请使用TopicId。
        # - 不能同时使用TopicId和Topics。
        # @type Topics: Array

        attr_accessor :From, :To, :Query, :TopicId, :Limit, :Context, :Sort, :UseNewAnalysis, :SamplingRate, :SyntaxRule, :Topics

        def initialize(from=nil, to=nil, query=nil, topicid=nil, limit=nil, context=nil, sort=nil, usenewanalysis=nil, samplingrate=nil, syntaxrule=nil, topics=nil)
          @From = from
          @To = to
          @Query = query
          @TopicId = topicid
          @Limit = limit
          @Context = context
          @Sort = sort
          @UseNewAnalysis = usenewanalysis
          @SamplingRate = samplingrate
          @SyntaxRule = syntaxrule
          @Topics = topics
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @TopicId = params['TopicId']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @UseNewAnalysis = params['UseNewAnalysis']
          @SamplingRate = params['SamplingRate']
          @SyntaxRule = params['SyntaxRule']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              multitopicsearchinformation_tmp = MultiTopicSearchInformation.new
              multitopicsearchinformation_tmp.deserialize(i)
              @Topics << multitopicsearchinformation_tmp
            end
          end
        end
      end

      # SearchLog返回参数结构体
      class SearchLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 透传本次接口返回的Context值，可获取后续更多日志，过期时间1小时。
        # 注意：
        # * 仅适用于单日志主题检索，检索多个日志主题时，请使用Topics中的Context
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
        # @param SamplingRate: 本次统计分析使用的采样率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SamplingRate: Float
        # @param Topics: 使用多日志主题检索时，各个日志主题的基本信息，例如报错信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: :class:`Tencentcloud::Cls.v20201016.models.SearchLogTopics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :Results, :ColNames, :AnalysisResults, :AnalysisRecords, :Columns, :SamplingRate, :Topics, :RequestId

        def initialize(context=nil, listover=nil, analysis=nil, results=nil, colnames=nil, analysisresults=nil, analysisrecords=nil, columns=nil, samplingrate=nil, topics=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @Results = results
          @ColNames = colnames
          @AnalysisResults = analysisresults
          @AnalysisRecords = analysisrecords
          @Columns = columns
          @SamplingRate = samplingrate
          @Topics = topics
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
          @SamplingRate = params['SamplingRate']
          unless params['Topics'].nil?
            @Topics = SearchLogTopics.new
            @Topics.deserialize(params['Topics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 多主题检索返回信息
      class SearchLogTopics < TencentCloud::Common::AbstractModel
        # @param Errors: 多日志主题检索对应的错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param Infos: 多日志主题检索各日志主题信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infos: Array

        attr_accessor :Errors, :Infos

        def initialize(errors=nil, infos=nil)
          @Errors = errors
          @Infos = infos
        end

        def deserialize(params)
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              searchlogerrors_tmp = SearchLogErrors.new
              searchlogerrors_tmp.deserialize(i)
              @Errors << searchlogerrors_tmp
            end
          end
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              searchloginfos_tmp = SearchLogInfos.new
              searchloginfos_tmp.deserialize(i)
              @Infos << searchloginfos_tmp
            end
          end
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
        # @param FilenameMode: 投递文件命名配置，0：随机数命名，1：投递时间命名，默认0（随机数命名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilenameMode: Integer
        # @param StartTime: 投递数据范围的开始时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 投递数据范围的结束时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param Progress: 历史数据投递的进度（仅当用户选择的数据内中历史数据时才有效）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Float
        # @param RemainTime: 历史数据全部投递完成剩余的时间（仅当用户选择的数据中有历史数据时才有效）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainTime: Integer
        # @param HistoryStatus: 历史任务状态：
        # 0：实时任务
        # 1：任务准备中
        # 2：任务运行中
        # 3：任务运行异常
        # 4：任务运行结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistoryStatus: Integer

        attr_accessor :ShipperId, :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :Status, :FilterRules, :Partition, :Compress, :Content, :CreateTime, :FilenameMode, :StartTime, :EndTime, :Progress, :RemainTime, :HistoryStatus

        def initialize(shipperid=nil, topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, status=nil, filterrules=nil, partition=nil, compress=nil, content=nil, createtime=nil, filenamemode=nil, starttime=nil, endtime=nil, progress=nil, remaintime=nil, historystatus=nil)
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
          @FilenameMode = filenamemode
          @StartTime = starttime
          @EndTime = endtime
          @Progress = progress
          @RemainTime = remaintime
          @HistoryStatus = historystatus
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
          @FilenameMode = params['FilenameMode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Progress = params['Progress']
          @RemainTime = params['RemainTime']
          @HistoryStatus = params['HistoryStatus']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
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

      # 仪表盘 topic与地域信息
      class TopicIdAndRegion < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题id
        # @type TopicId: String
        # @param RegionId: 日志主题id 所在的地域id
        # 地域ID - 访问链接查看详情：https://iwiki.woa.com/pages/viewpage.action?pageId=780556968#id-地域码表-一.region大区（标准地域）
        # @type RegionId: Integer

        attr_accessor :TopicId, :RegionId

        def initialize(topicid=nil, regionid=nil)
          @TopicId = topicid
          @RegionId = regionid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @RegionId = params['RegionId']
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
        # @param AssumerName: 云产品标识，日志主题由其它云产品创建时，该字段会显示云产品名称，例如CDN、TKE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssumerName: String
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
        # @param SubAssumerName: 云产品二级标识，日志主题由其它云产品创建时，该字段会显示云产品名称及其日志类型的二级分类，例如TKE-Audit、TKE-Event。部分云产品仅有云产品标识(AssumerName)，无该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAssumerName: String
        # @param Describes: 日志主题描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describes: String
        # @param HotPeriod: 开启日志沉降，热存储的生命周期， hotPeriod < Period。
        # 热存储为 hotPeriod, 冷存储则为 Period-hotPeriod。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HotPeriod: Integer
        # @param BizType: 主题类型。
        # - 0: 日志主题
        # - 1: 指标主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: Integer
        # @param IsWebTracking: 免鉴权开关。
        # - false: 关闭
        # - true: 开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWebTracking: Boolean

        attr_accessor :LogsetId, :TopicId, :TopicName, :PartitionCount, :Index, :AssumerName, :CreateTime, :Status, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period, :SubAssumerName, :Describes, :HotPeriod, :BizType, :IsWebTracking

        def initialize(logsetid=nil, topicid=nil, topicname=nil, partitioncount=nil, index=nil, assumername=nil, createtime=nil, status=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil, subassumername=nil, describes=nil, hotperiod=nil, biztype=nil, iswebtracking=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @TopicName = topicname
          @PartitionCount = partitioncount
          @Index = index
          @AssumerName = assumername
          @CreateTime = createtime
          @Status = status
          @Tags = tags
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @StorageType = storagetype
          @Period = period
          @SubAssumerName = subassumername
          @Describes = describes
          @HotPeriod = hotperiod
          @BizType = biztype
          @IsWebTracking = iswebtracking
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @PartitionCount = params['PartitionCount']
          @Index = params['Index']
          @AssumerName = params['AssumerName']
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
          @SubAssumerName = params['SubAssumerName']
          @Describes = params['Describes']
          @HotPeriod = params['HotPeriod']
          @BizType = params['BizType']
          @IsWebTracking = params['IsWebTracking']
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
        # 仅支持英文符号、\n\t\r及转义符\；
        # long及double类型字段需为空；
        # 注意：\n\t\r本身已被转义，直接使用双引号包裹即可作为入参，无需再次转义。使用API Explorer进行调试时请使用JSON参数输入方式，以避免\n\t\r被重复转义
        # @type Tokenizer: String
        # @param SqlFlag: 字段是否开启分析功能
        # @type SqlFlag: Boolean
        # @param ContainZH: 是否包含中文，long及double类型字段需为false
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

