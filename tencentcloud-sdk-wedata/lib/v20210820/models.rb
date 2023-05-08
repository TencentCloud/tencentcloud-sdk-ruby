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
  module Wedata
    module V20210820
      # 告警事件详情
      class AlarmEventInfo < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警ID
        # @type AlarmId: String
        # @param AlarmTime: 告警时间
        # @type AlarmTime: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RegularName: 规则名称
        # @type RegularName: String
        # @param AlarmLevel: 告警级别,0表示普通，1表示重要，2表示紧急
        # @type AlarmLevel: Integer
        # @param AlarmWay: 告警方式,多个用逗号隔开（1:邮件，2:短信，3:微信，4:语音，5:代表企业微信，6:http）
        # @type AlarmWay: Integer
        # @param AlarmRecipientId: 告警接收人Id，多个用逗号隔开
        # @type AlarmRecipientId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param AlarmIndicator: 告警指标,0表示任务失败，1表示任务运行超时，2表示任务停止，3表示任务暂停
        # @type AlarmIndicator: Integer
        # @param AlarmIndicatorDesc: 告警指标描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicatorDesc: String
        # @param TriggerType: 指标阈值，1表示离线任务第一次运行失败，2表示离线任务所有重试完成后失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Integer
        # @param EstimatedTime: 预计的超时时间，分钟级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EstimatedTime: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param IsSendSuccess: 0：部分成功，1：全部成功，2：全部失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSendSuccess: Integer
        # @param MessageId: 消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: String
        # @param Operator: 阈值计算算子，1 : 大于 2 ：小于
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: Integer

        attr_accessor :AlarmId, :AlarmTime, :TaskId, :RegularName, :AlarmLevel, :AlarmWay, :AlarmRecipientId, :ProjectId, :AlarmIndicator, :AlarmIndicatorDesc, :TriggerType, :EstimatedTime, :InstanceId, :TaskName, :IsSendSuccess, :MessageId, :Operator
        
        def initialize(alarmid=nil, alarmtime=nil, taskid=nil, regularname=nil, alarmlevel=nil, alarmway=nil, alarmrecipientid=nil, projectid=nil, alarmindicator=nil, alarmindicatordesc=nil, triggertype=nil, estimatedtime=nil, instanceid=nil, taskname=nil, issendsuccess=nil, messageid=nil, operator=nil)
          @AlarmId = alarmid
          @AlarmTime = alarmtime
          @TaskId = taskid
          @RegularName = regularname
          @AlarmLevel = alarmlevel
          @AlarmWay = alarmway
          @AlarmRecipientId = alarmrecipientid
          @ProjectId = projectid
          @AlarmIndicator = alarmindicator
          @AlarmIndicatorDesc = alarmindicatordesc
          @TriggerType = triggertype
          @EstimatedTime = estimatedtime
          @InstanceId = instanceid
          @TaskName = taskname
          @IsSendSuccess = issendsuccess
          @MessageId = messageid
          @Operator = operator
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @AlarmTime = params['AlarmTime']
          @TaskId = params['TaskId']
          @RegularName = params['RegularName']
          @AlarmLevel = params['AlarmLevel']
          @AlarmWay = params['AlarmWay']
          @AlarmRecipientId = params['AlarmRecipientId']
          @ProjectId = params['ProjectId']
          @AlarmIndicator = params['AlarmIndicator']
          @AlarmIndicatorDesc = params['AlarmIndicatorDesc']
          @TriggerType = params['TriggerType']
          @EstimatedTime = params['EstimatedTime']
          @InstanceId = params['InstanceId']
          @TaskName = params['TaskName']
          @IsSendSuccess = params['IsSendSuccess']
          @MessageId = params['MessageId']
          @Operator = params['Operator']
        end
      end

      # 告警指标
      class AlarmIndicatorInfo < TencentCloud::Common::AbstractModel
        # @param Id: 指标id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param AlarmIndicator: 告警指标,0表示任务失败，1表示任务运行超时，2表示任务停止，3表示任务暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicator: Integer
        # @param AlarmIndicatorDesc: 告警指标描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicatorDesc: String
        # @param TriggerType: 指标阈值，1表示离线任务第一次运行失败，2表示离线任务所有重试完成后失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Integer
        # @param EstimatedTime: 预计的超时时间，分钟级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EstimatedTime: Integer
        # @param Operator: 实时任务告警需要的参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: Integer
        # @param AlarmIndicatorUnit: 告警指标阈值单位：ms(毫秒)、s(秒)、min(分钟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicatorUnit: String

        attr_accessor :Id, :AlarmIndicator, :AlarmIndicatorDesc, :TriggerType, :EstimatedTime, :Operator, :AlarmIndicatorUnit
        
        def initialize(id=nil, alarmindicator=nil, alarmindicatordesc=nil, triggertype=nil, estimatedtime=nil, operator=nil, alarmindicatorunit=nil)
          @Id = id
          @AlarmIndicator = alarmindicator
          @AlarmIndicatorDesc = alarmindicatordesc
          @TriggerType = triggertype
          @EstimatedTime = estimatedtime
          @Operator = operator
          @AlarmIndicatorUnit = alarmindicatorunit
        end

        def deserialize(params)
          @Id = params['Id']
          @AlarmIndicator = params['AlarmIndicator']
          @AlarmIndicatorDesc = params['AlarmIndicatorDesc']
          @TriggerType = params['TriggerType']
          @EstimatedTime = params['EstimatedTime']
          @Operator = params['Operator']
          @AlarmIndicatorUnit = params['AlarmIndicatorUnit']
        end
      end

      # 任务告警信息
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param TaskIds: 关联任务id
        # @type TaskIds: String
        # @param AlarmType: 告警类别；failure表示失败告警；overtime表示超时告警
        # @type AlarmType: String
        # @param AlarmWay: 告警方式；SMS表示短信；Email表示邮件；HTTP 表示接口方式；Wechat表示微信方式
        # @type AlarmWay: String
        # @param AlarmRecipient: 告警接收人，多个告警接收人以;分割
        # @type AlarmRecipient: String
        # @param AlarmRecipientId: 告警接收人id，多个告警接收人id以;分割
        # @type AlarmRecipientId: String
        # @param Hours: 预计运行的小时，取值范围0-23
        # @type Hours: Integer
        # @param Minutes: 预计运行分钟，取值范围0-59
        # @type Minutes: Integer
        # @param TriggerType: 告警出发时机；1表示第一次运行失败；2表示所有重试完成后失败；
        # @type TriggerType: Integer
        # @param AlarmId: 告警信息id
        # @type AlarmId: String
        # @param Status: 告警状态设置；1表示可用；0表示不可用，默认可用
        # @type Status: Integer

        attr_accessor :TaskIds, :AlarmType, :AlarmWay, :AlarmRecipient, :AlarmRecipientId, :Hours, :Minutes, :TriggerType, :AlarmId, :Status
        
        def initialize(taskids=nil, alarmtype=nil, alarmway=nil, alarmrecipient=nil, alarmrecipientid=nil, hours=nil, minutes=nil, triggertype=nil, alarmid=nil, status=nil)
          @TaskIds = taskids
          @AlarmType = alarmtype
          @AlarmWay = alarmway
          @AlarmRecipient = alarmrecipient
          @AlarmRecipientId = alarmrecipientid
          @Hours = hours
          @Minutes = minutes
          @TriggerType = triggertype
          @AlarmId = alarmid
          @Status = status
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @AlarmType = params['AlarmType']
          @AlarmWay = params['AlarmWay']
          @AlarmRecipient = params['AlarmRecipient']
          @AlarmRecipientId = params['AlarmRecipientId']
          @Hours = params['Hours']
          @Minutes = params['Minutes']
          @TriggerType = params['TriggerType']
          @AlarmId = params['AlarmId']
          @Status = params['Status']
        end
      end

      # 告警接收人详情
      class AlarmReceiverInfo < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警ID
        # @type AlarmId: String
        # @param AlarmReceiver: 告警接收人ID
        # @type AlarmReceiver: String
        # @param Email: 邮件，0：未设置，1：成功，2：失败
        # @type Email: Integer
        # @param Sms: 短信，0：未设置，1：成功，2：失败
        # @type Sms: Integer
        # @param Wechat: 微信，0：未设置，1：成功，2：失败
        # @type Wechat: Integer
        # @param Voice: 电话，0：未设置，1：成功，2：失败
        # @type Voice: Integer
        # @param Wecom: 企业微信，0：未设置，1：成功，2：失败
        # @type Wecom: Integer
        # @param Http: http，0：未设置，1：成功，2：失败
        # @type Http: Integer
        # @param WecomGroup: 企业微信群，0：未设置，1：成功，2：失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WecomGroup: Integer

        attr_accessor :AlarmId, :AlarmReceiver, :Email, :Sms, :Wechat, :Voice, :Wecom, :Http, :WecomGroup
        
        def initialize(alarmid=nil, alarmreceiver=nil, email=nil, sms=nil, wechat=nil, voice=nil, wecom=nil, http=nil, wecomgroup=nil)
          @AlarmId = alarmid
          @AlarmReceiver = alarmreceiver
          @Email = email
          @Sms = sms
          @Wechat = wechat
          @Voice = voice
          @Wecom = wecom
          @Http = http
          @WecomGroup = wecomgroup
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @AlarmReceiver = params['AlarmReceiver']
          @Email = params['Email']
          @Sms = params['Sms']
          @Wechat = params['Wechat']
          @Voice = params['Voice']
          @Wecom = params['Wecom']
          @Http = params['Http']
          @WecomGroup = params['WecomGroup']
        end
      end

      # BatchCreateIntegrationTaskAlarms请求参数结构体
      class BatchCreateIntegrationTaskAlarmsRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskAlarmInfo: 告警配置信息
        # @type TaskAlarmInfo: :class:`Tencentcloud::Wedata.v20210820.models.TaskAlarmInfo`
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskAlarmInfo, :ProjectId
        
        def initialize(taskids=nil, taskalarminfo=nil, projectid=nil)
          @TaskIds = taskids
          @TaskAlarmInfo = taskalarminfo
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          unless params['TaskAlarmInfo'].nil?
            @TaskAlarmInfo = TaskAlarmInfo.new
            @TaskAlarmInfo.deserialize(params['TaskAlarmInfo'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # BatchCreateIntegrationTaskAlarms返回参数结构体
      class BatchCreateIntegrationTaskAlarmsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchDeleteIntegrationTasks请求参数结构体
      class BatchDeleteIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchDeleteIntegrationTasks返回参数结构体
      class BatchDeleteIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchDeleteTasksNew请求参数结构体
      class BatchDeleteTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 批量删除的任务TaskId
        # @type TaskIdList: Array
        # @param DeleteMode: true : 删除后下游任务可正常运行
        # false：删除后下游任务不可运行
        # @type DeleteMode: Boolean
        # @param EnableNotify: true：通知下游任务责任人
        # false:  不通知下游任务责任人
        # @type EnableNotify: Boolean
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :DeleteMode, :EnableNotify, :ProjectId
        
        def initialize(taskidlist=nil, deletemode=nil, enablenotify=nil, projectid=nil)
          @TaskIdList = taskidlist
          @DeleteMode = deletemode
          @EnableNotify = enablenotify
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @DeleteMode = params['DeleteMode']
          @EnableNotify = params['EnableNotify']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchDeleteTasksNew返回参数结构体
      class BatchDeleteTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchForceSuccessIntegrationTaskInstances请求参数结构体
      class BatchForceSuccessIntegrationTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息
        # @type Instances: Array
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :Instances, :ProjectId
        
        def initialize(instances=nil, projectid=nil)
          @Instances = instances
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              schedulertaskinstanceinfo_tmp = SchedulerTaskInstanceInfo.new
              schedulertaskinstanceinfo_tmp.deserialize(i)
              @Instances << schedulertaskinstanceinfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # BatchForceSuccessIntegrationTaskInstances返回参数结构体
      class BatchForceSuccessIntegrationTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchKillIntegrationTaskInstances请求参数结构体
      class BatchKillIntegrationTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息
        # @type Instances: Array
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :Instances, :ProjectId
        
        def initialize(instances=nil, projectid=nil)
          @Instances = instances
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              schedulertaskinstanceinfo_tmp = SchedulerTaskInstanceInfo.new
              schedulertaskinstanceinfo_tmp.deserialize(i)
              @Instances << schedulertaskinstanceinfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # BatchKillIntegrationTaskInstances返回参数结构体
      class BatchKillIntegrationTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchMakeUpIntegrationTasks请求参数结构体
      class BatchMakeUpIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param StartTime: 补数据开始时间
        # @type StartTime: String
        # @param EndTime: 补数据结束时间
        # @type EndTime: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :StartTime, :EndTime, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, starttime=nil, endtime=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @StartTime = starttime
          @EndTime = endtime
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchMakeUpIntegrationTasks返回参数结构体
      class BatchMakeUpIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyOwnersNew请求参数结构体
      class BatchModifyOwnersNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 需要更新责任人的TaskId数组
        # @type TaskIdList: Array
        # @param Owners: 需要更新的责任人
        # @type Owners: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :Owners, :ProjectId
        
        def initialize(taskidlist=nil, owners=nil, projectid=nil)
          @TaskIdList = taskidlist
          @Owners = owners
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @Owners = params['Owners']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchModifyOwnersNew返回参数结构体
      class BatchModifyOwnersNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量操作的结果返回
      class BatchOperateResult < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 批量操作成功数
        # @type SuccessCount: Integer
        # @param FailedCount: 批量操作失败数
        # @type FailedCount: Integer
        # @param TotalCount: 批量操作的总数
        # @type TotalCount: Integer

        attr_accessor :SuccessCount, :FailedCount, :TotalCount
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
        end
      end

      # BatchRerunIntegrationTaskInstances请求参数结构体
      class BatchRerunIntegrationTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息
        # @type Instances: Array
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :Instances, :ProjectId
        
        def initialize(instances=nil, projectid=nil)
          @Instances = instances
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              schedulertaskinstanceinfo_tmp = SchedulerTaskInstanceInfo.new
              schedulertaskinstanceinfo_tmp.deserialize(i)
              @Instances << schedulertaskinstanceinfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # BatchRerunIntegrationTaskInstances返回参数结构体
      class BatchRerunIntegrationTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 批量操作结果
      class BatchResult < TencentCloud::Common::AbstractModel
        # @param Running: 正在运行的任务数
        # @type Running: Integer
        # @param Success: 执行成功的任务数
        # @type Success: Integer
        # @param Failed: 执行失败的任务数
        # @type Failed: Integer
        # @param Total: 总任务数
        # @type Total: Integer

        attr_accessor :Running, :Success, :Failed, :Total
        
        def initialize(running=nil, success=nil, failed=nil, total=nil)
          @Running = running
          @Success = success
          @Failed = failed
          @Total = total
        end

        def deserialize(params)
          @Running = params['Running']
          @Success = params['Success']
          @Failed = params['Failed']
          @Total = params['Total']
        end
      end

      # BatchResumeIntegrationTasks请求参数结构体
      class BatchResumeIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchResumeIntegrationTasks返回参数结构体
      class BatchResumeIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 操作结果
      class BatchReturn < TencentCloud::Common::AbstractModel
        # @param Result: 执行结果
        # @type Result: Boolean
        # @param ErrorDesc: 执行情况备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String
        # @param ErrorId: 执行情况id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String

        attr_accessor :Result, :ErrorDesc, :ErrorId
        
        def initialize(result=nil, errordesc=nil, errorid=nil)
          @Result = result
          @ErrorDesc = errordesc
          @ErrorId = errorid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorDesc = params['ErrorDesc']
          @ErrorId = params['ErrorId']
        end
      end

      # BatchStartIntegrationTasks请求参数结构体
      class BatchStartIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchStartIntegrationTasks返回参数结构体
      class BatchStartIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchStopIntegrationTasks请求参数结构体
      class BatchStopIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchStopIntegrationTasks返回参数结构体
      class BatchStopIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchStopTasksNew请求参数结构体
      class BatchStopTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 批量停止任务的TaskId
        # @type TaskIdList: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :ProjectId
        
        def initialize(taskidlist=nil, projectid=nil)
          @TaskIdList = taskidlist
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchStopTasksNew返回参数结构体
      class BatchStopTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchSuspendIntegrationTasks请求参数结构体
      class BatchSuspendIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :TaskType, :ProjectId
        
        def initialize(taskids=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchSuspendIntegrationTasks返回参数结构体
      class BatchSuspendIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # BatchUpdateIntegrationTasks请求参数结构体
      class BatchUpdateIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务id
        # @type TaskIds: Array
        # @param Incharge: 责任人（多个责任人用小写分号隔开；离线任务传入的是账号名，实时任务传入的是账号id）
        # @type Incharge: String
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskIds, :Incharge, :TaskType, :ProjectId
        
        def initialize(taskids=nil, incharge=nil, tasktype=nil, projectid=nil)
          @TaskIds = taskids
          @Incharge = incharge
          @TaskType = tasktype
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @Incharge = params['Incharge']
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchUpdateIntegrationTasks返回参数结构体
      class BatchUpdateIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 操作成功的任务数
        # @type SuccessCount: Integer
        # @param FailedCount: 操作失败的任务数
        # @type FailedCount: Integer
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :RequestId
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil, requestid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 实时任务同步速度 字节/s
      class BytesSpeed < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Values: 速度值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :NodeType, :NodeName, :Values
        
        def initialize(nodetype=nil, nodename=nil, values=nil)
          @NodeType = nodetype
          @NodeName = nodename
          @Values = values
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              speedvalue_tmp = SpeedValue.new
              speedvalue_tmp.deserialize(i)
              @Values << speedvalue_tmp
            end
          end
        end
      end

      # 画布所需的信息
      class CanvasInfo < TencentCloud::Common::AbstractModel
        # @param TasksList: 画布任务信息
        # @type TasksList: Array
        # @param LinksList: 画布任务链接信息
        # @type LinksList: Array

        attr_accessor :TasksList, :LinksList
        
        def initialize(taskslist=nil, linkslist=nil)
          @TasksList = taskslist
          @LinksList = linkslist
        end

        def deserialize(params)
          unless params['TasksList'].nil?
            @TasksList = []
            params['TasksList'].each do |i|
              taskcanvasinfo_tmp = TaskCanvasInfo.new
              taskcanvasinfo_tmp.deserialize(i)
              @TasksList << taskcanvasinfo_tmp
            end
          end
          unless params['LinksList'].nil?
            @LinksList = []
            params['LinksList'].each do |i|
              tasklinkinfo_tmp = TaskLinkInfo.new
              tasklinkinfo_tmp.deserialize(i)
              @LinksList << tasklinkinfo_tmp
            end
          end
        end
      end

      # CheckAlarmRegularNameExist请求参数结构体
      class CheckAlarmRegularNameExistRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目名称
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param AlarmRegularName: 规则名称
        # @type AlarmRegularName: String
        # @param Id: 主键ID
        # @type Id: String

        attr_accessor :ProjectId, :TaskId, :AlarmRegularName, :Id
        
        def initialize(projectid=nil, taskid=nil, alarmregularname=nil, id=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @AlarmRegularName = alarmregularname
          @Id = id
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @AlarmRegularName = params['AlarmRegularName']
          @Id = params['Id']
        end
      end

      # CheckAlarmRegularNameExist返回参数结构体
      class CheckAlarmRegularNameExistResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否重名
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CheckDuplicateRuleName请求参数结构体
      class CheckDuplicateRuleNameRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param RuleGroupId: 规则组Id
        # @type RuleGroupId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param RuleId: 规则Id
        # @type RuleId: Integer

        attr_accessor :ProjectId, :RuleGroupId, :Name, :RuleId
        
        def initialize(projectid=nil, rulegroupid=nil, name=nil, ruleid=nil)
          @ProjectId = projectid
          @RuleGroupId = rulegroupid
          @Name = name
          @RuleId = ruleid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupId = params['RuleGroupId']
          @Name = params['Name']
          @RuleId = params['RuleId']
        end
      end

      # CheckDuplicateRuleName返回参数结构体
      class CheckDuplicateRuleNameResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则名称是否重复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CheckDuplicateTemplateName请求参数结构体
      class CheckDuplicateTemplateNameRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 规则模板ID
        # @type TemplateId: Integer
        # @param Name: 模板名称
        # @type Name: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TemplateId, :Name, :ProjectId
        
        def initialize(templateid=nil, name=nil, projectid=nil)
          @TemplateId = templateid
          @Name = name
          @ProjectId = projectid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
        end
      end

      # CheckDuplicateTemplateName返回参数结构体
      class CheckDuplicateTemplateNameResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否重名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CheckIntegrationNodeNameExists请求参数结构体
      class CheckIntegrationNodeNameExistsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Name: 节点名称
        # @type Name: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Id: 节点ID
        # @type Id: Integer

        attr_accessor :TaskId, :Name, :ProjectId, :Id
        
        def initialize(taskid=nil, name=nil, projectid=nil, id=nil)
          @TaskId = taskid
          @Name = name
          @ProjectId = projectid
          @Id = id
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @Id = params['Id']
        end
      end

      # CheckIntegrationNodeNameExists返回参数结构体
      class CheckIntegrationNodeNameExistsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回true代表存在，返回false代表不存在
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CheckIntegrationTaskNameExists请求参数结构体
      class CheckIntegrationTaskNameExistsRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param SyncType: 同步类型1.单表同步，2.解决方案
        # @type SyncType: Integer

        attr_accessor :TaskName, :ProjectId, :TaskId, :SyncType
        
        def initialize(taskname=nil, projectid=nil, taskid=nil, synctype=nil)
          @TaskName = taskname
          @ProjectId = projectid
          @TaskId = taskid
          @SyncType = synctype
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @SyncType = params['SyncType']
        end
      end

      # CheckIntegrationTaskNameExists返回参数结构体
      class CheckIntegrationTaskNameExistsResponse < TencentCloud::Common::AbstractModel
        # @param Data: true表示存在，false表示不存在
        # @type Data: Boolean
        # @param ExistsType: 任务名重复类型（0:未重复, 1:开发态重复, 2:生产态重复）
        # @type ExistsType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ExistsType, :RequestId
        
        def initialize(data=nil, existstype=nil, requestid=nil)
          @Data = data
          @ExistsType = existstype
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @ExistsType = params['ExistsType']
          @RequestId = params['RequestId']
        end
      end

      # CheckTaskNameExist请求参数结构体
      class CheckTaskNameExistRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id/工作空间id
        # @type ProjectId: String
        # @param TypeId: 任务类型（跟调度传参保持一致27）
        # @type TypeId: Integer
        # @param TaskName: 任务名
        # @type TaskName: String

        attr_accessor :ProjectId, :TypeId, :TaskName
        
        def initialize(projectid=nil, typeid=nil, taskname=nil)
          @ProjectId = projectid
          @TypeId = typeid
          @TaskName = taskname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TypeId = params['TypeId']
          @TaskName = params['TaskName']
        end
      end

      # CheckTaskNameExist返回参数结构体
      class CheckTaskNameExistResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CommitExportTask请求参数结构体
      class CommitExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleExecId: 规则执行Id
        # @type RuleExecId: Integer
        # @param ExportType: 导出类型(1.全部,2.触发行,3.通过行)
        # @type ExportType: Integer
        # @param ExecutorGroupId: 执行资源组id
        # @type ExecutorGroupId: String
        # @param QueueName: 计算资源队列
        # @type QueueName: String

        attr_accessor :ProjectId, :RuleExecId, :ExportType, :ExecutorGroupId, :QueueName
        
        def initialize(projectid=nil, ruleexecid=nil, exporttype=nil, executorgroupid=nil, queuename=nil)
          @ProjectId = projectid
          @RuleExecId = ruleexecid
          @ExportType = exporttype
          @ExecutorGroupId = executorgroupid
          @QueueName = queuename
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleExecId = params['RuleExecId']
          @ExportType = params['ExportType']
          @ExecutorGroupId = params['ExecutorGroupId']
          @QueueName = params['QueueName']
        end
      end

      # CommitExportTask返回参数结构体
      class CommitExportTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 提交结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CommitIntegrationTask请求参数结构体
      class CommitIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CommitType: 0.仅提交，1.立即启动，2.停止线上作业，丢弃作业状态数据，重新启动运行，3.暂停线上作业，保留作业状态数据，继续运行，4.保留作业状态数据，继续运行
        # @type CommitType: Integer
        # @param TaskType: 实时任务 201   离线任务 202  默认实时任务
        # @type TaskType: Integer

        attr_accessor :TaskId, :ProjectId, :CommitType, :TaskType
        
        def initialize(taskid=nil, projectid=nil, committype=nil, tasktype=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @CommitType = committype
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @CommitType = params['CommitType']
          @TaskType = params['TaskType']
        end
      end

      # CommitIntegrationTask返回参数结构体
      class CommitIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CommitRuleGroupExecResult请求参数结构体
      class CommitRuleGroupExecResultRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: preject id
        # @type ProjectId: String
        # @param RuleGroupExecId: rule group exec id
        # @type RuleGroupExecId: Integer
        # @param RuleGroupState: group exec state
        # @type RuleGroupState: String
        # @param RuleExecResults: runner rule exec result list
        # @type RuleExecResults: Array

        attr_accessor :ProjectId, :RuleGroupExecId, :RuleGroupState, :RuleExecResults
        
        def initialize(projectid=nil, rulegroupexecid=nil, rulegroupstate=nil, ruleexecresults=nil)
          @ProjectId = projectid
          @RuleGroupExecId = rulegroupexecid
          @RuleGroupState = rulegroupstate
          @RuleExecResults = ruleexecresults
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupExecId = params['RuleGroupExecId']
          @RuleGroupState = params['RuleGroupState']
          unless params['RuleExecResults'].nil?
            @RuleExecResults = []
            params['RuleExecResults'].each do |i|
              runnerruleexecresult_tmp = RunnerRuleExecResult.new
              runnerruleexecresult_tmp.deserialize(i)
              @RuleExecResults << runnerruleexecresult_tmp
            end
          end
        end
      end

      # CommitRuleGroupExecResult返回参数结构体
      class CommitRuleGroupExecResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CommitRuleGroupTask请求参数结构体
      class CommitRuleGroupTaskRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param TriggerType: 触发类型 1.手动触发 2.调度事中触发 3.周期调度触发
        # @type TriggerType: Integer
        # @param ExecRuleConfig: 规则配置列表
        # @type ExecRuleConfig: Array
        # @param ExecConfig: 执行配置
        # @type ExecConfig: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecConfig`
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleGroupId, :TriggerType, :ExecRuleConfig, :ExecConfig, :ProjectId
        
        def initialize(rulegroupid=nil, triggertype=nil, execruleconfig=nil, execconfig=nil, projectid=nil)
          @RuleGroupId = rulegroupid
          @TriggerType = triggertype
          @ExecRuleConfig = execruleconfig
          @ExecConfig = execconfig
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @TriggerType = params['TriggerType']
          unless params['ExecRuleConfig'].nil?
            @ExecRuleConfig = []
            params['ExecRuleConfig'].each do |i|
              ruleconfig_tmp = RuleConfig.new
              ruleconfig_tmp.deserialize(i)
              @ExecRuleConfig << ruleconfig_tmp
            end
          end
          unless params['ExecConfig'].nil?
            @ExecConfig = RuleExecConfig.new
            @ExecConfig.deserialize(params['ExecConfig'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # CommitRuleGroupTask返回参数结构体
      class CommitRuleGroupTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组执行id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupExecResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupExecResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 内容详情
      class CommonContent < TencentCloud::Common::AbstractModel
        # @param Content: 详情内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Content
        
        def initialize(content=nil)
          @Content = content
        end

        def deserialize(params)
          @Content = params['Content']
        end
      end

      # Id包装对象
      class CommonId < TencentCloud::Common::AbstractModel
        # @param Id: Id值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 质量检查对比结果
      class CompareResult < TencentCloud::Common::AbstractModel
        # @param Items: 对比结果项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalRows: 检测总行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRows: Integer
        # @param PassRows: 检测通过行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassRows: Integer
        # @param TriggerRows: 检测不通过行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerRows: Integer

        attr_accessor :Items, :TotalRows, :PassRows, :TriggerRows
        
        def initialize(items=nil, totalrows=nil, passrows=nil, triggerrows=nil)
          @Items = items
          @TotalRows = totalrows
          @PassRows = passrows
          @TriggerRows = triggerrows
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              compareresultitem_tmp = CompareResultItem.new
              compareresultitem_tmp.deserialize(i)
              @Items << compareresultitem_tmp
            end
          end
          @TotalRows = params['TotalRows']
          @PassRows = params['PassRows']
          @TriggerRows = params['TriggerRows']
        end
      end

      # 对比结果项
      class CompareResultItem < TencentCloud::Common::AbstractModel
        # @param FixResult: 对比结果， 1为真 2为假
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixResult: Integer
        # @param ResultValue: 质量sql执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultValue: String
        # @param Values: 阈值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param Operator: 比较操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param CompareType: 比较类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareType: Integer
        # @param ValueComputeType: 值比较类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueComputeType: Integer

        attr_accessor :FixResult, :ResultValue, :Values, :Operator, :CompareType, :ValueComputeType
        
        def initialize(fixresult=nil, resultvalue=nil, values=nil, operator=nil, comparetype=nil, valuecomputetype=nil)
          @FixResult = fixresult
          @ResultValue = resultvalue
          @Values = values
          @Operator = operator
          @CompareType = comparetype
          @ValueComputeType = valuecomputetype
        end

        def deserialize(params)
          @FixResult = params['FixResult']
          @ResultValue = params['ResultValue']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              thresholdvalue_tmp = ThresholdValue.new
              thresholdvalue_tmp.deserialize(i)
              @Values << thresholdvalue_tmp
            end
          end
          @Operator = params['Operator']
          @CompareType = params['CompareType']
          @ValueComputeType = params['ValueComputeType']
        end
      end

      # 对比规则
      class CompareRule < TencentCloud::Common::AbstractModel
        # @param Items: 比较条件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param CycleStep: 周期性模板默认周期，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer

        attr_accessor :Items, :CycleStep
        
        def initialize(items=nil, cyclestep=nil)
          @Items = items
          @CycleStep = cyclestep
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              compareruleitem_tmp = CompareRuleItem.new
              compareruleitem_tmp.deserialize(i)
              @Items << compareruleitem_tmp
            end
          end
          @CycleStep = params['CycleStep']
        end
      end

      # 比较条件
      class CompareRuleItem < TencentCloud::Common::AbstractModel
        # @param CompareType: 比较类型 1.固定值  2.波动值  3.数值范围比较  4.枚举范围比较  5.不用比较
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareType: Integer
        # @param Operator: 比较操作类型 <  <=  ==  =>  >
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param ValueComputeType: 质量统计值类型 1.绝对值  2.上升 3. 下降  4._C包含   5. N_C不包含
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueComputeType: Integer
        # @param ValueList: 比较阈值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueList: Array

        attr_accessor :CompareType, :Operator, :ValueComputeType, :ValueList
        
        def initialize(comparetype=nil, operator=nil, valuecomputetype=nil, valuelist=nil)
          @CompareType = comparetype
          @Operator = operator
          @ValueComputeType = valuecomputetype
          @ValueList = valuelist
        end

        def deserialize(params)
          @CompareType = params['CompareType']
          @Operator = params['Operator']
          @ValueComputeType = params['ValueComputeType']
          unless params['ValueList'].nil?
            @ValueList = []
            params['ValueList'].each do |i|
              thresholdvalue_tmp = ThresholdValue.new
              thresholdvalue_tmp.deserialize(i)
              @ValueList << thresholdvalue_tmp
            end
          end
        end
      end

      # CreateCustomFunction请求参数结构体
      class CreateCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型：HIVE、SPARK
        # @type Type: String
        # @param Kind: 分类：窗口函数、聚合函数、日期函数......
        # @type Kind: String
        # @param Name: 函数名称
        # @type Name: String
        # @param ClusterIdentifier: 集群实例引擎 ID
        # @type ClusterIdentifier: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Type, :Kind, :Name, :ClusterIdentifier, :DbName, :ProjectId
        
        def initialize(type=nil, kind=nil, name=nil, clusteridentifier=nil, dbname=nil, projectid=nil)
          @Type = type
          @Kind = kind
          @Name = name
          @ClusterIdentifier = clusteridentifier
          @DbName = dbname
          @ProjectId = projectid
        end

        def deserialize(params)
          @Type = params['Type']
          @Kind = params['Kind']
          @Name = params['Name']
          @ClusterIdentifier = params['ClusterIdentifier']
          @DbName = params['DbName']
          @ProjectId = params['ProjectId']
        end
      end

      # CreateCustomFunction返回参数结构体
      class CreateCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataSource请求参数结构体
      class CreateDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # @type Name: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # @type Category: String
        # @param Type: 数据源类型:枚举值
        # @type Type: String
        # @param OwnerProjectId: 归属项目ID
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 归属项目Name
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 归属项目Name中文
        # @type OwnerProjectIdent: String
        # @param BizParams: 业务侧数据源的配置信息扩展
        # @type BizParams: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # @type Params: String
        # @param Description: 数据源描述信息
        # @type Description: String
        # @param Display: 数据源展示名，为了可视化查看
        # @type Display: String
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # @type DatabaseName: String
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # @type Instance: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # @type Status: Integer
        # @param ClusterId: 数据源所属的业务空间名称
        # @type ClusterId: String
        # @param Collect: 是否采集
        # @type Collect: String
        # @param COSBucket: cos桶信息
        # @type COSBucket: String
        # @param COSRegion: cos region
        # @type COSRegion: String

        attr_accessor :Name, :Category, :Type, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :BizParams, :Params, :Description, :Display, :DatabaseName, :Instance, :Status, :ClusterId, :Collect, :COSBucket, :COSRegion
        
        def initialize(name=nil, category=nil, type=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, bizparams=nil, params=nil, description=nil, display=nil, databasename=nil, instance=nil, status=nil, clusterid=nil, collect=nil, cosbucket=nil, cosregion=nil)
          @Name = name
          @Category = category
          @Type = type
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @BizParams = bizparams
          @Params = params
          @Description = description
          @Display = display
          @DatabaseName = databasename
          @Instance = instance
          @Status = status
          @ClusterId = clusterid
          @Collect = collect
          @COSBucket = cosbucket
          @COSRegion = cosregion
        end

        def deserialize(params)
          @Name = params['Name']
          @Category = params['Category']
          @Type = params['Type']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @BizParams = params['BizParams']
          @Params = params['Params']
          @Description = params['Description']
          @Display = params['Display']
          @DatabaseName = params['DatabaseName']
          @Instance = params['Instance']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @Collect = params['Collect']
          @COSBucket = params['COSBucket']
          @COSRegion = params['COSRegion']
        end
      end

      # CreateDataSource返回参数结构体
      class CreateDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateFolder请求参数结构体
      class CreateFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String

        attr_accessor :ProjectId, :FolderName, :ParentsFolderId
        
        def initialize(projectid=nil, foldername=nil, parentsfolderid=nil)
          @ProjectId = projectid
          @FolderName = foldername
          @ParentsFolderId = parentsfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @ParentsFolderId = params['ParentsFolderId']
        end
      end

      # CreateFolder返回参数结构体
      class CreateFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件夹Id，null则创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateHiveTableByDDL请求参数结构体
      class CreateHiveTableByDDLRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源ID
        # @type DatasourceId: String
        # @param Database: 数据库
        # @type Database: String
        # @param DDLSql: 建hive表ddl
        # @type DDLSql: String
        # @param Privilege: 表权限 ，默认为0:项目共享;1:仅个人与管理员
        # @type Privilege: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Type: 目标表类型(HIVE或GBASE)
        # @type Type: String
        # @param Incharge: 责任人
        # @type Incharge: String

        attr_accessor :DatasourceId, :Database, :DDLSql, :Privilege, :ProjectId, :Type, :Incharge
        
        def initialize(datasourceid=nil, database=nil, ddlsql=nil, privilege=nil, projectid=nil, type=nil, incharge=nil)
          @DatasourceId = datasourceid
          @Database = database
          @DDLSql = ddlsql
          @Privilege = privilege
          @ProjectId = projectid
          @Type = type
          @Incharge = incharge
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @Database = params['Database']
          @DDLSql = params['DDLSql']
          @Privilege = params['Privilege']
          @ProjectId = params['ProjectId']
          @Type = params['Type']
          @Incharge = params['Incharge']
        end
      end

      # CreateHiveTableByDDL返回参数结构体
      class CreateHiveTableByDDLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 表名称
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateHiveTable请求参数结构体
      class CreateHiveTableRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源id
        # @type DatasourceId: String
        # @param Database: 数据库
        # @type Database: String
        # @param DDLSql: 建hive表ddl
        # @type DDLSql: String
        # @param Privilege: 表权限 ，默认为0:项目共享;1:仅个人与管理员
        # @type Privilege: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Incharge: 责任人
        # @type Incharge: String

        attr_accessor :DatasourceId, :Database, :DDLSql, :Privilege, :ProjectId, :Incharge
        
        def initialize(datasourceid=nil, database=nil, ddlsql=nil, privilege=nil, projectid=nil, incharge=nil)
          @DatasourceId = datasourceid
          @Database = database
          @DDLSql = ddlsql
          @Privilege = privilege
          @ProjectId = projectid
          @Incharge = incharge
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @Database = params['Database']
          @DDLSql = params['DDLSql']
          @Privilege = params['Privilege']
          @ProjectId = params['ProjectId']
          @Incharge = params['Incharge']
        end
      end

      # CreateHiveTable返回参数结构体
      class CreateHiveTableResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 建表是否成功
        # @type IsSuccess: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # CreateInLongAgent请求参数结构体
      class CreateInLongAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentType: 采集器类型，1：TKE Agent，2：BOSS SDK，默认：1
        # @type AgentType: Integer
        # @param AgentName: 采集器名称
        # @type AgentName: String
        # @param ExecutorGroupId: 集成资源组id
        # @type ExecutorGroupId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param TkeRegion: TKE集群的地域
        # @type TkeRegion: String
        # @param ClusterId: 当AgentType为1时，必填。当AgentType为2时，不用填
        # @type ClusterId: String

        attr_accessor :AgentType, :AgentName, :ExecutorGroupId, :ProjectId, :TkeRegion, :ClusterId
        
        def initialize(agenttype=nil, agentname=nil, executorgroupid=nil, projectid=nil, tkeregion=nil, clusterid=nil)
          @AgentType = agenttype
          @AgentName = agentname
          @ExecutorGroupId = executorgroupid
          @ProjectId = projectid
          @TkeRegion = tkeregion
          @ClusterId = clusterid
        end

        def deserialize(params)
          @AgentType = params['AgentType']
          @AgentName = params['AgentName']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ProjectId = params['ProjectId']
          @TkeRegion = params['TkeRegion']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateInLongAgent返回参数结构体
      class CreateInLongAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :RequestId
        
        def initialize(agentid=nil, requestid=nil)
          @AgentId = agentid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationNode请求参数结构体
      class CreateIntegrationNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeInfo: 集成节点信息
        # @type NodeInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeInfo`
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型
        # @type TaskType: Integer

        attr_accessor :NodeInfo, :ProjectId, :TaskType
        
        def initialize(nodeinfo=nil, projectid=nil, tasktype=nil)
          @NodeInfo = nodeinfo
          @ProjectId = projectid
          @TaskType = tasktype
        end

        def deserialize(params)
          unless params['NodeInfo'].nil?
            @NodeInfo = IntegrationNodeInfo.new
            @NodeInfo.deserialize(params['NodeInfo'])
          end
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
        end
      end

      # CreateIntegrationNode返回参数结构体
      class CreateIntegrationNodeResponse < TencentCloud::Common::AbstractModel
        # @param Id: 节点
        # @type Id: String
        # @param TaskId: 当前任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :TaskId, :RequestId
        
        def initialize(id=nil, taskid=nil, requestid=nil)
          @Id = id
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationTask请求参数结构体
      class CreateIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationTaskInfo`
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskInfo, :ProjectId
        
        def initialize(taskinfo=nil, projectid=nil)
          @TaskInfo = taskinfo
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = IntegrationTaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # CreateIntegrationTask返回参数结构体
      class CreateIntegrationTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateOfflineTask请求参数结构体
      class CreateOfflineTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目/工作
        # @type ProjectId: String
        # @param CycleStep: 1
        # @type CycleStep: Integer
        # @param DelayTime: 0
        # @type DelayTime: Integer
        # @param EndTime: 2099-12-31 00:00:00
        # @type EndTime: String
        # @param Notes: 备注
        # @type Notes: String
        # @param StartTime: 当前日期
        # @type StartTime: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TypeId: 跟之前调用调度接口保持一致27
        # @type TypeId: Integer
        # @param TaskAction: 默认 ""
        # @type TaskAction: String
        # @param TaskMode: 区分画布和表单
        # @type TaskMode: String

        attr_accessor :ProjectId, :CycleStep, :DelayTime, :EndTime, :Notes, :StartTime, :TaskName, :TypeId, :TaskAction, :TaskMode
        
        def initialize(projectid=nil, cyclestep=nil, delaytime=nil, endtime=nil, notes=nil, starttime=nil, taskname=nil, typeid=nil, taskaction=nil, taskmode=nil)
          @ProjectId = projectid
          @CycleStep = cyclestep
          @DelayTime = delaytime
          @EndTime = endtime
          @Notes = notes
          @StartTime = starttime
          @TaskName = taskname
          @TypeId = typeid
          @TaskAction = taskaction
          @TaskMode = taskmode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CycleStep = params['CycleStep']
          @DelayTime = params['DelayTime']
          @EndTime = params['EndTime']
          @Notes = params['Notes']
          @StartTime = params['StartTime']
          @TaskName = params['TaskName']
          @TypeId = params['TypeId']
          @TaskAction = params['TaskAction']
          @TaskMode = params['TaskMode']
        end
      end

      # CreateOfflineTask返回参数结构体
      class CreateOfflineTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Data: 结果
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Data, :RequestId
        
        def initialize(taskid=nil, data=nil, requestid=nil)
          @TaskId = taskid
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrUpdateResource请求参数结构体
      class CreateOrUpdateResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Files: 文件名
        # @type Files: Array
        # @param FilePath: 文件所属路径，资源管理根路径为 /datastudio/resouce
        # @type FilePath: String
        # @param CosBucketName: cos存储桶名字
        # @type CosBucketName: String
        # @param CosRegion: cos所属地域
        # @type CosRegion: String
        # @param NewFile: 是否为新文件，新增为 true，更新为 false
        # @type NewFile: Boolean
        # @param FilesSize: 文件大小
        # @type FilesSize: Array

        attr_accessor :ProjectId, :Files, :FilePath, :CosBucketName, :CosRegion, :NewFile, :FilesSize
        
        def initialize(projectid=nil, files=nil, filepath=nil, cosbucketname=nil, cosregion=nil, newfile=nil, filessize=nil)
          @ProjectId = projectid
          @Files = files
          @FilePath = filepath
          @CosBucketName = cosbucketname
          @CosRegion = cosregion
          @NewFile = newfile
          @FilesSize = filessize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Files = params['Files']
          @FilePath = params['FilePath']
          @CosBucketName = params['CosBucketName']
          @CosRegion = params['CosRegion']
          @NewFile = params['NewFile']
          @FilesSize = params['FilesSize']
        end
      end

      # CreateOrUpdateResource返回参数结构体
      class CreateOrUpdateResourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应数据
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
              userfiledto_tmp = UserFileDTO.new
              userfiledto_tmp.deserialize(i)
              @Data << userfiledto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateResourcePath请求参数结构体
      class CreateResourcePathRequest < TencentCloud::Common::AbstractModel
        # @param Name: 文件夹名称，如 aaa
        # @type Name: String
        # @param FilePath: 文件夹所属父目录，请注意，根目录为 /datastudio/resource
        # @type FilePath: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Name, :FilePath, :ProjectId
        
        def initialize(name=nil, filepath=nil, projectid=nil)
          @Name = name
          @FilePath = filepath
          @ProjectId = projectid
        end

        def deserialize(params)
          @Name = params['Name']
          @FilePath = params['FilePath']
          @ProjectId = params['ProjectId']
        end
      end

      # CreateResourcePath返回参数结构体
      class CreateResourcePathResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新建成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleGroupId: 规则组Id
        # @type RuleGroupId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param TableId: 数据表ID
        # @type TableId: String
        # @param RuleTemplateId: 规则模板列表
        # @type RuleTemplateId: Integer
        # @param Type: 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        # @type Type: Integer
        # @param QualityDim: 规则所属质量维度（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # @type QualityDim: Integer
        # @param SourceObjectDataTypeName: 源字段详细类型，int、string
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # @type SourceObjectValue: String
        # @param ConditionType: 检测范围 1.全表   2.条件扫描
        # @type ConditionType: Integer
        # @param ConditionExpression: 条件扫描WHERE条件表达式
        # @type ConditionExpression: String
        # @param CustomSql: 自定义SQL
        # @type CustomSql: String
        # @param CompareRule: 报警触发条件
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20210820.models.CompareRule`
        # @param AlarmLevel: 报警触发级别 1.低, 2.中, 3.高
        # @type AlarmLevel: Integer
        # @param Description: 规则描述
        # @type Description: String
        # @param DatasourceId: 数据源Id
        # @type DatasourceId: String
        # @param DatabaseId: 数据库Id
        # @type DatabaseId: String
        # @param TargetDatabaseId: 目标库Id
        # @type TargetDatabaseId: String
        # @param TargetTableId: 目标表Id
        # @type TargetTableId: String
        # @param TargetConditionExpr: 目标过滤条件表达式
        # @type TargetConditionExpr: String
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式
        # @type RelConditionExpr: String
        # @param FieldConfig: 自定义模版sql表达式字段替换参数
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20210820.models.RuleFieldConfig`
        # @param TargetObjectValue: 目标字段名称  CITY
        # @type TargetObjectValue: String

        attr_accessor :ProjectId, :RuleGroupId, :Name, :TableId, :RuleTemplateId, :Type, :QualityDim, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :CompareRule, :AlarmLevel, :Description, :DatasourceId, :DatabaseId, :TargetDatabaseId, :TargetTableId, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :TargetObjectValue
        
        def initialize(projectid=nil, rulegroupid=nil, name=nil, tableid=nil, ruletemplateid=nil, type=nil, qualitydim=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, comparerule=nil, alarmlevel=nil, description=nil, datasourceid=nil, databaseid=nil, targetdatabaseid=nil, targettableid=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, targetobjectvalue=nil)
          @ProjectId = projectid
          @RuleGroupId = rulegroupid
          @Name = name
          @TableId = tableid
          @RuleTemplateId = ruletemplateid
          @Type = type
          @QualityDim = qualitydim
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionType = conditiontype
          @ConditionExpression = conditionexpression
          @CustomSql = customsql
          @CompareRule = comparerule
          @AlarmLevel = alarmlevel
          @Description = description
          @DatasourceId = datasourceid
          @DatabaseId = databaseid
          @TargetDatabaseId = targetdatabaseid
          @TargetTableId = targettableid
          @TargetConditionExpr = targetconditionexpr
          @RelConditionExpr = relconditionexpr
          @FieldConfig = fieldconfig
          @TargetObjectValue = targetobjectvalue
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupId = params['RuleGroupId']
          @Name = params['Name']
          @TableId = params['TableId']
          @RuleTemplateId = params['RuleTemplateId']
          @Type = params['Type']
          @QualityDim = params['QualityDim']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionType = params['ConditionType']
          @ConditionExpression = params['ConditionExpression']
          @CustomSql = params['CustomSql']
          unless params['CompareRule'].nil?
            @CompareRule = CompareRule.new
            @CompareRule.deserialize(params['CompareRule'])
          end
          @AlarmLevel = params['AlarmLevel']
          @Description = params['Description']
          @DatasourceId = params['DatasourceId']
          @DatabaseId = params['DatabaseId']
          @TargetDatabaseId = params['TargetDatabaseId']
          @TargetTableId = params['TargetTableId']
          @TargetConditionExpr = params['TargetConditionExpr']
          @RelConditionExpr = params['RelConditionExpr']
          unless params['FieldConfig'].nil?
            @FieldConfig = RuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @TargetObjectValue = params['TargetObjectValue']
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.Rule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Rule.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRuleTemplate请求参数结构体
      class CreateRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Type: 模版类型  1.系统模版   2.自定义模版
        # @type Type: Integer
        # @param Name: 模版名称
        # @type Name: String
        # @param QualityDim: 质量检测维度 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性
        # @type QualityDim: Integer
        # @param SourceObjectType: 源端数据对象类型 1.常量  2.离线表级   2.离线字段级
        # @type SourceObjectType: Integer
        # @param Description: 模板描述
        # @type Description: String
        # @param SourceEngineTypes: 源端对应的引擎类型
        # @type SourceEngineTypes: Array
        # @param MultiSourceFlag: 是否关联其它库表
        # @type MultiSourceFlag: Boolean
        # @param SqlExpression: SQL 表达式
        # @type SqlExpression: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WhereFlag: 是否添加where参数
        # @type WhereFlag: Boolean

        attr_accessor :Type, :Name, :QualityDim, :SourceObjectType, :Description, :SourceEngineTypes, :MultiSourceFlag, :SqlExpression, :ProjectId, :WhereFlag
        
        def initialize(type=nil, name=nil, qualitydim=nil, sourceobjecttype=nil, description=nil, sourceenginetypes=nil, multisourceflag=nil, sqlexpression=nil, projectid=nil, whereflag=nil)
          @Type = type
          @Name = name
          @QualityDim = qualitydim
          @SourceObjectType = sourceobjecttype
          @Description = description
          @SourceEngineTypes = sourceenginetypes
          @MultiSourceFlag = multisourceflag
          @SqlExpression = sqlexpression
          @ProjectId = projectid
          @WhereFlag = whereflag
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @QualityDim = params['QualityDim']
          @SourceObjectType = params['SourceObjectType']
          @Description = params['Description']
          @SourceEngineTypes = params['SourceEngineTypes']
          @MultiSourceFlag = params['MultiSourceFlag']
          @SqlExpression = params['SqlExpression']
          @ProjectId = params['ProjectId']
          @WhereFlag = params['WhereFlag']
        end
      end

      # CreateRuleTemplate返回参数结构体
      class CreateRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 模板Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateTaskAlarmRegular请求参数结构体
      class CreateTaskAlarmRegularRequest < TencentCloud::Common::AbstractModel
        # @param TaskAlarmInfo: 告警配置信息
        # @type TaskAlarmInfo: :class:`Tencentcloud::Wedata.v20210820.models.TaskAlarmInfo`
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :TaskAlarmInfo, :ProjectId
        
        def initialize(taskalarminfo=nil, projectid=nil)
          @TaskAlarmInfo = taskalarminfo
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['TaskAlarmInfo'].nil?
            @TaskAlarmInfo = TaskAlarmInfo.new
            @TaskAlarmInfo.deserialize(params['TaskAlarmInfo'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # CreateTaskAlarmRegular返回参数结构体
      class CreateTaskAlarmRegularResponse < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警ID
        # @type AlarmId: Integer
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

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param TaskType: 26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # @type TaskType: Integer
        # @param TaskExt: 扩展属性
        # @type TaskExt: Array

        attr_accessor :ProjectId, :WorkflowId, :TaskName, :TaskType, :TaskExt
        
        def initialize(projectid=nil, workflowid=nil, taskname=nil, tasktype=nil, taskext=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @TaskName = taskname
          @TaskType = tasktype
          @TaskExt = taskext
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String

        attr_accessor :ProjectId, :WorkflowName, :FolderId
        
        def initialize(projectid=nil, workflowname=nil, folderid=nil)
          @ProjectId = projectid
          @WorkflowName = workflowname
          @FolderId = folderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回工作流Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 采集器状态统计
      class CvmAgentStatus < TencentCloud::Common::AbstractModel
        # @param Status: agent状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Count: 对应状态的agent总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :Status, :Count
        
        def initialize(status=nil, count=nil)
          @Status = status
          @Count = count
        end

        def deserialize(params)
          @Status = params['Status']
          @Count = params['Count']
        end
      end

      # 日评分信息
      class DailyScoreInfo < TencentCloud::Common::AbstractModel
        # @param StatisticsDate: 统计日期 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticsDate: Integer
        # @param Score: 评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float

        attr_accessor :StatisticsDate, :Score
        
        def initialize(statisticsdate=nil, score=nil)
          @StatisticsDate = statisticsdate
          @Score = score
        end

        def deserialize(params)
          @StatisticsDate = params['StatisticsDate']
          @Score = params['Score']
        end
      end

      # 数据监测情况结果
      class DataCheckStat < TencentCloud::Common::AbstractModel
        # @param TableTotal: 表总数
        # @type TableTotal: Integer
        # @param ColumnTotal: 字段总数
        # @type ColumnTotal: Integer
        # @param TableConfig: 表配置检测数
        # @type TableConfig: Integer
        # @param ColumnConfig: 字段配置检测数
        # @type ColumnConfig: Integer
        # @param TableExec: 表实际检测数
        # @type TableExec: Integer
        # @param ColumnExec: 字段实际检测数
        # @type ColumnExec: Integer

        attr_accessor :TableTotal, :ColumnTotal, :TableConfig, :ColumnConfig, :TableExec, :ColumnExec
        
        def initialize(tabletotal=nil, columntotal=nil, tableconfig=nil, columnconfig=nil, tableexec=nil, columnexec=nil)
          @TableTotal = tabletotal
          @ColumnTotal = columntotal
          @TableConfig = tableconfig
          @ColumnConfig = columnconfig
          @TableExec = tableexec
          @ColumnExec = columnexec
        end

        def deserialize(params)
          @TableTotal = params['TableTotal']
          @ColumnTotal = params['ColumnTotal']
          @TableConfig = params['TableConfig']
          @ColumnConfig = params['ColumnConfig']
          @TableExec = params['TableExec']
          @ColumnExec = params['ColumnExec']
        end
      end

      # 数据源对象
      class DataSourceInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param Description: 数据源描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ID: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instance: String
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Region: 数据源引擎所属区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Type: 数据源类型:枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ClusterId: 数据源所属的集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param AppId: 应用ID AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param BizParams: 业务侧数据源的配置信息扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParams: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Display: 数据源展示名，为了可视化查看
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Display: String
        # @param OwnerAccount: 数据源责任人账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerAccount: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param OwnerAccountName: 数据源责任人账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerAccountName: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param OwnerProjectId: 归属项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 归属项目Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 归属项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectIdent: String
        # @param AuthorityProjectName: 授权项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorityProjectName: String
        # @param AuthorityUserName: 授权用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorityUserName: String
        # @param Edit: 是否有编辑权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edit: Boolean
        # @param Author: 是否有授权权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Author: Boolean
        # @param Deliver: 是否有转交权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deliver: Boolean
        # @param DataSourceStatus: 数据源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceStatus: String
        # @param CreateTime: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param ParamsString: Params json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamsString: String
        # @param BizParamsString: BizParams json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParamsString: String
        # @param ModifiedTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: Integer

        attr_accessor :DatabaseName, :Description, :ID, :Instance, :Name, :Region, :Type, :ClusterId, :AppId, :BizParams, :Category, :Display, :OwnerAccount, :Params, :Status, :OwnerAccountName, :ClusterName, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :AuthorityProjectName, :AuthorityUserName, :Edit, :Author, :Deliver, :DataSourceStatus, :CreateTime, :ParamsString, :BizParamsString, :ModifiedTime
        
        def initialize(databasename=nil, description=nil, id=nil, instance=nil, name=nil, region=nil, type=nil, clusterid=nil, appid=nil, bizparams=nil, category=nil, display=nil, owneraccount=nil, params=nil, status=nil, owneraccountname=nil, clustername=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, authorityprojectname=nil, authorityusername=nil, edit=nil, author=nil, deliver=nil, datasourcestatus=nil, createtime=nil, paramsstring=nil, bizparamsstring=nil, modifiedtime=nil)
          @DatabaseName = databasename
          @Description = description
          @ID = id
          @Instance = instance
          @Name = name
          @Region = region
          @Type = type
          @ClusterId = clusterid
          @AppId = appid
          @BizParams = bizparams
          @Category = category
          @Display = display
          @OwnerAccount = owneraccount
          @Params = params
          @Status = status
          @OwnerAccountName = owneraccountname
          @ClusterName = clustername
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @AuthorityProjectName = authorityprojectname
          @AuthorityUserName = authorityusername
          @Edit = edit
          @Author = author
          @Deliver = deliver
          @DataSourceStatus = datasourcestatus
          @CreateTime = createtime
          @ParamsString = paramsstring
          @BizParamsString = bizparamsstring
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Description = params['Description']
          @ID = params['ID']
          @Instance = params['Instance']
          @Name = params['Name']
          @Region = params['Region']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @AppId = params['AppId']
          @BizParams = params['BizParams']
          @Category = params['Category']
          @Display = params['Display']
          @OwnerAccount = params['OwnerAccount']
          @Params = params['Params']
          @Status = params['Status']
          @OwnerAccountName = params['OwnerAccountName']
          @ClusterName = params['ClusterName']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @AuthorityProjectName = params['AuthorityProjectName']
          @AuthorityUserName = params['AuthorityUserName']
          @Edit = params['Edit']
          @Author = params['Author']
          @Deliver = params['Deliver']
          @DataSourceStatus = params['DataSourceStatus']
          @CreateTime = params['CreateTime']
          @ParamsString = params['ParamsString']
          @BizParamsString = params['BizParamsString']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 查询数据源分页列表
      class DataSourceInfoPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Rows: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :PageNumber, :PageSize, :Rows, :TotalCount, :TotalPageNumber
        
        def initialize(pagenumber=nil, pagesize=nil, rows=nil, totalcount=nil, totalpagenumber=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Rows = rows
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              datasourceinfo_tmp = DataSourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @Rows << datasourceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 数据质量数据来源数据库
      class DatabaseInfo < TencentCloud::Common::AbstractModel
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatasourceId: 数据源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param DatabaseId: 数据库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param InstanceId: 实例Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param OriginDatabaseName: 数据库原始名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginDatabaseName: String
        # @param OriginSchemaName: schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginSchemaName: String

        attr_accessor :DatasourceName, :DatasourceId, :DatabaseName, :DatabaseId, :InstanceId, :DatasourceType, :OriginDatabaseName, :OriginSchemaName
        
        def initialize(datasourcename=nil, datasourceid=nil, databasename=nil, databaseid=nil, instanceid=nil, datasourcetype=nil, origindatabasename=nil, originschemaname=nil)
          @DatasourceName = datasourcename
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @DatabaseId = databaseid
          @InstanceId = instanceid
          @DatasourceType = datasourcetype
          @OriginDatabaseName = origindatabasename
          @OriginSchemaName = originschemaname
        end

        def deserialize(params)
          @DatasourceName = params['DatasourceName']
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          @DatabaseId = params['DatabaseId']
          @InstanceId = params['InstanceId']
          @DatasourceType = params['DatasourceType']
          @OriginDatabaseName = params['OriginDatabaseName']
          @OriginSchemaName = params['OriginSchemaName']
        end
      end

      # 数据源对象
      class DatasourceBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseNames: 若数据源列表为绑定数据库，则为db名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNames: Array
        # @param Description: 数据源描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ID: 数据源ID
        # @type ID: Integer
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instance: String
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # @type Name: String
        # @param Region: 数据源引擎所属区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Type: 数据源类型:枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ClusterId: 数据源所属的集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :DatabaseNames, :Description, :ID, :Instance, :Name, :Region, :Type, :ClusterId
        
        def initialize(databasenames=nil, description=nil, id=nil, instance=nil, name=nil, region=nil, type=nil, clusterid=nil)
          @DatabaseNames = databasenames
          @Description = description
          @ID = id
          @Instance = instance
          @Name = name
          @Region = region
          @Type = type
          @ClusterId = clusterid
        end

        def deserialize(params)
          @DatabaseNames = params['DatabaseNames']
          @Description = params['Description']
          @ID = params['ID']
          @Instance = params['Instance']
          @Name = params['Name']
          @Region = params['Region']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCustomFunction请求参数结构体
      class DeleteCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIdentifier: 集群实例 ID
        # @type ClusterIdentifier: String
        # @param FunctionId: 函数 ID
        # @type FunctionId: String
        # @param ProjectId: 项目ID，必须填
        # @type ProjectId: String

        attr_accessor :ClusterIdentifier, :FunctionId, :ProjectId
        
        def initialize(clusteridentifier=nil, functionid=nil, projectid=nil)
          @ClusterIdentifier = clusteridentifier
          @FunctionId = functionid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ClusterIdentifier = params['ClusterIdentifier']
          @FunctionId = params['FunctionId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteCustomFunction返回参数结构体
      class DeleteCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDataSources请求参数结构体
      class DeleteDataSourcesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: id列表
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteDataSources返回参数结构体
      class DeleteDataSourcesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFolder请求参数结构体
      class DeleteFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderId: 文件夹ID
        # @type FolderId: String

        attr_accessor :ProjectId, :FolderId
        
        def initialize(projectid=nil, folderid=nil)
          @ProjectId = projectid
          @FolderId = folderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
        end
      end

      # DeleteFolder返回参数结构体
      class DeleteFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表删除成功，false代表删除失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteInLongAgent请求参数结构体
      class DeleteInLongAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String

        attr_accessor :AgentId, :ProjectId
        
        def initialize(agentid=nil, projectid=nil)
          @AgentId = agentid
          @ProjectId = projectid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteInLongAgent返回参数结构体
      class DeleteInLongAgentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIntegrationNode请求参数结构体
      class DeleteIntegrationNodeRequest < TencentCloud::Common::AbstractModel
        # @param Id: 节点id
        # @type Id: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :Id, :ProjectId
        
        def initialize(id=nil, projectid=nil)
          @Id = id
          @ProjectId = projectid
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteIntegrationNode返回参数结构体
      class DeleteIntegrationNodeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除返回是否成功标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteIntegrationTask请求参数结构体
      class DeleteIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteIntegrationTask返回参数结构体
      class DeleteIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务删除成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOfflineTask请求参数结构体
      class DeleteOfflineTaskRequest < TencentCloud::Common::AbstractModel
        # @param OperatorName: 操作者name
        # @type OperatorName: String
        # @param ProjectId: 项目/工作空间id
        # @type ProjectId: String
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param VirtualFlag: 虚拟任务标记(跟之前调度接口保持一致默认false)
        # @type VirtualFlag: Boolean

        attr_accessor :OperatorName, :ProjectId, :TaskId, :VirtualFlag
        
        def initialize(operatorname=nil, projectid=nil, taskid=nil, virtualflag=nil)
          @OperatorName = operatorname
          @ProjectId = projectid
          @TaskId = taskid
          @VirtualFlag = virtualflag
        end

        def deserialize(params)
          @OperatorName = params['OperatorName']
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VirtualFlag = params['VirtualFlag']
        end
      end

      # DeleteOfflineTask返回参数结构体
      class DeleteOfflineTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteResource请求参数结构体
      class DeleteResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String

        attr_accessor :ProjectId, :ResourceId
        
        def initialize(projectid=nil, resourceid=nil)
          @ProjectId = projectid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ResourceId = params['ResourceId']
        end
      end

      # DeleteResource返回参数结构体
      class DeleteResourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 质量规则ID
        # @type RuleId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleId, :ProjectId
        
        def initialize(ruleid=nil, projectid=nil)
          @RuleId = ruleid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRuleTemplate请求参数结构体
      class DeleteRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Ids: 模版Id列表
        # @type Ids: Array

        attr_accessor :ProjectId, :Ids
        
        def initialize(projectid=nil, ids=nil)
          @ProjectId = projectid
          @Ids = ids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Ids = params['Ids']
        end
      end

      # DeleteRuleTemplate返回参数结构体
      class DeleteRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTaskAlarmRegular请求参数结构体
      class DeleteTaskAlarmRegularRequest < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型(201表示实时任务，202表示离线任务)
        # @type TaskType: Integer

        attr_accessor :Id, :ProjectId, :TaskId, :TaskType
        
        def initialize(id=nil, projectid=nil, taskid=nil, tasktype=nil)
          @Id = id
          @ProjectId = projectid
          @TaskId = taskid
          @TaskType = tasktype
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
        end
      end

      # DeleteTaskAlarmRegular返回参数结构体
      class DeleteTaskAlarmRegularResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除结果(true表示删除成功，false表示删除失败)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteWorkflowNew请求参数结构体
      class DeleteWorkflowNewRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowId: 工作流id
        # @type WorkFlowId: String
        # @param DeleteMode: true : 删除后下游任务可正常运行
        # false：删除后下游任务不可运行
        # @type DeleteMode: Boolean
        # @param EnableNotify: true：通知下游任务责任人
        # false:  不通知下游任务责任人
        # @type EnableNotify: Boolean
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :WorkFlowId, :DeleteMode, :EnableNotify, :ProjectId
        
        def initialize(workflowid=nil, deletemode=nil, enablenotify=nil, projectid=nil)
          @WorkFlowId = workflowid
          @DeleteMode = deletemode
          @EnableNotify = enablenotify
          @ProjectId = projectid
        end

        def deserialize(params)
          @WorkFlowId = params['WorkFlowId']
          @DeleteMode = params['DeleteMode']
          @EnableNotify = params['EnableNotify']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteWorkflowNew返回参数结构体
      class DeleteWorkflowNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 依赖配置
      class DependencyConfig < TencentCloud::Common::AbstractModel
        # @param DependConfType: 仅五种周期运行依赖配置： HOUR,DAY,WEEK,MONTH,YEAR,CRONTAB,MINUTE
        # @type DependConfType: String
        # @param SubordinateCyclicType: 依赖配置从属周期类型，CURRENT_HOUR，PREVIOUS_HOUR，CURRENT_DAY，PREVIOUS_DAY，PREVIOUS_WEEK，PREVIOUS_FRIDAY，PREVIOUS_WEEKEND，CURRENT_MONTH，PREVIOUS_MONTH，PREVIOUS_END_OF_MONTH
        #      * PREVIOUS_BEGIN_OF_MONTH，ALL_MONTH_OF_YEAR，ALL_DAY_OF_YEAR，CURRENT_YEAR，CURRENT，CURRENT_MINUTE，PREVIOUS_MINUTE_CYCLE，PREVIOUS_HOUR_CYCLE
        # @type SubordinateCyclicType: String
        # @param DependencyStrategy: WAITING，等待（默认策略）EXECUTING:执行
        # @type DependencyStrategy: String
        # @param ParentTask: 父任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentTask: :class:`Tencentcloud::Wedata.v20210820.models.TaskInnerInfo`
        # @param SonTask: 子任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SonTask: :class:`Tencentcloud::Wedata.v20210820.models.TaskInnerInfo`

        attr_accessor :DependConfType, :SubordinateCyclicType, :DependencyStrategy, :ParentTask, :SonTask
        
        def initialize(dependconftype=nil, subordinatecyclictype=nil, dependencystrategy=nil, parenttask=nil, sontask=nil)
          @DependConfType = dependconftype
          @SubordinateCyclicType = subordinatecyclictype
          @DependencyStrategy = dependencystrategy
          @ParentTask = parenttask
          @SonTask = sontask
        end

        def deserialize(params)
          @DependConfType = params['DependConfType']
          @SubordinateCyclicType = params['SubordinateCyclicType']
          @DependencyStrategy = params['DependencyStrategy']
          unless params['ParentTask'].nil?
            @ParentTask = TaskInnerInfo.new
            @ParentTask.deserialize(params['ParentTask'])
          end
          unless params['SonTask'].nil?
            @SonTask = TaskInnerInfo.new
            @SonTask.deserialize(params['SonTask'])
          end
        end
      end

      # DescribeAlarmEvents请求参数结构体
      class DescribeAlarmEventsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件(key可以是：AlarmLevel,AlarmIndicator,KeyWord)
        # @type Filters: Array
        # @param OrderFields: 排序字段（AlarmTime）
        # @type OrderFields: Array
        # @param TaskType: 类型(201表示实时，202表示离线)
        # @type TaskType: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 当前页
        # @type PageNumber: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer

        attr_accessor :Filters, :OrderFields, :TaskType, :StartTime, :EndTime, :ProjectId, :PageNumber, :PageSize
        
        def initialize(filters=nil, orderfields=nil, tasktype=nil, starttime=nil, endtime=nil, projectid=nil, pagenumber=nil, pagesize=nil)
          @Filters = filters
          @OrderFields = orderfields
          @TaskType = tasktype
          @StartTime = starttime
          @EndTime = endtime
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
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
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @TaskType = params['TaskType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeAlarmEvents返回参数结构体
      class DescribeAlarmEventsResponse < TencentCloud::Common::AbstractModel
        # @param AlarmEventInfoList: 告警事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmEventInfoList: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmEventInfoList, :TotalCount, :RequestId
        
        def initialize(alarmeventinfolist=nil, totalcount=nil, requestid=nil)
          @AlarmEventInfoList = alarmeventinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmEventInfoList'].nil?
            @AlarmEventInfoList = []
            params['AlarmEventInfoList'].each do |i|
              alarmeventinfo_tmp = AlarmEventInfo.new
              alarmeventinfo_tmp.deserialize(i)
              @AlarmEventInfoList << alarmeventinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmReceiver请求参数结构体
      class DescribeAlarmReceiverRequest < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警ID
        # @type AlarmId: String
        # @param PageNumber: 当前页
        # @type PageNumber: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param MessageId: 消息ID
        # @type MessageId: String
        # @param TaskType: 类型
        # @type TaskType: Integer
        # @param AlarmRecipient: 告警接收人ID(逗号分隔)
        # @type AlarmRecipient: String
        # @param AlarmRecipientName: 告警接收人姓名(逗号分隔)
        # @type AlarmRecipientName: String
        # @param AlarmTime: 告警时间
        # @type AlarmTime: String

        attr_accessor :AlarmId, :PageNumber, :PageSize, :ProjectId, :MessageId, :TaskType, :AlarmRecipient, :AlarmRecipientName, :AlarmTime
        
        def initialize(alarmid=nil, pagenumber=nil, pagesize=nil, projectid=nil, messageid=nil, tasktype=nil, alarmrecipient=nil, alarmrecipientname=nil, alarmtime=nil)
          @AlarmId = alarmid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ProjectId = projectid
          @MessageId = messageid
          @TaskType = tasktype
          @AlarmRecipient = alarmrecipient
          @AlarmRecipientName = alarmrecipientname
          @AlarmTime = alarmtime
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          @MessageId = params['MessageId']
          @TaskType = params['TaskType']
          @AlarmRecipient = params['AlarmRecipient']
          @AlarmRecipientName = params['AlarmRecipientName']
          @AlarmTime = params['AlarmTime']
        end
      end

      # DescribeAlarmReceiver返回参数结构体
      class DescribeAlarmReceiverResponse < TencentCloud::Common::AbstractModel
        # @param AlarmReceiverInfoList: 告警接收人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmReceiverInfoList: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmReceiverInfoList, :TotalCount, :RequestId
        
        def initialize(alarmreceiverinfolist=nil, totalcount=nil, requestid=nil)
          @AlarmReceiverInfoList = alarmreceiverinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmReceiverInfoList'].nil?
            @AlarmReceiverInfoList = []
            params['AlarmReceiverInfoList'].each do |i|
              alarmreceiverinfo_tmp = AlarmReceiverInfo.new
              alarmreceiverinfo_tmp.deserialize(i)
              @AlarmReceiverInfoList << alarmreceiverinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterNamespaceList请求参数结构体
      class DescribeClusterNamespaceListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String

        attr_accessor :ClusterId, :ProjectId
        
        def initialize(clusterid=nil, projectid=nil)
          @ClusterId = clusterid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeClusterNamespaceList返回参数结构体
      class DescribeClusterNamespaceListResponse < TencentCloud::Common::AbstractModel
        # @param Namespaces: 命名空间
        # @type Namespaces: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Namespaces, :RequestId
        
        def initialize(namespaces=nil, requestid=nil)
          @Namespaces = namespaces
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Namespaces'].nil?
            @Namespaces = []
            params['Namespaces'].each do |i|
              namespace_tmp = Namespace.new
              namespace_tmp.deserialize(i)
              @Namespaces << namespace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataBases请求参数结构体
      class DescribeDataBasesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param DatasourceId: 数据源id
        # @type DatasourceId: String
        # @param DsTypes: 数据源类型
        # @type DsTypes: Array

        attr_accessor :ProjectId, :DatasourceId, :DsTypes
        
        def initialize(projectid=nil, datasourceid=nil, dstypes=nil)
          @ProjectId = projectid
          @DatasourceId = datasourceid
          @DsTypes = dstypes
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DatasourceId = params['DatasourceId']
          @DsTypes = params['DsTypes']
        end
      end

      # DescribeDataBases返回参数结构体
      class DescribeDataBasesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据来源数据数据库列表
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
              databaseinfo_tmp = DatabaseInfo.new
              databaseinfo_tmp.deserialize(i)
              @Data << databaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataCheckStat请求参数结构体
      class DescribeDataCheckStatRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: Project id
        # @type ProjectId: String
        # @param BeginDate: 开始时间，时间戳到秒
        # @type BeginDate: String
        # @param EndDate: 结束时间，时间戳到秒
        # @type EndDate: String

        attr_accessor :ProjectId, :BeginDate, :EndDate
        
        def initialize(projectid=nil, begindate=nil, enddate=nil)
          @ProjectId = projectid
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeDataCheckStat返回参数结构体
      class DescribeDataCheckStatResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DataCheckStat`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataCheckStat.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataObjects请求参数结构体
      class DescribeDataObjectsRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据来源ID
        # @type DatasourceId: String
        # @param TableId: 数据表ID
        # @type TableId: String
        # @param RuleGroupId: 质量规则组ID
        # @type RuleGroupId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :DatasourceId, :TableId, :RuleGroupId, :ProjectId
        
        def initialize(datasourceid=nil, tableid=nil, rulegroupid=nil, projectid=nil)
          @DatasourceId = datasourceid
          @TableId = tableid
          @RuleGroupId = rulegroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @TableId = params['TableId']
          @RuleGroupId = params['RuleGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeDataObjects返回参数结构体
      class DescribeDataObjectsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据对象列表
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
              sourceobject_tmp = SourceObject.new
              sourceobject_tmp.deserialize(i)
              @Data << sourceobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSourceInfoList请求参数结构体
      class DescribeDataSourceInfoListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 工作空间id
        # @type ProjectId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param Filters: 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        # @type Filters: :class:`Tencentcloud::Wedata.v20210820.models.Filter`
        # @param OrderFields: 排序配置
        # @type OrderFields: :class:`Tencentcloud::Wedata.v20210820.models.OrderField`
        # @param Type: 数据源类型
        # @type Type: String
        # @param DatasourceName: 数据源名称过滤用
        # @type DatasourceName: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields, :Type, :DatasourceName
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, type=nil, datasourcename=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @Type = type
          @DatasourceName = datasourcename
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          unless params['OrderFields'].nil?
            @OrderFields = OrderField.new
            @OrderFields.deserialize(params['OrderFields'])
          end
          @Type = params['Type']
          @DatasourceName = params['DatasourceName']
        end
      end

      # DescribeDataSourceInfoList返回参数结构体
      class DescribeDataSourceInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数。
        # @type TotalCount: Integer
        # @param DatasourceSet: 数据源信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DatasourceSet, :RequestId
        
        def initialize(totalcount=nil, datasourceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DatasourceSet = datasourceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DatasourceSet'].nil?
            @DatasourceSet = []
            params['DatasourceSet'].each do |i|
              datasourcebaseinfo_tmp = DatasourceBaseInfo.new
              datasourcebaseinfo_tmp.deserialize(i)
              @DatasourceSet << datasourcebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSourceList请求参数结构体
      class DescribeDataSourceListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 返回数量
        # @type PageSize: Integer
        # @param OrderFields: 排序配置
        # @type OrderFields: Array
        # @param Filters: 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :OrderFields, :Filters
        
        def initialize(pagenumber=nil, pagesize=nil, orderfields=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
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

      # DescribeDataSourceList返回参数结构体
      class DescribeDataSourceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DataSourceInfoPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceInfoPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSourceWithoutInfo请求参数结构体
      class DescribeDataSourceWithoutInfoRequest < TencentCloud::Common::AbstractModel
        # @param OrderFields: 1
        # @type OrderFields: Array
        # @param Filters: 1
        # @type Filters: Array

        attr_accessor :OrderFields, :Filters
        
        def initialize(orderfields=nil, filters=nil)
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
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

      # DescribeDataSourceWithoutInfo返回参数结构体
      class DescribeDataSourceWithoutInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 1
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
              datasourceinfo_tmp = DataSourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @Data << datasourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataTypes请求参数结构体
      class DescribeDataTypesRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceType: 数据源类型，MYSQL|KAFKA等
        # @type DatasourceType: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String

        attr_accessor :DatasourceType, :ProjectId
        
        def initialize(datasourcetype=nil, projectid=nil)
          @DatasourceType = datasourcetype
          @ProjectId = projectid
        end

        def deserialize(params)
          @DatasourceType = params['DatasourceType']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeDataTypes返回参数结构体
      class DescribeDataTypesResponse < TencentCloud::Common::AbstractModel
        # @param TypeInfoSet: 字段类型列表。
        # @type TypeInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TypeInfoSet, :RequestId
        
        def initialize(typeinfoset=nil, requestid=nil)
          @TypeInfoSet = typeinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TypeInfoSet'].nil?
            @TypeInfoSet = []
            params['TypeInfoSet'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @TypeInfoSet << label_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseInfoList请求参数结构体
      class DescribeDatabaseInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param ConnectionType: 如果是hive这里写rpc，如果是其他类型不传
        # @type ConnectionType: String

        attr_accessor :Filters, :ConnectionType
        
        def initialize(filters=nil, connectiontype=nil)
          @Filters = filters
          @ConnectionType = connectiontype
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
          @ConnectionType = params['ConnectionType']
        end
      end

      # DescribeDatabaseInfoList返回参数结构体
      class DescribeDatabaseInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DatabaseInfo: 数据库列表
        # @type DatabaseInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatabaseInfo, :RequestId
        
        def initialize(databaseinfo=nil, requestid=nil)
          @DatabaseInfo = databaseinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DatabaseInfo'].nil?
            @DatabaseInfo = []
            params['DatabaseInfo'].each do |i|
              databaseinfo_tmp = DatabaseInfo.new
              databaseinfo_tmp.deserialize(i)
              @DatabaseInfo << databaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasource请求参数结构体
      class DescribeDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 对象唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeDatasource返回参数结构体
      class DescribeDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DataSourceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDependTasksNew请求参数结构体
      class DescribeDependTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param Deep: 上游/下游层级1-6级
        # @type Deep: Integer
        # @param Up: 1: 表示查询上游节点；0:表示查询下游节点；2：表示查询上游和下游节点
        # @type Up: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param WorkflowId: 任务工作流id
        # @type WorkflowId: String

        attr_accessor :TaskId, :Deep, :Up, :ProjectId, :WorkflowId
        
        def initialize(taskid=nil, deep=nil, up=nil, projectid=nil, workflowid=nil)
          @TaskId = taskid
          @Deep = deep
          @Up = up
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Deep = params['Deep']
          @Up = params['Up']
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DescribeDependTasksNew返回参数结构体
      class DescribeDependTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 画布任务和链接信息
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CanvasInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CanvasInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDimensionScore请求参数结构体
      class DescribeDimensionScoreRequest < TencentCloud::Common::AbstractModel
        # @param StatisticsDate: 统计日期 时间戳
        # @type StatisticsDate: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DatasourceId: 数据来源id
        # @type DatasourceId: String

        attr_accessor :StatisticsDate, :ProjectId, :DatasourceId
        
        def initialize(statisticsdate=nil, projectid=nil, datasourceid=nil)
          @StatisticsDate = statisticsdate
          @ProjectId = projectid
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @StatisticsDate = params['StatisticsDate']
          @ProjectId = params['ProjectId']
          @DatasourceId = params['DatasourceId']
        end
      end

      # DescribeDimensionScore返回参数结构体
      class DescribeDimensionScoreResponse < TencentCloud::Common::AbstractModel
        # @param Data: 维度评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DimensionScore`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DimensionScore.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExecStrategy请求参数结构体
      class DescribeExecStrategyRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组Id
        # @type RuleGroupId: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :RuleGroupId, :ProjectId
        
        def initialize(rulegroupid=nil, projectid=nil)
          @RuleGroupId = rulegroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeExecStrategy返回参数结构体
      class DescribeExecStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupExecStrategy`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupExecStrategy.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件夹分页信息
      class DescribeFolderListData < TencentCloud::Common::AbstractModel
        # @param Items: 文件夹信息列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              folder_tmp = Folder.new
              folder_tmp.deserialize(i)
              @Items << folder_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderList请求参数结构体
      class DescribeFolderListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentsFolderId: 文件夹ID
        # @type ParentsFolderId: String
        # @param KeyWords: 关键字
        # @type KeyWords: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentsFolderId, :KeyWords, :PageNumber, :PageSize
        
        def initialize(projectid=nil, parentsfolderid=nil, keywords=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentsFolderId = parentsfolderid
          @KeyWords = keywords
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentsFolderId = params['ParentsFolderId']
          @KeyWords = params['KeyWords']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderList返回参数结构体
      class DescribeFolderListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeFolderListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeFolderListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件夹分页信息
      class DescribeFolderWorkflowListData < TencentCloud::Common::AbstractModel
        # @param Items: 工作流信息列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflow_tmp = Workflow.new
              workflow_tmp.deserialize(i)
              @Items << workflow_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderWorkflowList请求参数结构体
      class DescribeFolderWorkflowListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String
        # @param KeyWords: 关键字
        # @type KeyWords: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentsFolderId, :KeyWords, :PageNumber, :PageSize
        
        def initialize(projectid=nil, parentsfolderid=nil, keywords=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentsFolderId = parentsfolderid
          @KeyWords = keywords
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentsFolderId = params['ParentsFolderId']
          @KeyWords = params['KeyWords']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderWorkflowList返回参数结构体
      class DescribeFolderWorkflowListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeFolderWorkflowListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeFolderWorkflowListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionKinds请求参数结构体
      class DescribeFunctionKindsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFunctionKinds返回参数结构体
      class DescribeFunctionKindsResponse < TencentCloud::Common::AbstractModel
        # @param Kinds: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kinds: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kinds, :ErrorMessage, :RequestId
        
        def initialize(kinds=nil, errormessage=nil, requestid=nil)
          @Kinds = kinds
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Kinds'].nil?
            @Kinds = []
            params['Kinds'].each do |i|
              functiontypeorkind_tmp = FunctionTypeOrKind.new
              functiontypeorkind_tmp.deserialize(i)
              @Kinds << functiontypeorkind_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionTypes请求参数结构体
      class DescribeFunctionTypesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFunctionTypes返回参数结构体
      class DescribeFunctionTypesResponse < TencentCloud::Common::AbstractModel
        # @param Types: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Types: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Types, :ErrorMessage, :RequestId
        
        def initialize(types=nil, errormessage=nil, requestid=nil)
          @Types = types
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Types'].nil?
            @Types = []
            params['Types'].each do |i|
              functiontypeorkind_tmp = FunctionTypeOrKind.new
              functiontypeorkind_tmp.deserialize(i)
              @Types << functiontypeorkind_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInLongAgentList请求参数结构体
      class DescribeInLongAgentListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param AgentName: Agent Name
        # @type AgentName: String
        # @param AgentType: 集群类型，1：TKE Agent，2：BOSS SDK，默认：1，3：CVM，4：自建服务器 【传多个用逗号分割】
        # @type AgentType: Integer
        # @param Status: Agent状态(running运行中，initializing 操作中，failed心跳异常)
        # @type Status: String
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param PageIndex: 分页页码，从1开始，默认：1
        # @type PageIndex: Integer
        # @param PageSize: 分页每页记录数，默认10
        # @type PageSize: Integer
        # @param Like: 名称搜索是否开启模糊匹配，1：开启，0：不开启（精确匹配）
        # @type Like: Integer
        # @param AgentTypes: agent类型【多个用逗号分隔】
        # @type AgentTypes: String

        attr_accessor :ProjectId, :AgentId, :AgentName, :AgentType, :Status, :VpcId, :PageIndex, :PageSize, :Like, :AgentTypes
        
        def initialize(projectid=nil, agentid=nil, agentname=nil, agenttype=nil, status=nil, vpcid=nil, pageindex=nil, pagesize=nil, like=nil, agenttypes=nil)
          @ProjectId = projectid
          @AgentId = agentid
          @AgentName = agentname
          @AgentType = agenttype
          @Status = status
          @VpcId = vpcid
          @PageIndex = pageindex
          @PageSize = pagesize
          @Like = like
          @AgentTypes = agenttypes
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AgentType = params['AgentType']
          @Status = params['Status']
          @VpcId = params['VpcId']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @Like = params['Like']
          @AgentTypes = params['AgentTypes']
        end
      end

      # DescribeInLongAgentList返回参数结构体
      class DescribeInLongAgentListResponse < TencentCloud::Common::AbstractModel
        # @param Items: 采集器信息列表
        # @type Items: Array
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :PageIndex, :PageSize, :TotalCount, :TotalPage, :RequestId
        
        def initialize(items=nil, pageindex=nil, pagesize=nil, totalcount=nil, totalpage=nil, requestid=nil)
          @Items = items
          @PageIndex = pageindex
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              inlongagentdetail_tmp = InLongAgentDetail.new
              inlongagentdetail_tmp.deserialize(i)
              @Items << inlongagentdetail_tmp
            end
          end
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInLongAgentTaskList请求参数结构体
      class DescribeInLongAgentTaskListRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String

        attr_accessor :AgentId, :ProjectId
        
        def initialize(agentid=nil, projectid=nil)
          @AgentId = agentid
          @ProjectId = projectid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeInLongAgentTaskList返回参数结构体
      class DescribeInLongAgentTaskListResponse < TencentCloud::Common::AbstractModel
        # @param Items: 采集器关联的集成任务列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId
        
        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              inlongagenttask_tmp = InLongAgentTask.new
              inlongagenttask_tmp.deserialize(i)
              @Items << inlongagenttask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInLongAgentVpcList请求参数结构体
      class DescribeInLongAgentVpcListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeInLongAgentVpcList返回参数结构体
      class DescribeInLongAgentVpcListResponse < TencentCloud::Common::AbstractModel
        # @param VpcList: VPC列表
        # @type VpcList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcList, :RequestId
        
        def initialize(vpclist=nil, requestid=nil)
          @VpcList = vpclist
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcList = params['VpcList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInLongTkeClusterList请求参数结构体
      class DescribeInLongTkeClusterListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param TkeRegion: TKE集群地域
        # @type TkeRegion: String
        # @param ClusterName: 集群名称。
        # 多个名称用逗号连接。
        # @type ClusterName: String
        # @param Status: TKE集群状态 (Running 运行中 Creating 创建中 Idling 闲置中 Abnormal 异常 Failed 异常 Deleting 删除中 Scaling 规模调整中 Upgrading 升级中 Isolated 欠费隔离中 NodeUpgrading 节点升级中 Recovering 唤醒中 Activating 激活中 MasterScaling Master扩缩容中 Waiting 等待注册 ClusterLevelUpgrading 调整规格中 ResourceIsolate 隔离中 ResourceIsolated 已隔离 ResourceReverse 冲正中 Trading 集群开通中 ResourceReversal 集群冲正 ClusterLevelTrading 集群变配交易中)
        # 多个状态用逗号连接。
        # @type Status: String
        # @param HasAgent: 是否安装Agent，true: 是，false: 否
        # @type HasAgent: Boolean
        # @param ClusterType: 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER。
        # 多个集群用逗号连接。
        # @type ClusterType: String
        # @param PageIndex: 分页页码，从1开始，默认：1
        # @type PageIndex: Integer
        # @param PageSize: 分页每页记录数，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TkeRegion, :ClusterName, :Status, :HasAgent, :ClusterType, :PageIndex, :PageSize
        
        def initialize(projectid=nil, tkeregion=nil, clustername=nil, status=nil, hasagent=nil, clustertype=nil, pageindex=nil, pagesize=nil)
          @ProjectId = projectid
          @TkeRegion = tkeregion
          @ClusterName = clustername
          @Status = status
          @HasAgent = hasagent
          @ClusterType = clustertype
          @PageIndex = pageindex
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TkeRegion = params['TkeRegion']
          @ClusterName = params['ClusterName']
          @Status = params['Status']
          @HasAgent = params['HasAgent']
          @ClusterType = params['ClusterType']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
        end
      end

      # DescribeInLongTkeClusterList返回参数结构体
      class DescribeInLongTkeClusterListResponse < TencentCloud::Common::AbstractModel
        # @param Items: TKE集群信息
        # @type Items: Array
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :PageIndex, :PageSize, :TotalCount, :TotalPage, :RequestId
        
        def initialize(items=nil, pageindex=nil, pagesize=nil, totalcount=nil, totalpage=nil, requestid=nil)
          @Items = items
          @PageIndex = pageindex
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              inlongtkedetail_tmp = InLongTkeDetail.new
              inlongtkedetail_tmp.deserialize(i)
              @Items << inlongtkedetail_tmp
            end
          end
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLastLog请求参数结构体
      class DescribeInstanceLastLogRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :TaskId, :CurRunDate
        
        def initialize(taskid=nil, currundate=nil)
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # DescribeInstanceLastLog返回参数结构体
      class DescribeInstanceLastLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 日志
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目/工作空间id
        # @type ProjectId: String
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param CycleList: 周期列表（如天，一次性），可选
        # @type CycleList: Array
        # @param OwnerList: 责任人
        # @type OwnerList: Array
        # @param InstanceType: 跟之前保持一致
        # @type InstanceType: String
        # @param Sort: 排序顺序（asc，desc）
        # @type Sort: String
        # @param SortCol: 排序列（costTime 运行耗时，startTime 开始时间，state 实例状态，curRunDate 数据时间）
        # @type SortCol: String
        # @param TaskTypeList: 类型列表（如35 shell任务），可选
        # @type TaskTypeList: Array
        # @param StateList: 状态列表（如成功 2，正在执行 1），可选
        # @type StateList: Array
        # @param Keyword: 任务名称
        # @type Keyword: String

        attr_accessor :ProjectId, :PageIndex, :PageSize, :CycleList, :OwnerList, :InstanceType, :Sort, :SortCol, :TaskTypeList, :StateList, :Keyword
        
        def initialize(projectid=nil, pageindex=nil, pagesize=nil, cyclelist=nil, ownerlist=nil, instancetype=nil, sort=nil, sortcol=nil, tasktypelist=nil, statelist=nil, keyword=nil)
          @ProjectId = projectid
          @PageIndex = pageindex
          @PageSize = pagesize
          @CycleList = cyclelist
          @OwnerList = ownerlist
          @InstanceType = instancetype
          @Sort = sort
          @SortCol = sortcol
          @TaskTypeList = tasktypelist
          @StateList = statelist
          @Keyword = keyword
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @CycleList = params['CycleList']
          @OwnerList = params['OwnerList']
          @InstanceType = params['InstanceType']
          @Sort = params['Sort']
          @SortCol = params['SortCol']
          @TaskTypeList = params['TaskTypeList']
          @StateList = params['StateList']
          @Keyword = params['Keyword']
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLogList请求参数结构体
      class DescribeInstanceLogListRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :TaskId, :CurRunDate
        
        def initialize(taskid=nil, currundate=nil)
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # DescribeInstanceLogList返回参数结构体
      class DescribeInstanceLogListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 日志列表
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLog请求参数结构体
      class DescribeInstanceLogRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String
        # @param BrokerIp: 服务器Ip
        # @type BrokerIp: String
        # @param OriginFileName: 文件Name
        # @type OriginFileName: String

        attr_accessor :TaskId, :CurRunDate, :BrokerIp, :OriginFileName
        
        def initialize(taskid=nil, currundate=nil, brokerip=nil, originfilename=nil)
          @TaskId = taskid
          @CurRunDate = currundate
          @BrokerIp = brokerip
          @OriginFileName = originfilename
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @BrokerIp = params['BrokerIp']
          @OriginFileName = params['OriginFileName']
        end
      end

      # DescribeInstanceLog返回参数结构体
      class DescribeInstanceLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLogs请求参数结构体
      class DescribeInstanceLogsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :ProjectId, :TaskId, :CurRunDate
        
        def initialize(projectid=nil, taskid=nil, currundate=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # DescribeInstanceLogs返回参数结构体
      class DescribeInstanceLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回日志列表
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
              instancelog_tmp = InstanceLog.new
              instancelog_tmp.deserialize(i)
              @Data << instancelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
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

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: Json 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationNode请求参数结构体
      class DescribeIntegrationNodeRequest < TencentCloud::Common::AbstractModel
        # @param Id: 节点id
        # @type Id: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型
        # @type TaskType: Integer

        attr_accessor :Id, :ProjectId, :TaskType
        
        def initialize(id=nil, projectid=nil, tasktype=nil)
          @Id = id
          @ProjectId = projectid
          @TaskType = tasktype
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
        end
      end

      # DescribeIntegrationNode返回参数结构体
      class DescribeIntegrationNodeResponse < TencentCloud::Common::AbstractModel
        # @param NodeInfo: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeInfo`
        # @param SourceCheckFlag: 上游节点是否已经修改。true 已修改，需要提示；false 没有修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCheckFlag: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeInfo, :SourceCheckFlag, :RequestId
        
        def initialize(nodeinfo=nil, sourcecheckflag=nil, requestid=nil)
          @NodeInfo = nodeinfo
          @SourceCheckFlag = sourcecheckflag
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeInfo'].nil?
            @NodeInfo = IntegrationNodeInfo.new
            @NodeInfo.deserialize(params['NodeInfo'])
          end
          @SourceCheckFlag = params['SourceCheckFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatisticsAgentStatus请求参数结构体
      class DescribeIntegrationStatisticsAgentStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String
        # @param ExecutorGroupId: 资源组id
        # @type ExecutorGroupId: String

        attr_accessor :TaskType, :ProjectId, :QueryDate, :ExecutorGroupId
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil, executorgroupid=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # DescribeIntegrationStatisticsAgentStatus返回参数结构体
      class DescribeIntegrationStatisticsAgentStatusResponse < TencentCloud::Common::AbstractModel
        # @param StatusData: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusData, :RequestId
        
        def initialize(statusdata=nil, requestid=nil)
          @StatusData = statusdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatusData = params['StatusData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatisticsInstanceTrend请求参数结构体
      class DescribeIntegrationStatisticsInstanceTrendRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String
        # @param ExecutorGroupId: 资源组id
        # @type ExecutorGroupId: String

        attr_accessor :TaskType, :ProjectId, :QueryDate, :ExecutorGroupId
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil, executorgroupid=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # DescribeIntegrationStatisticsInstanceTrend返回参数结构体
      class DescribeIntegrationStatisticsInstanceTrendResponse < TencentCloud::Common::AbstractModel
        # @param TrendsData: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrendsData, :RequestId
        
        def initialize(trendsdata=nil, requestid=nil)
          @TrendsData = trendsdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrendsData'].nil?
            @TrendsData = []
            params['TrendsData'].each do |i|
              integrationstatisticstrendresult_tmp = IntegrationStatisticsTrendResult.new
              integrationstatisticstrendresult_tmp.deserialize(i)
              @TrendsData << integrationstatisticstrendresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatisticsRecordsTrend请求参数结构体
      class DescribeIntegrationStatisticsRecordsTrendRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String

        attr_accessor :TaskType, :ProjectId, :QueryDate
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
        end
      end

      # DescribeIntegrationStatisticsRecordsTrend返回参数结构体
      class DescribeIntegrationStatisticsRecordsTrendResponse < TencentCloud::Common::AbstractModel
        # @param TrendsData: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrendsData, :RequestId
        
        def initialize(trendsdata=nil, requestid=nil)
          @TrendsData = trendsdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrendsData'].nil?
            @TrendsData = []
            params['TrendsData'].each do |i|
              integrationstatisticstrendresult_tmp = IntegrationStatisticsTrendResult.new
              integrationstatisticstrendresult_tmp.deserialize(i)
              @TrendsData << integrationstatisticstrendresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatistics请求参数结构体
      class DescribeIntegrationStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String

        attr_accessor :TaskType, :ProjectId, :QueryDate
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
        end
      end

      # DescribeIntegrationStatistics返回参数结构体
      class DescribeIntegrationStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalTask: 总任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTask: Integer
        # @param ProdTask: 生产态任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProdTask: Integer
        # @param DevTask: 开发态任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevTask: Integer
        # @param TotalReadRecords: 总读取条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalReadRecords: Integer
        # @param TotalWriteRecords: 总写入条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalWriteRecords: Integer
        # @param TotalErrorRecords: 总脏数据条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalErrorRecords: Integer
        # @param TotalAlarmEvent: 总告警事件数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalAlarmEvent: Integer
        # @param IncreaseReadRecords: 当天读取增长条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncreaseReadRecords: Integer
        # @param IncreaseWriteRecords: 当天写入增长条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncreaseWriteRecords: Integer
        # @param IncreaseErrorRecords: 当天脏数据增长条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncreaseErrorRecords: Integer
        # @param IncreaseAlarmEvent: 当天告警事件增长数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncreaseAlarmEvent: Integer
        # @param AlarmEvent: 告警事件统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmEvent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalTask, :ProdTask, :DevTask, :TotalReadRecords, :TotalWriteRecords, :TotalErrorRecords, :TotalAlarmEvent, :IncreaseReadRecords, :IncreaseWriteRecords, :IncreaseErrorRecords, :IncreaseAlarmEvent, :AlarmEvent, :RequestId
        
        def initialize(totaltask=nil, prodtask=nil, devtask=nil, totalreadrecords=nil, totalwriterecords=nil, totalerrorrecords=nil, totalalarmevent=nil, increasereadrecords=nil, increasewriterecords=nil, increaseerrorrecords=nil, increasealarmevent=nil, alarmevent=nil, requestid=nil)
          @TotalTask = totaltask
          @ProdTask = prodtask
          @DevTask = devtask
          @TotalReadRecords = totalreadrecords
          @TotalWriteRecords = totalwriterecords
          @TotalErrorRecords = totalerrorrecords
          @TotalAlarmEvent = totalalarmevent
          @IncreaseReadRecords = increasereadrecords
          @IncreaseWriteRecords = increasewriterecords
          @IncreaseErrorRecords = increaseerrorrecords
          @IncreaseAlarmEvent = increasealarmevent
          @AlarmEvent = alarmevent
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalTask = params['TotalTask']
          @ProdTask = params['ProdTask']
          @DevTask = params['DevTask']
          @TotalReadRecords = params['TotalReadRecords']
          @TotalWriteRecords = params['TotalWriteRecords']
          @TotalErrorRecords = params['TotalErrorRecords']
          @TotalAlarmEvent = params['TotalAlarmEvent']
          @IncreaseReadRecords = params['IncreaseReadRecords']
          @IncreaseWriteRecords = params['IncreaseWriteRecords']
          @IncreaseErrorRecords = params['IncreaseErrorRecords']
          @IncreaseAlarmEvent = params['IncreaseAlarmEvent']
          @AlarmEvent = params['AlarmEvent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatisticsTaskStatus请求参数结构体
      class DescribeIntegrationStatisticsTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String
        # @param ExecutorGroupId: 资源组id
        # @type ExecutorGroupId: String

        attr_accessor :TaskType, :ProjectId, :QueryDate, :ExecutorGroupId
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil, executorgroupid=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # DescribeIntegrationStatisticsTaskStatus返回参数结构体
      class DescribeIntegrationStatisticsTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param StatusData: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusData, :RequestId
        
        def initialize(statusdata=nil, requestid=nil)
          @StatusData = statusdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatusData = params['StatusData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationStatisticsTaskStatusTrend请求参数结构体
      class DescribeIntegrationStatisticsTaskStatusTrendRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型（实时：201，离线：202）
        # @type TaskType: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param QueryDate: 查询日期
        # @type QueryDate: String
        # @param ExecutorGroupId: 资源组id
        # @type ExecutorGroupId: String

        attr_accessor :TaskType, :ProjectId, :QueryDate, :ExecutorGroupId
        
        def initialize(tasktype=nil, projectid=nil, querydate=nil, executorgroupid=nil)
          @TaskType = tasktype
          @ProjectId = projectid
          @QueryDate = querydate
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProjectId = params['ProjectId']
          @QueryDate = params['QueryDate']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # DescribeIntegrationStatisticsTaskStatusTrend返回参数结构体
      class DescribeIntegrationStatisticsTaskStatusTrendResponse < TencentCloud::Common::AbstractModel
        # @param TrendsData: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrendsData, :RequestId
        
        def initialize(trendsdata=nil, requestid=nil)
          @TrendsData = trendsdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrendsData'].nil?
            @TrendsData = []
            params['TrendsData'].each do |i|
              integrationstatisticstrendresult_tmp = IntegrationStatisticsTrendResult.new
              integrationstatisticstrendresult_tmp.deserialize(i)
              @TrendsData << integrationstatisticstrendresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationTask请求参数结构体
      class DescribeIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型：201. stream,   202. offline
        # @type TaskType: Integer

        attr_accessor :TaskId, :ProjectId, :TaskType
        
        def initialize(taskid=nil, projectid=nil, tasktype=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
        end
      end

      # DescribeIntegrationTask返回参数结构体
      class DescribeIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationTaskInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId
        
        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = IntegrationTaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationTasks请求参数结构体
      class DescribeIntegrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 分页第n页
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 查询filter
        # @type Filters: Array
        # @param OrderFields: 排序字段信息
        # @type OrderFields: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param TaskType: 201. stream, 202. offline 默认实时
        # @type TaskType: Integer

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields, :StartTime, :EndTime, :TaskType
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, starttime=nil, endtime=nil, tasktype=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @StartTime = starttime
          @EndTime = endtime
          @TaskType = tasktype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskType = params['TaskType']
        end
      end

      # DescribeIntegrationTasks返回参数结构体
      class DescribeIntegrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfoSet: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfoSet, :RequestId
        
        def initialize(taskinfoset=nil, requestid=nil)
          @TaskInfoSet = taskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfoSet'].nil?
            @TaskInfoSet = []
            params['TaskInfoSet'].each do |i|
              integrationtaskinfo_tmp = IntegrationTaskInfo.new
              integrationtaskinfo_tmp.deserialize(i)
              @TaskInfoSet << integrationtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationVersionNodesInfo请求参数结构体
      class DescribeIntegrationVersionNodesInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskVersionPath: task version path
        # @type TaskVersionPath: String
        # @param TaskVersion: task version
        # @type TaskVersion: String

        attr_accessor :TaskId, :ProjectId, :TaskVersionPath, :TaskVersion
        
        def initialize(taskid=nil, projectid=nil, taskversionpath=nil, taskversion=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @TaskVersionPath = taskversionpath
          @TaskVersion = taskversion
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @TaskVersionPath = params['TaskVersionPath']
          @TaskVersion = params['TaskVersion']
        end
      end

      # DescribeIntegrationVersionNodesInfo返回参数结构体
      class DescribeIntegrationVersionNodesInfoResponse < TencentCloud::Common::AbstractModel
        # @param Nodes: 任务节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param Mappings: 任务映射信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mappings: Array
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Nodes, :Mappings, :TaskId, :RequestId
        
        def initialize(nodes=nil, mappings=nil, taskid=nil, requestid=nil)
          @Nodes = nodes
          @Mappings = mappings
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              integrationnodeinfo_tmp = IntegrationNodeInfo.new
              integrationnodeinfo_tmp.deserialize(i)
              @Nodes << integrationnodeinfo_tmp
            end
          end
          unless params['Mappings'].nil?
            @Mappings = []
            params['Mappings'].each do |i|
              integrationnodemapping_tmp = IntegrationNodeMapping.new
              integrationnodemapping_tmp.deserialize(i)
              @Mappings << integrationnodemapping_tmp
            end
          end
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKafkaTopicInfo请求参数结构体
      class DescribeKafkaTopicInfoRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源id
        # @type DatasourceId: String
        # @param Type: 数据源类型
        # @type Type: String

        attr_accessor :DatasourceId, :Type
        
        def initialize(datasourceid=nil, type=nil)
          @DatasourceId = datasourceid
          @Type = type
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @Type = params['Type']
        end
      end

      # DescribeKafkaTopicInfo返回参数结构体
      class DescribeKafkaTopicInfoResponse < TencentCloud::Common::AbstractModel
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

      # DescribeMonitorsByPage请求参数结构体
      class DescribeMonitorsByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderFields: 排序条件
        # @type OrderFields: Array
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer

        attr_accessor :ProjectId, :PageSize, :Filters, :OrderFields, :PageNumber
        
        def initialize(projectid=nil, pagesize=nil, filters=nil, orderfields=nil, pagenumber=nil)
          @ProjectId = projectid
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeMonitorsByPage返回参数结构体
      class DescribeMonitorsByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupMonitorPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupMonitorPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfflineTaskToken请求参数结构体
      class DescribeOfflineTaskTokenRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOfflineTaskToken返回参数结构体
      class DescribeOfflineTaskTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: 长连接临时token
        # @type Token: String
        # @param Data: 长连接临时token。与Token相同含义，优先取Data，Data为空时，取Token。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :Data, :RequestId
        
        def initialize(token=nil, data=nil, requestid=nil)
          @Token = token
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOperateTasks请求参数结构体
      class DescribeOperateTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param FolderIdList: 文件夹id，多个文件夹以逗号分隔
        # @type FolderIdList: String
        # @param WorkFlowIdList: 工作流id，多个工作流id之间以英文字符逗号分隔
        # @type WorkFlowIdList: String
        # @param WorkFlowNameList: 工作流名称，多个工作流名称之间以英文字符逗号分隔
        # @type WorkFlowNameList: String
        # @param TaskNameList: 任务名称，多个任务名称之间以英文字符逗号分隔
        # @type TaskNameList: String
        # @param TaskIdList: 任务id，多个任务id之间以英文字符逗号分隔
        # @type TaskIdList: String
        # @param PageNumber: 页号
        # @type PageNumber: String
        # @param PageSize: 分页大小
        # @type PageSize: String
        # @param SortItem: 排序字段，支持字段为FirstSubmitTime和FirstRunTime，标识最近提交和首次执行事件
        # @type SortItem: String
        # @param SortType: 排序类型。两种取值 DESC、ASC
        # @type SortType: String
        # @param InChargeList: 责任人，多个责任人之间以英文字符逗号分隔
        # @type InChargeList: String
        # @param TaskTypeIdList: 任务类型Id字符串，多个任务类型id之间以英文字符逗号分隔
        # @type TaskTypeIdList: String
        # @param StatusList: 任务状态字符串，多个任务状态之间以英文字符逗号分隔
        # @type StatusList: String
        # @param TaskCycleUnitList: 任务周期类型字符串，多个任务周期之间以英文字符逗号分隔
        # @type TaskCycleUnitList: String
        # @param ProductNameList: 任务所属产品类型
        # @type ProductNameList: String

        attr_accessor :ProjectId, :FolderIdList, :WorkFlowIdList, :WorkFlowNameList, :TaskNameList, :TaskIdList, :PageNumber, :PageSize, :SortItem, :SortType, :InChargeList, :TaskTypeIdList, :StatusList, :TaskCycleUnitList, :ProductNameList
        
        def initialize(projectid=nil, folderidlist=nil, workflowidlist=nil, workflownamelist=nil, tasknamelist=nil, taskidlist=nil, pagenumber=nil, pagesize=nil, sortitem=nil, sorttype=nil, inchargelist=nil, tasktypeidlist=nil, statuslist=nil, taskcycleunitlist=nil, productnamelist=nil)
          @ProjectId = projectid
          @FolderIdList = folderidlist
          @WorkFlowIdList = workflowidlist
          @WorkFlowNameList = workflownamelist
          @TaskNameList = tasknamelist
          @TaskIdList = taskidlist
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortItem = sortitem
          @SortType = sorttype
          @InChargeList = inchargelist
          @TaskTypeIdList = tasktypeidlist
          @StatusList = statuslist
          @TaskCycleUnitList = taskcycleunitlist
          @ProductNameList = productnamelist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderIdList = params['FolderIdList']
          @WorkFlowIdList = params['WorkFlowIdList']
          @WorkFlowNameList = params['WorkFlowNameList']
          @TaskNameList = params['TaskNameList']
          @TaskIdList = params['TaskIdList']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortItem = params['SortItem']
          @SortType = params['SortType']
          @InChargeList = params['InChargeList']
          @TaskTypeIdList = params['TaskTypeIdList']
          @StatusList = params['StatusList']
          @TaskCycleUnitList = params['TaskCycleUnitList']
          @ProductNameList = params['ProductNameList']
        end
      end

      # DescribeOperateTasks返回参数结构体
      class DescribeOperateTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务列表信息
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInfoPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInfoPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationalFunctions请求参数结构体
      class DescribeOrganizationalFunctionsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 场景类型：开发、使用
        # @type Type: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param Name: 函数名称
        # @type Name: String
        # @param DisplayName: 展示名称
        # @type DisplayName: String

        attr_accessor :Type, :ProjectId, :Name, :DisplayName
        
        def initialize(type=nil, projectid=nil, name=nil, displayname=nil)
          @Type = type
          @ProjectId = projectid
          @Name = name
          @DisplayName = displayname
        end

        def deserialize(params)
          @Type = params['Type']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
        end
      end

      # DescribeOrganizationalFunctions返回参数结构体
      class DescribeOrganizationalFunctionsResponse < TencentCloud::Common::AbstractModel
        # @param Content: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ErrorMessage, :RequestId
        
        def initialize(content=nil, errormessage=nil, requestid=nil)
          @Content = content
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              organizationalfunction_tmp = OrganizationalFunction.new
              organizationalfunction_tmp.deserialize(i)
              @Content << organizationalfunction_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProdTasks请求参数结构体
      class DescribeProdTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageSize: 页面大小
        # @type PageSize: Integer
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :ProjectId, :PageSize, :PageNumber, :Filters
        
        def initialize(projectid=nil, pagesize=nil, pagenumber=nil, filters=nil)
          @ProjectId = projectid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
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

      # DescribeProdTasks返回参数结构体
      class DescribeProdTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 生产调度任务列表
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
              prodschedulertask_tmp = ProdSchedulerTask.new
              prodschedulertask_tmp.deserialize(i)
              @Data << prodschedulertask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id。一般使用项目Id来查询，与projectName必须存在一个。
        # @type ProjectId: String
        # @param DescribeClusters: 是否展示关联集群信息
        # @type DescribeClusters: Boolean
        # @param DescribeExecutors: 是否展示关联执行组的信息，仅部分信息。
        # @type DescribeExecutors: Boolean
        # @param DescribeAdminUsers: 默认不展示项目管理员信息
        # @type DescribeAdminUsers: Boolean
        # @param DescribeMemberCount: 默认不统计项目人员数量
        # @type DescribeMemberCount: Boolean
        # @param DescribeCreator: 默认不查询创建者的信息
        # @type DescribeCreator: Boolean
        # @param ProjectName: 项目名只在租户内唯一，一般用来转化为项目ID。
        # @type ProjectName: String

        attr_accessor :ProjectId, :DescribeClusters, :DescribeExecutors, :DescribeAdminUsers, :DescribeMemberCount, :DescribeCreator, :ProjectName
        
        def initialize(projectid=nil, describeclusters=nil, describeexecutors=nil, describeadminusers=nil, describemembercount=nil, describecreator=nil, projectname=nil)
          @ProjectId = projectid
          @DescribeClusters = describeclusters
          @DescribeExecutors = describeexecutors
          @DescribeAdminUsers = describeadminusers
          @DescribeMemberCount = describemembercount
          @DescribeCreator = describecreator
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DescribeClusters = params['DescribeClusters']
          @DescribeExecutors = params['DescribeExecutors']
          @DescribeAdminUsers = params['DescribeAdminUsers']
          @DescribeMemberCount = params['DescribeMemberCount']
          @DescribeCreator = params['DescribeCreator']
          @ProjectName = params['ProjectName']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
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

      # DescribeQualityScore请求参数结构体
      class DescribeQualityScoreRequest < TencentCloud::Common::AbstractModel
        # @param StatisticsDate: 统计日期
        # @type StatisticsDate: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DatasourceId: 数据来源id
        # @type DatasourceId: String

        attr_accessor :StatisticsDate, :ProjectId, :DatasourceId
        
        def initialize(statisticsdate=nil, projectid=nil, datasourceid=nil)
          @StatisticsDate = statisticsdate
          @ProjectId = projectid
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @StatisticsDate = params['StatisticsDate']
          @ProjectId = params['ProjectId']
          @DatasourceId = params['DatasourceId']
        end
      end

      # DescribeQualityScore返回参数结构体
      class DescribeQualityScoreResponse < TencentCloud::Common::AbstractModel
        # @param Data: 质量评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.QualityScore`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityScore.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQualityScoreTrend请求参数结构体
      class DescribeQualityScoreTrendRequest < TencentCloud::Common::AbstractModel
        # @param StatisticsStartDate: 统计开始日期
        # @type StatisticsStartDate: Integer
        # @param StatisticsEndDate: 统计结束日期
        # @type StatisticsEndDate: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DatasourceId: 数据来源id
        # @type DatasourceId: String

        attr_accessor :StatisticsStartDate, :StatisticsEndDate, :ProjectId, :DatasourceId
        
        def initialize(statisticsstartdate=nil, statisticsenddate=nil, projectid=nil, datasourceid=nil)
          @StatisticsStartDate = statisticsstartdate
          @StatisticsEndDate = statisticsenddate
          @ProjectId = projectid
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @StatisticsStartDate = params['StatisticsStartDate']
          @StatisticsEndDate = params['StatisticsEndDate']
          @ProjectId = params['ProjectId']
          @DatasourceId = params['DatasourceId']
        end
      end

      # DescribeQualityScoreTrend返回参数结构体
      class DescribeQualityScoreTrendResponse < TencentCloud::Common::AbstractModel
        # @param Data: 质量评分趋势视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.QualityScoreTrend`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityScoreTrend.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealTimeTaskInstanceNodeInfo请求参数结构体
      class DescribeRealTimeTaskInstanceNodeInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 实时任务id
        # @type TaskId: String
        # @param ProjectId: 工程id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRealTimeTaskInstanceNodeInfo返回参数结构体
      class DescribeRealTimeTaskInstanceNodeInfoResponse < TencentCloud::Common::AbstractModel
        # @param RealTimeTaskInstanceNodeInfo: 实时任务实例节点相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTimeTaskInstanceNodeInfo: :class:`Tencentcloud::Wedata.v20210820.models.RealTimeTaskInstanceNodeInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RealTimeTaskInstanceNodeInfo, :RequestId
        
        def initialize(realtimetaskinstancenodeinfo=nil, requestid=nil)
          @RealTimeTaskInstanceNodeInfo = realtimetaskinstancenodeinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RealTimeTaskInstanceNodeInfo'].nil?
            @RealTimeTaskInstanceNodeInfo = RealTimeTaskInstanceNodeInfo.new
            @RealTimeTaskInstanceNodeInfo.deserialize(params['RealTimeTaskInstanceNodeInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealTimeTaskMetricOverview请求参数结构体
      class DescribeRealTimeTaskMetricOverviewRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 要查看的实时任务的任务Id
        # @type TaskId: String
        # @param ProjectId: 无
        # @type ProjectId: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :TaskId, :ProjectId, :StartTime, :EndTime
        
        def initialize(taskid=nil, projectid=nil, starttime=nil, endtime=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeRealTimeTaskMetricOverview返回参数结构体
      class DescribeRealTimeTaskMetricOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalRecordNumOfRead: 总读取记录数
        # @type TotalRecordNumOfRead: Integer
        # @param TotalRecordByteNumOfRead: 总读取字节数
        # @type TotalRecordByteNumOfRead: Integer
        # @param TotalRecordNumOfWrite: 总写入记录数
        # @type TotalRecordNumOfWrite: Integer
        # @param TotalRecordByteNumOfWrite: 总写入字节数 单位字节
        # @type TotalRecordByteNumOfWrite: Integer
        # @param TotalDirtyRecordNum: 总的脏记录数据
        # @type TotalDirtyRecordNum: Integer
        # @param TotalDirtyRecordByte: 总的脏字节数 单位字节
        # @type TotalDirtyRecordByte: Integer
        # @param TotalDuration: 运行时长 单位s
        # @type TotalDuration: Integer
        # @param BeginRunTime: 开始运行时间
        # @type BeginRunTime: String
        # @param EndRunTime: 目前运行到的时间
        # @type EndRunTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalRecordNumOfRead, :TotalRecordByteNumOfRead, :TotalRecordNumOfWrite, :TotalRecordByteNumOfWrite, :TotalDirtyRecordNum, :TotalDirtyRecordByte, :TotalDuration, :BeginRunTime, :EndRunTime, :RequestId
        
        def initialize(totalrecordnumofread=nil, totalrecordbytenumofread=nil, totalrecordnumofwrite=nil, totalrecordbytenumofwrite=nil, totaldirtyrecordnum=nil, totaldirtyrecordbyte=nil, totalduration=nil, beginruntime=nil, endruntime=nil, requestid=nil)
          @TotalRecordNumOfRead = totalrecordnumofread
          @TotalRecordByteNumOfRead = totalrecordbytenumofread
          @TotalRecordNumOfWrite = totalrecordnumofwrite
          @TotalRecordByteNumOfWrite = totalrecordbytenumofwrite
          @TotalDirtyRecordNum = totaldirtyrecordnum
          @TotalDirtyRecordByte = totaldirtyrecordbyte
          @TotalDuration = totalduration
          @BeginRunTime = beginruntime
          @EndRunTime = endruntime
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalRecordNumOfRead = params['TotalRecordNumOfRead']
          @TotalRecordByteNumOfRead = params['TotalRecordByteNumOfRead']
          @TotalRecordNumOfWrite = params['TotalRecordNumOfWrite']
          @TotalRecordByteNumOfWrite = params['TotalRecordByteNumOfWrite']
          @TotalDirtyRecordNum = params['TotalDirtyRecordNum']
          @TotalDirtyRecordByte = params['TotalDirtyRecordByte']
          @TotalDuration = params['TotalDuration']
          @BeginRunTime = params['BeginRunTime']
          @EndRunTime = params['EndRunTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealTimeTaskSpeed请求参数结构体
      class DescribeRealTimeTaskSpeedRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 无
        # @type TaskId: String
        # @param StartTime: 带毫秒的时间戳
        # @type StartTime: Integer
        # @param EndTime: 带毫秒的时间戳
        # @type EndTime: Integer
        # @param Granularity: 粒度，1或者5
        # @type Granularity: Integer
        # @param ProjectId: 无
        # @type ProjectId: String

        attr_accessor :TaskId, :StartTime, :EndTime, :Granularity, :ProjectId
        
        def initialize(taskid=nil, starttime=nil, endtime=nil, granularity=nil, projectid=nil)
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Granularity = granularity
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Granularity = params['Granularity']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRealTimeTaskSpeed返回参数结构体
      class DescribeRealTimeTaskSpeedResponse < TencentCloud::Common::AbstractModel
        # @param RecordsSpeedList: 同步速度条/s列表
        # @type RecordsSpeedList: Array
        # @param BytesSpeedList: 同步速度字节/s列表
        # @type BytesSpeedList: Array
        # @param Data: 同步速度，包括了RecordsSpeedList和BytesSpeedList
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RealTimeTaskSpeed`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordsSpeedList, :BytesSpeedList, :Data, :RequestId
        
        def initialize(recordsspeedlist=nil, bytesspeedlist=nil, data=nil, requestid=nil)
          @RecordsSpeedList = recordsspeedlist
          @BytesSpeedList = bytesspeedlist
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordsSpeedList'].nil?
            @RecordsSpeedList = []
            params['RecordsSpeedList'].each do |i|
              recordsspeed_tmp = RecordsSpeed.new
              recordsspeed_tmp.deserialize(i)
              @RecordsSpeedList << recordsspeed_tmp
            end
          end
          unless params['BytesSpeedList'].nil?
            @BytesSpeedList = []
            params['BytesSpeedList'].each do |i|
              bytesspeed_tmp = BytesSpeed.new
              bytesspeed_tmp.deserialize(i)
              @BytesSpeedList << bytesspeed_tmp
            end
          end
          unless params['Data'].nil?
            @Data = RealTimeTaskSpeed.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelatedInstances请求参数结构体
      class DescribeRelatedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CurRunDate: 数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type CurRunDate: String
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param Depth: 距离当前任务的层级距离，-1表示取父节点，1表示子节点
        # @type Depth: Integer
        # @param PageNumber: 页号，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认为10，最大不超过200
        # @type PageSize: Integer

        attr_accessor :ProjectId, :CurRunDate, :TaskId, :Depth, :PageNumber, :PageSize
        
        def initialize(projectid=nil, currundate=nil, taskid=nil, depth=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @CurRunDate = currundate
          @TaskId = taskid
          @Depth = depth
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CurRunDate = params['CurRunDate']
          @TaskId = params['TaskId']
          @Depth = params['Depth']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRelatedInstances返回参数结构体
      class DescribeRelatedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeTaskInstancesData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTaskInstancesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceManagePathTrees请求参数结构体
      class DescribeResourceManagePathTreesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Name: 名字，供搜索
        # @type Name: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param DirType: 文件夹类型
        # @type DirType: String

        attr_accessor :ProjectId, :Name, :FileType, :FilePath, :DirType
        
        def initialize(projectid=nil, name=nil, filetype=nil, filepath=nil, dirtype=nil)
          @ProjectId = projectid
          @Name = name
          @FileType = filetype
          @FilePath = filepath
          @DirType = dirtype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @FileType = params['FileType']
          @FilePath = params['FilePath']
          @DirType = params['DirType']
        end
      end

      # DescribeResourceManagePathTrees返回参数结构体
      class DescribeResourceManagePathTreesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应数据
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
              resourcepathtree_tmp = ResourcePathTree.new
              resourcepathtree_tmp.deserialize(i)
              @Data << resourcepathtree_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleDataSources请求参数结构体
      class DescribeRuleDataSourcesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param DatasourceId: 数据来源Id
        # @type DatasourceId: String
        # @param DsTypes: 数据源类型
        # @type DsTypes: Array

        attr_accessor :ProjectId, :DatasourceId, :DsTypes
        
        def initialize(projectid=nil, datasourceid=nil, dstypes=nil)
          @ProjectId = projectid
          @DatasourceId = datasourceid
          @DsTypes = dstypes
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DatasourceId = params['DatasourceId']
          @DsTypes = params['DsTypes']
        end
      end

      # DescribeRuleDataSources返回参数结构体
      class DescribeRuleDataSourcesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源列表
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
              databaseinfo_tmp = DatabaseInfo.new
              databaseinfo_tmp.deserialize(i)
              @Data << databaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleDimStat请求参数结构体
      class DescribeRuleDimStatRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: Project Id
        # @type ProjectId: String
        # @param BeginDate: 开始时间，时间戳到秒
        # @type BeginDate: String
        # @param EndDate: 结束时间，时间戳到秒
        # @type EndDate: String

        attr_accessor :ProjectId, :BeginDate, :EndDate
        
        def initialize(projectid=nil, begindate=nil, enddate=nil)
          @ProjectId = projectid
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeRuleDimStat返回参数结构体
      class DescribeRuleDimStatResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleDimStat`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleDimStat.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecDetail请求参数结构体
      class DescribeRuleExecDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleExecId: 规则执行id
        # @type RuleExecId: Integer

        attr_accessor :ProjectId, :RuleExecId
        
        def initialize(projectid=nil, ruleexecid=nil)
          @ProjectId = projectid
          @RuleExecId = ruleexecid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleExecId = params['RuleExecId']
        end
      end

      # DescribeRuleExecDetail返回参数结构体
      class DescribeRuleExecDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则执行结果详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecResultDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecResultDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecExportResult请求参数结构体
      class DescribeRuleExecExportResultRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleExecId: 规则执行id
        # @type RuleExecId: Integer

        attr_accessor :ProjectId, :RuleExecId
        
        def initialize(projectid=nil, ruleexecid=nil)
          @ProjectId = projectid
          @RuleExecId = ruleexecid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleExecId = params['RuleExecId']
        end
      end

      # DescribeRuleExecExportResult返回参数结构体
      class DescribeRuleExecExportResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 导出结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecExportResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecExportResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecHistory请求参数结构体
      class DescribeRuleExecHistoryRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :RuleId, :ProjectId
        
        def initialize(ruleid=nil, projectid=nil)
          @RuleId = ruleid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleExecHistory返回参数结构体
      class DescribeRuleExecHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则执行结果列表
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
              ruleexecresult_tmp = RuleExecResult.new
              ruleexecresult_tmp.deserialize(i)
              @Data << ruleexecresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecLog请求参数结构体
      class DescribeRuleExecLogRequest < TencentCloud::Common::AbstractModel
        # @param RuleExecId: 规则执行Id
        # @type RuleExecId: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleGroupExecId: 规则组执行id
        # @type RuleGroupExecId: Integer

        attr_accessor :RuleExecId, :ProjectId, :RuleGroupExecId
        
        def initialize(ruleexecid=nil, projectid=nil, rulegroupexecid=nil)
          @RuleExecId = ruleexecid
          @ProjectId = projectid
          @RuleGroupExecId = rulegroupexecid
        end

        def deserialize(params)
          @RuleExecId = params['RuleExecId']
          @ProjectId = params['ProjectId']
          @RuleGroupExecId = params['RuleGroupExecId']
        end
      end

      # DescribeRuleExecLog返回参数结构体
      class DescribeRuleExecLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则执行日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecLog`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecLog.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecResultsByPage请求参数结构体
      class DescribeRuleExecResultsByPageRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupExecId: 执行规则组ID
        # @type RuleGroupExecId: Integer
        # @param PageNumber: page number
        # @type PageNumber: Integer
        # @param PageSize: page size
        # @type PageSize: Integer

        attr_accessor :RuleGroupExecId, :PageNumber, :PageSize
        
        def initialize(rulegroupexecid=nil, pagenumber=nil, pagesize=nil)
          @RuleGroupExecId = rulegroupexecid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @RuleGroupExecId = params['RuleGroupExecId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRuleExecResultsByPage返回参数结构体
      class DescribeRuleExecResultsByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: results
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecResultPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecResultPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecResults请求参数结构体
      class DescribeRuleExecResultsRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupExecId: 规则组执行Id
        # @type RuleGroupExecId: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :RuleGroupExecId, :ProjectId
        
        def initialize(rulegroupexecid=nil, projectid=nil)
          @RuleGroupExecId = rulegroupexecid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleGroupExecId = params['RuleGroupExecId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleExecResults返回参数结构体
      class DescribeRuleExecResultsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则执行结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecResultPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecResultPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleExecStat请求参数结构体
      class DescribeRuleExecStatRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: ProjectId 值
        # @type ProjectId: String
        # @param BeginDate: 开始时间，时间戳到秒
        # @type BeginDate: String
        # @param EndDate: 结束时间，时间戳到秒
        # @type EndDate: String

        attr_accessor :ProjectId, :BeginDate, :EndDate
        
        def initialize(projectid=nil, begindate=nil, enddate=nil)
          @ProjectId = projectid
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeRuleExecStat返回参数结构体
      class DescribeRuleExecStatResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecStat`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleExecStat.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroupExecResultsByPage请求参数结构体
      class DescribeRuleGroupExecResultsByPageRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderFields: 排序字段
        # @type OrderFields: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :PageNumber, :PageSize, :Filters, :OrderFields, :ProjectId
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, projectid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @ProjectId = projectid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleGroupExecResultsByPage返回参数结构体
      class DescribeRuleGroupExecResultsByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组执行结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupExecResultPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupExecResultPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroupExecResultsByPageWithoutAuth请求参数结构体
      class DescribeRuleGroupExecResultsByPageWithoutAuthRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件，指定表ID过滤字段为 TableIds
        # @type Filters: Array
        # @param OrderFields: 排序字段
        # @type OrderFields: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :PageNumber, :PageSize, :Filters, :OrderFields, :ProjectId
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, projectid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @ProjectId = projectid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleGroupExecResultsByPageWithoutAuth返回参数结构体
      class DescribeRuleGroupExecResultsByPageWithoutAuthResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组执行结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupExecResultPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupExecResultPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroup请求参数结构体
      class DescribeRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param DatasourceId: 数据来源ID
        # @type DatasourceId: String
        # @param TableId: 数据表Id
        # @type TableId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DatabaseId: 数据库ID
        # @type DatabaseId: String

        attr_accessor :RuleGroupId, :DatasourceId, :TableId, :ProjectId, :DatabaseId
        
        def initialize(rulegroupid=nil, datasourceid=nil, tableid=nil, projectid=nil, databaseid=nil)
          @RuleGroupId = rulegroupid
          @DatasourceId = datasourceid
          @TableId = tableid
          @ProjectId = projectid
          @DatabaseId = databaseid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @DatasourceId = params['DatasourceId']
          @TableId = params['TableId']
          @ProjectId = params['ProjectId']
          @DatabaseId = params['DatabaseId']
        end
      end

      # DescribeRuleGroup返回参数结构体
      class DescribeRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据质量规则组详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroup.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroupSubscription请求参数结构体
      class DescribeRuleGroupSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleGroupId, :ProjectId
        
        def initialize(rulegroupid=nil, projectid=nil)
          @RuleGroupId = rulegroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleGroupSubscription返回参数结构体
      class DescribeRuleGroupSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组订阅信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupSubscribe`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupSubscribe.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroupTable请求参数结构体
      class DescribeRuleGroupTableRequest < TencentCloud::Common::AbstractModel
        # @param TableId: 表ID
        # @type TableId: String

        attr_accessor :TableId
        
        def initialize(tableid=nil)
          @TableId = tableid
        end

        def deserialize(params)
          @TableId = params['TableId']
        end
      end

      # DescribeRuleGroupTable返回参数结构体
      class DescribeRuleGroupTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupTable`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupTable.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleGroupsByPage请求参数结构体
      class DescribeRuleGroupsByPageRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件,每次请求的Filters的上限为10，Filter.Values的上限为5
        # @type Filters: Array
        # @param OrderFields: 排序方式
        # @type OrderFields: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :PageNumber, :PageSize, :Filters, :OrderFields, :ProjectId
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, projectid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @ProjectId = projectid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRuleGroupsByPage返回参数结构体
      class DescribeRuleGroupsByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleHistoryByPage请求参数结构体
      class DescribeRuleHistoryByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
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

      # DescribeRuleHistoryByPage返回参数结构体
      class DescribeRuleHistoryByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组操作历史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleHistoryPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleHistoryPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRule请求参数结构体
      class DescribeRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 质量规则ID
        # @type RuleId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleId, :ProjectId
        
        def initialize(ruleid=nil, projectid=nil)
          @RuleId = ruleid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRule返回参数结构体
      class DescribeRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.Rule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Rule.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleTablesByPage请求参数结构体
      class DescribeRuleTablesByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageSize: 分页序号
        # @type PageSize: Integer
        # @param PageNumber: 分页大小
        # @type PageNumber: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderFields: 排序条件
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageSize, :PageNumber, :Filters, :OrderFields
        
        def initialize(projectid=nil, pagesize=nil, pagenumber=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Filters = filters
          @OrderFields = orderfields
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
        end
      end

      # DescribeRuleTablesByPage返回参数结构体
      class DescribeRuleTablesByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 表列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleGroupPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleTemplate请求参数结构体
      class DescribeRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TemplateId: 规则模板Id
        # @type TemplateId: Integer

        attr_accessor :ProjectId, :TemplateId
        
        def initialize(projectid=nil, templateid=nil)
          @ProjectId = projectid
          @TemplateId = templateid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeRuleTemplate返回参数结构体
      class DescribeRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 模板详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleTemplate.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleTemplatesByPage请求参数结构体
      class DescribeRuleTemplatesByPageRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页
        # @type PageNumber: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer
        # @param ProjectId: 工作空间ID
        # @type ProjectId: String
        # @param OrderFields: 通用排序字段
        # @type OrderFields: Array
        # @param Filters: 通用过滤条件
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :ProjectId, :OrderFields, :Filters
        
        def initialize(pagenumber=nil, pagesize=nil, projectid=nil, orderfields=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ProjectId = projectid
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
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

      # DescribeRuleTemplatesByPage返回参数结构体
      class DescribeRuleTemplatesByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleTemplatePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleTemplatePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleTemplates请求参数结构体
      class DescribeRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 模版类型 1.系统模版 2.自定义模版
        # @type Type: Integer
        # @param SourceObjectType: 1.常量 2.离线表级 2.离线字段级
        # @type SourceObjectType: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SourceEngineTypes: 源端对应的引擎类型
        # @type SourceEngineTypes: Array

        attr_accessor :Type, :SourceObjectType, :ProjectId, :SourceEngineTypes
        
        def initialize(type=nil, sourceobjecttype=nil, projectid=nil, sourceenginetypes=nil)
          @Type = type
          @SourceObjectType = sourceobjecttype
          @ProjectId = projectid
          @SourceEngineTypes = sourceenginetypes
        end

        def deserialize(params)
          @Type = params['Type']
          @SourceObjectType = params['SourceObjectType']
          @ProjectId = params['ProjectId']
          @SourceEngineTypes = params['SourceEngineTypes']
        end
      end

      # DescribeRuleTemplates返回参数结构体
      class DescribeRuleTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则模版列表
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
              ruletemplate_tmp = RuleTemplate.new
              ruletemplate_tmp.deserialize(i)
              @Data << ruletemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRulesByPage请求参数结构体
      class DescribeRulesByPageRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderFields: 排序字段
        # @type OrderFields: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :PageNumber, :PageSize, :Filters, :OrderFields, :ProjectId
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, projectid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @ProjectId = projectid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRulesByPage返回参数结构体
      class DescribeRulesByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则质量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RulePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RulePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RuleGroupId: 规则组id
        # @type RuleGroupId: Integer

        attr_accessor :ProjectId, :RuleGroupId
        
        def initialize(projectid=nil, rulegroupid=nil)
          @ProjectId = projectid
          @RuleGroupId = rulegroupid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupId = params['RuleGroupId']
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则列表
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
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Data << rule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStandardRuleDetailInfoList请求参数结构体
      class DescribeStandardRuleDetailInfoListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 空间、项目id
        # @type ProjectId: String
        # @param Type: 标准分类11编码映射 12数据过滤 13字符串转换 14数据元定义 15正则表达 16术语词典
        # @type Type: Integer

        attr_accessor :ProjectId, :Type
        
        def initialize(projectid=nil, type=nil)
          @ProjectId = projectid
          @Type = type
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Type = params['Type']
        end
      end

      # DescribeStandardRuleDetailInfoList返回参数结构体
      class DescribeStandardRuleDetailInfoListResponse < TencentCloud::Common::AbstractModel
        # @param StandardRuleDetailList: 返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardRuleDetailList: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StandardRuleDetailList, :RequestId
        
        def initialize(standardruledetaillist=nil, requestid=nil)
          @StandardRuleDetailList = standardruledetaillist
          @RequestId = requestid
        end

        def deserialize(params)
          @StandardRuleDetailList = params['StandardRuleDetailList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStreamTaskLogList请求参数结构体
      class DescribeStreamTaskLogListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param JobId: 作业ID
        # @type JobId: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Container: container名字
        # @type Container: String
        # @param Limit: 条数
        # @type Limit: Integer
        # @param OrderType: 排序类型 desc asc
        # @type OrderType: String
        # @param RunningOrderId: 作业运行的实例ID
        # @type RunningOrderId: Integer

        attr_accessor :ProjectId, :TaskId, :JobId, :EndTime, :StartTime, :Container, :Limit, :OrderType, :RunningOrderId
        
        def initialize(projectid=nil, taskid=nil, jobid=nil, endtime=nil, starttime=nil, container=nil, limit=nil, ordertype=nil, runningorderid=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @JobId = jobid
          @EndTime = endtime
          @StartTime = starttime
          @Container = container
          @Limit = limit
          @OrderType = ordertype
          @RunningOrderId = runningorderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @JobId = params['JobId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Container = params['Container']
          @Limit = params['Limit']
          @OrderType = params['OrderType']
          @RunningOrderId = params['RunningOrderId']
        end
      end

      # DescribeStreamTaskLogList返回参数结构体
      class DescribeStreamTaskLogListResponse < TencentCloud::Common::AbstractModel
        # @param ListOver: 是否是全量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListOver: Boolean
        # @param LogContentList: 日志集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogContentList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListOver, :LogContentList, :RequestId
        
        def initialize(listover=nil, logcontentlist=nil, requestid=nil)
          @ListOver = listover
          @LogContentList = logcontentlist
          @RequestId = requestid
        end

        def deserialize(params)
          @ListOver = params['ListOver']
          unless params['LogContentList'].nil?
            @LogContentList = []
            params['LogContentList'].each do |i|
              logcontentinfo_tmp = LogContentInfo.new
              logcontentinfo_tmp.deserialize(i)
              @LogContentList << logcontentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableInfoList请求参数结构体
      class DescribeTableInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 表名
        # @type Filters: Array
        # @param ConnectionType: 如果是hive这里写rpc，如果是其他类型不传
        # @type ConnectionType: String
        # @param Catalog: 数据库源类型
        # @type Catalog: String

        attr_accessor :Filters, :ConnectionType, :Catalog
        
        def initialize(filters=nil, connectiontype=nil, catalog=nil)
          @Filters = filters
          @ConnectionType = connectiontype
          @Catalog = catalog
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
          @ConnectionType = params['ConnectionType']
          @Catalog = params['Catalog']
        end
      end

      # DescribeTableInfoList返回参数结构体
      class DescribeTableInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TableInfo: 表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableInfo, :RequestId
        
        def initialize(tableinfo=nil, requestid=nil)
          @TableInfo = tableinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableInfo'].nil?
            @TableInfo = []
            params['TableInfo'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @TableInfo << tableinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableQualityDetails请求参数结构体
      class DescribeTableQualityDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StatisticsDate: 统计日期
        # @type StatisticsDate: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤参数TableName、DatabaseId 、DatabaseName、OwnerUserName
        # @type Filters: Array
        # @param OrderFields: 排序参数 排序方式 DESC 或者 ASC，表得分排序 TableScore
        # @type OrderFields: Array
        # @param DatasourceId: 数据来源id
        # @type DatasourceId: String

        attr_accessor :StatisticsDate, :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields, :DatasourceId
        
        def initialize(statisticsdate=nil, projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil, datasourceid=nil)
          @StatisticsDate = statisticsdate
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @StatisticsDate = params['StatisticsDate']
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
          @DatasourceId = params['DatasourceId']
        end
      end

      # DescribeTableQualityDetails返回参数结构体
      class DescribeTableQualityDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 表质量分详情结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TableQualityDetailPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TableQualityDetailPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableSchemaInfo请求参数结构体
      class DescribeTableSchemaInfoRequest < TencentCloud::Common::AbstractModel
        # @param Name: 表名称
        # @type Name: String
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param MsType: 表类型
        # @type MsType: String
        # @param DatasourceId: 数据源id
        # @type DatasourceId: String
        # @param ConnectionType: HIVE传rpc
        # @type ConnectionType: String
        # @param SchemaName: 元数据Database下的Schema名称
        # @type SchemaName: String

        attr_accessor :Name, :DatabaseName, :MsType, :DatasourceId, :ConnectionType, :SchemaName
        
        def initialize(name=nil, databasename=nil, mstype=nil, datasourceid=nil, connectiontype=nil, schemaname=nil)
          @Name = name
          @DatabaseName = databasename
          @MsType = mstype
          @DatasourceId = datasourceid
          @ConnectionType = connectiontype
          @SchemaName = schemaname
        end

        def deserialize(params)
          @Name = params['Name']
          @DatabaseName = params['DatabaseName']
          @MsType = params['MsType']
          @DatasourceId = params['DatasourceId']
          @ConnectionType = params['ConnectionType']
          @SchemaName = params['SchemaName']
        end
      end

      # DescribeTableSchemaInfo返回参数结构体
      class DescribeTableSchemaInfoResponse < TencentCloud::Common::AbstractModel
        # @param SchemaInfoList: 123
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SchemaInfoList, :RequestId
        
        def initialize(schemainfolist=nil, requestid=nil)
          @SchemaInfoList = schemainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SchemaInfoList'].nil?
            @SchemaInfoList = []
            params['SchemaInfoList'].each do |i|
              schemadetail_tmp = SchemaDetail.new
              schemadetail_tmp.deserialize(i)
              @SchemaInfoList << schemadetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableScoreTrend请求参数结构体
      class DescribeTableScoreTrendRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param StatisticsStartDate: 开始时间 秒级时间戳
        # @type StatisticsStartDate: Integer
        # @param StatisticsEndDate: 结束时间 秒级时间戳
        # @type StatisticsEndDate: Integer
        # @param TableId: 表id
        # @type TableId: String

        attr_accessor :ProjectId, :StatisticsStartDate, :StatisticsEndDate, :TableId
        
        def initialize(projectid=nil, statisticsstartdate=nil, statisticsenddate=nil, tableid=nil)
          @ProjectId = projectid
          @StatisticsStartDate = statisticsstartdate
          @StatisticsEndDate = statisticsenddate
          @TableId = tableid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @StatisticsStartDate = params['StatisticsStartDate']
          @StatisticsEndDate = params['StatisticsEndDate']
          @TableId = params['TableId']
        end
      end

      # DescribeTableScoreTrend返回参数结构体
      class DescribeTableScoreTrendResponse < TencentCloud::Common::AbstractModel
        # @param Data: 表得分趋势
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.QualityScoreTrend`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityScoreTrend.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskAlarmRegulations请求参数结构体
      class DescribeTaskAlarmRegulationsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskType: 任务类型(201代表实时任务，202代表离线任务)
        # @type TaskType: Integer
        # @param PageNumber: 当前页
        # @type PageNumber: Integer
        # @param PageSize: 每页记录数
        # @type PageSize: Integer
        # @param Filters: 过滤条件(name有RegularStatus、AlarmLevel、AlarmIndicator、RegularName)
        # @type Filters: Array
        # @param OrderFields: 排序条件(RegularId)
        # @type OrderFields: Array

        attr_accessor :TaskId, :ProjectId, :TaskType, :PageNumber, :PageSize, :Filters, :OrderFields
        
        def initialize(taskid=nil, projectid=nil, tasktype=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @TaskType = tasktype
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
        end
      end

      # DescribeTaskAlarmRegulations返回参数结构体
      class DescribeTaskAlarmRegulationsResponse < TencentCloud::Common::AbstractModel
        # @param TaskAlarmInfos: 任务告警规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAlarmInfos: Array
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskAlarmInfos, :TotalCount, :RequestId
        
        def initialize(taskalarminfos=nil, totalcount=nil, requestid=nil)
          @TaskAlarmInfos = taskalarminfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskAlarmInfos'].nil?
            @TaskAlarmInfos = []
            params['TaskAlarmInfos'].each do |i|
              taskalarminfo_tmp = TaskAlarmInfo.new
              taskalarminfo_tmp.deserialize(i)
              @TaskAlarmInfos << taskalarminfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskAlarmStatus: 任务告警状态
        # @type TaskAlarmStatus: Integer

        attr_accessor :ProjectId, :TaskId, :TaskAlarmStatus
        
        def initialize(projectid=nil, taskid=nil, taskalarmstatus=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @TaskAlarmStatus = taskalarmstatus
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @TaskAlarmStatus = params['TaskAlarmStatus']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInfoData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInfoData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInstanceReportDetail请求参数结构体
      class DescribeTaskInstanceReportDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 任务实例数据时间
        # @type CurRunDate: String
        # @param IssueDate: 任务实例运行时间
        # @type IssueDate: String

        attr_accessor :ProjectId, :TaskId, :CurRunDate, :IssueDate
        
        def initialize(projectid=nil, taskid=nil, currundate=nil, issuedate=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @CurRunDate = currundate
          @IssueDate = issuedate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @IssueDate = params['IssueDate']
        end
      end

      # DescribeTaskInstanceReportDetail返回参数结构体
      class DescribeTaskInstanceReportDetailResponse < TencentCloud::Common::AbstractModel
        # @param Summary: 任务实例运行指标概览
        # @type Summary: :class:`Tencentcloud::Wedata.v20210820.models.InstanceReportSummary`
        # @param ReadNode: 任务实例读取节点运行指标
        # @type ReadNode: :class:`Tencentcloud::Wedata.v20210820.models.InstanceReportReadNode`
        # @param WriteNode: 任务实例写入节点运行指标
        # @type WriteNode: :class:`Tencentcloud::Wedata.v20210820.models.InstanceReportWriteNode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Summary, :ReadNode, :WriteNode, :RequestId
        
        def initialize(summary=nil, readnode=nil, writenode=nil, requestid=nil)
          @Summary = summary
          @ReadNode = readnode
          @WriteNode = writenode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Summary'].nil?
            @Summary = InstanceReportSummary.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['ReadNode'].nil?
            @ReadNode = InstanceReportReadNode.new
            @ReadNode.deserialize(params['ReadNode'])
          end
          unless params['WriteNode'].nil?
            @WriteNode = InstanceReportWriteNode.new
            @WriteNode.deserialize(params['WriteNode'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInstance请求参数结构体
      class DescribeTaskInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 任务实例数据时间
        # @type CurRunDate: String
        # @param IssueDate: 任务实例运行时间
        # @type IssueDate: String

        attr_accessor :ProjectId, :TaskId, :CurRunDate, :IssueDate
        
        def initialize(projectid=nil, taskid=nil, currundate=nil, issuedate=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @CurRunDate = currundate
          @IssueDate = issuedate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @IssueDate = params['IssueDate']
        end
      end

      # DescribeTaskInstance返回参数结构体
      class DescribeTaskInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskInstanceDetail: 任务实例详情
        # @type TaskInstanceDetail: :class:`Tencentcloud::Wedata.v20210820.models.TaskInstanceDetail`
        # @param Data: 任务实例详情。与TaskInstanceDetail相同含义，优先取Data，Data为空时，取TaskInstanceDetail
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInstanceDetail, :Data, :RequestId
        
        def initialize(taskinstancedetail=nil, data=nil, requestid=nil)
          @TaskInstanceDetail = taskinstancedetail
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInstanceDetail'].nil?
            @TaskInstanceDetail = TaskInstanceDetail.new
            @TaskInstanceDetail.deserialize(params['TaskInstanceDetail'])
          end
          unless params['Data'].nil?
            @Data = TaskInstanceDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务实例列表
      class DescribeTaskInstancesData < TencentCloud::Common::AbstractModel
        # @param Items: 实例列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskinstanceinfo_tmp = TaskInstanceInfo.new
              taskinstanceinfo_tmp.deserialize(i)
              @Items << taskinstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTaskInstances请求参数结构体
      class DescribeTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 页号，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认为10，最大不超过200
        # @type PageSize: Integer
        # @param WorkflowIdList: 工作流id列表
        # @type WorkflowIdList: Array
        # @param WorkflowNameList: 工作流名称列表，支持模糊搜索
        # @type WorkflowNameList: Array
        # @param DateFrom: 起始数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type DateFrom: String
        # @param DateTo: 结束数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type DateTo: String
        # @param TaskIdList: 任务id列表
        # @type TaskIdList: Array
        # @param TaskNameList: 任务名称列表，支持模糊搜索
        # @type TaskNameList: Array
        # @param InChargeList: 责任人名称列表
        # @type InChargeList: Array
        # @param TaskTypeIdList: 任务类型码列表，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # @type TaskTypeIdList: Array
        # @param StateList: 实例状态列表，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        # @type StateList: Array
        # @param TaskCycleUnitList: 周期类型列表，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        # @type TaskCycleUnitList: Array
        # @param InstanceType: 实例类型，0补录实例，1周期实例，2非周期实例
        # @type InstanceType: Integer
        # @param OrderFields: 排序字段信息列表，ScheduleDateTime / CostTime / StartTime / EndTime
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :WorkflowIdList, :WorkflowNameList, :DateFrom, :DateTo, :TaskIdList, :TaskNameList, :InChargeList, :TaskTypeIdList, :StateList, :TaskCycleUnitList, :InstanceType, :OrderFields
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, workflowidlist=nil, workflownamelist=nil, datefrom=nil, dateto=nil, taskidlist=nil, tasknamelist=nil, inchargelist=nil, tasktypeidlist=nil, statelist=nil, taskcycleunitlist=nil, instancetype=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowIdList = workflowidlist
          @WorkflowNameList = workflownamelist
          @DateFrom = datefrom
          @DateTo = dateto
          @TaskIdList = taskidlist
          @TaskNameList = tasknamelist
          @InChargeList = inchargelist
          @TaskTypeIdList = tasktypeidlist
          @StateList = statelist
          @TaskCycleUnitList = taskcycleunitlist
          @InstanceType = instancetype
          @OrderFields = orderfields
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowIdList = params['WorkflowIdList']
          @WorkflowNameList = params['WorkflowNameList']
          @DateFrom = params['DateFrom']
          @DateTo = params['DateTo']
          @TaskIdList = params['TaskIdList']
          @TaskNameList = params['TaskNameList']
          @InChargeList = params['InChargeList']
          @TaskTypeIdList = params['TaskTypeIdList']
          @StateList = params['StateList']
          @TaskCycleUnitList = params['TaskCycleUnitList']
          @InstanceType = params['InstanceType']
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
        end
      end

      # DescribeTaskInstances返回参数结构体
      class DescribeTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeTaskInstancesData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTaskInstancesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLockStatus请求参数结构体
      class DescribeTaskLockStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型：201. stream,   202. offline
        # @type TaskType: Integer

        attr_accessor :TaskId, :ProjectId, :TaskType
        
        def initialize(taskid=nil, projectid=nil, tasktype=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
        end
      end

      # DescribeTaskLockStatus返回参数结构体
      class DescribeTaskLockStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskLockStatus: 任务锁状态信息
        # @type TaskLockStatus: :class:`Tencentcloud::Wedata.v20210820.models.TaskLockStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskLockStatus, :RequestId
        
        def initialize(tasklockstatus=nil, requestid=nil)
          @TaskLockStatus = tasklockstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskLockStatus'].nil?
            @TaskLockStatus = TaskLockStatus.new
            @TaskLockStatus.deserialize(params['TaskLockStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskReportDetailList请求参数结构体
      class DescribeTaskReportDetailListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: WeData项目id
        # @type ProjectId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param BeginDate: 统计周期的开始日期，格式为 yyyy-MM-dd
        # @type BeginDate: String
        # @param EndDate: 统计周期的结束日期，格式为 yyyy-MM-dd
        # @type EndDate: String
        # @param StateList: 任务状态，多个状态用逗号连接
        # @type StateList: String
        # @param SortItem: 排序字段名
        # @type SortItem: String
        # @param SortType: 升序或降序，传ASC或DESC
        # @type SortType: String
        # @param PageIndex: 页数，从1开始
        # @type PageIndex: Integer
        # @param PageSize: 每页的记录条数，默认10条
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :BeginDate, :EndDate, :StateList, :SortItem, :SortType, :PageIndex, :PageSize
        
        def initialize(projectid=nil, taskid=nil, begindate=nil, enddate=nil, statelist=nil, sortitem=nil, sorttype=nil, pageindex=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @BeginDate = begindate
          @EndDate = enddate
          @StateList = statelist
          @SortItem = sortitem
          @SortType = sorttype
          @PageIndex = pageindex
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @StateList = params['StateList']
          @SortItem = params['SortItem']
          @SortType = params['SortType']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTaskReportDetailList返回参数结构体
      class DescribeTaskReportDetailListResponse < TencentCloud::Common::AbstractModel
        # @param PageIndex: 页码，从1开始
        # @type PageIndex: Integer
        # @param PageSize: 每页的记录数
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param Items: 任务运行指标
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageIndex, :PageSize, :TotalCount, :TotalPage, :Items, :RequestId
        
        def initialize(pageindex=nil, pagesize=nil, totalcount=nil, totalpage=nil, items=nil, requestid=nil)
          @PageIndex = pageindex
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPage = totalpage
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskreportdetail_tmp = TaskReportDetail.new
              taskreportdetail_tmp.deserialize(i)
              @Items << taskreportdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskReport请求参数结构体
      class DescribeTaskReportRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param BeginDate: 统计周期的开始日期，格式为 yyyy-MM-dd
        # @type BeginDate: String
        # @param EndDate: 统计周期的结束日期，格式为 yyyy-MM-dd
        # @type EndDate: String
        # @param ProjectId: WeData项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :BeginDate, :EndDate, :ProjectId
        
        def initialize(taskid=nil, begindate=nil, enddate=nil, projectid=nil)
          @TaskId = taskid
          @BeginDate = begindate
          @EndDate = enddate
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeTaskReport返回参数结构体
      class DescribeTaskReportResponse < TencentCloud::Common::AbstractModel
        # @param TotalReadRecords: 总读取条数
        # @type TotalReadRecords: Integer
        # @param TotalReadBytes: 总读取字节数，单位为Byte
        # @type TotalReadBytes: Integer
        # @param TotalWriteRecords: 总写入条数
        # @type TotalWriteRecords: Integer
        # @param TotalWriteBytes: 总写入字节数，单位为Byte
        # @type TotalWriteBytes: Integer
        # @param TotalErrorRecords: 总脏数据条数
        # @type TotalErrorRecords: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalReadRecords, :TotalReadBytes, :TotalWriteRecords, :TotalWriteBytes, :TotalErrorRecords, :RequestId
        
        def initialize(totalreadrecords=nil, totalreadbytes=nil, totalwriterecords=nil, totalwritebytes=nil, totalerrorrecords=nil, requestid=nil)
          @TotalReadRecords = totalreadrecords
          @TotalReadBytes = totalreadbytes
          @TotalWriteRecords = totalwriterecords
          @TotalWriteBytes = totalwritebytes
          @TotalErrorRecords = totalerrorrecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalReadRecords = params['TotalReadRecords']
          @TotalReadBytes = params['TotalReadBytes']
          @TotalWriteRecords = params['TotalWriteRecords']
          @TotalWriteBytes = params['TotalWriteBytes']
          @TotalErrorRecords = params['TotalErrorRecords']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskScript请求参数结构体
      class DescribeTaskScriptRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :ProjectId, :TaskId
        
        def initialize(projectid=nil, taskid=nil)
          @ProjectId = projectid
          @TaskId = taskid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskScript返回参数结构体
      class DescribeTaskScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskScriptContent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskScriptContent.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasksByPage请求参数结构体
      class DescribeTasksByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :WorkflowId, :PageNumber, :PageSize
        
        def initialize(projectid=nil, workflowid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTasksByPage返回参数结构体
      class DescribeTasksByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInfoDataPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInfoDataPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplateDimCount请求参数结构体
      class DescribeTemplateDimCountRequest < TencentCloud::Common::AbstractModel
        # @param Type: 模版类型
        # @type Type: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Type, :ProjectId
        
        def initialize(type=nil, projectid=nil)
          @Type = type
          @ProjectId = projectid
        end

        def deserialize(params)
          @Type = params['Type']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeTemplateDimCount返回参数结构体
      class DescribeTemplateDimCountResponse < TencentCloud::Common::AbstractModel
        # @param Data: 维度统计结果
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
              dimensioncount_tmp = DimensionCount.new
              dimensioncount_tmp.deserialize(i)
              @Data << dimensioncount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplateHistory请求参数结构体
      class DescribeTemplateHistoryRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :PageNumber, :PageSize, :Filters, :ProjectId
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, projectid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @ProjectId = projectid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeTemplateHistory返回参数结构体
      class DescribeTemplateHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.RuleTemplateHistoryPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleTemplateHistoryPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopTableStat请求参数结构体
      class DescribeTopTableStatRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: Project Id
        # @type ProjectId: String
        # @param BeginDate: 开始时间，时间戳到秒
        # @type BeginDate: String
        # @param EndDate: 结束时间，时间戳到秒
        # @type EndDate: String

        attr_accessor :ProjectId, :BeginDate, :EndDate
        
        def initialize(projectid=nil, begindate=nil, enddate=nil)
          @ProjectId = projectid
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeTopTableStat返回参数结构体
      class DescribeTopTableStatResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TopTableStat`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TopTableStat.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrendStat请求参数结构体
      class DescribeTrendStatRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: Project id
        # @type ProjectId: String
        # @param BeginDate: 开始时间，时间戳到秒
        # @type BeginDate: String
        # @param EndDate: 结束时间，时间戳到秒
        # @type EndDate: String

        attr_accessor :ProjectId, :BeginDate, :EndDate
        
        def initialize(projectid=nil, begindate=nil, enddate=nil)
          @ProjectId = projectid
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeTrendStat返回参数结构体
      class DescribeTrendStatResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
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
              ruleexecdatestat_tmp = RuleExecDateStat.new
              ruleexecdatestat_tmp.deserialize(i)
              @Data << ruleexecdatestat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 维度统计业务视图
      class DimensionCount < TencentCloud::Common::AbstractModel
        # @param DimType: 维度类型1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DimType: Integer
        # @param Count: 统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :DimType, :Count
        
        def initialize(dimtype=nil, count=nil)
          @DimType = dimtype
          @Count = count
        end

        def deserialize(params)
          @DimType = params['DimType']
          @Count = params['Count']
        end
      end

      # 维度评分
      class DimensionScore < TencentCloud::Common::AbstractModel
        # @param DimensionScoreList: 维度评分列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DimensionScoreList: Array

        attr_accessor :DimensionScoreList
        
        def initialize(dimensionscorelist=nil)
          @DimensionScoreList = dimensionscorelist
        end

        def deserialize(params)
          unless params['DimensionScoreList'].nil?
            @DimensionScoreList = []
            params['DimensionScoreList'].each do |i|
              dimensionscoreinfo_tmp = DimensionScoreInfo.new
              dimensionscoreinfo_tmp.deserialize(i)
              @DimensionScoreList << dimensionscoreinfo_tmp
            end
          end
        end
      end

      # 维度评分信息
      class DimensionScoreInfo < TencentCloud::Common::AbstractModel
        # @param Name: 维度名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Float
        # @param UserId: 设置人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: Integer
        # @param UserName: 设置人名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UpdateTime: 更新时间 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param JoinTableNumber: 参与评估表数量
        # @type JoinTableNumber: Integer
        # @param Score: 评分
        # @type Score: Float

        attr_accessor :Name, :Weight, :UserId, :UserName, :UpdateTime, :JoinTableNumber, :Score
        
        def initialize(name=nil, weight=nil, userid=nil, username=nil, updatetime=nil, jointablenumber=nil, score=nil)
          @Name = name
          @Weight = weight
          @UserId = userid
          @UserName = username
          @UpdateTime = updatetime
          @JoinTableNumber = jointablenumber
          @Score = score
        end

        def deserialize(params)
          @Name = params['Name']
          @Weight = params['Weight']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @UpdateTime = params['UpdateTime']
          @JoinTableNumber = params['JoinTableNumber']
          @Score = params['Score']
        end
      end

      # DryRunDIOfflineTask请求参数结构体
      class DryRunDIOfflineTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ResourceGroup: 资源组Id
        # @type ResourceGroup: String
        # @param TaskTypeId: 默认 27
        # @type TaskTypeId: Integer

        attr_accessor :TaskId, :ProjectId, :ResourceGroup, :TaskTypeId
        
        def initialize(taskid=nil, projectid=nil, resourcegroup=nil, tasktypeid=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @ResourceGroup = resourcegroup
          @TaskTypeId = tasktypeid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @ResourceGroup = params['ResourceGroup']
          @TaskTypeId = params['TaskTypeId']
        end
      end

      # DryRunDIOfflineTask返回参数结构体
      class DryRunDIOfflineTaskResponse < TencentCloud::Common::AbstractModel
        # @param CurrentRunDate: 数据时间
        # @type CurrentRunDate: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Status: 任务状态
        # @type Status: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskInstanceKey: 任务实例唯一key
        # @type TaskInstanceKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CurrentRunDate, :ProjectId, :Status, :TaskId, :TaskInstanceKey, :RequestId
        
        def initialize(currentrundate=nil, projectid=nil, status=nil, taskid=nil, taskinstancekey=nil, requestid=nil)
          @CurrentRunDate = currentrundate
          @ProjectId = projectid
          @Status = status
          @TaskId = taskid
          @TaskInstanceKey = taskinstancekey
          @RequestId = requestid
        end

        def deserialize(params)
          @CurrentRunDate = params['CurrentRunDate']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @TaskId = params['TaskId']
          @TaskInstanceKey = params['TaskInstanceKey']
          @RequestId = params['RequestId']
        end
      end

      # 数据导出任务详情
      class ExportTaskInfo < TencentCloud::Common::AbstractModel
        # @param ExportTaskId: 导出任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExportTaskId: Integer
        # @param TaskType: 导出任务类型(1.全部,2.触发行,3.通过行)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param OperatorId: 任务创建人 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorId: Integer
        # @param OperatorName: 任务创建人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorName: String
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Status: 导出状态(1.已提交 2.导出中 3.导出成功 4.导出失败)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param SchedulerTaskId: 调度任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerTaskId: String
        # @param SchedulerCurRunDate: 调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerCurRunDate: String
        # @param FilePath: 文件相对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String

        attr_accessor :ExportTaskId, :TaskType, :OperatorId, :OperatorName, :CreateTime, :Status, :SchedulerTaskId, :SchedulerCurRunDate, :FilePath
        
        def initialize(exporttaskid=nil, tasktype=nil, operatorid=nil, operatorname=nil, createtime=nil, status=nil, schedulertaskid=nil, schedulercurrundate=nil, filepath=nil)
          @ExportTaskId = exporttaskid
          @TaskType = tasktype
          @OperatorId = operatorid
          @OperatorName = operatorname
          @CreateTime = createtime
          @Status = status
          @SchedulerTaskId = schedulertaskid
          @SchedulerCurRunDate = schedulercurrundate
          @FilePath = filepath
        end

        def deserialize(params)
          @ExportTaskId = params['ExportTaskId']
          @TaskType = params['TaskType']
          @OperatorId = params['OperatorId']
          @OperatorName = params['OperatorName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @SchedulerTaskId = params['SchedulerTaskId']
          @SchedulerCurRunDate = params['SchedulerCurRunDate']
          @FilePath = params['FilePath']
        end
      end

      # 字段变量
      class FieldConfig < TencentCloud::Common::AbstractModel
        # @param FieldKey: 字段key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldKey: String
        # @param FieldValue: 字段值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldValue: String
        # @param FieldDataType: 字段值类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldDataType: String

        attr_accessor :FieldKey, :FieldValue, :FieldDataType
        
        def initialize(fieldkey=nil, fieldvalue=nil, fielddatatype=nil)
          @FieldKey = fieldkey
          @FieldValue = fieldvalue
          @FieldDataType = fielddatatype
        end

        def deserialize(params)
          @FieldKey = params['FieldKey']
          @FieldValue = params['FieldValue']
          @FieldDataType = params['FieldDataType']
        end
      end

      # 通用过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤值列表
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

      # 文件夹信息
      class Folder < TencentCloud::Common::AbstractModel
        # @param Id: 文件ID
        # @type Id: String
        # @param Name: 文件夹名称
        # @type Name: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Name, :CreateTime, :ProjectId, :UpdateTime
        
        def initialize(id=nil, name=nil, createtime=nil, projectid=nil, updatetime=nil)
          @Id = id
          @Name = name
          @CreateTime = createtime
          @ProjectId = projectid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ForceSucInstances请求参数结构体
      class ForceSucInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array

        attr_accessor :ProjectId, :Instances
        
        def initialize(projectid=nil, instances=nil)
          @ProjectId = projectid
          @Instances = instances
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
        end
      end

      # ForceSucInstances返回参数结构体
      class ForceSucInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FreezeTasksByMultiWorkflow请求参数结构体
      class FreezeTasksByMultiWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowIds: 工作流Id集合
        # @type WorkFlowIds: Array

        attr_accessor :WorkFlowIds
        
        def initialize(workflowids=nil)
          @WorkFlowIds = workflowids
        end

        def deserialize(params)
          @WorkFlowIds = params['WorkFlowIds']
        end
      end

      # FreezeTasksByMultiWorkflow返回参数结构体
      class FreezeTasksByMultiWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FreezeTasks请求参数结构体
      class FreezeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param OperateIsInform: 任务操作是否消息通知下游任务责任人
        # @type OperateIsInform: Boolean

        attr_accessor :Tasks, :OperateIsInform
        
        def initialize(tasks=nil, operateisinform=nil)
          @Tasks = tasks
          @OperateIsInform = operateisinform
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              simpletaskinfo_tmp = SimpleTaskInfo.new
              simpletaskinfo_tmp.deserialize(i)
              @Tasks << simpletaskinfo_tmp
            end
          end
          @OperateIsInform = params['OperateIsInform']
        end
      end

      # FreezeTasks返回参数结构体
      class FreezeTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 函数资源信息
      class FunctionResource < TencentCloud::Common::AbstractModel
        # @param Path: 资源路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Name: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Id: 资源唯一标识
        # @type Id: String
        # @param Md5: 资源 MD5 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param Type: 默认是 hdfs
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Path, :Name, :Id, :Md5, :Type
        
        def initialize(path=nil, name=nil, id=nil, md5=nil, type=nil)
          @Path = path
          @Name = name
          @Id = id
          @Md5 = md5
          @Type = type
        end

        def deserialize(params)
          @Path = params['Path']
          @Name = params['Name']
          @Id = params['Id']
          @Md5 = params['Md5']
          @Type = params['Type']
        end
      end

      # 函数类型或函数分类
      class FunctionTypeOrKind < TencentCloud::Common::AbstractModel
        # @param Name: 无
        # @type Name: String
        # @param ZhName: 无
        # @type ZhName: String
        # @param EnName: 无
        # @type EnName: String

        attr_accessor :Name, :ZhName, :EnName
        
        def initialize(name=nil, zhname=nil, enname=nil)
          @Name = name
          @ZhName = zhname
          @EnName = enname
        end

        def deserialize(params)
          @Name = params['Name']
          @ZhName = params['ZhName']
          @EnName = params['EnName']
        end
      end

      # 函数提交版本信息
      class FunctionVersion < TencentCloud::Common::AbstractModel
        # @param Tag: 版本号：V0 V1 V2
        # @type Tag: String
        # @param UserId: 提交人 ID
        # @type UserId: String
        # @param Type: 变更类型：ADD、MODIFY
        # @type Type: String
        # @param Comment: 备注
        # @type Comment: String
        # @param Timestamp: 提交时间: UTC 秒数
        # @type Timestamp: String
        # @param UserName: 提交人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Content: 版本内容：json string 格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Tag, :UserId, :Type, :Comment, :Timestamp, :UserName, :Content
        
        def initialize(tag=nil, userid=nil, type=nil, comment=nil, timestamp=nil, username=nil, content=nil)
          @Tag = tag
          @UserId = userid
          @Type = type
          @Comment = comment
          @Timestamp = timestamp
          @UserName = username
          @Content = content
        end

        def deserialize(params)
          @Tag = params['Tag']
          @UserId = params['UserId']
          @Type = params['Type']
          @Comment = params['Comment']
          @Timestamp = params['Timestamp']
          @UserName = params['UserName']
          @Content = params['Content']
        end
      end

      # GenHiveTableDDLSql请求参数结构体
      class GenHiveTableDDLSqlRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param SinkDatabase: 目标数据库
        # @type SinkDatabase: String
        # @param Id: 节点id
        # @type Id: String
        # @param MsType: 元数据类型(MYSQL、ORACLE)
        # @type MsType: String
        # @param DatasourceId: 数据源id
        # @type DatasourceId: String
        # @param SourceDatabase: 来源库
        # @type SourceDatabase: String
        # @param TableName: 来源表
        # @type TableName: String
        # @param SinkType: 目标表元数据类型(HIVE、GBASE)
        # @type SinkType: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param SourceFieldInfoList: 上游节点的字段信息
        # @type SourceFieldInfoList: Array
        # @param Partitions: 分区字段
        # @type Partitions: Array
        # @param Properties: 建表属性
        # @type Properties: Array
        # @param TableMode: 建表模式，0:向导模式，1:ddl
        # @type TableMode: Integer
        # @param TableVersion: DLC表版本，v1/v2
        # @type TableVersion: String
        # @param UpsertFlag: 是否upsert写入
        # @type UpsertFlag: Boolean
        # @param TableComment: 表描述信息
        # @type TableComment: String
        # @param AddDataFiles: 增加的文件数量阈值, 超过值将触发小文件合并
        # @type AddDataFiles: Integer
        # @param AddEqualityDeletes: 增加的Equality delete数量阈值, 超过值将触发小文件合并
        # @type AddEqualityDeletes: Integer
        # @param AddPositionDeletes: 增加的Position delete数量阈值, 超过值将触发小文件合并
        # @type AddPositionDeletes: Integer
        # @param AddDeleteFiles: 增加的delete file数量阈值
        # @type AddDeleteFiles: Integer
        # @param TargetDatasourceId: 下游节点数据源ID
        # @type TargetDatasourceId: String

        attr_accessor :ProjectId, :SinkDatabase, :Id, :MsType, :DatasourceId, :SourceDatabase, :TableName, :SinkType, :SchemaName, :SourceFieldInfoList, :Partitions, :Properties, :TableMode, :TableVersion, :UpsertFlag, :TableComment, :AddDataFiles, :AddEqualityDeletes, :AddPositionDeletes, :AddDeleteFiles, :TargetDatasourceId
        
        def initialize(projectid=nil, sinkdatabase=nil, id=nil, mstype=nil, datasourceid=nil, sourcedatabase=nil, tablename=nil, sinktype=nil, schemaname=nil, sourcefieldinfolist=nil, partitions=nil, properties=nil, tablemode=nil, tableversion=nil, upsertflag=nil, tablecomment=nil, adddatafiles=nil, addequalitydeletes=nil, addpositiondeletes=nil, adddeletefiles=nil, targetdatasourceid=nil)
          @ProjectId = projectid
          @SinkDatabase = sinkdatabase
          @Id = id
          @MsType = mstype
          @DatasourceId = datasourceid
          @SourceDatabase = sourcedatabase
          @TableName = tablename
          @SinkType = sinktype
          @SchemaName = schemaname
          @SourceFieldInfoList = sourcefieldinfolist
          @Partitions = partitions
          @Properties = properties
          @TableMode = tablemode
          @TableVersion = tableversion
          @UpsertFlag = upsertflag
          @TableComment = tablecomment
          @AddDataFiles = adddatafiles
          @AddEqualityDeletes = addequalitydeletes
          @AddPositionDeletes = addpositiondeletes
          @AddDeleteFiles = adddeletefiles
          @TargetDatasourceId = targetdatasourceid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SinkDatabase = params['SinkDatabase']
          @Id = params['Id']
          @MsType = params['MsType']
          @DatasourceId = params['DatasourceId']
          @SourceDatabase = params['SourceDatabase']
          @TableName = params['TableName']
          @SinkType = params['SinkType']
          @SchemaName = params['SchemaName']
          unless params['SourceFieldInfoList'].nil?
            @SourceFieldInfoList = []
            params['SourceFieldInfoList'].each do |i|
              sourcefieldinfo_tmp = SourceFieldInfo.new
              sourcefieldinfo_tmp.deserialize(i)
              @SourceFieldInfoList << sourcefieldinfo_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @TableMode = params['TableMode']
          @TableVersion = params['TableVersion']
          @UpsertFlag = params['UpsertFlag']
          @TableComment = params['TableComment']
          @AddDataFiles = params['AddDataFiles']
          @AddEqualityDeletes = params['AddEqualityDeletes']
          @AddPositionDeletes = params['AddPositionDeletes']
          @AddDeleteFiles = params['AddDeleteFiles']
          @TargetDatasourceId = params['TargetDatasourceId']
        end
      end

      # GenHiveTableDDLSql返回参数结构体
      class GenHiveTableDDLSqlResponse < TencentCloud::Common::AbstractModel
        # @param DDLSql: 生成的ddl语句
        # @type DDLSql: String
        # @param Data: 生成的ddl语句。与DDLSql相同含义，优先取Data，如果Data为空，则取DDLSql。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDLSql, :Data, :RequestId
        
        def initialize(ddlsql=nil, data=nil, requestid=nil)
          @DDLSql = ddlsql
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @DDLSql = params['DDLSql']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # Spark SQL配置参数
      class GeneralTaskParam < TencentCloud::Common::AbstractModel
        # @param Type: 通用任务参数类型,例：SPARK_SQL
        # @type Type: String
        # @param Value: 通用任务参数内容,直接作用于任务的参数。不同参数用;
        # 分割
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

      # GetIntegrationNodeColumnSchema请求参数结构体
      class GetIntegrationNodeColumnSchemaRequest < TencentCloud::Common::AbstractModel
        # @param ColumnContent: 字段示例（json格式）
        # @type ColumnContent: String
        # @param DatasourceType: 数据源类型
        # @type DatasourceType: String

        attr_accessor :ColumnContent, :DatasourceType
        
        def initialize(columncontent=nil, datasourcetype=nil)
          @ColumnContent = columncontent
          @DatasourceType = datasourcetype
        end

        def deserialize(params)
          @ColumnContent = params['ColumnContent']
          @DatasourceType = params['DatasourceType']
        end
      end

      # GetIntegrationNodeColumnSchema返回参数结构体
      class GetIntegrationNodeColumnSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Schemas: 字段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schemas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schemas, :RequestId
        
        def initialize(schemas=nil, requestid=nil)
          @Schemas = schemas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Schemas'].nil?
            @Schemas = []
            params['Schemas'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @Schemas << integrationnodeschema_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOfflineDIInstanceList请求参数结构体
      class GetOfflineDIInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param PageIndex: 第几页
        # @type PageIndex: Integer
        # @param PageSize: 每页几条
        # @type PageSize: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SearchCondition: 无
        # @type SearchCondition: :class:`Tencentcloud::Wedata.v20210820.models.SearchConditionNew`

        attr_accessor :PageIndex, :PageSize, :ProjectId, :SearchCondition
        
        def initialize(pageindex=nil, pagesize=nil, projectid=nil, searchcondition=nil)
          @PageIndex = pageindex
          @PageSize = pagesize
          @ProjectId = projectid
          @SearchCondition = searchcondition
        end

        def deserialize(params)
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          unless params['SearchCondition'].nil?
            @SearchCondition = SearchConditionNew.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
        end
      end

      # GetOfflineDIInstanceList返回参数结构体
      class GetOfflineDIInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param List: 实例详情
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId
        
        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              offlineinstance_tmp = OfflineInstance.new
              offlineinstance_tmp.deserialize(i)
              @List << offlineinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOfflineInstanceList请求参数结构体
      class GetOfflineInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param PageIndex: 第几页
        # @type PageIndex: String
        # @param PageSize: 每页几条
        # @type PageSize: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SearchCondition: 无
        # @type SearchCondition: :class:`Tencentcloud::Wedata.v20210820.models.SearchCondition`

        attr_accessor :PageIndex, :PageSize, :ProjectId, :SearchCondition
        
        def initialize(pageindex=nil, pagesize=nil, projectid=nil, searchcondition=nil)
          @PageIndex = pageindex
          @PageSize = pagesize
          @ProjectId = projectid
          @SearchCondition = searchcondition
        end

        def deserialize(params)
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          unless params['SearchCondition'].nil?
            @SearchCondition = SearchCondition.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
        end
      end

      # GetOfflineInstanceList返回参数结构体
      class GetOfflineInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param List: 实例详情
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId
        
        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              offlineinstance_tmp = OfflineInstance.new
              offlineinstance_tmp.deserialize(i)
              @List << offlineinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 采集器详细信息
      class InLongAgentDetail < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param AgentName: Agent Name
        # @type AgentName: String
        # @param Status: Agent状态(running运行中，initializing 操作中，failed心跳异常)
        # @type Status: String
        # @param StatusDesc: Agent状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param AgentType: 集群类型，1：TKE Agent，2：BOSS SDK，默认：1
        # @type AgentType: Integer
        # @param Source: 采集来源
        # @type Source: String
        # @param VpcId: VPC
        # @type VpcId: String
        # @param ExecutorGroupId: 集成资源组Id
        # @type ExecutorGroupId: String
        # @param ExecutorGroupName: 集成资源组名称
        # @type ExecutorGroupName: String
        # @param TaskCount: 关联任务数
        # @type TaskCount: Integer
        # @param AgentGroupId: 采集器组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentGroupId: String
        # @param CvmAgentStatusList: agent状态统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmAgentStatusList: Array
        # @param AgentTotal: agent数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentTotal: Integer
        # @param LifeDays: 生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeDays: Integer

        attr_accessor :AgentId, :AgentName, :Status, :StatusDesc, :AgentType, :Source, :VpcId, :ExecutorGroupId, :ExecutorGroupName, :TaskCount, :AgentGroupId, :CvmAgentStatusList, :AgentTotal, :LifeDays
        
        def initialize(agentid=nil, agentname=nil, status=nil, statusdesc=nil, agenttype=nil, source=nil, vpcid=nil, executorgroupid=nil, executorgroupname=nil, taskcount=nil, agentgroupid=nil, cvmagentstatuslist=nil, agenttotal=nil, lifedays=nil)
          @AgentId = agentid
          @AgentName = agentname
          @Status = status
          @StatusDesc = statusdesc
          @AgentType = agenttype
          @Source = source
          @VpcId = vpcid
          @ExecutorGroupId = executorgroupid
          @ExecutorGroupName = executorgroupname
          @TaskCount = taskcount
          @AgentGroupId = agentgroupid
          @CvmAgentStatusList = cvmagentstatuslist
          @AgentTotal = agenttotal
          @LifeDays = lifedays
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @AgentType = params['AgentType']
          @Source = params['Source']
          @VpcId = params['VpcId']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ExecutorGroupName = params['ExecutorGroupName']
          @TaskCount = params['TaskCount']
          @AgentGroupId = params['AgentGroupId']
          unless params['CvmAgentStatusList'].nil?
            @CvmAgentStatusList = []
            params['CvmAgentStatusList'].each do |i|
              cvmagentstatus_tmp = CvmAgentStatus.new
              cvmagentstatus_tmp.deserialize(i)
              @CvmAgentStatusList << cvmagentstatus_tmp
            end
          end
          @AgentTotal = params['AgentTotal']
          @LifeDays = params['LifeDays']
        end
      end

      # 采集器关联的集成任务
      class InLongAgentTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 集成任务ID
        # @type TaskId: String
        # @param TaskName: 集成任务名称
        # @type TaskName: String
        # @param TaskStatus: 集成任务状态
        # @type TaskStatus: String

        attr_accessor :TaskId, :TaskName, :TaskStatus
        
        def initialize(taskid=nil, taskname=nil, taskstatus=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskStatus = params['TaskStatus']
        end
      end

      # TKE集群信息详情
      class InLongTkeDetail < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Status: TKE集群状态 (Running 运行中 Creating 创建中 Idling 闲置中 Abnormal 异常)
        # @type Status: String
        # @param HasAgent: 是否安装Agent，true: 是，false: 否
        # @type HasAgent: Boolean
        # @param AgentId: 采集器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param TkeRegion: TKE集群区域ID
        # @type TkeRegion: String
        # @param ClusterType: 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER
        # @type ClusterType: String

        attr_accessor :ClusterId, :ClusterName, :Status, :HasAgent, :AgentId, :VpcId, :TkeRegion, :ClusterType
        
        def initialize(clusterid=nil, clustername=nil, status=nil, hasagent=nil, agentid=nil, vpcid=nil, tkeregion=nil, clustertype=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Status = status
          @HasAgent = hasagent
          @AgentId = agentid
          @VpcId = vpcid
          @TkeRegion = tkeregion
          @ClusterType = clustertype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Status = params['Status']
          @HasAgent = params['HasAgent']
          @AgentId = params['AgentId']
          @VpcId = params['VpcId']
          @TkeRegion = params['TkeRegion']
          @ClusterType = params['ClusterType']
        end
      end

      # 实例请求实体
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :TaskId, :CurRunDate
        
        def initialize(taskid=nil, currundate=nil)
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # 实例日志实体
      class InstanceLog < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String
        # @param Tries: 尝试运行次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: String
        # @param LastUpdate: 日志更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdate: String
        # @param BrokerIp: 日志所在节点
        # @type BrokerIp: String
        # @param OriginFileName: 文件名  含全路径
        # @type OriginFileName: String
        # @param CreateTime: 日志创建时间
        # @type CreateTime: String
        # @param InstanceLogType: 实例日志类型, run: 运行; kill: 终止
        # @type InstanceLogType: String
        # @param CostTime: 运行耗时
        # @type CostTime: Float

        attr_accessor :TaskId, :CurRunDate, :Tries, :LastUpdate, :BrokerIp, :OriginFileName, :CreateTime, :InstanceLogType, :CostTime
        
        def initialize(taskid=nil, currundate=nil, tries=nil, lastupdate=nil, brokerip=nil, originfilename=nil, createtime=nil, instancelogtype=nil, costtime=nil)
          @TaskId = taskid
          @CurRunDate = currundate
          @Tries = tries
          @LastUpdate = lastupdate
          @BrokerIp = brokerip
          @OriginFileName = originfilename
          @CreateTime = createtime
          @InstanceLogType = instancelogtype
          @CostTime = costtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @Tries = params['Tries']
          @LastUpdate = params['LastUpdate']
          @BrokerIp = params['BrokerIp']
          @OriginFileName = params['OriginFileName']
          @CreateTime = params['CreateTime']
          @InstanceLogType = params['InstanceLogType']
          @CostTime = params['CostTime']
        end
      end

      # 查询实时任务实例当前的节点信息
      class InstanceNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 读取节点SOURCE 写入节点SINK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param NodeId: 节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String

        attr_accessor :NodeType, :NodeId, :NodeName
        
        def initialize(nodetype=nil, nodeid=nil, nodename=nil)
          @NodeType = nodetype
          @NodeId = nodeid
          @NodeName = nodename
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
        end
      end

      # 离线任务实例读取节点的运行指标
      class InstanceReportReadNode < TencentCloud::Common::AbstractModel
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param DataSource: 数据来源
        # @type DataSource: String
        # @param TotalReadRecords: 总条数
        # @type TotalReadRecords: Integer
        # @param TotalReadBytes: 总字节数
        # @type TotalReadBytes: Integer
        # @param RecordSpeed: 速度（条/秒）
        # @type RecordSpeed: Integer
        # @param ByteSpeed: 吞吐（Byte/秒）
        # @type ByteSpeed: Float
        # @param TotalErrorRecords: 脏数据条数
        # @type TotalErrorRecords: Integer

        attr_accessor :NodeName, :DataSource, :TotalReadRecords, :TotalReadBytes, :RecordSpeed, :ByteSpeed, :TotalErrorRecords
        
        def initialize(nodename=nil, datasource=nil, totalreadrecords=nil, totalreadbytes=nil, recordspeed=nil, bytespeed=nil, totalerrorrecords=nil)
          @NodeName = nodename
          @DataSource = datasource
          @TotalReadRecords = totalreadrecords
          @TotalReadBytes = totalreadbytes
          @RecordSpeed = recordspeed
          @ByteSpeed = bytespeed
          @TotalErrorRecords = totalerrorrecords
        end

        def deserialize(params)
          @NodeName = params['NodeName']
          @DataSource = params['DataSource']
          @TotalReadRecords = params['TotalReadRecords']
          @TotalReadBytes = params['TotalReadBytes']
          @RecordSpeed = params['RecordSpeed']
          @ByteSpeed = params['ByteSpeed']
          @TotalErrorRecords = params['TotalErrorRecords']
        end
      end

      # 离线任务实例运行指标概览
      class InstanceReportSummary < TencentCloud::Common::AbstractModel
        # @param TotalReadRecords: 总读取记录数
        # @type TotalReadRecords: Integer
        # @param TotalReadBytes: 总读取字节数
        # @type TotalReadBytes: Integer
        # @param TotalWriteRecords: 总写入记录数
        # @type TotalWriteRecords: Integer
        # @param TotalWriteBytes: 总写入字节数
        # @type TotalWriteBytes: Integer
        # @param RecordSpeed: 速率（条/秒）
        # @type RecordSpeed: Integer
        # @param ByteSpeed: 流量（Byte/秒）
        # @type ByteSpeed: Float
        # @param TotalErrorRecords: 脏数据记录数
        # @type TotalErrorRecords: Integer
        # @param TotalErrorBytes: 脏数据字节数
        # @type TotalErrorBytes: Integer
        # @param TotalRunDuration: 任务运行总时长
        # @type TotalRunDuration: Integer
        # @param BeginRunTime: 任务开始运行时间
        # @type BeginRunTime: String
        # @param EndRunTime: 任务结束运行时间
        # @type EndRunTime: String

        attr_accessor :TotalReadRecords, :TotalReadBytes, :TotalWriteRecords, :TotalWriteBytes, :RecordSpeed, :ByteSpeed, :TotalErrorRecords, :TotalErrorBytes, :TotalRunDuration, :BeginRunTime, :EndRunTime
        
        def initialize(totalreadrecords=nil, totalreadbytes=nil, totalwriterecords=nil, totalwritebytes=nil, recordspeed=nil, bytespeed=nil, totalerrorrecords=nil, totalerrorbytes=nil, totalrunduration=nil, beginruntime=nil, endruntime=nil)
          @TotalReadRecords = totalreadrecords
          @TotalReadBytes = totalreadbytes
          @TotalWriteRecords = totalwriterecords
          @TotalWriteBytes = totalwritebytes
          @RecordSpeed = recordspeed
          @ByteSpeed = bytespeed
          @TotalErrorRecords = totalerrorrecords
          @TotalErrorBytes = totalerrorbytes
          @TotalRunDuration = totalrunduration
          @BeginRunTime = beginruntime
          @EndRunTime = endruntime
        end

        def deserialize(params)
          @TotalReadRecords = params['TotalReadRecords']
          @TotalReadBytes = params['TotalReadBytes']
          @TotalWriteRecords = params['TotalWriteRecords']
          @TotalWriteBytes = params['TotalWriteBytes']
          @RecordSpeed = params['RecordSpeed']
          @ByteSpeed = params['ByteSpeed']
          @TotalErrorRecords = params['TotalErrorRecords']
          @TotalErrorBytes = params['TotalErrorBytes']
          @TotalRunDuration = params['TotalRunDuration']
          @BeginRunTime = params['BeginRunTime']
          @EndRunTime = params['EndRunTime']
        end
      end

      # 离线任务实例写入节点的运行指标
      class InstanceReportWriteNode < TencentCloud::Common::AbstractModel
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param DataSource: 数据来源
        # @type DataSource: String
        # @param TotalWriteRecords: 总条数
        # @type TotalWriteRecords: Integer
        # @param TotalWriteBytes: 总字节数
        # @type TotalWriteBytes: Integer
        # @param RecordSpeed: 速度（条/秒）
        # @type RecordSpeed: Integer
        # @param ByteSpeed: 吞吐（Byte/秒）
        # @type ByteSpeed: Float
        # @param TotalErrorRecords: 脏数据条数
        # @type TotalErrorRecords: Integer

        attr_accessor :NodeName, :DataSource, :TotalWriteRecords, :TotalWriteBytes, :RecordSpeed, :ByteSpeed, :TotalErrorRecords
        
        def initialize(nodename=nil, datasource=nil, totalwriterecords=nil, totalwritebytes=nil, recordspeed=nil, bytespeed=nil, totalerrorrecords=nil)
          @NodeName = nodename
          @DataSource = datasource
          @TotalWriteRecords = totalwriterecords
          @TotalWriteBytes = totalwritebytes
          @RecordSpeed = recordspeed
          @ByteSpeed = bytespeed
          @TotalErrorRecords = totalerrorrecords
        end

        def deserialize(params)
          @NodeName = params['NodeName']
          @DataSource = params['DataSource']
          @TotalWriteRecords = params['TotalWriteRecords']
          @TotalWriteBytes = params['TotalWriteBytes']
          @RecordSpeed = params['RecordSpeed']
          @ByteSpeed = params['ByteSpeed']
          @TotalErrorRecords = params['TotalErrorRecords']
        end
      end

      # 集成节点详情
      class IntegrationNodeDetail < TencentCloud::Common::AbstractModel
        # @param Name: 集成节点名称
        # @type Name: String
        # @param NodeType: 集成节点类型
        # @type NodeType: String
        # @param DataSourceType: 节点数据源类型
        # @type DataSourceType: String
        # @param Description: 节点描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param Config: 节点配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: Array
        # @param ExtConfig: 节点扩展配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array
        # @param Schema: 节点schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: Array
        # @param NodeMapping: 节点映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeMapping: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeMapping`
        # @param OwnerUin: owner uin
        # @type OwnerUin: String

        attr_accessor :Name, :NodeType, :DataSourceType, :Description, :DatasourceId, :Config, :ExtConfig, :Schema, :NodeMapping, :OwnerUin
        
        def initialize(name=nil, nodetype=nil, datasourcetype=nil, description=nil, datasourceid=nil, config=nil, extconfig=nil, schema=nil, nodemapping=nil, owneruin=nil)
          @Name = name
          @NodeType = nodetype
          @DataSourceType = datasourcetype
          @Description = description
          @DatasourceId = datasourceid
          @Config = config
          @ExtConfig = extconfig
          @Schema = schema
          @NodeMapping = nodemapping
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @Name = params['Name']
          @NodeType = params['NodeType']
          @DataSourceType = params['DataSourceType']
          @Description = params['Description']
          @DatasourceId = params['DatasourceId']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Config << recordfield_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
          unless params['Schema'].nil?
            @Schema = []
            params['Schema'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @Schema << integrationnodeschema_tmp
            end
          end
          unless params['NodeMapping'].nil?
            @NodeMapping = IntegrationNodeMapping.new
            @NodeMapping.deserialize(params['NodeMapping'])
          end
          @OwnerUin = params['OwnerUin']
        end
      end

      # 集成节点
      class IntegrationNodeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 集成节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param TaskId: 集成节点所属任务id
        # @type TaskId: String
        # @param Name: 集成节点名称
        # @type Name: String
        # @param NodeType: 集成节点类型
        # @type NodeType: String
        # @param DataSourceType: 节点数据源类型
        # @type DataSourceType: String
        # @param Description: 节点描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param Config: 节点配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: Array
        # @param ExtConfig: 节点扩展配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array
        # @param Schema: 节点schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: Array
        # @param NodeMapping: 节点映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeMapping: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeMapping`
        # @param AppId: 应用id
        # @type AppId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CreatorUin: 创建人uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param OperatorUin: 操作人uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUin: String
        # @param OwnerUin: owner uin
        # @type OwnerUin: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Id, :TaskId, :Name, :NodeType, :DataSourceType, :Description, :DatasourceId, :Config, :ExtConfig, :Schema, :NodeMapping, :AppId, :ProjectId, :CreatorUin, :OperatorUin, :OwnerUin, :CreateTime, :UpdateTime
        
        def initialize(id=nil, taskid=nil, name=nil, nodetype=nil, datasourcetype=nil, description=nil, datasourceid=nil, config=nil, extconfig=nil, schema=nil, nodemapping=nil, appid=nil, projectid=nil, creatoruin=nil, operatoruin=nil, owneruin=nil, createtime=nil, updatetime=nil)
          @Id = id
          @TaskId = taskid
          @Name = name
          @NodeType = nodetype
          @DataSourceType = datasourcetype
          @Description = description
          @DatasourceId = datasourceid
          @Config = config
          @ExtConfig = extconfig
          @Schema = schema
          @NodeMapping = nodemapping
          @AppId = appid
          @ProjectId = projectid
          @CreatorUin = creatoruin
          @OperatorUin = operatoruin
          @OwnerUin = owneruin
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @TaskId = params['TaskId']
          @Name = params['Name']
          @NodeType = params['NodeType']
          @DataSourceType = params['DataSourceType']
          @Description = params['Description']
          @DatasourceId = params['DatasourceId']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Config << recordfield_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
          unless params['Schema'].nil?
            @Schema = []
            params['Schema'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @Schema << integrationnodeschema_tmp
            end
          end
          unless params['NodeMapping'].nil?
            @NodeMapping = IntegrationNodeMapping.new
            @NodeMapping.deserialize(params['NodeMapping'])
          end
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @CreatorUin = params['CreatorUin']
          @OperatorUin = params['OperatorUin']
          @OwnerUin = params['OwnerUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 集成节点映射
      class IntegrationNodeMapping < TencentCloud::Common::AbstractModel
        # @param SourceId: 源节点id
        # @type SourceId: String
        # @param SinkId: 目标节点id
        # @type SinkId: String
        # @param SourceSchema: 源节点schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceSchema: Array
        # @param SchemaMappings: 节点schema映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaMappings: Array
        # @param ExtConfig: 节点映射扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array

        attr_accessor :SourceId, :SinkId, :SourceSchema, :SchemaMappings, :ExtConfig
        
        def initialize(sourceid=nil, sinkid=nil, sourceschema=nil, schemamappings=nil, extconfig=nil)
          @SourceId = sourceid
          @SinkId = sinkid
          @SourceSchema = sourceschema
          @SchemaMappings = schemamappings
          @ExtConfig = extconfig
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @SinkId = params['SinkId']
          unless params['SourceSchema'].nil?
            @SourceSchema = []
            params['SourceSchema'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @SourceSchema << integrationnodeschema_tmp
            end
          end
          unless params['SchemaMappings'].nil?
            @SchemaMappings = []
            params['SchemaMappings'].each do |i|
              integrationnodeschemamapping_tmp = IntegrationNodeSchemaMapping.new
              integrationnodeschemamapping_tmp.deserialize(i)
              @SchemaMappings << integrationnodeschemamapping_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
        end
      end

      # 集成节点schema
      class IntegrationNodeSchema < TencentCloud::Common::AbstractModel
        # @param Id: schema id
        # @type Id: String
        # @param Name: schema名称
        # @type Name: String
        # @param Type: schema类型
        # @type Type: String
        # @param Value: schema值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Properties: schema拓展属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Alias: schema别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String

        attr_accessor :Id, :Name, :Type, :Value, :Properties, :Alias
        
        def initialize(id=nil, name=nil, type=nil, value=nil, properties=nil, _alias=nil)
          @Id = id
          @Name = name
          @Type = type
          @Value = value
          @Properties = properties
          @Alias = _alias
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Value = params['Value']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Properties << recordfield_tmp
            end
          end
          @Alias = params['Alias']
        end
      end

      # 集成节点schema映射
      class IntegrationNodeSchemaMapping < TencentCloud::Common::AbstractModel
        # @param SourceSchemaId: 源schema id
        # @type SourceSchemaId: String
        # @param SinkSchemaId: 目标schema id
        # @type SinkSchemaId: String

        attr_accessor :SourceSchemaId, :SinkSchemaId
        
        def initialize(sourceschemaid=nil, sinkschemaid=nil)
          @SourceSchemaId = sourceschemaid
          @SinkSchemaId = sinkschemaid
        end

        def deserialize(params)
          @SourceSchemaId = params['SourceSchemaId']
          @SinkSchemaId = params['SinkSchemaId']
        end
      end

      # 数据集成大屏趋势图统计结果
      class IntegrationStatisticsTrendResult < TencentCloud::Common::AbstractModel
        # @param StatisticName: 统计属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticName: Array
        # @param StatisticValue: 统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticValue: Array
        # @param StatisticType: 统计项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticType: String

        attr_accessor :StatisticName, :StatisticValue, :StatisticType
        
        def initialize(statisticname=nil, statisticvalue=nil, statistictype=nil)
          @StatisticName = statisticname
          @StatisticValue = statisticvalue
          @StatisticType = statistictype
        end

        def deserialize(params)
          @StatisticName = params['StatisticName']
          @StatisticValue = params['StatisticValue']
          @StatisticType = params['StatisticType']
        end
      end

      # 集成任务
      class IntegrationTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param SyncType: 同步类型1.解决方案(整库迁移),2.单表同步
        # @type SyncType: Integer
        # @param TaskType: 201.实时,202.离线
        # @type TaskType: Integer
        # @param WorkflowId: 任务所属工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param ScheduleTaskId: 任务调度id(oceanus or us等作业id)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTaskId: String
        # @param TaskGroupId: 任务组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskGroupId: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param CreatorUin: 创建人uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param OperatorUin: 操作人uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUin: String
        # @param OwnerUin: owner uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param AppId: 应用id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param Status: 任务状态1.初始化,2.操作中,3.运行中,4.暂停,5.任务停止中,6.停止,7.执行失败,8.已删除,9.已锁定,10.配置过期,11.提交中,12.提交成功,13.提交失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Nodes: 节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param ExecutorId: 执行资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorId: String
        # @param Config: 任务配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: Array
        # @param ExtConfig: 任务扩展配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array
        # @param ExecuteContext: 任务执行context信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteContext: Array
        # @param Mappings: 节点映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mappings: Array
        # @param TaskMode: 任务模式：1.画布模式，2.flink jar
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMode: String
        # @param Incharge: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Incharge: String
        # @param OfflineTaskAddEntity: 离线新增参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTaskAddEntity: :class:`Tencentcloud::Wedata.v20210820.models.OfflineTaskAddParam`
        # @param ExecutorGroupName: group name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupName: String
        # @param InLongManagerUrl: url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InLongManagerUrl: String
        # @param InLongStreamId: stream id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InLongStreamId: String
        # @param InLongManagerVersion: version
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InLongManagerVersion: String
        # @param DataProxyUrl: dataproxy url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataProxyUrl: Array
        # @param Submit: 任务版本是否已提交运维
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Submit: Boolean

        attr_accessor :TaskName, :Description, :SyncType, :TaskType, :WorkflowId, :TaskId, :ScheduleTaskId, :TaskGroupId, :ProjectId, :CreatorUin, :OperatorUin, :OwnerUin, :AppId, :Status, :Nodes, :ExecutorId, :Config, :ExtConfig, :ExecuteContext, :Mappings, :TaskMode, :Incharge, :OfflineTaskAddEntity, :ExecutorGroupName, :InLongManagerUrl, :InLongStreamId, :InLongManagerVersion, :DataProxyUrl, :Submit
        
        def initialize(taskname=nil, description=nil, synctype=nil, tasktype=nil, workflowid=nil, taskid=nil, scheduletaskid=nil, taskgroupid=nil, projectid=nil, creatoruin=nil, operatoruin=nil, owneruin=nil, appid=nil, status=nil, nodes=nil, executorid=nil, config=nil, extconfig=nil, executecontext=nil, mappings=nil, taskmode=nil, incharge=nil, offlinetaskaddentity=nil, executorgroupname=nil, inlongmanagerurl=nil, inlongstreamid=nil, inlongmanagerversion=nil, dataproxyurl=nil, submit=nil)
          @TaskName = taskname
          @Description = description
          @SyncType = synctype
          @TaskType = tasktype
          @WorkflowId = workflowid
          @TaskId = taskid
          @ScheduleTaskId = scheduletaskid
          @TaskGroupId = taskgroupid
          @ProjectId = projectid
          @CreatorUin = creatoruin
          @OperatorUin = operatoruin
          @OwnerUin = owneruin
          @AppId = appid
          @Status = status
          @Nodes = nodes
          @ExecutorId = executorid
          @Config = config
          @ExtConfig = extconfig
          @ExecuteContext = executecontext
          @Mappings = mappings
          @TaskMode = taskmode
          @Incharge = incharge
          @OfflineTaskAddEntity = offlinetaskaddentity
          @ExecutorGroupName = executorgroupname
          @InLongManagerUrl = inlongmanagerurl
          @InLongStreamId = inlongstreamid
          @InLongManagerVersion = inlongmanagerversion
          @DataProxyUrl = dataproxyurl
          @Submit = submit
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @Description = params['Description']
          @SyncType = params['SyncType']
          @TaskType = params['TaskType']
          @WorkflowId = params['WorkflowId']
          @TaskId = params['TaskId']
          @ScheduleTaskId = params['ScheduleTaskId']
          @TaskGroupId = params['TaskGroupId']
          @ProjectId = params['ProjectId']
          @CreatorUin = params['CreatorUin']
          @OperatorUin = params['OperatorUin']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @Status = params['Status']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              integrationnodeinfo_tmp = IntegrationNodeInfo.new
              integrationnodeinfo_tmp.deserialize(i)
              @Nodes << integrationnodeinfo_tmp
            end
          end
          @ExecutorId = params['ExecutorId']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Config << recordfield_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
          unless params['ExecuteContext'].nil?
            @ExecuteContext = []
            params['ExecuteContext'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExecuteContext << recordfield_tmp
            end
          end
          unless params['Mappings'].nil?
            @Mappings = []
            params['Mappings'].each do |i|
              integrationnodemapping_tmp = IntegrationNodeMapping.new
              integrationnodemapping_tmp.deserialize(i)
              @Mappings << integrationnodemapping_tmp
            end
          end
          @TaskMode = params['TaskMode']
          @Incharge = params['Incharge']
          unless params['OfflineTaskAddEntity'].nil?
            @OfflineTaskAddEntity = OfflineTaskAddParam.new
            @OfflineTaskAddEntity.deserialize(params['OfflineTaskAddEntity'])
          end
          @ExecutorGroupName = params['ExecutorGroupName']
          @InLongManagerUrl = params['InLongManagerUrl']
          @InLongStreamId = params['InLongStreamId']
          @InLongManagerVersion = params['InLongManagerVersion']
          @DataProxyUrl = params['DataProxyUrl']
          @Submit = params['Submit']
        end
      end

      # KillInstances请求参数结构体
      class KillInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array

        attr_accessor :ProjectId, :Instances
        
        def initialize(projectid=nil, instances=nil)
          @ProjectId = projectid
          @Instances = instances
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
        end
      end

      # KillInstances返回参数结构体
      class KillInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签类型
      class Label < TencentCloud::Common::AbstractModel
        # @param Value: 类型值。
        # @type Value: String
        # @param Text: 类型名称。
        # @type Text: String

        attr_accessor :Value, :Text
        
        def initialize(value=nil, text=nil)
          @Value = value
          @Text = text
        end

        def deserialize(params)
          @Value = params['Value']
          @Text = params['Text']
        end
      end

      # LockIntegrationTask请求参数结构体
      class LockIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # LockIntegrationTask返回参数结构体
      class LockIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 实时任务日志内容
      class LogContent < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间戳，单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param PkgId: 日志包id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param Log: 日志内容
        # @type Log: String

        attr_accessor :Time, :PkgId, :Log
        
        def initialize(time=nil, pkgid=nil, log=nil)
          @Time = time
          @PkgId = pkgid
          @Log = log
        end

        def deserialize(params)
          @Time = params['Time']
          @PkgId = params['PkgId']
          @Log = params['Log']
        end
      end

      # 日志内容实体
      class LogContentInfo < TencentCloud::Common::AbstractModel
        # @param Log: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String
        # @param PkgId: 日志组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param PkgLogId: 日志Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgLogId: String
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param ContainerName: 日志所属的容器名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String

        attr_accessor :Log, :PkgId, :PkgLogId, :Time, :ContainerName
        
        def initialize(log=nil, pkgid=nil, pkglogid=nil, time=nil, containername=nil)
          @Log = log
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @Time = time
          @ContainerName = containername
        end

        def deserialize(params)
          @Log = params['Log']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @Time = params['Time']
          @ContainerName = params['ContainerName']
        end
      end

      # MakeUpTasksNew请求参数结构体
      class MakeUpTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 补录的当前任务的taskId数组
        # @type TaskIdList: Array
        # @param StartTime: 补录开始时间
        # @type StartTime: String
        # @param EndTime: 补录结束时间
        # @type EndTime: String
        # @param MakeUpType: 补录选项标识，1表示当前任务；2表示当前及下游任务；3表示下游任务
        # @type MakeUpType: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param CheckParent: true: 检查父任务实例状态；false: 不检查父任务实例状态
        # @type CheckParent: Boolean

        attr_accessor :TaskIdList, :StartTime, :EndTime, :MakeUpType, :ProjectId, :CheckParent
        
        def initialize(taskidlist=nil, starttime=nil, endtime=nil, makeuptype=nil, projectid=nil, checkparent=nil)
          @TaskIdList = taskidlist
          @StartTime = starttime
          @EndTime = endtime
          @MakeUpType = makeuptype
          @ProjectId = projectid
          @CheckParent = checkparent
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MakeUpType = params['MakeUpType']
          @ProjectId = params['ProjectId']
          @CheckParent = params['CheckParent']
        end
      end

      # MakeUpTasksNew返回参数结构体
      class MakeUpTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MakeUpWorkflowNew请求参数结构体
      class MakeUpWorkflowNewRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowId: 工作流id
        # @type WorkFlowId: String
        # @param StartTime: 补录开始时间
        # @type StartTime: String
        # @param EndTime: 补录结束时间
        # @type EndTime: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :WorkFlowId, :StartTime, :EndTime, :ProjectId
        
        def initialize(workflowid=nil, starttime=nil, endtime=nil, projectid=nil)
          @WorkFlowId = workflowid
          @StartTime = starttime
          @EndTime = endtime
          @ProjectId = projectid
        end

        def deserialize(params)
          @WorkFlowId = params['WorkFlowId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProjectId = params['ProjectId']
        end
      end

      # MakeUpWorkflowNew返回参数结构体
      class MakeUpWorkflowNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回补录成功或失败的任务数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDataSource请求参数结构体
      class ModifyDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # @type Name: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # @type Category: String
        # @param Type: 数据源类型:枚举值
        # @type Type: String
        # @param ID: 数据源ID
        # @type ID: Integer
        # @param BizParams: 业务侧数据源的配置信息扩展
        # @type BizParams: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # @type Params: String
        # @param Description: 数据源描述信息
        # @type Description: String
        # @param Display: 数据源展示名，为了可视化查看
        # @type Display: String
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # @type DatabaseName: String
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # @type Instance: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # @type Status: Integer
        # @param ClusterId: 数据源所属的业务空间名称
        # @type ClusterId: String
        # @param Collect: 是否采集
        # @type Collect: String
        # @param OwnerProjectId: 项目id
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 项目名称
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 项目中文名
        # @type OwnerProjectIdent: String
        # @param COSBucket: cos bucket
        # @type COSBucket: String
        # @param COSRegion: cos region
        # @type COSRegion: String

        attr_accessor :Name, :Category, :Type, :ID, :BizParams, :Params, :Description, :Display, :DatabaseName, :Instance, :Status, :ClusterId, :Collect, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :COSBucket, :COSRegion
        
        def initialize(name=nil, category=nil, type=nil, id=nil, bizparams=nil, params=nil, description=nil, display=nil, databasename=nil, instance=nil, status=nil, clusterid=nil, collect=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, cosbucket=nil, cosregion=nil)
          @Name = name
          @Category = category
          @Type = type
          @ID = id
          @BizParams = bizparams
          @Params = params
          @Description = description
          @Display = display
          @DatabaseName = databasename
          @Instance = instance
          @Status = status
          @ClusterId = clusterid
          @Collect = collect
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @COSBucket = cosbucket
          @COSRegion = cosregion
        end

        def deserialize(params)
          @Name = params['Name']
          @Category = params['Category']
          @Type = params['Type']
          @ID = params['ID']
          @BizParams = params['BizParams']
          @Params = params['Params']
          @Description = params['Description']
          @Display = params['Display']
          @DatabaseName = params['DatabaseName']
          @Instance = params['Instance']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @Collect = params['Collect']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @COSBucket = params['COSBucket']
          @COSRegion = params['COSRegion']
        end
      end

      # ModifyDataSource返回参数结构体
      class ModifyDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDimensionWeight请求参数结构体
      class ModifyDimensionWeightRequest < TencentCloud::Common::AbstractModel
        # @param WeightInfoList: 权重信息列表
        # @type WeightInfoList: Array
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Refresh: 是否重刷历史数据
        # @type Refresh: Boolean

        attr_accessor :WeightInfoList, :ProjectId, :Refresh
        
        def initialize(weightinfolist=nil, projectid=nil, refresh=nil)
          @WeightInfoList = weightinfolist
          @ProjectId = projectid
          @Refresh = refresh
        end

        def deserialize(params)
          unless params['WeightInfoList'].nil?
            @WeightInfoList = []
            params['WeightInfoList'].each do |i|
              weightinfo_tmp = WeightInfo.new
              weightinfo_tmp.deserialize(i)
              @WeightInfoList << weightinfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
          @Refresh = params['Refresh']
        end
      end

      # ModifyDimensionWeight返回参数结构体
      class ModifyDimensionWeightResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新权重是否成功
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyExecStrategy请求参数结构体
      class ModifyExecStrategyRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param MonitorType: 监控类型 1.未配置, 2.关联生产调度, 3.离线周期检测
        # @type MonitorType: Integer
        # @param ExecQueue: 计算队列
        # @type ExecQueue: String
        # @param ExecutorGroupId: 执行资源组ID
        # @type ExecutorGroupId: String
        # @param ExecutorGroupName: 执行资源组名称
        # @type ExecutorGroupName: String
        # @param Tasks: 关联的生产调度任务列表
        # @type Tasks: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param StartTime: 离线周期模式下,生效日期-开始时间
        # @type StartTime: String
        # @param EndTime: 离线周期模式下,生效日期-结束时间
        # @type EndTime: String
        # @param CycleType: 离线周期模式下,调度周期
        # MINUTE_CYCLE:I,
        # HOUR_CYCLE:H,
        # DAY_CYCLE:D,
        # WEEK_CYCLE:W,
        # MONTH_CYCLE:M
        # @type CycleType: String
        # @param CycleStep: 离线周期模式下,调度步长
        # @type CycleStep: Integer
        # @param TaskAction: 离线周期模式下,指定时间
        # @type TaskAction: String
        # @param DelayTime: 延时执行时间，单位分钟，可选: <0-1439
        # @type DelayTime: Integer
        # @param DatabaseId: 数据库Id
        # @type DatabaseId: String
        # @param DatasourceId: 数据源Id
        # @type DatasourceId: String
        # @param TableId: 数据表Id
        # @type TableId: String

        attr_accessor :RuleGroupId, :MonitorType, :ExecQueue, :ExecutorGroupId, :ExecutorGroupName, :Tasks, :ProjectId, :StartTime, :EndTime, :CycleType, :CycleStep, :TaskAction, :DelayTime, :DatabaseId, :DatasourceId, :TableId
        
        def initialize(rulegroupid=nil, monitortype=nil, execqueue=nil, executorgroupid=nil, executorgroupname=nil, tasks=nil, projectid=nil, starttime=nil, endtime=nil, cycletype=nil, cyclestep=nil, taskaction=nil, delaytime=nil, databaseid=nil, datasourceid=nil, tableid=nil)
          @RuleGroupId = rulegroupid
          @MonitorType = monitortype
          @ExecQueue = execqueue
          @ExecutorGroupId = executorgroupid
          @ExecutorGroupName = executorgroupname
          @Tasks = tasks
          @ProjectId = projectid
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @CycleStep = cyclestep
          @TaskAction = taskaction
          @DelayTime = delaytime
          @DatabaseId = databaseid
          @DatasourceId = datasourceid
          @TableId = tableid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @MonitorType = params['MonitorType']
          @ExecQueue = params['ExecQueue']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ExecutorGroupName = params['ExecutorGroupName']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              prodschedulertask_tmp = ProdSchedulerTask.new
              prodschedulertask_tmp.deserialize(i)
              @Tasks << prodschedulertask_tmp
            end
          end
          @ProjectId = params['ProjectId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @TaskAction = params['TaskAction']
          @DelayTime = params['DelayTime']
          @DatabaseId = params['DatabaseId']
          @DatasourceId = params['DatasourceId']
          @TableId = params['TableId']
        end
      end

      # ModifyExecStrategy返回参数结构体
      class ModifyExecStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyFolder请求参数结构体
      class ModifyFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param FolderId: 文件夹Id
        # @type FolderId: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String

        attr_accessor :ProjectId, :FolderName, :FolderId, :ParentsFolderId
        
        def initialize(projectid=nil, foldername=nil, folderid=nil, parentsfolderid=nil)
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @ParentsFolderId = parentsfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @ParentsFolderId = params['ParentsFolderId']
        end
      end

      # ModifyFolder返回参数结构体
      class ModifyFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyIntegrationNode请求参数结构体
      class ModifyIntegrationNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeInfo: 集成节点信息
        # @type NodeInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeInfo`
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param TaskMode: 区分画布模式和表单模式
        # @type TaskMode: Integer

        attr_accessor :NodeInfo, :ProjectId, :TaskType, :TaskMode
        
        def initialize(nodeinfo=nil, projectid=nil, tasktype=nil, taskmode=nil)
          @NodeInfo = nodeinfo
          @ProjectId = projectid
          @TaskType = tasktype
          @TaskMode = taskmode
        end

        def deserialize(params)
          unless params['NodeInfo'].nil?
            @NodeInfo = IntegrationNodeInfo.new
            @NodeInfo.deserialize(params['NodeInfo'])
          end
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
          @TaskMode = params['TaskMode']
        end
      end

      # ModifyIntegrationNode返回参数结构体
      class ModifyIntegrationNodeResponse < TencentCloud::Common::AbstractModel
        # @param Id: 节点id
        # @type Id: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :TaskId, :RequestId
        
        def initialize(id=nil, taskid=nil, requestid=nil)
          @Id = id
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyIntegrationTask请求参数结构体
      class ModifyIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationTaskInfo`
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RollbackFlag: 默认false . 为true时表示走回滚节点逻辑
        # @type RollbackFlag: Boolean

        attr_accessor :TaskInfo, :ProjectId, :RollbackFlag
        
        def initialize(taskinfo=nil, projectid=nil, rollbackflag=nil)
          @TaskInfo = taskinfo
          @ProjectId = projectid
          @RollbackFlag = rollbackflag
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = IntegrationTaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @ProjectId = params['ProjectId']
          @RollbackFlag = params['RollbackFlag']
        end
      end

      # ModifyIntegrationTask返回参数结构体
      class ModifyIntegrationTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMonitorStatus请求参数结构体
      class ModifyMonitorStatusRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param MonitorStatus: 监控开关状态
        # @type MonitorStatus: Boolean

        attr_accessor :ProjectId, :RuleGroupId, :MonitorStatus
        
        def initialize(projectid=nil, rulegroupid=nil, monitorstatus=nil)
          @ProjectId = projectid
          @RuleGroupId = rulegroupid
          @MonitorStatus = monitorstatus
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupId = params['RuleGroupId']
          @MonitorStatus = params['MonitorStatus']
        end
      end

      # ModifyMonitorStatus返回参数结构体
      class ModifyMonitorStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 监控状态修改成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRuleGroupSubscription请求参数结构体
      class ModifyRuleGroupSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param Receivers: 订阅人信息
        # @type Receivers: Array
        # @param SubscribeType: 订阅类型
        # @type SubscribeType: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DatabaseId: 数据库Id
        # @type DatabaseId: String
        # @param DatasourceId: 数据源Id
        # @type DatasourceId: String
        # @param TableId: 数据表Id
        # @type TableId: String
        # @param WebHooks: 群机器人webhook信息
        # @type WebHooks: Array

        attr_accessor :RuleGroupId, :Receivers, :SubscribeType, :ProjectId, :DatabaseId, :DatasourceId, :TableId, :WebHooks
        
        def initialize(rulegroupid=nil, receivers=nil, subscribetype=nil, projectid=nil, databaseid=nil, datasourceid=nil, tableid=nil, webhooks=nil)
          @RuleGroupId = rulegroupid
          @Receivers = receivers
          @SubscribeType = subscribetype
          @ProjectId = projectid
          @DatabaseId = databaseid
          @DatasourceId = datasourceid
          @TableId = tableid
          @WebHooks = webhooks
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          unless params['Receivers'].nil?
            @Receivers = []
            params['Receivers'].each do |i|
              subscribereceiver_tmp = SubscribeReceiver.new
              subscribereceiver_tmp.deserialize(i)
              @Receivers << subscribereceiver_tmp
            end
          end
          @SubscribeType = params['SubscribeType']
          @ProjectId = params['ProjectId']
          @DatabaseId = params['DatabaseId']
          @DatasourceId = params['DatasourceId']
          @TableId = params['TableId']
          unless params['WebHooks'].nil?
            @WebHooks = []
            params['WebHooks'].each do |i|
              subscribewebhook_tmp = SubscribeWebHook.new
              subscribewebhook_tmp.deserialize(i)
              @WebHooks << subscribewebhook_tmp
            end
          end
        end
      end

      # ModifyRuleGroupSubscription返回参数结构体
      class ModifyRuleGroupSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param TableId: 数据表ID
        # @type TableId: String
        # @param RuleTemplateId: 规则模板ID
        # @type RuleTemplateId: Integer
        # @param Type: 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        # @type Type: Integer
        # @param QualityDim: 规则所属质量维度（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # @type QualityDim: Integer
        # @param SourceObjectDataTypeName: 源字段详细类型，int、string
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # @type SourceObjectValue: String
        # @param ConditionType: 检测范围 1.全表   2.条件扫描
        # @type ConditionType: Integer
        # @param ConditionExpression: 条件扫描WHERE条件表达式
        # @type ConditionExpression: String
        # @param CustomSql: 自定义SQL
        # @type CustomSql: String
        # @param CompareRule: 报警触发条件
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20210820.models.CompareRule`
        # @param AlarmLevel: 报警触发级别 1.低, 2.中, 3.高
        # @type AlarmLevel: Integer
        # @param Description: 规则描述
        # @type Description: String
        # @param TargetDatabaseId: 目标库Id
        # @type TargetDatabaseId: String
        # @param TargetTableId: 目标表Id
        # @type TargetTableId: String
        # @param TargetConditionExpr: 目标过滤条件表达式
        # @type TargetConditionExpr: String
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式
        # @type RelConditionExpr: String
        # @param FieldConfig: 自定义模版sql表达式字段替换参数
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20210820.models.RuleFieldConfig`
        # @param TargetObjectValue: 目标字段名称  CITY
        # @type TargetObjectValue: String

        attr_accessor :ProjectId, :RuleId, :RuleGroupId, :Name, :TableId, :RuleTemplateId, :Type, :QualityDim, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :CompareRule, :AlarmLevel, :Description, :TargetDatabaseId, :TargetTableId, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :TargetObjectValue
        
        def initialize(projectid=nil, ruleid=nil, rulegroupid=nil, name=nil, tableid=nil, ruletemplateid=nil, type=nil, qualitydim=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, comparerule=nil, alarmlevel=nil, description=nil, targetdatabaseid=nil, targettableid=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, targetobjectvalue=nil)
          @ProjectId = projectid
          @RuleId = ruleid
          @RuleGroupId = rulegroupid
          @Name = name
          @TableId = tableid
          @RuleTemplateId = ruletemplateid
          @Type = type
          @QualityDim = qualitydim
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionType = conditiontype
          @ConditionExpression = conditionexpression
          @CustomSql = customsql
          @CompareRule = comparerule
          @AlarmLevel = alarmlevel
          @Description = description
          @TargetDatabaseId = targetdatabaseid
          @TargetTableId = targettableid
          @TargetConditionExpr = targetconditionexpr
          @RelConditionExpr = relconditionexpr
          @FieldConfig = fieldconfig
          @TargetObjectValue = targetobjectvalue
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleId = params['RuleId']
          @RuleGroupId = params['RuleGroupId']
          @Name = params['Name']
          @TableId = params['TableId']
          @RuleTemplateId = params['RuleTemplateId']
          @Type = params['Type']
          @QualityDim = params['QualityDim']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionType = params['ConditionType']
          @ConditionExpression = params['ConditionExpression']
          @CustomSql = params['CustomSql']
          unless params['CompareRule'].nil?
            @CompareRule = CompareRule.new
            @CompareRule.deserialize(params['CompareRule'])
          end
          @AlarmLevel = params['AlarmLevel']
          @Description = params['Description']
          @TargetDatabaseId = params['TargetDatabaseId']
          @TargetTableId = params['TargetTableId']
          @TargetConditionExpr = params['TargetConditionExpr']
          @RelConditionExpr = params['RelConditionExpr']
          unless params['FieldConfig'].nil?
            @FieldConfig = RuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @TargetObjectValue = params['TargetObjectValue']
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否更新成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRuleTemplate请求参数结构体
      class ModifyRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模版ID
        # @type TemplateId: Integer
        # @param Type: 模版类型  1.系统模版   2.自定义模版
        # @type Type: Integer
        # @param Name: 模版名称
        # @type Name: String
        # @param QualityDim: 质量检测维度 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性
        # @type QualityDim: Integer
        # @param SourceObjectType: 源端数据对象类型 1.常量  2.离线表级   2.离线字段级
        # @type SourceObjectType: Integer
        # @param Description: 描述
        # @type Description: String
        # @param SourceEngineTypes: 源端对应的引擎类型
        # @type SourceEngineTypes: Array
        # @param MultiSourceFlag: 是否关联其它库表
        # @type MultiSourceFlag: Boolean
        # @param SqlExpression: SQL 表达式
        # @type SqlExpression: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WhereFlag: 是否添加where参数
        # @type WhereFlag: Boolean

        attr_accessor :TemplateId, :Type, :Name, :QualityDim, :SourceObjectType, :Description, :SourceEngineTypes, :MultiSourceFlag, :SqlExpression, :ProjectId, :WhereFlag
        
        def initialize(templateid=nil, type=nil, name=nil, qualitydim=nil, sourceobjecttype=nil, description=nil, sourceenginetypes=nil, multisourceflag=nil, sqlexpression=nil, projectid=nil, whereflag=nil)
          @TemplateId = templateid
          @Type = type
          @Name = name
          @QualityDim = qualitydim
          @SourceObjectType = sourceobjecttype
          @Description = description
          @SourceEngineTypes = sourceenginetypes
          @MultiSourceFlag = multisourceflag
          @SqlExpression = sqlexpression
          @ProjectId = projectid
          @WhereFlag = whereflag
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Type = params['Type']
          @Name = params['Name']
          @QualityDim = params['QualityDim']
          @SourceObjectType = params['SourceObjectType']
          @Description = params['Description']
          @SourceEngineTypes = params['SourceEngineTypes']
          @MultiSourceFlag = params['MultiSourceFlag']
          @SqlExpression = params['SqlExpression']
          @ProjectId = params['ProjectId']
          @WhereFlag = params['WhereFlag']
        end
      end

      # ModifyRuleTemplate返回参数结构体
      class ModifyRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 修改成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskAlarmRegular请求参数结构体
      class ModifyTaskAlarmRegularRequest < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: String
        # @param TaskAlarmInfo: 规则信息
        # @type TaskAlarmInfo: :class:`Tencentcloud::Wedata.v20210820.models.TaskAlarmInfo`
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Id, :TaskAlarmInfo, :ProjectId
        
        def initialize(id=nil, taskalarminfo=nil, projectid=nil)
          @Id = id
          @TaskAlarmInfo = taskalarminfo
          @ProjectId = projectid
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['TaskAlarmInfo'].nil?
            @TaskAlarmInfo = TaskAlarmInfo.new
            @TaskAlarmInfo.deserialize(params['TaskAlarmInfo'])
          end
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyTaskAlarmRegular返回参数结构体
      class ModifyTaskAlarmRegularResponse < TencentCloud::Common::AbstractModel
        # @param Data: 判断是否修改成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskInfo请求参数结构体
      class ModifyTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param DelayTime: 执行时间，单位分钟，天/周/月/年调度才有。比如天调度，每天的02:00点执行一次，delayTime就是120分钟
        # @type DelayTime: Integer
        # @param StartupTime: 启动时间
        # @type StartupTime: Integer
        # @param SelfDepend: 自依赖类型  1:有序串行 一次一个 排队, 2: 无序串行 一次一个 不排队， 3:并行 一次多个
        # @type SelfDepend: Integer
        # @param StartTime: 生效开始时间，格式 yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 生效结束时间，格式 yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param TaskAction: 调度配置-弹性周期配置，小时/周/月/年调度才有，小时任务指定每天的0点3点4点跑，则为'0,3,4'。
        # @type TaskAction: String
        # @param CycleType: "周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param CycleStep: 步长，间隔时间，最小1
        # @type CycleStep: Integer
        # @param CrontabExpression: cron表达式  周期类型为crontab调度才需要
        # @type CrontabExpression: String
        # @param ExecutionStartTime: 执行时间左闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionEndTime: String
        # @param TaskName: 新的任务名
        # @type TaskName: String
        # @param RetryWait: 失败重试间隔,单位分钟，创建任务的时候已经给了默认值
        # @type RetryWait: Integer
        # @param TryLimit: 失败重试次数，创建任务的时候已经给了默认值
        # @type TryLimit: Integer
        # @param Retriable: 是否可重试，1代表可以重试
        # @type Retriable: Integer
        # @param RunPriority: 运行优先级，4高 5中 6低
        # @type RunPriority: Integer
        # @param TaskExt: 任务的扩展配置
        # @type TaskExt: Array
        # @param ResourceGroup: 执行资源组id，需要去资源管理服务上创建调度资源组，并且绑定cvm机器
        # @type ResourceGroup: String
        # @param YarnQueue: 资源池队列名称
        # @type YarnQueue: String
        # @param BrokerIp: 资源组下具体执行机，any 表示可以跑在任意一台。
        # @type BrokerIp: String
        # @param InCharge: 责任人
        # @type InCharge: String
        # @param Notes: 任务备注
        # @type Notes: String
        # @param TaskParamInfos: 任务参数
        # @type TaskParamInfos: Array
        # @param SourceServer: 源数据源
        # @type SourceServer: String
        # @param TargetServer: 目标数据源
        # @type TargetServer: String
        # @param DependencyWorkflow: 是否支持工作流依赖 yes / no 默认 no
        # @type DependencyWorkflow: String
        # @param DependencyConfigDTOs: 依赖配置
        # @type DependencyConfigDTOs: Array

        attr_accessor :ProjectId, :TaskId, :DelayTime, :StartupTime, :SelfDepend, :StartTime, :EndTime, :TaskAction, :CycleType, :CycleStep, :CrontabExpression, :ExecutionStartTime, :ExecutionEndTime, :TaskName, :RetryWait, :TryLimit, :Retriable, :RunPriority, :TaskExt, :ResourceGroup, :YarnQueue, :BrokerIp, :InCharge, :Notes, :TaskParamInfos, :SourceServer, :TargetServer, :DependencyWorkflow, :DependencyConfigDTOs
        
        def initialize(projectid=nil, taskid=nil, delaytime=nil, startuptime=nil, selfdepend=nil, starttime=nil, endtime=nil, taskaction=nil, cycletype=nil, cyclestep=nil, crontabexpression=nil, executionstarttime=nil, executionendtime=nil, taskname=nil, retrywait=nil, trylimit=nil, retriable=nil, runpriority=nil, taskext=nil, resourcegroup=nil, yarnqueue=nil, brokerip=nil, incharge=nil, notes=nil, taskparaminfos=nil, sourceserver=nil, targetserver=nil, dependencyworkflow=nil, dependencyconfigdtos=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @DelayTime = delaytime
          @StartupTime = startuptime
          @SelfDepend = selfdepend
          @StartTime = starttime
          @EndTime = endtime
          @TaskAction = taskaction
          @CycleType = cycletype
          @CycleStep = cyclestep
          @CrontabExpression = crontabexpression
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @TaskName = taskname
          @RetryWait = retrywait
          @TryLimit = trylimit
          @Retriable = retriable
          @RunPriority = runpriority
          @TaskExt = taskext
          @ResourceGroup = resourcegroup
          @YarnQueue = yarnqueue
          @BrokerIp = brokerip
          @InCharge = incharge
          @Notes = notes
          @TaskParamInfos = taskparaminfos
          @SourceServer = sourceserver
          @TargetServer = targetserver
          @DependencyWorkflow = dependencyworkflow
          @DependencyConfigDTOs = dependencyconfigdtos
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @DelayTime = params['DelayTime']
          @StartupTime = params['StartupTime']
          @SelfDepend = params['SelfDepend']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskAction = params['TaskAction']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @CrontabExpression = params['CrontabExpression']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @TaskName = params['TaskName']
          @RetryWait = params['RetryWait']
          @TryLimit = params['TryLimit']
          @Retriable = params['Retriable']
          @RunPriority = params['RunPriority']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
          @ResourceGroup = params['ResourceGroup']
          @YarnQueue = params['YarnQueue']
          @BrokerIp = params['BrokerIp']
          @InCharge = params['InCharge']
          @Notes = params['Notes']
          unless params['TaskParamInfos'].nil?
            @TaskParamInfos = []
            params['TaskParamInfos'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @TaskParamInfos << paraminfo_tmp
            end
          end
          @SourceServer = params['SourceServer']
          @TargetServer = params['TargetServer']
          @DependencyWorkflow = params['DependencyWorkflow']
          unless params['DependencyConfigDTOs'].nil?
            @DependencyConfigDTOs = []
            params['DependencyConfigDTOs'].each do |i|
              dependencyconfig_tmp = DependencyConfig.new
              dependencyconfig_tmp.deserialize(i)
              @DependencyConfigDTOs << dependencyconfig_tmp
            end
          end
        end
      end

      # ModifyTaskInfo返回参数结构体
      class ModifyTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskLinks请求参数结构体
      class ModifyTaskLinksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskFrom: 父任务ID
        # @type TaskFrom: String
        # @param TaskTo: 子任务ID
        # @type TaskTo: String
        # @param WorkflowId: 子任务工作流
        # @type WorkflowId: String
        # @param RealFromWorkflowId: 父任务工作流
        # @type RealFromWorkflowId: String
        # @param LinkDependencyType: 父子任务之间的依赖关系
        # @type LinkDependencyType: String

        attr_accessor :ProjectId, :TaskFrom, :TaskTo, :WorkflowId, :RealFromWorkflowId, :LinkDependencyType
        
        def initialize(projectid=nil, taskfrom=nil, taskto=nil, workflowid=nil, realfromworkflowid=nil, linkdependencytype=nil)
          @ProjectId = projectid
          @TaskFrom = taskfrom
          @TaskTo = taskto
          @WorkflowId = workflowid
          @RealFromWorkflowId = realfromworkflowid
          @LinkDependencyType = linkdependencytype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskFrom = params['TaskFrom']
          @TaskTo = params['TaskTo']
          @WorkflowId = params['WorkflowId']
          @RealFromWorkflowId = params['RealFromWorkflowId']
          @LinkDependencyType = params['LinkDependencyType']
        end
      end

      # ModifyTaskLinks返回参数结构体
      class ModifyTaskLinksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskName请求参数结构体
      class ModifyTaskNameRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 名称
        # @type TaskName: String
        # @param TaskId: id
        # @type TaskId: String
        # @param ProjectId: 项目/工作空间id
        # @type ProjectId: String
        # @param Notes: 备注
        # @type Notes: String

        attr_accessor :TaskName, :TaskId, :ProjectId, :Notes
        
        def initialize(taskname=nil, taskid=nil, projectid=nil, notes=nil)
          @TaskName = taskname
          @TaskId = taskid
          @ProjectId = projectid
          @Notes = notes
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @Notes = params['Notes']
        end
      end

      # ModifyTaskName返回参数结构体
      class ModifyTaskNameResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskScript请求参数结构体
      class ModifyTaskScriptRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param ScriptContent: 脚本内容 base64编码
        # @type ScriptContent: String
        # @param IntegrationNodeDetails: 集成任务脚本配置
        # @type IntegrationNodeDetails: Array

        attr_accessor :ProjectId, :TaskId, :ScriptContent, :IntegrationNodeDetails
        
        def initialize(projectid=nil, taskid=nil, scriptcontent=nil, integrationnodedetails=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @ScriptContent = scriptcontent
          @IntegrationNodeDetails = integrationnodedetails
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @ScriptContent = params['ScriptContent']
          unless params['IntegrationNodeDetails'].nil?
            @IntegrationNodeDetails = []
            params['IntegrationNodeDetails'].each do |i|
              integrationnodedetail_tmp = IntegrationNodeDetail.new
              integrationnodedetail_tmp.deserialize(i)
              @IntegrationNodeDetails << integrationnodedetail_tmp
            end
          end
        end
      end

      # ModifyTaskScript返回参数结构体
      class ModifyTaskScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonContent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonContent.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkflowInfo请求参数结构体
      class ModifyWorkflowInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param Owner: 责任人
        # @type Owner: String
        # @param OwnerId: 责任人id
        # @type OwnerId: String
        # @param WorkflowDesc: 备注
        # @type WorkflowDesc: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String
        # @param UserGroupId: 工作流所属用户分组id  若有多个,分号隔开: a;b;c
        # @type UserGroupId: String
        # @param UserGroupName: 工作流所属用户分组名称  若有多个,分号隔开: a;b;c
        # @type UserGroupName: String
        # @param WorkflowParams: 工作流参数列表
        # @type WorkflowParams: Array
        # @param GeneralTaskParams: 用于配置优化参数（线程、内存、CPU核数等），仅作用于Spark SQL节点。多个参数用英文分号分隔。
        # @type GeneralTaskParams: Array

        attr_accessor :ProjectId, :WorkflowId, :Owner, :OwnerId, :WorkflowDesc, :WorkflowName, :FolderId, :UserGroupId, :UserGroupName, :WorkflowParams, :GeneralTaskParams
        
        def initialize(projectid=nil, workflowid=nil, owner=nil, ownerid=nil, workflowdesc=nil, workflowname=nil, folderid=nil, usergroupid=nil, usergroupname=nil, workflowparams=nil, generaltaskparams=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @Owner = owner
          @OwnerId = ownerid
          @WorkflowDesc = workflowdesc
          @WorkflowName = workflowname
          @FolderId = folderid
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
          @WorkflowParams = workflowparams
          @GeneralTaskParams = generaltaskparams
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @Owner = params['Owner']
          @OwnerId = params['OwnerId']
          @WorkflowDesc = params['WorkflowDesc']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              generaltaskparam_tmp = GeneralTaskParam.new
              generaltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << generaltaskparam_tmp
            end
          end
        end
      end

      # ModifyWorkflowInfo返回参数结构体
      class ModifyWorkflowInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkflowSchedule请求参数结构体
      class ModifyWorkflowScheduleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param DelayTime: 延迟时间，单位分钟
        # @type DelayTime: Integer
        # @param StartupTime: 启动时间
        # @type StartupTime: Integer
        # @param SelfDepend: 自依赖类型  1:有序串行 一次一个 排队, 2: 无序串行 一次一个 不排队， 3:并行 一次多个
        # @type SelfDepend: Integer
        # @param CycleType: "周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param CycleStep: 步长，间隔时间，最小1
        # @type CycleStep: Integer
        # @param StartTime: 生效开始时间，格式 yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 生效结束时间，格式 yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param TaskAction: 调度配置-弹性周期配置，小时/周/月/年调度才有，小时任务指定每天的0点3点4点跑，则为'0,3,4'。
        # @type TaskAction: String
        # @param CrontabExpression: cron表达式  周期类型为crontab调度才需要
        # @type CrontabExpression: String
        # @param ExecutionStartTime: 执行时间左闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionEndTime: String
        # @param DependencyWorkflow: 工作流依赖 ,yes 或者no
        # @type DependencyWorkflow: String

        attr_accessor :ProjectId, :WorkflowId, :DelayTime, :StartupTime, :SelfDepend, :CycleType, :CycleStep, :StartTime, :EndTime, :TaskAction, :CrontabExpression, :ExecutionStartTime, :ExecutionEndTime, :DependencyWorkflow
        
        def initialize(projectid=nil, workflowid=nil, delaytime=nil, startuptime=nil, selfdepend=nil, cycletype=nil, cyclestep=nil, starttime=nil, endtime=nil, taskaction=nil, crontabexpression=nil, executionstarttime=nil, executionendtime=nil, dependencyworkflow=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @DelayTime = delaytime
          @StartupTime = startuptime
          @SelfDepend = selfdepend
          @CycleType = cycletype
          @CycleStep = cyclestep
          @StartTime = starttime
          @EndTime = endtime
          @TaskAction = taskaction
          @CrontabExpression = crontabexpression
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @DependencyWorkflow = dependencyworkflow
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @DelayTime = params['DelayTime']
          @StartupTime = params['StartupTime']
          @SelfDepend = params['SelfDepend']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskAction = params['TaskAction']
          @CrontabExpression = params['CrontabExpression']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @DependencyWorkflow = params['DependencyWorkflow']
        end
      end

      # ModifyWorkflowSchedule返回参数结构体
      class ModifyWorkflowScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 命名空间
      class Namespace < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Status: 当前状态
        # @type Status: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String

        attr_accessor :Name, :Status, :CreatedAt
        
        def initialize(name=nil, status=nil, createdat=nil)
          @Name = name
          @Status = status
          @CreatedAt = createdat
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
        end
      end

      # 离线实例
      class OfflineInstance < TencentCloud::Common::AbstractModel
        # @param CreateUin: 创建账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: String
        # @param OperatorUin: 操作账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUin: String
        # @param OwnerUin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param AppId: 账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkspaceId: 项目Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String
        # @param IssueId: 下发时间
        # @type IssueId: String
        # @param InlongTaskId: 资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InlongTaskId: String
        # @param ResourceGroup: 资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param TaskRunType: 实例类型
        # @type TaskRunType: Integer
        # @param State: 实例状态
        # @type State: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String
        # @param InstanceKey: 唯一key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String

        attr_accessor :CreateUin, :OperatorUin, :OwnerUin, :AppId, :WorkspaceId, :TaskId, :CurRunDate, :IssueId, :InlongTaskId, :ResourceGroup, :TaskRunType, :State, :StartTime, :EndTime, :CreateTime, :UpdateTime, :InstanceKey
        
        def initialize(createuin=nil, operatoruin=nil, owneruin=nil, appid=nil, workspaceid=nil, taskid=nil, currundate=nil, issueid=nil, inlongtaskid=nil, resourcegroup=nil, taskruntype=nil, state=nil, starttime=nil, endtime=nil, createtime=nil, updatetime=nil, instancekey=nil)
          @CreateUin = createuin
          @OperatorUin = operatoruin
          @OwnerUin = owneruin
          @AppId = appid
          @WorkspaceId = workspaceid
          @TaskId = taskid
          @CurRunDate = currundate
          @IssueId = issueid
          @InlongTaskId = inlongtaskid
          @ResourceGroup = resourcegroup
          @TaskRunType = taskruntype
          @State = state
          @StartTime = starttime
          @EndTime = endtime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @InstanceKey = instancekey
        end

        def deserialize(params)
          @CreateUin = params['CreateUin']
          @OperatorUin = params['OperatorUin']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @WorkspaceId = params['WorkspaceId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @IssueId = params['IssueId']
          @InlongTaskId = params['InlongTaskId']
          @ResourceGroup = params['ResourceGroup']
          @TaskRunType = params['TaskRunType']
          @State = params['State']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @InstanceKey = params['InstanceKey']
        end
      end

      # 离线任务新增参数
      class OfflineTaskAddParam < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 名称
        # @type WorkflowName: String
        # @param DependencyWorkflow: 依赖
        # @type DependencyWorkflow: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param CycleType: 周期
        # @type CycleType: Integer
        # @param CycleStep: 周期间隔
        # @type CycleStep: Integer
        # @param DelayTime: 延迟时间
        # @type DelayTime: Integer
        # @param CrontabExpression: crontab
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param RetryWait: 重试等待
        # @type RetryWait: Integer
        # @param Retriable: 是否可以重试
        # @type Retriable: Integer
        # @param TryLimit: 重试限制
        # @type TryLimit: Integer
        # @param RunPriority: 优先级
        # @type RunPriority: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param SelfDepend: 1 有序串行 一次一个，排队 orderly
        # 2 无序串行 一次一个，不排队 serial
        # 3 并行 一次多个 parallel
        # @type SelfDepend: Integer
        # @param TaskAction: 周任务：1是周天，2是周1，7是周6 。
        # 月任务：如具体1，3号则写 "1,3"，指定月末不可和具体号数一起输入，仅能为 "L"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param ExecutionEndTime: 调度执行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param ExecutionStartTime: 调度执行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String

        attr_accessor :WorkflowName, :DependencyWorkflow, :StartTime, :EndTime, :CycleType, :CycleStep, :DelayTime, :CrontabExpression, :RetryWait, :Retriable, :TryLimit, :RunPriority, :ProductName, :SelfDepend, :TaskAction, :ExecutionEndTime, :ExecutionStartTime
        
        def initialize(workflowname=nil, dependencyworkflow=nil, starttime=nil, endtime=nil, cycletype=nil, cyclestep=nil, delaytime=nil, crontabexpression=nil, retrywait=nil, retriable=nil, trylimit=nil, runpriority=nil, productname=nil, selfdepend=nil, taskaction=nil, executionendtime=nil, executionstarttime=nil)
          @WorkflowName = workflowname
          @DependencyWorkflow = dependencyworkflow
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @CycleStep = cyclestep
          @DelayTime = delaytime
          @CrontabExpression = crontabexpression
          @RetryWait = retrywait
          @Retriable = retriable
          @TryLimit = trylimit
          @RunPriority = runpriority
          @ProductName = productname
          @SelfDepend = selfdepend
          @TaskAction = taskaction
          @ExecutionEndTime = executionendtime
          @ExecutionStartTime = executionstarttime
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @DependencyWorkflow = params['DependencyWorkflow']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @DelayTime = params['DelayTime']
          @CrontabExpression = params['CrontabExpression']
          @RetryWait = params['RetryWait']
          @Retriable = params['Retriable']
          @TryLimit = params['TryLimit']
          @RunPriority = params['RunPriority']
          @ProductName = params['ProductName']
          @SelfDepend = params['SelfDepend']
          @TaskAction = params['TaskAction']
          @ExecutionEndTime = params['ExecutionEndTime']
          @ExecutionStartTime = params['ExecutionStartTime']
        end
      end

      # 操作结果
      class OperateResult < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果；true表示成功；false表示失败
        # @type Result: Boolean
        # @param ErrorId: 错误编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String
        # @param ErrorDesc: 操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String

        attr_accessor :Result, :ErrorId, :ErrorDesc
        
        def initialize(result=nil, errorid=nil, errordesc=nil)
          @Result = result
          @ErrorId = errorid
          @ErrorDesc = errordesc
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorId = params['ErrorId']
          @ErrorDesc = params['ErrorDesc']
        end
      end

      # 通用排序字段
      class OrderField < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段名称
        # @type Name: String
        # @param Direction: 排序方向：ASC|DESC
        # @type Direction: String

        attr_accessor :Name, :Direction
        
        def initialize(name=nil, direction=nil)
          @Name = name
          @Direction = direction
        end

        def deserialize(params)
          @Name = params['Name']
          @Direction = params['Direction']
        end
      end

      # 包含层级信息的函数
      class OrganizationalFunction < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param DisplayName: 展示名称
        # @type DisplayName: String
        # @param LayerPath: 层级路径
        # @type LayerPath: String
        # @param ParentLayerPath: 上级层级路径
        # @type ParentLayerPath: String
        # @param Type: 函数类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Kind: 函数分类：窗口函数、聚合函数、日期函数......
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Category: 函数种类：系统函数、自定义函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Status: 函数状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Description: 函数说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Usage: 函数用法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usage: String
        # @param ParamDesc: 函数参数说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamDesc: String
        # @param ReturnDesc: 函数返回值说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnDesc: String
        # @param Example: 函数示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Example: String
        # @param ClusterIdentifier: 集群实例引擎 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIdentifier: String
        # @param FuncId: 函数 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FuncId: String
        # @param ClassName: 函数类名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassName: String
        # @param ResourceList: 函数资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceList: Array
        # @param OperatorUserIds: 操作人 ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUserIds: Array
        # @param OwnerUserIds: 公有云 Owner ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserIds: Array
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SubmitErrorMsg: 提交失败错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitErrorMsg: String

        attr_accessor :Name, :DisplayName, :LayerPath, :ParentLayerPath, :Type, :Kind, :Category, :Status, :Description, :Usage, :ParamDesc, :ReturnDesc, :Example, :ClusterIdentifier, :FuncId, :ClassName, :ResourceList, :OperatorUserIds, :OwnerUserIds, :DbName, :SubmitErrorMsg
        
        def initialize(name=nil, displayname=nil, layerpath=nil, parentlayerpath=nil, type=nil, kind=nil, category=nil, status=nil, description=nil, usage=nil, paramdesc=nil, returndesc=nil, example=nil, clusteridentifier=nil, funcid=nil, classname=nil, resourcelist=nil, operatoruserids=nil, owneruserids=nil, dbname=nil, submiterrormsg=nil)
          @Name = name
          @DisplayName = displayname
          @LayerPath = layerpath
          @ParentLayerPath = parentlayerpath
          @Type = type
          @Kind = kind
          @Category = category
          @Status = status
          @Description = description
          @Usage = usage
          @ParamDesc = paramdesc
          @ReturnDesc = returndesc
          @Example = example
          @ClusterIdentifier = clusteridentifier
          @FuncId = funcid
          @ClassName = classname
          @ResourceList = resourcelist
          @OperatorUserIds = operatoruserids
          @OwnerUserIds = owneruserids
          @DbName = dbname
          @SubmitErrorMsg = submiterrormsg
        end

        def deserialize(params)
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @LayerPath = params['LayerPath']
          @ParentLayerPath = params['ParentLayerPath']
          @Type = params['Type']
          @Kind = params['Kind']
          @Category = params['Category']
          @Status = params['Status']
          @Description = params['Description']
          @Usage = params['Usage']
          @ParamDesc = params['ParamDesc']
          @ReturnDesc = params['ReturnDesc']
          @Example = params['Example']
          @ClusterIdentifier = params['ClusterIdentifier']
          @FuncId = params['FuncId']
          @ClassName = params['ClassName']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              functionversion_tmp = FunctionVersion.new
              functionversion_tmp.deserialize(i)
              @ResourceList << functionversion_tmp
            end
          end
          @OperatorUserIds = params['OperatorUserIds']
          @OwnerUserIds = params['OwnerUserIds']
          @DbName = params['DbName']
          @SubmitErrorMsg = params['SubmitErrorMsg']
        end
      end

      # 参数参数
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # @type ParamValue: String

        attr_accessor :ParamKey, :ParamValue
        
        def initialize(paramkey=nil, paramvalue=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # 分区参数
      class Partition < TencentCloud::Common::AbstractModel
        # @param Transform: 分区转换策略
        # @type Transform: String
        # @param Name: 分区字段名
        # @type Name: String
        # @param TransformArgs: 策略参数
        # @type TransformArgs: Array

        attr_accessor :Transform, :Name, :TransformArgs
        
        def initialize(transform=nil, name=nil, transformargs=nil)
          @Transform = transform
          @Name = name
          @TransformArgs = transformargs
        end

        def deserialize(params)
          @Transform = params['Transform']
          @Name = params['Name']
          @TransformArgs = params['TransformArgs']
        end
      end

      # 数据质量生产调度任务业务实体
      class ProdSchedulerTask < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 生产调度任务工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskId: 生产调度任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 生产调度任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String

        attr_accessor :WorkflowId, :TaskId, :TaskName
        
        def initialize(workflowid=nil, taskid=nil, taskname=nil)
          @WorkflowId = workflowid
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # dlc建表属性
      class Property < TencentCloud::Common::AbstractModel
        # @param Key: key值
        # @type Key: String
        # @param Value: value值
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

      # 质量评分
      class QualityScore < TencentCloud::Common::AbstractModel
        # @param CompositeScore: 综合分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompositeScore: Float
        # @param ScoringDistribution: 评分分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScoringDistribution: Array
        # @param TotalTableNumber: 总表数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTableNumber: Integer

        attr_accessor :CompositeScore, :ScoringDistribution, :TotalTableNumber
        
        def initialize(compositescore=nil, scoringdistribution=nil, totaltablenumber=nil)
          @CompositeScore = compositescore
          @ScoringDistribution = scoringdistribution
          @TotalTableNumber = totaltablenumber
        end

        def deserialize(params)
          @CompositeScore = params['CompositeScore']
          unless params['ScoringDistribution'].nil?
            @ScoringDistribution = []
            params['ScoringDistribution'].each do |i|
              tablescorestatisticsinfo_tmp = TableScoreStatisticsInfo.new
              tablescorestatisticsinfo_tmp.deserialize(i)
              @ScoringDistribution << tablescorestatisticsinfo_tmp
            end
          end
          @TotalTableNumber = params['TotalTableNumber']
        end
      end

      # 质量评分趋势
      class QualityScoreTrend < TencentCloud::Common::AbstractModel
        # @param AverageScore: 周期平均分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageScore: Float
        # @param DailyScoreList: 日评分列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DailyScoreList: Array

        attr_accessor :AverageScore, :DailyScoreList
        
        def initialize(averagescore=nil, dailyscorelist=nil)
          @AverageScore = averagescore
          @DailyScoreList = dailyscorelist
        end

        def deserialize(params)
          @AverageScore = params['AverageScore']
          unless params['DailyScoreList'].nil?
            @DailyScoreList = []
            params['DailyScoreList'].each do |i|
              dailyscoreinfo_tmp = DailyScoreInfo.new
              dailyscoreinfo_tmp.deserialize(i)
              @DailyScoreList << dailyscoreinfo_tmp
            end
          end
        end
      end

      # 实时任务实例当前的节点信息
      class RealTimeTaskInstanceNodeInfo < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param InstanceNodeInfoList: 实时任务实例节点信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodeInfoList: Array

        attr_accessor :TaskName, :TaskId, :InstanceNodeInfoList
        
        def initialize(taskname=nil, taskid=nil, instancenodeinfolist=nil)
          @TaskName = taskname
          @TaskId = taskid
          @InstanceNodeInfoList = instancenodeinfolist
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          unless params['InstanceNodeInfoList'].nil?
            @InstanceNodeInfoList = []
            params['InstanceNodeInfoList'].each do |i|
              instancenodeinfo_tmp = InstanceNodeInfo.new
              instancenodeinfo_tmp.deserialize(i)
              @InstanceNodeInfoList << instancenodeinfo_tmp
            end
          end
        end
      end

      # 实时任务同步速度趋势
      class RealTimeTaskSpeed < TencentCloud::Common::AbstractModel
        # @param RecordsSpeedList: 同步速度条/s列表
        # @type RecordsSpeedList: Array
        # @param BytesSpeedList: 同步速度字节/s列表
        # @type BytesSpeedList: Array

        attr_accessor :RecordsSpeedList, :BytesSpeedList
        
        def initialize(recordsspeedlist=nil, bytesspeedlist=nil)
          @RecordsSpeedList = recordsspeedlist
          @BytesSpeedList = bytesspeedlist
        end

        def deserialize(params)
          unless params['RecordsSpeedList'].nil?
            @RecordsSpeedList = []
            params['RecordsSpeedList'].each do |i|
              recordsspeed_tmp = RecordsSpeed.new
              recordsspeed_tmp.deserialize(i)
              @RecordsSpeedList << recordsspeed_tmp
            end
          end
          unless params['BytesSpeedList'].nil?
            @BytesSpeedList = []
            params['BytesSpeedList'].each do |i|
              bytesspeed_tmp = BytesSpeed.new
              bytesspeed_tmp.deserialize(i)
              @BytesSpeedList << bytesspeed_tmp
            end
          end
        end
      end

      # 通用记录字段
      class RecordField < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Value: 字段值
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

      # 实时任务同步速度 条/s
      class RecordsSpeed < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Values: 速度值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :NodeType, :NodeName, :Values
        
        def initialize(nodetype=nil, nodename=nil, values=nil)
          @NodeType = nodetype
          @NodeName = nodename
          @Values = values
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              speedvalue_tmp = SpeedValue.new
              speedvalue_tmp.deserialize(i)
              @Values << speedvalue_tmp
            end
          end
        end
      end

      # RegisterEventListener请求参数结构体
      class RegisterEventListenerRequest < TencentCloud::Common::AbstractModel
        # @param Key: 关键字，如果是任务，则传任务Id
        # @type Key: String
        # @param EventName: 事件名称
        # @type EventName: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Type: 事件类型，默认 REST_API
        # @type Type: String
        # @param Properties: 配置信息，比如最长等待时间1天配置json：{"maxWaitEventTime":1,"maxWaitEventTimeUnit":"DAYS"}
        # @type Properties: String

        attr_accessor :Key, :EventName, :ProjectId, :Type, :Properties
        
        def initialize(key=nil, eventname=nil, projectid=nil, type=nil, properties=nil)
          @Key = key
          @EventName = eventname
          @ProjectId = projectid
          @Type = type
          @Properties = properties
        end

        def deserialize(params)
          @Key = params['Key']
          @EventName = params['EventName']
          @ProjectId = params['ProjectId']
          @Type = params['Type']
          @Properties = params['Properties']
        end
      end

      # RegisterEventListener返回参数结构体
      class RegisterEventListenerResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RegisterEvent请求参数结构体
      class RegisterEventRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Name: 事件名称，支持英文、数字和下划线，最长20个字符, 不能以数字下划线开头。
        # @type Name: String
        # @param EventSubType: 事件分割类型，周期类型: DAY，HOUR，MIN，SECOND
        # @type EventSubType: String
        # @param EventBroadcastType: 广播：BROADCAST,单播：SINGLE
        # @type EventBroadcastType: String
        # @param TimeUnit: 周期类型为天和小时为HOURS ，周期类型为分钟 ：MINUTES,周期类型为秒：SECONDS
        # @type TimeUnit: String
        # @param Owner: TBDS 事件所属人
        # @type Owner: String
        # @param EventType: 事件类型，默认值：TIME_SERIES
        # @type EventType: String
        # @param DimensionFormat: 对应day： yyyyMMdd，对应HOUR：yyyyMMddHH，对应MIN：yyyyMMddHHmm，对应SECOND：yyyyMMddHHmmss
        # @type DimensionFormat: String
        # @param TimeToLive: 存活时间
        # @type TimeToLive: Integer
        # @param Description: 事件描述
        # @type Description: String

        attr_accessor :ProjectId, :Name, :EventSubType, :EventBroadcastType, :TimeUnit, :Owner, :EventType, :DimensionFormat, :TimeToLive, :Description
        
        def initialize(projectid=nil, name=nil, eventsubtype=nil, eventbroadcasttype=nil, timeunit=nil, owner=nil, eventtype=nil, dimensionformat=nil, timetolive=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @EventSubType = eventsubtype
          @EventBroadcastType = eventbroadcasttype
          @TimeUnit = timeunit
          @Owner = owner
          @EventType = eventtype
          @DimensionFormat = dimensionformat
          @TimeToLive = timetolive
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @EventSubType = params['EventSubType']
          @EventBroadcastType = params['EventBroadcastType']
          @TimeUnit = params['TimeUnit']
          @Owner = params['Owner']
          @EventType = params['EventType']
          @DimensionFormat = params['DimensionFormat']
          @TimeToLive = params['TimeToLive']
          @Description = params['Description']
        end
      end

      # RegisterEvent返回参数结构体
      class RegisterEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RerunInstances请求参数结构体
      class RerunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array
        # @param CheckFather: 检查父任务类型, true: 检查父任务; false: 不检查父任务
        # @type CheckFather: Boolean
        # @param RerunType: 重跑类型, 1: 自身; 3: 孩子; 2: 自身以及孩子
        # @type RerunType: String
        # @param DependentWay: 实例依赖方式, 1: 自依赖; 2: 任务依赖; 3: 自依赖及父子依赖
        # @type DependentWay: String
        # @param SkipEventListening: 重跑忽略事件监听与否
        # @type SkipEventListening: Boolean
        # @param SonInstanceType: 下游实例范围 1: 所在工作流 2: 所在项目 3: 所有跨工作流依赖的项目
        # @type SonInstanceType: String

        attr_accessor :ProjectId, :Instances, :CheckFather, :RerunType, :DependentWay, :SkipEventListening, :SonInstanceType
        
        def initialize(projectid=nil, instances=nil, checkfather=nil, reruntype=nil, dependentway=nil, skipeventlistening=nil, soninstancetype=nil)
          @ProjectId = projectid
          @Instances = instances
          @CheckFather = checkfather
          @RerunType = reruntype
          @DependentWay = dependentway
          @SkipEventListening = skipeventlistening
          @SonInstanceType = soninstancetype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
          @CheckFather = params['CheckFather']
          @RerunType = params['RerunType']
          @DependentWay = params['DependentWay']
          @SkipEventListening = params['SkipEventListening']
          @SonInstanceType = params['SonInstanceType']
        end
      end

      # RerunInstances返回参数结构体
      class RerunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 资源管理目录树节点
      class ResourcePathTree < TencentCloud::Common::AbstractModel
        # @param Name: 资源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param IsLeaf: 是否为叶子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLeaf: Boolean
        # @param ResourceId: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param LocalPath: 本地路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalPath: String
        # @param RemotePath: 远程路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemotePath: String
        # @param FileExtensionType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtensionType: String
        # @param Size: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Md5Value: 文件MD5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5Value: String
        # @param OwnerName: 文件拥有者名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerName: String
        # @param UpdateUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUser: String
        # @param UpdateUserId: 文件更新人uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param CosBucket: Cos存储桶名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosBucket: String
        # @param CosRegion: Cos地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosRegion: String
        # @param ExtraInfo: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String

        attr_accessor :Name, :IsLeaf, :ResourceId, :LocalPath, :RemotePath, :FileExtensionType, :Size, :Md5Value, :OwnerName, :UpdateUser, :UpdateUserId, :CreateTime, :UpdateTime, :CosBucket, :CosRegion, :ExtraInfo
        
        def initialize(name=nil, isleaf=nil, resourceid=nil, localpath=nil, remotepath=nil, fileextensiontype=nil, size=nil, md5value=nil, ownername=nil, updateuser=nil, updateuserid=nil, createtime=nil, updatetime=nil, cosbucket=nil, cosregion=nil, extrainfo=nil)
          @Name = name
          @IsLeaf = isleaf
          @ResourceId = resourceid
          @LocalPath = localpath
          @RemotePath = remotepath
          @FileExtensionType = fileextensiontype
          @Size = size
          @Md5Value = md5value
          @OwnerName = ownername
          @UpdateUser = updateuser
          @UpdateUserId = updateuserid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @ExtraInfo = extrainfo
        end

        def deserialize(params)
          @Name = params['Name']
          @IsLeaf = params['IsLeaf']
          @ResourceId = params['ResourceId']
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @FileExtensionType = params['FileExtensionType']
          @Size = params['Size']
          @Md5Value = params['Md5Value']
          @OwnerName = params['OwnerName']
          @UpdateUser = params['UpdateUser']
          @UpdateUserId = params['UpdateUserId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @ExtraInfo = params['ExtraInfo']
        end
      end

      # RestartInLongAgent请求参数结构体
      class RestartInLongAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String

        attr_accessor :AgentId, :ProjectId
        
        def initialize(agentid=nil, projectid=nil)
          @AgentId = agentid
          @ProjectId = projectid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @ProjectId = params['ProjectId']
        end
      end

      # RestartInLongAgent返回参数结构体
      class RestartInLongAgentResponse < TencentCloud::Common::AbstractModel
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

      # ResumeIntegrationTask请求参数结构体
      class ResumeIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # ResumeIntegrationTask返回参数结构体
      class ResumeIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # RobAndLockIntegrationTask请求参数结构体
      class RobAndLockIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param TaskType: 任务类型：201. stream,   202. offline
        # @type TaskType: Integer

        attr_accessor :TaskId, :ProjectId, :TaskType
        
        def initialize(taskid=nil, projectid=nil, tasktype=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @TaskType = params['TaskType']
        end
      end

      # RobAndLockIntegrationTask返回参数结构体
      class RobAndLockIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param RobLockState: 抢锁状态
        # @type RobLockState: :class:`Tencentcloud::Wedata.v20210820.models.RobLockState`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RobLockState, :RequestId
        
        def initialize(roblockstate=nil, requestid=nil)
          @RobLockState = roblockstate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RobLockState'].nil?
            @RobLockState = RobLockState.new
            @RobLockState.deserialize(params['RobLockState'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 抢锁状态：是否可以抢锁和当前持锁人
      class RobLockState < TencentCloud::Common::AbstractModel
        # @param IsRob: 是否可以抢锁
        # @type IsRob: Boolean
        # @param Locker: 当前持锁人
        # @type Locker: String

        attr_accessor :IsRob, :Locker
        
        def initialize(isrob=nil, locker=nil)
          @IsRob = isrob
          @Locker = locker
        end

        def deserialize(params)
          @IsRob = params['IsRob']
          @Locker = params['Locker']
        end
      end

      # 数据质量规则
      class Rule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleGroupId: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param TableId: 数据表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param Name: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param RuleTemplateId: 规则模板Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: Integer
        # @param RuleTemplateContent: 规则模板概述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateContent: String
        # @param QualityDim: 规则所属质量维度 1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityDim: Integer
        # @param SourceObjectType: 规则适用的源数据对象类型（1：常量，2：离线表级，3：离线字段级别）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectType: Integer
        # @param SourceObjectDataType: 规则适用的源数据对象类型（1：数值，2：字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectDataType: Integer
        # @param SourceObjectDataTypeName: 源字段详细类型，INT、STRING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectValue: String
        # @param ConditionType: 检测范围 1.全表, 2.条件扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionType: Integer
        # @param ConditionExpression: 条件扫描WHERE条件表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionExpression: String
        # @param CustomSql: 自定义SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomSql: String
        # @param CompareRule: 报警触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20210820.models.CompareRule`
        # @param AlarmLevel: 报警触发级别 1.低, 2.中, 3.高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Operator: 规则配置人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param TargetDatabaseId: 目标库Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetDatabaseId: String
        # @param TargetDatabaseName: 目标库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetDatabaseName: String
        # @param TargetTableId: 目标表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetTableId: String
        # @param TargetTableName: 目标表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetTableName: String
        # @param TargetConditionExpr: 目标字段过滤条件表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetConditionExpr: String
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelConditionExpr: String
        # @param FieldConfig: 自定义模版sql表达式参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20210820.models.RuleFieldConfig`
        # @param MultiSourceFlag: 是否关联多表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiSourceFlag: Boolean
        # @param WhereFlag: 是否where参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhereFlag: Boolean
        # @param TemplateSql: 模版原始SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateSql: String
        # @param SubQualityDim: 模版子维度：0.父维度类型,1.一致性: 枚举范围一致性,2.一致性：数值范围一致性,3.一致性：字段数据相关性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubQualityDim: Integer
        # @param TargetObjectType: 规则适用的目标数据对象类型（1：常量，2：离线表级，3：离线字段级别）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectType: Integer
        # @param TargetObjectDataType: 规则适用的目标数据对象类型（1：数值，2：字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectDataType: Integer
        # @param TargetObjectDataTypeName: 目标字段详细类型，INT、STRING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectDataTypeName: String
        # @param TargetObjectValue: 目标字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectValue: String

        attr_accessor :RuleId, :RuleGroupId, :TableId, :Name, :Type, :RuleTemplateId, :RuleTemplateContent, :QualityDim, :SourceObjectType, :SourceObjectDataType, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :CompareRule, :AlarmLevel, :Description, :Operator, :TargetDatabaseId, :TargetDatabaseName, :TargetTableId, :TargetTableName, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :MultiSourceFlag, :WhereFlag, :TemplateSql, :SubQualityDim, :TargetObjectType, :TargetObjectDataType, :TargetObjectDataTypeName, :TargetObjectValue
        
        def initialize(ruleid=nil, rulegroupid=nil, tableid=nil, name=nil, type=nil, ruletemplateid=nil, ruletemplatecontent=nil, qualitydim=nil, sourceobjecttype=nil, sourceobjectdatatype=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, comparerule=nil, alarmlevel=nil, description=nil, operator=nil, targetdatabaseid=nil, targetdatabasename=nil, targettableid=nil, targettablename=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, multisourceflag=nil, whereflag=nil, templatesql=nil, subqualitydim=nil, targetobjecttype=nil, targetobjectdatatype=nil, targetobjectdatatypename=nil, targetobjectvalue=nil)
          @RuleId = ruleid
          @RuleGroupId = rulegroupid
          @TableId = tableid
          @Name = name
          @Type = type
          @RuleTemplateId = ruletemplateid
          @RuleTemplateContent = ruletemplatecontent
          @QualityDim = qualitydim
          @SourceObjectType = sourceobjecttype
          @SourceObjectDataType = sourceobjectdatatype
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionType = conditiontype
          @ConditionExpression = conditionexpression
          @CustomSql = customsql
          @CompareRule = comparerule
          @AlarmLevel = alarmlevel
          @Description = description
          @Operator = operator
          @TargetDatabaseId = targetdatabaseid
          @TargetDatabaseName = targetdatabasename
          @TargetTableId = targettableid
          @TargetTableName = targettablename
          @TargetConditionExpr = targetconditionexpr
          @RelConditionExpr = relconditionexpr
          @FieldConfig = fieldconfig
          @MultiSourceFlag = multisourceflag
          @WhereFlag = whereflag
          @TemplateSql = templatesql
          @SubQualityDim = subqualitydim
          @TargetObjectType = targetobjecttype
          @TargetObjectDataType = targetobjectdatatype
          @TargetObjectDataTypeName = targetobjectdatatypename
          @TargetObjectValue = targetobjectvalue
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleGroupId = params['RuleGroupId']
          @TableId = params['TableId']
          @Name = params['Name']
          @Type = params['Type']
          @RuleTemplateId = params['RuleTemplateId']
          @RuleTemplateContent = params['RuleTemplateContent']
          @QualityDim = params['QualityDim']
          @SourceObjectType = params['SourceObjectType']
          @SourceObjectDataType = params['SourceObjectDataType']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionType = params['ConditionType']
          @ConditionExpression = params['ConditionExpression']
          @CustomSql = params['CustomSql']
          unless params['CompareRule'].nil?
            @CompareRule = CompareRule.new
            @CompareRule.deserialize(params['CompareRule'])
          end
          @AlarmLevel = params['AlarmLevel']
          @Description = params['Description']
          @Operator = params['Operator']
          @TargetDatabaseId = params['TargetDatabaseId']
          @TargetDatabaseName = params['TargetDatabaseName']
          @TargetTableId = params['TargetTableId']
          @TargetTableName = params['TargetTableName']
          @TargetConditionExpr = params['TargetConditionExpr']
          @RelConditionExpr = params['RelConditionExpr']
          unless params['FieldConfig'].nil?
            @FieldConfig = RuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @MultiSourceFlag = params['MultiSourceFlag']
          @WhereFlag = params['WhereFlag']
          @TemplateSql = params['TemplateSql']
          @SubQualityDim = params['SubQualityDim']
          @TargetObjectType = params['TargetObjectType']
          @TargetObjectDataType = params['TargetObjectDataType']
          @TargetObjectDataTypeName = params['TargetObjectDataTypeName']
          @TargetObjectValue = params['TargetObjectValue']
        end
      end

      # 规则配置
      class RuleConfig < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param ConditionType: 规则检测范围类型 1.全表  2.条件扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionType: Integer
        # @param Condition: 检测范围表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String
        # @param TargetCondition: 目标检测范围表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetCondition: String

        attr_accessor :RuleId, :ConditionType, :Condition, :TargetCondition
        
        def initialize(ruleid=nil, conditiontype=nil, condition=nil, targetcondition=nil)
          @RuleId = ruleid
          @ConditionType = conditiontype
          @Condition = condition
          @TargetCondition = targetcondition
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ConditionType = params['ConditionType']
          @Condition = params['Condition']
          @TargetCondition = params['TargetCondition']
        end
      end

      # RuleDimCnt 规则维度统计
      class RuleDimCnt < TencentCloud::Common::AbstractModel
        # @param Dim: 1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # @type Dim: Integer
        # @param Cnt: count 数
        # @type Cnt: Integer

        attr_accessor :Dim, :Cnt
        
        def initialize(dim=nil, cnt=nil)
          @Dim = dim
          @Cnt = cnt
        end

        def deserialize(params)
          @Dim = params['Dim']
          @Cnt = params['Cnt']
        end
      end

      # 规则维度数统计
      class RuleDimStat < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 总数
        # @type TotalCnt: Integer
        # @param DimCntList: 维度统计数
        # @type DimCntList: Array

        attr_accessor :TotalCnt, :DimCntList
        
        def initialize(totalcnt=nil, dimcntlist=nil)
          @TotalCnt = totalcnt
          @DimCntList = dimcntlist
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['DimCntList'].nil?
            @DimCntList = []
            params['DimCntList'].each do |i|
              ruledimcnt_tmp = RuleDimCnt.new
              ruledimcnt_tmp.deserialize(i)
              @DimCntList << ruledimcnt_tmp
            end
          end
        end
      end

      # 规则执行配置
      class RuleExecConfig < TencentCloud::Common::AbstractModel
        # @param QueueName: 计算队列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueName: String
        # @param ExecutorGroupId: 执行资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String

        attr_accessor :QueueName, :ExecutorGroupId
        
        def initialize(queuename=nil, executorgroupid=nil)
          @QueueName = queuename
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # 概览趋势结果
      class RuleExecDateStat < TencentCloud::Common::AbstractModel
        # @param StatDate: 统计日期
        # @type StatDate: String
        # @param AlarmCnt: 告警数
        # @type AlarmCnt: Integer
        # @param PipelineCnt: 阻塞数
        # @type PipelineCnt: Integer

        attr_accessor :StatDate, :AlarmCnt, :PipelineCnt
        
        def initialize(statdate=nil, alarmcnt=nil, pipelinecnt=nil)
          @StatDate = statdate
          @AlarmCnt = alarmcnt
          @PipelineCnt = pipelinecnt
        end

        def deserialize(params)
          @StatDate = params['StatDate']
          @AlarmCnt = params['AlarmCnt']
          @PipelineCnt = params['PipelineCnt']
        end
      end

      # 规则执行结果导出结果
      class RuleExecExportResult < TencentCloud::Common::AbstractModel
        # @param RuleExecId: 规则执行id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleExecId: Integer
        # @param ExportTasks: 导出任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExportTasks: Array

        attr_accessor :RuleExecId, :ExportTasks
        
        def initialize(ruleexecid=nil, exporttasks=nil)
          @RuleExecId = ruleexecid
          @ExportTasks = exporttasks
        end

        def deserialize(params)
          @RuleExecId = params['RuleExecId']
          unless params['ExportTasks'].nil?
            @ExportTasks = []
            params['ExportTasks'].each do |i|
              exporttaskinfo_tmp = ExportTaskInfo.new
              exporttaskinfo_tmp.deserialize(i)
              @ExportTasks << exporttaskinfo_tmp
            end
          end
        end
      end

      # 规则执行日志
      class RuleExecLog < TencentCloud::Common::AbstractModel
        # @param Finished: 是否完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Finished: Boolean
        # @param Log: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String

        attr_accessor :Finished, :Log
        
        def initialize(finished=nil, log=nil)
          @Finished = finished
          @Log = log
        end

        def deserialize(params)
          @Finished = params['Finished']
          @Log = params['Log']
        end
      end

      # 规则执行结果
      class RuleExecResult < TencentCloud::Common::AbstractModel
        # @param RuleExecId: 规则执行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleExecId: Integer
        # @param RuleGroupExecId: 规则组执行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupExecId: Integer
        # @param RuleGroupId: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param RuleType: 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: Integer
        # @param SourceObjectDataTypeName: 源字段详细类型，int string
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectValue: String
        # @param ConditionExpression: 条件扫描WHERE条件表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionExpression: String
        # @param ExecResultStatus: 检测结果（1:检测通过，2：触发规则，3：检测失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecResultStatus: Integer
        # @param TriggerResult: 触发结果，告警发送成功, 阻断任务成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerResult: String
        # @param CompareResult: 对比结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareResult: :class:`Tencentcloud::Wedata.v20210820.models.CompareResult`
        # @param TemplateName: 模版名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateName: String
        # @param QualityDim: 质量维度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityDim: Integer
        # @param TargetDBTableName: 目标表-库表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetDBTableName: String
        # @param TargetObjectValue: 目标表-字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectValue: String
        # @param TargetObjectDataType: 目标表-字段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectDataType: String
        # @param FieldConfig: 自定义模版sql表达式参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20210820.models.RuleFieldConfig`
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelConditionExpr: String

        attr_accessor :RuleExecId, :RuleGroupExecId, :RuleGroupId, :RuleId, :RuleName, :RuleType, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionExpression, :ExecResultStatus, :TriggerResult, :CompareResult, :TemplateName, :QualityDim, :TargetDBTableName, :TargetObjectValue, :TargetObjectDataType, :FieldConfig, :RelConditionExpr
        
        def initialize(ruleexecid=nil, rulegroupexecid=nil, rulegroupid=nil, ruleid=nil, rulename=nil, ruletype=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditionexpression=nil, execresultstatus=nil, triggerresult=nil, compareresult=nil, templatename=nil, qualitydim=nil, targetdbtablename=nil, targetobjectvalue=nil, targetobjectdatatype=nil, fieldconfig=nil, relconditionexpr=nil)
          @RuleExecId = ruleexecid
          @RuleGroupExecId = rulegroupexecid
          @RuleGroupId = rulegroupid
          @RuleId = ruleid
          @RuleName = rulename
          @RuleType = ruletype
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionExpression = conditionexpression
          @ExecResultStatus = execresultstatus
          @TriggerResult = triggerresult
          @CompareResult = compareresult
          @TemplateName = templatename
          @QualityDim = qualitydim
          @TargetDBTableName = targetdbtablename
          @TargetObjectValue = targetobjectvalue
          @TargetObjectDataType = targetobjectdatatype
          @FieldConfig = fieldconfig
          @RelConditionExpr = relconditionexpr
        end

        def deserialize(params)
          @RuleExecId = params['RuleExecId']
          @RuleGroupExecId = params['RuleGroupExecId']
          @RuleGroupId = params['RuleGroupId']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleType = params['RuleType']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionExpression = params['ConditionExpression']
          @ExecResultStatus = params['ExecResultStatus']
          @TriggerResult = params['TriggerResult']
          unless params['CompareResult'].nil?
            @CompareResult = CompareResult.new
            @CompareResult.deserialize(params['CompareResult'])
          end
          @TemplateName = params['TemplateName']
          @QualityDim = params['QualityDim']
          @TargetDBTableName = params['TargetDBTableName']
          @TargetObjectValue = params['TargetObjectValue']
          @TargetObjectDataType = params['TargetObjectDataType']
          unless params['FieldConfig'].nil?
            @FieldConfig = RuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @RelConditionExpr = params['RelConditionExpr']
        end
      end

      # 规则执行结果详情
      class RuleExecResultDetail < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: Integer
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatabaseId: 数据库guid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param TableId: 表guid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param RuleExecResult: 规则执行记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleExecResult: :class:`Tencentcloud::Wedata.v20210820.models.RuleExecResult`
        # @param TableOwnerUserId: 表负责人userId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerUserId: Integer

        attr_accessor :DatasourceId, :DatasourceName, :DatabaseId, :DatabaseName, :InstanceId, :TableId, :TableName, :RuleExecResult, :TableOwnerUserId
        
        def initialize(datasourceid=nil, datasourcename=nil, databaseid=nil, databasename=nil, instanceid=nil, tableid=nil, tablename=nil, ruleexecresult=nil, tableowneruserid=nil)
          @DatasourceId = datasourceid
          @DatasourceName = datasourcename
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @InstanceId = instanceid
          @TableId = tableid
          @TableName = tablename
          @RuleExecResult = ruleexecresult
          @TableOwnerUserId = tableowneruserid
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @DatasourceName = params['DatasourceName']
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @InstanceId = params['InstanceId']
          @TableId = params['TableId']
          @TableName = params['TableName']
          unless params['RuleExecResult'].nil?
            @RuleExecResult = RuleExecResult.new
            @RuleExecResult.deserialize(params['RuleExecResult'])
          end
          @TableOwnerUserId = params['TableOwnerUserId']
        end
      end

      # 规则执行结果分页
      class RuleExecResultPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 规则执行结果
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruleexecresult_tmp = RuleExecResult.new
              ruleexecresult_tmp.deserialize(i)
              @Items << ruleexecresult_tmp
            end
          end
        end
      end

      # 规则运行情况结果
      class RuleExecStat < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 规则运行总数
        # @type TotalCnt: Integer
        # @param LastTotalCnt: 环比规则运行总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTotalCnt: Integer
        # @param TotalCntRatio: 规则运行总数占比
        # @type TotalCntRatio: Float
        # @param LastTotalCntRatio: 规则运行总数环比变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTotalCntRatio: Float
        # @param TriggerCnt: 规则触发数
        # @type TriggerCnt: Integer
        # @param LastTriggerCnt: 环比规则触发数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerCnt: Integer
        # @param TriggerCntRatio: 触发占总数占比
        # @type TriggerCntRatio: Float
        # @param LastTriggerCntRatio: 环比规则触发数变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerCntRatio: Float
        # @param AlarmCnt: 规则报警数
        # @type AlarmCnt: Integer
        # @param LastAlarmCnt: 环比规则报警数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAlarmCnt: Integer
        # @param AlarmCntRatio: 报警占总数占比
        # @type AlarmCntRatio: Float
        # @param LastAlarmCntRatio: 环比报警数变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAlarmCntRatio: Float
        # @param PipelineCnt: 阻塞发生数
        # @type PipelineCnt: Integer
        # @param LastPipelineCnt: 环比阻塞发生数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastPipelineCnt: Integer
        # @param PipelineCntRatio: 阻塞占总数占比
        # @type PipelineCntRatio: Float
        # @param LastPipelineCntRatio: 环比阻塞发生数变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastPipelineCntRatio: Float

        attr_accessor :TotalCnt, :LastTotalCnt, :TotalCntRatio, :LastTotalCntRatio, :TriggerCnt, :LastTriggerCnt, :TriggerCntRatio, :LastTriggerCntRatio, :AlarmCnt, :LastAlarmCnt, :AlarmCntRatio, :LastAlarmCntRatio, :PipelineCnt, :LastPipelineCnt, :PipelineCntRatio, :LastPipelineCntRatio
        
        def initialize(totalcnt=nil, lasttotalcnt=nil, totalcntratio=nil, lasttotalcntratio=nil, triggercnt=nil, lasttriggercnt=nil, triggercntratio=nil, lasttriggercntratio=nil, alarmcnt=nil, lastalarmcnt=nil, alarmcntratio=nil, lastalarmcntratio=nil, pipelinecnt=nil, lastpipelinecnt=nil, pipelinecntratio=nil, lastpipelinecntratio=nil)
          @TotalCnt = totalcnt
          @LastTotalCnt = lasttotalcnt
          @TotalCntRatio = totalcntratio
          @LastTotalCntRatio = lasttotalcntratio
          @TriggerCnt = triggercnt
          @LastTriggerCnt = lasttriggercnt
          @TriggerCntRatio = triggercntratio
          @LastTriggerCntRatio = lasttriggercntratio
          @AlarmCnt = alarmcnt
          @LastAlarmCnt = lastalarmcnt
          @AlarmCntRatio = alarmcntratio
          @LastAlarmCntRatio = lastalarmcntratio
          @PipelineCnt = pipelinecnt
          @LastPipelineCnt = lastpipelinecnt
          @PipelineCntRatio = pipelinecntratio
          @LastPipelineCntRatio = lastpipelinecntratio
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          @LastTotalCnt = params['LastTotalCnt']
          @TotalCntRatio = params['TotalCntRatio']
          @LastTotalCntRatio = params['LastTotalCntRatio']
          @TriggerCnt = params['TriggerCnt']
          @LastTriggerCnt = params['LastTriggerCnt']
          @TriggerCntRatio = params['TriggerCntRatio']
          @LastTriggerCntRatio = params['LastTriggerCntRatio']
          @AlarmCnt = params['AlarmCnt']
          @LastAlarmCnt = params['LastAlarmCnt']
          @AlarmCntRatio = params['AlarmCntRatio']
          @LastAlarmCntRatio = params['LastAlarmCntRatio']
          @PipelineCnt = params['PipelineCnt']
          @LastPipelineCnt = params['LastPipelineCnt']
          @PipelineCntRatio = params['PipelineCntRatio']
          @LastPipelineCntRatio = params['LastPipelineCntRatio']
        end
      end

      # 规则变量替换
      class RuleFieldConfig < TencentCloud::Common::AbstractModel
        # @param WhereConfig: where变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhereConfig: Array
        # @param TableConfig: 库表变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableConfig: Array

        attr_accessor :WhereConfig, :TableConfig
        
        def initialize(whereconfig=nil, tableconfig=nil)
          @WhereConfig = whereconfig
          @TableConfig = tableconfig
        end

        def deserialize(params)
          unless params['WhereConfig'].nil?
            @WhereConfig = []
            params['WhereConfig'].each do |i|
              fieldconfig_tmp = FieldConfig.new
              fieldconfig_tmp.deserialize(i)
              @WhereConfig << fieldconfig_tmp
            end
          end
          unless params['TableConfig'].nil?
            @TableConfig = []
            params['TableConfig'].each do |i|
              tableconfig_tmp = TableConfig.new
              tableconfig_tmp.deserialize(i)
              @TableConfig << tableconfig_tmp
            end
          end
        end
      end

      # 数据质量规则组
      class RuleGroup < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param DatasourceId: 数据源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param MonitorType: 监控类型 1.未配置, 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TableName: 关联数据表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableId: 关联数据表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableOwnerName: 关联数据表负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerName: String
        # @param ExecStrategy: 执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecStrategy: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupExecStrategy`
        # @param Subscription: 执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subscription: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupSubscribe`
        # @param DatabaseId: 数据库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param Permission: 是否有权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: Boolean
        # @param RuleCount: 已经配置的规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCount: Integer
        # @param MonitorStatus: 监控状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorStatus: Boolean
        # @param TableOwnerUserId: 表负责人UserId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerUserId: Integer

        attr_accessor :RuleGroupId, :DatasourceId, :DatasourceName, :DatasourceType, :MonitorType, :UpdateTime, :TableName, :TableId, :TableOwnerName, :ExecStrategy, :Subscription, :DatabaseId, :DatabaseName, :Permission, :RuleCount, :MonitorStatus, :TableOwnerUserId
        
        def initialize(rulegroupid=nil, datasourceid=nil, datasourcename=nil, datasourcetype=nil, monitortype=nil, updatetime=nil, tablename=nil, tableid=nil, tableownername=nil, execstrategy=nil, subscription=nil, databaseid=nil, databasename=nil, permission=nil, rulecount=nil, monitorstatus=nil, tableowneruserid=nil)
          @RuleGroupId = rulegroupid
          @DatasourceId = datasourceid
          @DatasourceName = datasourcename
          @DatasourceType = datasourcetype
          @MonitorType = monitortype
          @UpdateTime = updatetime
          @TableName = tablename
          @TableId = tableid
          @TableOwnerName = tableownername
          @ExecStrategy = execstrategy
          @Subscription = subscription
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @Permission = permission
          @RuleCount = rulecount
          @MonitorStatus = monitorstatus
          @TableOwnerUserId = tableowneruserid
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @DatasourceId = params['DatasourceId']
          @DatasourceName = params['DatasourceName']
          @DatasourceType = params['DatasourceType']
          @MonitorType = params['MonitorType']
          @UpdateTime = params['UpdateTime']
          @TableName = params['TableName']
          @TableId = params['TableId']
          @TableOwnerName = params['TableOwnerName']
          unless params['ExecStrategy'].nil?
            @ExecStrategy = RuleGroupExecStrategy.new
            @ExecStrategy.deserialize(params['ExecStrategy'])
          end
          unless params['Subscription'].nil?
            @Subscription = RuleGroupSubscribe.new
            @Subscription.deserialize(params['Subscription'])
          end
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @Permission = params['Permission']
          @RuleCount = params['RuleCount']
          @MonitorStatus = params['MonitorStatus']
          @TableOwnerUserId = params['TableOwnerUserId']
        end
      end

      # 规则组执行结果
      class RuleGroupExecResult < TencentCloud::Common::AbstractModel
        # @param RuleGroupExecId: 规则组执行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupExecId: Integer
        # @param RuleGroupId: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param TriggerType: 执行触发类型（1：手动触发， 2：调度事中触发，3：周期调度触发）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Integer
        # @param ExecTime: 执行时间 yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecTime: String
        # @param Status: 执行状态（1.已提交 2.检测中 3.正常 4.异常）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param AlarmRuleCount: 异常规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmRuleCount: Integer
        # @param TotalRuleCount: 总规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRuleCount: Integer
        # @param TableOwnerName: 源表负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerName: String
        # @param TableName: 源表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableId: 表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param DatabaseId: 数据库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatasourceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param Permission: 有无权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: Boolean
        # @param ExecDetail: 执行详情，调度计划或者关联生产任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecDetail: String

        attr_accessor :RuleGroupExecId, :RuleGroupId, :TriggerType, :ExecTime, :Status, :AlarmRuleCount, :TotalRuleCount, :TableOwnerName, :TableName, :TableId, :DatabaseId, :DatasourceId, :Permission, :ExecDetail
        
        def initialize(rulegroupexecid=nil, rulegroupid=nil, triggertype=nil, exectime=nil, status=nil, alarmrulecount=nil, totalrulecount=nil, tableownername=nil, tablename=nil, tableid=nil, databaseid=nil, datasourceid=nil, permission=nil, execdetail=nil)
          @RuleGroupExecId = rulegroupexecid
          @RuleGroupId = rulegroupid
          @TriggerType = triggertype
          @ExecTime = exectime
          @Status = status
          @AlarmRuleCount = alarmrulecount
          @TotalRuleCount = totalrulecount
          @TableOwnerName = tableownername
          @TableName = tablename
          @TableId = tableid
          @DatabaseId = databaseid
          @DatasourceId = datasourceid
          @Permission = permission
          @ExecDetail = execdetail
        end

        def deserialize(params)
          @RuleGroupExecId = params['RuleGroupExecId']
          @RuleGroupId = params['RuleGroupId']
          @TriggerType = params['TriggerType']
          @ExecTime = params['ExecTime']
          @Status = params['Status']
          @AlarmRuleCount = params['AlarmRuleCount']
          @TotalRuleCount = params['TotalRuleCount']
          @TableOwnerName = params['TableOwnerName']
          @TableName = params['TableName']
          @TableId = params['TableId']
          @DatabaseId = params['DatabaseId']
          @DatasourceId = params['DatasourceId']
          @Permission = params['Permission']
          @ExecDetail = params['ExecDetail']
        end
      end

      # 规则组执行结果分页
      class RuleGroupExecResultPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 规则组执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rulegroupexecresult_tmp = RuleGroupExecResult.new
              rulegroupexecresult_tmp.deserialize(i)
              @Items << rulegroupexecresult_tmp
            end
          end
        end
      end

      # 质量规则执行策略
      class RuleGroupExecStrategy < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param MonitorType: 监控类型 1.未配置, 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param ExecQueue: 计算队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecQueue: String
        # @param ExecutorGroupId: 执行资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param ExecutorGroupName: 执行资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupName: String
        # @param Tasks: 关联的生产调度任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param StartTime: 周期开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 周期结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CycleType: 调度周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param DelayTime: 延迟调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CycleStep: 间隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param TaskAction: 时间指定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String

        attr_accessor :RuleGroupId, :MonitorType, :ExecQueue, :ExecutorGroupId, :ExecutorGroupName, :Tasks, :StartTime, :EndTime, :CycleType, :DelayTime, :CycleStep, :TaskAction
        
        def initialize(rulegroupid=nil, monitortype=nil, execqueue=nil, executorgroupid=nil, executorgroupname=nil, tasks=nil, starttime=nil, endtime=nil, cycletype=nil, delaytime=nil, cyclestep=nil, taskaction=nil)
          @RuleGroupId = rulegroupid
          @MonitorType = monitortype
          @ExecQueue = execqueue
          @ExecutorGroupId = executorgroupid
          @ExecutorGroupName = executorgroupname
          @Tasks = tasks
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @DelayTime = delaytime
          @CycleStep = cyclestep
          @TaskAction = taskaction
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @MonitorType = params['MonitorType']
          @ExecQueue = params['ExecQueue']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ExecutorGroupName = params['ExecutorGroupName']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              prodschedulertask_tmp = ProdSchedulerTask.new
              prodschedulertask_tmp.deserialize(i)
              @Tasks << prodschedulertask_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @DelayTime = params['DelayTime']
          @CycleStep = params['CycleStep']
          @TaskAction = params['TaskAction']
        end
      end

      # 规则组监控业务视图
      class RuleGroupMonitor < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param TableId: 表guid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: Integer
        # @param DatabaseId: 数据库guid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param MonitorType: 监控类型 1.未配置, 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param MonitorStatus: 监控状态 0.false 1.true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorStatus: Integer
        # @param CreateUserId: 规则组创建人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param CreateUserName: 规则组创建人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserName: String
        # @param CreateTime: 规则创建时间 yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :RuleGroupId, :TableId, :DatasourceId, :DatabaseId, :MonitorType, :MonitorStatus, :CreateUserId, :CreateUserName, :CreateTime
        
        def initialize(rulegroupid=nil, tableid=nil, datasourceid=nil, databaseid=nil, monitortype=nil, monitorstatus=nil, createuserid=nil, createusername=nil, createtime=nil)
          @RuleGroupId = rulegroupid
          @TableId = tableid
          @DatasourceId = datasourceid
          @DatabaseId = databaseid
          @MonitorType = monitortype
          @MonitorStatus = monitorstatus
          @CreateUserId = createuserid
          @CreateUserName = createusername
          @CreateTime = createtime
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          @TableId = params['TableId']
          @DatasourceId = params['DatasourceId']
          @DatabaseId = params['DatabaseId']
          @MonitorType = params['MonitorType']
          @MonitorStatus = params['MonitorStatus']
          @CreateUserId = params['CreateUserId']
          @CreateUserName = params['CreateUserName']
          @CreateTime = params['CreateTime']
        end
      end

      # 规则组监控业务分页视图
      class RuleGroupMonitorPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rulegroupmonitor_tmp = RuleGroupMonitor.new
              rulegroupmonitor_tmp.deserialize(i)
              @Items << rulegroupmonitor_tmp
            end
          end
        end
      end

      # 规则组分页
      class RuleGroupPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 规则组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rulegroup_tmp = RuleGroup.new
              rulegroup_tmp.deserialize(i)
              @Items << rulegroup_tmp
            end
          end
        end
      end

      # 规则组调度信息
      class RuleGroupSchedulerInfo < TencentCloud::Common::AbstractModel
        # @param Id: 规则组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param MonitorType: 1:未配置 2:关联生产调度 3:离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CycleType: 循环类型简写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CycleStep: 循环步长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param CycleDesc: 循环类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleDesc: String
        # @param TaskAction: 离线周期检测下指定时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param DelayTime: 离线周期检测下延迟时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CycleTaskId: 离线周期检测下注册到任务调度的任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleTaskId: String
        # @param AssociateTaskIds: 关联生产调度下关联的任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateTaskIds: Array

        attr_accessor :Id, :MonitorType, :StartTime, :EndTime, :CycleType, :CycleStep, :CycleDesc, :TaskAction, :DelayTime, :CycleTaskId, :AssociateTaskIds
        
        def initialize(id=nil, monitortype=nil, starttime=nil, endtime=nil, cycletype=nil, cyclestep=nil, cycledesc=nil, taskaction=nil, delaytime=nil, cycletaskid=nil, associatetaskids=nil)
          @Id = id
          @MonitorType = monitortype
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @CycleStep = cyclestep
          @CycleDesc = cycledesc
          @TaskAction = taskaction
          @DelayTime = delaytime
          @CycleTaskId = cycletaskid
          @AssociateTaskIds = associatetaskids
        end

        def deserialize(params)
          @Id = params['Id']
          @MonitorType = params['MonitorType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @CycleDesc = params['CycleDesc']
          @TaskAction = params['TaskAction']
          @DelayTime = params['DelayTime']
          @CycleTaskId = params['CycleTaskId']
          @AssociateTaskIds = params['AssociateTaskIds']
        end
      end

      # 数据质量规则组订阅信息
      class RuleGroupSubscribe < TencentCloud::Common::AbstractModel
        # @param RuleGroupId: 规则组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param Receivers: 订阅接收人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Receivers: Array
        # @param SubscribeType: 订阅方式 1.邮件email  2.短信sms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeType: Array
        # @param WebHooks: 群机器人配置的webhook信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebHooks: Array

        attr_accessor :RuleGroupId, :Receivers, :SubscribeType, :WebHooks
        
        def initialize(rulegroupid=nil, receivers=nil, subscribetype=nil, webhooks=nil)
          @RuleGroupId = rulegroupid
          @Receivers = receivers
          @SubscribeType = subscribetype
          @WebHooks = webhooks
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          unless params['Receivers'].nil?
            @Receivers = []
            params['Receivers'].each do |i|
              subscribereceiver_tmp = SubscribeReceiver.new
              subscribereceiver_tmp.deserialize(i)
              @Receivers << subscribereceiver_tmp
            end
          end
          @SubscribeType = params['SubscribeType']
          unless params['WebHooks'].nil?
            @WebHooks = []
            params['WebHooks'].each do |i|
              subscribewebhook_tmp = SubscribeWebHook.new
              subscribewebhook_tmp.deserialize(i)
              @WebHooks << subscribewebhook_tmp
            end
          end
        end
      end

      # 表绑定规则组信息
      class RuleGroupTable < TencentCloud::Common::AbstractModel
        # @param TableInfo: 表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInfo: :class:`Tencentcloud::Wedata.v20210820.models.RuleGroupTableInnerInfo`
        # @param RuleGroups: 规则组调度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroups: Array
        # @param Subscriptions: 订阅者信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subscriptions: Array

        attr_accessor :TableInfo, :RuleGroups, :Subscriptions
        
        def initialize(tableinfo=nil, rulegroups=nil, subscriptions=nil)
          @TableInfo = tableinfo
          @RuleGroups = rulegroups
          @Subscriptions = subscriptions
        end

        def deserialize(params)
          unless params['TableInfo'].nil?
            @TableInfo = RuleGroupTableInnerInfo.new
            @TableInfo.deserialize(params['TableInfo'])
          end
          unless params['RuleGroups'].nil?
            @RuleGroups = []
            params['RuleGroups'].each do |i|
              rulegroupschedulerinfo_tmp = RuleGroupSchedulerInfo.new
              rulegroupschedulerinfo_tmp.deserialize(i)
              @RuleGroups << rulegroupschedulerinfo_tmp
            end
          end
          unless params['Subscriptions'].nil?
            @Subscriptions = []
            params['Subscriptions'].each do |i|
              rulegroupsubscribe_tmp = RuleGroupSubscribe.new
              rulegroupsubscribe_tmp.deserialize(i)
              @Subscriptions << rulegroupsubscribe_tmp
            end
          end
        end
      end

      # 规则组关联表信息
      class RuleGroupTableInnerInfo < TencentCloud::Common::AbstractModel
        # @param TableId: 表ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DatasourceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param DatabaseId: 数据库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param UserId: 责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: Integer

        attr_accessor :TableId, :TableName, :InstanceId, :DatasourceId, :DatasourceName, :DatasourceType, :DatabaseId, :DatabaseName, :ProjectId, :UserId
        
        def initialize(tableid=nil, tablename=nil, instanceid=nil, datasourceid=nil, datasourcename=nil, datasourcetype=nil, databaseid=nil, databasename=nil, projectid=nil, userid=nil)
          @TableId = tableid
          @TableName = tablename
          @InstanceId = instanceid
          @DatasourceId = datasourceid
          @DatasourceName = datasourcename
          @DatasourceType = datasourcetype
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @ProjectId = projectid
          @UserId = userid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @TableName = params['TableName']
          @InstanceId = params['InstanceId']
          @DatasourceId = params['DatasourceId']
          @DatasourceName = params['DatasourceName']
          @DatasourceType = params['DatasourceType']
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @ProjectId = params['ProjectId']
          @UserId = params['UserId']
        end
      end

      # 规则操作记录业务
      class RuleHistory < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param AlterTime: 变更时间 yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlterTime: String
        # @param AlterContent: 变更内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlterContent: String
        # @param OperatorUserId: 操作账号UId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUserId: Integer
        # @param OperatorName: 操作人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorName: String

        attr_accessor :RuleId, :AlterTime, :AlterContent, :OperatorUserId, :OperatorName
        
        def initialize(ruleid=nil, altertime=nil, altercontent=nil, operatoruserid=nil, operatorname=nil)
          @RuleId = ruleid
          @AlterTime = altertime
          @AlterContent = altercontent
          @OperatorUserId = operatoruserid
          @OperatorName = operatorname
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AlterTime = params['AlterTime']
          @AlterContent = params['AlterContent']
          @OperatorUserId = params['OperatorUserId']
          @OperatorName = params['OperatorName']
        end
      end

      # 数据质量规则操作历史分页
      class RuleHistoryPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 规则操作历史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rulehistory_tmp = RuleHistory.new
              rulehistory_tmp.deserialize(i)
              @Items << rulehistory_tmp
            end
          end
        end
      end

      # 数据质量规则分页
      class RulePage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Items << rule_tmp
            end
          end
        end
      end

      # 规则模版
      class RuleTemplate < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 规则模版ID
        # @type RuleTemplateId: Integer
        # @param Name: 规则模版名称
        # @type Name: String
        # @param Description: 规则模版描述
        # @type Description: String
        # @param Type: 模版类型（1：系统模版，2：自定义）
        # @type Type: Integer
        # @param SourceObjectType: 规则适用的源数据对象类型（1：常量，2：离线表级，3：离线字段级别）
        # @type SourceObjectType: Integer
        # @param SourceObjectDataType: 规则适用的源数据对象类型（1：数值，2：字符串）
        # @type SourceObjectDataType: Integer
        # @param SourceContent: 规则模版源侧内容，区分引擎，JSON 结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceContent: String
        # @param SourceEngineTypes: 源数据适用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceEngineTypes: Array
        # @param QualityDim: 规则所属质量维度（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityDim: Integer
        # @param CompareType: 规则支持的比较方式类型（1：固定值比较，大于、小于，大于等于等 2：波动值比较，绝对值、上升、下降）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareType: Integer
        # @param CitationCount: 引用次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CitationCount: Integer
        # @param UserId: 创建人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: Integer
        # @param UserName: 创建人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UpdateTime: 更新时间yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param WhereFlag: 是否添加where参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhereFlag: Boolean
        # @param MultiSourceFlag: 是否关联多个库表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiSourceFlag: Boolean
        # @param SqlExpression: 自定义模板SQL表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlExpression: String
        # @param SubQualityDim: 模版子维度，0.父维度类型,1.一致性: 枚举范围一致性,2.一致性：数值范围一致性,3.一致性：字段数据相关性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubQualityDim: Integer

        attr_accessor :RuleTemplateId, :Name, :Description, :Type, :SourceObjectType, :SourceObjectDataType, :SourceContent, :SourceEngineTypes, :QualityDim, :CompareType, :CitationCount, :UserId, :UserName, :UpdateTime, :WhereFlag, :MultiSourceFlag, :SqlExpression, :SubQualityDim
        
        def initialize(ruletemplateid=nil, name=nil, description=nil, type=nil, sourceobjecttype=nil, sourceobjectdatatype=nil, sourcecontent=nil, sourceenginetypes=nil, qualitydim=nil, comparetype=nil, citationcount=nil, userid=nil, username=nil, updatetime=nil, whereflag=nil, multisourceflag=nil, sqlexpression=nil, subqualitydim=nil)
          @RuleTemplateId = ruletemplateid
          @Name = name
          @Description = description
          @Type = type
          @SourceObjectType = sourceobjecttype
          @SourceObjectDataType = sourceobjectdatatype
          @SourceContent = sourcecontent
          @SourceEngineTypes = sourceenginetypes
          @QualityDim = qualitydim
          @CompareType = comparetype
          @CitationCount = citationcount
          @UserId = userid
          @UserName = username
          @UpdateTime = updatetime
          @WhereFlag = whereflag
          @MultiSourceFlag = multisourceflag
          @SqlExpression = sqlexpression
          @SubQualityDim = subqualitydim
        end

        def deserialize(params)
          @RuleTemplateId = params['RuleTemplateId']
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          @SourceObjectType = params['SourceObjectType']
          @SourceObjectDataType = params['SourceObjectDataType']
          @SourceContent = params['SourceContent']
          @SourceEngineTypes = params['SourceEngineTypes']
          @QualityDim = params['QualityDim']
          @CompareType = params['CompareType']
          @CitationCount = params['CitationCount']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @UpdateTime = params['UpdateTime']
          @WhereFlag = params['WhereFlag']
          @MultiSourceFlag = params['MultiSourceFlag']
          @SqlExpression = params['SqlExpression']
          @SubQualityDim = params['SubQualityDim']
        end
      end

      # 规则模版变更历史记录视图
      class RuleTemplateHistory < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模版ID
        # @type TemplateId: Integer
        # @param Version: 版本
        # @type Version: Integer
        # @param UserId: 用户Id
        # @type UserId: Integer
        # @param UserName: 用户昵称
        # @type UserName: String
        # @param AlterType: 变更类型1.新增2.修改3.删除
        # @type AlterType: Integer
        # @param AlterContent: 变更内容
        # @type AlterContent: String

        attr_accessor :TemplateId, :Version, :UserId, :UserName, :AlterType, :AlterContent
        
        def initialize(templateid=nil, version=nil, userid=nil, username=nil, altertype=nil, altercontent=nil)
          @TemplateId = templateid
          @Version = version
          @UserId = userid
          @UserName = username
          @AlterType = altertype
          @AlterContent = altercontent
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Version = params['Version']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @AlterType = params['AlterType']
          @AlterContent = params['AlterContent']
        end
      end

      # 规则模版分页
      class RuleTemplateHistoryPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruletemplatehistory_tmp = RuleTemplateHistory.new
              ruletemplatehistory_tmp.deserialize(i)
              @Items << ruletemplatehistory_tmp
            end
          end
        end
      end

      # RuleTemplatePage 结果
      class RuleTemplatePage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param Items: 模版列表
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruletemplate_tmp = RuleTemplate.new
              ruletemplate_tmp.deserialize(i)
              @Items << ruletemplate_tmp
            end
          end
        end
      end

      # RunTask请求参数结构体
      class RunTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :ProjectId, :TaskId
        
        def initialize(projectid=nil, taskid=nil)
          @ProjectId = projectid
          @TaskId = taskid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
        end
      end

      # RunTask返回参数结构体
      class RunTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 运行成功或者失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 规则执行结果
      class RunnerRuleExecResult < TencentCloud::Common::AbstractModel
        # @param RuleId: rule id
        # @type RuleId: Integer
        # @param RuleExecId: rule exec id
        # @type RuleExecId: Integer
        # @param State: exec state
        # @type State: String
        # @param Data: 结果
        # @type Data: Array

        attr_accessor :RuleId, :RuleExecId, :State, :Data
        
        def initialize(ruleid=nil, ruleexecid=nil, state=nil, data=nil)
          @RuleId = ruleid
          @RuleExecId = ruleexecid
          @State = state
          @Data = data
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleExecId = params['RuleExecId']
          @State = params['State']
          @Data = params['Data']
        end
      end

      # SaveCustomFunction请求参数结构体
      class SaveCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # @type FunctionId: String
        # @param Kind: 分类：窗口函数、聚合函数、日期函数......
        # @type Kind: String
        # @param ClusterIdentifier: 集群引擎实例
        # @type ClusterIdentifier: String
        # @param ClassName: 类名
        # @type ClassName: String
        # @param ResourceList: 资源列表
        # @type ResourceList: Array
        # @param Description: 函数说明
        # @type Description: String
        # @param Usage: 用法
        # @type Usage: String
        # @param ParamDesc: 参数说明
        # @type ParamDesc: String
        # @param ReturnDesc: 返回值说明
        # @type ReturnDesc: String
        # @param Example: 示例
        # @type Example: String

        attr_accessor :FunctionId, :Kind, :ClusterIdentifier, :ClassName, :ResourceList, :Description, :Usage, :ParamDesc, :ReturnDesc, :Example
        
        def initialize(functionid=nil, kind=nil, clusteridentifier=nil, classname=nil, resourcelist=nil, description=nil, usage=nil, paramdesc=nil, returndesc=nil, example=nil)
          @FunctionId = functionid
          @Kind = kind
          @ClusterIdentifier = clusteridentifier
          @ClassName = classname
          @ResourceList = resourcelist
          @Description = description
          @Usage = usage
          @ParamDesc = paramdesc
          @ReturnDesc = returndesc
          @Example = example
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @Kind = params['Kind']
          @ClusterIdentifier = params['ClusterIdentifier']
          @ClassName = params['ClassName']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              functionresource_tmp = FunctionResource.new
              functionresource_tmp.deserialize(i)
              @ResourceList << functionresource_tmp
            end
          end
          @Description = params['Description']
          @Usage = params['Usage']
          @ParamDesc = params['ParamDesc']
          @ReturnDesc = params['ReturnDesc']
          @Example = params['Example']
        end
      end

      # SaveCustomFunction返回参数结构体
      class SaveCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # 集成离线任务实例信息
      class SchedulerTaskInstanceInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param CurRunDate: 实例运行时间
        # @type CurRunDate: String

        attr_accessor :TaskId, :CurRunDate
        
        def initialize(taskid=nil, currundate=nil)
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # 元数据字段信息
      class SchemaDetail < TencentCloud::Common::AbstractModel
        # @param ColumnKey: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnKey: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :ColumnKey, :Description, :Name, :Type
        
        def initialize(columnkey=nil, description=nil, name=nil, type=nil)
          @ColumnKey = columnkey
          @Description = description
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @ColumnKey = params['ColumnKey']
          @Description = params['Description']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 查询实例条件
      class SearchCondition < TencentCloud::Common::AbstractModel
        # @param Instance: 查询框架，必选
        # @type Instance: :class:`Tencentcloud::Wedata.v20210820.models.SearchConditionInstance`
        # @param Keyword: 查询关键字（任务Id精确匹配，任务名称模糊匹配），可选
        # @type Keyword: String
        # @param Sort: 排序顺序（asc，desc）
        # @type Sort: String
        # @param SortCol: 排序列（costTime 运行耗时，startTime 开始时间，state 实例状态，curRunDate 数据时间）
        # @type SortCol: String

        attr_accessor :Instance, :Keyword, :Sort, :SortCol
        
        def initialize(instance=nil, keyword=nil, sort=nil, sortcol=nil)
          @Instance = instance
          @Keyword = keyword
          @Sort = sort
          @SortCol = sortcol
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = SearchConditionInstance.new
            @Instance.deserialize(params['Instance'])
          end
          @Keyword = params['Keyword']
          @Sort = params['Sort']
          @SortCol = params['SortCol']
        end
      end

      # 查询框架
      class SearchConditionInstance < TencentCloud::Common::AbstractModel
        # @param ExecutionSpace: 执行空间 "DRY_RUN"
        # @type ExecutionSpace: Integer
        # @param ProductName: 产品名称，可选
        # @type ProductName: Integer
        # @param ResourceGroup: 资源组
        # @type ResourceGroup: Integer

        attr_accessor :ExecutionSpace, :ProductName, :ResourceGroup
        
        def initialize(executionspace=nil, productname=nil, resourcegroup=nil)
          @ExecutionSpace = executionspace
          @ProductName = productname
          @ResourceGroup = resourcegroup
        end

        def deserialize(params)
          @ExecutionSpace = params['ExecutionSpace']
          @ProductName = params['ProductName']
          @ResourceGroup = params['ResourceGroup']
        end
      end

      # 搜索条件
      class SearchConditionInstanceNew < TencentCloud::Common::AbstractModel
        # @param ExecutionSpace: 执行空间 "DRY_RUN"
        # @type ExecutionSpace: String
        # @param ProductName: 产品名称，可选
        # @type ProductName: String
        # @param ResourceGroup: 资源组
        # @type ResourceGroup: String

        attr_accessor :ExecutionSpace, :ProductName, :ResourceGroup
        
        def initialize(executionspace=nil, productname=nil, resourcegroup=nil)
          @ExecutionSpace = executionspace
          @ProductName = productname
          @ResourceGroup = resourcegroup
        end

        def deserialize(params)
          @ExecutionSpace = params['ExecutionSpace']
          @ProductName = params['ProductName']
          @ResourceGroup = params['ResourceGroup']
        end
      end

      # 查询实例条件(新)
      class SearchConditionNew < TencentCloud::Common::AbstractModel
        # @param Instance: 查询框架，必选
        # @type Instance: :class:`Tencentcloud::Wedata.v20210820.models.SearchConditionInstanceNew`
        # @param Keyword: 查询关键字（任务Id精确匹配，任务名称模糊匹配），可选
        # @type Keyword: String
        # @param Sort: 排序顺序（asc，desc）
        # @type Sort: String
        # @param SortCol: 排序列（costTime 运行耗时，startTime 开始时间，state 实例状态，curRunDate 数据时间）
        # @type SortCol: String

        attr_accessor :Instance, :Keyword, :Sort, :SortCol
        
        def initialize(instance=nil, keyword=nil, sort=nil, sortcol=nil)
          @Instance = instance
          @Keyword = keyword
          @Sort = sort
          @SortCol = sortcol
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = SearchConditionInstanceNew.new
            @Instance.deserialize(params['Instance'])
          end
          @Keyword = params['Keyword']
          @Sort = params['Sort']
          @SortCol = params['SortCol']
        end
      end

      # SetTaskAlarmNew请求参数结构体
      class SetTaskAlarmNewRequest < TencentCloud::Common::AbstractModel
        # @param AlarmInfoList: 设置任务超时告警和失败告警信息
        # @type AlarmInfoList: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :AlarmInfoList, :ProjectId
        
        def initialize(alarminfolist=nil, projectid=nil)
          @AlarmInfoList = alarminfolist
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['AlarmInfoList'].nil?
            @AlarmInfoList = []
            params['AlarmInfoList'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @AlarmInfoList << alarminfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # SetTaskAlarmNew返回参数结构体
      class SetTaskAlarmNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 简单Task信息
      class SimpleTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String

        attr_accessor :TaskId, :TaskName
        
        def initialize(taskid=nil, taskname=nil)
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # 上游节点字段信息
      class SourceFieldInfo < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param FieldType: 字段类型
        # @type FieldType: String
        # @param Alias: 字段别名
        # @type Alias: String

        attr_accessor :FieldName, :FieldType, :Alias
        
        def initialize(fieldname=nil, fieldtype=nil, _alias=nil)
          @FieldName = fieldname
          @FieldType = fieldtype
          @Alias = _alias
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @FieldType = params['FieldType']
          @Alias = params['Alias']
        end
      end

      # 数据质量数据对象
      class SourceObject < TencentCloud::Common::AbstractModel
        # @param SourceObjectDataTypeName: 源字段详细类型，int、string
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectValue: String

        attr_accessor :SourceObjectDataTypeName, :SourceObjectValue
        
        def initialize(sourceobjectdatatypename=nil, sourceobjectvalue=nil)
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
        end

        def deserialize(params)
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
        end
      end

      # 速度值对象
      class SpeedValue < TencentCloud::Common::AbstractModel
        # @param Time: 带毫秒的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param Speed: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Speed: Float

        attr_accessor :Time, :Speed
        
        def initialize(time=nil, speed=nil)
          @Time = time
          @Speed = speed
        end

        def deserialize(params)
          @Time = params['Time']
          @Speed = params['Speed']
        end
      end

      # StartIntegrationTask请求参数结构体
      class StartIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # StartIntegrationTask返回参数结构体
      class StartIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # StopIntegrationTask请求参数结构体
      class StopIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # StopIntegrationTask返回参数结构体
      class StopIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # SubmitCustomFunction请求参数结构体
      class SubmitCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # @type FunctionId: String
        # @param ClusterIdentifier: 集群实例 ID
        # @type ClusterIdentifier: String
        # @param Comment: 备注信息
        # @type Comment: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :FunctionId, :ClusterIdentifier, :Comment, :ProjectId
        
        def initialize(functionid=nil, clusteridentifier=nil, comment=nil, projectid=nil)
          @FunctionId = functionid
          @ClusterIdentifier = clusteridentifier
          @Comment = comment
          @ProjectId = projectid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ClusterIdentifier = params['ClusterIdentifier']
          @Comment = params['Comment']
          @ProjectId = params['ProjectId']
        end
      end

      # SubmitCustomFunction返回参数结构体
      class SubmitCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # SubmitTask请求参数结构体
      class SubmitTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String
        # @param StartScheduling: 是否启动调度
        # @type StartScheduling: Boolean

        attr_accessor :ProjectId, :TaskId, :VersionRemark, :StartScheduling
        
        def initialize(projectid=nil, taskid=nil, versionremark=nil, startscheduling=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionRemark = versionremark
          @StartScheduling = startscheduling
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionRemark = params['VersionRemark']
          @StartScheduling = params['StartScheduling']
        end
      end

      # SubmitTask返回参数结构体
      class SubmitTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 提交工作流实体
      class SubmitWorkflow < TencentCloud::Common::AbstractModel
        # @param TaskIds: 被提交的任务id集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param Result: 执行结果
        # @type Result: Boolean
        # @param ErrorDesc: 执行情况备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String
        # @param ErrorId: 执行情况id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String

        attr_accessor :TaskIds, :Result, :ErrorDesc, :ErrorId
        
        def initialize(taskids=nil, result=nil, errordesc=nil, errorid=nil)
          @TaskIds = taskids
          @Result = result
          @ErrorDesc = errordesc
          @ErrorId = errorid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @Result = params['Result']
          @ErrorDesc = params['ErrorDesc']
          @ErrorId = params['ErrorId']
        end
      end

      # SubmitWorkflow请求参数结构体
      class SubmitWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param VersionRemark: 提交的版本备注
        # @type VersionRemark: String
        # @param StartScheduling: 是否启动调度
        # @type StartScheduling: Boolean

        attr_accessor :ProjectId, :WorkflowId, :VersionRemark, :StartScheduling
        
        def initialize(projectid=nil, workflowid=nil, versionremark=nil, startscheduling=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @VersionRemark = versionremark
          @StartScheduling = startscheduling
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @VersionRemark = params['VersionRemark']
          @StartScheduling = params['StartScheduling']
        end
      end

      # SubmitWorkflow返回参数结构体
      class SubmitWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.SubmitWorkflow`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SubmitWorkflow.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 订阅接收人
      class SubscribeReceiver < TencentCloud::Common::AbstractModel
        # @param ReceiverUserId: 接收人Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverUserId: Integer
        # @param ReceiverName: 接收人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverName: String

        attr_accessor :ReceiverUserId, :ReceiverName
        
        def initialize(receiveruserid=nil, receivername=nil)
          @ReceiverUserId = receiveruserid
          @ReceiverName = receivername
        end

        def deserialize(params)
          @ReceiverUserId = params['ReceiverUserId']
          @ReceiverName = params['ReceiverName']
        end
      end

      # 群机器人订阅配置
      class SubscribeWebHook < TencentCloud::Common::AbstractModel
        # @param HookType: 群机器人类型，当前支持飞书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HookType: String
        # @param HookAddress: 群机器人webhook地址，配置方式参考https://cloud.tencent.com/document/product/1254/70736
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HookAddress: String

        attr_accessor :HookType, :HookAddress
        
        def initialize(hooktype=nil, hookaddress=nil)
          @HookType = hooktype
          @HookAddress = hookaddress
        end

        def deserialize(params)
          @HookType = params['HookType']
          @HookAddress = params['HookAddress']
        end
      end

      # SuspendIntegrationTask请求参数结构体
      class SuspendIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # SuspendIntegrationTask返回参数结构体
      class SuspendIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 规则表变量替换
      class TableConfig < TencentCloud::Common::AbstractModel
        # @param DatabaseId: 数据库Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param TableId: 表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableKey: 表Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableKey: String
        # @param FieldConfig: 字段变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldConfig: Array

        attr_accessor :DatabaseId, :DatabaseName, :TableId, :TableName, :TableKey, :FieldConfig
        
        def initialize(databaseid=nil, databasename=nil, tableid=nil, tablename=nil, tablekey=nil, fieldconfig=nil)
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @TableId = tableid
          @TableName = tablename
          @TableKey = tablekey
          @FieldConfig = fieldconfig
        end

        def deserialize(params)
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @TableId = params['TableId']
          @TableName = params['TableName']
          @TableKey = params['TableKey']
          unless params['FieldConfig'].nil?
            @FieldConfig = []
            params['FieldConfig'].each do |i|
              fieldconfig_tmp = FieldConfig.new
              fieldconfig_tmp.deserialize(i)
              @FieldConfig << fieldconfig_tmp
            end
          end
        end
      end

      # 元数据表详细信息
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param TableId: 表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param OriginDatabaseName: 表databaseName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginDatabaseName: String
        # @param OriginSchemaName: 表schemaName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginSchemaName: String

        attr_accessor :TableId, :TableName, :OriginDatabaseName, :OriginSchemaName
        
        def initialize(tableid=nil, tablename=nil, origindatabasename=nil, originschemaname=nil)
          @TableId = tableid
          @TableName = tablename
          @OriginDatabaseName = origindatabasename
          @OriginSchemaName = originschemaname
        end

        def deserialize(params)
          @TableId = params['TableId']
          @TableName = params['TableName']
          @OriginDatabaseName = params['OriginDatabaseName']
          @OriginSchemaName = params['OriginSchemaName']
        end
      end

      # 表质量详情
      class TableQualityDetail < TencentCloud::Common::AbstractModel
        # @param DatabaseId: 数据库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param TableId: 表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param OwnerUserId: 表责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserId: Integer
        # @param OwnerUserName: 表责任人名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param DatabaseScore: 库得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseScore: Float
        # @param TableScore: 表得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableScore: Float
        # @param LastPeriodRatio: 表环比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastPeriodRatio: Float

        attr_accessor :DatabaseId, :DatabaseName, :TableId, :TableName, :OwnerUserId, :OwnerUserName, :DatabaseScore, :TableScore, :LastPeriodRatio
        
        def initialize(databaseid=nil, databasename=nil, tableid=nil, tablename=nil, owneruserid=nil, ownerusername=nil, databasescore=nil, tablescore=nil, lastperiodratio=nil)
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @TableId = tableid
          @TableName = tablename
          @OwnerUserId = owneruserid
          @OwnerUserName = ownerusername
          @DatabaseScore = databasescore
          @TableScore = tablescore
          @LastPeriodRatio = lastperiodratio
        end

        def deserialize(params)
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @TableId = params['TableId']
          @TableName = params['TableName']
          @OwnerUserId = params['OwnerUserId']
          @OwnerUserName = params['OwnerUserName']
          @DatabaseScore = params['DatabaseScore']
          @TableScore = params['TableScore']
          @LastPeriodRatio = params['LastPeriodRatio']
        end
      end

      # 表质量分分页结果
      class TableQualityDetailPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 表质量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              tablequalitydetail_tmp = TableQualityDetail.new
              tablequalitydetail_tmp.deserialize(i)
              @Items << tablequalitydetail_tmp
            end
          end
        end
      end

      # 表评分统计信息
      class TableScoreStatisticsInfo < TencentCloud::Common::AbstractModel
        # @param Level: 等级 1、2、3、4、5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Scale: 占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scale: Integer
        # @param TableNumber: 表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNumber: Integer

        attr_accessor :Level, :Scale, :TableNumber
        
        def initialize(level=nil, scale=nil, tablenumber=nil)
          @Level = level
          @Scale = scale
          @TableNumber = tablenumber
        end

        def deserialize(params)
          @Level = params['Level']
          @Scale = params['Scale']
          @TableNumber = params['TableNumber']
        end
      end

      # 任务告警信息
      class TaskAlarmInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RegularName: 规则名称
        # @type RegularName: String
        # @param RegularStatus: 规则状态(0表示关闭，1表示打开)
        # @type RegularStatus: Integer
        # @param AlarmLevel: 告警级别(0表示普通，1表示重要，2表示紧急)
        # @type AlarmLevel: Integer
        # @param AlarmWay: 告警方式,多个用逗号隔开（1:邮件，2:短信，3:微信，4:语音，5:代表企业微信，6:http）
        # @type AlarmWay: String
        # @param TaskType: 任务类型(201表示实时，202表示离线)
        # @type TaskType: Integer
        # @param Id: 主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param RegularId: 规则ID
        # @type RegularId: String
        # @param AlarmIndicator: 告警指标,0表示任务失败，1表示任务运行超时，2表示任务停止，3表示任务暂停
        # ，4写入速度，5读取速度，6读取吞吐，7写入吞吐, 8脏数据字节数，9脏数据条数
        # @type AlarmIndicator: Integer
        # @param TriggerType: 指标阈值(1表示离线任务第一次运行失败，2表示离线任务所有重试完成后失败)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Integer
        # @param EstimatedTime: 预计的超时时间(分钟级别)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EstimatedTime: Integer
        # @param AlarmRecipientId: 告警接收人ID，多个用逗号隔开
        # @type AlarmRecipientId: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Creater: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creater: String
        # @param AlarmRecipientName: 告警接收人昵称，多个用逗号隔开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmRecipientName: String
        # @param AlarmIndicatorDesc: 告警指标描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicatorDesc: String
        # @param Operator: 实时任务告警需要的参数，1是大于2是小于
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: Integer
        # @param NodeId: 节点id，多个逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param NodeName: 节点名称，多个逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param AlarmIndicatorInfos: 指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmIndicatorInfos: Array
        # @param AlarmRecipientType: 告警接收人类型，0指定人员；1任务责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmRecipientType: Integer
        # @param WeComHook: 企业微信群Hook地址，多个hook地址使用,隔开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeComHook: String

        attr_accessor :TaskId, :RegularName, :RegularStatus, :AlarmLevel, :AlarmWay, :TaskType, :Id, :RegularId, :AlarmIndicator, :TriggerType, :EstimatedTime, :AlarmRecipientId, :ProjectId, :Creater, :AlarmRecipientName, :AlarmIndicatorDesc, :Operator, :NodeId, :NodeName, :AlarmIndicatorInfos, :AlarmRecipientType, :WeComHook
        
        def initialize(taskid=nil, regularname=nil, regularstatus=nil, alarmlevel=nil, alarmway=nil, tasktype=nil, id=nil, regularid=nil, alarmindicator=nil, triggertype=nil, estimatedtime=nil, alarmrecipientid=nil, projectid=nil, creater=nil, alarmrecipientname=nil, alarmindicatordesc=nil, operator=nil, nodeid=nil, nodename=nil, alarmindicatorinfos=nil, alarmrecipienttype=nil, wecomhook=nil)
          @TaskId = taskid
          @RegularName = regularname
          @RegularStatus = regularstatus
          @AlarmLevel = alarmlevel
          @AlarmWay = alarmway
          @TaskType = tasktype
          @Id = id
          @RegularId = regularid
          @AlarmIndicator = alarmindicator
          @TriggerType = triggertype
          @EstimatedTime = estimatedtime
          @AlarmRecipientId = alarmrecipientid
          @ProjectId = projectid
          @Creater = creater
          @AlarmRecipientName = alarmrecipientname
          @AlarmIndicatorDesc = alarmindicatordesc
          @Operator = operator
          @NodeId = nodeid
          @NodeName = nodename
          @AlarmIndicatorInfos = alarmindicatorinfos
          @AlarmRecipientType = alarmrecipienttype
          @WeComHook = wecomhook
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RegularName = params['RegularName']
          @RegularStatus = params['RegularStatus']
          @AlarmLevel = params['AlarmLevel']
          @AlarmWay = params['AlarmWay']
          @TaskType = params['TaskType']
          @Id = params['Id']
          @RegularId = params['RegularId']
          @AlarmIndicator = params['AlarmIndicator']
          @TriggerType = params['TriggerType']
          @EstimatedTime = params['EstimatedTime']
          @AlarmRecipientId = params['AlarmRecipientId']
          @ProjectId = params['ProjectId']
          @Creater = params['Creater']
          @AlarmRecipientName = params['AlarmRecipientName']
          @AlarmIndicatorDesc = params['AlarmIndicatorDesc']
          @Operator = params['Operator']
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          unless params['AlarmIndicatorInfos'].nil?
            @AlarmIndicatorInfos = []
            params['AlarmIndicatorInfos'].each do |i|
              alarmindicatorinfo_tmp = AlarmIndicatorInfo.new
              alarmindicatorinfo_tmp.deserialize(i)
              @AlarmIndicatorInfos << alarmindicatorinfo_tmp
            end
          end
          @AlarmRecipientType = params['AlarmRecipientType']
          @WeComHook = params['WeComHook']
        end
      end

      # 任务信息
      class TaskCanvasInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param Status: 任务状态，'Y','F','O','T','INVALID' 分别表示调度中、已停止、已暂停、停止中、已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述，其中任务类型id和任务类型描述的对应的关系为
        # 20	通用数据同步任务
        # 21	JDBC SQL
        # 22	Tbase
        # 25	数据ETL
        # 30	Python
        # 31	PySpark
        # 34	Hive SQL
        # 35	Shell
        # 36	Spark SQL
        # 37	HDFS到HBase
        # 38	SHELL
        # 39	Spark
        # 45	DATA_QUALITY
        # 55	THIVE到MYSQL
        # 56	THIVE到PG
        # 66	HDFS到PG
        # 67	HDFS到Oracle
        # 68	HDFS到MYSQL
        # 69	FTP到HDFS
        # 70	HIVE SQL
        # 72	HIVE到HDFS
        # 75	HDFS到HIVE
        # 81	PYTHONSQL脚本
        # 82	SPARKSCALA计算
        # 83	虫洞任务
        # 84	校验对账文件
        # 85	HDFS到THIVE
        # 86	TDW到HDFS
        # 87	HDFS到TDW
        # 88	校验对账文件
        # 91	FLINK任务
        # 92	MapReduce
        # 98	custom topology
        # 99	kafkatoHDFS
        # 100	kafkatoHbase
        # 101	MYSQL导入至HIVE(DX)
        # 104	MYSQL到HIVE
        # 105	HIVE到MYSQL
        # 106	SQL SERVER到HIVE
        # 107	HIVE到SQL SERVER
        # 108	ORACLE到HIVE
        # 109	HIVE到ORACLE
        # 111	HIVE到MYSQL(NEW)
        # 112	HIVE到PG
        # 113	HIVE到PHOENIX
        # 118	MYSQL到HDFS
        # 119	PG到HDFS
        # 120	ORACLE到HDFS
        # 121	数据质量
        # 10000	自定义业务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FirstSubmitTime: 最近提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstSubmitTime: String
        # @param FirstRunTime: 首次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstRunTime: String
        # @param ScheduleDesc: 调度计划展示描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleDesc: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param CycleUnit: 调度周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleUnit: String
        # @param LeftCoordinate: 画布x轴坐标点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 画布y轴坐标点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param VirtualFlag: 跨工作流虚拟任务标识；true标识跨工作流任务；false标识本工作流任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param TaskAction: 弹性周期配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param DelayTime: 延迟时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :Status, :TaskTypeId, :TaskTypeDesc, :ProjectId, :FolderName, :FolderId, :FirstSubmitTime, :FirstRunTime, :ScheduleDesc, :InCharge, :CycleUnit, :LeftCoordinate, :TopCoordinate, :VirtualFlag, :TaskAction, :DelayTime
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, status=nil, tasktypeid=nil, tasktypedesc=nil, projectid=nil, foldername=nil, folderid=nil, firstsubmittime=nil, firstruntime=nil, scheduledesc=nil, incharge=nil, cycleunit=nil, leftcoordinate=nil, topcoordinate=nil, virtualflag=nil, taskaction=nil, delaytime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @Status = status
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @FirstSubmitTime = firstsubmittime
          @FirstRunTime = firstruntime
          @ScheduleDesc = scheduledesc
          @InCharge = incharge
          @CycleUnit = cycleunit
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @VirtualFlag = virtualflag
          @TaskAction = taskaction
          @DelayTime = delaytime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @Status = params['Status']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @FirstSubmitTime = params['FirstSubmitTime']
          @FirstRunTime = params['FirstRunTime']
          @ScheduleDesc = params['ScheduleDesc']
          @InCharge = params['InCharge']
          @CycleUnit = params['CycleUnit']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @VirtualFlag = params['VirtualFlag']
          @TaskAction = params['TaskAction']
          @DelayTime = params['DelayTime']
        end
      end

      # 任务扩展信息
      class TaskExtInfo < TencentCloud::Common::AbstractModel
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

      # 任务信息数据
      class TaskInfoData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param Status: 任务状态，'Y','F','O','T','INVALID' 分别表示调度中、已停止、已暂停、停止中、已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param VirtualFlag: 跨工作流虚拟任务标识；true标识跨工作流任务；false标识本工作流任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param DelayTime: 延时实例生成时间(延时调度)，转换为分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CrontabExpression: crontab表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdate: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdate: String
        # @param StartTime: 生效日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ExecutionStartTime: 执行时间左闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param CycleType: 周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: Integer
        # @param CycleStep: 步长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param StartupTime: 延时执行时间（延时执行) 对应为 开始时间 状态为分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupTime: Integer
        # @param RetryWait: 重试等待时间,单位分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryWait: Integer
        # @param Retriable: 是否可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retriable: Integer
        # @param TaskAction: 调度扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param TryLimit: 运行次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param RunPriority: 运行优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunPriority: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param BrokerIp: 指定的运行节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: String
        # @param ClusterId: 集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param MinDateTime: 最小数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinDateTime: String
        # @param MaxDateTime: 最大数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDateTime: String
        # @param SelfDepend: 是否自身依赖 是1 否2 并行3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDepend: Integer
        # @param TaskExt: 扩展属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExt: Array
        # @param Notes: 任务备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notes: String
        # @param YarnQueue: 队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YarnQueue: String
        # @param Submit: 任务版本是否已提交
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Submit: Boolean
        # @param LastSchedulerCommitTime: 最新调度计划变更时间 仅生产态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastSchedulerCommitTime: String
        # @param NormalizedJobStartTime: 仅生产态存储于生产态序列化任务信息, 减少base CPU重复密集计算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalizedJobStartTime: String
        # @param SourceServer: 源数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServer: String
        # @param Creater: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creater: String
        # @param DependencyRel: 分支，依赖关系，and/or, 默认and
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyRel: String
        # @param DependencyWorkflow: 是否支持工作流依赖 yes / no 默认 no
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyWorkflow: String
        # @param Params: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param UpdateUser: 最后修改的人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUser: String
        # @param UpdateTime: 最后修改的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UpdateUserId: 最后修改的人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserId: String
        # @param SchedulerDesc: 调度计划
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDesc: String
        # @param ResourceGroup: 资源组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param VersionDesc: 版本提交说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionDesc: String
        # @param RealWorkflowId: 真实工作流Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealWorkflowId: String
        # @param TargetServer: 目标数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServer: String
        # @param DependencyConfigs: 依赖配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyConfigs: Array
        # @param VirtualTaskStatus: 虚拟任务状态1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskStatus: String
        # @param VirtualTaskId: 虚拟任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskId: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :Status, :ProjectId, :FolderName, :FolderId, :InCharge, :VirtualFlag, :DelayTime, :CrontabExpression, :CreateTime, :LastUpdate, :StartTime, :EndTime, :ExecutionStartTime, :ExecutionEndTime, :CycleType, :CycleStep, :StartupTime, :RetryWait, :Retriable, :TaskAction, :TryLimit, :RunPriority, :TaskType, :BrokerIp, :ClusterId, :MinDateTime, :MaxDateTime, :SelfDepend, :TaskExt, :Notes, :YarnQueue, :Submit, :LastSchedulerCommitTime, :NormalizedJobStartTime, :SourceServer, :Creater, :DependencyRel, :DependencyWorkflow, :Params, :UpdateUser, :UpdateTime, :UpdateUserId, :SchedulerDesc, :ResourceGroup, :VersionDesc, :RealWorkflowId, :TargetServer, :DependencyConfigs, :VirtualTaskStatus, :VirtualTaskId
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, status=nil, projectid=nil, foldername=nil, folderid=nil, incharge=nil, virtualflag=nil, delaytime=nil, crontabexpression=nil, createtime=nil, lastupdate=nil, starttime=nil, endtime=nil, executionstarttime=nil, executionendtime=nil, cycletype=nil, cyclestep=nil, startuptime=nil, retrywait=nil, retriable=nil, taskaction=nil, trylimit=nil, runpriority=nil, tasktype=nil, brokerip=nil, clusterid=nil, mindatetime=nil, maxdatetime=nil, selfdepend=nil, taskext=nil, notes=nil, yarnqueue=nil, submit=nil, lastschedulercommittime=nil, normalizedjobstarttime=nil, sourceserver=nil, creater=nil, dependencyrel=nil, dependencyworkflow=nil, params=nil, updateuser=nil, updatetime=nil, updateuserid=nil, schedulerdesc=nil, resourcegroup=nil, versiondesc=nil, realworkflowid=nil, targetserver=nil, dependencyconfigs=nil, virtualtaskstatus=nil, virtualtaskid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @Status = status
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @InCharge = incharge
          @VirtualFlag = virtualflag
          @DelayTime = delaytime
          @CrontabExpression = crontabexpression
          @CreateTime = createtime
          @LastUpdate = lastupdate
          @StartTime = starttime
          @EndTime = endtime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CycleType = cycletype
          @CycleStep = cyclestep
          @StartupTime = startuptime
          @RetryWait = retrywait
          @Retriable = retriable
          @TaskAction = taskaction
          @TryLimit = trylimit
          @RunPriority = runpriority
          @TaskType = tasktype
          @BrokerIp = brokerip
          @ClusterId = clusterid
          @MinDateTime = mindatetime
          @MaxDateTime = maxdatetime
          @SelfDepend = selfdepend
          @TaskExt = taskext
          @Notes = notes
          @YarnQueue = yarnqueue
          @Submit = submit
          @LastSchedulerCommitTime = lastschedulercommittime
          @NormalizedJobStartTime = normalizedjobstarttime
          @SourceServer = sourceserver
          @Creater = creater
          @DependencyRel = dependencyrel
          @DependencyWorkflow = dependencyworkflow
          @Params = params
          @UpdateUser = updateuser
          @UpdateTime = updatetime
          @UpdateUserId = updateuserid
          @SchedulerDesc = schedulerdesc
          @ResourceGroup = resourcegroup
          @VersionDesc = versiondesc
          @RealWorkflowId = realworkflowid
          @TargetServer = targetserver
          @DependencyConfigs = dependencyconfigs
          @VirtualTaskStatus = virtualtaskstatus
          @VirtualTaskId = virtualtaskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @InCharge = params['InCharge']
          @VirtualFlag = params['VirtualFlag']
          @DelayTime = params['DelayTime']
          @CrontabExpression = params['CrontabExpression']
          @CreateTime = params['CreateTime']
          @LastUpdate = params['LastUpdate']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @StartupTime = params['StartupTime']
          @RetryWait = params['RetryWait']
          @Retriable = params['Retriable']
          @TaskAction = params['TaskAction']
          @TryLimit = params['TryLimit']
          @RunPriority = params['RunPriority']
          @TaskType = params['TaskType']
          @BrokerIp = params['BrokerIp']
          @ClusterId = params['ClusterId']
          @MinDateTime = params['MinDateTime']
          @MaxDateTime = params['MaxDateTime']
          @SelfDepend = params['SelfDepend']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
          @Notes = params['Notes']
          @YarnQueue = params['YarnQueue']
          @Submit = params['Submit']
          @LastSchedulerCommitTime = params['LastSchedulerCommitTime']
          @NormalizedJobStartTime = params['NormalizedJobStartTime']
          @SourceServer = params['SourceServer']
          @Creater = params['Creater']
          @DependencyRel = params['DependencyRel']
          @DependencyWorkflow = params['DependencyWorkflow']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Params << paraminfo_tmp
            end
          end
          @UpdateUser = params['UpdateUser']
          @UpdateTime = params['UpdateTime']
          @UpdateUserId = params['UpdateUserId']
          @SchedulerDesc = params['SchedulerDesc']
          @ResourceGroup = params['ResourceGroup']
          @VersionDesc = params['VersionDesc']
          @RealWorkflowId = params['RealWorkflowId']
          @TargetServer = params['TargetServer']
          unless params['DependencyConfigs'].nil?
            @DependencyConfigs = []
            params['DependencyConfigs'].each do |i|
              dependencyconfig_tmp = DependencyConfig.new
              dependencyconfig_tmp.deserialize(i)
              @DependencyConfigs << dependencyconfig_tmp
            end
          end
          @VirtualTaskStatus = params['VirtualTaskStatus']
          @VirtualTaskId = params['VirtualTaskId']
        end
      end

      # 任务分页数据查询
      class TaskInfoDataPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param Items: 任务集合信息
        # @type Items: Array
        # @param TotalCount: 总页数1
        # @type TotalCount: Integer

        attr_accessor :PageNumber, :PageSize, :Items, :TotalCount
        
        def initialize(pagenumber=nil, pagesize=nil, items=nil, totalcount=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
          @TotalCount = totalcount
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskinfodata_tmp = TaskInfoData.new
              taskinfodata_tmp.deserialize(i)
              @Items << taskinfodata_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 任务分页查询
      class TaskInfoPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param Items: 工作流列表信息
        # @type Items: Array
        # @param TotalPage: 总页数
        # @type TotalPage: Integer

        attr_accessor :PageNumber, :PageSize, :Items, :TotalPage
        
        def initialize(pagenumber=nil, pagesize=nil, items=nil, totalpage=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
          @TotalPage = totalpage
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskcanvasinfo_tmp = TaskCanvasInfo.new
              taskcanvasinfo_tmp.deserialize(i)
              @Items << taskcanvasinfo_tmp
            end
          end
          @TotalPage = params['TotalPage']
        end
      end

      # 任务属性
      class TaskInnerInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param CycleType: 周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param VirtualTaskId: 虚拟任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskId: String
        # @param VirtualFlag: 虚拟任务标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param RealWorkflowId: 真实任务工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealWorkflowId: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :CycleType, :VirtualTaskId, :VirtualFlag, :RealWorkflowId
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, cycletype=nil, virtualtaskid=nil, virtualflag=nil, realworkflowid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @CycleType = cycletype
          @VirtualTaskId = virtualtaskid
          @VirtualFlag = virtualflag
          @RealWorkflowId = realworkflowid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @CycleType = params['CycleType']
          @VirtualTaskId = params['VirtualTaskId']
          @VirtualFlag = params['VirtualFlag']
          @RealWorkflowId = params['RealWorkflowId']
        end
      end

      # 离线任务实例详情
      class TaskInstanceDetail < TencentCloud::Common::AbstractModel
        # @param TaskRunId: 实例id
        # @type TaskRunId: String
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param CurRunDate: 实例数据运行时间
        # @type CurRunDate: String
        # @param IssueDate: 实例实际运行时间
        # @type IssueDate: String
        # @param InlongTaskId: InLong任务Id
        # @type InlongTaskId: String
        # @param ExecutorGroupId: 执行资源组id
        # @type ExecutorGroupId: String
        # @param TaskRunType: 任务类型(1 调试运行,2 调度执行)
        # @type TaskRunType: Integer
        # @param State: 任务状态(1 正在执行,2 成功,3 失败,4 等待终止,5 正在终止,6 已终止,7 终止失败,9 等待执行)
        # @type State: Integer
        # @param StartTime: 实例开始运行时间，格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 实例结束运行时间，格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param BrokerIp: Broker IP
        # @type BrokerIp: String
        # @param PodName: 运行实例的EKS Pod名称
        # @type PodName: String
        # @param NextRunDate: 下一个调度周期的数据运行时间
        # @type NextRunDate: String
        # @param CreateUin: 创建者的账号Id
        # @type CreateUin: Integer
        # @param OperatorUin: 操作者的账号Id
        # @type OperatorUin: Integer
        # @param OwnerUin: 拥有者的账号Id
        # @type OwnerUin: Integer
        # @param AppId: App Id
        # @type AppId: Integer
        # @param ProjectId: WeData项目id
        # @type ProjectId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param TaskName: 任务名称
        # @type TaskName: String

        attr_accessor :TaskRunId, :TaskId, :CurRunDate, :IssueDate, :InlongTaskId, :ExecutorGroupId, :TaskRunType, :State, :StartTime, :EndTime, :BrokerIp, :PodName, :NextRunDate, :CreateUin, :OperatorUin, :OwnerUin, :AppId, :ProjectId, :CreateTime, :UpdateTime, :TaskName
        
        def initialize(taskrunid=nil, taskid=nil, currundate=nil, issuedate=nil, inlongtaskid=nil, executorgroupid=nil, taskruntype=nil, state=nil, starttime=nil, endtime=nil, brokerip=nil, podname=nil, nextrundate=nil, createuin=nil, operatoruin=nil, owneruin=nil, appid=nil, projectid=nil, createtime=nil, updatetime=nil, taskname=nil)
          @TaskRunId = taskrunid
          @TaskId = taskid
          @CurRunDate = currundate
          @IssueDate = issuedate
          @InlongTaskId = inlongtaskid
          @ExecutorGroupId = executorgroupid
          @TaskRunType = taskruntype
          @State = state
          @StartTime = starttime
          @EndTime = endtime
          @BrokerIp = brokerip
          @PodName = podname
          @NextRunDate = nextrundate
          @CreateUin = createuin
          @OperatorUin = operatoruin
          @OwnerUin = owneruin
          @AppId = appid
          @ProjectId = projectid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TaskName = taskname
        end

        def deserialize(params)
          @TaskRunId = params['TaskRunId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @IssueDate = params['IssueDate']
          @InlongTaskId = params['InlongTaskId']
          @ExecutorGroupId = params['ExecutorGroupId']
          @TaskRunType = params['TaskRunType']
          @State = params['State']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BrokerIp = params['BrokerIp']
          @PodName = params['PodName']
          @NextRunDate = params['NextRunDate']
          @CreateUin = params['CreateUin']
          @OperatorUin = params['OperatorUin']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TaskName = params['TaskName']
        end
      end

      # 任务实例信息
      class TaskInstanceInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param State: 实例状态，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param TaskTypeId: 任务类型id，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param SchedulerDesc: 调度计划展示描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDesc: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param CycleType: 调度周期类型，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param StartTime: 实例开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 实例结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param InstanceType: 实例类型，0补录实例，1周期实例，2非周期实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param TryLimit: 最大重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param Tries: 当前重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: Integer
        # @param SchedulerDateTime: 计划调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDateTime: String
        # @param CostTime: 运行耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :State, :TaskTypeId, :TaskTypeDesc, :ProjectId, :FolderName, :FolderId, :SchedulerDesc, :InCharge, :CycleType, :StartTime, :EndTime, :InstanceType, :TryLimit, :Tries, :SchedulerDateTime, :CostTime
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, state=nil, tasktypeid=nil, tasktypedesc=nil, projectid=nil, foldername=nil, folderid=nil, schedulerdesc=nil, incharge=nil, cycletype=nil, starttime=nil, endtime=nil, instancetype=nil, trylimit=nil, tries=nil, schedulerdatetime=nil, costtime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @State = state
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @SchedulerDesc = schedulerdesc
          @InCharge = incharge
          @CycleType = cycletype
          @StartTime = starttime
          @EndTime = endtime
          @InstanceType = instancetype
          @TryLimit = trylimit
          @Tries = tries
          @SchedulerDateTime = schedulerdatetime
          @CostTime = costtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @State = params['State']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @SchedulerDesc = params['SchedulerDesc']
          @InCharge = params['InCharge']
          @CycleType = params['CycleType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceType = params['InstanceType']
          @TryLimit = params['TryLimit']
          @Tries = params['Tries']
          @SchedulerDateTime = params['SchedulerDateTime']
          @CostTime = params['CostTime']
        end
      end

      # 任务依赖的边信息
      class TaskLinkInfo < TencentCloud::Common::AbstractModel
        # @param TaskTo: 下游任务id
        # @type TaskTo: String
        # @param TaskFrom: 上游任务id
        # @type TaskFrom: String
        # @param LinkType: 依赖边类型 1、“real_real”表示任务->任务；2、"virtual_real" 跨工作流任务->任务
        # @type LinkType: String
        # @param LinkId: 依赖边id
        # @type LinkId: String

        attr_accessor :TaskTo, :TaskFrom, :LinkType, :LinkId
        
        def initialize(taskto=nil, taskfrom=nil, linktype=nil, linkid=nil)
          @TaskTo = taskto
          @TaskFrom = taskfrom
          @LinkType = linktype
          @LinkId = linkid
        end

        def deserialize(params)
          @TaskTo = params['TaskTo']
          @TaskFrom = params['TaskFrom']
          @LinkType = params['LinkType']
          @LinkId = params['LinkId']
        end
      end

      # 任务锁的状态
      class TaskLockStatus < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Locker: 持锁者
        # @type Locker: String
        # @param IsLocker: 当前操作用户是否为持锁者，1表示为持锁者，0表示为不为持锁者
        # @type IsLocker: Integer
        # @param IsRob: 是否可以抢锁，1表示可以抢锁，0表示不可以抢锁
        # @type IsRob: Integer

        attr_accessor :TaskId, :Locker, :IsLocker, :IsRob
        
        def initialize(taskid=nil, locker=nil, islocker=nil, isrob=nil)
          @TaskId = taskid
          @Locker = locker
          @IsLocker = islocker
          @IsRob = isrob
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Locker = params['Locker']
          @IsLocker = params['IsLocker']
          @IsRob = params['IsRob']
        end
      end

      # TaskLog请求参数结构体
      class TaskLogRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param StartTime: 起始时间戳，单位毫秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳，单位毫秒
        # @type EndTime: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Limit: 拉取日志数量，默认100
        # @type Limit: Integer
        # @param OrderType: 日志排序 desc 倒序 asc 顺序
        # @type OrderType: String
        # @param TaskType: 实时任务 201   离线任务 202  默认实时任务
        # @type TaskType: Integer

        attr_accessor :TaskId, :StartTime, :EndTime, :ProjectId, :Limit, :OrderType, :TaskType
        
        def initialize(taskid=nil, starttime=nil, endtime=nil, projectid=nil, limit=nil, ordertype=nil, tasktype=nil)
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @ProjectId = projectid
          @Limit = limit
          @OrderType = ordertype
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProjectId = params['ProjectId']
          @Limit = params['Limit']
          @OrderType = params['OrderType']
          @TaskType = params['TaskType']
        end
      end

      # TaskLog返回参数结构体
      class TaskLogResponse < TencentCloud::Common::AbstractModel
        # @param LogContentList: 详细日志
        # @type LogContentList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogContentList, :RequestId
        
        def initialize(logcontentlist=nil, requestid=nil)
          @LogContentList = logcontentlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogContentList'].nil?
            @LogContentList = []
            params['LogContentList'].each do |i|
              logcontent_tmp = LogContent.new
              logcontent_tmp.deserialize(i)
              @LogContentList << logcontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 离线任务统计指标明细
      class TaskReportDetail < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param InstanceId: 任务实例ID
        # @type InstanceId: String
        # @param CurRunDate: 实例数据运行时间
        # @type CurRunDate: String
        # @param IssueDate: 实例实际下发时间
        # @type IssueDate: String
        # @param TaskState: 任务状态码。1 正在执行,2 成功,3 失败,4 等待终止,5 正在终止,6 已终止,7 终止失败,9 等待执行。
        # @type TaskState: String
        # @param TotalReadRecords: 总读取条数
        # @type TotalReadRecords: Integer
        # @param TotalReadBytes: 总读取字节数
        # @type TotalReadBytes: Integer
        # @param TotalWriteRecords: 总写入条数
        # @type TotalWriteRecords: Integer
        # @param TotalWriteBytes: 总写入字节数
        # @type TotalWriteBytes: Integer
        # @param RecordSpeed: 写入速度（条/秒）
        # @type RecordSpeed: Integer
        # @param ByteSpeed: 吞吐（Byte/秒）
        # @type ByteSpeed: Float
        # @param TotalErrorRecords: 脏数据条数
        # @type TotalErrorRecords: Integer

        attr_accessor :TaskId, :InstanceId, :CurRunDate, :IssueDate, :TaskState, :TotalReadRecords, :TotalReadBytes, :TotalWriteRecords, :TotalWriteBytes, :RecordSpeed, :ByteSpeed, :TotalErrorRecords
        
        def initialize(taskid=nil, instanceid=nil, currundate=nil, issuedate=nil, taskstate=nil, totalreadrecords=nil, totalreadbytes=nil, totalwriterecords=nil, totalwritebytes=nil, recordspeed=nil, bytespeed=nil, totalerrorrecords=nil)
          @TaskId = taskid
          @InstanceId = instanceid
          @CurRunDate = currundate
          @IssueDate = issuedate
          @TaskState = taskstate
          @TotalReadRecords = totalreadrecords
          @TotalReadBytes = totalreadbytes
          @TotalWriteRecords = totalwriterecords
          @TotalWriteBytes = totalwritebytes
          @RecordSpeed = recordspeed
          @ByteSpeed = bytespeed
          @TotalErrorRecords = totalerrorrecords
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @InstanceId = params['InstanceId']
          @CurRunDate = params['CurRunDate']
          @IssueDate = params['IssueDate']
          @TaskState = params['TaskState']
          @TotalReadRecords = params['TotalReadRecords']
          @TotalReadBytes = params['TotalReadBytes']
          @TotalWriteRecords = params['TotalWriteRecords']
          @TotalWriteBytes = params['TotalWriteBytes']
          @RecordSpeed = params['RecordSpeed']
          @ByteSpeed = params['ByteSpeed']
          @TotalErrorRecords = params['TotalErrorRecords']
        end
      end

      # 任务执行脚本
      class TaskScriptContent < TencentCloud::Common::AbstractModel
        # @param ScriptContent: 脚本内容 base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContent: String

        attr_accessor :ScriptContent
        
        def initialize(scriptcontent=nil)
          @ScriptContent = scriptcontent
        end

        def deserialize(params)
          @ScriptContent = params['ScriptContent']
        end
      end

      # 数据质量阈值
      class ThresholdValue < TencentCloud::Common::AbstractModel
        # @param ValueType: 阈值类型  1.低阈值  2.高阈值   3.普通阈值  4.枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueType: Integer
        # @param Value: 阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :ValueType, :Value
        
        def initialize(valuetype=nil, value=nil)
          @ValueType = valuetype
          @Value = value
        end

        def deserialize(params)
          @ValueType = params['ValueType']
          @Value = params['Value']
        end
      end

      # 质量概览表排行结果
      class TopTableStat < TencentCloud::Common::AbstractModel
        # @param AlarmTables: 告警表列表
        # @type AlarmTables: Array
        # @param PipelineTables: 阻塞表列表
        # @type PipelineTables: Array

        attr_accessor :AlarmTables, :PipelineTables
        
        def initialize(alarmtables=nil, pipelinetables=nil)
          @AlarmTables = alarmtables
          @PipelineTables = pipelinetables
        end

        def deserialize(params)
          unless params['AlarmTables'].nil?
            @AlarmTables = []
            params['AlarmTables'].each do |i|
              toptablestatitem_tmp = TopTableStatItem.new
              toptablestatitem_tmp.deserialize(i)
              @AlarmTables << toptablestatitem_tmp
            end
          end
          unless params['PipelineTables'].nil?
            @PipelineTables = []
            params['PipelineTables'].each do |i|
              toptablestatitem_tmp = TopTableStatItem.new
              toptablestatitem_tmp.deserialize(i)
              @PipelineTables << toptablestatitem_tmp
            end
          end
        end
      end

      # 质量概览表排行元素
      class TopTableStatItem < TencentCloud::Common::AbstractModel
        # @param TableId: 表Id
        # @type TableId: String
        # @param TableName: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param Cnt: 数
        # @type Cnt: Integer

        attr_accessor :TableId, :TableName, :Cnt
        
        def initialize(tableid=nil, tablename=nil, cnt=nil)
          @TableId = tableid
          @TableName = tablename
          @Cnt = cnt
        end

        def deserialize(params)
          @TableId = params['TableId']
          @TableName = params['TableName']
          @Cnt = params['Cnt']
        end
      end

      # TriggerEvent请求参数结构体
      class TriggerEventRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Name: 案例名称
        # @type Name: String
        # @param Dimension: 时间格式：如果选择触发时间：2022年6月21，则设置为20220621
        # @type Dimension: String
        # @param Description: 描述信息
        # @type Description: String

        attr_accessor :ProjectId, :Name, :Dimension, :Description
        
        def initialize(projectid=nil, name=nil, dimension=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @Dimension = dimension
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Dimension = params['Dimension']
          @Description = params['Description']
        end
      end

      # TriggerEvent返回参数结构体
      class TriggerEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UnlockIntegrationTask请求参数结构体
      class UnlockIntegrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # UnlockIntegrationTask返回参数结构体
      class UnlockIntegrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作成功与否标识
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # UpdateInLongAgent请求参数结构体
      class UpdateInLongAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 采集器ID
        # @type AgentId: String
        # @param ProjectId: WeData项目ID
        # @type ProjectId: String
        # @param AgentName: 采集器名称
        # @type AgentName: String
        # @param ExecutorGroupId: 集成资源组ID
        # @type ExecutorGroupId: String

        attr_accessor :AgentId, :ProjectId, :AgentName, :ExecutorGroupId
        
        def initialize(agentid=nil, projectid=nil, agentname=nil, executorgroupid=nil)
          @AgentId = agentid
          @ProjectId = projectid
          @AgentName = agentname
          @ExecutorGroupId = executorgroupid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @ProjectId = params['ProjectId']
          @AgentName = params['AgentName']
          @ExecutorGroupId = params['ExecutorGroupId']
        end
      end

      # UpdateInLongAgent返回参数结构体
      class UpdateInLongAgentResponse < TencentCloud::Common::AbstractModel
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

      # 用户文件信息
      class UserFileDTO < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileExtensionType: 文件类型，如 jar zip 等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtensionType: String
        # @param FileUploadType: 文件上传类型，资源管理为 resource
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUploadType: String
        # @param Md5Value: 文件MD5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5Value: String
        # @param CreateTime: 创建时间，秒级别的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，秒级别的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Size: 文件大小，单位为字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param LocalPath: 本地路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalPath: String
        # @param LocalTmpPath: 本地临时路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalTmpPath: String
        # @param RemotePath: 远程路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemotePath: String
        # @param OwnerName: 文件拥有者名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerName: String
        # @param Owner: 文件拥有者uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param PathDepth: 文件深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathDepth: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ExtraInfo: 附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param ZipPath: 本地临时压缩文件绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZipPath: String
        # @param Bucket: 文件所属存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 文件所属存储桶的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :ResourceId, :FileName, :FileExtensionType, :FileUploadType, :Md5Value, :CreateTime, :UpdateTime, :Size, :LocalPath, :LocalTmpPath, :RemotePath, :OwnerName, :Owner, :PathDepth, :ProjectId, :ExtraInfo, :ZipPath, :Bucket, :Region
        
        def initialize(resourceid=nil, filename=nil, fileextensiontype=nil, fileuploadtype=nil, md5value=nil, createtime=nil, updatetime=nil, size=nil, localpath=nil, localtmppath=nil, remotepath=nil, ownername=nil, owner=nil, pathdepth=nil, projectid=nil, extrainfo=nil, zippath=nil, bucket=nil, region=nil)
          @ResourceId = resourceid
          @FileName = filename
          @FileExtensionType = fileextensiontype
          @FileUploadType = fileuploadtype
          @Md5Value = md5value
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Size = size
          @LocalPath = localpath
          @LocalTmpPath = localtmppath
          @RemotePath = remotepath
          @OwnerName = ownername
          @Owner = owner
          @PathDepth = pathdepth
          @ProjectId = projectid
          @ExtraInfo = extrainfo
          @ZipPath = zippath
          @Bucket = bucket
          @Region = region
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @FileName = params['FileName']
          @FileExtensionType = params['FileExtensionType']
          @FileUploadType = params['FileUploadType']
          @Md5Value = params['Md5Value']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Size = params['Size']
          @LocalPath = params['LocalPath']
          @LocalTmpPath = params['LocalTmpPath']
          @RemotePath = params['RemotePath']
          @OwnerName = params['OwnerName']
          @Owner = params['Owner']
          @PathDepth = params['PathDepth']
          @ProjectId = params['ProjectId']
          @ExtraInfo = params['ExtraInfo']
          @ZipPath = params['ZipPath']
          @Bucket = params['Bucket']
          @Region = params['Region']
        end
      end

      # 权重信息
      class WeightInfo < TencentCloud::Common::AbstractModel
        # @param Weight: 权重
        # @type Weight: Integer
        # @param QualityDim: 维度类型 1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性
        # @type QualityDim: Integer

        attr_accessor :Weight, :QualityDim
        
        def initialize(weight=nil, qualitydim=nil)
          @Weight = weight
          @QualityDim = qualitydim
        end

        def deserialize(params)
          @Weight = params['Weight']
          @QualityDim = params['QualityDim']
        end
      end

      # 工作流信息
      class Workflow < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param Owner: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param OwnerId: 责任人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProjectIdent: 项目标识
        # @type ProjectIdent: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param WorkflowDesc: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String
        # @param UserGroupId: 工作流所属用户分组id 若有多个,分号隔开: a;b;c
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param UserGroupName: 工作流所属用户分组名称  若有多个,分号隔开: a;b;c
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupName: String

        attr_accessor :WorkflowId, :Owner, :OwnerId, :ProjectId, :ProjectIdent, :ProjectName, :WorkflowDesc, :WorkflowName, :FolderId, :UserGroupId, :UserGroupName
        
        def initialize(workflowid=nil, owner=nil, ownerid=nil, projectid=nil, projectident=nil, projectname=nil, workflowdesc=nil, workflowname=nil, folderid=nil, usergroupid=nil, usergroupname=nil)
          @WorkflowId = workflowid
          @Owner = owner
          @OwnerId = ownerid
          @ProjectId = projectid
          @ProjectIdent = projectident
          @ProjectName = projectname
          @WorkflowDesc = workflowdesc
          @WorkflowName = workflowname
          @FolderId = folderid
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @Owner = params['Owner']
          @OwnerId = params['OwnerId']
          @ProjectId = params['ProjectId']
          @ProjectIdent = params['ProjectIdent']
          @ProjectName = params['ProjectName']
          @WorkflowDesc = params['WorkflowDesc']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
        end
      end

    end
  end
end

