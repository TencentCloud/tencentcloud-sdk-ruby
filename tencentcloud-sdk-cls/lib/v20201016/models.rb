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
  module Cls
    module V20201016
      # AddMachineGroupInfo请求参数结构体
      class AddMachineGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组Id
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/product/614/56438)获取机器组Id。
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

      # 高级过滤规则
      class AdvanceFilterRuleInfo < TencentCloud::Common::AbstractModel
        # @param Key: 过滤字段
        # @type Key: String
        # @param Rule: 过滤规则，0:等于，1:字段存在，2:字段不存在
        # @type Rule: Integer
        # @param Value: 过滤值
        # @type Value: String

        attr_accessor :Key, :Rule, :Value

        def initialize(key=nil, rule=nil, value=nil)
          @Key = key
          @Rule = rule
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Rule = params['Rule']
          @Value = params['Value']
        end
      end

      # 告警多维分析一些配置信息
      class AlarmAnalysisConfig < TencentCloud::Common::AbstractModel
        # @param Key: 键。支持以下key：
        # SyntaxRule：语法规则，value支持 0：Lucene语法；1： CQL语法。
        # QueryIndex：执行语句序号。value支持  -1：自定义； 1：执行语句1； 2：执行语句2。
        # CustomQuery：检索语句。 QueryIndex为-1时有效且必填，value示例： "* | select count(*) as count"。
        # Fields：字段。value支持 __SOURCE__；__FILENAME__；__HOSTNAME__；__TIMESTAMP__；__INDEX_STATUS__；__PKG_LOGID__；__TOPIC__。
        # Format：显示形式。value支持 1：每条日志一行；2：每条日志每个字段一行。
        # Limit：最大日志条数。 value示例： 5。
        # @type Key: String
        # @param Value: 值。
        # 键对应值如下：
        # SyntaxRule：语法规则，value支持 0：Lucene语法；1： CQL语法。
        # QueryIndex：执行语句序号。value支持  -1：自定义； 1：执行语句1； 2：执行语句2。
        # CustomQuery：检索语句。 QueryIndex为-1时有效且必填，value示例： "* | select count(*) as count"。
        # Fields：字段。value支持 __SOURCE__；__FILENAME__；__HOSTNAME__；__TIMESTAMP__；__INDEX_STATUS__；__PKG_LOGID__；__TOPIC__。
        # Format：显示形式。value支持 1：每条日志一行；2：每条日志每个字段一行。
        # Limit：最大日志条数。 value示例： 5。
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
        # @param Condition: 是否触发告警的单触发条件。与MultiConditions参数互斥。
        # @type Condition: String
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期。单位是min。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知渠道组列表。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/product/614/56462)获取关联的告警通知渠道组列表，和MonitorNotice互斥
        # @type AlarmNoticeIds: Array
        # @param Status: 开启状态。
        # @type Status: Boolean
        # @param AlarmId: 告警策略ID。
        # @type AlarmId: String
        # @param CreateTime: 创建时间。格式： YYYY-MM-DD HH:MM:SS
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间。格式： YYYY-MM-DD HH:MM:SS
        # @type UpdateTime: String
        # @param MessageTemplate: 自定义通知模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageTemplate: String
        # @param CallBack: 自定义回调模板
        # @type CallBack: :class:`Tencentcloud::Cls.v20201016.models.CallBackInfo`
        # @param Analysis: 多维分析设置
        # @type Analysis: Array
        # @param GroupTriggerStatus: 分组触发状态。true：开启，false：关闭（默认）
        # @type GroupTriggerStatus: Boolean
        # @param GroupTriggerCondition: 分组触发条件。
        # @type GroupTriggerCondition: Array
        # @param Tags: 告警策略绑定的标签信息。
        # @type Tags: Array
        # @param MonitorObjectType: 监控对象类型。0:执行语句共用监控对象;1:每个执行语句单独选择监控对象。
        # @type MonitorObjectType: Integer
        # @param AlarmLevel: 告警级别。0:警告(Warn);1:提醒(Info);2:紧急 (Critical)。
        # @type AlarmLevel: Integer
        # @param Classifications: 告警附加分类字段。
        # @type Classifications: Array
        # @param MultiConditions: 多触发条件。与
        # Condition互斥。
        # @type MultiConditions: Array
        # @param MonitorNotice: 云监控通知渠道相关信息，和AlarmNoticeIds互斥
        # @type MonitorNotice: :class:`Tencentcloud::Cls.v20201016.models.MonitorNotice`

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status, :AlarmId, :CreateTime, :UpdateTime, :MessageTemplate, :CallBack, :Analysis, :GroupTriggerStatus, :GroupTriggerCondition, :Tags, :MonitorObjectType, :AlarmLevel, :Classifications, :MultiConditions, :MonitorNotice

        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil, alarmid=nil, createtime=nil, updatetime=nil, messagetemplate=nil, callback=nil, analysis=nil, grouptriggerstatus=nil, grouptriggercondition=nil, tags=nil, monitorobjecttype=nil, alarmlevel=nil, classifications=nil, multiconditions=nil, monitornotice=nil)
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
          @Tags = tags
          @MonitorObjectType = monitorobjecttype
          @AlarmLevel = alarmlevel
          @Classifications = classifications
          @MultiConditions = multiconditions
          @MonitorNotice = monitornotice
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @MonitorObjectType = params['MonitorObjectType']
          @AlarmLevel = params['AlarmLevel']
          unless params['Classifications'].nil?
            @Classifications = []
            params['Classifications'].each do |i|
              alarmclassification_tmp = AlarmClassification.new
              alarmclassification_tmp.deserialize(i)
              @Classifications << alarmclassification_tmp
            end
          end
          unless params['MultiConditions'].nil?
            @MultiConditions = []
            params['MultiConditions'].each do |i|
              multicondition_tmp = MultiCondition.new
              multicondition_tmp.deserialize(i)
              @MultiConditions << multicondition_tmp
            end
          end
          unless params['MonitorNotice'].nil?
            @MonitorNotice = MonitorNotice.new
            @MonitorNotice.deserialize(params['MonitorNotice'])
          end
        end
      end

      # 告警通知渠道组详细配置
      class AlarmNotice < TencentCloud::Common::AbstractModel
        # @param Name: 告警通知渠道组名称。
        # @type Name: String
        # @param Tags: 告警通知渠道组绑定的标签信息。
        # @type Tags: Array
        # @param Type: 告警模板的类型。可选值：
        # <br><li> Trigger - 告警触发</li>
        # <br><li> Recovery - 告警恢复</li>
        # <br><li> All - 告警触发和告警恢复</li>
        # @type Type: String
        # @param NoticeReceivers: 告警通知模板接收者信息。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警通知模板回调信息。
        # @type WebCallbacks: Array
        # @param AlarmNoticeId: 告警通知模板ID。
        # @type AlarmNoticeId: String
        # @param NoticeRules: 通知规则。
        # @type NoticeRules: Array
        # @param AlarmShieldStatus: 免登录操作告警开关。
        # 参数值： 1：关闭 2：开启（默认开启）
        # @type AlarmShieldStatus: Integer
        # @param JumpDomain: 调用链接域名。http:// 或者 https:// 开头，不能/结尾
        # @type JumpDomain: String
        # @param AlarmNoticeDeliverConfig: 投递相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmNoticeDeliverConfig: :class:`Tencentcloud::Cls.v20201016.models.AlarmNoticeDeliverConfig`
        # @param CreateTime: 创建时间。格式： YYYY-MM-DD HH:MM:SS
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间。格式： YYYY-MM-DD HH:MM:SS
        # @type UpdateTime: String

        attr_accessor :Name, :Tags, :Type, :NoticeReceivers, :WebCallbacks, :AlarmNoticeId, :NoticeRules, :AlarmShieldStatus, :JumpDomain, :AlarmNoticeDeliverConfig, :CreateTime, :UpdateTime

        def initialize(name=nil, tags=nil, type=nil, noticereceivers=nil, webcallbacks=nil, alarmnoticeid=nil, noticerules=nil, alarmshieldstatus=nil, jumpdomain=nil, alarmnoticedeliverconfig=nil, createtime=nil, updatetime=nil)
          @Name = name
          @Tags = tags
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @AlarmNoticeId = alarmnoticeid
          @NoticeRules = noticerules
          @AlarmShieldStatus = alarmshieldstatus
          @JumpDomain = jumpdomain
          @AlarmNoticeDeliverConfig = alarmnoticedeliverconfig
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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
          unless params['NoticeRules'].nil?
            @NoticeRules = []
            params['NoticeRules'].each do |i|
              noticerule_tmp = NoticeRule.new
              noticerule_tmp.deserialize(i)
              @NoticeRules << noticerule_tmp
            end
          end
          @AlarmShieldStatus = params['AlarmShieldStatus']
          @JumpDomain = params['JumpDomain']
          unless params['AlarmNoticeDeliverConfig'].nil?
            @AlarmNoticeDeliverConfig = AlarmNoticeDeliverConfig.new
            @AlarmNoticeDeliverConfig.deserialize(params['AlarmNoticeDeliverConfig'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 通知渠道投递日志配置信息
      class AlarmNoticeDeliverConfig < TencentCloud::Common::AbstractModel
        # @param DeliverConfig: 通知渠道投递日志配置信息。
        # @type DeliverConfig: :class:`Tencentcloud::Cls.v20201016.models.DeliverConfig`
        # @param ErrMsg: 投递失败原因。
        # @type ErrMsg: String

        attr_accessor :DeliverConfig, :ErrMsg

        def initialize(deliverconfig=nil, errmsg=nil)
          @DeliverConfig = deliverconfig
          @ErrMsg = errmsg
        end

        def deserialize(params)
          unless params['DeliverConfig'].nil?
            @DeliverConfig = DeliverConfig.new
            @DeliverConfig.deserialize(params['DeliverConfig'])
          end
          @ErrMsg = params['ErrMsg']
        end
      end

      # 告警屏蔽任务配置
      class AlarmShieldInfo < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组Id
        # @type AlarmNoticeId: String
        # @param TaskId: 屏蔽规则id
        # @type TaskId: String
        # @param StartTime: 屏蔽开始时间（秒级时间戳）。
        # @type StartTime: Integer
        # @param EndTime: 屏蔽结束时间（秒级时间戳）。
        # @type EndTime: Integer
        # @param Type: 屏蔽类型。1：屏蔽所有通知，2：按照Rule参数屏蔽匹配规则的通知。
        # @type Type: Integer
        # @param Rule: 屏蔽规则，当Type为2时必填。规则填写方式详见[产品文档](https://cloud.tencent.com/document/product/614/103178#rule)。
        # @type Rule: String
        # @param Reason: 屏蔽原因。
        # @type Reason: String
        # @param Source: 规则创建来源。
        # 1. 控制台，2.api，3.告警通知
        # @type Source: Integer
        # @param Operator: 操作者。
        # @type Operator: String
        # @param Status: 规则状态。
        # 0：暂未生效，1：生效中，2：已失效
        # @type Status: Integer
        # @param CreateTime: 规则创建时间。秒级时间戳(s)
        # @type CreateTime: Integer
        # @param UpdateTime: 规则更新时间。秒级时间戳(s)
        # @type UpdateTime: Integer

        attr_accessor :AlarmNoticeId, :TaskId, :StartTime, :EndTime, :Type, :Rule, :Reason, :Source, :Operator, :Status, :CreateTime, :UpdateTime

        def initialize(alarmnoticeid=nil, taskid=nil, starttime=nil, endtime=nil, type=nil, rule=nil, reason=nil, source=nil, operator=nil, status=nil, createtime=nil, updatetime=nil)
          @AlarmNoticeId = alarmnoticeid
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Rule = rule
          @Reason = reason
          @Source = source
          @Operator = operator
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Rule = params['Rule']
          @Reason = params['Reason']
          @Source = params['Source']
          @Operator = params['Operator']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 告警对象
      class AlarmTarget < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID。-通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题ID
        # @type TopicId: String
        # @param Query: 查询语句。
        # @type Query: String
        # @param Number: 告警对象序号；从1开始递增。
        # @type Number: Integer
        # @param StartTimeOffset: 查询范围起始时间相对于告警执行时间的偏移，单位为分钟，取值为非正，最大值为0，最小值为-1440。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对于告警执行时间的偏移，单位为分钟，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
        # @type EndTimeOffset: Integer
        # @param LogsetId: 日志集ID。通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志集ID
        # @type LogsetId: String
        # @param SyntaxRule: 检索语法规则，默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # 详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>
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
        # @param SyntaxRule: 检索语法规则，默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # 详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>
        # @type SyntaxRule: Integer
        # @param BizType: 主题类型。
        # 0: 日志主题，1: 指标主题
        # @type BizType: Integer

        attr_accessor :LogsetId, :LogsetName, :TopicId, :TopicName, :Query, :Number, :StartTimeOffset, :EndTimeOffset, :SyntaxRule, :BizType

        def initialize(logsetid=nil, logsetname=nil, topicid=nil, topicname=nil, query=nil, number=nil, starttimeoffset=nil, endtimeoffset=nil, syntaxrule=nil, biztype=nil)
          @LogsetId = logsetid
          @LogsetName = logsetname
          @TopicId = topicid
          @TopicName = topicname
          @Query = query
          @Number = number
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @SyntaxRule = syntaxrule
          @BizType = biztype
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
          @SyntaxRule = params['SyntaxRule']
          @BizType = params['BizType']
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
        # @param AlarmPeriod: 告警通知发送频率，单位为分钟(min)
        # @type AlarmPeriod: Integer
        # @param Notices: 通知渠道组
        # @type Notices: Array
        # @param Duration: 告警持续时间，单位为分钟(min)
        # @type Duration: Integer
        # @param Status: 告警状态，0代表未恢复，1代表已恢复，2代表已失效
        # @type Status: Integer
        # @param CreateTime: 告警发生时间，毫秒级Unix时间戳(ms)
        # @type CreateTime: Integer
        # @param GroupTriggerCondition: 告警分组触发时对应的分组信息
        # @type GroupTriggerCondition: Array
        # @param AlarmLevel: 告警级别，0代表警告(Warn)，1代表提醒(Info)，2代表紧急 (Critical)
        # @type AlarmLevel: Integer
        # @param MonitorObjectType: 监控对象类型。
        # 0:执行语句共用监控对象; 1:每个执行语句单独选择监控对象。
        # @type MonitorObjectType: Integer
        # @param SendType: 通知渠道类型，0默认代表cls内部通知渠道，1代表云监控通知渠道
        # @type SendType: Integer

        attr_accessor :RecordId, :AlarmId, :AlarmName, :TopicId, :TopicName, :Region, :Trigger, :TriggerCount, :AlarmPeriod, :Notices, :Duration, :Status, :CreateTime, :GroupTriggerCondition, :AlarmLevel, :MonitorObjectType, :SendType

        def initialize(recordid=nil, alarmid=nil, alarmname=nil, topicid=nil, topicname=nil, region=nil, trigger=nil, triggercount=nil, alarmperiod=nil, notices=nil, duration=nil, status=nil, createtime=nil, grouptriggercondition=nil, alarmlevel=nil, monitorobjecttype=nil, sendtype=nil)
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
          @SendType = sendtype
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
          @SendType = params['SendType']
        end
      end

      # 多维分析的分析维度
      class AnalysisDimensional < TencentCloud::Common::AbstractModel
        # @param Name: 分析名称
        # @type Name: String
        # @param Type: 分析类型：query(自定义检索分析)，field(字段TOP5及占比统计) ，original(相关原始日志)
        # @type Type: String
        # @param Content: 分析内容
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

      # 免鉴权信息
      class AnonymousInfo < TencentCloud::Common::AbstractModel
        # @param Operations: 操作列表，支持trackLog(JS/HTTP上传日志  )和realtimeProducer(kafka协议上传日志)
        # @type Operations: Array
        # @param Conditions: 条件列表
        # @type Conditions: Array

        attr_accessor :Operations, :Conditions

        def initialize(operations=nil, conditions=nil)
          @Operations = operations
          @Conditions = conditions
        end

        def deserialize(params)
          @Operations = params['Operations']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              conditioninfo_tmp = ConditionInfo.new
              conditioninfo_tmp.deserialize(i)
              @Conditions << conditioninfo_tmp
            end
          end
        end
      end

      # ApplyConfigToMachineGroup请求参数结构体
      class ApplyConfigToMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集配置ID
        #  - 通过[获取采集规则配置](https://cloud.tencent.com/document/product/614/58616)获取采集配置Id。
        # @type ConfigId: String
        # @param GroupId: 机器组ID
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
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

      # 回调配置
      class CallBackInfo < TencentCloud::Common::AbstractModel
        # @param Body: 回调时的Body。
        # 可将各类告警变量放在请求内容中，详见[帮助文档](https://cloud.tencent.com/document/product/614/74718)。
        # 如下示例：

        # ```
        # {
        # "TopicId": "{{ .QueryLog[0][0].topicId }}",
        # "key": "{{.Alarm}}",
        # "time": "{{ .QueryLog[0][0].time }}",
        # "log": "{{ .QueryLog[0][0].content.__CONTENT__ }}",
        # "namespace": "{{ .QueryLog[0][0].content.__TAG__.namespace }}"
        # }
        # ```
        # @type Body: String
        # @param Headers: 回调时的HTTP请求头部字段。
        # 例如：下面请求头部字段来告知服务器请求主体的内容类型为JSON。
        # ```
        # "Content-Type: application/json"
        # ```
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
        # @param EtlContent: 加工语句。 当FuncType为2时，EtlContent必须使用[log_auto_output](https://cloud.tencent.com/document/product/614/70733#b3c58797-4825-4807-bef4-68106e25024f)

        # 其他参考文档：

        # - [创建加工任务](https://cloud.tencent.com/document/product/614/63940)
        # -  [函数总览](https://cloud.tencent.com/document/product/614/70395)
        # @type EtlContent: String
        # @param DstResources: 加工任务目标topic_id以及别名，当 FuncType 为 1 时，必填。
        # 目标日志主题ID通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka；1: 用户自建Kafka。
        # @type KafkaType: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID。
        # KafkaType为0时，KafkaInstance必填

        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取实例id。
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址。
        # KafkaType为1时，ServerAddr必填
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接，默认值false。当KafkaType为1用户自建kafka时生效。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。KafkaType参数为1并且IsEncryptionAddr参数为true时必填。
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
        # @param Status: Kafka集群可访问状态。

        # - 0：可正常访问
        # - -1：broker 连接失败
        # - -2：sasl 鉴权失败
        # - -3：ckafka 角色未授权
        # - -4：topic 列表不存在
        # - -5：topic 内暂无数据
        # - -6：用户没有 ckafka 权限
        # - -7：消费组已经存在
        # - -8：kafka 实例不存在或已销毁
        # - -9：Broker 列表为空
        # - -10：Broker 地址格式不正确
        # - -11：Broker 端口非整型
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

      # CKafka的描述-需要投递到的kafka信息
      class Ckafka < TencentCloud::Common::AbstractModel
        # @param InstanceId: Ckafka 的 InstanceId。
        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取实例id。
        # - 通过 [创建实例](https://cloud.tencent.com/document/product/597/53207) 获取实例id。
        # @type InstanceId: String
        # @param TopicName: Ckafka 的 TopicName。
        # - 通过 [创建 Topic](https://cloud.tencent.com/document/product/597/73566) 获得TopicName。
        # - 通过 [获取主题列表](https://cloud.tencent.com/document/product/597/40847) 获得TopicName。
        # @type TopicName: String
        # @param Vip: Ckafka 的 Vip。
        # - 通过 [获取实例属性 ](https://cloud.tencent.com/document/product/597/40836) 获取vip信息。
        # - 如果是通过 角色ARN 方式创建投递任务，则Vip字段可为空。
        # @type Vip: String
        # @param Vport: Ckafka 的 Vport。
        # - 通过 [获取实例属性 ](https://cloud.tencent.com/document/product/597/40836) 获取vip port信息。
        # - 如果是通过 角色ARN 方式创建投递任务，则Vport字段可为空。
        # @type Vport: String
        # @param InstanceName: Ckafka 的 InstanceName。
        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取InstanceName。
        # - 通过 [创建实例](https://cloud.tencent.com/document/product/597/53207) 获取InstanceName。
        # - 如果是通过 角色ARN 方式创建投递任务，则InstanceName字段可为空。
        # @type InstanceName: String
        # @param TopicId: Ckafka 的 TopicId。
        # - 通过 [创建 Topic](https://cloud.tencent.com/document/product/597/73566) 获得TopicId。
        # - 通过 [获取主题列表](https://cloud.tencent.com/document/product/597/40847) 获得TopicId。
        # - 如果是通过 角色ARN 方式创建投递任务，则TopicId字段可为空。
        # @type TopicId: String

        attr_accessor :InstanceId, :TopicName, :Vip, :Vport, :InstanceName, :TopicId

        def initialize(instanceid=nil, topicname=nil, vip=nil, vport=nil, instancename=nil, topicid=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Vip = vip
          @Vport = vport
          @InstanceName = instancename
          @TopicId = topicid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @InstanceName = params['InstanceName']
          @TopicId = params['TopicId']
        end
      end

      # CloseKafkaConsumer请求参数结构体
      class CloseKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
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

      # 云产品日志投递任务信息
      class CloudProductLogTaskInfo < TencentCloud::Common::AbstractModel
        # @param ClsRegion: 日志服务地域
        # @type ClsRegion: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Extend: 日志配置拓展信息， 一般用于存储额外的日志投递配置
        # @type Extend: String
        # @param LogType: 日志类型，支持枚举：CDS-AUDIT、CDS-RISK、CDB-AUDIT、TDSQL-C-AUDIT、MongoDB-AUDIT、MongoDB-SlowLog、MongoDB-ErrorLog、TDMYSQL-SLOW、DCDB-AUDIT、DCDB-SLOW、DCDB-ERROR、MariaDB-AUDIT、MariaDB-SLOW、MariaDB-ERROR、PostgreSQL-SLOW、PostgreSQL-ERROR、PostgreSQL-AUDIT、BH-FILELOG、BH-COMMANDLOG、APIS-ACCESS
        # @type LogType: String
        # @param Status: 任务状态， 0创建中 1创建完成 2 删除中
        # @type Status: Integer

        attr_accessor :ClsRegion, :InstanceId, :LogsetId, :TopicId, :Extend, :LogType, :Status

        def initialize(clsregion=nil, instanceid=nil, logsetid=nil, topicid=nil, extend=nil, logtype=nil, status=nil)
          @ClsRegion = clsregion
          @InstanceId = instanceid
          @LogsetId = logsetid
          @TopicId = topicid
          @Extend = extend
          @LogType = logtype
          @Status = status
        end

        def deserialize(params)
          @ClsRegion = params['ClsRegion']
          @InstanceId = params['InstanceId']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @Extend = params['Extend']
          @LogType = params['LogType']
          @Status = params['Status']
        end
      end

      # 采集配置信息
      class CollectConfig < TencentCloud::Common::AbstractModel
        # @param Name: 指定采集类型的采集配置名称信息。
        # <li>当CollectInfo中Type为0：表示元数据配置，name为元数据名称。
        # 目前支持"container_id"，"container_name"，"image_name"，"namespace"，"pod_uid"，"pod_name"，"pod_ip"。
        # </li>
        # <li>当CollectInfo中Type为1：指定pod label，name为指定pod label名称。</li>
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # 采集配置信息
      class CollectInfo < TencentCloud::Common::AbstractModel
        # @param Type: 采集类型，必填字段。
        # <li>0：元数据配置。</li>
        # <li>1：指定Pod Label。</li>
        # @type Type: Integer
        # @param CollectConfigs: 指定采集类型的采集配置信息。
        # <li>当Type为0时，CollectConfigs不允许为空。</li>
        # <li>当Type为1时，CollectConfigs为空时，表示选择所有Pod Label；否则CollectConfigs为指定Pod Label。</li>
        # @type CollectConfigs: Array

        attr_accessor :Type, :CollectConfigs

        def initialize(type=nil, collectconfigs=nil)
          @Type = type
          @CollectConfigs = collectconfigs
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CollectConfigs'].nil?
            @CollectConfigs = []
            params['CollectConfigs'].each do |i|
              collectconfig_tmp = CollectConfig.new
              collectconfig_tmp.deserialize(i)
              @CollectConfigs << collectconfig_tmp
            end
          end
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

      # 免鉴权条件信息
      class ConditionInfo < TencentCloud::Common::AbstractModel
        # @param Attributes: 条件属性，目前只支持VpcID
        # @type Attributes: String
        # @param Rule: 条件规则，1:等于，2:不等于
        # @type Rule: Integer
        # @param ConditionValue: 对应条件属性的值
        # @type ConditionValue: String

        attr_accessor :Attributes, :Rule, :ConditionValue

        def initialize(attributes=nil, rule=nil, conditionvalue=nil)
          @Attributes = attributes
          @Rule = rule
          @ConditionValue = conditionvalue
        end

        def deserialize(params)
          @Attributes = params['Attributes']
          @Rule = params['Rule']
          @ConditionValue = params['ConditionValue']
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
        # @param Type: 自建k8s集群日志采集类型，支持
        # - container_stdout 标准输出
        # - container_file 标准文件
        # - host_file 节点文件
        # @type Type: String
        # @param HostFile: 节点文件配置信息
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 容器文件路径信息
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 容器标准输出信息
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogFormat: 日志格式化方式
        # @type LogFormat: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePaths: Array
        # @param UpdateTime: 更新时间
        # - 时间格式：yyyy-MM-dd HH:mm:ss
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # - 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param UserDefineRule: 用户自定义解析字符串
        # @type UserDefineRule: String
        # @param GroupId: 机器组ID
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
        # @type GroupId: String
        # @param ConfigFlag: 自建采集配置标
        # @type ConfigFlag: String
        # @param LogsetId: 日志集ID
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param LogsetName: 日志集name
        # @type LogsetName: String
        # @param TopicName: 日志主题name
        # @type TopicName: String
        # @param CollectInfos: 采集相关配置信息。详情见 CollectInfo复杂类型配置。
        # @type CollectInfos: Array
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        # @type AdvancedConfig: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :Type, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :LogType, :ExtractRule, :ExcludePaths, :UpdateTime, :CreateTime, :UserDefineRule, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :CollectInfos, :AdvancedConfig

        def initialize(configextraid=nil, name=nil, topicid=nil, type=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, logtype=nil, extractrule=nil, excludepaths=nil, updatetime=nil, createtime=nil, userdefinerule=nil, groupid=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, collectinfos=nil, advancedconfig=nil)
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
          @CollectInfos = collectinfos
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
          unless params['CollectInfos'].nil?
            @CollectInfos = []
            params['CollectInfos'].each do |i|
              collectinfo_tmp = CollectInfo.new
              collectinfo_tmp.deserialize(i)
              @CollectInfos << collectinfo_tmp
            end
          end
          @AdvancedConfig = params['AdvancedConfig']
        end
      end

      # 采集规则配置信息
      class ConfigInfo < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID
        # @type ConfigId: String
        # @param Name: 采集规则配置名称
        # @type Name: String
        # @param LogFormat: 日志格式化方式
        # @type LogFormat: String
        # @param Path: 日志采集路径
        # @type Path: String
        # @param LogType: 采集的日志类型。
        # - json_log代表：JSON-文件日志（详见[使用 JSON 提取模式采集日志](https://cloud.tencent.com/document/product/614/17419)）；
        # - delimiter_log代表：分隔符-文件日志（详见[使用分隔符提取模式采集日志](https://cloud.tencent.com/document/product/614/17420)）；
        # - minimalist_log代表：单行全文-文件日志（详见[使用单行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17421)）；
        # - fullregex_log代表：单行完全正则-文件日志（详见[使用单行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52365)）；
        # - multiline_log代表：多行全文-文件日志（详见[使用多行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17422)）；
        # - multiline_fullregex_log代表：多行完全正则-文件日志（详见[使用多行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52366)）；
        # - user_define_log代表：组合解析（适用于多格式嵌套的日志，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)）；
        # - service_syslog代表：syslog 采集（详见[采集 Syslog](https://cloud.tencent.com/document/product/614/81454)）；
        # - windows_event_log代表：Windows事件日志（详见[采集 Windows 事件日志](https://cloud.tencent.com/document/product/614/96678)）。
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePaths: Array
        # @param Output: 采集配置所属日志主题ID即TopicId
        # @type Output: String
        # @param UpdateTime: 更新时间
        # - 时间格式：yyyy-MM-dd HH:mm:ss
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # - 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param UserDefineRule: 用户自定义解析字符串，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)。
        # @type UserDefineRule: String
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：
        # `{\"ClsAgentFileTimeout\":0,\"ClsAgentMaxDepth\":10,\"ClsAgentParseFailMerge\":true}`

        # 控制台默认占位值：`{\"ClsAgentDefault\":0}`
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

      # 控制台分享配置
      class ConsoleSharingConfig < TencentCloud::Common::AbstractModel
        # @param Name: 分享链接名称
        # @type Name: String
        # @param Type: 仪表盘: 1; 检索页:2
        # @type Type: Integer
        # @param DurationMilliseconds: 分享链接有效期，单位：毫秒，最长支持30天
        # @type DurationMilliseconds: Integer
        # @param Resources: 允许访问的资源列表，目前仅支持一个Resource
        # @type Resources: Array
        # @param Domain: 分享链接域名，可选范围
        # - 公网匿名分享：填写clsshare.com
        # - datasight内网匿名分享(若开启)：datasight内网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param VerifyCode: 分享链接加密访问验证码。支持0-9和a-z(不区分大小写)在内的6个字符，可为空，代表免验证码访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyCode: String
        # @param StartTime: 默认查询范围的开始时间点，支持绝对时间(13位Unix时间戳)或相对时间表达式
        # @type StartTime: String
        # @param EndTime: 默认查询范围的结束时间点，支持绝对时间(13位Unix时间戳)或相对时间表达式。注意，结束时间点要大于开始时间点
        # @type EndTime: String
        # @param NowTime: 仅当StartTime/EndTime为相对时间时使用，基于NowTime计算绝对时间，默认为创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NowTime: Integer
        # @param Params: 默认的检索分析语句，仅当Type为2时使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param IsLockTimeRange: 是否允许访问者自行修改检索分析时间范围。默认不锁定（false）
        # @type IsLockTimeRange: Boolean
        # @param IsLockQuery: 是否允许访问者自行修改日志检索语句。在检索页分享中表示检索语句锁定状态；在仪表盘中表示过滤变量锁定状态。默认不锁定（false）
        # @type IsLockQuery: Boolean
        # @param IsSupportLogExport: 检索页分享是否允许访问者下载日志，默认不允许（false）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportLogExport: Boolean

        attr_accessor :Name, :Type, :DurationMilliseconds, :Resources, :Domain, :VerifyCode, :StartTime, :EndTime, :NowTime, :Params, :IsLockTimeRange, :IsLockQuery, :IsSupportLogExport

        def initialize(name=nil, type=nil, durationmilliseconds=nil, resources=nil, domain=nil, verifycode=nil, starttime=nil, endtime=nil, nowtime=nil, params=nil, islocktimerange=nil, islockquery=nil, issupportlogexport=nil)
          @Name = name
          @Type = type
          @DurationMilliseconds = durationmilliseconds
          @Resources = resources
          @Domain = domain
          @VerifyCode = verifycode
          @StartTime = starttime
          @EndTime = endtime
          @NowTime = nowtime
          @Params = params
          @IsLockTimeRange = islocktimerange
          @IsLockQuery = islockquery
          @IsSupportLogExport = issupportlogexport
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @DurationMilliseconds = params['DurationMilliseconds']
          @Resources = params['Resources']
          @Domain = params['Domain']
          @VerifyCode = params['VerifyCode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NowTime = params['NowTime']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              consolesharingparam_tmp = ConsoleSharingParam.new
              consolesharingparam_tmp.deserialize(i)
              @Params << consolesharingparam_tmp
            end
          end
          @IsLockTimeRange = params['IsLockTimeRange']
          @IsLockQuery = params['IsLockQuery']
          @IsSupportLogExport = params['IsSupportLogExport']
        end
      end

      # 控制台分享信息
      class ConsoleSharingInfo < TencentCloud::Common::AbstractModel
        # @param SharingId: 分享ID
        # @type SharingId: String
        # @param SharingUrl: 分享链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharingUrl: String
        # @param SharingConfig: 匿名分享配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharingConfig: :class:`Tencentcloud::Cls.v20201016.models.ConsoleSharingConfig`
        # @param ExpiredTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Status: 分享链接状态
        # 1: 正常
        # -1: 因内容安全审查异常导致被封禁(存在于使用公网域名分享时)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ContentSafetyCode: 10001-广告 20001-政治 20002-色情 20004-社会事件 20011-暴力 20012-低俗 20006-违法犯罪 20007-谩骂 20008-欺诈 20013-版权 20104-谣言 21000-其他, 10086-聚合, 24001-暴恐（天御独有恶意类型），20472-违法，
        # 24005-社会
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentSafetyCode: Integer

        attr_accessor :SharingId, :SharingUrl, :SharingConfig, :ExpiredTime, :CreateTime, :UpdateTime, :Status, :ContentSafetyCode

        def initialize(sharingid=nil, sharingurl=nil, sharingconfig=nil, expiredtime=nil, createtime=nil, updatetime=nil, status=nil, contentsafetycode=nil)
          @SharingId = sharingid
          @SharingUrl = sharingurl
          @SharingConfig = sharingconfig
          @ExpiredTime = expiredtime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @ContentSafetyCode = contentsafetycode
        end

        def deserialize(params)
          @SharingId = params['SharingId']
          @SharingUrl = params['SharingUrl']
          unless params['SharingConfig'].nil?
            @SharingConfig = ConsoleSharingConfig.new
            @SharingConfig.deserialize(params['SharingConfig'])
          end
          @ExpiredTime = params['ExpiredTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @ContentSafetyCode = params['ContentSafetyCode']
        end
      end

      # 控制台分享链接params参数
      class ConsoleSharingParam < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 投递任务出入参 Content
      class ConsumerContent < TencentCloud::Common::AbstractModel
        # @param EnableTag: 是否投递 TAG 信息。
        # 当EnableTag为true时，表示投递TAG元信息。
        # @type EnableTag: Boolean
        # @param MetaFields: 需要投递的元数据列表，目前仅支持：\_\_SOURCE\_\_，\_\_FILENAME\_\_，\_\_TIMESTAMP\_\_，\_\_HOSTNAME\_\_和\_\_PKGID\_\_
        # @type MetaFields: Array
        # @param TagJsonNotTiled: 当EnableTag为true时，必须填写TagJsonNotTiled字段。
        # TagJsonNotTiled用于标识tag信息是否json平铺。

        # TagJsonNotTiled为true时不平铺，示例：
        # TAG信息：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`
        # 不平铺：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`

        # TagJsonNotTiled为false时平铺，示例：
        # TAG信息：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`
        # 平铺：`{"__TAG__.fieldA":200,"__TAG__.fieldB":"text"}`
        # @type TagJsonNotTiled: Boolean
        # @param TimestampAccuracy: 投递时间戳精度，可选项 [1：秒；2：毫秒] ，默认是1。
        # @type TimestampAccuracy: Integer
        # @param JsonType: 投递Json格式。
        # JsonType为0：和原始日志一致，不转义。示例：
        # 日志原文：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`
        # 投递到Ckafka：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`

        # JsonType为1：转义。示例：
        # 日志原文：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`
        # 投递到Ckafka：`{"a":"aa","b":"{\"b1\":\"b1b1\", \"c1\":\"c1c1\"}"}`
        # @type JsonType: Integer

        attr_accessor :EnableTag, :MetaFields, :TagJsonNotTiled, :TimestampAccuracy, :JsonType

        def initialize(enabletag=nil, metafields=nil, tagjsonnottiled=nil, timestampaccuracy=nil, jsontype=nil)
          @EnableTag = enabletag
          @MetaFields = metafields
          @TagJsonNotTiled = tagjsonnottiled
          @TimestampAccuracy = timestampaccuracy
          @JsonType = jsontype
        end

        def deserialize(params)
          @EnableTag = params['EnableTag']
          @MetaFields = params['MetaFields']
          @TagJsonNotTiled = params['TagJsonNotTiled']
          @TimestampAccuracy = params['TimestampAccuracy']
          @JsonType = params['JsonType']
        end
      end

      # kafka协议消费组信息
      class ConsumerGroup < TencentCloud::Common::AbstractModel
        # @param Group: 消费组名称
        # @type Group: String
        # @param State: 状态。

        # - Empty：组内没有成员，但存在已提交的偏移量。所有消费者都离开但保留了偏移量
        # - Dead：组内没有成员，且没有已提交的偏移量。组被删除或长时间无活动
        # - Stable：组内成员正常消费，分区分配平衡。正常运行状态
        # - PreparingRebalance：组正在准备重新平衡。有新成员加入或现有成员离开
        # - CompletingRebalance：组正在准备重新平衡。有新成员加入或现有成员离开
        # @type State: String
        # @param ProtocolName: 分区分配策略均衡算法名称。

        # - 常见均衡算法如下：
        #     - range:按分区范围分配
        #     - roundrobin:轮询式分配
        #     - sticky:粘性分配（避免不必要的重平衡）
        # @type ProtocolName: String

        attr_accessor :Group, :State, :ProtocolName

        def initialize(group=nil, state=nil, protocolname=nil)
          @Group = group
          @State = state
          @ProtocolName = protocolname
        end

        def deserialize(params)
          @Group = params['Group']
          @State = params['State']
          @ProtocolName = params['ProtocolName']
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
        # @type WorkLoad: :class:`Tencentcloud::Cls.v20201016.models.ContainerWorkLoadInfo`
        # @param ExcludeNamespace: 需要排除的namespace可以多个，用分隔号分割,例如A,B
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
        # @type Container: String
        # @param Namespace: namespace可以多个，用分隔号分割,例如A,B；为空或者没有这个字段，表示所有namespace
        # @type Namespace: String
        # @param IncludeLabels: pod标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeLabels: Array
        # @param WorkLoads: 工作负载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkLoads: Array
        # @param ExcludeNamespace: 需要排除的namespace可以多个，用分隔号分割,例如A,B
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
        # @param Kind: 工作负载的类型，支持的取值如下：
        # - deployment：无状态应用部署控制器。可管理无状态应用的多副本 Pod；支持滚动更新和回滚，实现无缝发布；通过 ReplicaSet 确保指定数量的 Pod 副本持续运行。适合 Web 服务、API 服务、微服务等不需要持久化存储或唯一标识的应用。

        # - statefulset：用于管理有状态应用的控制器。可以为每个 Pod 提供稳定的、唯一的标识（有序的主机名和网络标识）；能提供稳定的持久化存储（PVC 随 Pod 的迁移而保留）；Pod 的创建、扩展、删除和更新都遵循确定的顺序。适合数据库（MySQL、MongoDB）、消息队列（Kafka、RabbitMQ）、集群应用等需要稳定网络标识和持久化存储的应用。

        # - daemonset：确保所有（或特定）节点上都运行一个 Pod 副本的控制器。会在每个符合条件的 Node 上自动部署并运行一个 Pod；当新节点加入集群时，会自动在新节点上创建 Pod；适合运行节点级别的后台任务或服务，例如日志收集（Fluentd、Filebeat）、节点监控（Node Exporter）、网络插件（Calico、Weave Net）等场景。

        # - job：用于运行一次性任务的控制器。可创建一个或多个 Pod 来执行任务，直到成功完成；当任务完成后，Pod 不会重启（除非配置了重启策略）；可以指定任务的并行度和重试次数。适合数据处理、批量任务、数据库迁移、离线计算等一次性执行完成后就退出的任务。

        # - cronjob：基于时间调度的 Job 控制器。类似于 Linux 的 cron，按照预定的时间表周期性地创建并运行 Job。每个调度周期都会创建一个新的 Job 来执行任务。适合定期备份、发送报告、数据清理、定时同步等需要周期性执行的任务。
        # @type Kind: String
        # @param Name: 工作负载的名称
        # @type Name: String
        # @param Container: 容器名
        # @type Container: String
        # @param Namespace: 命名空间
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
        # @param Format: 内容格式，支持json，csv，parquet
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
        # @type Id: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param Name: COS导入任务名称
        # @type Name: String
        # @param Bucket: COS存储桶
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域。

        # - 通过[地域和访问域名](https://cloud.tencent.com/document/product/436/6224)获取地域信息。
        # @type BucketRegion: String
        # @param Prefix: COS文件所在文件夹的前缀
        # @type Prefix: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文；
        # 默认为minimalist_log
        # @type LogType: String
        # @param Status: 状态   status 0: 已创建, 1: 运行中, 2: 已停止, 3: 已完成, 4: 运行失败。
        # @type Status: Integer
        # @param Enable: 是否启用:   0： 未启用  ， 1：启用
        # @type Enable: Integer
        # @param CreateTime: 创建时间。时间格式：YYYY-MM-DD HH:mm:ss
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。时间格式：YYYY-MM-DD HH:mm:ss
        # @type UpdateTime: String
        # @param Progress: 进度条百分值
        # @type Progress: Integer
        # @param Compress: 压缩方式supported: "", "gzip", "lzop", "snappy”;  默认空不压缩
        # @type Compress: String
        # @param ExtractRuleInfo: 见： ExtractRuleInfo 结构描述
        # @type ExtractRuleInfo: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param TaskType: COS导入任务类型。1：一次性导入任务；2：持续性导入任务。
        # @type TaskType: Integer
        # @param Metadata: 元数据。支持 bucket，object。
        # @type Metadata: Array

        attr_accessor :Id, :TopicId, :LogsetId, :Name, :Bucket, :BucketRegion, :Prefix, :LogType, :Status, :Enable, :CreateTime, :UpdateTime, :Progress, :Compress, :ExtractRuleInfo, :TaskType, :Metadata

        def initialize(id=nil, topicid=nil, logsetid=nil, name=nil, bucket=nil, bucketregion=nil, prefix=nil, logtype=nil, status=nil, enable=nil, createtime=nil, updatetime=nil, progress=nil, compress=nil, extractruleinfo=nil, tasktype=nil, metadata=nil)
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
          @TaskType = tasktype
          @Metadata = metadata
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
          @TaskType = params['TaskType']
          @Metadata = params['Metadata']
        end
      end

      # CreateAlarmNotice请求参数结构体
      class CreateAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Name: 通知渠道组名称。最大支持255个字节。 不支持 '|'。
        # @type Name: String
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的通知渠道组。最大支持50个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param Type: 【简易模式】（简易模式/告警模式二选一，分别配置相应参数）
        # 需要发送通知的告警类型。可选值：
        # - Trigger - 告警触发
        # - Recovery - 告警恢复
        # - All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 【简易模式】（简易模式/告警模式二选一，分别配置相应参数）
        # 通知接收对象。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 【简易模式】（简易模式/告警模式二选一，分别配置相应参数）
        # 接口回调信息（包括企业微信、钉钉、飞书）。
        # @type WebCallbacks: Array
        # @param NoticeRules: 【高级模式】（简易模式/告警模式二选一，分别配置相应参数）
        # 通知规则。
        # @type NoticeRules: Array
        # @param JumpDomain: 查询数据链接。http:// 或者 https:// 开头，不能/结尾
        # @type JumpDomain: String
        # @param DeliverStatus: 投递日志开关。可取值如下：
        # 1：关闭（默认值）；
        # 2：开启
        # 投递日志开关开启时， DeliverConfig参数必填。
        # @type DeliverStatus: Integer
        # @param DeliverConfig: 投递日志配置参数。当DeliverStatus开启时，必填。
        # @type DeliverConfig: :class:`Tencentcloud::Cls.v20201016.models.DeliverConfig`
        # @param AlarmShieldStatus: 免登录操作告警开关。可取值如下：
        # -      1：关闭
        # -      2：开启（默认值）
        # @type AlarmShieldStatus: Integer

        attr_accessor :Name, :Tags, :Type, :NoticeReceivers, :WebCallbacks, :NoticeRules, :JumpDomain, :DeliverStatus, :DeliverConfig, :AlarmShieldStatus

        def initialize(name=nil, tags=nil, type=nil, noticereceivers=nil, webcallbacks=nil, noticerules=nil, jumpdomain=nil, deliverstatus=nil, deliverconfig=nil, alarmshieldstatus=nil)
          @Name = name
          @Tags = tags
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @NoticeRules = noticerules
          @JumpDomain = jumpdomain
          @DeliverStatus = deliverstatus
          @DeliverConfig = deliverconfig
          @AlarmShieldStatus = alarmshieldstatus
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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
          @JumpDomain = params['JumpDomain']
          @DeliverStatus = params['DeliverStatus']
          unless params['DeliverConfig'].nil?
            @DeliverConfig = DeliverConfig.new
            @DeliverConfig.deserialize(params['DeliverConfig'])
          end
          @AlarmShieldStatus = params['AlarmShieldStatus']
        end
      end

      # CreateAlarmNotice返回参数结构体
      class CreateAlarmNoticeResponse < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 告警模板ID
        # @type AlarmNoticeId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Name: 告警策略名称。最大支持255个字节。 不支持 '|'。
        # @type Name: String
        # @param AlarmTargets: 监控对象列表。
        # @type AlarmTargets: Array
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为2000。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期，单位是分钟。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知渠道组列表。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/product/614/56462)获取关联的告警通知渠道组列表，和MonitorNotice互斥
        # @type AlarmNoticeIds: Array
        # @param Condition: 告警发送通知的触发条件
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
        # @param Enable: 请使用Status参数控制是否开启告警策略。
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
        extend Gem::Deprecate
        deprecate :Enable, :none, 2025, 9
        deprecate :Enable=, :none, 2025, 9

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateAlarmShield请求参数结构体
      class CreateAlarmShieldRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组id。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/product/614/56462)获取通知渠道组id
        # @type AlarmNoticeId: String
        # @param StartTime: 屏蔽规则开始时间，秒级(s)时间戳。
        # @type StartTime: Integer
        # @param EndTime: 屏蔽规则结束时间，秒级(s)时间戳。结束时间需要大于当前时间
        # @type EndTime: Integer
        # @param Type: 屏蔽类型。1：屏蔽所有通知，2：按照Rule参数屏蔽匹配规则的通知。
        # @type Type: Integer
        # @param Reason: 屏蔽原因。
        # @type Reason: String
        # @param Rule: 屏蔽规则，当Type为2时必填。规则填写方式详见[产品文档](https://cloud.tencent.com/document/product/614/103178#rule)。
        # @type Rule: String

        attr_accessor :AlarmNoticeId, :StartTime, :EndTime, :Type, :Reason, :Rule

        def initialize(alarmnoticeid=nil, starttime=nil, endtime=nil, type=nil, reason=nil, rule=nil)
          @AlarmNoticeId = alarmnoticeid
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Reason = reason
          @Rule = rule
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Reason = params['Reason']
          @Rule = params['Rule']
        end
      end

      # CreateAlarmShield返回参数结构体
      class CreateAlarmShieldResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 屏蔽规则ID。
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

      # CreateCloudProductLogCollection请求参数结构体
      class CreateCloudProductLogCollectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # - 通过各个接入云产品官方文档获取
        # @type InstanceId: String
        # @param AssumerName: 云产品标识，支持枚举：CDS、CWP、CDB、TDSQL-C、MongoDB、TDStore、DCDB、MariaDB、PostgreSQL、BH、APIS
        # @type AssumerName: String
        # @param LogType: 日志类型，支持枚举：CDS-AUDIT、CDS-RISK、CDB-AUDIT、TDSQL-C-AUDIT、MongoDB-AUDIT、MongoDB-SlowLog、MongoDB-ErrorLog、TDMYSQL-SLOW、DCDB-AUDIT、DCDB-SLOW、DCDB-ERROR、MariaDB-AUDIT、MariaDB-SLOW、MariaDB-ERROR、PostgreSQL-SLOW、PostgreSQL-ERROR、PostgreSQL-AUDIT、BH-FILELOG、BH-COMMANDLOG、APIS-ACCESS
        # @type LogType: String
        # @param CloudProductRegion: 云产品地域。 不同日志类型(LogType)地域入参格式存在差异， 请参考如下示例：
        # - CDS所有日志类型：ap-guangzhou
        # - CDB-AUDIT: gz
        # - TDSQL-C-AUDIT:  gz
        # - MongoDB-AUDIT:  gz
        # - MongoDB-SlowLog：ap-guangzhou
        # - MongoDB-ErrorLog：ap-guangzhou
        # - TDMYSQL-SLOW：gz
        # - DCDB所有日志类型：gz
        # - MariaDB所有日志类型：gz
        # - PostgreSQL所有日志类型：gz
        # - BH所有日志类型：overseas-polaris(中国香港地区和其他)/fsi-polaris(金融区)/general-polaris(普通区)/intl-sg-prod(国际站)
        # - APIS所有日志类型：gz
        # @type CloudProductRegion: String
        # @param ClsRegion: CLS目标地域
        # - 支持地域参考  [地域列表](https://cloud.tencent.com/document/api/614/56474#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8) 文档
        # @type ClsRegion: String
        # @param LogsetName: 日志集名称，未填LogsetId时必填。若日志集不存在, 将自动创建
        # @type LogsetName: String
        # @param TopicName: 日志主题名称，在未填TopicId时必填。 若日志主题不存在，将自动创建
        # @type TopicName: String
        # @param Extend: 日志配置扩展信息， 一般用于存储额外的日志投递配置
        # @type Extend: String
        # @param LogsetId: 日志集id
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param TopicId: 日志主题id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String

        attr_accessor :InstanceId, :AssumerName, :LogType, :CloudProductRegion, :ClsRegion, :LogsetName, :TopicName, :Extend, :LogsetId, :TopicId

        def initialize(instanceid=nil, assumername=nil, logtype=nil, cloudproductregion=nil, clsregion=nil, logsetname=nil, topicname=nil, extend=nil, logsetid=nil, topicid=nil)
          @InstanceId = instanceid
          @AssumerName = assumername
          @LogType = logtype
          @CloudProductRegion = cloudproductregion
          @ClsRegion = clsregion
          @LogsetName = logsetname
          @TopicName = topicname
          @Extend = extend
          @LogsetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AssumerName = params['AssumerName']
          @LogType = params['LogType']
          @CloudProductRegion = params['CloudProductRegion']
          @ClsRegion = params['ClsRegion']
          @LogsetName = params['LogsetName']
          @TopicName = params['TopicName']
          @Extend = params['Extend']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
        end
      end

      # CreateCloudProductLogCollection返回参数结构体
      class CreateCloudProductLogCollectionResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # @type LogsetName: String
        # @param Status: -1 创建中，1创建完成
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :TopicName, :LogsetId, :LogsetName, :Status, :RequestId

        def initialize(topicid=nil, topicname=nil, logsetid=nil, logsetname=nil, status=nil, requestid=nil)
          @TopicId = topicid
          @TopicName = topicname
          @LogsetId = logsetid
          @LogsetName = logsetname
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigExtra请求参数结构体
      class CreateConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param Name: 采集配置规程名称，最长63个字符，只能包含小写字符、数字及分隔符（“-”），且必须以小写字符开头，数字或小写字符结尾
        # @type Name: String
        # @param TopicId: 日志主题id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Type: 日志源类型。支持 container_stdout：容器标准输出；container_file：容器文件路径；host_file：节点文件路径。
        # @type Type: String
        # @param LogType: 采集的日志类型，默认为minimalist_log。支持以下类型：
        # - json_log代表：JSON-文件日志（详见[使用 JSON 提取模式采集日志](https://cloud.tencent.com/document/product/614/17419)）；
        # - delimiter_log代表：分隔符-文件日志（详见[使用分隔符提取模式采集日志](https://cloud.tencent.com/document/product/614/17420)）；
        # - minimalist_log代表：单行全文-文件日志（详见[使用单行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17421)）；
        # - fullregex_log代表：单行完全正则-文件日志（详见[使用单行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52365)）；
        # - multiline_log代表：多行全文-文件日志（详见[使用多行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17422)）；
        # - multiline_fullregex_log代表：多行完全正则-文件日志（详见[使用多行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52366)）；
        # - user_define_log代表：组合解析（适用于多格式嵌套的日志，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)）。
        # @type LogType: String
        # @param ConfigFlag: 采集配置标记。
        # - 目前只支持label_k8s，用于标记自建k8s集群使用的采集配置
        # @type ConfigFlag: String
        # @param LogsetId: 日志集id
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集名称。
        # @type LogsetName: String
        # @param TopicName: 日志主题名称
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题名称。
        # @type TopicName: String
        # @param HostFile: 自建k8s-节点文件配置信息,包括文件路径、名称及元数据相关信息。

        # - 详细参考 [HostFileInfo](https://cloud.tencent.com/document/api/614/56471#HostFileInfo) 信息。
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 容器文件路径类型配置。
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 自建k8s-容器标准输出信息，包括容器、命名空间等。

        # - 详细参考 [ContainerStdoutInfo](https://cloud.tencent.com/document/api/614/56471#ContainerStdoutInfo) 信息。
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogFormat: 日志格式化方式，用于容器采集场景。
        # - stdout-docker-json：用于docker容器采集场景
        # - stdout-containerd：用于containerd容器采集场景
        # @type LogFormat: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 组合解析采集规则，用于复杂场景下的日志采集。
        # - 取值参考：[使用组合解析提取模式采集日志
        # ](https://cloud.tencent.com/document/product/614/61310)
        # @type UserDefineRule: String
        # @param GroupId: 绑定的机器组ID
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
        # - GroupId 与 GroupIds 选择其一即可，不可同时为空。
        # @type GroupId: String
        # @param GroupIds: 绑定的机器组ID列表
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id信息。
        # - GroupId 与 GroupIds 选择其一即可，不可同时为空。
        # @type GroupIds: Array
        # @param CollectInfos: 采集相关配置信息。详细参考 [CollectInfo](https://cloud.tencent.com/document/api/614/56471#CollectInfo) 信息。
        # @type CollectInfos: Array
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # - ClsAgentDefault(自定义默认值，无特殊含义，用于清空其他选项)，建议取值0
        # @type AdvancedConfig: String

        attr_accessor :Name, :TopicId, :Type, :LogType, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :HostFile, :ContainerFile, :ContainerStdout, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :GroupId, :GroupIds, :CollectInfos, :AdvancedConfig
        extend Gem::Deprecate
        deprecate :LogFormat, :none, 2025, 9
        deprecate :LogFormat=, :none, 2025, 9

        def initialize(name=nil, topicid=nil, type=nil, logtype=nil, configflag=nil, logsetid=nil, logsetname=nil, topicname=nil, hostfile=nil, containerfile=nil, containerstdout=nil, logformat=nil, extractrule=nil, excludepaths=nil, userdefinerule=nil, groupid=nil, groupids=nil, collectinfos=nil, advancedconfig=nil)
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
          @CollectInfos = collectinfos
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
          unless params['CollectInfos'].nil?
            @CollectInfos = []
            params['CollectInfos'].each do |i|
              collectinfo_tmp = CollectInfo.new
              collectinfo_tmp.deserialize(i)
              @CollectInfos << collectinfo_tmp
            end
          end
          @AdvancedConfig = params['AdvancedConfig']
        end
      end

      # CreateConfigExtra返回参数结构体
      class CreateConfigExtraResponse < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集配置扩展信息ID
        # @type ConfigExtraId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 名称种不得包含特殊字符｜
        # - 名称最长255字符，超过截断
        # @type Name: String
        # @param Output: 采集配置所属日志主题ID即TopicId
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type Output: String
        # @param Path: 日志采集路径，包含文件名，支持多个路径，多个路径之间英文逗号分隔，文件采集情况下必填
        # @type Path: String
        # @param LogType: 采集的日志类型，默认为minimalist_log。支持以下类型：
        # - json_log代表：JSON-文件日志（详见[使用 JSON 提取模式采集日志](https://cloud.tencent.com/document/product/614/17419)）；
        # - delimiter_log代表：分隔符-文件日志（详见[使用分隔符提取模式采集日志](https://cloud.tencent.com/document/product/614/17420)）；
        # - minimalist_log代表：单行全文-文件日志（详见[使用单行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17421)）；
        # - fullregex_log代表：单行完全正则-文件日志（详见[使用单行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52365)）；
        # - multiline_log代表：多行全文-文件日志（详见[使用多行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17422)）；
        # - multiline_fullregex_log代表：多行完全正则-文件日志（详见[使用多行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52366)）；
        # - user_define_log代表：组合解析（适用于多格式嵌套的日志，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)）；
        # - service_syslog代表：syslog 采集（详见[采集 Syslog](https://cloud.tencent.com/document/product/614/81454)）；
        # - windows_event_log代表：Windows事件日志（详见[采集 Windows 事件日志](https://cloud.tencent.com/document/product/614/96678)）。
        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 用户自定义采集规则，Json格式序列化的字符串。当LogType为user_define_log时，必填。
        # @type UserDefineRule: String
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：
        # `{\"ClsAgentFileTimeout\":0,\"ClsAgentMaxDepth\":10,\"ClsAgentParseFailMerge\":true}`

        # 控制台默认占位值：`{\"ClsAgentDefault\":0}`
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

      # CreateConsoleSharing请求参数结构体
      class CreateConsoleSharingRequest < TencentCloud::Common::AbstractModel
        # @param SharingConfig: 免密分享配置
        # @type SharingConfig: :class:`Tencentcloud::Cls.v20201016.models.ConsoleSharingConfig`

        attr_accessor :SharingConfig

        def initialize(sharingconfig=nil)
          @SharingConfig = sharingconfig
        end

        def deserialize(params)
          unless params['SharingConfig'].nil?
            @SharingConfig = ConsoleSharingConfig.new
            @SharingConfig.deserialize(params['SharingConfig'])
          end
        end
      end

      # CreateConsoleSharing返回参数结构体
      class CreateConsoleSharingResponse < TencentCloud::Common::AbstractModel
        # @param SharingUrl: 免密分享链接
        # @type SharingUrl: String
        # @param SharingId: 免密分享链接ID
        # @type SharingId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SharingUrl, :SharingId, :RequestId

        def initialize(sharingurl=nil, sharingid=nil, requestid=nil)
          @SharingUrl = sharingurl
          @SharingId = sharingid
          @RequestId = requestid
        end

        def deserialize(params)
          @SharingUrl = params['SharingUrl']
          @SharingId = params['SharingId']
          @RequestId = params['RequestId']
        end
      end

      # CreateConsumer请求参数结构体
      class CreateConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type TopicId: String
        # @param NeedContent: 是否投递日志的元数据信息，默认为 true。
        # 当NeedContent为true时：字段Content有效。
        # 当NeedContent为false时：字段Content无效。
        # @type NeedContent: Boolean
        # @param Content: 如果需要投递元数据信息，元数据信息的描述
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ConsumerContent`
        # @param Ckafka: CKafka的描述
        # @type Ckafka: :class:`Tencentcloud::Cls.v20201016.models.Ckafka`
        # @param Compression: 投递时压缩方式，取值0，2，3。[0：NONE；2：SNAPPY；3：LZ4]
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

      # CreateCosRecharge请求参数结构体
      class CreateCosRechargeRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id。

        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param LogsetId: 日志集Id。

        # - 通过[获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param Name: COS导入任务名称,最大支持128个字节。
        # @type Name: String
        # @param Bucket: COS存储桶，详见产品支持的[存储桶命名规范](https://cloud.tencent.com/document/product/436/13312)。

        # - 通过[GET Service（List Buckets）](https://cloud.tencent.com/document/product/436/8291)获取COS存储桶。
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域，详见产品支持的[地域列表](https://cloud.tencent.com/document/product/436/6224)。
        # @type BucketRegion: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文；
        # 默认为minimalist_log
        # @type LogType: String
        # @param Prefix: COS文件所在文件夹的前缀。默认为空，投递存储桶下所有的文件。
        # @type Prefix: String
        # @param Compress: supported: "", "gzip", "lzop", "snappy"。默认空，不压缩。
        # @type Compress: String
        # @param ExtractRuleInfo: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRuleInfo: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param TaskType: COS导入任务类型。1：一次性导入任务；2：持续性导入任务。默认为1：一次性导入任务
        # @type TaskType: Integer
        # @param Metadata: 元数据。
        # @type Metadata: Array

        attr_accessor :TopicId, :LogsetId, :Name, :Bucket, :BucketRegion, :LogType, :Prefix, :Compress, :ExtractRuleInfo, :TaskType, :Metadata

        def initialize(topicid=nil, logsetid=nil, name=nil, bucket=nil, bucketregion=nil, logtype=nil, prefix=nil, compress=nil, extractruleinfo=nil, tasktype=nil, metadata=nil)
          @TopicId = topicid
          @LogsetId = logsetid
          @Name = name
          @Bucket = bucket
          @BucketRegion = bucketregion
          @LogType = logtype
          @Prefix = prefix
          @Compress = compress
          @ExtractRuleInfo = extractruleinfo
          @TaskType = tasktype
          @Metadata = metadata
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @LogsetId = params['LogsetId']
          @Name = params['Name']
          @Bucket = params['Bucket']
          @BucketRegion = params['BucketRegion']
          @LogType = params['LogType']
          @Prefix = params['Prefix']
          @Compress = params['Compress']
          unless params['ExtractRuleInfo'].nil?
            @ExtractRuleInfo = ExtractRuleInfo.new
            @ExtractRuleInfo.deserialize(params['ExtractRuleInfo'])
          end
          @TaskType = params['TaskType']
          @Metadata = params['Metadata']
        end
      end

      # CreateCosRecharge返回参数结构体
      class CreateCosRechargeResponse < TencentCloud::Common::AbstractModel
        # @param Id: COS导入任务id
        # @type Id: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateDashboardSubscribe请求参数结构体
      class CreateDashboardSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param Name: 仪表盘订阅名称。
        # 输入限制：
        # - 不能为空
        # - 长度不能超过128字节
        # - 不能包含字符'|'
        # @type Name: String
        # @param DashboardId: 仪表盘Id。
        # - 通过[获取仪表盘](https://cloud.tencent.com/document/product/614/95636)获取仪表盘Id。
        # @type DashboardId: String
        # @param Cron: 订阅时间cron表达式，格式为：{秒数} {分钟} {小时} {日期} {月份} {星期}；（有效数据为：{分钟} {小时} {日期} {月份} {星期}）。
        # - {秒数} 取值范围： 0 ~ 59
        # - {分钟} 取值范围： 0 ~ 59
        # - {小时} 取值范围： 0 ~ 23
        # - {日期} 取值范围： 1 ~ 31 AND (dayOfMonth最后一天： L)
        # - {月份} 取值范围： 1 ~ 12
        # - {星期} 取值范围： 0 ~ 6 【0:星期日， 6星期六】
        # @type Cron: String
        # @param SubscribeData: 仪表盘订阅数据。
        # @type SubscribeData: :class:`Tencentcloud::Cls.v20201016.models.DashboardSubscribeData`

        attr_accessor :Name, :DashboardId, :Cron, :SubscribeData

        def initialize(name=nil, dashboardid=nil, cron=nil, subscribedata=nil)
          @Name = name
          @DashboardId = dashboardid
          @Cron = cron
          @SubscribeData = subscribedata
        end

        def deserialize(params)
          @Name = params['Name']
          @DashboardId = params['DashboardId']
          @Cron = params['Cron']
          unless params['SubscribeData'].nil?
            @SubscribeData = DashboardSubscribeData.new
            @SubscribeData.deserialize(params['SubscribeData'])
          end
        end
      end

      # CreateDashboardSubscribe返回参数结构体
      class CreateDashboardSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # CreateDataTransform请求参数结构体
      class CreateDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param FuncType: 任务类型. 1: 指定主题；2:动态创建。详情请参考[创建加工任务文档](https://cloud.tencent.com/document/product/614/63940)。
        # @type FuncType: Integer
        # @param SrcTopicId: 日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type SrcTopicId: String
        # @param Name: 加工任务名称
        # 名称限制
        # - 不能为空字符串
        # - 不能包含字符'|'
        # - 最长 255 个字符
        # @type Name: String
        # @param EtlContent: 加工语句。 当FuncType为2时，EtlContent必须使用[log_auto_output](https://cloud.tencent.com/document/product/614/70733#b3c58797-4825-4807-bef4-68106e25024f)

        # 其他参考文档：

        # - [创建加工任务](https://cloud.tencent.com/document/product/614/63940)
        # -  [函数总览](https://cloud.tencent.com/document/product/614/70395)
        # @type EtlContent: String
        # @param TaskType: 加工类型。
        # 1：使用源日志主题中的随机数据，进行加工预览；2：使用用户自定义测试数据，进行加工预览；3：创建真实加工任务。
        # @type TaskType: Integer
        # @param DstResources: 加工任务目标topic_id以及别名,当FuncType=1时，该参数必填，当FuncType=2时，无需填写。
        # 目标topic_id，通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # 别名限制 1.不能为空字符串，2. 不能包含字符'|'。
        # @type DstResources: Array
        # @param EnableFlag: 任务启动状态.   默认为1:开启,  2:关闭
        # @type EnableFlag: Integer
        # @param PreviewLogStatistics: 用于预览加工结果的测试数据
        # 目标日志主题ID通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type PreviewLogStatistics: Array
        # @param DataTransformType: 数据加工类型。0：标准加工任务； 1：前置加工任务。前置加工任务将采集的日志处理完成后，再写入日志主题。
        # @type DataTransformType: Integer

        attr_accessor :FuncType, :SrcTopicId, :Name, :EtlContent, :TaskType, :DstResources, :EnableFlag, :PreviewLogStatistics, :DataTransformType

        def initialize(functype=nil, srctopicid=nil, name=nil, etlcontent=nil, tasktype=nil, dstresources=nil, enableflag=nil, previewlogstatistics=nil, datatransformtype=nil)
          @FuncType = functype
          @SrcTopicId = srctopicid
          @Name = name
          @EtlContent = etlcontent
          @TaskType = tasktype
          @DstResources = dstresources
          @EnableFlag = enableflag
          @PreviewLogStatistics = previewlogstatistics
          @DataTransformType = datatransformtype
        end

        def deserialize(params)
          @FuncType = params['FuncType']
          @SrcTopicId = params['SrcTopicId']
          @Name = params['Name']
          @EtlContent = params['EtlContent']
          @TaskType = params['TaskType']
          unless params['DstResources'].nil?
            @DstResources = []
            params['DstResources'].each do |i|
              datatransformresouceinfo_tmp = DataTransformResouceInfo.new
              datatransformresouceinfo_tmp.deserialize(i)
              @DstResources << datatransformresouceinfo_tmp
            end
          end
          @EnableFlag = params['EnableFlag']
          unless params['PreviewLogStatistics'].nil?
            @PreviewLogStatistics = []
            params['PreviewLogStatistics'].each do |i|
              previewlogstatistic_tmp = PreviewLogStatistic.new
              previewlogstatistic_tmp.deserialize(i)
              @PreviewLogStatistics << previewlogstatistic_tmp
            end
          end
          @DataTransformType = params['DataTransformType']
        end
      end

      # CreateDataTransform返回参数结构体
      class CreateDataTransformResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
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

      # CreateDeliverCloudFunction请求参数结构体
      class CreateDeliverCloudFunctionRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递规则属于的TopicId。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type TopicId: String
        # @param FunctionName: 投递的云函数名字。仅支持[事件函数](https://cloud.tencent.com/document/product/583/9694#scf-.E4.BA.8B.E4.BB.B6.E5.87.BD.E6.95.B0) （[函数类型选型](https://cloud.tencent.com/document/product/583/73483)）
        # 通过 [获取函数列表](https://cloud.tencent.com/document/product/583/18582) 获取函数信息。
        # @type FunctionName: String
        # @param Namespace: 命名空间。参考 [命名空间管理](https://cloud.tencent.com/document/product/583/35913)
        # - 通过 [列出命名空间列表](https://cloud.tencent.com/document/product/583/37158) 获取Name。
        # @type Namespace: String
        # @param Qualifier: 函数版本。
        # - 通过 [查询函数版本 ](https://cloud.tencent.com/document/product/583/37162) 获取函数版本。
        # @type Qualifier: String
        # @param Timeout: 投递最长等待时间，单位：秒。 默认：60
        # @type Timeout: Integer
        # @param MaxMsgNum: 投递最大消息数。默认为100。支持范围[1,10000]
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

      # CreateExport请求参数结构体
      class CreateExportRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param DerivedFields: 导出字段
        # @type DerivedFields: Array

        attr_accessor :TopicId, :Count, :Query, :From, :To, :Order, :Format, :SyntaxRule, :DerivedFields

        def initialize(topicid=nil, count=nil, query=nil, from=nil, to=nil, order=nil, format=nil, syntaxrule=nil, derivedfields=nil)
          @TopicId = topicid
          @Count = count
          @Query = query
          @From = from
          @To = to
          @Order = order
          @Format = format
          @SyntaxRule = syntaxrule
          @DerivedFields = derivedfields
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
          @DerivedFields = params['DerivedFields']
        end
      end

      # CreateExport返回参数结构体
      class CreateExportResponse < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出ID。
        # @type ExportId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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

      # CreateKafkaRecharge请求参数结构体
      class CreateKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 导入CLS目标TopicId。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type TopicId: String
        # @param Name: Kafka导入配置名称
        # @type Name: String
        # @param KafkaType: 导入Kafka类型，0: 腾讯云CKafka，1: 用户自建Kafka
        # @type KafkaType: Integer
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开
        # @type UserKafkaTopics: String
        # @param Offset: 导入数据位置，-2:最早（默认），-1：最晚
        # @type Offset: Integer
        # @param LogRechargeRule: 日志导入规则。
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`
        # @param KafkaInstance: 腾讯云CKafka实例ID，KafkaType为0时必填。
        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取实例id。
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址，KafkaType为1时必填。
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接，KafkaType为1时必填。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。
        # KafkaType为1并且IsEncryptionAddr为true时Protocol必填。
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param ConsumerGroupName: 用户Kafka消费组名称。
        # - 消费组是 Kafka 提供的可扩展且具有容错性的消费者机制，一个消费组中存在多个消费者，组内的所有消费者共同消费订阅 Topic 中的消息。一个消费者可同时消费多个 Partition，但一个 Partition 只能被消费组内的一个消费者消费。
        # @type ConsumerGroupName: String

        attr_accessor :TopicId, :Name, :KafkaType, :UserKafkaTopics, :Offset, :LogRechargeRule, :KafkaInstance, :ServerAddr, :IsEncryptionAddr, :Protocol, :ConsumerGroupName

        def initialize(topicid=nil, name=nil, kafkatype=nil, userkafkatopics=nil, offset=nil, logrechargerule=nil, kafkainstance=nil, serveraddr=nil, isencryptionaddr=nil, protocol=nil, consumergroupname=nil)
          @TopicId = topicid
          @Name = name
          @KafkaType = kafkatype
          @UserKafkaTopics = userkafkatopics
          @Offset = offset
          @LogRechargeRule = logrechargerule
          @KafkaInstance = kafkainstance
          @ServerAddr = serveraddr
          @IsEncryptionAddr = isencryptionaddr
          @Protocol = protocol
          @ConsumerGroupName = consumergroupname
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Name = params['Name']
          @KafkaType = params['KafkaType']
          @UserKafkaTopics = params['UserKafkaTopics']
          @Offset = params['Offset']
          unless params['LogRechargeRule'].nil?
            @LogRechargeRule = LogRechargeRuleInfo.new
            @LogRechargeRule.deserialize(params['LogRechargeRule'])
          end
          @KafkaInstance = params['KafkaInstance']
          @ServerAddr = params['ServerAddr']
          @IsEncryptionAddr = params['IsEncryptionAddr']
          unless params['Protocol'].nil?
            @Protocol = KafkaProtocolInfo.new
            @Protocol.deserialize(params['Protocol'])
          end
          @ConsumerGroupName = params['ConsumerGroupName']
        end
      end

      # CreateKafkaRecharge返回参数结构体
      class CreateKafkaRechargeResponse < TencentCloud::Common::AbstractModel
        # @param Id: Kafka导入配置ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param LogsetName: 日志集名字。

        # - 最大支持255个字符。不支持`|`字符。
        # @type LogsetName: String
        # @param Tags: 标签描述列表。最大支持10个标签键值对，并且不能有重复的键值对
        # @type Tags: Array
        # @param LogsetId: 日志集ID，格式为：用户自定义部分-用户APPID。未填写该参数时将自动生成ID。

        # - 用户自定义部分仅支持小写字母、数字和-，且不能以-开头和结尾，长度为3至40字符。
        # - 尾部需要使用-拼接用户APPID，APPID可在https://console.cloud.tencent.com/developer页面查询。
        # - 如果指定该字段，需保证全地域唯一
        # @type LogsetId: String

        attr_accessor :LogsetName, :Tags, :LogsetId

        def initialize(logsetname=nil, tags=nil, logsetid=nil)
          @LogsetName = logsetname
          @Tags = tags
          @LogsetId = logsetid
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
          @LogsetId = params['LogsetId']
        end
      end

      # CreateLogset返回参数结构体
      class CreateLogsetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
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

      # CreateMachineGroup请求参数结构体
      class CreateMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 机器组名字。
        # 输入限制：
        # - 最大支持255个字符，不能为空字符串
        # - 不能包含字符'|'
        # @type GroupName: String
        # @param MachineGroupType: 创建机器组类型。取值如下：
        # - Type：ip，Values中为ip字符串列表创建机器组
        # - Type：label，Values中为标签字符串列表创建机器组
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的机器组。最大支持10个标签键值对，同一个资源只能绑定到同一个标签键下。
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新。默认false
        # @type AutoUpdate: Boolean
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费。默认false
        # @type ServiceLogging: Boolean
        # @param DelayCleanupTime: 机器组中机器离线清理时间。单位：天

        # - 大于0时生效。
        # @type DelayCleanupTime: Integer
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array
        # @param OSType: 系统类型，取值如下：
        # - 0：Linux （默认值）
        # - 1：Windows
        # @type OSType: Integer

        attr_accessor :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :DelayCleanupTime, :MetaTags, :OSType

        def initialize(groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, delaycleanuptime=nil, metatags=nil, ostype=nil)
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @DelayCleanupTime = delaycleanuptime
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
          @DelayCleanupTime = params['DelayCleanupTime']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateNoticeContent请求参数结构体
      class CreateNoticeContentRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名称。最大支持255个字节
        # @type Name: String
        # @param Type: 模板内容语言。0：中文1：英文
        # @type Type: Integer
        # @param NoticeContents: 模板详细配置。
        # @type NoticeContents: Array

        attr_accessor :Name, :Type, :NoticeContents

        def initialize(name=nil, type=nil, noticecontents=nil)
          @Name = name
          @Type = type
          @NoticeContents = noticecontents
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeContents'].nil?
            @NoticeContents = []
            params['NoticeContents'].each do |i|
              noticecontent_tmp = NoticeContent.new
              noticecontent_tmp.deserialize(i)
              @NoticeContents << noticecontent_tmp
            end
          end
        end
      end

      # CreateNoticeContent返回参数结构体
      class CreateNoticeContentResponse < TencentCloud::Common::AbstractModel
        # @param NoticeContentId: 通知内容配置ID
        # @type NoticeContentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeContentId, :RequestId

        def initialize(noticecontentid=nil, requestid=nil)
          @NoticeContentId = noticecontentid
          @RequestId = requestid
        end

        def deserialize(params)
          @NoticeContentId = params['NoticeContentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScheduledSql请求参数结构体
      class CreateScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param SrcTopicId: 源日志主题ID- 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type SrcTopicId: String
        # @param Name: 任务名称，0~255字符
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
        # @param ProcessPeriod: 调度周期(分钟)，1~1440分钟
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 单次查询的时间窗口,如果您的目标主题为指标主题，建议该参数的大小不超过30分钟，否则可能转指标失败。
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)，0~120秒，默认60秒
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息,支持地域见 [地域列表](https://cloud.tencent.com/document/api/614/56474#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8) 文档
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

      # CreateShipper请求参数结构体
      class CreateShipperRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 创建的投递规则所属的日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Bucket: COS存储桶，详见产品支持的[存储桶命名规范](https://cloud.tencent.com/document/product/436/13312)。

        # - 通过[GET Service（List Buckets）](https://cloud.tencent.com/document/product/436/8291)获取COS存储桶。
        # @type Bucket: String
        # @param Prefix: 投递规则投递的新的目录前缀。
        # - 仅支持0-9A-Za-z-_/
        # - 最大支持256个字符
        # @type Prefix: String
        # @param ShipperName: 投递规则的名字。最大支持255个字符
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
        # @param StartTime: 投递数据范围的开始时间点（秒级时间戳），不能超出日志主题的生命周期起点。
        # 如果用户不填写，默认为用户新建投递任务的时间。
        # @type StartTime: Integer
        # @param EndTime: 投递数据范围的结束时间点（秒级时间戳），不能填写未来时间。
        # 如果用户不填写，默认为持续投递，即无限。
        # @type EndTime: Integer
        # @param StorageType: 对象存储类型，默认值为 STANDARD。枚举值请参见[ 存储类型概述](https://cloud.tencent.com/document/product/436/33417) 文档。
        # 参考值有：

        # - STANDARD：标准存储
        # - STANDARD_IA：低频存储
        # - ARCHIVE：归档存储
        # - DEEP_ARCHIVE：深度归档存储
        # - MAZ_STANDARD：标准存储（多 AZ）
        # - MAZ_STANDARD_IA：低频存储（多 AZ）
        # - INTELLIGENT_TIERING：智能分层存储
        # - MAZ_INTELLIGENT_TIERING：智能分层存储（多 AZ）
        # @type StorageType: String

        attr_accessor :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content, :FilenameMode, :StartTime, :EndTime, :StorageType

        def initialize(topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil, filenamemode=nil, starttime=nil, endtime=nil, storagetype=nil)
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
          @StorageType = storagetype
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
          @StorageType = params['StorageType']
        end
      end

      # CreateShipper返回参数结构体
      class CreateShipperResponse < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递任务ID
        # @type ShipperId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param TopicName: 日志主题名称
        # 名称限制
        # - 不能为空字符串
        # - 不能包含字符'|'
        # - 不能使用以下名称["cls_service_log","loglistener_status","loglistener_alarm","loglistener_business","cls_service_metric"]
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
        # @param Period: 存储时间，单位天。
        # - 日志接入标准存储时，支持1至3600天，值为3640时代表永久保存。
        # - 日志接入低频存储时，支持7至3600天，值为3640时代表永久保存。
        # @type Period: Integer
        # @param Describes: 日志主题描述
        # @type Describes: String
        # @param HotPeriod: 0：关闭日志沉降。
        # 非0：开启日志沉降后标准存储的天数，HotPeriod需要大于等于7，且小于Period。
        # 仅在StorageType为 hot 时生效。
        # @type HotPeriod: Integer
        # @param TopicId: 主题自定义ID，格式为：用户自定义部分-用户APPID。未填写该参数时将自动生成ID。
        # - 用户自定义部分仅支持小写字母、数字和-，且不能以-开头和结尾，长度为3至40字符
        # - 尾部需要使用-拼接用户APPID，APPID可在https://console.cloud.tencent.com/developer页面查询。
        # - 如果指定该字段，需保证全地域唯一
        # @type TopicId: String
        # @param IsWebTracking: 免鉴权开关。 false：关闭； true：开启。默认为false。
        # 开启后将支持指定操作匿名访问该日志主题。详情请参见[日志主题](https://cloud.tencent.com/document/product/614/41035)。
        # @type IsWebTracking: Boolean
        # @param Extends: 日志主题扩展信息
        # @type Extends: :class:`Tencentcloud::Cls.v20201016.models.TopicExtendInfo`

        attr_accessor :LogsetId, :TopicName, :PartitionCount, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period, :Describes, :HotPeriod, :TopicId, :IsWebTracking, :Extends

        def initialize(logsetid=nil, topicname=nil, partitioncount=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil, describes=nil, hotperiod=nil, topicid=nil, iswebtracking=nil, extends=nil)
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
          @TopicId = topicid
          @IsWebTracking = iswebtracking
          @Extends = extends
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
          @TopicId = params['TopicId']
          @IsWebTracking = params['IsWebTracking']
          unless params['Extends'].nil?
            @Extends = TopicExtendInfo.new
            @Extends.deserialize(params['Extends'])
          end
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
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

      # CreateWebCallback请求参数结构体
      class CreateWebCallbackRequest < TencentCloud::Common::AbstractModel
        # @param Name: 通知内容名称。最大支持255个字节
        # @type Name: String
        # @param Type: 渠道类型。

        # WeCom:企业微信;DingTalk:钉钉;Lark:飞书;Http:自定义回调。
        # @type Type: String
        # @param Webhook: Webhook地址。
        # @type Webhook: String
        # @param Method: 请求方式。 支持POST、PUT。

        # 当Type为Http时，必填。
        # @type Method: String
        # @param Key: 秘钥。最大支持1024个字节
        # @type Key: String

        attr_accessor :Name, :Type, :Webhook, :Method, :Key

        def initialize(name=nil, type=nil, webhook=nil, method=nil, key=nil)
          @Name = name
          @Type = type
          @Webhook = webhook
          @Method = method
          @Key = key
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Webhook = params['Webhook']
          @Method = params['Method']
          @Key = params['Key']
        end
      end

      # CreateWebCallback返回参数结构体
      class CreateWebCallbackResponse < TencentCloud::Common::AbstractModel
        # @param WebCallbackId: 回调配置ID。
        # @type WebCallbackId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebCallbackId, :RequestId

        def initialize(webcallbackid=nil, requestid=nil)
          @WebCallbackId = webcallbackid
          @RequestId = requestid
        end

        def deserialize(params)
          @WebCallbackId = params['WebCallbackId']
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
        # @type Data: String
        # @param CreateTime: 创建仪表盘的时间。格式：YYYY-MM-DD HH:MM:SS
        # @type CreateTime: String
        # @param AssumerUin: AssumerUin非空则表示创建该日志主题的服务方Uin
        # @type AssumerUin: Integer
        # @param RoleName: RoleName非空则表示创建该日志主题的服务方使用的角色
        # @type RoleName: String
        # @param AssumerName: AssumerName非空则表示创建该日志主题的服务方名称
        # @type AssumerName: String
        # @param Tags: 日志主题绑定的标签信息
        # @type Tags: Array
        # @param DashboardRegion: 仪表盘所在地域： 为了兼容老的地域。
        # @type DashboardRegion: String
        # @param UpdateTime: 修改仪表盘的时间。格式：YYYY-MM-DD HH:MM:SS
        # @type UpdateTime: String
        # @param DashboardTopicInfos: 仪表盘对应的topic相关信息
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

      # 仪表盘订阅通知方式
      class DashboardNoticeMode < TencentCloud::Common::AbstractModel
        # @param ReceiverType: 仪表盘通知方式。

        # - Uin：腾讯云用户
        # - Group：腾讯云用户组
        # - WeCom：企业微信回调
        # - Email：自定义邮件
        # - DingTalk：钉钉
        # - Lark：飞书
        # @type ReceiverType: String
        # @param Values: 知方式对应的值。
        # - 当ReceiverType为：`WeCom`、`DingTalk`、`Lark` 时，Values必须为空，且Url字段必填。
        # - 当ReceiverType为：`Uin`、`Group`、`Email` 时，Values必填，且Url字段必须为空。
        # - 当ReceiverType为：`Uin ` 时，Values为用户id，通过 [拉取子用户](https://cloud.tencent.com/document/product/598/34587) 获取子用户 UID 。
        # - 当ReceiverType为：`Group` 时，Values为用户组id，通过 [查询用户组列表](https://cloud.tencent.com/document/product/598/34589) 获取用户组 ID 。
        # - 当ReceiverType为：`Email` 时，Values为用户邮箱信息。
        # @type Values: Array
        # @param ReceiverChannels: 仪表盘通知渠道。

        # -  支持：["Email","Sms","WeChat","Phone"]。
        # -  当ReceiverType为 `Email` 或 `WeCom` 时，ReceiverChannels无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverChannels: Array
        # @param Url: 订阅方式	- 回调地址。
        # - 当ReceiverType为：`WeCom`、`DingTalk`、`Lark` 时，Url字段必填为各渠道的回调地址。
        #     - 为：`WeCom` 时，Url为 企业微信回调地址。
        #     - 为：`DingTalk` 时，Url为 钉钉机器人Webhook地址。
        #     - 为：`Lark` 时，Url为 飞书机器人Webhook地址。
        # - 当ReceiverType为：`Uin`、`Group`、`Email` 时，Url字段必须为空。
        # @type Url: String

        attr_accessor :ReceiverType, :Values, :ReceiverChannels, :Url

        def initialize(receivertype=nil, values=nil, receiverchannels=nil, url=nil)
          @ReceiverType = receivertype
          @Values = values
          @ReceiverChannels = receiverchannels
          @Url = url
        end

        def deserialize(params)
          @ReceiverType = params['ReceiverType']
          @Values = params['Values']
          @ReceiverChannels = params['ReceiverChannels']
          @Url = params['Url']
        end
      end

      # 仪表盘订阅相关数据
      class DashboardSubscribeData < TencentCloud::Common::AbstractModel
        # @param NoticeModes: 仪表盘订阅通知方式。
        # @type NoticeModes: Array
        # @param DashboardTime: 仪表盘订阅时间，为空标识取仪表盘默认的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardTime: Array
        # @param TemplateVariables: 仪表盘订阅模板变量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateVariables: Array
        # @param Timezone: 时区。参考：https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#SHANGHAI
        # @type Timezone: String
        # @param SubscribeLanguage: 语言。 zh 中文、en`英文。
        # @type SubscribeLanguage: String
        # @param JumpDomain: 调用链接域名。http:// 或者 https:// 开头，不能/结尾
        # @type JumpDomain: String
        # @param JumpUrl: 自定义跳转链接。
        # @type JumpUrl: String

        attr_accessor :NoticeModes, :DashboardTime, :TemplateVariables, :Timezone, :SubscribeLanguage, :JumpDomain, :JumpUrl

        def initialize(noticemodes=nil, dashboardtime=nil, templatevariables=nil, timezone=nil, subscribelanguage=nil, jumpdomain=nil, jumpurl=nil)
          @NoticeModes = noticemodes
          @DashboardTime = dashboardtime
          @TemplateVariables = templatevariables
          @Timezone = timezone
          @SubscribeLanguage = subscribelanguage
          @JumpDomain = jumpdomain
          @JumpUrl = jumpurl
        end

        def deserialize(params)
          unless params['NoticeModes'].nil?
            @NoticeModes = []
            params['NoticeModes'].each do |i|
              dashboardnoticemode_tmp = DashboardNoticeMode.new
              dashboardnoticemode_tmp.deserialize(i)
              @NoticeModes << dashboardnoticemode_tmp
            end
          end
          @DashboardTime = params['DashboardTime']
          unless params['TemplateVariables'].nil?
            @TemplateVariables = []
            params['TemplateVariables'].each do |i|
              dashboardtemplatevariable_tmp = DashboardTemplateVariable.new
              dashboardtemplatevariable_tmp.deserialize(i)
              @TemplateVariables << dashboardtemplatevariable_tmp
            end
          end
          @Timezone = params['Timezone']
          @SubscribeLanguage = params['SubscribeLanguage']
          @JumpDomain = params['JumpDomain']
          @JumpUrl = params['JumpUrl']
        end
      end

      # 仪表盘订阅信息
      class DashboardSubscribeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 仪表盘订阅id。
        # @type Id: Integer
        # @param Name: 仪表盘订阅名称。
        # @type Name: String
        # @param DashboardId: 仪表盘id。
        # @type DashboardId: String
        # @param Cron: 仪表盘订阅时间。
        # @type Cron: String
        # @param SubscribeData: 仪表盘订阅数据。
        # @type SubscribeData: :class:`Tencentcloud::Cls.v20201016.models.DashboardSubscribeData`
        # @param CreateTime: 仪表盘订阅记录创建时间。格式：`YYYY-MM-DD HH:MM:SS`
        # @type CreateTime: String
        # @param UpdateTime: 仪表盘订阅记录更新时间。格式：`YYYY-MM-DD HH:MM:SS`
        # @type UpdateTime: String
        # @param LastTime: 仪表盘订阅记录最后一次发送成功时间。格式：`YYYY-MM-DD HH:MM:SS`
        # @type LastTime: String
        # @param Uin: 腾讯云主账号Id。
        # @type Uin: Integer
        # @param SubUin: 腾讯云主账号下的子账号Id。
        # @type SubUin: Integer
        # @param LastStatus: 仪表盘订阅记录最后一次发送的状态。success：全部发送成功，fail：未发送， partialSuccess：部分发送成功。
        # @type LastStatus: String

        attr_accessor :Id, :Name, :DashboardId, :Cron, :SubscribeData, :CreateTime, :UpdateTime, :LastTime, :Uin, :SubUin, :LastStatus

        def initialize(id=nil, name=nil, dashboardid=nil, cron=nil, subscribedata=nil, createtime=nil, updatetime=nil, lasttime=nil, uin=nil, subuin=nil, laststatus=nil)
          @Id = id
          @Name = name
          @DashboardId = dashboardid
          @Cron = cron
          @SubscribeData = subscribedata
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LastTime = lasttime
          @Uin = uin
          @SubUin = subuin
          @LastStatus = laststatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @DashboardId = params['DashboardId']
          @Cron = params['Cron']
          unless params['SubscribeData'].nil?
            @SubscribeData = DashboardSubscribeData.new
            @SubscribeData.deserialize(params['SubscribeData'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LastTime = params['LastTime']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @LastStatus = params['LastStatus']
        end
      end

      # 仪表盘订阅模板变量
      class DashboardTemplateVariable < TencentCloud::Common::AbstractModel
        # @param Key: key的值
        # @type Key: String
        # @param Values: key对应的values取值values
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

      # 仪表盘关联的topic信息
      class DashboardTopicInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题id
        # @type TopicId: String
        # @param Region: topic所在的地域。
        # - 1:广州
        # - 4:上海
        # - 5:中国香港
        # - 7:上海金融
        # - 8:北京
        # - 9:新加坡
        # - 11:深圳金融
        # - 15:硅谷
        # - 16:成都
        # - 17:法兰克福
        # - 18:首尔
        # - 19:重庆
        # - 22:弗吉尼亚
        # - 23:曼谷
        # - 25:东京
        # - 33:南京
        # - 36:天津
        # - 39:台北
        # - 46:北京金融
        # - 72:雅加达
        # - 74:圣保罗
        # - 78:上海自动驾驶云
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
        # @param TopicId: 日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Alias: 别名
        # 限制：不能包含字符 |。
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
        # @param Type: 加工任务类型，1： DSL(使用自定义加工语言的加工任务)， 2：SQL(使用sql的加工任务)
        # @type Type: Integer
        # @param SrcTopicId: 源日志主题
        # @type SrcTopicId: String
        # @param Status: 当前加工任务状态（1准备中/2运行中/3停止中/4已停止）
        # @type Status: Integer
        # @param CreateTime: 加工任务创建时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param UpdateTime: 最近修改时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type UpdateTime: String
        # @param LastEnableTime: 最后启用时间，如果需要重建集群，修改该时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type LastEnableTime: String
        # @param SrcTopicName: 日志主题名称
        # @type SrcTopicName: String
        # @param LogsetId: 日志集id
        # @type LogsetId: String
        # @param DstResources: 加工任务目的topic_id以及别名
        # @type DstResources: Array
        # @param EtlContent: 加工逻辑函数。
        # @type EtlContent: String
        # @param DataTransformType: 数据加工类型。0：标准加工任务；1：前置加工任务。
        # @type DataTransformType: Integer
        # @param KeepFailureLog: 保留失败日志状态。 1:不保留，2:保留
        # @type KeepFailureLog: Integer
        # @param FailureLogKey: 失败日志的字段名称
        # @type FailureLogKey: String

        attr_accessor :Name, :TaskId, :EnableFlag, :Type, :SrcTopicId, :Status, :CreateTime, :UpdateTime, :LastEnableTime, :SrcTopicName, :LogsetId, :DstResources, :EtlContent, :DataTransformType, :KeepFailureLog, :FailureLogKey

        def initialize(name=nil, taskid=nil, enableflag=nil, type=nil, srctopicid=nil, status=nil, createtime=nil, updatetime=nil, lastenabletime=nil, srctopicname=nil, logsetid=nil, dstresources=nil, etlcontent=nil, datatransformtype=nil, keepfailurelog=nil, failurelogkey=nil)
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
          @DataTransformType = datatransformtype
          @KeepFailureLog = keepfailurelog
          @FailureLogKey = failurelogkey
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
          @DataTransformType = params['DataTransformType']
          @KeepFailureLog = params['KeepFailureLog']
          @FailureLogKey = params['FailureLogKey']
        end
      end

      # DeleteAlarmNotice请求参数结构体
      class DeleteAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组ID。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/api/614/56462)获取通知渠道组ID
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

      # DeleteAlarmShield请求参数结构体
      class DeleteAlarmShieldRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 屏蔽规则id。通过[获取告警屏蔽配置规则](https://cloud.tencent.com/document/api/614/103650)获取屏蔽规则ID
        # @type TaskId: String
        # @param AlarmNoticeId: 通知渠道组id。通过[获取告警屏蔽配置规则](https://cloud.tencent.com/document/api/614/103650)获取通知渠道组id
        # @type AlarmNoticeId: String

        attr_accessor :TaskId, :AlarmNoticeId

        def initialize(taskid=nil, alarmnoticeid=nil)
          @TaskId = taskid
          @AlarmNoticeId = alarmnoticeid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @AlarmNoticeId = params['AlarmNoticeId']
        end
      end

      # DeleteAlarmShield返回参数结构体
      class DeleteAlarmShieldResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudProductLogCollection请求参数结构体
      class DeleteCloudProductLogCollectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AssumerName: 云产品标识，支持枚举：CDS、CWP、CDB、TDSQL-C、MongoDB、TDStore、DCDB、MariaDB、PostgreSQL、BH、APIS
        # @type AssumerName: String
        # @param LogType: 日志类型，支持枚举：CDS-AUDIT、CDS-RISK、CDB-AUDIT、TDSQL-C-AUDIT、MongoDB-AUDIT、MongoDB-SlowLog、MongoDB-ErrorLog、TDMYSQL-SLOW、DCDB-AUDIT、DCDB-SLOW、DCDB-ERROR、MariaDB-AUDIT、MariaDB-SLOW、MariaDB-ERROR、PostgreSQL-SLOW、PostgreSQL-ERROR、PostgreSQL-AUDIT、BH-FILELOG、BH-COMMANDLOG、APIS-ACCESS
        # @type LogType: String
        # @param CloudProductRegion: 云产品地域。 不同日志类型(LogType)地域入参格式存在差异， 请参考如下示例：
        # - CDS所有日志类型：ap-guangzhou
        # - CDB-AUDIT: gz
        # - TDSQL-C-AUDIT: gz
        # - MongoDB-AUDIT: gz
        # - MongoDB-SlowLog：ap-guangzhou
        # - MongoDB-ErrorLog：ap-guangzhou
        # - TDMYSQL-SLOW：gz
        # - DCDB所有日志类型：gz
        # - MariaDB所有日志类型：gz
        # - PostgreSQL所有日志类型：gz
        # - BH所有日志类型：overseas-polaris(中国香港地区和其他)/fsi-polaris(金融区)/general-polaris(普通区)/intl-sg-prod(国际站)
        # - APIS所有日志类型：gz
        # @type CloudProductRegion: String

        attr_accessor :InstanceId, :AssumerName, :LogType, :CloudProductRegion

        def initialize(instanceid=nil, assumername=nil, logtype=nil, cloudproductregion=nil)
          @InstanceId = instanceid
          @AssumerName = assumername
          @LogType = logtype
          @CloudProductRegion = cloudproductregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AssumerName = params['AssumerName']
          @LogType = params['LogType']
          @CloudProductRegion = params['CloudProductRegion']
        end
      end

      # DeleteCloudProductLogCollection返回参数结构体
      class DeleteCloudProductLogCollectionResponse < TencentCloud::Common::AbstractModel
        # @param Status: 枚举值，0创建中 1创建完成 2删除中 3删除完成
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

      # DeleteConfigExtra请求参数结构体
      class DeleteConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 特殊采集规则扩展配置ID
        # - 通过[获取特殊采集配置](https://cloud.tencent.com/document/api/614/71164)特殊采集规则扩展配置ID。
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

      # DeleteConfigFromMachineGroup请求参数结构体
      class DeleteConfigFromMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组ID
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
        # @type GroupId: String
        # @param ConfigId: 采集配置ID
        #  - 通过[获取采集规则配置](https://cloud.tencent.com/document/product/614/58616)获取采集配置Id。
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

      # DeleteConfig请求参数结构体
      class DeleteConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集配置ID
        #  - 通过[获取采集规则配置](https://cloud.tencent.com/document/product/614/58616)获取采集配置Id。
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

      # DeleteConsoleSharing请求参数结构体
      class DeleteConsoleSharingRequest < TencentCloud::Common::AbstractModel
        # @param SharingId: 免密分享Id。
        # - 通过 [获取免密分享列表](https://cloud.tencent.com/document/product/614/109798) 获取免密分享Id。
        # - 通过 [创建免密分享](https://cloud.tencent.com/document/product/614/109800) 获取免密分享Id。
        # @type SharingId: String

        attr_accessor :SharingId

        def initialize(sharingid=nil)
          @SharingId = sharingid
        end

        def deserialize(params)
          @SharingId = params['SharingId']
        end
      end

      # DeleteConsoleSharing返回参数结构体
      class DeleteConsoleSharingResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConsumer请求参数结构体
      class DeleteConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
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

      # DeleteCosRecharge请求参数结构体
      class DeleteCosRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: COS导入配置Id。
        # - 通过 [获取cos导入配置](https://cloud.tencent.com/document/product/614/88099) 获取COS导入配置Id。
        # @type Id: String
        # @param TopicId: 日志主题Id。
        # -  通过[获取日志主题列表](https://cloud.tencent.com/document/api/614/56454)获取日志主题Id。
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

      # DeleteCosRecharge返回参数结构体
      class DeleteCosRechargeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDashboardSubscribe请求参数结构体
      class DeleteDashboardSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param Id: 仪表盘订阅记录id。通过 [获取仪表盘订阅列表](https://cloud.tencent.com/document/api/614/105779)接口获取Id。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteDashboardSubscribe返回参数结构体
      class DeleteDashboardSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDataTransform请求参数结构体
      class DeleteDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 数据加工任务ID- 通过[获取数据加工任务列表基本信息](https://cloud.tencent.com/document/product/614/72182)获取数据加工任务Id。
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

      # DeleteExport请求参数结构体
      class DeleteExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出任务Id
        # - 通过[获取日志下载任务列表](https://cloud.tencent.com/document/product/614/56449)获取日志导出任务Id。
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

      # DeleteIndex请求参数结构体
      class DeleteIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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

      # DeleteKafkaRecharge请求参数结构体
      class DeleteKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: Kafka导入配置Id。

        # - 通过 [创建Kafka数据订阅任务](https://cloud.tencent.com/document/product/614/94448)获取Kafka导入配置Id。
        # - 通过 [获取Kafka数据订阅任务列表](https://cloud.tencent.com/document/product/614/94446)获取Kafka导入配置Id。
        # @type Id: String
        # @param TopicId: 导入CLS目标日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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

      # DeleteLogset请求参数结构体
      class DeleteLogsetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集Id。通过 [获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。
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

      # DeleteMachineGroupInfo请求参数结构体
      class DeleteMachineGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组Id
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/product/614/56438)获取机器组Id。
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

      # DeleteMachineGroup请求参数结构体
      class DeleteMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组Id
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/product/614/56438)获取机器组Id。
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

      # DeleteNoticeContent请求参数结构体
      class DeleteNoticeContentRequest < TencentCloud::Common::AbstractModel
        # @param NoticeContentId: 通知内容模板ID。-通过[获取通知内容模板](https://cloud.tencent.com/document/api/614/111714)获取通知内容模版ID
        # @type NoticeContentId: String

        attr_accessor :NoticeContentId

        def initialize(noticecontentid=nil)
          @NoticeContentId = noticecontentid
        end

        def deserialize(params)
          @NoticeContentId = params['NoticeContentId']
        end
      end

      # DeleteNoticeContent返回参数结构体
      class DeleteNoticeContentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScheduledSql请求参数结构体
      class DeleteScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，通过[获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519)获取
        # @type TaskId: String
        # @param SrcTopicId: 源日志主题ID，通过[获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519)获取
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

      # DeleteShipper请求参数结构体
      class DeleteShipperRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则Id。
        # - 通过 [获取投递任务列表](https://cloud.tencent.com/document/product/614/58745)获取ShipperId。
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

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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

      # DeleteWebCallback请求参数结构体
      class DeleteWebCallbackRequest < TencentCloud::Common::AbstractModel
        # @param WebCallbackId: 告警渠道回调配置ID。-通过[获取告警渠道回调配置列表](https://cloud.tencent.com/document/api/614/115229)获取告警渠道回调配置ID
        # @type WebCallbackId: String

        attr_accessor :WebCallbackId

        def initialize(webcallbackid=nil)
          @WebCallbackId = webcallbackid
        end

        def deserialize(params)
          @WebCallbackId = params['WebCallbackId']
        end
      end

      # DeleteWebCallback返回参数结构体
      class DeleteWebCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 投递配置入参
      class DeliverConfig < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息。

        # 示例：
        #  ap-guangzhou  广州地域；
        # ap-nanjing 南京地域。

        # 详细信息请查看官网[地域和访问域名](https://cloud.tencent.com/document/product/614/18940)

        # @type Region: String
        # @param TopicId: 日志主题ID。-通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题ID
        # @type TopicId: String
        # @param Scope: 投递数据范围。

        # 0: 全部日志, 包括告警策略日常周期执行的所有日志，也包括告警策略变更产生的日志，默认值

        # 1:仅告警触发及恢复日志
        # @type Scope: Integer

        attr_accessor :Region, :TopicId, :Scope

        def initialize(region=nil, topicid=nil, scope=nil)
          @Region = region
          @TopicId = topicid
          @Scope = scope
        end

        def deserialize(params)
          @Region = params['Region']
          @TopicId = params['TopicId']
          @Scope = params['Scope']
        end
      end

      # DescribeAlarmNotices请求参数结构体
      class DescribeAlarmNoticesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li> name
        # 按照【通知渠道组名称】进行过滤。
        # 类型：String
        # 示例："Filters":[{"Key":"name","Values":["test-notice"]}]
        # 必选：否</li>
        # <li> alarmNoticeId
        # 按照【通知渠道组ID】进行过滤。
        # 类型：String
        # 示例："Filters": [{Key: "alarmNoticeId", Values: ["notice-5281f1d2-6275-4e56-9ec3-a1eb19d8bc2f"]}]
        # 必选：否</li>
        # <li> uid
        # 按照【接收用户ID】进行过滤。
        # 类型：String
        # 示例："Filters": [{Key: "uid", Values: ["1137546"]}]
        # 必选：否</li>
        # <li> groupId
        # 按照【接收用户组ID】进行过滤。
        # 类型：String
        # 示例："Filters": [{Key: "groupId", Values: ["344098"]}]
        # 必选：否</li>

        # <li> deliverFlag
        # 按照【投递状态】进行过滤。
        # 类型：String
        # 必选：否
        # 可选值： "1":未启用,  "2": 已启用, "3":投递异常</li>
        # 示例："Filters":[{"Key":"deliverFlag","Values":["2"]}]
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
        # @type AlarmNotices: Array
        # @param TotalCount: 符合条件的告警通知模板总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAlarmShields请求参数结构体
      class DescribeAlarmShieldsRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 通知渠道组id。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/api/614/56462)获取通知渠道组id
        # @type AlarmNoticeId: String
        # @param Filters: - taskId:按照【规则id】进行过滤。类型：String  必选：否
        # - status:按照【规则状态】进行过滤。类型：String。 支持 0:暂未生效，1:生效中，2:已失效。 必选：否
        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer

        attr_accessor :AlarmNoticeId, :Filters, :Offset, :Limit

        def initialize(alarmnoticeid=nil, filters=nil, offset=nil, limit=nil)
          @AlarmNoticeId = alarmnoticeid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
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

      # DescribeAlarmShields返回参数结构体
      class DescribeAlarmShieldsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的规则总数目
        # @type TotalCount: Integer
        # @param AlarmShields: 告警屏蔽规则详情
        # @type AlarmShields: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AlarmShields, :RequestId

        def initialize(totalcount=nil, alarmshields=nil, requestid=nil)
          @TotalCount = totalcount
          @AlarmShields = alarmshields
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AlarmShields'].nil?
            @AlarmShields = []
            params['AlarmShields'].each do |i|
              alarmshieldinfo_tmp = AlarmShieldInfo.new
              alarmshieldinfo_tmp.deserialize(i)
              @AlarmShields << alarmshieldinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarms请求参数结构体
      class DescribeAlarmsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: name
        # - 按照【告警策略名称】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 示例：test-alarm

        # alarmId
        # - 按照【告警策略ID】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 示例：alarm-b60cf034-c3d6-4b01-xxxx-4e877ebb4751

        # topicId
        # - 按照【监控对象的日志主题ID】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 示例：6766f83d-659e-xxxx-a8f7-9104a1012743

        # enable
        # - 按照【启用状态】进行过滤。
        # - 类型：String
        # - 备注：enable参数值范围: 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False。 其它值将返回参数错误信息.
        # - 必选：否
        # - 示例：true

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param From: 查询时间范围启始时间，毫秒级unix时间戳(ms)
        # @type From: Integer
        # @param To: 查询时间范围结束时间，毫秒级unix时间戳(ms)
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeCloudProductLogTasks请求参数结构体
      class DescribeCloudProductLogTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为100，最大值100。
        # @type Limit: Integer
        # @param Filters: - assumerName
        #   - 按照【云产品标识】进行过滤。
        #   - 类型：String
        #   - 必选：否
        #   - 枚举：CDS、CWP、CDB、TDSQL-C、MongoDB、TDStore、DCDB、MariaDB、PostgreSQL、BH、APIS
        # - logType
        #   - 按照【日志类型】进行过滤。
        #   - 类型：String
        #   - 必选：否
        #   - 枚举：CDS-AUDIT、CDS-RISK、CDB-AUDIT、TDSQL-C-AUDIT、MongoDB-AUDIT、MongoDB-SlowLog、MongoDB-ErrorLog、TDMYSQL-SLOW、DCDB-AUDIT、DCDB-SLOW、DCDB-ERROR、MariaDB-AUDIT、MariaDB-SLOW、MariaDB-ERROR、PostgreSQL-SLOW、PostgreSQL-ERROR、PostgreSQL-AUDIT、BH-FILELOG、BH-COMMANDLOG、APIS-ACCESS
        # - instanceId
        #   - 按照【实例ID】进行过滤。
        #   - 类型：String
        #   - 必选：否
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
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
        end
      end

      # DescribeCloudProductLogTasks返回参数结构体
      class DescribeCloudProductLogTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 日志配置详情列表
        # @type Tasks: Array
        # @param TotalCount: 日志配置总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :RequestId

        def initialize(tasks=nil, totalcount=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              cloudproductlogtaskinfo_tmp = CloudProductLogTaskInfo.new
              cloudproductlogtaskinfo_tmp.deserialize(i)
              @Tasks << cloudproductlogtaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigExtras请求参数结构体
      class DescribeConfigExtrasRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器，支持如下选项：
        # name
        # - 按照【特殊采集配置名称】进行模糊匹配过滤。
        # - 类型：String
        # - 示例：test-config

        # configExtraId
        # - 按照【特殊采集配置ID】进行过滤。
        # - 类型：String
        # - 示例：3b83f9d6-3a4d-47f9-9b7f-285c868b2f9a

        # topicId
        # - 按照【日志主题】进行过滤。
        # - 类型：String
        # - 示例：3581a3be-aa41-423b-995a-54ec84da6264

        # machineGroupId
        # - 按照【机器组ID】进行过滤。
        # - 类型：String
        # - 示例：f948972f-a063-408c-a59f-8c3230bddaf6

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

      # DescribeConfigExtras返回参数结构体
      class DescribeConfigExtrasResponse < TencentCloud::Common::AbstractModel
        # @param Configs: 采集配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param TotalCount: 过滤到的总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 通过[获取采集规则配置](https://cloud.tencent.com/document/product/614/58616)获取采集配置Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 示例：test-config

        # configId
        # - 按照【采集配置ID】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 示例：3581a3be-aa41-423b-995a-54ec84da6264

        # topicId
        # - 按照【日志主题】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 示例：3b83f9d6-3a4d-47f9-9b7f-285c868b2f9a
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeConsoleSharingList请求参数结构体
      class DescribeConsoleSharingListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeConsoleSharingList返回参数结构体
      class DescribeConsoleSharingListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页的总数目
        # @type TotalCount: Integer
        # @param ConsoleSharingInfos: 控制台免密分享列表
        # @type ConsoleSharingInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConsoleSharingInfos, :RequestId

        def initialize(totalcount=nil, consolesharinginfos=nil, requestid=nil)
          @TotalCount = totalcount
          @ConsoleSharingInfos = consolesharinginfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConsoleSharingInfos'].nil?
            @ConsoleSharingInfos = []
            params['ConsoleSharingInfos'].each do |i|
              consolesharinginfo_tmp = ConsoleSharingInfo.new
              consolesharinginfo_tmp.deserialize(i)
              @ConsoleSharingInfos << consolesharinginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumer请求参数结构体
      class DescribeConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
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
        # @type Compression: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicId: 日志主题Id。
        # -  通过[获取日志主题列表](https://cloud.tencent.com/document/api/614/56454)获取日志主题Id。
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
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDashboardSubscribes请求参数结构体
      class DescribeDashboardSubscribesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: dashboardId：按照【仪表盘id】进行过滤。类型：String必选：否

        # - 仪表盘id。通过 [获取仪表盘](https://cloud.tencent.com/document/api/614/95636)接口获取DashboardId。
        # - 入参示例：dashboard-522a5609-1f41-4b11-8086-5afd1d7574f5

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
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

      # DescribeDashboardSubscribes返回参数结构体
      class DescribeDashboardSubscribesResponse < TencentCloud::Common::AbstractModel
        # @param DashboardSubscribeInfos: 仪表盘订阅列表
        # @type DashboardSubscribeInfos: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DashboardSubscribeInfos, :TotalCount, :RequestId

        def initialize(dashboardsubscribeinfos=nil, totalcount=nil, requestid=nil)
          @DashboardSubscribeInfos = dashboardsubscribeinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DashboardSubscribeInfos'].nil?
            @DashboardSubscribeInfos = []
            params['DashboardSubscribeInfos'].each do |i|
              dashboardsubscribeinfo_tmp = DashboardSubscribeInfo.new
              dashboardsubscribeinfo_tmp.deserialize(i)
              @DashboardSubscribeInfos << dashboardsubscribeinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDashboards请求参数结构体
      class DescribeDashboardsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Filters: - dashboardId 按照【仪表盘id】进行过滤，类型：String， 必选：否。
        #     - 示例值：dashboard-522a5609-1f41-4b11-8086-5afd1d7574f5
        # - dashboardName 按照【仪表盘名字】进行模糊搜索过滤，类型：String，必选：否。
        #     - 示例值：业务大盘
        # - dashboardRegion 按照【仪表盘地域】进行过滤（兼容老的仪表盘），通过云API创建的仪表盘该属性，类型：String，必选：否。
        #     - 参考  [地域和访问域名](https://cloud.tencent.com/document/product/614/18940)
        #     - 示例：ap-guangzhou
        # - tagKey 按照【标签键】进行过滤，类型：String，必选：否。
        #     - 示例值：
        #     ```
        #     "Filters":[
        #         {
        #             "Key": "tagKey",
        #             "Values": [
        #                 "tag-key-test"
        #             ]
        #         }
        #     ]
        #     ```

        # - tag:tagKey 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换，类型：String，必选：否，
        #     - 参考 [示例1](https://cloud.tencent.com/document/api/614/95636#4.-.E7.A4.BA.E4.BE.8B) 使用。
        #     ```
        #     "Filters": [
        #         {
        #             "Key": "tag:tag-key-test",
        #             "Values": [
        #                 "12"
        #             ]
        #         }
        #     ]
        #     ```

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param TopicIdRegionFilter: 按照topicId和regionId过滤。
        # - topicId:日志主题Id。
        #     -  通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        #     - 示例值：439a5304-08f9-484b-9c4d-46ff57133816
        # - regionId
        #     - 1:广州
        #     - 4:上海
        #     - 5:中国香港
        #     - 7:上海金融
        #     - 8:北京
        #     - 9:新加坡
        #     - 11:深圳金融
        #     - 15:硅谷
        #     - 16:成都
        #     - 17:法兰克福
        #     - 18:首尔
        #     - 19:重庆
        #     - 22:弗吉尼亚
        #     - 23:曼谷
        #     - 25:东京
        #     - 33:南京
        #     - 36:天津
        #     - 39:台北
        #     - 46:北京金融
        #     - 72:雅加达
        #     - 74:圣保罗
        #     - 78:上海自动驾驶云
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: - taskName
        # 按照【加工任务名称】进行过滤。
        # 类型：String
        # 必选：否
        # 示例：test-task

        # - taskId
        # 按照【加工任务id】进行过滤。
        # 类型：String
        # 必选：否
        # 示例：a3622556-6402-4942-b4ff-5ae32ec29810
        # 数据加工任务ID- 通过[获取数据加工任务列表基本信息](https://cloud.tencent.com/document/product/614/72182)获取数据加工任务Id。

        # - topicId
        # 按照【源topicId】进行过滤。
        # 类型：String
        # 必选：否
        # 示例：756cec3e-a0a5-44c3-85a8-090870582000
        # 日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。

        # - status
        # 按照【 任务运行状态】进行过滤。 1：准备中，2：运行中，3：停止中，4：已停止
        # 类型：String
        # 必选：否
        # 示例：1

        # - hasServiceLog
        # 按照【是否开启服务日志】进行过滤。 1：未开启，2：已开启
        # 类型：String
        # 必选：否
        # 示例：1

        # - dstTopicType
        # 按照【目标topic类型】进行过滤。  1：固定，2：动态
        # 类型：String
        # 必选：否
        # 示例：1

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Type: 默认值为2.   1: 获取单个任务的详细信息 2：获取任务列表
        # @type Type: Integer
        # @param TaskId: Type为1， 此参数必填
        # 数据加工任务ID- 通过[获取数据加工任务列表基本信息](https://cloud.tencent.com/document/product/614/72182)获取数据加工任务Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicId: 日志主题Id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param TopicId: 日志主题Id
        # @type TopicId: String
        # @param Status: 索引状态。true：开启状态，false：关闭状态
        # 开启后可对日志进行检索分析，将产生索引流量、索引存储及相应费用。[费用详情](https://cloud.tencent.com/document/product/614/45802#.E8.AE.A1.E8.B4.B9.E9.A1.B9)
        # @type Status: Boolean
        # @param Rule: 索引配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: :class:`Tencentcloud::Cls.v20201016.models.RuleInfo`
        # @param ModifyTime: 索引修改时间，初始值为索引创建时间。格式 `YYYY-MM-DD HH:MM:SS`
        # @type ModifyTime: String
        # @param IncludeInternalFields: 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引
        # * false:不包含
        # * true:包含
        # @type IncludeInternalFields: Boolean
        # @param MetadataFlag: 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引
        # * 0:仅包含开启键值索引的元数据字段
        # * 1:包含所有元数据字段
        # * 2:不包含任何元数据字段
        # @type MetadataFlag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeKafkaConsumerGroupDetail请求参数结构体
      class DescribeKafkaConsumerGroupDetailRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Group: 消费组名称
        # @type Group: String

        attr_accessor :TopicId, :Group

        def initialize(topicid=nil, group=nil)
          @TopicId = topicid
          @Group = group
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Group = params['Group']
        end
      end

      # DescribeKafkaConsumerGroupDetail返回参数结构体
      class DescribeKafkaConsumerGroupDetailResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集id
        # @type LogsetId: String
        # @param Group: 消费组名称
        # @type Group: String
        # @param PartitionInfos: 消费组信息列表
        # @type PartitionInfos: Array
        # @param State: Empty：组内没有成员，但存在已提交的偏移量。所有消费者都离开但保留了偏移量
        # Dead：组内没有成员，且没有已提交的偏移量。组被删除或长时间无活动
        # Stable：组内成员正常消费，分区分配平衡。正常运行状态
        # PreparingRebalance：组正在准备重新平衡。有新成员加入或现有成员离开
        # CompletingRebalance：组正在准备重新平衡。有新成员加入或现有成员离开
        # @type State: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogsetId, :Group, :PartitionInfos, :State, :RequestId

        def initialize(logsetid=nil, group=nil, partitioninfos=nil, state=nil, requestid=nil)
          @LogsetId = logsetid
          @Group = group
          @PartitionInfos = partitioninfos
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @Group = params['Group']
          unless params['PartitionInfos'].nil?
            @PartitionInfos = []
            params['PartitionInfos'].each do |i|
              grouppartitioninfo_tmp = GroupPartitionInfo.new
              grouppartitioninfo_tmp.deserialize(i)
              @PartitionInfos << grouppartitioninfo_tmp
            end
          end
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafkaConsumerGroupList请求参数结构体
      class DescribeKafkaConsumerGroupListRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Filters: - group
        # 按照【消费组名称】进行过滤。
        # 类型：String
        # 必选：否
        # 示例：消费组1

        # 每次请求的Filters的上限为10，Filter.Values的上限为10。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer

        attr_accessor :TopicId, :Filters, :Offset, :Limit

        def initialize(topicid=nil, filters=nil, offset=nil, limit=nil)
          @TopicId = topicid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TopicId = params['TopicId']
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

      # DescribeKafkaConsumerGroupList返回参数结构体
      class DescribeKafkaConsumerGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param LogsetId: 日志集id
        # @type LogsetId: String
        # @param Total: 总个数
        # @type Total: Integer
        # @param Groups: 消费组信息列表
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicName, :LogsetId, :Total, :Groups, :RequestId

        def initialize(topicname=nil, logsetid=nil, total=nil, groups=nil, requestid=nil)
          @TopicName = topicname
          @LogsetId = logsetid
          @Total = total
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @LogsetId = params['LogsetId']
          @Total = params['Total']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              consumergroup_tmp = ConsumerGroup.new
              consumergroup_tmp.deserialize(i)
              @Groups << consumergroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafkaConsumer请求参数结构体
      class DescribeKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Id: 导入配置Id。
        # - 通过 [创建Kafka数据订阅任务](https://cloud.tencent.com/document/product/614/94448)获取Kafka导入配置Id。
        # - 通过 [获取Kafka数据订阅任务列表](https://cloud.tencent.com/document/product/614/94446)获取Kafka导入配置Id。
        # @type Id: String
        # @param Status: 状态。1: 运行中，2: 暂停，3：错误
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeLogContext请求参数结构体
      class DescribeLogContextRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 要查询的日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type TopicId: String
        # @param BTime: 日志时间,  即 [检索分析日志](https://cloud.tencent.com/document/product/614/56447) 接口返回信息中Results结构体中的Time，需按照 UTC+8 时区将该毫秒级Unix时间戳转换为 YYYY-mm-dd HH:MM:SS.FFF 格式的字符串。
        # @type BTime: String
        # @param PkgId: 日志包序号，即 [检索分析日志](https://cloud.tencent.com/document/product/614/56447) 接口返回信息中Results结构体中的PkgId。
        # @type PkgId: String
        # @param PkgLogId: 日志包内一条日志的序号，即 [检索分析日志](https://cloud.tencent.com/document/product/614/56447) 接口返回信息中Results结构中的PkgLogId。
        # @type PkgLogId: Integer
        # @param PrevLogs: 前${PrevLogs}条日志，默认值10。
        # @type PrevLogs: Integer
        # @param NextLogs: 后${NextLogs}条日志，默认值10。
        # @type NextLogs: Integer
        # @param Query: 检索语句，对日志上下文进行过滤，最大长度为12KB
        # 语句由 <a href="https://cloud.tencent.com/document/product/614/47044" target="_blank">[检索条件]</a>构成，不支持SQL语句
        # @type Query: String
        # @param From: 上下文检索的开始时间，单位：毫秒级时间戳
        # 注意：
        # - From为空时，表示上下文检索的开始时间不做限制
        # - From和To非空时，From < To
        # - 暂时仅支持上海 / 弗吉尼亚/ 新加坡地域
        # @type From: Integer
        # @param To: 上下文检索的结束时间，单位：毫秒级时间戳。
        # 注意：
        # - To为空时，表示上下文检索的结束时间不做限制
        # - From和To非空时，From < To
        # - 暂时仅支持上海 / 弗吉尼亚/ 新加坡地域
        # @type To: Integer

        attr_accessor :TopicId, :BTime, :PkgId, :PkgLogId, :PrevLogs, :NextLogs, :Query, :From, :To

        def initialize(topicid=nil, btime=nil, pkgid=nil, pkglogid=nil, prevlogs=nil, nextlogs=nil, query=nil, from=nil, to=nil)
          @TopicId = topicid
          @BTime = btime
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @PrevLogs = prevlogs
          @NextLogs = nextlogs
          @Query = query
          @From = from
          @To = to
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @BTime = params['BTime']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @PrevLogs = params['PrevLogs']
          @NextLogs = params['NextLogs']
          @Query = params['Query']
          @From = params['From']
          @To = params['To']
        end
      end

      # DescribeLogContext返回参数结构体
      class DescribeLogContextResponse < TencentCloud::Common::AbstractModel
        # @param LogContextInfos: 日志上下文信息集合
        # @type LogContextInfos: Array
        # @param PrevOver: 上文日志是否已经返回完成（当PrevOver为false，表示有上文日志还未全部返回）。
        # @type PrevOver: Boolean
        # @param NextOver: 下文日志是否已经返回完成（当NextOver为false，表示有下文日志还未全部返回）。
        # @type NextOver: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Query: 检索分析语句。
        # 语句由 [检索条件] | [SQL语句]构成，无需对日志进行统计分析时，可省略其中的管道符 | 及SQL语句。
        # 使用*或空字符串可查询所有日志。
        # @type Query: String
        # @param TopicId: 要查询的日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 通过 [获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集名称。
        # logsetId
        # - 按照【日志集ID】进行过滤。
        # - 类型：String
        # - 必选：否
        # - 通过 [获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: 过滤条件
        # machineGroupName
        # - 按照【机器组名称】进行过滤。
        # - 类型：String
        # - 必选：否

        # machineGroupId
        # - 按照【机器组ID】进行过滤。
        # - 类型：String
        # - 必选：否

        # osType
        # - 按照【操作系统类型】进行过滤。0： Linux；1： Windows
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
        # @type MachineGroups: Array
        # @param TotalCount: 分页的总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param GroupId: 查询的机器组ID。

        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组ID。
        # @type GroupId: String
        # @param Filters: ip
        # - 按照ip进行过滤。
        # - 类型：String
        # - 必选：否

        # instance
        # - 按照实例id进行过滤。
        # - 类型：String
        # - 必选：否

        # version
        # - 按照LogListener版本进行过滤。
        # - 类型：String
        # - 必选：否

        # status
        # - 按照机器状态进行过滤。
        # - 类型：String
        # - 必选：否
        # - 可选值：0：离线，1：正常

        # offlineTime
        # - 按照机器离线时间进行过滤。
        # - 类型：String
        # - 必选：否
        # - -可选值：0：无离线时间，12：12小时内，24：一天内，48：两天内，99：两天前

        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目。最大支持100
        # @type Limit: Integer

        attr_accessor :GroupId, :Filters, :Offset, :Limit

        def initialize(groupid=nil, filters=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
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

      # DescribeMachines返回参数结构体
      class DescribeMachinesResponse < TencentCloud::Common::AbstractModel
        # @param Machines: 机器状态信息组
        # @type Machines: Array
        # @param AutoUpdate: 机器组是否开启自动升级功能。 0：未开启自动升级；1：开启了自动升级。
        # @type AutoUpdate: Integer
        # @param UpdateStartTime: 机器组自动升级功能预设开始时间
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 机器组自动升级功能预设结束时间
        # @type UpdateEndTime: String
        # @param LatestAgentVersion: 当前用户可用最新的Loglistener版本
        # @type LatestAgentVersion: String
        # @param ServiceLogging: 是否开启服务日志
        # @type ServiceLogging: Boolean
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Machines, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :LatestAgentVersion, :ServiceLogging, :TotalCount, :RequestId

        def initialize(machines=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, latestagentversion=nil, servicelogging=nil, totalcount=nil, requestid=nil)
          @Machines = machines
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @LatestAgentVersion = latestagentversion
          @ServiceLogging = servicelogging
          @TotalCount = totalcount
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
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNoticeContents请求参数结构体
      class DescribeNoticeContentsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li> name
        # 按照【通知内容模板名称】进行过滤。
        # 类型：String
        # 必选：否
        # </li>
        # <li> noticeContentId
        # 按照【通知内容模板ID】进行过滤。
        # 类型：String
        # 必选：否
        # </li>
        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
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

      # DescribeNoticeContents返回参数结构体
      class DescribeNoticeContentsResponse < TencentCloud::Common::AbstractModel
        # @param NoticeContents: 通知内容模板列表。
        # @type NoticeContents: Array
        # @param TotalCount: 符合条件的通知内容模板总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeContents, :TotalCount, :RequestId

        def initialize(noticecontents=nil, totalcount=nil, requestid=nil)
          @NoticeContents = noticecontents
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NoticeContents'].nil?
            @NoticeContents = []
            params['NoticeContents'].each do |i|
              noticecontenttemplate_tmp = NoticeContentTemplate.new
              noticecontenttemplate_tmp.deserialize(i)
              @NoticeContents << noticecontenttemplate_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePartitions请求参数结构体
      class DescribePartitionsRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: - srcTopicName按照【源日志主题名称】进行过滤，模糊匹配。类型：String。必选：否。示例：业务日志主题1 ，通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题名称。
        # - dstTopicName按照【目标日志主题名称】进行过滤，模糊匹配。类型：String。必选：否。示例：业务日志主题 2，通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题名称。
        # - srcTopicId按照【源日志主题ID】进行过滤。类型：String。必选：否。示例：a4478687-2382-4486-9692-de7986350f6b ，通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题id。
        # - dstTopicId按照【目标日志主题ID】进行过滤。类型：String。必选：否。示例：bd4d3375-d72a-4cd2-988d-d8eda2bd62b0，通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题id。
        # - bizType按照【主题类型】进行过滤，0：日志主题；1：指标主题。类型：String。必选：否
        # - status按照【任务状态】进行过滤，1：运行；2：停止；3：异常。类型：String。必选：否
        # - taskName按照【任务名称】进行过滤，模糊匹配。类型：String。必选：否。示例：metricTask ，通过 [获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519) 获取任务名称。
        # - taskId按照【任务ID】进行过滤，模糊匹配。类型：String。必选：否。示例：9c64f9c1-a14e-4b59-b074-5b73cac3dd66 ，通过 [获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519) 获取任务id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ShipperId: 投递规则Id。

        # - 通过 [获取投递任务列表](https://cloud.tencent.com/document/product/614/58745)获取ShipperId。
        # @type ShipperId: String
        # @param StartTime: 查询的开始时间戳，支持最近3天的查询， 毫秒。
        # StartTime必须小于EndTime
        # @type StartTime: Integer
        # @param EndTime: 查询的结束时间戳， 毫秒。
        # StartTime必须小于EndTime
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: - shipperName：按照【投递规则名称】进行过滤。
        #     类型：String。
        #     必选：否
        # - shipperId：按照【投递规则ID】进行过滤。
        #     类型：String。
        #     必选：否
        # - topicId：按照【日志主题】进行过滤。
        #     类型：String。
        #     必选：否
        # - taskStatus：按照【任务运行状态】进行过滤。 支持`0`：停止，`1`：运行中，`2`：异常
        #     类型：String
        #     必选：否

        # 每次请求的Filters的上限为10，Filter.Values的上限为10。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页的限制数目，默认值为20，最大值100
        # @type Limit: Integer
        # @param PreciseSearch: 控制Filters相关字段是否为精确匹配。  0: 默认值，shipperName模糊匹配 1: shipperName 精确匹配
        # @type PreciseSearch: Integer

        attr_accessor :Filters, :Offset, :Limit, :PreciseSearch

        def initialize(filters=nil, offset=nil, limit=nil, precisesearch=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @PreciseSearch = precisesearch
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
        end
      end

      # DescribeShippers返回参数结构体
      class DescribeShippersResponse < TencentCloud::Common::AbstractModel
        # @param Shippers: 投递规则列表
        # @type Shippers: Array
        # @param TotalCount: 本次查询获取到的总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: <ul><li>topicName 按照【日志主题名称】进行过滤，默认为模糊匹配，可使用 PreciseSearch 参数设置为精确匹配。类型：String。必选：否</li>
        # <li>logsetName 按照【日志集名称】进行过滤，默认为模糊匹配，可使用 PreciseSearch 参数设置为精确匹配。类型：String。必选：否</li>
        # <li>topicId 按照【日志主题ID】进行过滤。类型：String。必选：否</li>
        # <li>logsetId 按照【日志集ID】进行过滤，可通过调用 <a href="https://cloud.tencent.com/document/product/614/58624">DescribeLogsets</a> 查询已创建的日志集列表或登录控制台进行查看；也可以调用<a href="https://cloud.tencent.com/document/product/614/58626">CreateLogset</a> 创建新的日志集。类型：String。必选：否</li>
        # <li>tagKey 按照【标签键】进行过滤。类型：String。必选：否</li>
        # <li>tag:tagKey 按照【标签键值对】进行过滤。tagKey 使用具体的标签键进行替换，例如 tag:exampleKey。类型：String。必选：否</li>
        # <li>storageType 按照【日志主题的存储类型】进行过滤。可选值 hot（标准存储），cold（低频存储）类型：String。必选：否</li></ul>
        # 注意：每次请求的 Filters 的上限为10，Filter.Values 的上限为100。
        # @type Filters: Array
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param PreciseSearch: 控制Filters相关字段是否为精确匹配。
        # <ul><li>0: 默认值，topicName 和 logsetName 模糊匹配</li>
        # <li>1: topicName   精确匹配</li>
        # <li>2: logsetName精确匹配</li>
        # <li>3: topicName 和logsetName 都精确匹配</li></ul>
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeWebCallbacks请求参数结构体
      class DescribeWebCallbacksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: - name
        # 按照【告警渠道回调配置名称】进行过滤。
        # 类型：String
        # 必选：否

        # - webCallbackId
        # 按照【告警渠道回调配置ID】进行过滤。
        # 类型：String
        # 必选：否

        # - type
        # 按照【告警渠道回调配置渠道类型】进行过滤。
        # 类型：String
        # 必选：否
        # 枚举值：WeCom，DingTalk，Lark，Http
        # 每次请求的Filters的上限为10，Filter.Values的上限为100。
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

      # DescribeWebCallbacks返回参数结构体
      class DescribeWebCallbacksResponse < TencentCloud::Common::AbstractModel
        # @param WebCallbacks: 告警渠道回调配置列表。
        # @type WebCallbacks: Array
        # @param TotalCount: 符合条件的通知内容配置总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebCallbacks, :TotalCount, :RequestId

        def initialize(webcallbacks=nil, totalcount=nil, requestid=nil)
          @WebCallbacks = webcallbacks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WebCallbacks'].nil?
            @WebCallbacks = []
            params['WebCallbacks'].each do |i|
              webcallbackinfo_tmp = WebCallbackInfo.new
              webcallbackinfo_tmp.deserialize(i)
              @WebCallbacks << webcallbackinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 键值索引自动配置，启用后自动将日志内的字段添加到键值索引中，包括日志中后续新增的字段。
      class DynamicIndex < TencentCloud::Common::AbstractModel
        # @param Status: 键值索引自动配置开关
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 升级通知
      class EscalateNoticeInfo < TencentCloud::Common::AbstractModel
        # @param NoticeReceivers: 告警通知模板接收者信息。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警通知模板回调信息。
        # @type WebCallbacks: Array
        # @param Escalate: 告警升级开关。`true`：开启告警升级、`false`：关闭告警升级，默认：false
        # @type Escalate: Boolean
        # @param Interval: 告警升级间隔。单位：分钟，范围`[1，14400]`
        # @type Interval: Integer
        # @param Type: 升级条件。`1`：无人认领且未恢复、`2`：未恢复，默认为1
        # - 无人认领且未恢复：告警没有恢复并且没有人认领则升级
        # - 未恢复：当前告警持续未恢复则升级
        # @type Type: Integer
        # @param EscalateNotice: 告警升级后下一个环节的通知渠道配置，最多可配置5个环节。
        # @type EscalateNotice: :class:`Tencentcloud::Cls.v20201016.models.EscalateNoticeInfo`

        attr_accessor :NoticeReceivers, :WebCallbacks, :Escalate, :Interval, :Type, :EscalateNotice

        def initialize(noticereceivers=nil, webcallbacks=nil, escalate=nil, interval=nil, type=nil, escalatenotice=nil)
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @Escalate = escalate
          @Interval = interval
          @Type = type
          @EscalateNotice = escalatenotice
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
          @Escalate = params['Escalate']
          @Interval = params['Interval']
          @Type = params['Type']
          unless params['EscalateNotice'].nil?
            @EscalateNotice = EscalateNoticeInfo.new
            @EscalateNotice.deserialize(params['EscalateNotice'])
          end
        end
      end

      # Windows事件日志采集配置
      class EventLog < TencentCloud::Common::AbstractModel
        # @param EventChannel: 事件通道，支持
        # - Application 应用日志
        # - Security 安全日志
        # - Setup 启动日志
        # - System 系统日志
        # - ALL 所有日志
        # @type EventChannel: String
        # @param TimeType: 时间字段（Timestamp）支持的类型
        # - 1（用户自定义时间）
        # - 2（当前时间）
        # @type TimeType: Integer
        # @param Timestamp: 时间，用户选择自定义时间类型时，需要指定时间，单位秒
        # 格式：时间戳，1754897446
        # @type Timestamp: Integer
        # @param EventIDs: 事件ID过滤列表

        # 选填，为空表示不做过滤
        # 支持正向过滤单个值（例：20）或范围（例：0-20），也支持反向过滤单个值(例：-20)
        # 多个过滤项之间可由逗号隔开，例：1-200,-100表示采集1-200范围内除了100以外的事件日志
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
        # @param From: 日志导出起始时间，毫秒时间戳
        # @type From: Integer
        # @param To: 日志导出结束时间，毫秒时间戳
        # @type To: Integer
        # @param CosPath: 日志导出路径,有效期一个小时，请尽快使用该路径下载。
        # @type CosPath: String
        # @param CreateTime: 日志导出创建时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param SyntaxRule: 语法规则。 默认值为0。
        # 0：Lucene语法，1：CQL语法。
        # @type SyntaxRule: Integer
        # @param DerivedFields: 导出字段
        # @type DerivedFields: Array

        attr_accessor :TopicId, :ExportId, :Query, :FileName, :FileSize, :Order, :Format, :Count, :Status, :From, :To, :CosPath, :CreateTime, :SyntaxRule, :DerivedFields

        def initialize(topicid=nil, exportid=nil, query=nil, filename=nil, filesize=nil, order=nil, format=nil, count=nil, status=nil, from=nil, to=nil, cospath=nil, createtime=nil, syntaxrule=nil, derivedfields=nil)
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
          @DerivedFields = derivedfields
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
          @DerivedFields = params['DerivedFields']
        end
      end

      # 日志提取规则
      class ExtractRuleInfo < TencentCloud::Common::AbstractModel
        # @param TimeKey: 时间字段的key名字，TimeKey和TimeFormat必须成对出现
        # @type TimeKey: String
        # @param TimeFormat: 时间字段的格式，参考c语言的strftime函数对于时间的格式说明输出参数
        # - 参考 [配置时间格式](https://cloud.tencent.com/document/product/614/38614) 文档
        # @type TimeFormat: String
        # @param Delimiter: 分隔符类型日志的分隔符，只有LogType为delimiter_log时有效
        # @type Delimiter: String
        # @param LogRegex: 整条日志匹配规则，只有LogType为fullregex_log时有效
        # @type LogRegex: String
        # @param BeginRegex: 行首匹配规则，只有LogType为multiline_log或fullregex_log时有效
        # @type BeginRegex: String
        # @param Keys: 取的每个字段的key名字，为空的key代表丢弃这个字段，只有LogType为delimiter_log时有效，json_log的日志使用json本身的key。限制100个。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param FilterKeyRegex: 日志过滤规则列表（旧版），需要过滤日志的key，及其对应的regex。
        #  注意：2.9.3及以上版本LogListener ，建议使用AdvanceFilterRules配置日志过滤规则。
        # @type FilterKeyRegex: Array
        # @param UnMatchUpLoadSwitch: 解析失败日志是否上传，true表示上传，false表示不上传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchUpLoadSwitch: Boolean
        # @param UnMatchLogKey: 失败日志的key，当UnMatchUpLoadSwitch为true时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnMatchLogKey: String
        # @param Backtracking: 增量采集模式下的回溯数据量，默认：-1（全量采集）；其他非负数表示增量采集（从最新的位置，往前采集${Backtracking}字节（Byte）的日志）最大支持1073741824（1G）。
        # 注意：
        # - COS导入不支持此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backtracking: Integer
        # @param IsGBK: 是否为Gbk编码。 0：否；1：是。
        # 注意
        # - 目前取0值时，表示UTF-8编码
        # - COS导入不支持此字段。
        # @type IsGBK: Integer
        # @param JsonStandard: 是否为标准json。  0：否； 1：是。
        # - 标准json指采集器使用业界标准开源解析器进行json解析，非标json指采集器使用CLS自研json解析器进行解析，两种解析器没有本质区别，建议客户使用标准json进行解析。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonStandard: Integer
        # @param Protocol: syslog传输协议，取值为tcp或者udp，只有在LogType为service_syslog时生效，其余类型无需填写。
        # 注意：
        # - 该字段适用于：创建采集规则配置、修改采集规则配置。
        # - COS导入不支持此字段。
        # @type Protocol: String
        # @param Address: syslog系统日志采集指定采集器监听的地址和端口 ，形式：[ip]:[port]，只有在LogType为service_syslog时生效，其余类型无需填写。
        # 注意：
        # - 该字段适用于：创建采集规则配置、修改采集规则配置。
        # - COS导入不支持此字段。
        # @type Address: String
        # @param ParseProtocol: rfc3164：指定系统日志采集使用RFC3164协议解析日志。
        # rfc5424：指定系统日志采集使用RFC5424协议解析日志。
        # auto：自动匹配rfc3164或者rfc5424其中一种协议。
        # 只有在LogType为service_syslog时生效，其余类型无需填写。
        # 注意：
        # - 该字段适用于：创建采集规则配置、修改采集规则配置
        # - COS导入不支持此字段。
        # @type ParseProtocol: String
        # @param MetadataType: 元数据类型。0: 不使用元数据信息；1:使用机器组元数据；2:使用用户自定义元数据；3:使用采集配置路径。
        # 注意：
        # - COS导入不支持此字段。
        # @type MetadataType: Integer
        # @param PathRegex: 采集配置路径正则表达式。

        # ```
        # 请用"()"标识路径中目标字段对应的正则表达式，解析时将"()"视为捕获组，并以__TAG__.{i}:{目标字段}的形式与日志一起上报，其中i为捕获组的序号。
        # 若不希望以序号为键名，可以通过命名捕获组"(?<{键名}>{正则})"自定义键名，并以__TAG__.{键名}:{目标字段}的形式与日志一起上报。最多支持5个捕获组
        # ```

        # 注意：
        # - MetadataType为3时必填。
        # - COS导入不支持此字段。
        # @type PathRegex: String
        # @param MetaTags: 用户自定义元数据信息。
        # 注意：
        # - MetadataType为2时必填。
        # - COS导入不支持此字段。
        # @type MetaTags: Array
        # @param EventLogRules: Windows事件日志采集规则，只有在LogType为windows_event_log时生效，其余类型无需填写。
        # @type EventLogRules: Array
        # @param AdvanceFilterRules: 日志过滤规则列表（新版）。
        # 注意：
        # - 2.9.3以下版本LogListener不支持， 请使用FilterKeyRegex配置日志过滤规则。
        # - 自建k8s采集配置（CreateConfigExtra、ModifyConfigExtra）不支持此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceFilterRules: Array

        attr_accessor :TimeKey, :TimeFormat, :Delimiter, :LogRegex, :BeginRegex, :Keys, :FilterKeyRegex, :UnMatchUpLoadSwitch, :UnMatchLogKey, :Backtracking, :IsGBK, :JsonStandard, :Protocol, :Address, :ParseProtocol, :MetadataType, :PathRegex, :MetaTags, :EventLogRules, :AdvanceFilterRules

        def initialize(timekey=nil, timeformat=nil, delimiter=nil, logregex=nil, beginregex=nil, keys=nil, filterkeyregex=nil, unmatchuploadswitch=nil, unmatchlogkey=nil, backtracking=nil, isgbk=nil, jsonstandard=nil, protocol=nil, address=nil, parseprotocol=nil, metadatatype=nil, pathregex=nil, metatags=nil, eventlogrules=nil, advancefilterrules=nil)
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
          @AdvanceFilterRules = advancefilterrules
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
          unless params['AdvanceFilterRules'].nil?
            @AdvanceFilterRules = []
            params['AdvanceFilterRules'].each do |i|
              advancefilterruleinfo_tmp = AdvanceFilterRuleInfo.new
              advancefilterruleinfo_tmp.deserialize(i)
              @AdvanceFilterRules << advancefilterruleinfo_tmp
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
        # @param From: 要查询的执行详情的起始时间，Unix时间戳，单位ms。
        # @type From: Integer
        # @param To: 要查询的执行详情的结束时间，Unix时间戳，单位ms。
        # @type To: Integer
        # @param Query: 查询过滤条件，例如：
        # - 按告警策略ID查询：`alert_id:"alarm-0745ec00-e605-xxxx-b50b-54afe61fc971"`
        #    - 通过[获取告警策略列表](https://cloud.tencent.com/document/api/614/56461)获取告警策略ID
        # - 按监控对象ID查询：`monitored_object:"823d8bfa-76a7-xxxx-8399-8cda74d4009b" `
        #   - 通过[获取告警策略列表](https://cloud.tencent.com/document/api/614/56461)获取监控对象ID
        # - 按告警策略ID及监控对象ID查询：`alert_id:"alarm-0745ec00-e605-xxxx-b50b-54afe61fc971" AND monitored_object:"823d8bfa-76a7-xxxx-8399-8cda74d4009b"`
        # - 按告警策略ID及监控对象ID查询支持SQL语句：`(alert_id:"alarm-5ce45495-09e8-4d58-xxxx-768134bf330c") AND (monitored_object:"3c514e84-6f1f-46ec-xxxx-05de6163f7fe") AND NOT condition_evaluate_result: "Skip" AND condition_evaluate_result:[* TO *] | SELECT count(*) as top50StatisticsTotalCount, count_if(condition_evaluate_result='ProcessError') as top50StatisticsFailureCount, count_if(notification_send_result!='NotSend') as top50NoticeTotalCount, count_if(notification_send_result='SendPartFail' or notification_send_result='SendFail') as top50NoticeFailureCount, alert_id, alert_name, monitored_object, topic_type, happen_threshold, alert_threshold, notify_template group by alert_id, alert_name, monitored_object,topic_type, happen_threshold, alert_threshold, notify_template order by top50StatisticsTotalCount desc limit 1`
        # @type Query: String
        # @param Limit: 单次查询返回的执行详情条数，最大值为1000
        # @type Limit: Integer
        # @param Context: 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时。
        # 注意：
        # * 透传该参数时，请勿修改除该参数外的其它参数
        # * 仅当检索分析语句(Query)不包含SQL时有效，SQL获取后续结果参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        # @type Context: String
        # @param Sort: 原始日志是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果排序方式参考<a href="https://cloud.tencent.com/document/product/614/58978" target="_blank">SQL ORDER BY语法</a>
        # @type Sort: String
        # @param UseNewAnalysis: true：代表使用新的检索结果返回方式，输出参数AnalysisRecords和Columns有效；
        # false：代表使用老的检索结果返回方式，输出AnalysisResults和ColNames有效；
        # 两种返回方式在编码格式上有少量区别，建议使用true。
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
        # @param AnalysisResults: 执行详情统计分析结果。当Query字段有SQL语句时，返回SQL统计结果，否则可能返回null。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisResults: Array
        # @param AnalysisRecords: 执行详情统计分析结果；UseNewAnalysis为true有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisRecords: Array
        # @param Columns: 分析结果的列名， UseNewAnalysis为true有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # kafka协议消费组区分信息
      class GroupPartitionInfo < TencentCloud::Common::AbstractModel
        # @param PartitionId: 分区id
        # @type PartitionId: Integer
        # @param CommitTimestamp: 分区最新数据时间戳，单位：s
        # @type CommitTimestamp: Integer
        # @param Consumer: 消费者
        # @type Consumer: String

        attr_accessor :PartitionId, :CommitTimestamp, :Consumer

        def initialize(partitionid=nil, committimestamp=nil, consumer=nil)
          @PartitionId = partitionid
          @CommitTimestamp = committimestamp
          @Consumer = consumer
        end

        def deserialize(params)
          @PartitionId = params['PartitionId']
          @CommitTimestamp = params['CommitTimestamp']
          @Consumer = params['Consumer']
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

      # 符合检索条件的关键词，一般用于高亮显示。仅支持键值检索，不支持全文检索
      class HighLightItem < TencentCloud::Common::AbstractModel
        # @param Key: 高亮的日志字段名称
        # @type Key: String
        # @param Values: 高亮的关键词
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

        # - __SOURCE__：日志采集的源 IP，示例：10.0.1.2
        # - __FILENAME__：日志采集的文件名，示例：/data/log/nginx/access.log
        # - __TIMESTAMP__：日志时间戳（毫秒级别 Unix 时间戳），按时间范围检索日志时，将自动使用该时间对日志进行检索，在控制台显示为“日志时间”，示例：1640005601188
        # - __HOSTNAME__：日志来源机器名称，需使用2.7.4及以上版本的 Loglistener 才会采集该字段，示例：localhost
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaFields: Array
        # @param JsonType: 投递Json格式，0：字符串方式投递；1:以结构化方式投递
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
        # @param Format: 消费数据格式。 0：原始内容；1：JSON。
        # @type Format: Integer
        # @param EnableTag: 是否投递 TAG 信息
        # Format为0时，此字段不需要赋值
        # @type EnableTag: Boolean
        # @param MetaFields: 元数据信息列表, 可选值为：\_\_SOURCE\_\_、\_\_FILENAME\_\_
        # 、\_\_TIMESTAMP\_\_、\_\_HOSTNAME\_\_、\_\_PKGID\_\_
        # Format为0时，此字段不需要赋值
        # @type MetaFields: Array
        # @param TagTransaction: tag数据处理方式：1:不平铺（默认值）；2:平铺。

        # 不平铺示例：
        # TAG信息：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`
        # 不平铺：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`

        # 平铺示例：
        # TAG信息：`{"__TAG__":{"fieldA":200,"fieldB":"text"}}`
        # 平铺：`{"__TAG__.fieldA":200,"__TAG__.fieldB":"text"}`
        # @type TagTransaction: Integer
        # @param JsonType: 消费数据Json格式：
        # 1：不转义（默认格式）
        # 2：转义

        # 投递Json格式。
        # JsonType为1：和原始日志一致，不转义。示例：
        # 日志原文：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`
        # 投递到Ckafka：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`

        # JsonType为2：转义。示例：
        # 日志原文：`{"a":"aa", "b":{"b1":"b1b1", "c1":"c1c1"}}`
        # 投递到Ckafka：`{"a":"aa","b":"{\"b1\":\"b1b1\", \"c1\":\"c1c1\"}"}`
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

        # - 当IsEncryptionAddr为true时，Protocol必填。
        # - 支持的协议类型如下：
        #     - plaintext：纯文本无加密协议
        #     - sasl_ssl：SASL 认证 + SSL 加密
        #     - ssl：纯 SSL/TLS 加密协议
        #     - sasl_plaintext：SASL 认证 + 非加密通道
        # @type Protocol: String
        # @param Mechanism: 加密类型，支持 PLAIN、SCRAM-SHA-256 或 SCRAM-SHA-512。

        # - 当Protocol为  `sasl_plaintext` 或 `sasl_ssl` 时 Mechanism 必填。
        # - 支持加密类型如下
        #     -  PLAIN：明文认证
        #     -  SCRAM-SHA-256：基于挑战-响应机制，使用PBKDF2-HMAC-SHA256算法
        #     -  SCRAM-SHA-512：增强版SCRAM，使用PBKDF2-HMAC-SHA512算法
        # @type Mechanism: String
        # @param UserName: 用户名。
        # 当Protocol为sasl_plaintext或sasl_ssl时必填
        # @type UserName: String
        # @param Password: 用户密码。
        # 当Protocol为sasl_plaintext或sasl_ssl时必填
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
        # @param Id: Kafka数据订阅配置的ID。
        # @type Id: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Name: Kafka导入任务名称
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
        # @param Status: 状态 ，1：运行中；2：暂停。
        # @type Status: Integer
        # @param Offset: 导入数据位置，-2:最早（默认），-1：最晚
        # @type Offset: Integer
        # @param CreateTime: 创建时间。格式`YYYY-MM-DD HH:MM:SS`
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。格式`YYYY-MM-DD HH:MM:SS`
        # @type UpdateTime: String
        # @param LogRechargeRule: 日志导入规则
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
        # @type HostName: String
        # @param RawLog: 原始日志(仅在日志创建索引异常时有值)
        # @type RawLog: String
        # @param IndexStatus: 日志创建索引异常原因(仅在日志创建索引异常时有值)
        # @type IndexStatus: String
        # @param HighLights: 日志内容的高亮描述信息
        # @type HighLights: Array

        attr_accessor :Source, :Filename, :Content, :PkgId, :PkgLogId, :BTime, :HostName, :RawLog, :IndexStatus, :HighLights

        def initialize(source=nil, filename=nil, content=nil, pkgid=nil, pkglogid=nil, btime=nil, hostname=nil, rawlog=nil, indexstatus=nil, highlights=nil)
          @Source = source
          @Filename = filename
          @Content = content
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @BTime = btime
          @HostName = hostname
          @RawLog = rawlog
          @IndexStatus = indexstatus
          @HighLights = highlights
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
          unless params['HighLights'].nil?
            @HighLights = []
            params['HighLights'].each do |i|
              highlightitem_tmp = HighLightItem.new
              highlightitem_tmp.deserialize(i)
              @HighLights << highlightitem_tmp
            end
          end
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
        # @param HighLights: 符合检索条件的关键词，一般用于高亮显示。仅支持键值检索，不支持全文检索
        # @type HighLights: Array
        # @param LogJson: 日志内容的Json序列化字符串
        # @type LogJson: String
        # @param HostName: 日志来源主机名称
        # @type HostName: String
        # @param RawLog: 原始日志(仅在日志创建索引异常时有值)
        # @type RawLog: String
        # @param IndexStatus: 日志创建索引异常原因(仅在日志创建索引异常时有值)
        # @type IndexStatus: String

        attr_accessor :Time, :TopicId, :TopicName, :Source, :FileName, :PkgId, :PkgLogId, :HighLights, :LogJson, :HostName, :RawLog, :IndexStatus

        def initialize(time=nil, topicid=nil, topicname=nil, source=nil, filename=nil, pkgid=nil, pkglogid=nil, highlights=nil, logjson=nil, hostname=nil, rawlog=nil, indexstatus=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @Source = source
          @FileName = filename
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @HighLights = highlights
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
          unless params['HighLights'].nil?
            @HighLights = []
            params['HighLights'].each do |i|
              highlightitem_tmp = HighLightItem.new
              highlightitem_tmp.deserialize(i)
              @HighLights << highlightitem_tmp
            end
          end
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
        # @param DefaultTimeSwitch: 使用默认时间状态。true：开启后将使用系统当前时间或 Kafka 消息时间戳作为日志时间戳；false：关闭将使用日志中的时间字段作为日志时间戳。 默认：true
        # @type DefaultTimeSwitch: Boolean
        # @param LogRegex: 整条日志匹配规则，只有RechargeType为fullregex_log时有效
        # @type LogRegex: String
        # @param UnMatchLogSwitch: 解析失败日志是否上传，true表示上传，false表示不上传
        # @type UnMatchLogSwitch: Boolean
        # @param UnMatchLogKey: 解析失败日志的键名称
        # @type UnMatchLogKey: String
        # @param UnMatchLogTimeSrc: 解析失败日志时间来源，0: 系统当前时间，1: Kafka消息时间戳
        # @type UnMatchLogTimeSrc: Integer
        # @param DefaultTimeSrc: 默认时间来源，0: 系统当前时间，1: Kafka消息时间戳
        # @type DefaultTimeSrc: Integer
        # @param TimeKey: 时间字段，日志中代表时间的字段名。

        # - 当DefaultTimeSwitch为false，且RechargeType数据提取模式为 `json_log` JSON-文件日志 或 `fullregex_log` 单行完全正则-文件日志时， TimeKey不能为空。
        # @type TimeKey: String
        # @param TimeRegex: 时间提取正则表达式。
        # - 当DefaultTimeSwitch为false，且RechargeType数据提取模式为 `minimalist_log` 单行全文-文件日志时， TimeRegex不能为空。
        # - 仅需输入日志中代表时间的字段的正则表达式即可；若匹配到多个字段，将使用第一个。
        #    例：日志原文为：message with time 2022-08-08 14:20:20，则您可以设置提取时间正则为\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d
        # @type TimeRegex: String
        # @param TimeFormat: 时间字段格式。
        # - 当DefaultTimeSwitch为false时， TimeFormat不能为空。
        # @type TimeFormat: String
        # @param TimeZone: 时间字段时区。
        # - 当DefaultTimeSwitch为false时， TimeZone不能为空。
        # - 时区格式规则
        # ​前缀​：使用 GMT 或 UTC 作为时区基准
        # ​偏移量​：
        #     - `-` 表示西时区（比基准时间晚）
        #     - `+` 表示东时区（比基准时间早）
        #     -  格式为 ±HH:MM（小时:分钟）

        # - 当前支持：
        # ```
        # "GMT-12:00"
        # "GMT-11:00"
        # "GMT-10:00"
        # "GMT-09:30"
        # "GMT-09:00"
        # "GMT-08:00"
        # "GMT-07:00"
        # "GMT-06:00"
        # "GMT-05:00"
        # "GMT-04:00"
        # "GMT-03:30"
        # "GMT-03:00"
        # "GMT-02:00"
        # "GMT-01:00"
        # "GMT+00:00"
        # "GMT+01:00"
        # "GMT+02:00"
        # "GMT+03:30"
        # "GMT+04:00"
        # "GMT+04:30"
        # "GMT+05:00"
        # "GMT+05:30"
        # "GMT+05:45"
        # "GMT+06:00"
        # "GMT+06:30"
        # "GMT+07:00"
        # "GMT+08:00"
        # "GMT+09:00"
        # "GMT+09:30"
        # "GMT+10:00"
        # "GMT+10:30"
        # "GMT+11:00"
        # "GMT+11:30"
        # "GMT+12:00"
        # "GMT+12:45"
        # "GMT+13:00"
        # "GMT+14:00"
        # "UTC-11:00"
        # "UTC-10:00"
        # "UTC-09:00"
        # "UTC-08:00"
        # "UTC-12:00"
        # "UTC-07:00"
        # "UTC-06:00"
        # "UTC-05:00"
        # "UTC-04:30"
        # "UTC-04:00"
        # "UTC-03:30"
        # "UTC-03:00"
        # "UTC-02:00"
        # "UTC-01:00"
        # "UTC+00:00"
        # "UTC+01:00"
        # "UTC+02:00"
        # "UTC+03:00"
        # "UTC+03:30"
        # "UTC+04:00"
        # "UTC+04:30"
        # "UTC+05:00"
        # "UTC+05:45"
        # "UTC+06:00"
        # "UTC+06:30"
        # "UTC+07:00"
        # "UTC+08:00"
        # "UTC+09:00"
        # "UTC+09:30"
        # "UTC+10:00"
        # "UTC+11:00"
        # "UTC+12:00"
        # "UTC+13:00"
        # ```
        # @type TimeZone: String
        # @param Metadata: 元数据信息，Kafka导入支持kafka_topic,kafka_partition,kafka_offset,kafka_timestamp
        # @type Metadata: Array
        # @param Keys: 日志Key列表，RechargeType为full_regex_log时必填
        # @type Keys: Array
        # @param ParseArray: json解析模式，开启首层数据解析
        # @type ParseArray: Boolean

        attr_accessor :RechargeType, :EncodingFormat, :DefaultTimeSwitch, :LogRegex, :UnMatchLogSwitch, :UnMatchLogKey, :UnMatchLogTimeSrc, :DefaultTimeSrc, :TimeKey, :TimeRegex, :TimeFormat, :TimeZone, :Metadata, :Keys, :ParseArray

        def initialize(rechargetype=nil, encodingformat=nil, defaulttimeswitch=nil, logregex=nil, unmatchlogswitch=nil, unmatchlogkey=nil, unmatchlogtimesrc=nil, defaulttimesrc=nil, timekey=nil, timeregex=nil, timeformat=nil, timezone=nil, metadata=nil, keys=nil, parsearray=nil)
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
          @ParseArray = parsearray
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
          @ParseArray = params['ParseArray']
        end
      end

      # 日志集相关信息
      class LogsetInfo < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # @type LogsetName: String
        # @param CreateTime: 创建时间。格式 `YYYY-MM-DD HH:MM:SS`
        # @type CreateTime: String
        # @param AssumerName: 云产品标识，日志集由其它云产品创建时，该字段会显示云产品名称，例如CDN、TKE
        # @type AssumerName: String
        # @param Tags: 日志集绑定的标签
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
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param Tags: 机器组绑定的标签列表
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新
        # @type AutoUpdate: String
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        # @type ServiceLogging: Boolean
        # @param DelayCleanupTime: 机器组中机器离线定期清理时间，单位天，默认设置30天。
        # @type DelayCleanupTime: Integer
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array
        # @param OSType: 操作系统类型，0: Linux，1: windows
        # @type OSType: Integer

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :CreateTime, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :DelayCleanupTime, :MetaTags, :OSType

        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, createtime=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, delaycleanuptime=nil, metatags=nil, ostype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @CreateTime = createtime
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @DelayCleanupTime = delaycleanuptime
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
          @DelayCleanupTime = params['DelayCleanupTime']
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
        # @param Type: 机器组类型。支持 ip 和 label。
        # - ip：表示该机器组Values中存的是采集机器的ip地址
        # - label：表示该机器组Values中存储的是机器的标签
        # @type Type: String
        # @param Values: 机器描述列表。
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
        # @type InstanceID: String
        # @param Status: 机器状态，0:异常，1:正常
        # @type Status: Integer
        # @param OfflineTime: 机器离线时间，空为正常，异常返回具体时间。时间格式：YYYY-MM-DD HH:mm:ss
        # @type OfflineTime: String
        # @param AutoUpdate: 机器是否开启自动升级。0:关闭，1:开启
        # @type AutoUpdate: Integer
        # @param Version: 机器当前版本号。
        # @type Version: String
        # @param UpdateStatus: 机器升级功能状态。 0：升级成功；1：升级中；-1：升级失败。
        # @type UpdateStatus: Integer
        # @param ErrCode: 机器升级结果标识。
        # 0：成功；1200：升级成功；其他值表示异常。
        # @type ErrCode: Integer
        # @param ErrMsg: 机器升级结果信息。
        # “ok”：成功；“update success”：升级成功；其他值为失败原因。
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
        # @param TopicId: 日志主题Id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param PartitionId: 合并的PartitionId（找到下一个分区InclusiveBeginKey与入参PartitionId对应的ExclusiveEndKey相等，且找到的分区必须是读写分区（Status:readwrite），入参PartitionId与找到的PartitionId设置为只读分区（Status:readonly）,再新建一个新的读写分区） 。[获取分区列表](https://cloud.tencent.com/document/product/614/56470)

        # 1. 入参PartitionId只能是读写分区（Status的值有readonly，readwrite），且能找到入参PartitionId的下一个可读写分区（找到下一个分区InclusiveBeginKey与入参PartitionId对应的ExclusiveEndKey相等）；
        # 2. 入参PartitionId不能是最后一个分区（PartitionId的ExclusiveEndKey不能是ffffffffffffffffffffffffffffffff）；
        # 3. topic的分区数量是有限制的（默认50个），合并之后不能超过最大分区，否则不能合并。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Key: String
        # @param Value: 指标内容
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
        # @param AlarmNoticeId: 通知渠道组ID。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/api/614/56462)获取通知渠道组ID
        # @type AlarmNoticeId: String
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的通知渠道组。最大支持10个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param Name: 通知渠道组名称。
        # @type Name: String
        # @param Type: 通知类型。可选值：
        # <li> Trigger - 告警触发</li>
        # <li> Recovery - 告警恢复</li>
        # <li> All - 告警触发和告警恢复</li>
        # @type Type: String
        # @param NoticeReceivers: 通知接收对象。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 接口回调信息（包括企业微信等）。
        # @type WebCallbacks: Array
        # @param NoticeRules: 通知规则。

        # 注意:

        # - Type、NoticeReceivers和WebCallbacks是一组配置，NoticeRules是另一组配置，2组配置互斥。
        # - 传其中一组数据，则另一组数据置空。
        # @type NoticeRules: Array
        # @param JumpDomain: 调用链接域名。http:// 或者 https:// 开头，不能/结尾
        # @type JumpDomain: String
        # @param DeliverStatus: 投递日志开关。

        # 参数值：
        # 1：关闭；

        # 2：开启
        # @type DeliverStatus: Integer
        # @param DeliverConfig: 投递日志配置。
        # @type DeliverConfig: :class:`Tencentcloud::Cls.v20201016.models.DeliverConfig`
        # @param AlarmShieldStatus: 免登录操作告警开关。

        # 参数值：
        #         1：关闭
        #         2：开启（默认开启）
        # @type AlarmShieldStatus: Integer

        attr_accessor :AlarmNoticeId, :Tags, :Name, :Type, :NoticeReceivers, :WebCallbacks, :NoticeRules, :JumpDomain, :DeliverStatus, :DeliverConfig, :AlarmShieldStatus

        def initialize(alarmnoticeid=nil, tags=nil, name=nil, type=nil, noticereceivers=nil, webcallbacks=nil, noticerules=nil, jumpdomain=nil, deliverstatus=nil, deliverconfig=nil, alarmshieldstatus=nil)
          @AlarmNoticeId = alarmnoticeid
          @Tags = tags
          @Name = name
          @Type = type
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @NoticeRules = noticerules
          @JumpDomain = jumpdomain
          @DeliverStatus = deliverstatus
          @DeliverConfig = deliverconfig
          @AlarmShieldStatus = alarmshieldstatus
        end

        def deserialize(params)
          @AlarmNoticeId = params['AlarmNoticeId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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
          @JumpDomain = params['JumpDomain']
          @DeliverStatus = params['DeliverStatus']
          unless params['DeliverConfig'].nil?
            @DeliverConfig = DeliverConfig.new
            @DeliverConfig.deserialize(params['DeliverConfig'])
          end
          @AlarmShieldStatus = params['AlarmShieldStatus']
        end
      end

      # ModifyAlarmNotice返回参数结构体
      class ModifyAlarmNoticeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarm请求参数结构体
      class ModifyAlarmRequest < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警策略ID。-通过[获取告警策略列表](https://cloud.tencent.com/document/product/614/56461)获取告警策略ID
        # @type AlarmId: String
        # @param Name: 告警策略名称。最大支持255个字节，不支持 '|'。
        # @type Name: String
        # @param MonitorTime: 监控任务运行时间点。
        # @type MonitorTime: :class:`Tencentcloud::Cls.v20201016.models.MonitorTime`
        # @param Condition: 告警信息发送的触发条件。

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
        # @param TriggerCount: 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为2000。
        # @type TriggerCount: Integer
        # @param AlarmPeriod: 告警重复的周期。单位是分钟。取值范围是0~1440。
        # @type AlarmPeriod: Integer
        # @param AlarmNoticeIds: 关联的告警通知渠道组列表。-通过[获取通知渠道组列表](https://cloud.tencent.com/document/product/614/56462)获取关联的告警通知渠道组列表，和MonitorNotice互斥
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
        extend Gem::Deprecate
        deprecate :Enable, :none, 2025, 9
        deprecate :Enable=, :none, 2025, 9

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

      # ModifyAlarmShield请求参数结构体
      class ModifyAlarmShieldRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 屏蔽规则ID。-通过[获取告警屏蔽配置规则](https://cloud.tencent.com/document/api/614/103650)获取屏蔽规则ID
        # @type TaskId: String
        # @param AlarmNoticeId: 通知渠道组id。-通过[获取告警屏蔽配置规则](https://cloud.tencent.com/document/api/614/103650)获取通知渠道组id
        # @type AlarmNoticeId: String
        # @param StartTime: 屏蔽开始时间，秒级(s)时间戳。
        # @type StartTime: Integer
        # @param EndTime: 屏蔽结束时间，秒级(s)时间戳。
        # @type EndTime: Integer
        # @param Type: 屏蔽类型。1：屏蔽所有通知，2：按照Rule参数屏蔽匹配规则的通知。
        # @type Type: Integer
        # @param Rule: 屏蔽规则，当Type为2时必填。规则填写方式详见[产品文档](https://cloud.tencent.com/document/product/614/103178#rule)。
        # @type Rule: String
        # @param Reason: 屏蔽原因。
        # @type Reason: String
        # @param Status: 规则状态。只有规则状态为生效中（status:1）时，才能将其修改为已失效（status:2）。
        # 枚举：0（未生效），1（生效中），2（已失效）
        # @type Status: Integer

        attr_accessor :TaskId, :AlarmNoticeId, :StartTime, :EndTime, :Type, :Rule, :Reason, :Status

        def initialize(taskid=nil, alarmnoticeid=nil, starttime=nil, endtime=nil, type=nil, rule=nil, reason=nil, status=nil)
          @TaskId = taskid
          @AlarmNoticeId = alarmnoticeid
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Rule = rule
          @Reason = reason
          @Status = status
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @AlarmNoticeId = params['AlarmNoticeId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Rule = params['Rule']
          @Reason = params['Reason']
          @Status = params['Status']
        end
      end

      # ModifyAlarmShield返回参数结构体
      class ModifyAlarmShieldResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudProductLogCollection请求参数结构体
      class ModifyCloudProductLogCollectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AssumerName: 云产品标识，支持枚举：CDS、CWP、CDB、TDSQL-C、MongoDB、TDStore、DCDB、MariaDB、PostgreSQL、BH、APIS
        # @type AssumerName: String
        # @param LogType: 日志类型，支持枚举：CDS-AUDIT、CDS-RISK、CDB-AUDIT、TDSQL-C-AUDIT、MongoDB-AUDIT、MongoDB-SlowLog、MongoDB-ErrorLog、TDMYSQL-SLOW、DCDB-AUDIT、DCDB-SLOW、DCDB-ERROR、MariaDB-AUDIT、MariaDB-SLOW、MariaDB-ERROR、PostgreSQL-SLOW、PostgreSQL-ERROR、PostgreSQL-AUDIT、BH-FILELOG、BH-COMMANDLOG、APIS-ACCESS
        # @type LogType: String
        # @param CloudProductRegion: 云产品地域。 不同日志类型(LogType)地域入參格式存在差异， 请参考如下示例：
        # - CDS所有日志类型：ap-guangzhou
        # - CDB-AUDIT: gz
        # - TDSQL-C-AUDIT: gz
        # - MongoDB-AUDIT: gz
        # - MongoDB-SlowLog：ap-guangzhou
        # - MongoDB-ErrorLog：ap-guangzhou
        # - TDMYSQL-SLOW：gz
        # - DCDB所有日志类型：gz
        # - MariaDB所有日志类型：gz
        # - PostgreSQL所有日志类型：gz
        # - BH所有日志类型：overseas-polaris(中国香港地区和其他)/fsi-polaris(金融区)/general-polaris(普通区)/intl-sg-prod(国际站)
        # - APIS所有日志类型：gz
        # @type CloudProductRegion: String
        # @param Extend: 日志配置拓展信息， 一般用于存储额外的日志投递配置
        # @type Extend: String

        attr_accessor :InstanceId, :AssumerName, :LogType, :CloudProductRegion, :Extend

        def initialize(instanceid=nil, assumername=nil, logtype=nil, cloudproductregion=nil, extend=nil)
          @InstanceId = instanceid
          @AssumerName = assumername
          @LogType = logtype
          @CloudProductRegion = cloudproductregion
          @Extend = extend
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AssumerName = params['AssumerName']
          @LogType = params['LogType']
          @CloudProductRegion = params['CloudProductRegion']
          @Extend = params['Extend']
        end
      end

      # ModifyCloudProductLogCollection返回参数结构体
      class ModifyCloudProductLogCollectionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConfigExtra请求参数结构体
      class ModifyConfigExtraRequest < TencentCloud::Common::AbstractModel
        # @param ConfigExtraId: 采集配置扩展信息id
        # - 通过[获取特殊采集配置](https://cloud.tencent.com/document/api/614/71164)获取采集配置扩展信息id。
        # @type ConfigExtraId: String
        # @param Name: 采集配置规程名称，最长63个字符，只能包含小写字符、数字及分隔符（“-”），且必须以小写字符开头，数字或小写字符结尾
        # @type Name: String
        # @param TopicId: 日志主题id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param HostFile: 自建k8s-节点文件配置信息,包括文件路径、名称及元数据相关信息。

        # - 详情参考  [HostFileInfo](https://cloud.tencent.com/document/api/614/56471#HostFileInfo) 文档。
        # @type HostFile: :class:`Tencentcloud::Cls.v20201016.models.HostFileInfo`
        # @param ContainerFile: 采集配置标记。
        # - 目前只支持label_k8s，用于标记自建k8s集群使用的采集配置
        # - 详情参考 [ ContainerFileInfo](https://cloud.tencent.com/document/api/614/56471#ContainerFileInfo) 文档
        # @type ContainerFile: :class:`Tencentcloud::Cls.v20201016.models.ContainerFileInfo`
        # @param ContainerStdout: 自建k8s-容器标准输出信息，包括容器、命名空间等，

        # - 详情参考 [ContainerStdoutInfo]( https://cloud.tencent.com/document/api/614/56471#ContainerStdoutInfo) 文档
        # @type ContainerStdout: :class:`Tencentcloud::Cls.v20201016.models.ContainerStdoutInfo`
        # @param LogType: 采集的日志类型，默认为minimalist_log。支持以下类型：
        # - json_log代表：JSON-文件日志（详见[使用 JSON 提取模式采集日志](https://cloud.tencent.com/document/product/614/17419)）；
        # - delimiter_log代表：分隔符-文件日志（详见[使用分隔符提取模式采集日志](https://cloud.tencent.com/document/product/614/17420)）；
        # - minimalist_log代表：单行全文-文件日志（详见[使用单行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17421)）；
        # - fullregex_log代表：单行完全正则-文件日志（详见[使用单行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52365)）；
        # - multiline_log代表：多行全文-文件日志（详见[使用多行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17422)）；
        # - multiline_fullregex_log代表：多行完全正则-文件日志（详见[使用多行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52366)）；
        # - user_define_log代表：组合解析（适用于多格式嵌套的日志，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)）。
        # @type LogType: String
        # @param LogFormat: 日志格式化方式，用于容器采集场景。
        # - stdout-docker-json：用于docker容器采集场景
        # - stdout-containerd：用于containerd容器采集场景
        # @type LogFormat: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType。
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param UserDefineRule: 组合解析采集规则，用于复杂场景下的日志采集。
        # - 取值参考：[使用组合解析提取模式采集日志
        # ](https://cloud.tencent.com/document/product/614/61310)
        # @type UserDefineRule: String
        # @param Type: 容器场景，日志采集输入类型，支持以下三种类型
        # - container_stdout 标准输出
        # - container_file 容器文件
        # - host_file 主机节点文件
        # @type Type: String
        # @param GroupId: 机器组ID
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/api/614/56438)获取机器组Id。
        # @type GroupId: String
        # @param ConfigFlag: 自建采集配置标
        # @type ConfigFlag: String
        # @param LogsetId: 日志集ID
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # - 通过[获取日志集列表](https://cloud.tencent.com/document/api/614/58624)获取日志集名称。
        # @type LogsetName: String
        # @param TopicName: 日志主题名称
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题名称。
        # @type TopicName: String
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # - ClsAgentDefault(自定义默认值，无特殊含义，用于清空其他选项)，建议取值0
        # @type AdvancedConfig: String

        attr_accessor :ConfigExtraId, :Name, :TopicId, :HostFile, :ContainerFile, :ContainerStdout, :LogType, :LogFormat, :ExtractRule, :ExcludePaths, :UserDefineRule, :Type, :GroupId, :ConfigFlag, :LogsetId, :LogsetName, :TopicName, :AdvancedConfig
        extend Gem::Deprecate
        deprecate :LogFormat, :none, 2025, 9
        deprecate :LogFormat=, :none, 2025, 9

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

      # ModifyConfig请求参数结构体
      class ModifyConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 采集规则配置ID，通过[获取采集规则配置](https://cloud.tencent.com/document/product/614/58616)返回信息获取。
        # @type ConfigId: String
        # @param Name: 采集规则配置名称
        # - 不能包含特殊字符｜
        # - 长度不能超过255字符，超过会被截断
        # @type Name: String
        # @param Path: 日志采集路径，包含文件名
        # @type Path: String
        # @param LogType: 采集的日志类型。支持以下类型：
        # - json_log代表：JSON-文件日志（详见[使用 JSON 提取模式采集日志](https://cloud.tencent.com/document/product/614/17419)）；
        # - delimiter_log代表：分隔符-文件日志（详见[使用分隔符提取模式采集日志](https://cloud.tencent.com/document/product/614/17420)）；
        # - minimalist_log代表：单行全文-文件日志（详见[使用单行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17421)）；
        # - fullregex_log代表：单行完全正则-文件日志（详见[使用单行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52365)）；
        # - multiline_log代表：多行全文-文件日志（详见[使用多行全文提取模式采集日志](https://cloud.tencent.com/document/product/614/17422)）；
        # - multiline_fullregex_log代表：多行完全正则-文件日志（详见[使用多行-完全正则提取模式采集日志](https://cloud.tencent.com/document/product/614/52366)）；
        # - user_define_log代表：组合解析（适用于多格式嵌套的日志，详见[使用组合解析提取模式采集日志](https://cloud.tencent.com/document/product/614/61310)）；
        # - service_syslog代表：syslog 采集（详见[采集 Syslog](https://cloud.tencent.com/document/product/614/81454)）；
        # - windows_event_log代表：Windows事件日志（详见[采集 Windows 事件日志](https://cloud.tencent.com/document/product/614/96678)）。

        # @type LogType: String
        # @param ExtractRule: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRule: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param ExcludePaths: 采集黑名单路径列表
        # @type ExcludePaths: Array
        # @param Output: 采集配置关联的日志主题（TopicId）
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type Output: String
        # @param UserDefineRule: 用户自定义解析字符串，Json格式序列化的字符串。
        # @type UserDefineRule: String
        # @param AdvancedConfig: 高级采集配置。 Json字符串， Key/Value定义为如下：
        # - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        # - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        # - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        # 样例：
        # `{\"ClsAgentFileTimeout\":0,\"ClsAgentMaxDepth\":10,\"ClsAgentParseFailMerge\":true}`
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

      # ModifyConsoleSharing请求参数结构体
      class ModifyConsoleSharingRequest < TencentCloud::Common::AbstractModel
        # @param SharingId: 免密分享Id。
        # - 通过 [获取免密分享列表](https://cloud.tencent.com/document/product/614/109798) 获取免密分享Id。
        # - 通过 [创建免密分享](https://cloud.tencent.com/document/product/614/109800) 获取免密分享Id。
        # @type SharingId: String
        # @param DurationMilliseconds: 指定分享链接有效期，单位：毫秒，最长可设定有效期为30天
        # @type DurationMilliseconds: Integer

        attr_accessor :SharingId, :DurationMilliseconds

        def initialize(sharingid=nil, durationmilliseconds=nil)
          @SharingId = sharingid
          @DurationMilliseconds = durationmilliseconds
        end

        def deserialize(params)
          @SharingId = params['SharingId']
          @DurationMilliseconds = params['DurationMilliseconds']
        end
      end

      # ModifyConsoleSharing返回参数结构体
      class ModifyConsoleSharingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConsumer请求参数结构体
      class ModifyConsumerRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 投递任务绑定的日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type TopicId: String
        # @param Effective: 投递任务是否生效，默认不生效
        # @type Effective: Boolean
        # @param NeedContent: 是否投递日志的元数据信息，默认为 true。
        # 当NeedContent为true时：字段Content有效。
        # 当NeedContent为false时：字段Content无效。
        # @type NeedContent: Boolean
        # @param Content: 如果需要投递元数据信息，元数据信息的描述
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ConsumerContent`
        # @param Ckafka: CKafka的描述
        # @type Ckafka: :class:`Tencentcloud::Cls.v20201016.models.Ckafka`
        # @param Compression: 投递时压缩方式，取值0，2，3。[0：NONE；2：SNAPPY；3：LZ4]
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

      # ModifyCosRecharge请求参数结构体
      class ModifyCosRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: COS导入配置Id。

        # - 通过[获取cos导入配置](https://cloud.tencent.com/document/product/614/88099)接口获取COS导入配置Id。
        # @type Id: String
        # @param TopicId: 日志主题Id。

        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Name: COS导入任务名称,最大支持128个字节。
        # @type Name: String
        # @param Enable: 任务状态   0： 停用 ， 1：启用
        # @type Enable: Integer
        # @param Bucket: COS存储桶，详见产品支持的[存储桶命名规范](https://cloud.tencent.com/document/product/436/13312)。

        # - 通过[GET Service（List Buckets）](https://cloud.tencent.com/document/product/436/8291)获取COS存储桶。
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域，详见产品支持的[地域列表](https://cloud.tencent.com/document/product/436/6224)。
        # @type BucketRegion: String
        # @param Prefix: COS文件所在文件夹的前缀。为空串时投递存储桶下所有的文件。
        # @type Prefix: String
        # @param LogType: 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文； 默认为minimalist_log
        # @type LogType: String
        # @param Compress: 解析格式。supported: "", "gzip", "lzop", "snappy"。空串表示不压缩。
        # @type Compress: String
        # @param ExtractRuleInfo: 提取规则，如果设置了ExtractRule，则必须设置LogType
        # @type ExtractRuleInfo: :class:`Tencentcloud::Cls.v20201016.models.ExtractRuleInfo`
        # @param TaskType: COS导入任务类型。1：一次性导入任务；2：持续性导入任务。
        # @type TaskType: Integer
        # @param Metadata: 元数据。支持 bucket，object。
        # @type Metadata: Array

        attr_accessor :Id, :TopicId, :Name, :Enable, :Bucket, :BucketRegion, :Prefix, :LogType, :Compress, :ExtractRuleInfo, :TaskType, :Metadata

        def initialize(id=nil, topicid=nil, name=nil, enable=nil, bucket=nil, bucketregion=nil, prefix=nil, logtype=nil, compress=nil, extractruleinfo=nil, tasktype=nil, metadata=nil)
          @Id = id
          @TopicId = topicid
          @Name = name
          @Enable = enable
          @Bucket = bucket
          @BucketRegion = bucketregion
          @Prefix = prefix
          @LogType = logtype
          @Compress = compress
          @ExtractRuleInfo = extractruleinfo
          @TaskType = tasktype
          @Metadata = metadata
        end

        def deserialize(params)
          @Id = params['Id']
          @TopicId = params['TopicId']
          @Name = params['Name']
          @Enable = params['Enable']
          @Bucket = params['Bucket']
          @BucketRegion = params['BucketRegion']
          @Prefix = params['Prefix']
          @LogType = params['LogType']
          @Compress = params['Compress']
          unless params['ExtractRuleInfo'].nil?
            @ExtractRuleInfo = ExtractRuleInfo.new
            @ExtractRuleInfo.deserialize(params['ExtractRuleInfo'])
          end
          @TaskType = params['TaskType']
          @Metadata = params['Metadata']
        end
      end

      # ModifyCosRecharge返回参数结构体
      class ModifyCosRechargeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDashboardSubscribe请求参数结构体
      class ModifyDashboardSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param Id: 仪表盘订阅id。通过 [获取仪表盘订阅列表](https://cloud.tencent.com/document/api/614/105779)接口获取Id。
        # @type Id: Integer
        # @param DashboardId: 仪表盘id。通过 [获取仪表盘](https://cloud.tencent.com/document/api/614/95636)接口获取DashboardId。
        # @type DashboardId: String
        # @param Name: 仪表盘订阅名称。最大支持128个字符，且不支持'|'字符。
        # @type Name: String
        # @param Cron: 订阅时间cron表达式，格式为：{秒数} {分钟} {小时} {日期} {月份} {星期}；（有效数据为：{分钟} {小时} {日期} {月份} {星期}）。
        # @type Cron: String
        # @param SubscribeData: 仪表盘订阅数据。
        # @type SubscribeData: :class:`Tencentcloud::Cls.v20201016.models.DashboardSubscribeData`

        attr_accessor :Id, :DashboardId, :Name, :Cron, :SubscribeData

        def initialize(id=nil, dashboardid=nil, name=nil, cron=nil, subscribedata=nil)
          @Id = id
          @DashboardId = dashboardid
          @Name = name
          @Cron = cron
          @SubscribeData = subscribedata
        end

        def deserialize(params)
          @Id = params['Id']
          @DashboardId = params['DashboardId']
          @Name = params['Name']
          @Cron = params['Cron']
          unless params['SubscribeData'].nil?
            @SubscribeData = DashboardSubscribeData.new
            @SubscribeData.deserialize(params['SubscribeData'])
          end
        end
      end

      # ModifyDashboardSubscribe返回参数结构体
      class ModifyDashboardSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDataTransform请求参数结构体
      class ModifyDataTransformRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 数据加工任务ID
        # - 通过[获取数据加工任务列表基本信息](https://cloud.tencent.com/document/product/614/72182)获取数据加工任务Id。
        # @type TaskId: String
        # @param Name: 加工任务名称
        # - 通过[获取数据加工任务列表基本信息](https://cloud.tencent.com/document/product/614/72182)获取数据加工任务名称。

        # 名称限制
        # - 不能为空字符串
        # - 不能包含字符'|'
        # - 最长 255 个字符
        # @type Name: String
        # @param EtlContent: 加工语句。 当FuncType为2时，EtlContent必须使用[log_auto_output](https://cloud.tencent.com/document/product/614/70733#b3c58797-4825-4807-bef4-68106e25024f)

        # 其他参考文档：

        # - [创建加工任务](https://cloud.tencent.com/document/product/614/63940)
        # -  [函数总览](https://cloud.tencent.com/document/product/614/70395)
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

      # ModifyIndex请求参数结构体
      class ModifyIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Status: 索引状态。false：关闭索引， true：开启索引
        # 开启后可对日志进行检索分析，将产生索引流量、索引存储及相应费用。[费用详情](https://cloud.tencent.com/document/product/614/45802#.E8.AE.A1.E8.B4.B9.E9.A1.B9)
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

      # ModifyKafkaConsumerGroupOffset请求参数结构体
      class ModifyKafkaConsumerGroupOffsetRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyKafkaConsumerGroupOffset返回参数结构体
      class ModifyKafkaConsumerGroupOffsetResponse < TencentCloud::Common::AbstractModel
        # @param Code: 状态码。0：成功，-1：失败
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :RequestId

        def initialize(code=nil, requestid=nil)
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # ModifyKafkaConsumer请求参数结构体
      class ModifyKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type FromTopicId: String
        # @param Compression: 压缩方式。0：不压缩；2：使用Snappy压缩；3：使用LZ4压缩
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

      # ModifyKafkaRecharge请求参数结构体
      class ModifyKafkaRechargeRequest < TencentCloud::Common::AbstractModel
        # @param Id: 导入配置Id。
        # - 通过 [创建Kafka数据订阅任务](https://cloud.tencent.com/document/product/614/94448)获取Kafka导入配置Id。
        # - 通过 [获取Kafka数据订阅任务列表](https://cloud.tencent.com/document/product/614/94446)获取Kafka导入配置Id。
        # @type Id: String
        # @param TopicId: 导入CLS目标TopicId。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456)获取日志主题Id。
        # @type TopicId: String
        # @param Name: Kafka导入配置名称
        # @type Name: String
        # @param KafkaType: 导入Kafka类型，0：腾讯云CKafka：1：用户自建Kafka。
        # @type KafkaType: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID，KafkaType为0时必填。
        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取实例id。
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址，KafkaType为1时必填。
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接，KafkaType为1时必填。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议，KafkaType参数为1并且IsEncryptionAddr参数为true时必填。
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开。

        # - Kafka类型为腾讯云CKafka时：通过 [获取主题列表](https://cloud.tencent.com/document/product/597/40847) 获取TopicName。
        # @type UserKafkaTopics: String
        # @param ConsumerGroupName: 用户Kafka消费组名称
        # @type ConsumerGroupName: String
        # @param LogRechargeRule: 日志导入规则
        # @type LogRechargeRule: :class:`Tencentcloud::Cls.v20201016.models.LogRechargeRuleInfo`
        # @param StatusControl: 导入控制，1：暂停；2：启动。
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

      # ModifyLogset请求参数结构体
      class ModifyLogsetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集Id。通过 [获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param LogsetName: 日志集名字。- 最大支持255个字符。不支持`|`字符。
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

      # ModifyMachineGroup请求参数结构体
      class ModifyMachineGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 机器组Id
        # - 通过[获取机器组列表](https://cloud.tencent.com/document/product/614/56438)获取机器组Id。
        # @type GroupId: String
        # @param GroupName: 机器组名称
        # 输入限制：
        # - 不能为空字符串
        # - 不能包含字符'|'
        # @type GroupName: String
        # @param MachineGroupType: 机器组类型。
        # Type：ip，Values中为ip字符串列表机器组；
        # Type：label，Values中为标签字符串列表机器组。
        # @type MachineGroupType: :class:`Tencentcloud::Cls.v20201016.models.MachineGroupTypeInfo`
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param AutoUpdate: 是否开启机器组自动更新
        # @type AutoUpdate: Boolean
        # @param UpdateStartTime: 升级开始时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateStartTime: String
        # @param UpdateEndTime: 升级结束时间，建议业务低峰期升级LogListener
        # 时间格式：HH:mm:ss
        # @type UpdateEndTime: String
        # @param ServiceLogging: 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        # @type ServiceLogging: Boolean
        # @param DelayCleanupTime: 机器组中机器定期离线清理时间。单位：天
        # @type DelayCleanupTime: Integer
        # @param MetaTags: 机器组元数据信息列表
        # @type MetaTags: Array

        attr_accessor :GroupId, :GroupName, :MachineGroupType, :Tags, :AutoUpdate, :UpdateStartTime, :UpdateEndTime, :ServiceLogging, :DelayCleanupTime, :MetaTags

        def initialize(groupid=nil, groupname=nil, machinegrouptype=nil, tags=nil, autoupdate=nil, updatestarttime=nil, updateendtime=nil, servicelogging=nil, delaycleanuptime=nil, metatags=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MachineGroupType = machinegrouptype
          @Tags = tags
          @AutoUpdate = autoupdate
          @UpdateStartTime = updatestarttime
          @UpdateEndTime = updateendtime
          @ServiceLogging = servicelogging
          @DelayCleanupTime = delaycleanuptime
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
          @DelayCleanupTime = params['DelayCleanupTime']
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

      # ModifyNoticeContent请求参数结构体
      class ModifyNoticeContentRequest < TencentCloud::Common::AbstractModel
        # @param NoticeContentId: 通知内容模板ID。-通过[获取通知内容模板](https://cloud.tencent.com/document/api/614/111714)获取通知内容模板ID
        # @type NoticeContentId: String
        # @param Name: 通知内容模板名称。
        # @type Name: String
        # @param Type: 通知内容语言。

        # 0：中文 1：英文
        # @type Type: Integer
        # @param NoticeContents: 通知内容模板详细信息。
        # @type NoticeContents: Array

        attr_accessor :NoticeContentId, :Name, :Type, :NoticeContents

        def initialize(noticecontentid=nil, name=nil, type=nil, noticecontents=nil)
          @NoticeContentId = noticecontentid
          @Name = name
          @Type = type
          @NoticeContents = noticecontents
        end

        def deserialize(params)
          @NoticeContentId = params['NoticeContentId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeContents'].nil?
            @NoticeContents = []
            params['NoticeContents'].each do |i|
              noticecontent_tmp = NoticeContent.new
              noticecontent_tmp.deserialize(i)
              @NoticeContents << noticecontent_tmp
            end
          end
        end
      end

      # ModifyNoticeContent返回参数结构体
      class ModifyNoticeContentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyScheduledSql请求参数结构体
      class ModifyScheduledSqlRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，通过[获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519)获取
        # @type TaskId: String
        # @param SrcTopicId: 源日志主题，通过[获取定时SQL分析任务列表](https://cloud.tencent.com/document/product/614/95519)获取
        # @type SrcTopicId: String
        # @param EnableFlag: 任务启动状态.   1开启,  2关闭
        # @type EnableFlag: Integer
        # @param DstResource: 定时SQL分析的目标日志主题
        # @type DstResource: :class:`Tencentcloud::Cls.v20201016.models.ScheduledSqlResouceInfo`
        # @param ScheduledSqlContent: 查询语句
        # @type ScheduledSqlContent: String
        # @param ProcessPeriod: 调度周期(分钟)，1~1440分钟
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 单次查询的时间窗口. 例子中为近15分钟
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)，0~120秒，默认60秒
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息,支持地域见 [地域列表](https://cloud.tencent.com/document/api/614/56474#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8) 文档
        # @type SrcTopicRegion: String
        # @param Name: 任务名称，0~255字符
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

      # ModifyShipper请求参数结构体
      class ModifyShipperRequest < TencentCloud::Common::AbstractModel
        # @param ShipperId: 投递规则Id。

        # - 通过 [获取投递任务列表](https://cloud.tencent.com/document/product/614/58745)获取ShipperId。
        # @type ShipperId: String
        # @param Bucket: COS存储桶，详见产品支持的[存储桶命名规范](https://cloud.tencent.com/document/product/436/13312)。

        # - 通过[GET Service（List Buckets）](https://cloud.tencent.com/document/product/436/8291)获取COS存储桶。
        # @type Bucket: String
        # @param Prefix: 投递规则投递的新的目录前缀。
        # - 仅支持0-9A-Za-z-_/
        # - 最大支持256个字符
        # @type Prefix: String
        # @param Status: 投递规则的开关状态。true：开启投递任务；false：关闭投递任务。
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
        # @param FilenameMode: 投递文件命名配置，0：随机数命名，1：投递时间命名。
        # @type FilenameMode: Integer
        # @param StorageType: 对象存储类型，默认值为 STANDARD。枚举值请参见[ 存储类型概述](https://cloud.tencent.com/document/product/436/33417) 文档。
        # 参考值有：

        # - STANDARD：标准存储
        # - STANDARD_IA：低频存储
        # - ARCHIVE：归档存储
        # - DEEP_ARCHIVE：深度归档存储
        # - MAZ_STANDARD：标准存储（多 AZ）
        # - MAZ_STANDARD_IA：低频存储（多 AZ）
        # - INTELLIGENT_TIERING：智能分层存储
        # - MAZ_INTELLIGENT_TIERING：智能分层存储（多 AZ）
        # @type StorageType: String

        attr_accessor :ShipperId, :Bucket, :Prefix, :Status, :ShipperName, :Interval, :MaxSize, :FilterRules, :Partition, :Compress, :Content, :FilenameMode, :StorageType

        def initialize(shipperid=nil, bucket=nil, prefix=nil, status=nil, shippername=nil, interval=nil, maxsize=nil, filterrules=nil, partition=nil, compress=nil, content=nil, filenamemode=nil, storagetype=nil)
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
          @StorageType = storagetype
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
          @StorageType = params['StorageType']
        end
      end

      # ModifyShipper返回参数结构体
      class ModifyShipperResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTopic请求参数结构体
      class ModifyTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # 输入限制：
        # - 不能为空字符串
        # - 不能包含字符'|'
        # - 不能使用以下名称["cls_service_log","loglistener_status","loglistener_alarm","loglistener_business","cls_service_metric"]
        # @type TopicName: String
        # @param Tags: 标签描述列表，通过指定该参数可以同时绑定标签到相应的日志主题。最大支持10个标签键值对，并且不能有重复的键值对。
        # @type Tags: Array
        # @param Status: 主题是否开启采集，true：开启采集；false：关闭采集。
        # 控制台目前不支持修改此参数。
        # @type Status: Boolean
        # @param AutoSplit: 是否开启自动分裂
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 若开启最大分裂，该主题能够能够允许的最大分区数；
        # 默认为50；必须为正数
        # @type MaxSplitPartitions: Integer
        # @param Period: 生命周期，单位天，标准存储取值范围1\~3600，低频存储取值范围7\~3600。取值为3640时代表永久保存
        # @type Period: Integer
        # @param Describes: 日志主题描述
        # @type Describes: String
        # @param HotPeriod: 0：关闭日志沉降。
        # 非0：开启日志沉降后标准存储的天数。HotPeriod需要大于等于7，且小于Period。仅在StorageType为 hot 时生效
        # @type HotPeriod: Integer
        # @param IsWebTracking: 免鉴权开关。 false：关闭； true：开启。
        # 开启后将支持指定操作匿名访问该日志主题。详情请参见[日志主题](https://cloud.tencent.com/document/product/614/41035)。
        # @type IsWebTracking: Boolean
        # @param Extends: 日志主题扩展信息
        # @type Extends: :class:`Tencentcloud::Cls.v20201016.models.TopicExtendInfo`
        # @param PartitionCount: 日志主题分区数量。
        # 默认为1；
        # 取值范围及约束：
        # - 当输入值<=0，系统自动调整为1。
        # - 如果未传MaxSplitPartitions，需要PartitionCount<=50；
        # - 如果传递了MaxSplitPartitions，需要PartitionCount<=MaxSplitPartitions；
        # @type PartitionCount: Integer
        # @param CancelTopicAsyncTaskID: 取消切换存储任务的id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取取消切换存储任务的id【Topics中的TopicAsyncTaskID字段】。
        # @type CancelTopicAsyncTaskID: String

        attr_accessor :TopicId, :TopicName, :Tags, :Status, :AutoSplit, :MaxSplitPartitions, :Period, :Describes, :HotPeriod, :IsWebTracking, :Extends, :PartitionCount, :CancelTopicAsyncTaskID

        def initialize(topicid=nil, topicname=nil, tags=nil, status=nil, autosplit=nil, maxsplitpartitions=nil, period=nil, describes=nil, hotperiod=nil, iswebtracking=nil, extends=nil, partitioncount=nil, canceltopicasynctaskid=nil)
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
          @Extends = extends
          @PartitionCount = partitioncount
          @CancelTopicAsyncTaskID = canceltopicasynctaskid
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
          unless params['Extends'].nil?
            @Extends = TopicExtendInfo.new
            @Extends.deserialize(params['Extends'])
          end
          @PartitionCount = params['PartitionCount']
          @CancelTopicAsyncTaskID = params['CancelTopicAsyncTaskID']
        end
      end

      # ModifyTopic返回参数结构体
      class ModifyTopicResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebCallback请求参数结构体
      class ModifyWebCallbackRequest < TencentCloud::Common::AbstractModel
        # @param WebCallbackId: 告警渠道回调配置ID。-通过[获取告警渠道回调配置列表](https://cloud.tencent.com/document/api/614/115229)获取告警渠道回调配置ID
        # @type WebCallbackId: String
        # @param Name: 告警渠道回调配置名称。最大支持255个字节
        # @type Name: String
        # @param Type: 渠道类型

        # WeCom:企业微信;DingTalk:钉钉;Lark:飞书;Http:自定义回调;
        # @type Type: String
        # @param Webhook: 回调地址。
        # @type Webhook: String
        # @param Method: 请求方式。

        # 支持POST、PUT。

        # 注意：当Type为Http时，必填。
        # @type Method: String
        # @param Key: 秘钥信息。最大支持1024个字节
        # @type Key: String

        attr_accessor :WebCallbackId, :Name, :Type, :Webhook, :Method, :Key

        def initialize(webcallbackid=nil, name=nil, type=nil, webhook=nil, method=nil, key=nil)
          @WebCallbackId = webcallbackid
          @Name = name
          @Type = type
          @Webhook = webhook
          @Method = method
          @Key = key
        end

        def deserialize(params)
          @WebCallbackId = params['WebCallbackId']
          @Name = params['Name']
          @Type = params['Type']
          @Webhook = params['Webhook']
          @Method = params['Method']
          @Key = params['Key']
        end
      end

      # ModifyWebCallback返回参数结构体
      class ModifyWebCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 提供多个Notice信息
      class MonitorNotice < TencentCloud::Common::AbstractModel
        # @param Notices: 以数组的形式提供MonitorNoticeRule
        # @type Notices: Array

        attr_accessor :Notices

        def initialize(notices=nil)
          @Notices = notices
        end

        def deserialize(params)
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              monitornoticerule_tmp = MonitorNoticeRule.new
              monitornoticerule_tmp.deserialize(i)
              @Notices << monitornoticerule_tmp
            end
          end
        end
      end

      # 云监控通知渠道组信息
      class MonitorNoticeRule < TencentCloud::Common::AbstractModel
        # @param NoticeId: 腾讯云可观测平台通知模板 ID
        # @type NoticeId: String
        # @param ContentTmplId: 腾讯云可观测平台内容模板ID，不传默认内容模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentTmplId: String
        # @param AlarmLevels: 告警级别,0:警告(Warn); 1:提醒(Info); 2:紧急 (Critical)
        # @type AlarmLevels: Array

        attr_accessor :NoticeId, :ContentTmplId, :AlarmLevels

        def initialize(noticeid=nil, contenttmplid=nil, alarmlevels=nil)
          @NoticeId = noticeid
          @ContentTmplId = contenttmplid
          @AlarmLevels = alarmlevels
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @ContentTmplId = params['ContentTmplId']
          @AlarmLevels = params['AlarmLevels']
        end
      end

      # 告警策略中监控任务的执行时间点
      class MonitorTime < TencentCloud::Common::AbstractModel
        # @param Type: 执行周期， 可选值：`Period`、`Fixed`、`Cron`。

        # - Period：固定频率
        # - Fixed：固定时间
        # - Cron：Cron表达式
        # @type Type: String
        # @param Time: 执行的周期，或者定制执行的时间节点。单位为分钟，取值范围为1~1440。
        # 当type为`Period`,`Fixed`时，time字段生效。
        # @type Time: Integer
        # @param CronExpression: 执行的周期cron表达式。示例：`"*/1 * * * *"` 从左到右每个field的含义 Minutes field(分钟), Hours field(小时),Day of month field(日期),Month field(月份),Day of week field(星期)， 不支持秒级别。
        # 当type为`Cron`时，CronExpression字段生效。
        # @type CronExpression: String

        attr_accessor :Type, :Time, :CronExpression

        def initialize(type=nil, time=nil, cronexpression=nil)
          @Type = type
          @Time = time
          @CronExpression = cronexpression
        end

        def deserialize(params)
          @Type = params['Type']
          @Time = params['Time']
          @CronExpression = params['CronExpression']
        end
      end

      # 多触发条件。
      class MultiCondition < TencentCloud::Common::AbstractModel
        # @param Condition: 触发条件。
        # @type Condition: String
        # @param AlarmLevel: 告警级别。0:警告(Warn); 1:提醒(Info); 2:紧急 (Critical)。

        # - 不填则默认为0。
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

      # 通知内容模板详细配置
      class NoticeContent < TencentCloud::Common::AbstractModel
        # @param Type: 渠道类型

        # Email:邮件;Sms:短信;WeChat:微信;Phone:电话;WeCom:企业微信;DingTalk:钉钉;Lark:飞书;Http:自定义回调;
        # @type Type: String
        # @param TriggerContent: 告警触发通知内容模板。
        # @type TriggerContent: :class:`Tencentcloud::Cls.v20201016.models.NoticeContentInfo`
        # @param RecoveryContent: 告警恢复通知内容模板。
        # @type RecoveryContent: :class:`Tencentcloud::Cls.v20201016.models.NoticeContentInfo`

        attr_accessor :Type, :TriggerContent, :RecoveryContent

        def initialize(type=nil, triggercontent=nil, recoverycontent=nil)
          @Type = type
          @TriggerContent = triggercontent
          @RecoveryContent = recoverycontent
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TriggerContent'].nil?
            @TriggerContent = NoticeContentInfo.new
            @TriggerContent.deserialize(params['TriggerContent'])
          end
          unless params['RecoveryContent'].nil?
            @RecoveryContent = NoticeContentInfo.new
            @RecoveryContent.deserialize(params['RecoveryContent'])
          end
        end
      end

      # 通知模板内容
      class NoticeContentInfo < TencentCloud::Common::AbstractModel
        # @param Title: 通知内容模板标题信息。
        # 部分通知渠道类型不支持“标题”，请参照[腾讯云控制台页面](https://console.cloud.tencent.com/cls/alarm/notice-template)。
        # @type Title: String
        # @param Content: 通知内容模板正文信息。
        # @type Content: String
        # @param Headers: 请求头（Request Headers）：在HTTP请求中，请求头包含了客户端向服务器发送的附加信息，如用户代理、授权凭证、期望的响应格式等。
        # 仅“自定义回调”支持该配置。
        # @type Headers: Array

        attr_accessor :Title, :Content, :Headers

        def initialize(title=nil, content=nil, headers=nil)
          @Title = title
          @Content = content
          @Headers = headers
        end

        def deserialize(params)
          @Title = params['Title']
          @Content = params['Content']
          @Headers = params['Headers']
        end
      end

      # 通知内容模板信息
      class NoticeContentTemplate < TencentCloud::Common::AbstractModel
        # @param NoticeContentId: 通知内容模板ID。
        # @type NoticeContentId: String
        # @param Name: 通知内容模板名称
        # @type Name: String
        # @param Type: 语言类型。

        # 0： 中文
        # 1： 英文
        # @type Type: Integer
        # @param NoticeContents: 通知内容模板信息。
        # @type NoticeContents: Array
        # @param Flag: 通知内容模板标记。

        # 0： 用户自定义
        # 1： 系统内置
        # @type Flag: Integer
        # @param Uin: 创建者主账号。
        # @type Uin: Integer
        # @param SubUin: 创建/修改者子账号。
        # @type SubUin: Integer
        # @param CreateTime: 创建时间 秒级(s)时间戳。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间 秒级(s)时间戳。
        # @type UpdateTime: Integer

        attr_accessor :NoticeContentId, :Name, :Type, :NoticeContents, :Flag, :Uin, :SubUin, :CreateTime, :UpdateTime

        def initialize(noticecontentid=nil, name=nil, type=nil, noticecontents=nil, flag=nil, uin=nil, subuin=nil, createtime=nil, updatetime=nil)
          @NoticeContentId = noticecontentid
          @Name = name
          @Type = type
          @NoticeContents = noticecontents
          @Flag = flag
          @Uin = uin
          @SubUin = subuin
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @NoticeContentId = params['NoticeContentId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['NoticeContents'].nil?
            @NoticeContents = []
            params['NoticeContents'].each do |i|
              noticecontent_tmp = NoticeContent.new
              noticecontent_tmp.deserialize(i)
              @NoticeContents << noticecontent_tmp
            end
          end
          @Flag = params['Flag']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 告警通知接收者信息
      class NoticeReceiver < TencentCloud::Common::AbstractModel
        # @param ReceiverType: 接受者类型。可选值：
        # -  Uin - 用户ID
        # - Group - 用户组ID
        # 暂不支持其余接收者类型。
        # @type ReceiverType: String
        # @param ReceiverIds: 接收者。
        # 当ReceiverType为Uin时，ReceiverIds的值为用户uid。[子用户信息查询](https://cloud.tencent.com/document/api/598/53486)
        # 当ReceiverType为Group时，ReceiverIds的值为用户组id。[CAM用户组](https://cloud.tencent.com/document/product/598/34589)
        # @type ReceiverIds: Array
        # @param ReceiverChannels: 通知接收渠道。
        # - Email - 邮件
        # - Sms - 短信
        # - WeChat - 微信
        # - Phone - 电话
        # @type ReceiverChannels: Array
        # @param NoticeContentId: 通知内容模板ID，使用Default-zh引用默认模板（中文），使用Default-en引用DefaultTemplate(English)。-通过[获取通知内容模板](https://cloud.tencent.com/document/product/614/111714)获取通知内容模板ID
        # @type NoticeContentId: String
        # @param StartTime: 允许接收信息的开始时间。格式：`15:04:05`。必填
        # @type StartTime: String
        # @param EndTime: 允许接收信息的结束时间。格式：`15:04:05`。必填
        # @type EndTime: String
        # @param Index: 位序。

        # - 入参时无效。
        # - 出参时有效。
        # @type Index: Integer

        attr_accessor :ReceiverType, :ReceiverIds, :ReceiverChannels, :NoticeContentId, :StartTime, :EndTime, :Index

        def initialize(receivertype=nil, receiverids=nil, receiverchannels=nil, noticecontentid=nil, starttime=nil, endtime=nil, index=nil)
          @ReceiverType = receivertype
          @ReceiverIds = receiverids
          @ReceiverChannels = receiverchannels
          @NoticeContentId = noticecontentid
          @StartTime = starttime
          @EndTime = endtime
          @Index = index
        end

        def deserialize(params)
          @ReceiverType = params['ReceiverType']
          @ReceiverIds = params['ReceiverIds']
          @ReceiverChannels = params['ReceiverChannels']
          @NoticeContentId = params['NoticeContentId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Index = params['Index']
        end
      end

      # 通知规则
      class NoticeRule < TencentCloud::Common::AbstractModel
        # @param Rule: 匹配规则 JSON串。
        # **rule规则树格式为嵌套结构体JSON字符串**
        # `{"Value":"AND","Type":"Operation","Children":[{"Value":"OR","Type":"Operation","Children":[{"Type":"Condition","Value":"Level","Children":[{"Value":"In","Type":"Compare"},{"Value":"[1,0]","Type":"Value"}]},{"Type":"Condition","Value":"Level","Children":[{"Value":"NotIn","Type":"Compare"},{"Value":"[2]","Type":"Value"}]}]}]}`

        # **rule规则树限制规则如下**：
        # - 顶层rule中Type可取值：`Condition`，`Operation`
        # - Type为`Operation`的子节点支持的Type可取值：`Condition`，`Operation`
        # - Type为`Condition`的子节点支持的Type可取值：`String`，`Compare`，`Array`，`TimeRange`，`Value`，`Key`
        # - 其他Type无子节点
        # - 当rule Type为`Operation`时，value可取值：`AND`，`OR`
        # - 当rule Type为`Condition`时，value不可为空，子节点个数不能小于2
        #     - 当子节点Type为  `Compare` 时，value可取值：`>`，`<`，`>=`，`<=`，`=`，`!=`，`Between`，`NotBetween`，`=~`，`!=~`，`In`，`NotIn`
        #     - value为`Between`，`NotBetween`时，下一个子节点value必须是长度为2的数组
        #     - value为`=~`，`!=~`时，下一个子节点value必须是一个正则表达式
        #     - value为`In`，`NotIn`时， 下一个子节点value必须是一个数组

        # **业务参数含义**：
        # - Type：Condition 表示是规则条件，Value：Level 表示告警等级
        #     - 子节点Type支持`Compare`，Value支持`In`，`NotIn`
        #     - 下一个子节点value支持的值：0（警告），1（提醒），2 （紧急）
        # 以下示例表示：告警等级属于提醒
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"Level\",\"Children\":[{\"Value\":\"In\",\"Type\":\"Compare\"},{\"Value\":\"[1]\",\"Type\":\"Value\"}]}]}`

        # - Type：Condition 表示是规则条件，Value：NotifyType 表示通知类型
        #     - 子节点Type支持`Compare`，Value支持`In`，`NotIn`
        #     - 下一个子节点value支持的值：1（告警通知），2 （恢复通知）
        # 以下示例表示：通知类型属于告警通知或通知类型不属于恢复通知
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"NotifyType\",\"Children\":[{\"Value\":\"In\",\"Type\":\"Compare\"},{\"Value\":\"[1]\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"NotifyType\",\"Children\":[{\"Value\":\"NotIn\",\"Type\":\"Compare\"},{\"Value\":\"[2]\",\"Type\":\"Value\"}]}]}]}`

        # - Type：Condition 表示是规则条件，Value：AlarmID 表示告警策略
        #     - 子节点Type支持`Compare`，Value支持`In`，`NotIn`
        #     - 下一个子节点value支持的值：告警策略id数组
        # 以下示例表示：告警策略属于alarm-53af048c-254b-4c73-bb48-xxx,alarm-6dfa8bc5-08da-4d64-b6cb-xxx或告警策略不属于alarm-1036314c-1e49-4cee-a8fb-xxx
        # `"{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"AlarmID\",\"Children\":[{\"Value\":\"In\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"alarm-53af048c-254b-4c73-bb48-xxx\\\",\\\"alarm-6dfa8bc5-08da-4d64-b6cb-xxx\\\"]\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"AlarmID\",\"Children\":[{\"Value\":\"NotIn\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"alarm-1036314c-1e49-4cee-a8fb-xxx\\\"]\",\"Type\":\"Value\"}]}]}]}"`

        # - Type：Condition 表示是规则条件，Value：AlarmName 表示告警策略名称
        #     - 子节点Type支持`Compare`，Value支持`=~`，`!=~`
        #     - 下一个子节点value支持的值：必须是正则表达式
        # 以下示例表示：告警策略名称正则匹配^test$或告警策略名称正则不匹配^hahaha$
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"AlarmName\",\"Children\":[{\"Value\":\"=~\",\"Type\":\"Compare\"},{\"Value\":\"^test$\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"AlarmName\",\"Children\":[{\"Value\":\"!=~\",\"Type\":\"Compare\"},{\"Value\":\"^hahaha$\",\"Type\":\"Value\"}]}]}]}`

        # - Type：Condition 表示是规则条件，Value：Label 表示告警分类字段
        #     - 子节点Type支持`Compare`，Value支持`In`，`NotIn`，`=~`，`!=~`
        #     - 下一个子节点value支持的值：`In`，`NotIn` 时value是数组，`=~`，`!=~`时value是正则表达式
        # 以下示例表示：告警分类字段key1属于v1或告警分类字段key2不属于v2或告警分类字段key3正则匹配^test$或告警分类字段key4正则不匹配^hahaha$
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"Label\",\"Children\":[{\"Value\":\"key1\",\"Type\":\"Key\"},{\"Value\":\"In\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"v1\\\"]\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Label\",\"Children\":[{\"Value\":\"key2\",\"Type\":\"Key\"},{\"Value\":\"NotIn\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"v2\\\"]\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Label\",\"Children\":[{\"Value\":\"key3\",\"Type\":\"Key\"},{\"Value\":\"=~\",\"Type\":\"Compare\"},{\"Value\":\"^test$\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Label\",\"Children\":[{\"Value\":\"key4\",\"Type\":\"Key\"},{\"Value\":\"!=~\",\"Type\":\"Compare\"},{\"Value\":\"^hahaha$\",\"Type\":\"Value\"}]}]}]}`

        # - Type：Condition 表示是规则条件，Value：NotifyTime 表示通知时间
        #     - 子节点Type支持`Compare`，Value支持`Between `，`NotBetween `
        #     - 下一个子节点value支持的值：长度为2，格式为`14:20:36`的字符串数组
        # 以下示例表示：通知时间在指定范围内14:18:36至14:33:36或通知时间不在指定范围内14:20:36至14:30:36
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"NotifyTime\",\"Children\":[{\"Value\":\"Between\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"14:18:36\\\",\\\"14:33:36\\\"]\",\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"NotifyTime\",\"Children\":[{\"Value\":\"NotBetween\",\"Type\":\"Compare\"},{\"Value\":\"[\\\"14:20:36\\\",\\\"14:30:36\\\"]\",\"Type\":\"Value\"}]}]}]}`

        # - Type：Condition 表示是规则条件，Value：Duration 表示告警持续时间
        #     - 子节点Type支持`Compare`，Value支持`>`，`<`，`>=`，`<=`
        #     - 下一个子节点value支持的值：整型值单位分钟
        # 以下示例表示：告警持续时间大于1分钟或告警持续时间大于等于2分钟或告警持续时间小于3分钟或告警持续时间小于等于4分钟
        # `{\"Value\":\"AND\",\"Type\":\"Operation\",\"Children\":[{\"Value\":\"OR\",\"Type\":\"Operation\",\"Children\":[{\"Type\":\"Condition\",\"Value\":\"Duration\",\"Children\":[{\"Value\":\">\",\"Type\":\"Compare\"},{\"Value\":1,\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Duration\",\"Children\":[{\"Value\":\">=\",\"Type\":\"Compare\"},{\"Value\":2,\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Duration\",\"Children\":[{\"Value\":\"<\",\"Type\":\"Compare\"},{\"Value\":3,\"Type\":\"Value\"}]},{\"Type\":\"Condition\",\"Value\":\"Duration\",\"Children\":[{\"Value\":\"<=\",\"Type\":\"Compare\"},{\"Value\":4,\"Type\":\"Value\"}]}]}]}`
        # @type Rule: String
        # @param NoticeReceivers: 告警通知接收者信息。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警通知模板回调信息，包括企业微信、钉钉、飞书。
        # @type WebCallbacks: Array
        # @param Escalate: 告警升级开关。`true`：开启告警升级、`false`：关闭告警升级，默认：false
        # @type Escalate: Boolean
        # @param Type: 告警升级条件。`1`：无人认领且未恢复、`2`：未恢复，默认为1
        # - 无人认领且未恢复：告警没有恢复并且没有人认领则升级
        # - 未恢复：当前告警持续未恢复则升级
        # @type Type: Integer
        # @param Interval: 告警升级间隔。单位：分钟，范围`[1，14400]`
        # @type Interval: Integer
        # @param EscalateNotice: 告警升级后下一个环节的通知渠道配置
        # @type EscalateNotice: :class:`Tencentcloud::Cls.v20201016.models.EscalateNoticeInfo`

        attr_accessor :Rule, :NoticeReceivers, :WebCallbacks, :Escalate, :Type, :Interval, :EscalateNotice

        def initialize(rule=nil, noticereceivers=nil, webcallbacks=nil, escalate=nil, type=nil, interval=nil, escalatenotice=nil)
          @Rule = rule
          @NoticeReceivers = noticereceivers
          @WebCallbacks = webcallbacks
          @Escalate = escalate
          @Type = type
          @Interval = interval
          @EscalateNotice = escalatenotice
        end

        def deserialize(params)
          @Rule = params['Rule']
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
          @Escalate = params['Escalate']
          @Type = params['Type']
          @Interval = params['Interval']
          unless params['EscalateNotice'].nil?
            @EscalateNotice = EscalateNoticeInfo.new
            @EscalateNotice.deserialize(params['EscalateNotice'])
          end
        end
      end

      # OpenKafkaConsumer请求参数结构体
      class OpenKafkaConsumerRequest < TencentCloud::Common::AbstractModel
        # @param FromTopicId: 日志主题Id。
        # - 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # - 通过 [创建日志主题](https://cloud.tencent.com/document/product/614/56456) 获取日志主题Id。
        # @type FromTopicId: String
        # @param Compression: 压缩方式[0:NONE；2:SNAPPY；3:LZ4]，默认：0
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param LastWriteTime: 只读分区数据停止写入时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
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
        # @param PreviewType: 预览类型，1：源数据预览；2：导出结果预览。
        # @type PreviewType: Integer
        # @param KafkaType: 导入Kafka类型，0：腾讯云CKafka；1：用户自建Kafka。
        # @type KafkaType: Integer
        # @param UserKafkaTopics: 用户需要导入的Kafka相关topic列表，多个topic之间使用半角逗号隔开。
        # 最多支持100个。
        # @type UserKafkaTopics: String
        # @param Offset: 导入数据位置，-2：最早；-1：最晚。
        # @type Offset: Integer
        # @param KafkaInstance: 腾讯云CKafka实例ID，当KafkaType为0时参数KafkaInstance有效且必填。
        # - 通过 [获取实例列表信息](https://cloud.tencent.com/document/product/597/40835) 获取实例id。
        # @type KafkaInstance: String
        # @param ServerAddr: 服务地址。
        # KafkaType为1时ServerAddr必填。
        # @type ServerAddr: String
        # @param IsEncryptionAddr: ServerAddr是否为加密连接。
        # KafkaType为1时有效。
        # @type IsEncryptionAddr: Boolean
        # @param Protocol: 加密访问协议。
        # KafkaType为1并且IsEncryptionAddr为true时Protocol必填。
        # @type Protocol: :class:`Tencentcloud::Cls.v20201016.models.KafkaProtocolInfo`
        # @param ConsumerGroupName: 用户Kafka消费组。

        # - 消费组是 Kafka 提供的可扩展且具有容错性的消费者机制，一个消费组中存在多个消费者，组内的所有消费者共同消费订阅 Topic 中的消息。一个消费者可同时消费多个 Partition，但一个 Partition 只能被消费组内的一个消费者消费。
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
        # @type LogData: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param LineNum: 行号。从0开始
        # @type LineNum: Integer
        # @param DstTopicId: 目标日志主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type DstTopicId: String
        # @param FailReason: 失败错误信息， 空字符串""表示正常
        # @type FailReason: String
        # @param Time: 日志时间，格式：`2024-05-07 17:13:17.105`

        # - 入参时无效
        # - 出参时有效，为日志中的时间格式
        # @type Time: String
        # @param DstTopicName: 目标topic-name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstTopicName: String

        attr_accessor :LogContent, :LineNum, :DstTopicId, :FailReason, :Time, :DstTopicName
        extend Gem::Deprecate
        deprecate :DstTopicName, :none, 2025, 9
        deprecate :DstTopicName=, :none, 2025, 9

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
        # - 参考 [语法规则](https://cloud.tencent.com/document/product/614/90334) 文档
        # @type Query: String
        # @param TopicId: 指标主题ID
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Time: 查询时间，秒级Unix时间戳。为空时代表当前时间戳。
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
        # @param ResultType: 指标查询结果类型，支持
        # - scalar 标量值
        # - string 字符串值
        # - vector 瞬时向量
        # - matrix 区间向量
        # @type ResultType: String
        # @param Result: 指标查询结果
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param Query: 查询语句，使用PromQL语法
        # - 参考 [语法规则](https://cloud.tencent.com/document/product/614/90334) 文档
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
        # @param ResultType: 指标查询结果类型，支持
        # - scalar 标量值
        # - string 字符串值
        # - vector 瞬时向量
        # - matrix 区间向量
        # @type ResultType: String
        # @param Result: 指标查询结果
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ShipperId: 投递规则Id。

        # - 通过 [获取投递任务列表](https://cloud.tencent.com/document/product/614/58745)获取ShipperId。
        # @type ShipperId: String
        # @param TaskId: 投递任务Id。

        # - 通过 [获取投递任务列表](https://cloud.tencent.com/document/product/614/58745) 获取TaskId。
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

      # 索引规则，FullText、KeyValue、Tag参数必须输入一个有效参数
      class RuleInfo < TencentCloud::Common::AbstractModel
        # @param FullText: 全文索引配置, 为空时代表未开启全文索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullText: :class:`Tencentcloud::Cls.v20201016.models.FullTextInfo`
        # @param KeyValue: 键值索引配置，为空时代表未开启键值索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValue: :class:`Tencentcloud::Cls.v20201016.models.RuleKeyValueInfo`
        # @param Tag: 元字段索引配置，为空时代表未开启元字段索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: :class:`Tencentcloud::Cls.v20201016.models.RuleTagInfo`
        # @param DynamicIndex: 键值索引自动配置，为空时代表未开启该功能。
        # 启用后自动将日志内的字段添加到键值索引中，包括日志中后续新增的字段。
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
        # @param TopicId: 通过 [获取日志主题列表](https://cloud.tencent.com/document/product/614/56454) 获取日志主题Id。
        # @type TopicId: String
        # @param Region: 主题的地域信息，当前不支持跨地域，支持地域参考 [地域列表](https://cloud.tencent.com/document/api/614/56474#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8) 文档。
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
        # @param CreateTime: 任务创建时间。格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间，格式：yyyy-MM-dd HH:mm:ss
        # @type UpdateTime: String
        # @param Status: 任务状态，1:运行 2:停止 3:异常-找不到源日志主题 4:异常-找不到目标主题

        # 5: 访问权限问题 6:内部故障 7:其他故障
        # @type Status: Integer
        # @param EnableFlag: 任务启用状态，1开启,  2关闭
        # @type EnableFlag: Integer
        # @param ScheduledSqlContent: 查询语句
        # @type ScheduledSqlContent: String
        # @param ProcessStartTime: 调度开始时间，格式：yyyy-MM-dd HH:mm:ss
        # @type ProcessStartTime: String
        # @param ProcessType: 调度类型，1:持续运行 2:指定时间范围
        # @type ProcessType: Integer
        # @param ProcessEndTime: 调度结束时间，格式：yyyy-MM-dd HH:mm:ss，当process_type=2时为必传字段
        # @type ProcessEndTime: String
        # @param ProcessPeriod: 调度周期(分钟)，1~1440分钟
        # @type ProcessPeriod: Integer
        # @param ProcessTimeWindow: 查询的时间窗口. @m-15m, @m，意为近15分钟
        # @type ProcessTimeWindow: String
        # @param ProcessDelay: 执行延迟(秒)，0~120秒，默认60秒
        # @type ProcessDelay: Integer
        # @param SrcTopicRegion: 源topicId的地域信息，支持地域见 [地域列表](https://cloud.tencent.com/document/api/614/56474#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8) 文档。
        # @type SrcTopicRegion: String
        # @param SyntaxRule: 语法规则，0：Lucene语法，1：CQL语法
        # @type SyntaxRule: Integer
        # @param HasServicesLog: 是否开启投递服务日志。1：关闭，2：开启。
        # @type HasServicesLog: Integer
        # @param FullQuery: 全文检索标记。1：关闭，2：打开。
        # @type FullQuery: Integer

        attr_accessor :TaskId, :Name, :SrcTopicId, :SrcTopicName, :DstResource, :CreateTime, :UpdateTime, :Status, :EnableFlag, :ScheduledSqlContent, :ProcessStartTime, :ProcessType, :ProcessEndTime, :ProcessPeriod, :ProcessTimeWindow, :ProcessDelay, :SrcTopicRegion, :SyntaxRule, :HasServicesLog, :FullQuery

        def initialize(taskid=nil, name=nil, srctopicid=nil, srctopicname=nil, dstresource=nil, createtime=nil, updatetime=nil, status=nil, enableflag=nil, scheduledsqlcontent=nil, processstarttime=nil, processtype=nil, processendtime=nil, processperiod=nil, processtimewindow=nil, processdelay=nil, srctopicregion=nil, syntaxrule=nil, hasserviceslog=nil, fullquery=nil)
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
          @HasServicesLog = hasserviceslog
          @FullQuery = fullquery
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
          @HasServicesLog = params['HasServicesLog']
          @FullQuery = params['FullQuery']
        end
      end

      # SearchCosRechargeInfo请求参数结构体
      class SearchCosRechargeInfoRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题Id。
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param LogsetId: 日志集Id。

        # - 通过[获取日志集列表](https://cloud.tencent.com/document/product/614/58624)获取日志集Id。
        # @type LogsetId: String
        # @param Name: COS导入任务名称,最大支持128个字节。
        # @type Name: String
        # @param Bucket: COS存储桶，详见产品支持的[存储桶命名规范](https://cloud.tencent.com/document/product/436/13312)。

        # - 通过[GET Service（List Buckets）](https://cloud.tencent.com/document/product/436/8291)获取COS存储桶。
        # @type Bucket: String
        # @param BucketRegion: COS存储桶所在地域，详见产品支持的[地域列表](https://cloud.tencent.com/document/product/436/6224)。
        # @type BucketRegion: String
        # @param Prefix: COS文件所在文件夹的前缀。默认为空，投递存储桶下所有的文件。
        # @type Prefix: String
        # @param Compress: 压缩模式:   "", "gzip", "lzop", "snappy"。  默认："" 不压缩
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
        # @type Data: Array
        # @param Sum: 匹配到的存储桶下的文件个数
        # @type Sum: Integer
        # @param Path: 当前预览文件路径
        # @type Path: String
        # @param Msg: 预览获取数据失败原因
        # @type Msg: String
        # @param Status: 状态。
        # - 0：成功
        # - 10000：参数错误，请确认参数
        # - 10001：授权失败，请确认授权
        # - 10002：获取文件列表失败，请稍后再试。若无法解决，请咨询 [在线支持](https://cloud.tencent.com/online-service) 或 [提交工单](https://console.cloud.tencent.com/workorder/category?level1_id=83&level2_id=469&source=14&data_title=%E6%97%A5%E5%BF%97%E6%9C%8D%E5%8A%A1&step=1) 处理。
        # - 10003：桶内无相应前缀文件，请使用正确的桶、文件前缀和压缩方式
        # - 10004：文件下载失败，请稍后再试。若无法解决，请咨询 [在线支持](https://cloud.tencent.com/online-service) 或 [提交工单](https://console.cloud.tencent.com/workorder/category?level1_id=83&level2_id=469&source=14&data_title=%E6%97%A5%E5%BF%97%E6%9C%8D%E5%8A%A1&step=1) 处理。
        # - 10005：文件解压缩失败，请选择正确的压缩方式然后再试
        # - 10006：读取文件内容失败，请确认文件可读
        # - 10007：文件预览失败，请稍后再试。若无法解决，请咨询 [在线支持](https://cloud.tencent.com/online-service) 或 [提交工单](https://console.cloud.tencent.com/workorder/category?level1_id=83&level2_id=469&source=14&data_title=%E6%97%A5%E5%BF%97%E6%9C%8D%E5%8A%A1&step=1) 处理。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # SearchDashboardSubscribe请求参数结构体
      class SearchDashboardSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param DashboardId: 仪表盘id。通过 [获取仪表盘](https://cloud.tencent.com/document/api/614/95636)接口获取DashboardId。
        # @type DashboardId: String
        # @param SubscribeData: 仪表盘订阅数据。
        # @type SubscribeData: :class:`Tencentcloud::Cls.v20201016.models.DashboardSubscribeData`
        # @param Id: 仪表盘订阅Id。通过 [获取仪表盘订阅列表](https://cloud.tencent.com/document/api/614/105779)接口获取Id。
        # @type Id: Integer
        # @param Name: 仪表盘订阅名称。通过 [获取仪表盘订阅列表](https://cloud.tencent.com/document/api/614/105779)接口获取Name。
        # @type Name: String

        attr_accessor :DashboardId, :SubscribeData, :Id, :Name

        def initialize(dashboardid=nil, subscribedata=nil, id=nil, name=nil)
          @DashboardId = dashboardid
          @SubscribeData = subscribedata
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @DashboardId = params['DashboardId']
          unless params['SubscribeData'].nil?
            @SubscribeData = DashboardSubscribeData.new
            @SubscribeData.deserialize(params['SubscribeData'])
          end
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # SearchDashboardSubscribe返回参数结构体
      class SearchDashboardSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # 多日志主题检索错误信息
      class SearchLogErrors < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param ErrorCodeStr: 错误码
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
        # @param From: 要检索分析的日志的起始时间，**Unix时间戳（毫秒）**
        # @type From: Integer
        # @param To: 要检索分析的日志的结束时间，**Unix时间戳（毫秒）**
        # @type To: Integer
        # @param Query: 检索分析语句，最大长度为12KB
        # 语句由 <a href="https://cloud.tencent.com/document/product/614/47044" target="_blank">[检索条件]</a> | <a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>构成，无需对日志进行统计分析时，可省略其中的管道符<code> | </code>及SQL语句
        # 使用*或空字符串可查询所有日志
        # @type Query: String
        # @param SyntaxRule: 检索语法规则，默认值为0，推荐使用1 。
        # - 0：Lucene语法
        # - 1：CQL语法（CLS Query Language，日志服务专用检索语法）

        #  ⚠️⚠️ **注意**
        #  **该参数值建议设置为 1，使用 CQL 语法规则，控制台日志检索及仪表盘默认均使用该语法规则。**
        #  该参数值未指定或者为 0 时，将使用 Lucene 语法，语法容易报错且查询结果与控制台默认语法规则不一致。详细说明参见<a href="https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules" target="_blank">检索条件语法规则</a>。
        # @type SyntaxRule: Integer
        # @param TopicId: - 要检索分析的日志主题ID，仅能指定一个日志主题。
        # - 如需同时检索多个日志主题，请使用Topics参数。
        # - TopicId 和 Topics 不能同时使用，在一次请求中有且只能选择一个。
        # @type TopicId: String
        # @param Topics: - 要检索分析的日志主题列表，最大支持50个日志主题。
        # - 检索单个日志主题时请使用TopicId。
        # - TopicId 和 Topics 不能同时使用，在一次请求中有且只能选择一个。
        # @type Topics: Array
        # @param Sort: 原始日志是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果排序方式参考<a href="https://cloud.tencent.com/document/product/614/58978" target="_blank">SQL ORDER BY语法</a>
        # @type Sort: String
        # @param Limit: 表示单次查询返回的原始日志条数，默认为100，最大值为1000。
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * SQL结果条数指定方式参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>

        # 可通过两种方式获取后续更多日志：
        # * Context:透传上次接口返回的Context值，获取后续更多日志，总计最多可获取1万条原始日志
        # * Offset:偏移量，表示从第几行开始返回原始日志，无日志条数限制
        # @type Limit: Integer
        # @param Offset: 查询原始日志的偏移量，表示从第几行开始返回原始日志，默认为0。
        # 注意：
        # * 仅当检索分析语句(Query)不包含SQL时有效
        # * 不能与Context参数同时使用
        # * 仅适用于单日志主题检索
        # @type Offset: Integer
        # @param Context: 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时。
        # 注意：
        # * 透传该参数时，请勿修改除该参数外的其它参数
        # * 仅适用于单日志主题检索，检索多个日志主题时，请使用Topics中的Context
        # * 仅当检索分析语句(Query)不包含SQL时有效，SQL获取后续结果参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        # @type Context: String
        # @param SamplingRate: 执行统计分析（Query中包含SQL）时，是否对原始日志先进行采样，再进行统计分析。
        # 0：自动采样;
        # 0～1：按指定采样率采样，例如0.02;
        # 1：不采样，即精确分析
        # 默认值为1
        # @type SamplingRate: Float
        # @param UseNewAnalysis: 为true代表使用新的检索结果返回方式，输出参数AnalysisRecords和Columns有效
        # 为false时代表使用老的检索结果返回方式, 输出AnalysisResults和ColNames有效
        # 两种返回方式在编码格式上有少量区别，建议使用true
        # @type UseNewAnalysis: Boolean
        # @param HighLight: 是否高亮符合检索条件的关键词，一般用于高亮显示。仅支持键值检索，不支持全文检索
        # @type HighLight: Boolean

        attr_accessor :From, :To, :Query, :SyntaxRule, :TopicId, :Topics, :Sort, :Limit, :Offset, :Context, :SamplingRate, :UseNewAnalysis, :HighLight

        def initialize(from=nil, to=nil, query=nil, syntaxrule=nil, topicid=nil, topics=nil, sort=nil, limit=nil, offset=nil, context=nil, samplingrate=nil, usenewanalysis=nil, highlight=nil)
          @From = from
          @To = to
          @Query = query
          @SyntaxRule = syntaxrule
          @TopicId = topicid
          @Topics = topics
          @Sort = sort
          @Limit = limit
          @Offset = offset
          @Context = context
          @SamplingRate = samplingrate
          @UseNewAnalysis = usenewanalysis
          @HighLight = highlight
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @SyntaxRule = params['SyntaxRule']
          @TopicId = params['TopicId']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              multitopicsearchinformation_tmp = MultiTopicSearchInformation.new
              multitopicsearchinformation_tmp.deserialize(i)
              @Topics << multitopicsearchinformation_tmp
            end
          end
          @Sort = params['Sort']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Context = params['Context']
          @SamplingRate = params['SamplingRate']
          @UseNewAnalysis = params['UseNewAnalysis']
          @HighLight = params['HighLight']
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
        # @type SamplingRate: Float
        # @param Topics: 使用多日志主题检索时，各个日志主题的基本信息，例如报错信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: :class:`Tencentcloud::Cls.v20201016.models.SearchLogTopics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Errors: Array
        # @param Infos: 多日志主题检索各日志主题信息
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
        # @type FilterRules: Array
        # @param Partition: 投递日志的分区规则，支持strftime的时间格式表示
        # @type Partition: String
        # @param Compress: 投递日志的压缩配置
        # @type Compress: :class:`Tencentcloud::Cls.v20201016.models.CompressInfo`
        # @param Content: 投递日志的内容格式配置
        # @type Content: :class:`Tencentcloud::Cls.v20201016.models.ContentInfo`
        # @param CreateTime: 投递日志的创建时间。格式：YYYY-MM-DD HH:MM:SS
        # @type CreateTime: String
        # @param FilenameMode: 投递文件命名配置，0：随机数命名，1：投递时间命名，默认0（随机数命名）
        # @type FilenameMode: Integer
        # @param StartTime: 投递数据范围的开始时间点
        # @type StartTime: Integer
        # @param EndTime: 投递数据范围的结束时间点
        # @type EndTime: Integer
        # @param Progress: 历史数据投递的进度（仅当用户选择的数据内中历史数据时才有效）
        # @type Progress: Float
        # @param RemainTime: 历史数据全部投递完成剩余的时间（仅当用户选择的数据中有历史数据时才有效）
        # @type RemainTime: Integer
        # @param HistoryStatus: 历史任务状态：
        # 0：实时任务
        # 1：任务准备中
        # 2：任务运行中
        # 3：任务运行异常
        # 4：任务运行结束
        # @type HistoryStatus: Integer
        # @param StorageType: 对象存储类型，默认值为 STANDARD。枚举值请参见[ 存储类型概述](https://cloud.tencent.com/document/product/436/33417) 文档。
        # 参考值有：
        # STANDARD：标准存储
        # STANDARD_IA：低频存储
        # ARCHIVE：归档存储
        # DEEP_ARCHIVE：深度归档存储
        # MAZ_STANDARD：标准存储（多 AZ）
        # MAZ_STANDARD_IA：低频存储（多 AZ）
        # INTELLIGENT_TIERING：智能分层存储
        # MAZ_INTELLIGENT_TIERING：智能分层存储（多 AZ）
        # @type StorageType: String

        attr_accessor :ShipperId, :TopicId, :Bucket, :Prefix, :ShipperName, :Interval, :MaxSize, :Status, :FilterRules, :Partition, :Compress, :Content, :CreateTime, :FilenameMode, :StartTime, :EndTime, :Progress, :RemainTime, :HistoryStatus, :StorageType

        def initialize(shipperid=nil, topicid=nil, bucket=nil, prefix=nil, shippername=nil, interval=nil, maxsize=nil, status=nil, filterrules=nil, partition=nil, compress=nil, content=nil, createtime=nil, filenamemode=nil, starttime=nil, endtime=nil, progress=nil, remaintime=nil, historystatus=nil, storagetype=nil)
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
          @StorageType = storagetype
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
          @StorageType = params['StorageType']
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
        # @param Status: 本次投递的结果。"success"，"running"，"failed"

        # - success：任务成功。
        # - running：任务处理中。
        # - failed：任务失败。
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
        # @param TopicId: 日志主题Id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param PartitionId: 待分裂分区Id
        # - 通过[获取分区列表](https://cloud.tencent.com/document/product/614/56470)获取待分裂分区Id。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 日志主题扩展信息
      class TopicExtendInfo < TencentCloud::Common::AbstractModel
        # @param AnonymousAccess: 日志主题免鉴权配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnonymousAccess: :class:`Tencentcloud::Cls.v20201016.models.AnonymousInfo`

        attr_accessor :AnonymousAccess

        def initialize(anonymousaccess=nil)
          @AnonymousAccess = anonymousaccess
        end

        def deserialize(params)
          unless params['AnonymousAccess'].nil?
            @AnonymousAccess = AnonymousInfo.new
            @AnonymousAccess.deserialize(params['AnonymousAccess'])
          end
        end
      end

      # 仪表盘 topic与地域信息
      class TopicIdAndRegion < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题id
        # @type TopicId: String
        # @param RegionId: 日志主题id所在的地域id。

        # id,地域,简称信息如下：
        # - 1,   广州,ap-guangzhou
        # - 4,   上海,ap-shanghai
        # - 5,   中国香港,ap-hongkong
        # - 7,   上海金融,ap-shanghai-fsi
        # - 8,   北京,ap-beijing
        # - 9,   新加坡,ap-singapore
        # - 11,  深圳金融,ap-shenzhen-fsi
        # - 15,  硅谷,na-siliconvalley
        # - 16,  成都,ap-chengdu
        # - 17,  法兰克福,eu-frankfurt
        # - 18,  首尔,ap-seoul
        # - 19,  重庆,ap-chongqing
        # - 22,  弗吉尼亚,na-ashburn
        # - 23,  曼谷,ap-bangkok
        # - 25,  东京,ap-tokyo
        # - 33,  南京,ap-nanjing
        # - 46,  北京金融,ap-beijing-fsi
        # - 72,  雅加达,ap-jakarta
        # - 74,  圣保罗,sa-saopaulo
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

      # 主题基本信息
      class TopicInfo < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param PartitionCount: 主题分区个数
        # @type PartitionCount: Integer
        # @param Index: 主题是否开启索引（主题类型需为日志主题）
        # @type Index: Boolean
        # @param AssumerName: 云产品标识，主题由其它云产品创建时，该字段会显示云产品名称，例如CDN、TKE
        # @type AssumerName: String
        # @param CreateTime: 创建时间
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String
        # @param Status: 主题是否开启采集，true：开启采集；false：关闭采集。
        # 创建日志主题时默认开启，可通过SDK调用ModifyTopic修改此字段。
        # 控制台目前不支持修改此参数。
        # @type Status: Boolean
        # @param Tags: 主题绑定的标签信息
        # @type Tags: Array
        # @param AutoSplit: 该主题是否开启自动分裂
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 若开启自动分裂的话，该主题能够允许的最大分区数
        # @type MaxSplitPartitions: Integer
        # @param StorageType: 主题的存储类型

        # - hot: 标准存储
        # - cold: 低频存储
        # @type StorageType: String
        # @param Period: 生命周期，单位天，可取值范围1~3600。取值为3640时代表永久保存
        # @type Period: Integer
        # @param SubAssumerName: 云产品二级标识，日志主题由其它云产品创建时，该字段会显示云产品名称及其日志类型的二级分类，例如TKE-Audit、TKE-Event。部分云产品仅有云产品标识(AssumerName)，无该字段。
        # @type SubAssumerName: String
        # @param Describes: 主题描述
        # @type Describes: String
        # @param HotPeriod: 开启日志沉降，标准存储的生命周期， hotPeriod < Period。
        # 标准存储为 hotPeriod, 低频存储则为 Period-hotPeriod。（主题类型需为日志主题）
        # HotPeriod=0为没有开启日志沉降。
        # @type HotPeriod: Integer
        # @param BizType: 主题类型。
        # - 0: 日志主题
        # - 1: 指标主题
        # @type BizType: Integer
        # @param IsWebTracking: 免鉴权开关。 false：关闭； true：开启。
        # 开启后将支持指定操作匿名访问该日志主题。详情请参见[日志主题](https://cloud.tencent.com/document/product/614/41035)。
        # @type IsWebTracking: Boolean
        # @param Extends: 日志主题扩展信息
        # @type Extends: :class:`Tencentcloud::Cls.v20201016.models.TopicExtendInfo`
        # @param TopicAsyncTaskID: 异步迁移任务ID
        # @type TopicAsyncTaskID: String
        # @param MigrationStatus: 异步迁移状态
        # - 1：进行中
        # - 2：已完成
        # - 3：失败
        # - 4：已取消
        # @type MigrationStatus: Integer
        # @param EffectiveDate: 异步迁移完成后，预计生效日期
        # 时间格式：yyyy-MM-dd HH:mm:ss
        # @type EffectiveDate: String

        attr_accessor :LogsetId, :TopicId, :TopicName, :PartitionCount, :Index, :AssumerName, :CreateTime, :Status, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType, :Period, :SubAssumerName, :Describes, :HotPeriod, :BizType, :IsWebTracking, :Extends, :TopicAsyncTaskID, :MigrationStatus, :EffectiveDate

        def initialize(logsetid=nil, topicid=nil, topicname=nil, partitioncount=nil, index=nil, assumername=nil, createtime=nil, status=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil, period=nil, subassumername=nil, describes=nil, hotperiod=nil, biztype=nil, iswebtracking=nil, extends=nil, topicasynctaskid=nil, migrationstatus=nil, effectivedate=nil)
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
          @Extends = extends
          @TopicAsyncTaskID = topicasynctaskid
          @MigrationStatus = migrationstatus
          @EffectiveDate = effectivedate
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
          unless params['Extends'].nil?
            @Extends = TopicExtendInfo.new
            @Extends.deserialize(params['Extends'])
          end
          @TopicAsyncTaskID = params['TopicAsyncTaskID']
          @MigrationStatus = params['MigrationStatus']
          @EffectiveDate = params['EffectiveDate']
        end
      end

      # UploadLog请求参数结构体
      class UploadLogRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题id
        # - 通过[获取日志主题列表](https://cloud.tencent.com/document/product/614/56454)获取日志主题Id。
        # @type TopicId: String
        # @param HashKey: 该参数已废弃，请勿使用
        # @type HashKey: String
        # @param CompressType: 压缩方法，目前支持
        # - lz4
        # - zstd
        # @type CompressType: String

        attr_accessor :TopicId, :HashKey, :CompressType
        extend Gem::Deprecate
        deprecate :HashKey, :none, 2025, 9
        deprecate :HashKey=, :none, 2025, 9

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
        # @type ContainZH: Boolean
        # @param Alias: 字段别名
        # @type Alias: String

        attr_accessor :Type, :Tokenizer, :SqlFlag, :ContainZH, :Alias

        def initialize(type=nil, tokenizer=nil, sqlflag=nil, containzh=nil, _alias=nil)
          @Type = type
          @Tokenizer = tokenizer
          @SqlFlag = sqlflag
          @ContainZH = containzh
          @Alias = _alias
        end

        def deserialize(params)
          @Type = params['Type']
          @Tokenizer = params['Tokenizer']
          @SqlFlag = params['SqlFlag']
          @ContainZH = params['ContainZH']
          @Alias = params['Alias']
        end
      end

      # 回调地址
      class WebCallback < TencentCloud::Common::AbstractModel
        # @param CallbackType: 回调的类型。可选值：
        # - Http(自定义接口回调)
        # - WeCom(企业微信)
        # - DingTalk(钉钉)
        # - Lark(飞书)
        # @type CallbackType: String
        # @param Url: 回调地址，最大支持1024个字节。
        # 也可使用WebCallbackId引用集成配置中的URL，此时该字段请填写为空字符串。
        # @type Url: String
        # @param WebCallbackId: 集成配置ID。-通过[获取告警渠道回调配置列表](https://cloud.tencent.com/document/product/614/115229)获取集成配置ID
        # @type WebCallbackId: String
        # @param Method: 回调方法。可选值：
        # - POST（默认值）
        # - PUT

        # 注意：
        # - 参数CallbackType为Http时为必选，其它回调方式无需填写。
        # @type Method: String
        # @param NoticeContentId: 通知内容模板ID，使用Default-zh引用默认模板（中文），使用Default-en引用DefaultTemplate(English)。
        # @type NoticeContentId: String
        # @param RemindType: 提醒类型。

        # 0：不提醒；1：指定人；2：所有人
        # @type RemindType: Integer
        # @param Mobiles: 电话列表。
        # @type Mobiles: Array
        # @param UserIds: 用户ID列表。
        # @type UserIds: Array
        # @param Headers: 该参数已废弃，请使用NoticeContentId。
        # @type Headers: Array
        # @param Body: 该参数已废弃，请使用NoticeContentId。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String
        # @param Index: 序号。
        # - 入参无效。
        # - 出参有效。
        # @type Index: Integer

        attr_accessor :CallbackType, :Url, :WebCallbackId, :Method, :NoticeContentId, :RemindType, :Mobiles, :UserIds, :Headers, :Body, :Index
        extend Gem::Deprecate
        deprecate :Headers, :none, 2025, 9
        deprecate :Headers=, :none, 2025, 9
        deprecate :Body, :none, 2025, 9
        deprecate :Body=, :none, 2025, 9

        def initialize(callbacktype=nil, url=nil, webcallbackid=nil, method=nil, noticecontentid=nil, remindtype=nil, mobiles=nil, userids=nil, headers=nil, body=nil, index=nil)
          @CallbackType = callbacktype
          @Url = url
          @WebCallbackId = webcallbackid
          @Method = method
          @NoticeContentId = noticecontentid
          @RemindType = remindtype
          @Mobiles = mobiles
          @UserIds = userids
          @Headers = headers
          @Body = body
          @Index = index
        end

        def deserialize(params)
          @CallbackType = params['CallbackType']
          @Url = params['Url']
          @WebCallbackId = params['WebCallbackId']
          @Method = params['Method']
          @NoticeContentId = params['NoticeContentId']
          @RemindType = params['RemindType']
          @Mobiles = params['Mobiles']
          @UserIds = params['UserIds']
          @Headers = params['Headers']
          @Body = params['Body']
          @Index = params['Index']
        end
      end

      # 告警渠道回调配置信息
      class WebCallbackInfo < TencentCloud::Common::AbstractModel
        # @param WebCallbackId: 告警渠道回调配置id。
        # @type WebCallbackId: String
        # @param Name: 告警渠道回调配置名称。
        # @type Name: String
        # @param Type: 渠道类型

        # WeCom:企业微信;DingTalk:钉钉;Lark:飞书;Http:自定义回调;
        # @type Type: String
        # @param Webhook: 回调地址。
        # @type Webhook: String
        # @param Method: 请求方式。
        # @type Method: String
        # @param Key: 秘钥信息。
        # @type Key: String
        # @param Uin: 主账号。
        # @type Uin: Integer
        # @param SubUin: 子账号。
        # @type SubUin: Integer
        # @param CreateTime: 创建时间。秒(s)级时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间。秒(s)级时间戳
        # @type UpdateTime: Integer

        attr_accessor :WebCallbackId, :Name, :Type, :Webhook, :Method, :Key, :Uin, :SubUin, :CreateTime, :UpdateTime

        def initialize(webcallbackid=nil, name=nil, type=nil, webhook=nil, method=nil, key=nil, uin=nil, subuin=nil, createtime=nil, updatetime=nil)
          @WebCallbackId = webcallbackid
          @Name = name
          @Type = type
          @Webhook = webhook
          @Method = method
          @Key = key
          @Uin = uin
          @SubUin = subuin
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @WebCallbackId = params['WebCallbackId']
          @Name = params['Name']
          @Type = params['Type']
          @Webhook = params['Webhook']
          @Method = params['Method']
          @Key = params['Key']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

    end
  end
end

