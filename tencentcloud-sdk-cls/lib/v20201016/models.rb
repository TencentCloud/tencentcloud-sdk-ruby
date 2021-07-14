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

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status, :AlarmId, :CreateTime, :UpdateTime, :MessageTemplate, :CallBack
        
        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil, alarmid=nil, createtime=nil, updatetime=nil, messagetemplate=nil, callback=nil)
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
        # @param StartTimeOffset: 查询范围起始时间相对当前的历史时间，单位非分钟，取值为非正，最大值为0，最小值为-1440。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对当前的历史时间，单位非分钟，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
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

      # 日志告警监控对线
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
        # @param StartTimeOffset: 查询范围起始时间相对当前的历史时间，取值为非正，最大值为0，最小值为-1440。
        # @type StartTimeOffset: Integer
        # @param EndTimeOffset: 查询范围终止时间相对当前的历史时间，取值为非正，须大于StartTimeOffset，最大值为0，最小值为-1440。
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

      # CreateAlarmNotice请求参数结构体
      class CreateAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Name: 告警模板名称。
        # @type Name: String
        # @param Type: 告警模板的类型。可选值：
        # <br><li> Trigger - 告警触发
        # <br><li> Recovery - 告警恢复
        # <br><li> All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 告警模板接收者信息。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警模板回调信息。
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

        attr_accessor :Name, :AlarmTargets, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :Status
        
        def initialize(name=nil, alarmtargets=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, status=nil)
          @Name = name
          @AlarmTargets = alarmtargets
          @MonitorTime = monitortime
          @Condition = condition
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @Status = status
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

      # CreateExport请求参数结构体
      class CreateExportRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题
        # @type TopicId: String
        # @param Query: 日志导出检索语句
        # @type Query: String
        # @param Count: 日志导出数量
        # @type Count: Integer
        # @param From: 日志导出起始时间，毫秒时间戳
        # @type From: Integer
        # @param To: 日志导出结束时间，毫秒时间戳
        # @type To: Integer
        # @param Order: 日志导出时间排序。desc，asc，默认为desc
        # @type Order: String
        # @param Format: 日志导出数据格式。json，csv，默认为json
        # @type Format: String

        attr_accessor :TopicId, :Query, :Count, :From, :To, :Order, :Format
        
        def initialize(topicid=nil, query=nil, count=nil, from=nil, to=nil, order=nil, format=nil)
          @TopicId = topicid
          @Query = query
          @Count = count
          @From = from
          @To = to
          @Order = order
          @Format = format
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Query = params['Query']
          @Count = params['Count']
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

        attr_accessor :TopicId, :Rule, :Status
        
        def initialize(topicid=nil, rule=nil, status=nil)
          @TopicId = topicid
          @Rule = rule
          @Status = status
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          unless params['Rule'].nil?
            @Rule = RuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
          @Status = params['Status']
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
        # @param AutoSplit: 是否开启自动分裂，默认值为false
        # @type AutoSplit: Boolean
        # @param MaxSplitPartitions: 开启自动分裂后，每个主题能够允许的最大分区数，默认值为50
        # @type MaxSplitPartitions: Integer
        # @param StorageType: 日志主题的存储类型，可选值 hot（热存储），cold（冷存储）默认为hot
        # @type StorageType: String

        attr_accessor :LogsetId, :TopicName, :PartitionCount, :Tags, :AutoSplit, :MaxSplitPartitions, :StorageType
        
        def initialize(logsetid=nil, topicname=nil, partitioncount=nil, tags=nil, autosplit=nil, maxsplitpartitions=nil, storagetype=nil)
          @LogsetId = logsetid
          @TopicName = topicname
          @PartitionCount = partitioncount
          @Tags = tags
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
          @StorageType = storagetype
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

      # DeleteAlarmNotice请求参数结构体
      class DeleteAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param AlarmNoticeId: 告警通知模板
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
        # @param Filters: <br><li> name

        # 按照【告警通知模板名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> alarmNoticeId

        # 按照【告警通知模板ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> uid

        # 按照【接收用户ID】进行过滤。

        # 类型：String

        # 必选：否

        # <br><li> groupId

        # 按照【用户组ID】进行过滤。

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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :Status, :Rule, :ModifyTime, :RequestId
        
        def initialize(topicid=nil, status=nil, rule=nil, modifytime=nil, requestid=nil)
          @TopicId = topicid
          @Status = status
          @Rule = rule
          @ModifyTime = modifytime
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogContext请求参数结构体
      class DescribeLogContextRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 要查询的日志主题ID
        # @type TopicId: String
        # @param BTime: 日志时间,  格式: YYYY-mm-dd HH:MM:SS
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
        # @param LatestAgentVersion: 当前用户可用最新的Loglistener版本
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

      # DescribeTopics请求参数结构体
      class DescribeTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <br><li> topicName

        # 按照【日志主题名称】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> topicId

        # 按照【日志主题ID】进行过滤。
        # 类型：String

        # 必选：否

        # <br><li> logsetId

        # 按照【日志集ID】进行过滤，可通过调用DescribeLogsets查询已创建的日志集列表或登录控制台进行查看；也可以调用CreateLogset创建新的日志集。

        # 类型：String

        # 必选：否

        # <br><li> tagKey

        # 按照【标签键】进行过滤。

        # 类型：String

        # 必选：否

        # <br><li> tag:tagKey

        # 按照【标签键值对】进行过滤。tag-key使用具体的标签键进行替换。使用请参考示例2。

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

      # 全文索引配置
      class FullTextInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param Tokenizer: 全文索引的分词符，字符串中每个字符代表一个分词符
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
        # @param Limit: 单次查询返回的日志条数，最大值为100
        # @type Limit: Integer
        # @param Context: 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容
        # @type Context: String
        # @param Sort: 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String

        attr_accessor :From, :To, :Query, :Limit, :Context, :Sort
        
        def initialize(from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil)
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :ColNames, :Results, :AnalysisResults, :RequestId
        
        def initialize(context=nil, listover=nil, analysis=nil, colnames=nil, results=nil, analysisresults=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @ColNames = colnames
          @Results = results
          @AnalysisResults = analysisresults
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
          @RequestId = params['RequestId']
        end
      end

      # 键值或者元字段索引的字段信息
      class KeyValueInfo < TencentCloud::Common::AbstractModel
        # @param Key: 需要配置键值或者元字段索引的字段
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

        attr_accessor :Source, :Filename, :Content, :PkgId, :PkgLogId, :BTime
        
        def initialize(source=nil, filename=nil, content=nil, pkgid=nil, pkglogid=nil, btime=nil)
          @Source = source
          @Filename = filename
          @Content = content
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @BTime = btime
        end

        def deserialize(params)
          @Source = params['Source']
          @Filename = params['Filename']
          @Content = params['Content']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @BTime = params['BTime']
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

        attr_accessor :Time, :TopicId, :TopicName, :Source, :FileName, :PkgId, :PkgLogId, :LogJson
        
        def initialize(time=nil, topicid=nil, topicname=nil, source=nil, filename=nil, pkgid=nil, pkglogid=nil, logjson=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @Source = source
          @FileName = filename
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @LogJson = logjson
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
        # @param AlarmNoticeId: 告警通知模板ID。
        # @type AlarmNoticeId: String
        # @param Name: 告警模板名称。
        # @type Name: String
        # @param Type: 告警模板的类型。可选值：
        # <br><li> Trigger - 告警触发
        # <br><li> Recovery - 告警恢复
        # <br><li> All - 告警触发和告警恢复
        # @type Type: String
        # @param NoticeReceivers: 告警模板接收者信息。
        # @type NoticeReceivers: Array
        # @param WebCallbacks: 告警模板回调信息。
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

        attr_accessor :AlarmId, :Name, :MonitorTime, :Condition, :TriggerCount, :AlarmPeriod, :AlarmNoticeIds, :AlarmTargets, :Status
        
        def initialize(alarmid=nil, name=nil, monitortime=nil, condition=nil, triggercount=nil, alarmperiod=nil, alarmnoticeids=nil, alarmtargets=nil, status=nil)
          @AlarmId = alarmid
          @Name = name
          @MonitorTime = monitortime
          @Condition = condition
          @TriggerCount = triggercount
          @AlarmPeriod = alarmperiod
          @AlarmNoticeIds = alarmnoticeids
          @AlarmTargets = alarmtargets
          @Status = status
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

      # ModifyIndex请求参数结构体
      class ModifyIndexRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Status: 默认不生效
        # @type Status: Boolean
        # @param Rule: 索引规则，Rule和Effective两个必须有一个参数存在
        # @type Rule: :class:`Tencentcloud::Cls.v20201016.models.RuleInfo`

        attr_accessor :TopicId, :Status, :Rule
        
        def initialize(topicid=nil, status=nil, rule=nil)
          @TopicId = topicid
          @Status = status
          @Rule = rule
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Status = params['Status']
          unless params['Rule'].nil?
            @Rule = RuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
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

        attr_accessor :TopicId, :TopicName, :Tags, :Status, :AutoSplit, :MaxSplitPartitions
        
        def initialize(topicid=nil, topicname=nil, tags=nil, status=nil, autosplit=nil, maxsplitpartitions=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Tags = tags
          @Status = status
          @AutoSplit = autosplit
          @MaxSplitPartitions = maxsplitpartitions
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

      # 标签索引配置信息
      class RuleTagInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # @type CaseSensitive: Boolean
        # @param KeyValues: 标签索引配置中的字段信息
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
        # @param TopicId: 要查询的日志主题ID
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为4096
        # @type Query: String
        # @param Limit: 单次查询返回的日志条数，最大值为100
        # @type Limit: Integer
        # @param Context: 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容
        # @type Context: String
        # @param Sort: 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String

        attr_accessor :TopicId, :From, :To, :Query, :Limit, :Context, :Sort
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
        end
      end

      # SearchLog返回参数结构体
      class SearchLogResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :ColNames, :Results, :AnalysisResults, :RequestId
        
        def initialize(context=nil, listover=nil, analysis=nil, colnames=nil, results=nil, analysisresults=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @ColNames = colnames
          @Results = results
          @AnalysisResults = analysisresults
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
          @RequestId = params['RequestId']
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
        # @param Period: 生命周期，单位为天
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

      # 需要开启键值索引的字段的索引描述信息
      class ValueInfo < TencentCloud::Common::AbstractModel
        # @param Type: 字段类型，目前支持的类型有：long、text、double
        # @type Type: String
        # @param Tokenizer: 字段的分词符，只有当字段类型为text时才有意义；输入字符串中的每个字符代表一个分词符
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
        # <br><li> WeCom
        # <br><li> Http
        # @type CallbackType: String
        # @param Method: 回调方法。可选值：
        # <br><li> POST
        # <br><li> PUT
        # 默认值为POST。CallbackType为Http时为必选。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Headers: 请求头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param Body: 请求内容。CallbackType为Http时为必选。
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

