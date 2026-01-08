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
  module Wedata
    module V20250806
      # AddCalcEnginesToProject请求参数结构体
      class AddCalcEnginesToProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 修改的项目ID
        # @type ProjectId: String
        # @param DLCInfo: DLC集群信息
        # @type DLCInfo: Array

        attr_accessor :ProjectId, :DLCInfo

        def initialize(projectid=nil, dlcinfo=nil)
          @ProjectId = projectid
          @DLCInfo = dlcinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['DLCInfo'].nil?
            @DLCInfo = []
            params['DLCInfo'].each do |i|
              dlcclusterinfo_tmp = DLCClusterInfo.new
              dlcclusterinfo_tmp.deserialize(i)
              @DLCInfo << dlcclusterinfo_tmp
            end
          end
        end
      end

      # AddCalcEnginesToProject返回参数结构体
      class AddCalcEnginesToProjectResponse < TencentCloud::Common::AbstractModel
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

      # 告警规则接收人配置
      class AlarmGroup < TencentCloud::Common::AbstractModel
        # @param AlarmEscalationRecipientIds: 告警升级人ID列表
        # 若告警接收人或上级升级人未在告警间隔时间内确认告警，则会发送告警给下一级升级人。
        # @type AlarmEscalationRecipientIds: Array
        # @param AlarmEscalationInterval: 告警升级间隔
        # @type AlarmEscalationInterval: Integer
        # @param NotificationFatigue: 告警通知疲劳配置
        # @type NotificationFatigue: :class:`Tencentcloud::Wedata.v20250806.models.NotificationFatigue`
        # @param AlarmWays: 告警渠道 1.邮件，2.短信，3.微信，4.语音，5.企业微信，6.Http，7.企业微信群 8 飞书群 9 钉钉群 10 Slack群 11 Teams群（默认1.邮件） 7.企业微信群 8 飞书群 9 钉钉群 10 Slack群 11 Teams群 只能选择一个渠道
        # @type AlarmWays: Array
        # @param WebHooks: 企业微信群/飞书群/钉钉群 /Slack群/Teams群的webhook地址列表
        # @type WebHooks: Array
        # @param AlarmRecipientType: 告警接收人类型：1.指定人员，2.任务责任人，3.值班表（默认1.指定人员）
        # @type AlarmRecipientType: Integer
        # @param AlarmRecipientIds: 根据AlarmRecipientType的类型该列表具有不同的业务id 1（指定人员）: 告警接收人id列表 2（任务责任人）：无需配置 3（值班表）：值班表id列表
        # @type AlarmRecipientIds: Array

        attr_accessor :AlarmEscalationRecipientIds, :AlarmEscalationInterval, :NotificationFatigue, :AlarmWays, :WebHooks, :AlarmRecipientType, :AlarmRecipientIds

        def initialize(alarmescalationrecipientids=nil, alarmescalationinterval=nil, notificationfatigue=nil, alarmways=nil, webhooks=nil, alarmrecipienttype=nil, alarmrecipientids=nil)
          @AlarmEscalationRecipientIds = alarmescalationrecipientids
          @AlarmEscalationInterval = alarmescalationinterval
          @NotificationFatigue = notificationfatigue
          @AlarmWays = alarmways
          @WebHooks = webhooks
          @AlarmRecipientType = alarmrecipienttype
          @AlarmRecipientIds = alarmrecipientids
        end

        def deserialize(params)
          @AlarmEscalationRecipientIds = params['AlarmEscalationRecipientIds']
          @AlarmEscalationInterval = params['AlarmEscalationInterval']
          unless params['NotificationFatigue'].nil?
            @NotificationFatigue = NotificationFatigue.new
            @NotificationFatigue.deserialize(params['NotificationFatigue'])
          end
          @AlarmWays = params['AlarmWays']
          unless params['WebHooks'].nil?
            @WebHooks = []
            params['WebHooks'].each do |i|
              alarmwaywebhook_tmp = AlarmWayWebHook.new
              alarmwaywebhook_tmp.deserialize(i)
              @WebHooks << alarmwaywebhook_tmp
            end
          end
          @AlarmRecipientType = params['AlarmRecipientType']
          @AlarmRecipientIds = params['AlarmRecipientIds']
        end
      end

      # 告警信息
      class AlarmMessage < TencentCloud::Common::AbstractModel
        # @param AlarmMessageId: 告警消息Id
        # @type AlarmMessageId: Integer
        # @param AlarmTime: 告警时间，同一条告警可能发送多次，只显示最新的告警时间
        # @type AlarmTime: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param CurRunDate: 任务的实例数据时间
        # @type CurRunDate: String
        # @param AlarmReason: 告警原因
        # @type AlarmReason: String
        # @param AlarmLevel: 告警级别，1.普通， 2.重要，3.紧急
        # @type AlarmLevel: Integer
        # @param AlarmRuleId: 告警规则Id
        # @type AlarmRuleId: String
        # @param AlarmWays: 告警渠道 1.邮件，2.短信，3.微信，4.语音，5.企业微信，6.Http，7.企业微信群， 8.飞书群，9.钉钉群，10.Slack群,11.Teams群（默认1.邮件），7.企业微信群，8.飞书群，9.钉钉群，10.Slack群，11.Teams群
        # @type AlarmWays: Array
        # @param AlarmRecipients: 告警接收人
        # @type AlarmRecipients: Array

        attr_accessor :AlarmMessageId, :AlarmTime, :TaskName, :TaskId, :CurRunDate, :AlarmReason, :AlarmLevel, :AlarmRuleId, :AlarmWays, :AlarmRecipients

        def initialize(alarmmessageid=nil, alarmtime=nil, taskname=nil, taskid=nil, currundate=nil, alarmreason=nil, alarmlevel=nil, alarmruleid=nil, alarmways=nil, alarmrecipients=nil)
          @AlarmMessageId = alarmmessageid
          @AlarmTime = alarmtime
          @TaskName = taskname
          @TaskId = taskid
          @CurRunDate = currundate
          @AlarmReason = alarmreason
          @AlarmLevel = alarmlevel
          @AlarmRuleId = alarmruleid
          @AlarmWays = alarmways
          @AlarmRecipients = alarmrecipients
        end

        def deserialize(params)
          @AlarmMessageId = params['AlarmMessageId']
          @AlarmTime = params['AlarmTime']
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @AlarmReason = params['AlarmReason']
          @AlarmLevel = params['AlarmLevel']
          @AlarmRuleId = params['AlarmRuleId']
          @AlarmWays = params['AlarmWays']
          @AlarmRecipients = params['AlarmRecipients']
        end
      end

      # 告警免打扰时间区间
      class AlarmQuietInterval < TencentCloud::Common::AbstractModel
        # @param DaysOfWeek: ISO标准，1表示周一，7表示周日。
        # @type DaysOfWeek: Array
        # @param StartTime: 开始时间，精度时分秒，格式 HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 结束时间，精度时分秒，格式 HH:mm:ss
        # @type EndTime: String

        attr_accessor :DaysOfWeek, :StartTime, :EndTime

        def initialize(daysofweek=nil, starttime=nil, endtime=nil)
          @DaysOfWeek = daysofweek
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DaysOfWeek = params['DaysOfWeek']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 告警规则详情
      class AlarmRuleData < TencentCloud::Common::AbstractModel
        # @param AlarmRuleId: 告警规则id
        # @type AlarmRuleId: String
        # @param AlarmRuleName: 告警规则名称
        # @type AlarmRuleName: String
        # @param Description: 告警规则描述
        # @type Description: String
        # @param MonitorObjectType: 监控对象类型,
        # 任务维度监控： 可按照任务/工作流/项目来配置：1.任务、2.工作流、3.项目（默认为1.任务）
        # 项目维度监控： 项目整体任务波动告警， 7：项目波动监控告警
        # @type MonitorObjectType: Integer
        # @param MonitorObjectIds: 根据MonitorType 的设置传入不同的业务id，如下1（任务）： MonitorObjectIds为任务id列表2（工作流）： MonitorObjectIds 为工作流id列表(工作流id可从接口ListWorkflows获取)3（项目）： MonitorObjectIds为项目id列表
        # @type MonitorObjectIds: Array
        # @param AlarmTypes: 告警规则监控类型
        # failure：失败告警 ；overtime：超时告警 success：成功告警; backTrackingOrRerunSuccess: 补录重跑成功告警 backTrackingOrRerunFailure：补录重跑失败告警；
        # 项目波动告警
        # projectFailureInstanceUpwardFluctuationAlarm： 当天失败实例数向上波动率超过阀值告警；
        # projectSuccessInstanceDownwardFluctuationAlarm：当天成功实例数向下波动率超过阀值告警；

        # 离线集成任务对账告警：
        # reconciliationFailure： 离线对账任务失败告警
        # reconciliationOvertime： 离线对账任务运行超时告警
        # reconciliationMismatch： 数据对账任务不一致条数超过阀值告警
        # @type AlarmTypes: Array
        # @param Status: 告警规则是否启用
        # 0-- 禁用 1--启用
        # @type Status: Integer
        # @param AlarmRuleDetail: 告警规则配置信息 成功告警无需配置；失败告警可以配置首次失败告警或者所有重试失败告警；超时配置需要配置超时类型及超时阀值；项目波动告警需要配置波动率及防抖周期配置
        # @type AlarmRuleDetail: :class:`Tencentcloud::Wedata.v20250806.models.AlarmRuleDetail`
        # @param AlarmLevel: 告警级别 1.普通、2.重要、3.紧急
        # @type AlarmLevel: Integer
        # @param OwnerUin: 告警规则创建人uid
        # @type OwnerUin: String
        # @param BundleId: bundle 客户端绑定的告警规则:  为空是正常的告警规则，不为空则是对应bundle客户端绑定的规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: bundleId不为空 则表示绑定的bundle客户端名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param AlarmGroups: 告警接收人配置列表
        # @type AlarmGroups: Array

        attr_accessor :AlarmRuleId, :AlarmRuleName, :Description, :MonitorObjectType, :MonitorObjectIds, :AlarmTypes, :Status, :AlarmRuleDetail, :AlarmLevel, :OwnerUin, :BundleId, :BundleInfo, :AlarmGroups

        def initialize(alarmruleid=nil, alarmrulename=nil, description=nil, monitorobjecttype=nil, monitorobjectids=nil, alarmtypes=nil, status=nil, alarmruledetail=nil, alarmlevel=nil, owneruin=nil, bundleid=nil, bundleinfo=nil, alarmgroups=nil)
          @AlarmRuleId = alarmruleid
          @AlarmRuleName = alarmrulename
          @Description = description
          @MonitorObjectType = monitorobjecttype
          @MonitorObjectIds = monitorobjectids
          @AlarmTypes = alarmtypes
          @Status = status
          @AlarmRuleDetail = alarmruledetail
          @AlarmLevel = alarmlevel
          @OwnerUin = owneruin
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @AlarmGroups = alarmgroups
        end

        def deserialize(params)
          @AlarmRuleId = params['AlarmRuleId']
          @AlarmRuleName = params['AlarmRuleName']
          @Description = params['Description']
          @MonitorObjectType = params['MonitorObjectType']
          @MonitorObjectIds = params['MonitorObjectIds']
          @AlarmTypes = params['AlarmTypes']
          @Status = params['Status']
          unless params['AlarmRuleDetail'].nil?
            @AlarmRuleDetail = AlarmRuleDetail.new
            @AlarmRuleDetail.deserialize(params['AlarmRuleDetail'])
          end
          @AlarmLevel = params['AlarmLevel']
          @OwnerUin = params['OwnerUin']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['AlarmGroups'].nil?
            @AlarmGroups = []
            params['AlarmGroups'].each do |i|
              alarmgroup_tmp = AlarmGroup.new
              alarmgroup_tmp.deserialize(i)
              @AlarmGroups << alarmgroup_tmp
            end
          end
        end
      end

      # 告警规则详细配置
      class AlarmRuleDetail < TencentCloud::Common::AbstractModel
        # @param Trigger: 失败触发时机

        # 1 – 首次失败触发
        # 2 --所有重试完成触发 (默认)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Integer
        # @param DataBackfillOrRerunTrigger: 补录重跑触发时机

        # 1 –  首次失败触发
        # 2 – 所有重试完成触发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBackfillOrRerunTrigger: Integer
        # @param TimeOutExtInfo: 周期实例超时配置明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeOutExtInfo: Array
        # @param DataBackfillOrRerunTimeOutExtInfo: 重跑补录实例超时配置明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBackfillOrRerunTimeOutExtInfo: Array
        # @param ProjectInstanceStatisticsAlarmInfoList: 项目波动告警配置明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectInstanceStatisticsAlarmInfoList: Array
        # @param ReconciliationExtInfo: 离线集成对账告警配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReconciliationExtInfo: Array
        # @param MonitorWhiteTasks: 监控对象的白名单配置
        # @type MonitorWhiteTasks: Array
        # @param WorkflowCompletionTimeCycleExtInfo: 3.0 Workflow 完成时间（周期）告警策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowCompletionTimeCycleExtInfo: Array
        # @param WorkflowExecutionTrigger: 工作流执行触发告警条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowExecutionTrigger: Integer
        # @param WorkflowExecutionFailureTrigger: 工作流执行失败告警条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowExecutionFailureTrigger: Integer
        # @param WorkflowExecutionSuccessTrigger: 工作流执行成功告警条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowExecutionSuccessTrigger: Integer

        attr_accessor :Trigger, :DataBackfillOrRerunTrigger, :TimeOutExtInfo, :DataBackfillOrRerunTimeOutExtInfo, :ProjectInstanceStatisticsAlarmInfoList, :ReconciliationExtInfo, :MonitorWhiteTasks, :WorkflowCompletionTimeCycleExtInfo, :WorkflowExecutionTrigger, :WorkflowExecutionFailureTrigger, :WorkflowExecutionSuccessTrigger

        def initialize(trigger=nil, databackfillorreruntrigger=nil, timeoutextinfo=nil, databackfillorreruntimeoutextinfo=nil, projectinstancestatisticsalarminfolist=nil, reconciliationextinfo=nil, monitorwhitetasks=nil, workflowcompletiontimecycleextinfo=nil, workflowexecutiontrigger=nil, workflowexecutionfailuretrigger=nil, workflowexecutionsuccesstrigger=nil)
          @Trigger = trigger
          @DataBackfillOrRerunTrigger = databackfillorreruntrigger
          @TimeOutExtInfo = timeoutextinfo
          @DataBackfillOrRerunTimeOutExtInfo = databackfillorreruntimeoutextinfo
          @ProjectInstanceStatisticsAlarmInfoList = projectinstancestatisticsalarminfolist
          @ReconciliationExtInfo = reconciliationextinfo
          @MonitorWhiteTasks = monitorwhitetasks
          @WorkflowCompletionTimeCycleExtInfo = workflowcompletiontimecycleextinfo
          @WorkflowExecutionTrigger = workflowexecutiontrigger
          @WorkflowExecutionFailureTrigger = workflowexecutionfailuretrigger
          @WorkflowExecutionSuccessTrigger = workflowexecutionsuccesstrigger
        end

        def deserialize(params)
          @Trigger = params['Trigger']
          @DataBackfillOrRerunTrigger = params['DataBackfillOrRerunTrigger']
          unless params['TimeOutExtInfo'].nil?
            @TimeOutExtInfo = []
            params['TimeOutExtInfo'].each do |i|
              timeoutstrategyinfo_tmp = TimeOutStrategyInfo.new
              timeoutstrategyinfo_tmp.deserialize(i)
              @TimeOutExtInfo << timeoutstrategyinfo_tmp
            end
          end
          unless params['DataBackfillOrRerunTimeOutExtInfo'].nil?
            @DataBackfillOrRerunTimeOutExtInfo = []
            params['DataBackfillOrRerunTimeOutExtInfo'].each do |i|
              timeoutstrategyinfo_tmp = TimeOutStrategyInfo.new
              timeoutstrategyinfo_tmp.deserialize(i)
              @DataBackfillOrRerunTimeOutExtInfo << timeoutstrategyinfo_tmp
            end
          end
          unless params['ProjectInstanceStatisticsAlarmInfoList'].nil?
            @ProjectInstanceStatisticsAlarmInfoList = []
            params['ProjectInstanceStatisticsAlarmInfoList'].each do |i|
              projectinstancestatisticsalarminfo_tmp = ProjectInstanceStatisticsAlarmInfo.new
              projectinstancestatisticsalarminfo_tmp.deserialize(i)
              @ProjectInstanceStatisticsAlarmInfoList << projectinstancestatisticsalarminfo_tmp
            end
          end
          unless params['ReconciliationExtInfo'].nil?
            @ReconciliationExtInfo = []
            params['ReconciliationExtInfo'].each do |i|
              reconciliationstrategyinfo_tmp = ReconciliationStrategyInfo.new
              reconciliationstrategyinfo_tmp.deserialize(i)
              @ReconciliationExtInfo << reconciliationstrategyinfo_tmp
            end
          end
          unless params['MonitorWhiteTasks'].nil?
            @MonitorWhiteTasks = []
            params['MonitorWhiteTasks'].each do |i|
              monitorwhitetask_tmp = MonitorWhiteTask.new
              monitorwhitetask_tmp.deserialize(i)
              @MonitorWhiteTasks << monitorwhitetask_tmp
            end
          end
          unless params['WorkflowCompletionTimeCycleExtInfo'].nil?
            @WorkflowCompletionTimeCycleExtInfo = []
            params['WorkflowCompletionTimeCycleExtInfo'].each do |i|
              timeoutstrategyinfo_tmp = TimeOutStrategyInfo.new
              timeoutstrategyinfo_tmp.deserialize(i)
              @WorkflowCompletionTimeCycleExtInfo << timeoutstrategyinfo_tmp
            end
          end
          @WorkflowExecutionTrigger = params['WorkflowExecutionTrigger']
          @WorkflowExecutionFailureTrigger = params['WorkflowExecutionFailureTrigger']
          @WorkflowExecutionSuccessTrigger = params['WorkflowExecutionSuccessTrigger']
        end
      end

      # 告警渠道 企业微信群/钉钉群/飞书群 等webhook地址配置
      class AlarmWayWebHook < TencentCloud::Common::AbstractModel
        # @param AlarmWay: 告警渠道值
        # 7.企业微信群,8 飞书群 9 钉钉群 10 Slack群 11 Teams群
        # @type AlarmWay: String
        # @param WebHooks: 告警群的webhook地址列表
        # @type WebHooks: Array

        attr_accessor :AlarmWay, :WebHooks

        def initialize(alarmway=nil, webhooks=nil)
          @AlarmWay = alarmway
          @WebHooks = webhooks
        end

        def deserialize(params)
          @AlarmWay = params['AlarmWay']
          @WebHooks = params['WebHooks']
        end
      end

      # AssociateResourceGroupToProject请求参数结构体
      class AssociateResourceGroupToProjectRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id
        # @type ResourceGroupId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :ResourceGroupId, :ProjectId

        def initialize(resourcegroupid=nil, projectid=nil)
          @ResourceGroupId = resourcegroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # AssociateResourceGroupToProject返回参数结构体
      class AssociateResourceGroupToProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 权限用户项目信息
      class AuthInfo < TencentCloud::Common::AbstractModel
        # @param AuthProjectIds: 授权给的目标项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthProjectIds: Array
        # @param AuthUsers: 授权给的项目下用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthUsers: Array

        attr_accessor :AuthProjectIds, :AuthUsers

        def initialize(authprojectids=nil, authusers=nil)
          @AuthProjectIds = authprojectids
          @AuthUsers = authusers
        end

        def deserialize(params)
          @AuthProjectIds = params['AuthProjectIds']
          @AuthUsers = params['AuthUsers']
        end
      end

      # AuthorizeDataSource请求参数结构体
      class AuthorizeDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param AuthProjectId: 授权给的目标项目id
        # @type AuthProjectId: String
        # @param AuthUsers: 授权项目下用户列表，格式为：项目id_用户id
        # 与AuthProjectId参数只能选填一个
        # 当授权给多个对象时，项目id必须一致
        # @type AuthUsers: Array

        attr_accessor :DataSourceId, :AuthProjectId, :AuthUsers

        def initialize(datasourceid=nil, authprojectid=nil, authusers=nil)
          @DataSourceId = datasourceid
          @AuthProjectId = authprojectid
          @AuthUsers = authusers
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @AuthProjectId = params['AuthProjectId']
          @AuthUsers = params['AuthUsers']
        end
      end

      # AuthorizeDataSource返回参数结构体
      class AuthorizeDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 单次补录实例详情
      class BackfillInstance < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param CurRunDate: 实例数据时间
        # @type CurRunDate: String
        # @param State: 执行状态
        # @type State: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CostTime: 执行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: String

        attr_accessor :TaskName, :TaskId, :CurRunDate, :State, :StartTime, :EndTime, :CostTime

        def initialize(taskname=nil, taskid=nil, currundate=nil, state=nil, starttime=nil, endtime=nil, costtime=nil)
          @TaskName = taskname
          @TaskId = taskid
          @CurRunDate = currundate
          @State = state
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @State = params['State']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
        end
      end

      # 补录计划的所有实例
      class BackfillInstanceCollection < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Items: 补录实例列表
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalPageNumber, :TotalCount, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalpagenumber=nil, totalcount=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPageNumber = totalpagenumber
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPageNumber = params['TotalPageNumber']
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              backfillinstance_tmp = BackfillInstance.new
              backfillinstance_tmp.deserialize(i)
              @Items << backfillinstance_tmp
            end
          end
        end
      end

      # 批量操作的结果返回
      class BatchOperationOpsDto < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 批量操作成功数
        # @type SuccessCount: Integer
        # @param FailedCount: 批量操作失败数
        # @type FailedCount: Integer
        # @param TotalCount: 批量操作的总数
        # @type TotalCount: Integer
        # @param AsyncActionId: 异步操作记录的唯一id
        # @type AsyncActionId: String

        attr_accessor :SuccessCount, :FailedCount, :TotalCount, :AsyncActionId

        def initialize(successcount=nil, failedcount=nil, totalcount=nil, asyncactionid=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
          @AsyncActionId = asyncactionid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
          @AsyncActionId = params['AsyncActionId']
        end
      end

      # 关联绑定的project
      class BindProject < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectDisplayName: 项目展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectDisplayName: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDisplayName

        def initialize(projectid=nil, projectname=nil, projectdisplayname=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDisplayName = projectdisplayname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDisplayName = params['ProjectDisplayName']
        end
      end

      # 工作流执行的业务枚举信息
      class BizStateEnumInfoBrief < TencentCloud::Common::AbstractModel
        # @param LabelKey: 标签key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKey: String
        # @param LabelValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param Count: 标签总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :LabelKey, :LabelValue, :Count

        def initialize(labelkey=nil, labelvalue=nil, count=nil)
          @LabelKey = labelkey
          @LabelValue = labelvalue
          @Count = count
        end

        def deserialize(params)
          @LabelKey = params['LabelKey']
          @LabelValue = params['LabelValue']
          @Count = params['Count']
        end
      end

      # 展示任务id和任务名称信息
      class BriefTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param OwnerUinList: 任务责任人id，一个任务可能有多个责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUinList: Array

        attr_accessor :TaskId, :TaskName, :CreateTime, :OwnerUinList

        def initialize(taskid=nil, taskname=nil, createtime=nil, owneruinlist=nil)
          @TaskId = taskid
          @TaskName = taskname
          @CreateTime = createtime
          @OwnerUinList = owneruinlist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @CreateTime = params['CreateTime']
          @OwnerUinList = params['OwnerUinList']
        end
      end

      # BusinessMetadata
      class BusinessMetadata < TencentCloud::Common::AbstractModel
        # @param TagNames: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagNames: Array

        attr_accessor :TagNames

        def initialize(tagnames=nil)
          @TagNames = tagnames
        end

        def deserialize(params)
          @TagNames = params['TagNames']
        end
      end

      # 目录信息
      class CatalogInfo < TencentCloud::Common::AbstractModel
        # @param Name: 目录名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # 任务下游依赖详情分页
      class ChildDependencyConfigPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 分页数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              opstaskdepend_tmp = OpsTaskDepend.new
              opstaskdepend_tmp.deserialize(i)
              @Items << opstaskdepend_tmp
            end
          end
        end
      end

      # 数据探索脚本业务处理实体
      class CodeFile < TencentCloud::Common::AbstractModel
        # @param CodeFileId: 脚本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileId: String
        # @param CodeFileName: 脚本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileName: String
        # @param OwnerUin: 脚本所有者 uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CodeFileConfig: 脚本配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileConfig: :class:`Tencentcloud::Wedata.v20250806.models.CodeFileConfig`
        # @param CodeFileContent: 脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileContent: String
        # @param UpdateUserUin: 最近一次操作人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param UpdateTime: 更新时间 yyyy-MM-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CreateTime: 创建时间 yyyy-MM-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessScope: String
        # @param Path: 节点全路径，/aaa/bbb/ccc.ipynb，由各个节点的名称组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param ParentFolderPath: 父文件夹路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentFolderPath: String

        attr_accessor :CodeFileId, :CodeFileName, :OwnerUin, :CodeFileConfig, :CodeFileContent, :UpdateUserUin, :ProjectId, :UpdateTime, :CreateTime, :AccessScope, :Path, :ParentFolderPath

        def initialize(codefileid=nil, codefilename=nil, owneruin=nil, codefileconfig=nil, codefilecontent=nil, updateuseruin=nil, projectid=nil, updatetime=nil, createtime=nil, accessscope=nil, path=nil, parentfolderpath=nil)
          @CodeFileId = codefileid
          @CodeFileName = codefilename
          @OwnerUin = owneruin
          @CodeFileConfig = codefileconfig
          @CodeFileContent = codefilecontent
          @UpdateUserUin = updateuseruin
          @ProjectId = projectid
          @UpdateTime = updatetime
          @CreateTime = createtime
          @AccessScope = accessscope
          @Path = path
          @ParentFolderPath = parentfolderpath
        end

        def deserialize(params)
          @CodeFileId = params['CodeFileId']
          @CodeFileName = params['CodeFileName']
          @OwnerUin = params['OwnerUin']
          unless params['CodeFileConfig'].nil?
            @CodeFileConfig = CodeFileConfig.new
            @CodeFileConfig.deserialize(params['CodeFileConfig'])
          end
          @CodeFileContent = params['CodeFileContent']
          @UpdateUserUin = params['UpdateUserUin']
          @ProjectId = params['ProjectId']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @AccessScope = params['AccessScope']
          @Path = params['Path']
          @ParentFolderPath = params['ParentFolderPath']
        end
      end

      # 数据探索脚本配置
      class CodeFileConfig < TencentCloud::Common::AbstractModel
        # @param Params: 高级运行参数,变量替换，map-json String,String
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param NotebookSessionInfo: notebook kernel session信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookSessionInfo: :class:`Tencentcloud::Wedata.v20250806.models.NotebookSessionInfo`

        attr_accessor :Params, :NotebookSessionInfo

        def initialize(params=nil, notebooksessioninfo=nil)
          @Params = params
          @NotebookSessionInfo = notebooksessioninfo
        end

        def deserialize(params)
          @Params = params['Params']
          unless params['NotebookSessionInfo'].nil?
            @NotebookSessionInfo = NotebookSessionInfo.new
            @NotebookSessionInfo.deserialize(params['NotebookSessionInfo'])
          end
        end
      end

      # 数据探索脚本文件树节点
      class CodeFolderNode < TencentCloud::Common::AbstractModel
        # @param Id: 唯一标识
        # @type Id: String
        # @param Title: 名称
        # @type Title: String
        # @param Type: 类型 folder，script
        # @type Type: String
        # @param IsLeaf: 是否叶子节点
        # @type IsLeaf: Boolean
        # @param Params: 业务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param AccessScope: 权限范围: SHARED, PRIVATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessScope: String
        # @param Path: 节点路径
        # @type Path: String
        # @param OwnerUin: 目录/文件责任人uin
        # @type OwnerUin: String
        # @param CreateUserUin: 创建人
        # @type CreateUserUin: String
        # @param NodePermission: 当前用户对节点拥有的权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePermission: String
        # @param Children: 子节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param ParentFolderPath: 父文件夹路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentFolderPath: String

        attr_accessor :Id, :Title, :Type, :IsLeaf, :Params, :AccessScope, :Path, :OwnerUin, :CreateUserUin, :NodePermission, :Children, :ParentFolderPath

        def initialize(id=nil, title=nil, type=nil, isleaf=nil, params=nil, accessscope=nil, path=nil, owneruin=nil, createuseruin=nil, nodepermission=nil, children=nil, parentfolderpath=nil)
          @Id = id
          @Title = title
          @Type = type
          @IsLeaf = isleaf
          @Params = params
          @AccessScope = accessscope
          @Path = path
          @OwnerUin = owneruin
          @CreateUserUin = createuseruin
          @NodePermission = nodepermission
          @Children = children
          @ParentFolderPath = parentfolderpath
        end

        def deserialize(params)
          @Id = params['Id']
          @Title = params['Title']
          @Type = params['Type']
          @IsLeaf = params['IsLeaf']
          @Params = params['Params']
          @AccessScope = params['AccessScope']
          @Path = params['Path']
          @OwnerUin = params['OwnerUin']
          @CreateUserUin = params['CreateUserUin']
          @NodePermission = params['NodePermission']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              codefoldernode_tmp = CodeFolderNode.new
              codefoldernode_tmp.deserialize(i)
              @Children << codefoldernode_tmp
            end
          end
          @ParentFolderPath = params['ParentFolderPath']
        end
      end

      # 数据探索文件授权结果
      class CodePermissionsResultItem < TencentCloud::Common::AbstractModel
        # @param Item: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: String
        # @param Result: 该资源权限操作是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param Reason: 若是创建失败, 提供失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :Item, :Result, :Reason

        def initialize(item=nil, result=nil, reason=nil)
          @Item = item
          @Result = result
          @Reason = reason
        end

        def deserialize(params)
          @Item = params['Item']
          @Result = params['Result']
          @Reason = params['Reason']
        end
      end

      # CodeStudio文件对象操作结果
      class CodeStudioFileActionResult < TencentCloud::Common::AbstractModel
        # @param Status: 成功true，失败false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param CodeFileId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileId: String

        attr_accessor :Status, :CodeFileId

        def initialize(status=nil, codefileid=nil)
          @Status = status
          @CodeFileId = codefileid
        end

        def deserialize(params)
          @Status = params['Status']
          @CodeFileId = params['CodeFileId']
        end
      end

      # CodeStudio文件夹对象操作结果
      class CodeStudioFolderActionResult < TencentCloud::Common::AbstractModel
        # @param Status: 成功true，失败false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String

        attr_accessor :Status, :FolderId

        def initialize(status=nil, folderid=nil)
          @Status = status
          @FolderId = folderid
        end

        def deserialize(params)
          @Status = params['Status']
          @FolderId = params['FolderId']
        end
      end

      # CodeStudio文件夹对象操作结果
      class CodeStudioFolderResult < TencentCloud::Common::AbstractModel
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String

        attr_accessor :FolderId

        def initialize(folderid=nil)
          @FolderId = folderid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
        end
      end

      # 用户对CodeStudio文件/文件夹的递归最大权限类型
      class CodeStudioMaxPermission < TencentCloud::Common::AbstractModel
        # @param PermissionType: 授权权限类型(CAN_VIEW/CAN_RUN/CAN_EDIT/CAN_MANAGE)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionType: String

        attr_accessor :PermissionType

        def initialize(permissiontype=nil)
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @PermissionType = params['PermissionType']
        end
      end

      # ColumnInfo
      class ColumnInfo < TencentCloud::Common::AbstractModel
        # @param Type: 字段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 字段名称
        # @type Name: String
        # @param Length: 字段长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Length: Integer
        # @param Description: 字段描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Position: 字段的顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param IsPartition: 是否为分区字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPartition: Boolean

        attr_accessor :Type, :Name, :Length, :Description, :Position, :IsPartition

        def initialize(type=nil, name=nil, length=nil, description=nil, position=nil, ispartition=nil)
          @Type = type
          @Name = name
          @Length = length
          @Description = description
          @Position = position
          @IsPartition = ispartition
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Length = params['Length']
          @Description = params['Description']
          @Position = params['Position']
          @IsPartition = params['IsPartition']
        end
      end

      # 单条规则操作结果
      class CommonQualityOperateResult < TencentCloud::Common::AbstractModel
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Msg: 文案提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Success: 操作是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Success: Boolean

        attr_accessor :Id, :Name, :Msg, :Success

        def initialize(id=nil, name=nil, msg=nil, success=nil)
          @Id = id
          @Name = name
          @Msg = msg
          @Success = success
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Msg = params['Msg']
          @Success = params['Success']
        end
      end

      # 质量检查对比结果
      class CompareQualityResult < TencentCloud::Common::AbstractModel
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
        # @param ComputeExpression: 比较关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeExpression: String

        attr_accessor :Items, :TotalRows, :PassRows, :TriggerRows, :ComputeExpression

        def initialize(items=nil, totalrows=nil, passrows=nil, triggerrows=nil, computeexpression=nil)
          @Items = items
          @TotalRows = totalrows
          @PassRows = passrows
          @TriggerRows = triggerrows
          @ComputeExpression = computeexpression
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              comparequalityresultitem_tmp = CompareQualityResultItem.new
              comparequalityresultitem_tmp.deserialize(i)
              @Items << comparequalityresultitem_tmp
            end
          end
          @TotalRows = params['TotalRows']
          @PassRows = params['PassRows']
          @TriggerRows = params['TriggerRows']
          @ComputeExpression = params['ComputeExpression']
        end
      end

      # 对比结果项
      class CompareQualityResultItem < TencentCloud::Common::AbstractModel
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
              qualitythresholdvalue_tmp = QualityThresholdValue.new
              qualitythresholdvalue_tmp.deserialize(i)
              @Values << qualitythresholdvalue_tmp
            end
          end
          @Operator = params['Operator']
          @CompareType = params['CompareType']
          @ValueComputeType = params['ValueComputeType']
        end
      end

      # 创建告警规则响应结果
      class CreateAlarmRuleData < TencentCloud::Common::AbstractModel
        # @param AlarmRuleId: 告警规则唯一id
        # @type AlarmRuleId: String

        attr_accessor :AlarmRuleId

        def initialize(alarmruleid=nil)
          @AlarmRuleId = alarmruleid
        end

        def deserialize(params)
          @AlarmRuleId = params['AlarmRuleId']
        end
      end

      # CreateCodeFile请求参数结构体
      class CreateCodeFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CodeFileName: 代码文件名称
        # @type CodeFileName: String
        # @param ParentFolderPath: 父文件夹path，例如/aaa/bbb/ccc，路径头需带斜杠，根目录传/
        # @type ParentFolderPath: String
        # @param CodeFileConfig: 代码文件配置
        # @type CodeFileConfig: :class:`Tencentcloud::Wedata.v20250806.models.CodeFileConfig`
        # @param CodeFileContent: 代码文件内容
        # @type CodeFileContent: String

        attr_accessor :ProjectId, :CodeFileName, :ParentFolderPath, :CodeFileConfig, :CodeFileContent

        def initialize(projectid=nil, codefilename=nil, parentfolderpath=nil, codefileconfig=nil, codefilecontent=nil)
          @ProjectId = projectid
          @CodeFileName = codefilename
          @ParentFolderPath = parentfolderpath
          @CodeFileConfig = codefileconfig
          @CodeFileContent = codefilecontent
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CodeFileName = params['CodeFileName']
          @ParentFolderPath = params['ParentFolderPath']
          unless params['CodeFileConfig'].nil?
            @CodeFileConfig = CodeFileConfig.new
            @CodeFileConfig.deserialize(params['CodeFileConfig'])
          end
          @CodeFileContent = params['CodeFileContent']
        end
      end

      # CreateCodeFile返回参数结构体
      class CreateCodeFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeFile`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeFile.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCodeFolder请求参数结构体
      class CreateCodeFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ParentFolderPath: 父文件夹path，例如/aaa/bbb/ccc，路径头需带斜杠，根目录传/
        # @type ParentFolderPath: String

        attr_accessor :ProjectId, :FolderName, :ParentFolderPath

        def initialize(projectid=nil, foldername=nil, parentfolderpath=nil)
          @ProjectId = projectid
          @FolderName = foldername
          @ParentFolderPath = parentfolderpath
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @ParentFolderPath = params['ParentFolderPath']
        end
      end

      # CreateCodeFolder返回参数结构体
      class CreateCodeFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功true，失败false
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeStudioFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeStudioFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCodePermissions请求参数结构体
      class CreateCodePermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AuthorizePermissionObjects: 权限操作对象
        # @type AuthorizePermissionObjects: Array

        attr_accessor :ProjectId, :AuthorizePermissionObjects

        def initialize(projectid=nil, authorizepermissionobjects=nil)
          @ProjectId = projectid
          @AuthorizePermissionObjects = authorizepermissionobjects
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['AuthorizePermissionObjects'].nil?
            @AuthorizePermissionObjects = []
            params['AuthorizePermissionObjects'].each do |i|
              exploreauthorizationobject_tmp = ExploreAuthorizationObject.new
              exploreauthorizationobject_tmp.deserialize(i)
              @AuthorizePermissionObjects << exploreauthorizationobject_tmp
            end
          end
        end
      end

      # CreateCodePermissions返回参数结构体
      class CreateCodePermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 授权结果列表
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
              codepermissionsresultitem_tmp = CodePermissionsResultItem.new
              codepermissionsresultitem_tmp.deserialize(i)
              @Data << codepermissionsresultitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDataBackfillPlan请求参数结构体
      class CreateDataBackfillPlanRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param TaskIds: 补录任务集合
        # @type TaskIds: Array
        # @param DataBackfillRangeList: 补录任务的数据时间配置
        # @type DataBackfillRangeList: Array
        # @param TimeZone: 时区，默认UTC+8
        # @type TimeZone: String
        # @param DataBackfillPlanName: 数据补录计划名称，不填则由系统随机生成一串字符
        # @type DataBackfillPlanName: String
        # @param CheckParentType: 检查父任务类型，取值范围：- NONE-全部不检查- ALL-检查全部上游父任务- MAKE_SCOPE-只在（当前补录计划）选中任务中检查,默认NONE不检查
        # @type CheckParentType: String
        # @param SkipEventListening: 补录是否忽略事件依赖,默认true
        # @type SkipEventListening: Boolean
        # @param RedefineSelfWorkflowDependency: 自定义的工作流自依赖，yes或者no；如果不配置，则使用工作流原有自依赖
        # @type RedefineSelfWorkflowDependency: String
        # @param RedefineParallelNum: 自定义实例运行并发度, 如果不配置，则使用任务原有自依赖
        # @type RedefineParallelNum: Integer
        # @param SchedulerResourceGroupId: 调度资源组id，为空则表示使用任务原有调度执行资源组
        # @type SchedulerResourceGroupId: String
        # @param IntegrationResourceGroupId: 集成任务资源组id，为空则表示使用任务原有调度执行资源组
        # @type IntegrationResourceGroupId: String
        # @param RedefineParamList: 自定义参数，可以重新指定任务的参数，方便补录实例执行新的逻辑
        # @type RedefineParamList: Array
        # @param DataTimeOrder: 补录是实例数据时间顺序，生效必须满足2个条件:
        # 1. 必须同周期任务
        # 2. 优先按依赖关系执行，无依赖关系影响的情况下按配置执行顺序执行

        # 可选值
        # - NORMAL: 不设置
        # - ORDER: 顺序
        # - REVERSE: 逆序
        # 不设置默认为NORMAL
        # @type DataTimeOrder: String
        # @param RedefineCycleType: 补录实例重新生成周期，如果设置会重新指定补录任务实例的生成周期，目前只会将天实例转换成每月1号生成的实例
        # * MONTH_CYCLE: 月
        # @type RedefineCycleType: String

        attr_accessor :ProjectId, :TaskIds, :DataBackfillRangeList, :TimeZone, :DataBackfillPlanName, :CheckParentType, :SkipEventListening, :RedefineSelfWorkflowDependency, :RedefineParallelNum, :SchedulerResourceGroupId, :IntegrationResourceGroupId, :RedefineParamList, :DataTimeOrder, :RedefineCycleType

        def initialize(projectid=nil, taskids=nil, databackfillrangelist=nil, timezone=nil, databackfillplanname=nil, checkparenttype=nil, skipeventlistening=nil, redefineselfworkflowdependency=nil, redefineparallelnum=nil, schedulerresourcegroupid=nil, integrationresourcegroupid=nil, redefineparamlist=nil, datatimeorder=nil, redefinecycletype=nil)
          @ProjectId = projectid
          @TaskIds = taskids
          @DataBackfillRangeList = databackfillrangelist
          @TimeZone = timezone
          @DataBackfillPlanName = databackfillplanname
          @CheckParentType = checkparenttype
          @SkipEventListening = skipeventlistening
          @RedefineSelfWorkflowDependency = redefineselfworkflowdependency
          @RedefineParallelNum = redefineparallelnum
          @SchedulerResourceGroupId = schedulerresourcegroupid
          @IntegrationResourceGroupId = integrationresourcegroupid
          @RedefineParamList = redefineparamlist
          @DataTimeOrder = datatimeorder
          @RedefineCycleType = redefinecycletype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskIds = params['TaskIds']
          unless params['DataBackfillRangeList'].nil?
            @DataBackfillRangeList = []
            params['DataBackfillRangeList'].each do |i|
              databackfillrange_tmp = DataBackfillRange.new
              databackfillrange_tmp.deserialize(i)
              @DataBackfillRangeList << databackfillrange_tmp
            end
          end
          @TimeZone = params['TimeZone']
          @DataBackfillPlanName = params['DataBackfillPlanName']
          @CheckParentType = params['CheckParentType']
          @SkipEventListening = params['SkipEventListening']
          @RedefineSelfWorkflowDependency = params['RedefineSelfWorkflowDependency']
          @RedefineParallelNum = params['RedefineParallelNum']
          @SchedulerResourceGroupId = params['SchedulerResourceGroupId']
          @IntegrationResourceGroupId = params['IntegrationResourceGroupId']
          unless params['RedefineParamList'].nil?
            @RedefineParamList = []
            params['RedefineParamList'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @RedefineParamList << kvpair_tmp
            end
          end
          @DataTimeOrder = params['DataTimeOrder']
          @RedefineCycleType = params['RedefineCycleType']
        end
      end

      # CreateDataBackfillPlan返回参数结构体
      class CreateDataBackfillPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据补录计划创建结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateDataReplenishmentPlan`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateDataReplenishmentPlan.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建数据补录计划结果
      class CreateDataReplenishmentPlan < TencentCloud::Common::AbstractModel
        # @param DataBackfillPlanId: 补录计划Id
        # @type DataBackfillPlanId: String

        attr_accessor :DataBackfillPlanId

        def initialize(databackfillplanid=nil)
          @DataBackfillPlanId = databackfillplanid
        end

        def deserialize(params)
          @DataBackfillPlanId = params['DataBackfillPlanId']
        end
      end

      # CreateDataSource请求参数结构体
      class CreateDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 数据源项目ID
        # @type ProjectId: String
        # @param Name: 数据源名称
        # @type Name: String
        # @param Type: 数据源类型:枚举值

        # - MYSQL
        # - TENCENT_MYSQL
        # - POSTGRE
        # - ORACLE
        # - SQLSERVER
        # - FTP
        # - HIVE
        # - HUDI
        # - HDFS
        # - ICEBERG
        # - KAFKA
        # - DTS_KAFKA
        # - HBASE
        # - SPARK
        # - TBASE
        # - DB2
        # - DM
        # - GAUSSDB
        # - GBASE
        # - IMPALA
        # - ES
        # - TENCENT_ES
        # - GREENPLUM
        # - SAP_HANA
        # - SFTP
        # - OCEANBASE
        # - CLICKHOUSE
        # - KUDU
        # - VERTICA
        # - REDIS
        # - COS
        # - DLC
        # - DORIS
        # - CKAFKA
        # - S3_DATAINSIGHT
        # - TDSQL
        # - TDSQL_MYSQL
        # - MONGODB
        # - TENCENT_MONGODB
        # - REST_API
        # - TiDB
        # - StarRocks
        # - Trino
        # - Kyuubi
        # - TCHOUSE_X
        # - TCHOUSE_P
        # - TCHOUSE_C
        # - TCHOUSE_D
        # - INFLUXDB
        # - BIG_QUERY
        # - SSH
        # - BLOB
        # - TDSQL_POSTGRE
        # - GDB
        # - TDENGINE
        # - TDSQLC
        # - FileSystem
        # @type Type: String
        # @param ProdConProperties: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同

        # > deployType:
        # CONNSTR_PUBLICDB(公网实例)
        # CONNSTR_CVMDB(自建实例)
        # INSTANCE(云实例)

        # ```
        # mysql: 自建实例
        # {
        #     "deployType": "CONNSTR_CVMDB",
        #     "url": "jdbc:mysql://1.1.1.1:1111/database",
        #     "username": "root",
        #     "password": "root",
        #     "region": "ap-shanghai",
        #     "vpcId": "vpc-kprq42yo",
        #     "type": "MYSQL"
        # }
        # mysql: 云实例
        # {
        #     "instanceid": "cdb-12uxdo5e",
        #     "db": "db",
        #     "region": "ap-shanghai",
        #     "username": "msyql",
        #     "password": "mysql",
        #     "deployType": "INSTANCE",
        #     "type": "TENCENT_MYSQL"
        # }
        # sql_server:
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "url": "jdbc:sqlserver://1.1.1.1:223;DatabaseName=database",
        #     "username": "user_1",
        #     "password": "pass_2",
        #     "type": "SQLSERVER"
        # }
        # redis:
        #     redisType:
        #     -NO_ACCOUT(免账号)
        #     -SELF_ACCOUNT(自定义账号)
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "username":""
        #     "password": "pass",
        #     "ip": "1.1.1.1",
        #     "port": "6379",
        #     "redisType": "NO_ACCOUT",
        #     "type": "REDIS"
        # }
        # oracle:
        # {
        #     "deployType": "CONNSTR_CVMDB",
        #     "url": "jdbc:oracle:thin:@1.1.1.1:1521:prod",
        #     "username": "oracle",
        #     "password": "pass",
        #     "region": "ap-shanghai",
        #     "vpcId": "vpc-kprq42yo",
        #     "type": "ORACLE"
        # }
        # mongodb:
        #     advanceParams(自定义参数，会拼接至url后)
        # {
        #     "advanceParams": [
        #         {
        #             "key": "authSource",
        #             "value": "auth"
        #         }
        #     ],
        #     "db": "admin",
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "username": "user",
        #     "password": "pass",
        #     "type": "MONGODB",
        #     "host": "1.1.1.1:9200"
        # }
        # postgresql:
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "url": "jdbc:postgresql://1.1.1.1:1921/database",
        #     "username": "user",
        #     "password": "pass",
        #     "type": "POSTGRE"
        # }
        # kafka:
        #     authType:
        #         - sasl
        #         - jaas
        #         - sasl_plaintext
        #         - sasl_ssl
        #         - GSSAPI
        #     ssl:
        #         -PLAIN
        #         -GSSAPI
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "host": "1.1.1.1:9092",
        #     "ssl": "GSSAPI",
        #     "authType": "sasl",
        #     "type": "KAFKA",
        #     "principal": "aaaa",
        #     "serviceName": "kafka"
        # }

        # cos:
        # {
        #     "region": "ap-shanghai",
        #     "deployType": "INSTANCE",
        #     "secretId": "aaaaa",
        #     "secretKey": "sssssss",
        #     "bucket": "aaa",
        #     "type": "COS"
        # }

        # ```
        # @type ProdConProperties: String
        # @param DevConProperties: 开发环境数据源配置信息，若项目为标准模式，则此字段必填
        # @type DevConProperties: String
        # @param ProdFileUpload: 生产环境数据源文件上传
        # @type ProdFileUpload: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceFileUpload`
        # @param DevFileUpload: 开发环境数据源文件上传
        # @type DevFileUpload: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceFileUpload`
        # @param DisplayName: 数据源展示名，为了可视化查看
        # @type DisplayName: String
        # @param Description: 数据源描述信息
        # @type Description: String

        attr_accessor :ProjectId, :Name, :Type, :ProdConProperties, :DevConProperties, :ProdFileUpload, :DevFileUpload, :DisplayName, :Description

        def initialize(projectid=nil, name=nil, type=nil, prodconproperties=nil, devconproperties=nil, prodfileupload=nil, devfileupload=nil, displayname=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @Type = type
          @ProdConProperties = prodconproperties
          @DevConProperties = devconproperties
          @ProdFileUpload = prodfileupload
          @DevFileUpload = devfileupload
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Type = params['Type']
          @ProdConProperties = params['ProdConProperties']
          @DevConProperties = params['DevConProperties']
          unless params['ProdFileUpload'].nil?
            @ProdFileUpload = DataSourceFileUpload.new
            @ProdFileUpload.deserialize(params['ProdFileUpload'])
          end
          unless params['DevFileUpload'].nil?
            @DevFileUpload = DataSourceFileUpload.new
            @DevFileUpload.deserialize(params['DevFileUpload'])
          end
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # CreateDataSource返回参数结构体
      class CreateDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建文件夹结果
      class CreateFolderResult < TencentCloud::Common::AbstractModel
        # @param FolderId: 创建成功的文件夹ID。如果创建失败则报错。
        # @type FolderId: String

        attr_accessor :FolderId

        def initialize(folderid=nil)
          @FolderId = folderid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
        end
      end

      # CreateOpsAlarmRule请求参数结构体
      class CreateOpsAlarmRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AlarmRuleName: 告警规则名称
        # @type AlarmRuleName: String
        # @param MonitorObjectIds: 监控对象业务id列表，根据MonitorType 的设置传入不同的业务id，如下1（任务）： MonitorObjectIds为任务id列表2（工作流）： MonitorObjectIds 为工作流id列表(工作流id可从接口ListWorkflows获取)3（项目）：  MonitorObjectIds为项目id列表
        # @type MonitorObjectIds: Array
        # @param AlarmTypes: 告警规则监控类型 failure：失败告警 ；overtime：超时告警 success：成功告警; backTrackingOrRerunSuccess: 补录重跑成功告警 backTrackingOrRerunFailure：补录重跑失败告警；
        # 项目波动告警 projectFailureInstanceUpwardFluctuationAlarm： 当天失败实例数向上波动率超过阀值告警； projectSuccessInstanceDownwardFluctuationAlarm：当天成功实例数向下波动率超过阀值告警；
        # 离线集成任务对账告警： reconciliationFailure： 离线对账任务失败告警 reconciliationOvertime： 离线对账任务运行超时告警 reconciliationMismatch： 数据对账任务不一致条数超过阀值告警
        # @type AlarmTypes: Array
        # @param AlarmGroups: 告警接收人配置信息
        # @type AlarmGroups: Array
        # @param MonitorObjectType: 监控对象类型,
        # 任务维度监控： 可按照任务/工作流/项目来配置：1.任务、2.工作流、3.项目（默认为1.任务）
        # 项目维度监控： 项目整体任务波动告警，  7：项目波动监控告警
        # @type MonitorObjectType: Integer
        # @param AlarmRuleDetail: 告警规则配置信息
        # 成功告警无需配置；失败告警可以配置首次失败告警或者所有重试失败告警；超时配置需要配置超时类型及超时阀值；项目波动告警需要配置波动率及防抖周期配置
        # @type AlarmRuleDetail: :class:`Tencentcloud::Wedata.v20250806.models.AlarmRuleDetail`
        # @param AlarmLevel: 告警级别 1.普通、2.重要、3.紧急（默认1.普通）
        # @type AlarmLevel: Integer
        # @param Description: 告警规则描述
        # @type Description: String

        attr_accessor :ProjectId, :AlarmRuleName, :MonitorObjectIds, :AlarmTypes, :AlarmGroups, :MonitorObjectType, :AlarmRuleDetail, :AlarmLevel, :Description

        def initialize(projectid=nil, alarmrulename=nil, monitorobjectids=nil, alarmtypes=nil, alarmgroups=nil, monitorobjecttype=nil, alarmruledetail=nil, alarmlevel=nil, description=nil)
          @ProjectId = projectid
          @AlarmRuleName = alarmrulename
          @MonitorObjectIds = monitorobjectids
          @AlarmTypes = alarmtypes
          @AlarmGroups = alarmgroups
          @MonitorObjectType = monitorobjecttype
          @AlarmRuleDetail = alarmruledetail
          @AlarmLevel = alarmlevel
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AlarmRuleName = params['AlarmRuleName']
          @MonitorObjectIds = params['MonitorObjectIds']
          @AlarmTypes = params['AlarmTypes']
          unless params['AlarmGroups'].nil?
            @AlarmGroups = []
            params['AlarmGroups'].each do |i|
              alarmgroup_tmp = AlarmGroup.new
              alarmgroup_tmp.deserialize(i)
              @AlarmGroups << alarmgroup_tmp
            end
          end
          @MonitorObjectType = params['MonitorObjectType']
          unless params['AlarmRuleDetail'].nil?
            @AlarmRuleDetail = AlarmRuleDetail.new
            @AlarmRuleDetail.deserialize(params['AlarmRuleDetail'])
          end
          @AlarmLevel = params['AlarmLevel']
          @Description = params['Description']
        end
      end

      # CreateOpsAlarmRule返回参数结构体
      class CreateOpsAlarmRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警规则唯一id
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateAlarmRuleData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateAlarmRuleData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateProjectMember请求参数结构体
      class CreateProjectMemberRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param UserUins: 用户id
        # @type UserUins: Array
        # @param RoleIds: 角色id
        # @type RoleIds: Array

        attr_accessor :ProjectId, :UserUins, :RoleIds

        def initialize(projectid=nil, useruins=nil, roleids=nil)
          @ProjectId = projectid
          @UserUins = useruins
          @RoleIds = roleids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserUins = params['UserUins']
          @RoleIds = params['RoleIds']
        end
      end

      # CreateProjectMember返回参数结构体
      class CreateProjectMemberResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Project: 项目基本信息
        # @type Project: :class:`Tencentcloud::Wedata.v20250806.models.ProjectRequest`
        # @param DLCInfo: DLC绑定集群信息
        # @type DLCInfo: :class:`Tencentcloud::Wedata.v20250806.models.DLCClusterInfo`
        # @param ResourceIds: 绑定资源组的id列表
        # @type ResourceIds: Array

        attr_accessor :Project, :DLCInfo, :ResourceIds

        def initialize(project=nil, dlcinfo=nil, resourceids=nil)
          @Project = project
          @DLCInfo = dlcinfo
          @ResourceIds = resourceids
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectRequest.new
            @Project.deserialize(params['Project'])
          end
          unless params['DLCInfo'].nil?
            @DLCInfo = DLCClusterInfo.new
            @DLCInfo.deserialize(params['DLCInfo'])
          end
          @ResourceIds = params['ResourceIds']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建项目结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateProjectResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateProjectResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建项目的结果信息
      class CreateProjectResult < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # CreateQualityRuleGroup请求参数结构体
      class CreateQualityRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupExecStrategyBOList: 任务参数
        # @type RuleGroupExecStrategyBOList: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleGroupExecStrategyBOList, :ProjectId

        def initialize(rulegroupexecstrategybolist=nil, projectid=nil)
          @RuleGroupExecStrategyBOList = rulegroupexecstrategybolist
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['RuleGroupExecStrategyBOList'].nil?
            @RuleGroupExecStrategyBOList = []
            params['RuleGroupExecStrategyBOList'].each do |i|
              qualityrulegroupexecstrategy_tmp = QualityRuleGroupExecStrategy.new
              qualityrulegroupexecstrategy_tmp.deserialize(i)
              @RuleGroupExecStrategyBOList << qualityrulegroupexecstrategy_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # CreateQualityRuleGroup返回参数结构体
      class CreateQualityRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否更新成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateQualityRuleGroupResultVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateQualityRuleGroupResultVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监控任务
      class CreateQualityRuleGroupResultVO < TencentCloud::Common::AbstractModel
        # @param RuleGroupResultList: 任务创建结构
        # @type RuleGroupResultList: Array

        attr_accessor :RuleGroupResultList

        def initialize(rulegroupresultlist=nil)
          @RuleGroupResultList = rulegroupresultlist
        end

        def deserialize(params)
          unless params['RuleGroupResultList'].nil?
            @RuleGroupResultList = []
            params['RuleGroupResultList'].each do |i|
              qualityrulegroupresult_tmp = QualityRuleGroupResult.new
              qualityrulegroupresult_tmp.deserialize(i)
              @RuleGroupResultList << qualityrulegroupresult_tmp
            end
          end
        end
      end

      # CreateQualityRule请求参数结构体
      class CreateQualityRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CreateRuleScene: 规则创建场景
        # 1：单表多规则
        # 2：多表单规则
        # 3：克隆创建规则
        # @type CreateRuleScene: Integer
        # @param RuleBOList: 单条规则信息集合
        # @type RuleBOList: Array

        attr_accessor :ProjectId, :CreateRuleScene, :RuleBOList

        def initialize(projectid=nil, createrulescene=nil, rulebolist=nil)
          @ProjectId = projectid
          @CreateRuleScene = createrulescene
          @RuleBOList = rulebolist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateRuleScene = params['CreateRuleScene']
          unless params['RuleBOList'].nil?
            @RuleBOList = []
            params['RuleBOList'].each do |i|
              qualityruleinfo_tmp = QualityRuleInfo.new
              qualityruleinfo_tmp.deserialize(i)
              @RuleBOList << qualityruleinfo_tmp
            end
          end
        end
      end

      # CreateQualityRule返回参数结构体
      class CreateQualityRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则创建结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateQualityRuleVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateQualityRuleVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据质量规则批量创建结果
      class CreateQualityRuleVO < TencentCloud::Common::AbstractModel
        # @param Msg: 操作结果文案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Results: 单条数据新增结果对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param SumCount: 总新增条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumCount: Integer
        # @param SuccessCount: 新增成功条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailedCount: 新增失败条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param SuccessRuleIds: 新增成功的 ruleId集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessRuleIds: Array

        attr_accessor :Msg, :Results, :SumCount, :SuccessCount, :FailedCount, :SuccessRuleIds

        def initialize(msg=nil, results=nil, sumcount=nil, successcount=nil, failedcount=nil, successruleids=nil)
          @Msg = msg
          @Results = results
          @SumCount = sumcount
          @SuccessCount = successcount
          @FailedCount = failedcount
          @SuccessRuleIds = successruleids
        end

        def deserialize(params)
          @Msg = params['Msg']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              qualityrulecreateresult_tmp = QualityRuleCreateResult.new
              qualityrulecreateresult_tmp.deserialize(i)
              @Results << qualityrulecreateresult_tmp
            end
          end
          @SumCount = params['SumCount']
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @SuccessRuleIds = params['SuccessRuleIds']
        end
      end

      # CreateResourceFile请求参数结构体
      class CreateResourceFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceName: 资源文件名称, 尽可能和上传文件名保持一致
        # @type ResourceName: String
        # @param BucketName: cos存储桶名称, 可从GetResourceCosPath接口获取
        # @type BucketName: String
        # @param CosRegion: BucketName桶对应的cos存储桶区域
        # @type CosRegion: String
        # @param ParentFolderPath: 项目中资源文件上传的路径, 取值示例: /wedata/qxxxm/, 根目录,请使用/即可
        # @type ParentFolderPath: String
        # @param ResourceFile: - 上传文件及手填两种方式只能选择其一，如果两者均提供，取值顺序为文件>手填值
        # -   手填值必须是存在的cos路径, parentFolderPath为父文件夹路径, name为文件名, 手填值取值示例:     /datastudio/resource/projectId/parentFolderPath/name
        # @type ResourceFile: String
        # @param BundleId: bundle客户端ID
        # @type BundleId: String
        # @param BundleInfo: bundle客户端信息
        # @type BundleInfo: String

        attr_accessor :ProjectId, :ResourceName, :BucketName, :CosRegion, :ParentFolderPath, :ResourceFile, :BundleId, :BundleInfo

        def initialize(projectid=nil, resourcename=nil, bucketname=nil, cosregion=nil, parentfolderpath=nil, resourcefile=nil, bundleid=nil, bundleinfo=nil)
          @ProjectId = projectid
          @ResourceName = resourcename
          @BucketName = bucketname
          @CosRegion = cosregion
          @ParentFolderPath = parentfolderpath
          @ResourceFile = resourcefile
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ResourceName = params['ResourceName']
          @BucketName = params['BucketName']
          @CosRegion = params['CosRegion']
          @ParentFolderPath = params['ParentFolderPath']
          @ResourceFile = params['ResourceFile']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # CreateResourceFile返回参数结构体
      class CreateResourceFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建资源文件结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateResourceFileResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateResourceFileResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建资源文件结果
      class CreateResourceFileResult < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源文件ID
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # CreateResourceFolder请求参数结构体
      class CreateResourceFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹绝对路径, 取值示例 /wedata/test, 根目录,请使用/即可
        # @type ParentFolderPath: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String

        attr_accessor :ProjectId, :ParentFolderPath, :FolderName

        def initialize(projectid=nil, parentfolderpath=nil, foldername=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @FolderName = params['FolderName']
        end
      end

      # CreateResourceFolder返回参数结构体
      class CreateResourceFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建文件夹结果，如果创建失败则报错。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateResourceGroup请求参数结构体
      class CreateResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 资源组名称。创建通用资源组的名称，必须以字母开头，可包含字母、数字、下划线（_），最多 64 个字符。
        # @type Name: String
        # @param Type: 开通的资源组信息
        # @type Type: :class:`Tencentcloud::Wedata.v20250806.models.ResourceType`
        # @param AutoRenewEnabled: 是否自动续费
        # @type AutoRenewEnabled: Boolean
        # @param PurchasePeriod: 购买时长，单位月
        # @type PurchasePeriod: Integer
        # @param VpcId: vpcId
        # @type VpcId: String
        # @param SubNet: 子网
        # @type SubNet: String
        # @param ResourceRegion: 资源购买地域
        # @type ResourceRegion: String
        # @param AssociatedProjectId: 关联项目空间项目id
        # @type AssociatedProjectId: String
        # @param Description: 资源组描述
        # @type Description: String

        attr_accessor :Name, :Type, :AutoRenewEnabled, :PurchasePeriod, :VpcId, :SubNet, :ResourceRegion, :AssociatedProjectId, :Description

        def initialize(name=nil, type=nil, autorenewenabled=nil, purchaseperiod=nil, vpcid=nil, subnet=nil, resourceregion=nil, associatedprojectid=nil, description=nil)
          @Name = name
          @Type = type
          @AutoRenewEnabled = autorenewenabled
          @PurchasePeriod = purchaseperiod
          @VpcId = vpcid
          @SubNet = subnet
          @ResourceRegion = resourceregion
          @AssociatedProjectId = associatedprojectid
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Type'].nil?
            @Type = ResourceType.new
            @Type.deserialize(params['Type'])
          end
          @AutoRenewEnabled = params['AutoRenewEnabled']
          @PurchasePeriod = params['PurchasePeriod']
          @VpcId = params['VpcId']
          @SubNet = params['SubNet']
          @ResourceRegion = params['ResourceRegion']
          @AssociatedProjectId = params['AssociatedProjectId']
          @Description = params['Description']
        end
      end

      # CreateResourceGroup返回参数结构体
      class CreateResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否开启成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSQLFolder请求参数结构体
      class CreateSQLFolderRequest < TencentCloud::Common::AbstractModel
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹path，/aaa/bbb/ccc，路径头需带斜杠，查询根目录传/
        # @type ParentFolderPath: String
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # @type AccessScope: String

        attr_accessor :FolderName, :ProjectId, :ParentFolderPath, :AccessScope

        def initialize(foldername=nil, projectid=nil, parentfolderpath=nil, accessscope=nil)
          @FolderName = foldername
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @AccessScope = accessscope
        end

        def deserialize(params)
          @FolderName = params['FolderName']
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @AccessScope = params['AccessScope']
        end
      end

      # CreateSQLFolder返回参数结构体
      class CreateSQLFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功true，失败false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SqlCreateResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SqlCreateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSQLScript请求参数结构体
      class CreateSQLScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptName: 脚本名称
        # @type ScriptName: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹path，/aaa/bbb/ccc，根目录为空字符串或/
        # @type ParentFolderPath: String
        # @param ScriptConfig: 数据探索脚本配置
        # @type ScriptConfig: :class:`Tencentcloud::Wedata.v20250806.models.SQLScriptConfig`
        # @param ScriptContent: 脚本内容，如有值，则要将内容进行base64编码
        # @type ScriptContent: String
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # @type AccessScope: String

        attr_accessor :ScriptName, :ProjectId, :ParentFolderPath, :ScriptConfig, :ScriptContent, :AccessScope

        def initialize(scriptname=nil, projectid=nil, parentfolderpath=nil, scriptconfig=nil, scriptcontent=nil, accessscope=nil)
          @ScriptName = scriptname
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @ScriptConfig = scriptconfig
          @ScriptContent = scriptcontent
          @AccessScope = accessscope
        end

        def deserialize(params)
          @ScriptName = params['ScriptName']
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          unless params['ScriptConfig'].nil?
            @ScriptConfig = SQLScriptConfig.new
            @ScriptConfig.deserialize(params['ScriptConfig'])
          end
          @ScriptContent = params['ScriptContent']
          @AccessScope = params['AccessScope']
        end
      end

      # CreateSQLScript返回参数结构体
      class CreateSQLScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLScript`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLScript.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建任务基本属性信息
      class CreateTaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskTypeId: 任务类型ID：

        # * 21:JDBC SQL
        # * 23:TDSQL-PostgreSQL
        # * 26:OfflineSynchronization
        # * 30:Python
        # * 31:PySpark
        # * 32:DLC SQL
        # * 33:Impala
        # * 34:Hive SQL
        # * 35:Shell
        # * 36:Spark SQL
        # * 38:Shell Form Mode
        # * 39:Spark
        # * 40:TCHouse-P
        # * 41:Kettle
        # * 42:Tchouse-X
        # * 43:TCHouse-X SQL
        # * 46:DLC Spark
        # * 47:TiOne
        # * 48:Trino
        # * 50:DLC PySpark
        # * 92:MapReduce
        # * 130:Branch Node
        # * 131:Merged Node
        # * 132:Notebook
        # * 133:SSH
        # * 134:StarRocks
        # * 137:For-each
        # * 138:Setats SQL
        # @type TaskTypeId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param OwnerUin: 任务负责人ID，默认为当前用户
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskFolderPath: 任务文件夹路径

        # 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # @type TaskFolderPath: String

        attr_accessor :TaskName, :TaskTypeId, :WorkflowId, :OwnerUin, :TaskDescription, :TaskFolderPath

        def initialize(taskname=nil, tasktypeid=nil, workflowid=nil, owneruin=nil, taskdescription=nil, taskfolderpath=nil)
          @TaskName = taskname
          @TaskTypeId = tasktypeid
          @WorkflowId = workflowid
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowId = params['WorkflowId']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 创建任务配置信息
      class CreateTaskConfiguration < TencentCloud::Common::AbstractModel
        # @param ResourceGroup: 资源组ID： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupId
        # @type ResourceGroup: String
        # @param CodeContent: 代码内容的Base64编码
        # @type CodeContent: String
        # @param TaskExtConfigurationList: 任务扩展属性配置列表
        # @type TaskExtConfigurationList: Array
        # @param DataCluster: 集群ID
        # @type DataCluster: String
        # @param BrokerIp: 指定的运行节点
        # @type BrokerIp: String
        # @param YarnQueue: 资源池队列名称，需要通过 DescribeProjectClusterQueues 获取
        # @type YarnQueue: String
        # @param SourceServiceId: 来源数据源ID, 使用 ; 分隔, 需要通过 DescribeDataSourceWithoutInfo 获取
        # @type SourceServiceId: String
        # @param TargetServiceId: 目标数据源ID, 使用 ; 分隔, 需要通过 DescribeDataSourceWithoutInfo 获取
        # @type TargetServiceId: String
        # @param TaskSchedulingParameterList: 调度参数
        # @type TaskSchedulingParameterList: Array
        # @param BundleId: Bundle使用的ID
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String

        attr_accessor :ResourceGroup, :CodeContent, :TaskExtConfigurationList, :DataCluster, :BrokerIp, :YarnQueue, :SourceServiceId, :TargetServiceId, :TaskSchedulingParameterList, :BundleId, :BundleInfo

        def initialize(resourcegroup=nil, codecontent=nil, taskextconfigurationlist=nil, datacluster=nil, brokerip=nil, yarnqueue=nil, sourceserviceid=nil, targetserviceid=nil, taskschedulingparameterlist=nil, bundleid=nil, bundleinfo=nil)
          @ResourceGroup = resourcegroup
          @CodeContent = codecontent
          @TaskExtConfigurationList = taskextconfigurationlist
          @DataCluster = datacluster
          @BrokerIp = brokerip
          @YarnQueue = yarnqueue
          @SourceServiceId = sourceserviceid
          @TargetServiceId = targetserviceid
          @TaskSchedulingParameterList = taskschedulingparameterlist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ResourceGroup = params['ResourceGroup']
          @CodeContent = params['CodeContent']
          unless params['TaskExtConfigurationList'].nil?
            @TaskExtConfigurationList = []
            params['TaskExtConfigurationList'].each do |i|
              taskextparameter_tmp = TaskExtParameter.new
              taskextparameter_tmp.deserialize(i)
              @TaskExtConfigurationList << taskextparameter_tmp
            end
          end
          @DataCluster = params['DataCluster']
          @BrokerIp = params['BrokerIp']
          @YarnQueue = params['YarnQueue']
          @SourceServiceId = params['SourceServiceId']
          @TargetServiceId = params['TargetServiceId']
          unless params['TaskSchedulingParameterList'].nil?
            @TaskSchedulingParameterList = []
            params['TaskSchedulingParameterList'].each do |i|
              taskschedulingparameter_tmp = TaskSchedulingParameter.new
              taskschedulingparameter_tmp.deserialize(i)
              @TaskSchedulingParameterList << taskschedulingparameter_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # CreateTaskFolder请求参数结构体
      class CreateTaskFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentTaskFolderPath: 父文件夹绝对路径，如/abc/de，如果是根目录则传/
        # @type ParentTaskFolderPath: String
        # @param TaskFolderName: 要创建的文件夹名字
        # @type TaskFolderName: String
        # @param TaskFolderType: 任务文件夹类型

        # | 任务文件夹类型取值 | 任务文件夹类型界面对应名称 |
        # | ---------------- | ------------------------ |
        # | ETL              | 集成任务                 |
        # | EMR              | EMR                      |
        # | DLC              | DLC                      |
        # | SETATS           | SETATS                   |
        # | TDSQL            | TDSQL                    |
        # | TCHOUSE          | TCHOUSE                  |
        # | GENERAL          | 通用                     |
        # | TI_ONE           | TI-ONE机器学习           |
        # | ACROSS_WORKFLOWS | 跨工作流                 |
        # @type TaskFolderType: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String

        attr_accessor :ProjectId, :ParentTaskFolderPath, :TaskFolderName, :TaskFolderType, :WorkflowId

        def initialize(projectid=nil, parenttaskfolderpath=nil, taskfoldername=nil, taskfoldertype=nil, workflowid=nil)
          @ProjectId = projectid
          @ParentTaskFolderPath = parenttaskfolderpath
          @TaskFolderName = taskfoldername
          @TaskFolderType = taskfoldertype
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentTaskFolderPath = params['ParentTaskFolderPath']
          @TaskFolderName = params['TaskFolderName']
          @TaskFolderType = params['TaskFolderType']
          @WorkflowId = params['WorkflowId']
        end
      end

      # CreateTaskFolder返回参数结构体
      class CreateTaskFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建文件夹结果，如果创建失败则报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTaskFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建任务文件夹结果
      class CreateTaskFolderResult < TencentCloud::Common::AbstractModel
        # @param TaskFolderId: 创建成功的文件夹ID。如果创建失败则报错。
        # @type TaskFolderId: String

        attr_accessor :TaskFolderId

        def initialize(taskfolderid=nil)
          @TaskFolderId = taskfolderid
        end

        def deserialize(params)
          @TaskFolderId = params['TaskFolderId']
        end
      end

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskBaseAttribute: 任务基本属性
        # @type TaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskBaseAttribute`
        # @param TaskConfiguration: 任务配置
        # @type TaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskConfiguration`
        # @param TaskSchedulerConfiguration: 任务调度配置
        # @type TaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskSchedulerConfiguration`

        attr_accessor :ProjectId, :TaskBaseAttribute, :TaskConfiguration, :TaskSchedulerConfiguration

        def initialize(projectid=nil, taskbaseattribute=nil, taskconfiguration=nil, taskschedulerconfiguration=nil)
          @ProjectId = projectid
          @TaskBaseAttribute = taskbaseattribute
          @TaskConfiguration = taskconfiguration
          @TaskSchedulerConfiguration = taskschedulerconfiguration
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['TaskBaseAttribute'].nil?
            @TaskBaseAttribute = CreateTaskBaseAttribute.new
            @TaskBaseAttribute.deserialize(params['TaskBaseAttribute'])
          end
          unless params['TaskConfiguration'].nil?
            @TaskConfiguration = CreateTaskConfiguration.new
            @TaskConfiguration.deserialize(params['TaskConfiguration'])
          end
          unless params['TaskSchedulerConfiguration'].nil?
            @TaskSchedulerConfiguration = CreateTaskSchedulerConfiguration.new
            @TaskSchedulerConfiguration.deserialize(params['TaskSchedulerConfiguration'])
          end
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建任务返回体
      class CreateTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 创建任务调度配置信息
      class CreateTaskSchedulerConfiguration < TencentCloud::Common::AbstractModel
        # @param CycleType: 周期类型：默认为 DAY_CYCLE

        # 支持的类型为

        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # @type CycleType: String
        # @param ScheduleTimeZone: 时区，默认为 UTC+8
        # @type ScheduleTimeZone: String
        # @param CrontabExpression: Cron表达式，默认为 0 0 0 * * ? *
        # @type CrontabExpression: String
        # @param StartTime: 生效日期，默认为当前日期的 00:00:00
        # @type StartTime: String
        # @param EndTime: 结束日期，默认为 2099-12-31 23:59:59
        # @type EndTime: String
        # @param ExecutionStartTime: 执行时间 左闭区间，默认 00:00
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间 右闭区间，默认 23:59
        # @type ExecutionEndTime: String
        # @param CalendarOpen: 日历调度 取值为 0 和 1， 1为打开，0为关闭，默认为0
        # @type CalendarOpen: String
        # @param CalendarId: 日历调度 日历 ID
        # @type CalendarId: String
        # @param SelfDepend: 自依赖, 默认值 serial, 取值为：parallel(并行), serial(串行), orderly(有序)
        # @type SelfDepend: String
        # @param UpstreamDependencyConfigList: 上游依赖数组
        # @type UpstreamDependencyConfigList: Array
        # @param EventListenerList: 事件数组
        # @type EventListenerList: Array
        # @param AllowRedoType: 重跑&补录配置, 默认为 ALL; , ALL 运行成功或失败后皆可重跑或补录, FAILURE 运行成功后不可重跑或补录，运行失败后可重跑或补录, NONE 运行成功或失败后皆不可重跑或补录;
        # @type AllowRedoType: String
        # @param ParamTaskOutList: 输出参数数组
        # @type ParamTaskOutList: Array
        # @param ParamTaskInList: 输入参数数组
        # @type ParamTaskInList: Array
        # @param TaskOutputRegistryList: 产出登记
        # @type TaskOutputRegistryList: Array
        # @param InitStrategy: **实例生成策略**
        # * T_PLUS_0: T+0生成,默认策略
        # * T_PLUS_1: T+1生成
        # @type InitStrategy: String
        # @param ScheduleRunType: 调度类型: 0 正常调度 1 空跑调度，默认为 0
        # @type ScheduleRunType: String
        # @param RunPriority: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # @type RunPriority: String
        # @param RetryWait: 重试策略 重试等待时间,单位分钟: 默认: 5
        # @type RetryWait: String
        # @param MaxRetryAttempts: 重试策略 最大尝试次数, 默认: 4
        # @type MaxRetryAttempts: String
        # @param ExecutionTTL: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # @type ExecutionTTL: String
        # @param WaitExecutionTotalTTL: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # @type WaitExecutionTotalTTL: String
        # @param ScheduleType: 调度类型: 0 正常调度 1 空跑调度，默认为 0
        # @type ScheduleType: Integer
        # @param RunPriorityType: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # @type RunPriorityType: Integer
        # @param RetryWaitMinute: 重试策略 重试等待时间,单位分钟: 默认: 5
        # @type RetryWaitMinute: Integer
        # @param MaxRetryNumber: 重试策略 最大尝试次数, 默认: 4
        # @type MaxRetryNumber: Integer
        # @param ExecutionTTLMinute: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # @type ExecutionTTLMinute: Integer
        # @param WaitExecutionTotalTTLMinute: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # @type WaitExecutionTotalTTLMinute: Integer

        attr_accessor :CycleType, :ScheduleTimeZone, :CrontabExpression, :StartTime, :EndTime, :ExecutionStartTime, :ExecutionEndTime, :CalendarOpen, :CalendarId, :SelfDepend, :UpstreamDependencyConfigList, :EventListenerList, :AllowRedoType, :ParamTaskOutList, :ParamTaskInList, :TaskOutputRegistryList, :InitStrategy, :ScheduleRunType, :RunPriority, :RetryWait, :MaxRetryAttempts, :ExecutionTTL, :WaitExecutionTotalTTL, :ScheduleType, :RunPriorityType, :RetryWaitMinute, :MaxRetryNumber, :ExecutionTTLMinute, :WaitExecutionTotalTTLMinute
        extend Gem::Deprecate
        deprecate :ScheduleRunType, :none, 2026, 1
        deprecate :ScheduleRunType=, :none, 2026, 1
        deprecate :RunPriority, :none, 2026, 1
        deprecate :RunPriority=, :none, 2026, 1
        deprecate :RetryWait, :none, 2026, 1
        deprecate :RetryWait=, :none, 2026, 1
        deprecate :MaxRetryAttempts, :none, 2026, 1
        deprecate :MaxRetryAttempts=, :none, 2026, 1
        deprecate :ExecutionTTL, :none, 2026, 1
        deprecate :ExecutionTTL=, :none, 2026, 1
        deprecate :WaitExecutionTotalTTL, :none, 2026, 1
        deprecate :WaitExecutionTotalTTL=, :none, 2026, 1

        def initialize(cycletype=nil, scheduletimezone=nil, crontabexpression=nil, starttime=nil, endtime=nil, executionstarttime=nil, executionendtime=nil, calendaropen=nil, calendarid=nil, selfdepend=nil, upstreamdependencyconfiglist=nil, eventlistenerlist=nil, allowredotype=nil, paramtaskoutlist=nil, paramtaskinlist=nil, taskoutputregistrylist=nil, initstrategy=nil, scheduleruntype=nil, runpriority=nil, retrywait=nil, maxretryattempts=nil, executionttl=nil, waitexecutiontotalttl=nil, scheduletype=nil, runprioritytype=nil, retrywaitminute=nil, maxretrynumber=nil, executionttlminute=nil, waitexecutiontotalttlminute=nil)
          @CycleType = cycletype
          @ScheduleTimeZone = scheduletimezone
          @CrontabExpression = crontabexpression
          @StartTime = starttime
          @EndTime = endtime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CalendarOpen = calendaropen
          @CalendarId = calendarid
          @SelfDepend = selfdepend
          @UpstreamDependencyConfigList = upstreamdependencyconfiglist
          @EventListenerList = eventlistenerlist
          @AllowRedoType = allowredotype
          @ParamTaskOutList = paramtaskoutlist
          @ParamTaskInList = paramtaskinlist
          @TaskOutputRegistryList = taskoutputregistrylist
          @InitStrategy = initstrategy
          @ScheduleRunType = scheduleruntype
          @RunPriority = runpriority
          @RetryWait = retrywait
          @MaxRetryAttempts = maxretryattempts
          @ExecutionTTL = executionttl
          @WaitExecutionTotalTTL = waitexecutiontotalttl
          @ScheduleType = scheduletype
          @RunPriorityType = runprioritytype
          @RetryWaitMinute = retrywaitminute
          @MaxRetryNumber = maxretrynumber
          @ExecutionTTLMinute = executionttlminute
          @WaitExecutionTotalTTLMinute = waitexecutiontotalttlminute
        end

        def deserialize(params)
          @CycleType = params['CycleType']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @CrontabExpression = params['CrontabExpression']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CalendarOpen = params['CalendarOpen']
          @CalendarId = params['CalendarId']
          @SelfDepend = params['SelfDepend']
          unless params['UpstreamDependencyConfigList'].nil?
            @UpstreamDependencyConfigList = []
            params['UpstreamDependencyConfigList'].each do |i|
              dependencytaskbrief_tmp = DependencyTaskBrief.new
              dependencytaskbrief_tmp.deserialize(i)
              @UpstreamDependencyConfigList << dependencytaskbrief_tmp
            end
          end
          unless params['EventListenerList'].nil?
            @EventListenerList = []
            params['EventListenerList'].each do |i|
              eventlistener_tmp = EventListener.new
              eventlistener_tmp.deserialize(i)
              @EventListenerList << eventlistener_tmp
            end
          end
          @AllowRedoType = params['AllowRedoType']
          unless params['ParamTaskOutList'].nil?
            @ParamTaskOutList = []
            params['ParamTaskOutList'].each do |i|
              outtaskparameter_tmp = OutTaskParameter.new
              outtaskparameter_tmp.deserialize(i)
              @ParamTaskOutList << outtaskparameter_tmp
            end
          end
          unless params['ParamTaskInList'].nil?
            @ParamTaskInList = []
            params['ParamTaskInList'].each do |i|
              intaskparameter_tmp = InTaskParameter.new
              intaskparameter_tmp.deserialize(i)
              @ParamTaskInList << intaskparameter_tmp
            end
          end
          unless params['TaskOutputRegistryList'].nil?
            @TaskOutputRegistryList = []
            params['TaskOutputRegistryList'].each do |i|
              taskdataregistry_tmp = TaskDataRegistry.new
              taskdataregistry_tmp.deserialize(i)
              @TaskOutputRegistryList << taskdataregistry_tmp
            end
          end
          @InitStrategy = params['InitStrategy']
          @ScheduleRunType = params['ScheduleRunType']
          @RunPriority = params['RunPriority']
          @RetryWait = params['RetryWait']
          @MaxRetryAttempts = params['MaxRetryAttempts']
          @ExecutionTTL = params['ExecutionTTL']
          @WaitExecutionTotalTTL = params['WaitExecutionTotalTTL']
          @ScheduleType = params['ScheduleType']
          @RunPriorityType = params['RunPriorityType']
          @RetryWaitMinute = params['RetryWaitMinute']
          @MaxRetryNumber = params['MaxRetryNumber']
          @ExecutionTTLMinute = params['ExecutionTTLMinute']
          @WaitExecutionTotalTTLMinute = params['WaitExecutionTotalTTLMinute']
        end
      end

      # 创建任务基本属性信息
      class CreateTriggerTaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskTypeId: 任务类型ID：
        # * 26:OfflineSynchronization
        # * 30:Python
        # * 32:DLC SQL
        # * 35:Shell
        # * 38:Shell Form Mode
        # * 46:DLC Spark
        # * 50:DLC PySpark
        # * 130:Branch Node
        # * 131:Merged Node
        # * 132:Notebook
        # * 133:SSH
        # * 137:For-each
        # * 139:DLC Spark Streaming
        # * 140:Run Workflow
        # @type TaskTypeId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param OwnerUin: 任务负责人ID，默认为当前用户
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskFolderPath: 任务文件夹路径

        # 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # @type TaskFolderPath: String

        attr_accessor :TaskName, :TaskTypeId, :WorkflowId, :OwnerUin, :TaskDescription, :TaskFolderPath

        def initialize(taskname=nil, tasktypeid=nil, workflowid=nil, owneruin=nil, taskdescription=nil, taskfolderpath=nil)
          @TaskName = taskname
          @TaskTypeId = tasktypeid
          @WorkflowId = workflowid
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowId = params['WorkflowId']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 创建任务配置信息
      class CreateTriggerTaskConfiguration < TencentCloud::Common::AbstractModel
        # @param ResourceGroup: 资源组ID： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupId
        # @type ResourceGroup: String
        # @param CodeContent: 代码内容的Base64编码
        # @type CodeContent: String
        # @param TaskExtConfigurationList: 任务扩展属性配置列表
        # @type TaskExtConfigurationList: Array
        # @param DataCluster: 集群ID
        # @type DataCluster: String
        # @param BrokerIp: 指定的运行节点
        # @type BrokerIp: String
        # @param YarnQueue: 资源池队列名称，需要通过 DescribeProjectClusterQueues 获取
        # @type YarnQueue: String
        # @param SourceServiceId: 来源数据源ID, 使用 ; 分隔, 需要通过 DescribeDataSourceWithoutInfo 获取
        # @type SourceServiceId: String
        # @param TargetServiceId: 目标数据源ID, 使用 ; 分隔, 需要通过 DescribeDataSourceWithoutInfo 获取
        # @type TargetServiceId: String
        # @param TaskSchedulingParameterList: 调度参数
        # @type TaskSchedulingParameterList: Array
        # @param BundleId: Bundle使用的ID
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String

        attr_accessor :ResourceGroup, :CodeContent, :TaskExtConfigurationList, :DataCluster, :BrokerIp, :YarnQueue, :SourceServiceId, :TargetServiceId, :TaskSchedulingParameterList, :BundleId, :BundleInfo

        def initialize(resourcegroup=nil, codecontent=nil, taskextconfigurationlist=nil, datacluster=nil, brokerip=nil, yarnqueue=nil, sourceserviceid=nil, targetserviceid=nil, taskschedulingparameterlist=nil, bundleid=nil, bundleinfo=nil)
          @ResourceGroup = resourcegroup
          @CodeContent = codecontent
          @TaskExtConfigurationList = taskextconfigurationlist
          @DataCluster = datacluster
          @BrokerIp = brokerip
          @YarnQueue = yarnqueue
          @SourceServiceId = sourceserviceid
          @TargetServiceId = targetserviceid
          @TaskSchedulingParameterList = taskschedulingparameterlist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ResourceGroup = params['ResourceGroup']
          @CodeContent = params['CodeContent']
          unless params['TaskExtConfigurationList'].nil?
            @TaskExtConfigurationList = []
            params['TaskExtConfigurationList'].each do |i|
              taskextparameter_tmp = TaskExtParameter.new
              taskextparameter_tmp.deserialize(i)
              @TaskExtConfigurationList << taskextparameter_tmp
            end
          end
          @DataCluster = params['DataCluster']
          @BrokerIp = params['BrokerIp']
          @YarnQueue = params['YarnQueue']
          @SourceServiceId = params['SourceServiceId']
          @TargetServiceId = params['TargetServiceId']
          unless params['TaskSchedulingParameterList'].nil?
            @TaskSchedulingParameterList = []
            params['TaskSchedulingParameterList'].each do |i|
              taskschedulingparameter_tmp = TaskSchedulingParameter.new
              taskschedulingparameter_tmp.deserialize(i)
              @TaskSchedulingParameterList << taskschedulingparameter_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # CreateTriggerTask请求参数结构体
      class CreateTriggerTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TriggerTaskBaseAttribute: 任务基本属性
        # @type TriggerTaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.CreateTriggerTaskBaseAttribute`
        # @param TriggerTaskConfiguration: 任务配置
        # @type TriggerTaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.CreateTriggerTaskConfiguration`
        # @param TriggerTaskSchedulerConfiguration: 任务调度配置
        # @type TriggerTaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.CreateTriggerTaskSchedulerConfiguration`

        attr_accessor :ProjectId, :TriggerTaskBaseAttribute, :TriggerTaskConfiguration, :TriggerTaskSchedulerConfiguration

        def initialize(projectid=nil, triggertaskbaseattribute=nil, triggertaskconfiguration=nil, triggertaskschedulerconfiguration=nil)
          @ProjectId = projectid
          @TriggerTaskBaseAttribute = triggertaskbaseattribute
          @TriggerTaskConfiguration = triggertaskconfiguration
          @TriggerTaskSchedulerConfiguration = triggertaskschedulerconfiguration
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['TriggerTaskBaseAttribute'].nil?
            @TriggerTaskBaseAttribute = CreateTriggerTaskBaseAttribute.new
            @TriggerTaskBaseAttribute.deserialize(params['TriggerTaskBaseAttribute'])
          end
          unless params['TriggerTaskConfiguration'].nil?
            @TriggerTaskConfiguration = CreateTriggerTaskConfiguration.new
            @TriggerTaskConfiguration.deserialize(params['TriggerTaskConfiguration'])
          end
          unless params['TriggerTaskSchedulerConfiguration'].nil?
            @TriggerTaskSchedulerConfiguration = CreateTriggerTaskSchedulerConfiguration.new
            @TriggerTaskSchedulerConfiguration.deserialize(params['TriggerTaskSchedulerConfiguration'])
          end
        end
      end

      # CreateTriggerTask返回参数结构体
      class CreateTriggerTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建任务调度配置信息
      class CreateTriggerTaskSchedulerConfiguration < TencentCloud::Common::AbstractModel
        # @param UpstreamDependencyConfigList: 上游依赖的任务数组
        # @type UpstreamDependencyConfigList: Array
        # @param RunPriorityType: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # @type RunPriorityType: Integer
        # @param RetryWaitMinute: 重试策略 重试等待时间,单位分钟: 默认: 5
        # @type RetryWaitMinute: Integer
        # @param MaxRetryNumber: 重试策略 最大尝试次数, 默认: 4
        # @type MaxRetryNumber: Integer
        # @param ExecutionTTLMinute: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # @type ExecutionTTLMinute: Integer
        # @param WaitExecutionTotalTTLMinute: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # @type WaitExecutionTotalTTLMinute: Integer
        # @param AllowRedoType: 重跑&补录配置, 默认为 ALL; , ALL 运行成功或失败后皆可重跑或补录, FAILURE 运行成功后不可重跑或补录，运行失败后可重跑或补录, NONE 运行成功或失败后皆不可重跑或补录;
        # @type AllowRedoType: String
        # @param ParamTaskOutList: 输出参数数组
        # @type ParamTaskOutList: Array
        # @param ParamTaskInList: 输入参数数组
        # @type ParamTaskInList: Array
        # @param TaskOutputRegistryList: 产出登记
        # @type TaskOutputRegistryList: Array

        attr_accessor :UpstreamDependencyConfigList, :RunPriorityType, :RetryWaitMinute, :MaxRetryNumber, :ExecutionTTLMinute, :WaitExecutionTotalTTLMinute, :AllowRedoType, :ParamTaskOutList, :ParamTaskInList, :TaskOutputRegistryList

        def initialize(upstreamdependencyconfiglist=nil, runprioritytype=nil, retrywaitminute=nil, maxretrynumber=nil, executionttlminute=nil, waitexecutiontotalttlminute=nil, allowredotype=nil, paramtaskoutlist=nil, paramtaskinlist=nil, taskoutputregistrylist=nil)
          @UpstreamDependencyConfigList = upstreamdependencyconfiglist
          @RunPriorityType = runprioritytype
          @RetryWaitMinute = retrywaitminute
          @MaxRetryNumber = maxretrynumber
          @ExecutionTTLMinute = executionttlminute
          @WaitExecutionTotalTTLMinute = waitexecutiontotalttlminute
          @AllowRedoType = allowredotype
          @ParamTaskOutList = paramtaskoutlist
          @ParamTaskInList = paramtaskinlist
          @TaskOutputRegistryList = taskoutputregistrylist
        end

        def deserialize(params)
          unless params['UpstreamDependencyConfigList'].nil?
            @UpstreamDependencyConfigList = []
            params['UpstreamDependencyConfigList'].each do |i|
              dependencytriggertaskbrief_tmp = DependencyTriggerTaskBrief.new
              dependencytriggertaskbrief_tmp.deserialize(i)
              @UpstreamDependencyConfigList << dependencytriggertaskbrief_tmp
            end
          end
          @RunPriorityType = params['RunPriorityType']
          @RetryWaitMinute = params['RetryWaitMinute']
          @MaxRetryNumber = params['MaxRetryNumber']
          @ExecutionTTLMinute = params['ExecutionTTLMinute']
          @WaitExecutionTotalTTLMinute = params['WaitExecutionTotalTTLMinute']
          @AllowRedoType = params['AllowRedoType']
          unless params['ParamTaskOutList'].nil?
            @ParamTaskOutList = []
            params['ParamTaskOutList'].each do |i|
              outtaskparameter_tmp = OutTaskParameter.new
              outtaskparameter_tmp.deserialize(i)
              @ParamTaskOutList << outtaskparameter_tmp
            end
          end
          unless params['ParamTaskInList'].nil?
            @ParamTaskInList = []
            params['ParamTaskInList'].each do |i|
              intaskparameter_tmp = InTaskParameter.new
              intaskparameter_tmp.deserialize(i)
              @ParamTaskInList << intaskparameter_tmp
            end
          end
          unless params['TaskOutputRegistryList'].nil?
            @TaskOutputRegistryList = []
            params['TaskOutputRegistryList'].each do |i|
              taskdataregistry_tmp = TaskDataRegistry.new
              taskdataregistry_tmp.deserialize(i)
              @TaskOutputRegistryList << taskdataregistry_tmp
            end
          end
        end
      end

      # CreateTriggerWorkflow请求参数结构体
      class CreateTriggerWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param ParentFolderPath: 所属文件夹路径
        # @type ParentFolderPath: String
        # @param WorkflowDesc: 工作流描述
        # @type WorkflowDesc: String
        # @param OwnerUin: 工作流负责人ID
        # @type OwnerUin: String
        # @param WorkflowParams: 工作流参数
        # @type WorkflowParams: Array
        # @param TriggerWorkflowSchedulerConfigurations: 统一调度信息
        # @type TriggerWorkflowSchedulerConfigurations: Array
        # @param BundleId: BundleId项
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String
        # @param GeneralTaskParams: 通用参数配置
        # @type GeneralTaskParams: Array

        attr_accessor :ProjectId, :WorkflowName, :ParentFolderPath, :WorkflowDesc, :OwnerUin, :WorkflowParams, :TriggerWorkflowSchedulerConfigurations, :BundleId, :BundleInfo, :GeneralTaskParams

        def initialize(projectid=nil, workflowname=nil, parentfolderpath=nil, workflowdesc=nil, owneruin=nil, workflowparams=nil, triggerworkflowschedulerconfigurations=nil, bundleid=nil, bundleinfo=nil, generaltaskparams=nil)
          @ProjectId = projectid
          @WorkflowName = workflowname
          @ParentFolderPath = parentfolderpath
          @WorkflowDesc = workflowdesc
          @OwnerUin = owneruin
          @WorkflowParams = workflowparams
          @TriggerWorkflowSchedulerConfigurations = triggerworkflowschedulerconfigurations
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GeneralTaskParams = generaltaskparams
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowName = params['WorkflowName']
          @ParentFolderPath = params['ParentFolderPath']
          @WorkflowDesc = params['WorkflowDesc']
          @OwnerUin = params['OwnerUin']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['TriggerWorkflowSchedulerConfigurations'].nil?
            @TriggerWorkflowSchedulerConfigurations = []
            params['TriggerWorkflowSchedulerConfigurations'].each do |i|
              workflowtriggerconfig_tmp = WorkflowTriggerConfig.new
              workflowtriggerconfig_tmp.deserialize(i)
              @TriggerWorkflowSchedulerConfigurations << workflowtriggerconfig_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              workflowgeneraltaskparam_tmp = WorkflowGeneralTaskParam.new
              workflowgeneraltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << workflowgeneraltaskparam_tmp
            end
          end
        end
      end

      # CreateTriggerWorkflow返回参数结构体
      class CreateTriggerWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateTriggerWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTriggerWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建工作流结果
      class CreateTriggerWorkflowResult < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 创建成功后的工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String

        attr_accessor :WorkflowId

        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # CreateWorkflowFolder请求参数结构体
      class CreateWorkflowFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹绝对路径，如/abc/de，如果是根目录则传/
        # @type ParentFolderPath: String
        # @param FolderName: 要创建的文件夹名字
        # @type FolderName: String

        attr_accessor :ProjectId, :ParentFolderPath, :FolderName

        def initialize(projectid=nil, parentfolderpath=nil, foldername=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @FolderName = params['FolderName']
        end
      end

      # CreateWorkflowFolder返回参数结构体
      class CreateWorkflowFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建文件夹结果，如果创建失败则报错。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflowPermissions请求参数结构体
      class CreateWorkflowPermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param EntityId: 授权实体ID
        # @type EntityId: String
        # @param EntityType: 授权实体类型,folder/workflow
        # @type EntityType: String
        # @param PermissionList: 授权信息数组
        # @type PermissionList: Array

        attr_accessor :ProjectId, :EntityId, :EntityType, :PermissionList

        def initialize(projectid=nil, entityid=nil, entitytype=nil, permissionlist=nil)
          @ProjectId = projectid
          @EntityId = entityid
          @EntityType = entitytype
          @PermissionList = permissionlist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EntityId = params['EntityId']
          @EntityType = params['EntityType']
          unless params['PermissionList'].nil?
            @PermissionList = []
            params['PermissionList'].each do |i|
              workflowpermission_tmp = WorkflowPermission.new
              workflowpermission_tmp.deserialize(i)
              @PermissionList << workflowpermission_tmp
            end
          end
        end
      end

      # CreateWorkflowPermissions返回参数结构体
      class CreateWorkflowPermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 实体授权结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateWorkflowPermissionsResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkflowPermissionsResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 工作流授权结果
      class CreateWorkflowPermissionsResult < TencentCloud::Common::AbstractModel
        # @param Status: 实体授权结果，true/false
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param ParentFolderPath: 所属文件夹路径
        # @type ParentFolderPath: String
        # @param WorkflowType: 工作流类型,取值示例：cycle 周期工作流；manual 手动工作流，默认传入cycle
        # @type WorkflowType: String
        # @param WorkflowDesc: 工作流描述
        # @type WorkflowDesc: String
        # @param OwnerUin: 工作流负责人ID
        # @type OwnerUin: String
        # @param WorkflowParams: 工作流参数
        # @type WorkflowParams: Array
        # @param WorkflowSchedulerConfiguration: 统一调度信息
        # @type WorkflowSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowSchedulerConfigurationInfo`
        # @param BundleId: BundleId项
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String

        attr_accessor :ProjectId, :WorkflowName, :ParentFolderPath, :WorkflowType, :WorkflowDesc, :OwnerUin, :WorkflowParams, :WorkflowSchedulerConfiguration, :BundleId, :BundleInfo

        def initialize(projectid=nil, workflowname=nil, parentfolderpath=nil, workflowtype=nil, workflowdesc=nil, owneruin=nil, workflowparams=nil, workflowschedulerconfiguration=nil, bundleid=nil, bundleinfo=nil)
          @ProjectId = projectid
          @WorkflowName = workflowname
          @ParentFolderPath = parentfolderpath
          @WorkflowType = workflowtype
          @WorkflowDesc = workflowdesc
          @OwnerUin = owneruin
          @WorkflowParams = workflowparams
          @WorkflowSchedulerConfiguration = workflowschedulerconfiguration
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowName = params['WorkflowName']
          @ParentFolderPath = params['ParentFolderPath']
          @WorkflowType = params['WorkflowType']
          @WorkflowDesc = params['WorkflowDesc']
          @OwnerUin = params['OwnerUin']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['WorkflowSchedulerConfiguration'].nil?
            @WorkflowSchedulerConfiguration = WorkflowSchedulerConfigurationInfo.new
            @WorkflowSchedulerConfiguration.deserialize(params['WorkflowSchedulerConfiguration'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回工作流ID
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CreateWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建工作流结果
      class CreateWorkflowResult < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 创建成功后的工作流id
        # @type WorkflowId: String

        attr_accessor :WorkflowId

        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # dlc集群信息
      class DLCClusterInfo < TencentCloud::Common::AbstractModel
        # @param ComputeResources: dlc资源名称（需要添加角色Uin到dlc中，否则可能获取不到资源）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeResources: Array
        # @param Region: dlc地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param DefaultDatabase: 指定DLC集群的默认数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDatabase: String
        # @param StandardModeEnvTag: 集群配置标记（ 仅对标准模式的项目生效并且标准模式必填），枚举值：
        # - Prod  (生产环境)
        # - Dev  (开发环境)
        # @type StandardModeEnvTag: String
        # @param AccessAccount: 访问账号（ 仅对标准模式的项目生效并且标准模式必填），用于提交dlc任务的账号
        # 建议使用指定子账号，给子账号设置对应库表的权限；任务负责人模式在负责人离职后容易造成任务失败；主账号模式在多个项目权限不同的情况下不易做权限控制。

        # 枚举值：
        # - TASK_RUNNER （任务负责人）
        # - OWNER （主账号模式）
        # - SUB （子账号模式）
        # @type AccessAccount: String
        # @param SubAccountUin: 子账号id（ 仅对标准模式的项目生效），AccessAccount为子账号模式时，需要指定子账号的id信息，其他模式不需要指定
        # @type SubAccountUin: String

        attr_accessor :ComputeResources, :Region, :DefaultDatabase, :StandardModeEnvTag, :AccessAccount, :SubAccountUin

        def initialize(computeresources=nil, region=nil, defaultdatabase=nil, standardmodeenvtag=nil, accessaccount=nil, subaccountuin=nil)
          @ComputeResources = computeresources
          @Region = region
          @DefaultDatabase = defaultdatabase
          @StandardModeEnvTag = standardmodeenvtag
          @AccessAccount = accessaccount
          @SubAccountUin = subaccountuin
        end

        def deserialize(params)
          @ComputeResources = params['ComputeResources']
          @Region = params['Region']
          @DefaultDatabase = params['DefaultDatabase']
          @StandardModeEnvTag = params['StandardModeEnvTag']
          @AccessAccount = params['AccessAccount']
          @SubAccountUin = params['SubAccountUin']
        end
      end

      # 补录计划详情
      class DataBackfill < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param DataBackfillPlanId: 数据补录计划id
        # @type DataBackfillPlanId: String
        # @param DataBackfillPlanName: 数据补录计划名称
        # @type DataBackfillPlanName: String
        # @param TaskIds: 补录任务集合
        # @type TaskIds: Array
        # @param DataBackfillRangeList: 补录任务的数据配置列表
        # @type DataBackfillRangeList: Array
        # @param CheckParentType: 检查父任务类型，取值范围：- NONE-全部不检查- ALL-检查全部上游父任务- MAKE_SCOPE-只在（当前补录计划）选中任务中检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckParentType: String
        # @param SkipEventListening: 补录是否忽略事件依赖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipEventListening: Boolean
        # @param RedefineParallelNum: 自定义实例运行并发度, 返回为null或者不返回，则表示任务原有自依赖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedefineParallelNum: Integer
        # @param RedefineSelfWorkflowDependency: 自定义的工作流自依赖，yes或者no；如果不配置，则使用工作流原有自依赖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedefineSelfWorkflowDependency: String
        # @param SchedulerResourceGroupId: 调度资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerResourceGroupId: String
        # @param IntegrationResourceGroupId: 集成资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntegrationResourceGroupId: String
        # @param RedefineCycleType: 补录自定义的生成周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedefineCycleType: String
        # @param RedefineParamList: 自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedefineParamList: Array
        # @param StartTime: 补录任务的执行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 补录任务的执行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CreateUserUin: 创建用户id
        # @type CreateUserUin: String
        # @param CompletePercent: 补录计划实例完成百分数
        # @type CompletePercent: Integer
        # @param SuccessPercent: 补录计划实例成功百分数
        # @type SuccessPercent: Integer
        # @param DataTimeOrder: 补录是实例数据时间顺序，生效必须满足2个条件:1. 必须同周期任务2. 优先按依赖关系执行，无依赖关系影响的情况下按配置执行顺序执行 可选值- NORMAL: 不设置- ORDER: 顺序- REVERSE: 逆序不设置默认为NORMAL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTimeOrder: String

        attr_accessor :ProjectId, :DataBackfillPlanId, :DataBackfillPlanName, :TaskIds, :DataBackfillRangeList, :CheckParentType, :SkipEventListening, :RedefineParallelNum, :RedefineSelfWorkflowDependency, :SchedulerResourceGroupId, :IntegrationResourceGroupId, :RedefineCycleType, :RedefineParamList, :StartTime, :EndTime, :CreateUserUin, :CompletePercent, :SuccessPercent, :DataTimeOrder

        def initialize(projectid=nil, databackfillplanid=nil, databackfillplanname=nil, taskids=nil, databackfillrangelist=nil, checkparenttype=nil, skipeventlistening=nil, redefineparallelnum=nil, redefineselfworkflowdependency=nil, schedulerresourcegroupid=nil, integrationresourcegroupid=nil, redefinecycletype=nil, redefineparamlist=nil, starttime=nil, endtime=nil, createuseruin=nil, completepercent=nil, successpercent=nil, datatimeorder=nil)
          @ProjectId = projectid
          @DataBackfillPlanId = databackfillplanid
          @DataBackfillPlanName = databackfillplanname
          @TaskIds = taskids
          @DataBackfillRangeList = databackfillrangelist
          @CheckParentType = checkparenttype
          @SkipEventListening = skipeventlistening
          @RedefineParallelNum = redefineparallelnum
          @RedefineSelfWorkflowDependency = redefineselfworkflowdependency
          @SchedulerResourceGroupId = schedulerresourcegroupid
          @IntegrationResourceGroupId = integrationresourcegroupid
          @RedefineCycleType = redefinecycletype
          @RedefineParamList = redefineparamlist
          @StartTime = starttime
          @EndTime = endtime
          @CreateUserUin = createuseruin
          @CompletePercent = completepercent
          @SuccessPercent = successpercent
          @DataTimeOrder = datatimeorder
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DataBackfillPlanId = params['DataBackfillPlanId']
          @DataBackfillPlanName = params['DataBackfillPlanName']
          @TaskIds = params['TaskIds']
          unless params['DataBackfillRangeList'].nil?
            @DataBackfillRangeList = []
            params['DataBackfillRangeList'].each do |i|
              databackfillrange_tmp = DataBackfillRange.new
              databackfillrange_tmp.deserialize(i)
              @DataBackfillRangeList << databackfillrange_tmp
            end
          end
          @CheckParentType = params['CheckParentType']
          @SkipEventListening = params['SkipEventListening']
          @RedefineParallelNum = params['RedefineParallelNum']
          @RedefineSelfWorkflowDependency = params['RedefineSelfWorkflowDependency']
          @SchedulerResourceGroupId = params['SchedulerResourceGroupId']
          @IntegrationResourceGroupId = params['IntegrationResourceGroupId']
          @RedefineCycleType = params['RedefineCycleType']
          unless params['RedefineParamList'].nil?
            @RedefineParamList = []
            params['RedefineParamList'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @RedefineParamList << kvpair_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreateUserUin = params['CreateUserUin']
          @CompletePercent = params['CompletePercent']
          @SuccessPercent = params['SuccessPercent']
          @DataTimeOrder = params['DataTimeOrder']
        end
      end

      # 补录计划日期范围
      class DataBackfillRange < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期，格式yyyy-MM-dd 表示从指定日期的00:00:00开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd，表示从指定日期的 23:59:59结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDate: String
        # @param ExecutionStartTime: 在[StartDate, EndDate]之间每天的开始时间点，格式HH:mm,只针对小时及周期小于小时的任务生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 在[StartDate, EndDate]之间每天的结束时间点，格式HH:mm,只针对小时及周期小于小时的任务生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String

        attr_accessor :StartDate, :EndDate, :ExecutionStartTime, :ExecutionEndTime

        def initialize(startdate=nil, enddate=nil, executionstarttime=nil, executionendtime=nil)
          @StartDate = startdate
          @EndDate = enddate
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
        end
      end

      # 数据源对象
      class DataSource < TencentCloud::Common::AbstractModel
        # @param ProjectId: 归属项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Id: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Type: 数据源类型:枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param DisplayName: 数据源展示名，为了可视化查看
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 数据源描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ProjectName: 归属项目Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param CreateUser: 数据源创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUser: String
        # @param CreateTime: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyUser: String
        # @param ModifyTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param ProdConProperties: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProdConProperties: String
        # @param DevConProperties: 同params 内容为开发数据源的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevConProperties: String
        # @param Category: 数据源类别：

        # - DB ---自定义源
        # - CLUSTER --- 系统源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String

        attr_accessor :ProjectId, :Id, :Type, :Name, :DisplayName, :Description, :ProjectName, :CreateUser, :CreateTime, :ModifyUser, :ModifyTime, :ProdConProperties, :DevConProperties, :Category

        def initialize(projectid=nil, id=nil, type=nil, name=nil, displayname=nil, description=nil, projectname=nil, createuser=nil, createtime=nil, modifyuser=nil, modifytime=nil, prodconproperties=nil, devconproperties=nil, category=nil)
          @ProjectId = projectid
          @Id = id
          @Type = type
          @Name = name
          @DisplayName = displayname
          @Description = description
          @ProjectName = projectname
          @CreateUser = createuser
          @CreateTime = createtime
          @ModifyUser = modifyuser
          @ModifyTime = modifytime
          @ProdConProperties = prodconproperties
          @DevConProperties = devconproperties
          @Category = category
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @ProjectName = params['ProjectName']
          @CreateUser = params['CreateUser']
          @CreateTime = params['CreateTime']
          @ModifyUser = params['ModifyUser']
          @ModifyTime = params['ModifyTime']
          @ProdConProperties = params['ProdConProperties']
          @DevConProperties = params['DevConProperties']
          @Category = params['Category']
        end
      end

      # 数据源文件上传
      class DataSourceFileUpload < TencentCloud::Common::AbstractModel
        # @param TrustStore: Truststore认证文件，默认文件名truststore.jks
        # @type TrustStore: String
        # @param KeyStore: Keystore认证文件，默认文件名keystore.jks
        # @type KeyStore: String
        # @param CoreSite: core-site.xml文件
        # @type CoreSite: String
        # @param HdfsSite: hdfs-site.xml文件
        # @type HdfsSite: String
        # @param HiveSite: hive-site.xml文件
        # @type HiveSite: String
        # @param HBASESite: hbase-site文件
        # @type HBASESite: String
        # @param KeyTab: keytab文件，默认文件名[数据源名].keytab
        # @type KeyTab: String
        # @param KRB5Conf: krb5.conf文件
        # @type KRB5Conf: String
        # @param PrivateKey: 私钥,默认文件名private_key.pem
        # @type PrivateKey: String
        # @param PublicKey: 公钥,默认文件名public_key.pem
        # @type PublicKey: String

        attr_accessor :TrustStore, :KeyStore, :CoreSite, :HdfsSite, :HiveSite, :HBASESite, :KeyTab, :KRB5Conf, :PrivateKey, :PublicKey

        def initialize(truststore=nil, keystore=nil, coresite=nil, hdfssite=nil, hivesite=nil, hbasesite=nil, keytab=nil, krb5conf=nil, privatekey=nil, publickey=nil)
          @TrustStore = truststore
          @KeyStore = keystore
          @CoreSite = coresite
          @HdfsSite = hdfssite
          @HiveSite = hivesite
          @HBASESite = hbasesite
          @KeyTab = keytab
          @KRB5Conf = krb5conf
          @PrivateKey = privatekey
          @PublicKey = publickey
        end

        def deserialize(params)
          @TrustStore = params['TrustStore']
          @KeyStore = params['KeyStore']
          @CoreSite = params['CoreSite']
          @HdfsSite = params['HdfsSite']
          @HiveSite = params['HiveSite']
          @HBASESite = params['HBASESite']
          @KeyTab = params['KeyTab']
          @KRB5Conf = params['KRB5Conf']
          @PrivateKey = params['PrivateKey']
          @PublicKey = params['PublicKey']
        end
      end

      # 查询数据源分页列表
      class DataSourceInfo < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :PageNumber, :PageSize, :Items, :TotalCount, :TotalPageNumber

        def initialize(pagenumber=nil, pagesize=nil, items=nil, totalcount=nil, totalpagenumber=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              datasource_tmp = DataSource.new
              datasource_tmp.deserialize(i)
              @Items << datasource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 数据源操作结果
      class DataSourceResult < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param DataSourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceId: Integer

        attr_accessor :Status, :DataSourceId

        def initialize(status=nil, datasourceid=nil)
          @Status = status
          @DataSourceId = datasourceid
        end

        def deserialize(params)
          @Status = params['Status']
          @DataSourceId = params['DataSourceId']
        end
      end

      # 数据源操作结果
      class DataSourceStatus < TencentCloud::Common::AbstractModel
        # @param Status: 数据源操作状态
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

      # 数据库信息
      class DatabaseInfo < TencentCloud::Common::AbstractModel
        # @param Guid: 数据库GUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guid: String
        # @param Name: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param CatalogName: 数据库目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String
        # @param Description: 数据库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Location: 数据库位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param StorageSize: 数据库存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer

        attr_accessor :Guid, :Name, :CatalogName, :Description, :Location, :StorageSize

        def initialize(guid=nil, name=nil, catalogname=nil, description=nil, location=nil, storagesize=nil)
          @Guid = guid
          @Name = name
          @CatalogName = catalogname
          @Description = description
          @Location = location
          @StorageSize = storagesize
        end

        def deserialize(params)
          @Guid = params['Guid']
          @Name = params['Name']
          @CatalogName = params['CatalogName']
          @Description = params['Description']
          @Location = params['Location']
          @StorageSize = params['StorageSize']
        end
      end

      # 数据源关联任务信息
      class DatasourceRelationTaskInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param TaskInfo: 数据源关联任务信息，本期仅支持数据开发任务接口返回数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfo: Array

        attr_accessor :ProjectId, :ProjectName, :TaskInfo

        def initialize(projectid=nil, projectname=nil, taskinfo=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @TaskInfo = taskinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          unless params['TaskInfo'].nil?
            @TaskInfo = []
            params['TaskInfo'].each do |i|
              relatetask_tmp = RelateTask.new
              relatetask_tmp.deserialize(i)
              @TaskInfo << relatetask_tmp
            end
          end
        end
      end

      # 删除告警规则响应结果
      class DeleteAlarmRuleResult < TencentCloud::Common::AbstractModel
        # @param Status: 是否删除成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteCodeFile请求参数结构体
      class DeleteCodeFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CodeFileId: 代码文件ID，参数值来自CreateCodeFile接口的返回
        # @type CodeFileId: String

        attr_accessor :ProjectId, :CodeFileId

        def initialize(projectid=nil, codefileid=nil)
          @ProjectId = projectid
          @CodeFileId = codefileid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CodeFileId = params['CodeFileId']
        end
      end

      # DeleteCodeFile返回参数结构体
      class DeleteCodeFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeStudioFileActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeStudioFileActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteCodeFolder请求参数结构体
      class DeleteCodeFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID，参数值来自CreateCodeFolder接口的返回
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

      # DeleteCodeFolder返回参数结构体
      class DeleteCodeFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeStudioFolderActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeStudioFolderActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteCodePermissions请求参数结构体
      class DeleteCodePermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RecyclePolicySet: 回收的权限列表
        # @type RecyclePolicySet: Array

        attr_accessor :ProjectId, :RecyclePolicySet

        def initialize(projectid=nil, recyclepolicyset=nil)
          @ProjectId = projectid
          @RecyclePolicySet = recyclepolicyset
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['RecyclePolicySet'].nil?
            @RecyclePolicySet = []
            params['RecyclePolicySet'].each do |i|
              exploreauthorizationrecycleobject_tmp = ExploreAuthorizationRecycleObject.new
              exploreauthorizationrecycleobject_tmp.deserialize(i)
              @RecyclePolicySet << exploreauthorizationrecycleobject_tmp
            end
          end
        end
      end

      # DeleteCodePermissions返回参数结构体
      class DeleteCodePermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 权限回收结果
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
              codepermissionsresultitem_tmp = CodePermissionsResultItem.new
              codepermissionsresultitem_tmp.deserialize(i)
              @Data << codepermissionsresultitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDataBackfillPlanAsync请求参数结构体
      class DeleteDataBackfillPlanAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DataBackfillPlanId: 补录计划id
        # @type DataBackfillPlanId: String

        attr_accessor :ProjectId, :DataBackfillPlanId

        def initialize(projectid=nil, databackfillplanid=nil)
          @ProjectId = projectid
          @DataBackfillPlanId = databackfillplanid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DataBackfillPlanId = params['DataBackfillPlanId']
        end
      end

      # DeleteDataBackfillPlanAsync返回参数结构体
      class DeleteDataBackfillPlanAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除执行计划返回的异步响应
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDataSource请求参数结构体
      class DeleteDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Id: 数据源id
        # @type Id: Integer

        attr_accessor :ProjectId, :Id

        def initialize(projectid=nil, id=nil)
          @ProjectId = projectid
          @Id = id
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Id = params['Id']
        end
      end

      # DeleteDataSource返回参数结构体
      class DeleteDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除资源文件夹结果
      class DeleteFolderResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态,true表示成功，false表示失败
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteLineage请求参数结构体
      class DeleteLineageRequest < TencentCloud::Common::AbstractModel
        # @param Relations: 需要删除的血缘关系列表
        # @type Relations: Array

        attr_accessor :Relations

        def initialize(relations=nil)
          @Relations = relations
        end

        def deserialize(params)
          unless params['Relations'].nil?
            @Relations = []
            params['Relations'].each do |i|
              lineagepair_tmp = LineagePair.new
              lineagepair_tmp.deserialize(i)
              @Relations << lineagepair_tmp
            end
          end
        end
      end

      # DeleteLineage返回参数结构体
      class DeleteLineageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OperateResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteOpsAlarmRule请求参数结构体
      class DeleteOpsAlarmRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AlarmRuleId: 告警规则唯一id，接口CreateAlarmRule返回
        # 与AlarmRuleName二选一
        # @type AlarmRuleId: String

        attr_accessor :ProjectId, :AlarmRuleId

        def initialize(projectid=nil, alarmruleid=nil)
          @ProjectId = projectid
          @AlarmRuleId = alarmruleid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AlarmRuleId = params['AlarmRuleId']
        end
      end

      # DeleteOpsAlarmRule返回参数结构体
      class DeleteOpsAlarmRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteAlarmRuleResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteAlarmRuleResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteProjectMember请求参数结构体
      class DeleteProjectMemberRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param UserUins: 用户ID列表
        # @type UserUins: Array

        attr_accessor :ProjectId, :UserUins

        def initialize(projectid=nil, useruins=nil)
          @ProjectId = projectid
          @UserUins = useruins
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserUins = params['UserUins']
        end
      end

      # DeleteProjectMember返回参数结构体
      class DeleteProjectMemberResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 删除的项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteQualityRuleGroup请求参数结构体
      class DeleteQualityRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param RuleGroupIdList: 监控任务id
        # @type RuleGroupIdList: Array

        attr_accessor :ProjectId, :RuleGroupIdList

        def initialize(projectid=nil, rulegroupidlist=nil)
          @ProjectId = projectid
          @RuleGroupIdList = rulegroupidlist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleGroupIdList = params['RuleGroupIdList']
        end
      end

      # DeleteQualityRuleGroup返回参数结构体
      class DeleteQualityRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批量删除操作的具体执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteQualityRuleGroupResultVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteQualityRuleGroupResultVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量规则操作的返回信息
      class DeleteQualityRuleGroupResultVO < TencentCloud::Common::AbstractModel
        # @param SumCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumCount: Integer
        # @param SuccessCount: 成功条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailedCount: 失败条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param Results: 操作详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array

        attr_accessor :SumCount, :SuccessCount, :FailedCount, :Results

        def initialize(sumcount=nil, successcount=nil, failedcount=nil, results=nil)
          @SumCount = sumcount
          @SuccessCount = successcount
          @FailedCount = failedcount
          @Results = results
        end

        def deserialize(params)
          @SumCount = params['SumCount']
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              commonqualityoperateresult_tmp = CommonQualityOperateResult.new
              commonqualityoperateresult_tmp.deserialize(i)
              @Results << commonqualityoperateresult_tmp
            end
          end
        end
      end

      # DeleteQualityRule请求参数结构体
      class DeleteQualityRuleRequest < TencentCloud::Common::AbstractModel
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

      # DeleteQualityRule返回参数结构体
      class DeleteQualityRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteResourceFile请求参数结构体
      class DeleteResourceFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 资源ID, 可通过ListResourceFiles接口获取
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

      # DeleteResourceFile返回参数结构体
      class DeleteResourceFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资源删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteResourceFileResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteResourceFileResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除资源文件结果
      class DeleteResourceFileResult < TencentCloud::Common::AbstractModel
        # @param Status: true
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteResourceFolder请求参数结构体
      class DeleteResourceFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID, 可通过ListResourceFolders接口获取
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

      # DeleteResourceFolder返回参数结构体
      class DeleteResourceFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表删除成功，false代表删除失败
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteResourceGroup请求参数结构体
      class DeleteResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资源组id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteResourceGroup返回参数结构体
      class DeleteResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否销毁成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteSQLFolder请求参数结构体
      class DeleteSQLFolderRequest < TencentCloud::Common::AbstractModel
        # @param FolderId: 文件夹Id
        # @type FolderId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :FolderId, :ProjectId

        def initialize(folderid=nil, projectid=nil)
          @FolderId = folderid
          @ProjectId = projectid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteSQLFolder返回参数结构体
      class DeleteSQLFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLContentActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLContentActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteSQLScript请求参数结构体
      class DeleteSQLScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptId: 探索脚本Id
        # @type ScriptId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :ScriptId, :ProjectId

        def initialize(scriptid=nil, projectid=nil)
          @ScriptId = scriptid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteSQLScript返回参数结构体
      class DeleteSQLScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLContentActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLContentActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTaskFolder请求参数结构体
      class DeleteTaskFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param TaskFolderId: 文件夹ID，可通过ListTaskFolders接口获取
        # @type TaskFolderId: String

        attr_accessor :ProjectId, :WorkflowId, :TaskFolderId

        def initialize(projectid=nil, workflowid=nil, taskfolderid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @TaskFolderId = taskfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @TaskFolderId = params['TaskFolderId']
        end
      end

      # DeleteTaskFolder返回参数结构体
      class DeleteTaskFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteTaskFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteTaskFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除资源文件夹结果
      class DeleteTaskFolderResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态,true表示成功，false表示失败
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteTask请求参数结构体
      class DeleteTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # 和VirtualTaskId选填一个
        # @type TaskId: String
        # @param OperateInform: 任务操作是否消息通知下游任务责任人true：通知
        # false：不通知
        # 不传默认false
        # @type OperateInform: Boolean
        # @param DeleteMode: 任务删除方式
        # true：不针对下游任务实例进行强制失败
        # false：针对下游任务实例进行强制失败
        # 不传默认false
        # @type DeleteMode: Boolean

        attr_accessor :ProjectId, :TaskId, :OperateInform, :DeleteMode

        def initialize(projectid=nil, taskid=nil, operateinform=nil, deletemode=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @OperateInform = operateinform
          @DeleteMode = deletemode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @OperateInform = params['OperateInform']
          @DeleteMode = params['DeleteMode']
        end
      end

      # DeleteTask返回参数结构体
      class DeleteTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除数据开发任务结果
      class DeleteTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态,true表示成功，false表示失败
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

      # DeleteTriggerTask请求参数结构体
      class DeleteTriggerTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # 和VirtualTaskId选填一个
        # @type TaskId: String
        # @param OperateInform: 任务操作是否消息通知下游任务责任人true：通知
        # false：不通知
        # 不传默认false
        # @type OperateInform: Boolean
        # @param DeleteMode: 任务删除方式
        # true：不针对下游任务实例进行强制失败
        # false：针对下游任务实例进行强制失败
        # 不传默认false
        # @type DeleteMode: Boolean

        attr_accessor :ProjectId, :TaskId, :OperateInform, :DeleteMode

        def initialize(projectid=nil, taskid=nil, operateinform=nil, deletemode=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @OperateInform = operateinform
          @DeleteMode = deletemode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @OperateInform = params['OperateInform']
          @DeleteMode = params['DeleteMode']
        end
      end

      # DeleteTriggerTask返回参数结构体
      class DeleteTriggerTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTriggerWorkflow请求参数结构体
      class DeleteTriggerWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String

        attr_accessor :ProjectId, :WorkflowId

        def initialize(projectid=nil, workflowid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DeleteTriggerWorkflow返回参数结构体
      class DeleteTriggerWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteTriggerWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteTriggerWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除工作流结果
      class DeleteTriggerWorkflowResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除工作流是否成功
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

      # DeleteWorkflowFolder请求参数结构体
      class DeleteWorkflowFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID，可通过ListWorkflowFolders接口获取
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

      # DeleteWorkflowFolder返回参数结构体
      class DeleteWorkflowFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 要删除的数据开发授权信息
      class DeleteWorkflowPermission < TencentCloud::Common::AbstractModel
        # @param PermissionTargetType: 要删除的授权目标类型（用户：user，角色：role，组：group）
        # @type PermissionTargetType: String
        # @param PermissionTargetId: 要删除的授权目标id(userId/roleId)
        # @type PermissionTargetId: String
        # @param PermissionTypeList: 要删除的授权权限类型数组(CAN_VIEW/CAN_RUN/CAN_EDIT/CAN_MANAGE，当前仅支持CAN_MANAGE)
        # @type PermissionTypeList: Array

        attr_accessor :PermissionTargetType, :PermissionTargetId, :PermissionTypeList

        def initialize(permissiontargettype=nil, permissiontargetid=nil, permissiontypelist=nil)
          @PermissionTargetType = permissiontargettype
          @PermissionTargetId = permissiontargetid
          @PermissionTypeList = permissiontypelist
        end

        def deserialize(params)
          @PermissionTargetType = params['PermissionTargetType']
          @PermissionTargetId = params['PermissionTargetId']
          @PermissionTypeList = params['PermissionTypeList']
        end
      end

      # DeleteWorkflowPermissions请求参数结构体
      class DeleteWorkflowPermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param EntityId: 授权实体ID
        # @type EntityId: String
        # @param EntityType: 授权实体类型,folder/workflow
        # @type EntityType: String
        # @param DeletePermissionList: 删除权限数组
        # @type DeletePermissionList: Array

        attr_accessor :ProjectId, :EntityId, :EntityType, :DeletePermissionList

        def initialize(projectid=nil, entityid=nil, entitytype=nil, deletepermissionlist=nil)
          @ProjectId = projectid
          @EntityId = entityid
          @EntityType = entitytype
          @DeletePermissionList = deletepermissionlist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EntityId = params['EntityId']
          @EntityType = params['EntityType']
          unless params['DeletePermissionList'].nil?
            @DeletePermissionList = []
            params['DeletePermissionList'].each do |i|
              deleteworkflowpermission_tmp = DeleteWorkflowPermission.new
              deleteworkflowpermission_tmp.deserialize(i)
              @DeletePermissionList << deleteworkflowpermission_tmp
            end
          end
        end
      end

      # DeleteWorkflowPermissions返回参数结构体
      class DeleteWorkflowPermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资源删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteWorkflowPermissionsResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkflowPermissionsResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据开发权限删除结果
      class DeleteWorkflowPermissionsResult < TencentCloud::Common::AbstractModel
        # @param Status: 整体删除结果 true/false
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteWorkflow请求参数结构体
      class DeleteWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String

        attr_accessor :ProjectId, :WorkflowId

        def initialize(projectid=nil, workflowid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DeleteWorkflow返回参数结构体
      class DeleteWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DeleteWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除工作流结果
      class DeleteWorkflowResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除工作流是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 查询任务上游依赖详情分页
      class DependencyConfigPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足查询条件的数据总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 当前请求的数据页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 分页数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskdependdto_tmp = TaskDependDto.new
              taskdependdto_tmp.deserialize(i)
              @Items << taskdependdto_tmp
            end
          end
        end
      end

      # 依赖配置策略
      class DependencyStrategyTask < TencentCloud::Common::AbstractModel
        # @param PollingNullStrategy: 等待上游任务实例策略：EXECUTING（执行）；WAITING（等待）

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PollingNullStrategy: String
        # @param TaskDependencyExecutingStrategies: 仅当PollingNullStrategy为EXECUTING时才需要填本字段，List类型：NOT_EXIST（默认，在分钟依赖分钟/小时依赖小时的情况下，父实例不在下游实例调度时间范围内）；PARENT_EXPIRED（父实例失败）；PARENT_TIMEOUT（父实例超时）。以上场景满足任一条件即可通过该父任务实例依赖判断，除以上场景外均需等待父实例。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskDependencyExecutingStrategies: Array
        # @param TaskDependencyExecutingTimeoutValue: 仅当TaskDependencyExecutingStrategies中包含PARENT_TIMEOUT时才需要填本字段，下游任务依赖父实例执行超时时间，单位：分钟。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskDependencyExecutingTimeoutValue: Integer

        attr_accessor :PollingNullStrategy, :TaskDependencyExecutingStrategies, :TaskDependencyExecutingTimeoutValue

        def initialize(pollingnullstrategy=nil, taskdependencyexecutingstrategies=nil, taskdependencyexecutingtimeoutvalue=nil)
          @PollingNullStrategy = pollingnullstrategy
          @TaskDependencyExecutingStrategies = taskdependencyexecutingstrategies
          @TaskDependencyExecutingTimeoutValue = taskdependencyexecutingtimeoutvalue
        end

        def deserialize(params)
          @PollingNullStrategy = params['PollingNullStrategy']
          @TaskDependencyExecutingStrategies = params['TaskDependencyExecutingStrategies']
          @TaskDependencyExecutingTimeoutValue = params['TaskDependencyExecutingTimeoutValue']
        end
      end

      # 依赖任务信息

      # 取值说明表：

      # | 当前任务周期类型 | 上游任务周期类型 | 配置方式 | MainCyclicConfig取值 | 时间维度/实例范围           | SubordinateCyclicConfig取值       | offset取值             |
      # | ---------------- | ---------------- | -------- | -------------------- | --------------------------- | --------------------------------- | ---------------------- |
      # | HOUR_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | DAY_CYCLE        | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/最近实例             | CURRENT_HOUR                      | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/前一周期             | PREVIOUS_HOUR_CYCLE               | 无                     |
      # | HOUR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周五                 | PREVIOUS_FRIDAY                   | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周日                 | PREVIOUS_WEEKEND                  | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天         、          | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | WEEK_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/前一个小时(-60,0]    | PREVIOUS_HOUR_LATER_OFFSET_MINUTE | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/前一个小时           | PREVIOUS_HOUR                     | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/当前小时             | CURRENT_HOUR                      | 无                     |
      # | YEAR_CYCLE       | WEEK_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | WEEK_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/当前小时             | CURRENT_HOUR                      | 无                     |
      # | HOUR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | ONEOFF_CYCLE     | 推荐策略 | MONTH                | 按月/当月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | MONTH_CYCLE      | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | ONEOFF_CYCLE     | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 推荐策略 | MINUTE               | 按分钟/当前分钟             | CURRENT_MINUTE                    | 无                     |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 推荐策略 | MINUTE               | 按分钟/前一周期             | PREVIOUS_MINUTE_CYCLE             | 无                     |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | ONEOFF_CYCLE     | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/前一天(-24 * 60,0]     | PREVIOUS_DAY_LATER_OFFSET_MINUTE  | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | WEEK_CYCLE       | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | YEAR_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | ONEOFF_CYCLE     | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | HOUR_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/前一天(-24,0]          | PREVIOUS_DAY_LATER_OFFSET_HOUR    | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/前一天[-24,0)          | PREVIOUS_DAY                      | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本年所有月             | ALL_MONTH_OF_YEAR                 | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月末                 | PREVIOUS_END_OF_MONTH             | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月初                 | PREVIOUS_BEGIN_OF_MONTH           | 无                     |
      # | ONEOFF_CYCLE     | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | DAY_CYCLE        | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | ONEOFF_CYCLE     | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | DAY_CYCLE        | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MINUTE_CYCLE     | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | WEEK_CYCLE       | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | YEAR                 | 按年/当年                   | CURRENT_YEAR                      | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/上月末                 | PREVIOUS_END_OF_MONTH             | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/本年所有天             | ALL_DAY_OF_YEAR                   | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | HOUR_CYCLE       | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MONTH_CYCLE      | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/当月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | DAY_CYCLE        | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | DAY_CYCLE        | YEAR_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | ONEOFF_CYCLE     | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | ONEOFF_CYCLE     | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | CRONTAB_CYCLE    | CRONTAB_CYCLE    | 推荐策略 | CRONTAB              | 无                          | CURRENT                           | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      class DependencyTaskBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param MainCyclicConfig: 主依赖配置，取值为：

        # * CRONTAB
        # * DAY
        # * HOUR
        # * LIST_DAY
        # * LIST_HOUR
        # * LIST_MINUTE
        # * MINUTE
        # * MONTH
        # * RANGE_DAY
        # * RANGE_HOUR
        # * RANGE_MINUTE
        # * WEEK
        # * YEAR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainCyclicConfig: String
        # @param SubordinateCyclicConfig: 次依赖配置，取值为：
        # * ALL_DAY_OF_YEAR
        # * ALL_MONTH_OF_YEAR
        # * CURRENT
        # * CURRENT_DAY
        # * CURRENT_HOUR
        # * CURRENT_MINUTE
        # * CURRENT_MONTH
        # * CURRENT_WEEK
        # * CURRENT_YEAR
        # * PREVIOUS_BEGIN_OF_MONTH
        # * PREVIOUS_DAY
        # * PREVIOUS_DAY_LATER_OFFSET_HOUR
        # * PREVIOUS_DAY_LATER_OFFSET_MINUTE
        # * PREVIOUS_END_OF_MONTH
        # * PREVIOUS_FRIDAY
        # * PREVIOUS_HOUR
        # * PREVIOUS_HOUR_CYCLE
        # * PREVIOUS_HOUR_LATER_OFFSET_MINUTE
        # * PREVIOUS_MINUTE_CYCLE
        # * PREVIOUS_MONTH
        # * PREVIOUS_WEEK
        # * PREVIOUS_WEEKEND
        # * RECENT_DATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubordinateCyclicConfig: String
        # @param Offset: 区间、列表模式下的偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: String
        # @param DependencyStrategy: 依赖执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyStrategy: :class:`Tencentcloud::Wedata.v20250806.models.DependencyStrategyTask`

        attr_accessor :TaskId, :MainCyclicConfig, :SubordinateCyclicConfig, :Offset, :DependencyStrategy

        def initialize(taskid=nil, maincyclicconfig=nil, subordinatecyclicconfig=nil, offset=nil, dependencystrategy=nil)
          @TaskId = taskid
          @MainCyclicConfig = maincyclicconfig
          @SubordinateCyclicConfig = subordinatecyclicconfig
          @Offset = offset
          @DependencyStrategy = dependencystrategy
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @MainCyclicConfig = params['MainCyclicConfig']
          @SubordinateCyclicConfig = params['SubordinateCyclicConfig']
          @Offset = params['Offset']
          unless params['DependencyStrategy'].nil?
            @DependencyStrategy = DependencyStrategyTask.new
            @DependencyStrategy.deserialize(params['DependencyStrategy'])
          end
        end
      end

      # 依赖任务信息
      class DependencyTriggerTaskBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeDataSourceAuthority请求参数结构体
      class DescribeDataSourceAuthorityRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDataSourceAuthority返回参数结构体
      class DescribeDataSourceAuthorityResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源权限对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.AuthInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AuthInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableProject请求参数结构体
      class DisableProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DisableProject返回参数结构体
      class DisableProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DissociateResourceGroupFromProject请求参数结构体
      class DissociateResourceGroupFromProjectRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id
        # @type ResourceGroupId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :ResourceGroupId, :ProjectId

        def initialize(resourcegroupid=nil, projectid=nil)
          @ResourceGroupId = resourcegroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # DissociateResourceGroupFromProject返回参数结构体
      class DissociateResourceGroupFromProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否绑定成功，失败返回异常
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # EnableProject请求参数结构体
      class EnableProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # EnableProject返回参数结构体
      class EnableProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监听事件器
      class EventListener < TencentCloud::Common::AbstractModel
        # @param EventName: 事件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventName: String
        # @param EventSubType: 事件周期：SECOND, MIN, HOUR, DAY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSubType: String
        # @param EventBroadcastType: 事件广播类型：SINGLE, BROADCAST
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventBroadcastType: String
        # @param PropertiesList: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertiesList: Array

        attr_accessor :EventName, :EventSubType, :EventBroadcastType, :PropertiesList

        def initialize(eventname=nil, eventsubtype=nil, eventbroadcasttype=nil, propertieslist=nil)
          @EventName = eventname
          @EventSubType = eventsubtype
          @EventBroadcastType = eventbroadcasttype
          @PropertiesList = propertieslist
        end

        def deserialize(params)
          @EventName = params['EventName']
          @EventSubType = params['EventSubType']
          @EventBroadcastType = params['EventBroadcastType']
          unless params['PropertiesList'].nil?
            @PropertiesList = []
            params['PropertiesList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @PropertiesList << paraminfo_tmp
            end
          end
        end
      end

      # 执行操作结果
      class ExecutionActionBrief < TencentCloud::Common::AbstractModel
        # @param ItemId: 操作实体 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemId: String
        # @param ItemName: 操作实体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemName: String
        # @param ExecutionActionId: 操作 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionActionId: String
        # @param ErrorMessage: 失败信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param OpStatus: 操作状态，true：成功，false：失败
        # @type OpStatus: Boolean

        attr_accessor :ItemId, :ItemName, :ExecutionActionId, :ErrorMessage, :OpStatus

        def initialize(itemid=nil, itemname=nil, executionactionid=nil, errormessage=nil, opstatus=nil)
          @ItemId = itemid
          @ItemName = itemname
          @ExecutionActionId = executionactionid
          @ErrorMessage = errormessage
          @OpStatus = opstatus
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemName = params['ItemName']
          @ExecutionActionId = params['ExecutionActionId']
          @ErrorMessage = params['ErrorMessage']
          @OpStatus = params['OpStatus']
        end
      end

      # ExecutorResourceGroup分页对象
      class ExecutorResourceGroupData < TencentCloud::Common::AbstractModel
        # @param Items: 结果list
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param PageNumber: 页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPageNumber: 总分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize, :TotalPageNumber

        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil, totalpagenumber=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              executorresourcegroupinfo_tmp = ExecutorResourceGroupInfo.new
              executorresourcegroupinfo_tmp.deserialize(i)
              @Items << executorresourcegroupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 资源组详情
      class ExecutorResourceGroupInfo < TencentCloud::Common::AbstractModel
        # @param Id: 资源组唯一标识
        # @type Id: String
        # @param Name: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 资源组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ResourceGroupType: 执行资源组类型，不能为空

        # - Schedule --- 调度资源组
        # - Integration --- 集成资源组
        # - DataService -- 数据服务资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupType: String
        # @param AssociateProjects: 项目集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateProjects: Array
        # @param Region: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param VpcId: vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubNet: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubNet: String
        # @param AutoRenewEnabled: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewEnabled: Boolean

        attr_accessor :Id, :Name, :Description, :ResourceGroupType, :AssociateProjects, :Region, :VpcId, :SubNet, :AutoRenewEnabled

        def initialize(id=nil, name=nil, description=nil, resourcegrouptype=nil, associateprojects=nil, region=nil, vpcid=nil, subnet=nil, autorenewenabled=nil)
          @Id = id
          @Name = name
          @Description = description
          @ResourceGroupType = resourcegrouptype
          @AssociateProjects = associateprojects
          @Region = region
          @VpcId = vpcid
          @SubNet = subnet
          @AutoRenewEnabled = autorenewenabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Description = params['Description']
          @ResourceGroupType = params['ResourceGroupType']
          unless params['AssociateProjects'].nil?
            @AssociateProjects = []
            params['AssociateProjects'].each do |i|
              bindproject_tmp = BindProject.new
              bindproject_tmp.deserialize(i)
              @AssociateProjects << bindproject_tmp
            end
          end
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubNet = params['SubNet']
          @AutoRenewEnabled = params['AutoRenewEnabled']
        end
      end

      # 数据探索文件授权主体
      class ExploreAuthorizationObject < TencentCloud::Common::AbstractModel
        # @param Resource: 授权资源信息，包含resourceId和resourceType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Wedata.v20250806.models.ExploreFileResource`
        # @param AuthorizeSubjects: 授权详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizeSubjects: Array

        attr_accessor :Resource, :AuthorizeSubjects

        def initialize(resource=nil, authorizesubjects=nil)
          @Resource = resource
          @AuthorizeSubjects = authorizesubjects
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = ExploreFileResource.new
            @Resource.deserialize(params['Resource'])
          end
          unless params['AuthorizeSubjects'].nil?
            @AuthorizeSubjects = []
            params['AuthorizeSubjects'].each do |i|
              exploreauthorizesubject_tmp = ExploreAuthorizeSubject.new
              exploreauthorizesubject_tmp.deserialize(i)
              @AuthorizeSubjects << exploreauthorizesubject_tmp
            end
          end
        end
      end

      # 数据探索文件回收策略
      class ExploreAuthorizationRecycleObject < TencentCloud::Common::AbstractModel
        # @param Resource: 文件资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Wedata.v20250806.models.ExploreFileResource`
        # @param RecycleSubjects: 授权详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecycleSubjects: Array

        attr_accessor :Resource, :RecycleSubjects

        def initialize(resource=nil, recyclesubjects=nil)
          @Resource = resource
          @RecycleSubjects = recyclesubjects
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = ExploreFileResource.new
            @Resource.deserialize(params['Resource'])
          end
          unless params['RecycleSubjects'].nil?
            @RecycleSubjects = []
            params['RecycleSubjects'].each do |i|
              exploreauthorizesubject_tmp = ExploreAuthorizeSubject.new
              exploreauthorizesubject_tmp.deserialize(i)
              @RecycleSubjects << exploreauthorizesubject_tmp
            end
          end
        end
      end

      # 数据探索文件授权主体
      class ExploreAuthorizeSubject < TencentCloud::Common::AbstractModel
        # @param SubjectType: 主体类型（用户：user，角色：role，组：group）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectType: String
        # @param SubjectValues: 主体值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectValues: Array
        # @param Privileges: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Privileges: Array

        attr_accessor :SubjectType, :SubjectValues, :Privileges

        def initialize(subjecttype=nil, subjectvalues=nil, privileges=nil)
          @SubjectType = subjecttype
          @SubjectValues = subjectvalues
          @Privileges = privileges
        end

        def deserialize(params)
          @SubjectType = params['SubjectType']
          @SubjectValues = params['SubjectValues']
          @Privileges = params['Privileges']
        end
      end

      # 数据探索文件权限列表分页
      class ExploreFilePermissionsPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Rows: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 总个数
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
              explorefileprivilegeitem_tmp = ExploreFilePrivilegeItem.new
              explorefileprivilegeitem_tmp.deserialize(i)
              @Rows << explorefileprivilegeitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 探索文件权限详情
      class ExploreFilePrivilegeItem < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Privileges: Array
        # @param RoleType: 用户：user 角色： role 组：group
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleType: String
        # @param RoleId: 用户或角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param Resource: 授权资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Wedata.v20250806.models.ExploreFileResource`
        # @param DeleteAble: 是否可以被删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteAble: Boolean

        attr_accessor :Privileges, :RoleType, :RoleId, :Resource, :DeleteAble

        def initialize(privileges=nil, roletype=nil, roleid=nil, resource=nil, deleteable=nil)
          @Privileges = privileges
          @RoleType = roletype
          @RoleId = roleid
          @Resource = resource
          @DeleteAble = deleteable
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @RoleType = params['RoleType']
          @RoleId = params['RoleId']
          unless params['Resource'].nil?
            @Resource = ExploreFileResource.new
            @Resource.deserialize(params['Resource'])
          end
          @DeleteAble = params['DeleteAble']
        end
      end

      # 数据探索文件资源
      class ExploreFileResource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，只能是这两种类型: folder, script
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceId: 资源ID：目录id或脚本id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceIdForPath: id全路径，用于递归鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIdForPath: String
        # @param ResourceCFSPath: cfs路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCFSPath: String

        attr_accessor :ResourceType, :ResourceId, :ResourceIdForPath, :ResourceCFSPath

        def initialize(resourcetype=nil, resourceid=nil, resourceidforpath=nil, resourcecfspath=nil)
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @ResourceIdForPath = resourceidforpath
          @ResourceCFSPath = resourcecfspath
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @ResourceIdForPath = params['ResourceIdForPath']
          @ResourceCFSPath = params['ResourceCFSPath']
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

      # GetAlarmMessage请求参数结构体
      class GetAlarmMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param AlarmMessageId: 告警消息Id
        # @type AlarmMessageId: String
        # @param TimeZone: 返回日期的时区, 默认UTC+8
        # @type TimeZone: String

        attr_accessor :ProjectId, :AlarmMessageId, :TimeZone

        def initialize(projectid=nil, alarmmessageid=nil, timezone=nil)
          @ProjectId = projectid
          @AlarmMessageId = alarmmessageid
          @TimeZone = timezone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AlarmMessageId = params['AlarmMessageId']
          @TimeZone = params['TimeZone']
        end
      end

      # GetAlarmMessage返回参数结构体
      class GetAlarmMessageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.AlarmMessage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AlarmMessage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCodeFile请求参数结构体
      class GetCodeFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CodeFileId: 代码文件ID，参数值来自CreateCodeFile接口的返回
        # @type CodeFileId: String
        # @param IncludeContent: true：返回文件内容+配置，false：不返回文件内容，只返回配置信息；默认为false
        # @type IncludeContent: Boolean

        attr_accessor :ProjectId, :CodeFileId, :IncludeContent

        def initialize(projectid=nil, codefileid=nil, includecontent=nil)
          @ProjectId = projectid
          @CodeFileId = codefileid
          @IncludeContent = includecontent
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CodeFileId = params['CodeFileId']
          @IncludeContent = params['IncludeContent']
        end
      end

      # GetCodeFile返回参数结构体
      class GetCodeFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 代码文件详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeFile`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeFile.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCodeFolder请求参数结构体
      class GetCodeFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param FolderId: 文件夹id
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

      # GetCodeFolder返回参数结构体
      class GetCodeFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: codestudio文件夹
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeFolderNode`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeFolderNode.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDataBackfillPlan请求参数结构体
      class GetDataBackfillPlanRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DataBackfillPlanId: 补录计划id
        # @type DataBackfillPlanId: String
        # @param TimeZone: 展示时区，默认UTC+8
        # @type TimeZone: String

        attr_accessor :ProjectId, :DataBackfillPlanId, :TimeZone

        def initialize(projectid=nil, databackfillplanid=nil, timezone=nil)
          @ProjectId = projectid
          @DataBackfillPlanId = databackfillplanid
          @TimeZone = timezone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DataBackfillPlanId = params['DataBackfillPlanId']
          @TimeZone = params['TimeZone']
        end
      end

      # GetDataBackfillPlan返回参数结构体
      class GetDataBackfillPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 补录详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataBackfill`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataBackfill.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDataSourceRelatedTasks请求参数结构体
      class GetDataSourceRelatedTasksRequest < TencentCloud::Common::AbstractModel
        # @param Id: 数据源id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # GetDataSourceRelatedTasks返回参数结构体
      class GetDataSourceRelatedTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
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
              datasourcerelationtaskinfo_tmp = DatasourceRelationTaskInfo.new
              datasourcerelationtaskinfo_tmp.deserialize(i)
              @Data << datasourcerelationtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDataSource请求参数结构体
      class GetDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Id: 数据源id
        # @type Id: Integer

        attr_accessor :ProjectId, :Id

        def initialize(projectid=nil, id=nil)
          @ProjectId = projectid
          @Id = id
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Id = params['Id']
        end
      end

      # GetDataSource返回参数结构体
      class GetDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSource`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSource.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetMyCodeMaxPermission请求参数结构体
      class GetMyCodeMaxPermissionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 授权资源唯一id，文件夹id或文件id、
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

      # GetMyCodeMaxPermission返回参数结构体
      class GetMyCodeMaxPermissionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用户对CodeStudio文件/文件夹的递归最大权限类型
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeStudioMaxPermission`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeStudioMaxPermission.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetMyWorkflowMaxPermission请求参数结构体
      class GetMyWorkflowMaxPermissionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param EntityId: 授权实体ID
        # @type EntityId: String
        # @param EntityType: 授权实体类型,folder/workflow
        # @type EntityType: String

        attr_accessor :ProjectId, :EntityId, :EntityType

        def initialize(projectid=nil, entityid=nil, entitytype=nil)
          @ProjectId = projectid
          @EntityId = entityid
          @EntityType = entitytype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EntityId = params['EntityId']
          @EntityType = params['EntityType']
        end
      end

      # GetMyWorkflowMaxPermission返回参数结构体
      class GetMyWorkflowMaxPermissionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 当前用户对实体资源的递归最大权限类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowMaxPermission`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkflowMaxPermission.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsAlarmRule请求参数结构体
      class GetOpsAlarmRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AlarmRuleId: 告警规则唯一id
        # @type AlarmRuleId: String

        attr_accessor :ProjectId, :AlarmRuleId

        def initialize(projectid=nil, alarmruleid=nil)
          @ProjectId = projectid
          @AlarmRuleId = alarmruleid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AlarmRuleId = params['AlarmRuleId']
        end
      end

      # GetOpsAlarmRule返回参数结构体
      class GetOpsAlarmRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警规则详细信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.AlarmRuleData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AlarmRuleData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsAsyncJob请求参数结构体
      class GetOpsAsyncJobRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AsyncId: 异步操作id
        # @type AsyncId: String

        attr_accessor :ProjectId, :AsyncId

        def initialize(projectid=nil, asyncid=nil)
          @ProjectId = projectid
          @AsyncId = asyncid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AsyncId = params['AsyncId']
        end
      end

      # GetOpsAsyncJob返回参数结构体
      class GetOpsAsyncJobResponse < TencentCloud::Common::AbstractModel
        # @param Data: 异步操作详情结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncJobDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncJobDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsTaskCode请求参数结构体
      class GetOpsTaskCodeRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param TaskId: 任务Id
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

      # GetOpsTaskCode返回参数结构体
      class GetOpsTaskCodeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取任务代码结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskCode`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskCode.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsTask请求参数结构体
      class GetOpsTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param ProjectId: 项目Id
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

      # GetOpsTask返回参数结构体
      class GetOpsTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.Task`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsTriggerWorkflow请求参数结构体
      class GetOpsTriggerWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowExecutionId: 工作流执行ID
        # @type WorkflowExecutionId: String

        attr_accessor :ProjectId, :WorkflowId, :WorkflowExecutionId

        def initialize(projectid=nil, workflowid=nil, workflowexecutionid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowExecutionId = workflowexecutionid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowExecutionId = params['WorkflowExecutionId']
        end
      end

      # GetOpsTriggerWorkflow返回参数结构体
      class GetOpsTriggerWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流任务信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskDAGBrief`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerTaskDAGBrief.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOpsWorkflow请求参数结构体
      class GetOpsWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流Id，可以从ListOpsWorkflows接口获取
        # @type WorkflowId: String

        attr_accessor :ProjectId, :WorkflowId

        def initialize(projectid=nil, workflowid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # GetOpsWorkflow返回参数结构体
      class GetOpsWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流调度详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsWorkflowDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsWorkflowDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetProject请求参数结构体
      class GetProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id。一般使用项目Id来查询，与projectName必须存在一个。
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # GetProject返回参数结构体
      class GetProjectResponse < TencentCloud::Common::AbstractModel
        # @param Data: 项目信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.Project`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Project.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetResourceFile请求参数结构体
      class GetResourceFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 资源文件ID,可通过ListResourceFiles接口获取
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

      # GetResourceFile返回参数结构体
      class GetResourceFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资源文件详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceFile`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceFile.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetResourceFolder请求参数结构体
      class GetResourceFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹id
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

      # GetResourceFolder返回参数结构体
      class GetResourceFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资源文件夹信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceFolderDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceFolderDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetResourceGroupMetrics请求参数结构体
      class GetResourceGroupMetricsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 执行资源组id
        # @type ResourceGroupId: String
        # @param StartTime: 使用趋势开始时间(毫秒)，默认最近一小时
        # @type StartTime: Integer
        # @param EndTime: 使用趋势结束时间(毫秒)，默认当前
        # @type EndTime: Integer
        # @param MetricType: 指标维度

        # - all --- 全部
        # - task --- 任务指标
        # - system --- 系统指标
        # @type MetricType: String
        # @param Granularity: 指标采集粒度，单位分钟，默认 1分钟
        # @type Granularity: Integer

        attr_accessor :ResourceGroupId, :StartTime, :EndTime, :MetricType, :Granularity

        def initialize(resourcegroupid=nil, starttime=nil, endtime=nil, metrictype=nil, granularity=nil)
          @ResourceGroupId = resourcegroupid
          @StartTime = starttime
          @EndTime = endtime
          @MetricType = metrictype
          @Granularity = granularity
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricType = params['MetricType']
          @Granularity = params['Granularity']
        end
      end

      # GetResourceGroupMetrics返回参数结构体
      class GetResourceGroupMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行组指标信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceGroupMetrics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceGroupMetrics.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSQLFolder请求参数结构体
      class GetSQLFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param FolderId: 文件夹id
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

      # GetSQLFolder返回参数结构体
      class GetSQLFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: sql文件夹
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLFolderNode`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLFolderNode.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSQLScript请求参数结构体
      class GetSQLScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptId: 探索脚本Id
        # @type ScriptId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :ScriptId, :ProjectId

        def initialize(scriptid=nil, projectid=nil)
          @ScriptId = scriptid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ProjectId = params['ProjectId']
        end
      end

      # GetSQLScript返回参数结构体
      class GetSQLScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 脚本详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLScript`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLScript.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTableColumns请求参数结构体
      class GetTableColumnsRequest < TencentCloud::Common::AbstractModel
        # @param TableGuid: 数据表GUID
        # @type TableGuid: String

        attr_accessor :TableGuid

        def initialize(tableguid=nil)
          @TableGuid = tableguid
        end

        def deserialize(params)
          @TableGuid = params['TableGuid']
        end
      end

      # GetTableColumns返回参数结构体
      class GetTableColumnsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 表字段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              columninfo_tmp = ColumnInfo.new
              columninfo_tmp.deserialize(i)
              @Data << columninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTable请求参数结构体
      class GetTableRequest < TencentCloud::Common::AbstractModel
        # @param TableGuid: 表GUID
        # @type TableGuid: String

        attr_accessor :TableGuid

        def initialize(tableguid=nil)
          @TableGuid = tableguid
        end

        def deserialize(params)
          @TableGuid = params['TableGuid']
        end
      end

      # GetTable返回参数结构体
      class GetTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TableInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TableInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskCode请求参数结构体
      class GetTaskCodeRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param TaskId: 任务Id
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

      # GetTaskCode返回参数结构体
      class GetTaskCodeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取任务代码结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskCodeResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskCodeResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskFolder请求参数结构体
      class GetTaskFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param TaskFolderId: 文件夹ID
        # @type TaskFolderId: String

        attr_accessor :ProjectId, :WorkflowId, :TaskFolderId

        def initialize(projectid=nil, workflowid=nil, taskfolderid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @TaskFolderId = taskfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @TaskFolderId = params['TaskFolderId']
        end
      end

      # GetTaskFolder返回参数结构体
      class GetTaskFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件夹详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskFolderDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskFolderDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskInstanceLog请求参数结构体
      class GetTaskInstanceLogRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: **项目ID**
        # @type ProjectId: String
        # @param InstanceKey: **实例唯一标识**
        # @type InstanceKey: String
        # @param LifeRoundNum: **实例生命周期编号，标识实例的某一次执行**例如：周期实例第一次运行的编号为0，用户后期又重跑了该实例，第二次执行的编号为1; 默认最新一次
        # @type LifeRoundNum: Integer
        # @param LogLevel: **日志级别** 默认All - Info - Debug - Warn - Error - All
        # @type LogLevel: String
        # @param NextCursor: **分页查询日志时使用，无具体业务含义** 第一次查询时值为null 第二次及以后查询时使用上一次查询返回信息中的NextCursor字段值即可
        # @type NextCursor: String

        attr_accessor :ProjectId, :InstanceKey, :LifeRoundNum, :LogLevel, :NextCursor

        def initialize(projectid=nil, instancekey=nil, liferoundnum=nil, loglevel=nil, nextcursor=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @LifeRoundNum = liferoundnum
          @LogLevel = loglevel
          @NextCursor = nextcursor
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @LifeRoundNum = params['LifeRoundNum']
          @LogLevel = params['LogLevel']
          @NextCursor = params['NextCursor']
        end
      end

      # GetTaskInstanceLog返回参数结构体
      class GetTaskInstanceLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 调度实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.InstanceLog`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = InstanceLog.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskInstance请求参数结构体
      class GetTaskInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param InstanceKey: 实例唯一标识，可以通过ListInstances获取
        # @type InstanceKey: String
        # @param TimeZone: **时区**timeZone, 传入的时间字符串的所在时区，默认UTC+8
        # @type TimeZone: String

        attr_accessor :ProjectId, :InstanceKey, :TimeZone

        def initialize(projectid=nil, instancekey=nil, timezone=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @TimeZone = timezone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @TimeZone = params['TimeZone']
        end
      end

      # GetTaskInstance返回参数结构体
      class GetTaskInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 实例详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskInstanceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInstanceDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTask请求参数结构体
      class GetTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
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

      # GetTask返回参数结构体
      class GetTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.Task`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskVersion请求参数结构体
      class GetTaskVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionId: 提交版本ID，不填默认拿最新提交版本
        # @type VersionId: String

        attr_accessor :ProjectId, :TaskId, :VersionId

        def initialize(projectid=nil, taskid=nil, versionid=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionId = versionid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionId = params['VersionId']
        end
      end

      # GetTaskVersion返回参数结构体
      class GetTaskVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 版本详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskVersionDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskVersionDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerTaskCode请求参数结构体
      class GetTriggerTaskCodeRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param TaskId: 任务Id
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

      # GetTriggerTaskCode返回参数结构体
      class GetTriggerTaskCodeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取任务代码结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskCodeResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskCodeResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerTask请求参数结构体
      class GetTriggerTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
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

      # GetTriggerTask返回参数结构体
      class GetTriggerTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerTask.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerTaskRun请求参数结构体
      class GetTriggerTaskRunRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 工作空间 ID
        # @type ProjectId: String
        # @param TaskExecutionId: 任务运行 ID
        # @type TaskExecutionId: String

        attr_accessor :ProjectId, :TaskExecutionId

        def initialize(projectid=nil, taskexecutionid=nil)
          @ProjectId = projectid
          @TaskExecutionId = taskexecutionid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskExecutionId = params['TaskExecutionId']
        end
      end

      # GetTriggerTaskRun返回参数结构体
      class GetTriggerTaskRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流任务运行列表分页结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskRunBrief`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerTaskRunBrief.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerTaskVersion请求参数结构体
      class GetTriggerTaskVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionId: 提交版本ID，不填默认拿最新提交版本
        # @type VersionId: String

        attr_accessor :ProjectId, :TaskId, :VersionId

        def initialize(projectid=nil, taskid=nil, versionid=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionId = versionid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionId = params['VersionId']
        end
      end

      # GetTriggerTaskVersion返回参数结构体
      class GetTriggerTaskVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 版本详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskVersionDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerTaskVersionDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerWorkflow请求参数结构体
      class GetTriggerWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID 通过ListWorkflows接口获取
        # @type WorkflowId: String

        attr_accessor :ProjectId, :WorkflowId

        def initialize(projectid=nil, workflowid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # GetTriggerWorkflow返回参数结构体
      class GetTriggerWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerWorkflowDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerWorkflowDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTriggerWorkflowRun请求参数结构体
      class GetTriggerWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowExecutionId: 工作流执行ID
        # @type WorkflowExecutionId: String
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OrderFields: 排序条件
        # @type OrderFields: Array

        attr_accessor :ProjectId, :WorkflowExecutionId, :Filters, :OrderFields

        def initialize(projectid=nil, workflowexecutionid=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @WorkflowExecutionId = workflowexecutionid
          @Filters = filters
          @OrderFields = orderfields
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowExecutionId = params['WorkflowExecutionId']
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

      # GetTriggerWorkflowRun返回参数结构体
      class GetTriggerWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流任务信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerWorkflowTaskRunDetailBrief`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerWorkflowTaskRunDetailBrief.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflowFolder请求参数结构体
      class GetWorkflowFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹id
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

      # GetWorkflowFolder返回参数结构体
      class GetWorkflowFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件夹详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowFolderDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkflowFolderDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflow请求参数结构体
      class GetWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID 通过ListWorkflows接口获取
        # @type WorkflowId: String

        attr_accessor :ProjectId, :WorkflowId

        def initialize(projectid=nil, workflowid=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # GetWorkflow返回参数结构体
      class GetWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkflowDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GrantMemberProjectRole请求参数结构体
      class GrantMemberProjectRoleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param UserUin: 用户id
        # @type UserUin: String
        # @param RoleIds: 角色id列表，目前支持的项目角色有
        # - 308335260274237440 (项目管理员)
        # - 308335260676890624 (数据工程师)
        # - 308335260844662784 (运维工程师)
        # - 308335260945326080 (普通成员)
        # @type RoleIds: Array

        attr_accessor :ProjectId, :UserUin, :RoleIds

        def initialize(projectid=nil, useruin=nil, roleids=nil)
          @ProjectId = projectid
          @UserUin = useruin
          @RoleIds = roleids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserUin = params['UserUin']
          @RoleIds = params['RoleIds']
        end
      end

      # GrantMemberProjectRole返回参数结构体
      class GrantMemberProjectRoleResponse < TencentCloud::Common::AbstractModel
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

      # 参数传递-引用参数
      class InTaskParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamDesc: 参数描述：格式为 项目标识.任务名称.参数名；例：project_wedata_1.sh_250820_104107.pp_out
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamDesc: String
        # @param FromTaskId: 父任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromTaskId: String
        # @param FromParamKey: 父任务参数key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromParamKey: String

        attr_accessor :ParamKey, :ParamDesc, :FromTaskId, :FromParamKey

        def initialize(paramkey=nil, paramdesc=nil, fromtaskid=nil, fromparamkey=nil)
          @ParamKey = paramkey
          @ParamDesc = paramdesc
          @FromTaskId = fromtaskid
          @FromParamKey = fromparamkey
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamDesc = params['ParamDesc']
          @FromTaskId = params['FromTaskId']
          @FromParamKey = params['FromParamKey']
        end
      end

      # 调度实例详情
      class InstanceExecution < TencentCloud::Common::AbstractModel
        # @param InstanceKey: 实例唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String
        # @param LifeRoundNum: **实例生命周期编号，标识实例的某一次执行**

        # 例如：周期实例第一次运行的编号为0，用户后期又重跑了该实例，第二次执行的编号为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeRoundNum: Integer
        # @param InstanceState: **实例状态**
        # - WAIT_EVENT: 等待事件
        # - WAIT_UPSTREAM: 等待上游
        # - WAIT_RUN: 等待运行
        # - RUNNING: 运行中
        # - SKIP_RUNNING: 跳过运行
        # - FAILED_RETRY: 失败重试
        # - EXPIRED: 失败
        # - COMPLETED: 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param RunType: **实例运行触发类型**

        # - RERUN 表示重跑
        # - ADDITION 表示补录
        # - PERIODIC 表示周期
        # - APERIODIC 表示非周期
        # - RERUN_SKIP_RUN 表示重跑 - 空跑
        # - ADDITION_SKIP_RUN 表示补录 - 空跑
        # - PERIODIC_SKIP_RUN 表示周期 - 空跑
        # - APERIODIC_SKIP_RUN 表示非周期 - 空跑
        # - MANUAL_TRIGGER 表示手动触发
        # - RERUN_MANUAL_TRIGGER 表示手动触发 - 重跑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunType: String
        # @param Tries: 失败重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: Integer
        # @param ExecutionPhaseList: **实例执行生命周期列表**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionPhaseList: Array
        # @param CostTime: 耗费时间, 单位ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Integer

        attr_accessor :InstanceKey, :LifeRoundNum, :InstanceState, :RunType, :Tries, :ExecutionPhaseList, :CostTime

        def initialize(instancekey=nil, liferoundnum=nil, instancestate=nil, runtype=nil, tries=nil, executionphaselist=nil, costtime=nil)
          @InstanceKey = instancekey
          @LifeRoundNum = liferoundnum
          @InstanceState = instancestate
          @RunType = runtype
          @Tries = tries
          @ExecutionPhaseList = executionphaselist
          @CostTime = costtime
        end

        def deserialize(params)
          @InstanceKey = params['InstanceKey']
          @LifeRoundNum = params['LifeRoundNum']
          @InstanceState = params['InstanceState']
          @RunType = params['RunType']
          @Tries = params['Tries']
          unless params['ExecutionPhaseList'].nil?
            @ExecutionPhaseList = []
            params['ExecutionPhaseList'].each do |i|
              instanceexecutionphase_tmp = InstanceExecutionPhase.new
              instanceexecutionphase_tmp.deserialize(i)
              @ExecutionPhaseList << instanceexecutionphase_tmp
            end
          end
          @CostTime = params['CostTime']
        end
      end

      # 实例执行的每个阶段详情
      class InstanceExecutionPhase < TencentCloud::Common::AbstractModel
        # @param StartTime: 该状态开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param DetailState: **实例生命周期阶段状态**

        # - WAIT_UPSTREAM 表示 等待事件/上游状态
        # - WAIT_RUN 表示 等待运行状态
        # - RUNNING 表示 运行中状态
        # - COMPLETE 表示 终态-完成
        # - FAILED 表示 终态-失败重试
        # - EXPIRED 表示 终态-失败
        # - SKIP_RUNNING 表示 终态-被上游分支节点跳过的分支
        # - HISTORY 表示 兼容2024-03-30之前的历史实例，之后实例无需关注次枚举类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailState: String
        # @param EndTime: 该状态结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :StartTime, :DetailState, :EndTime

        def initialize(starttime=nil, detailstate=nil, endtime=nil)
          @StartTime = starttime
          @DetailState = detailstate
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @DetailState = params['DetailState']
          @EndTime = params['EndTime']
        end
      end

      # 实例日志内容
      class InstanceLog < TencentCloud::Common::AbstractModel
        # @param InstanceKey: 实例唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param CodeContent: **运行代码内容**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeContent: String
        # @param LogInfo: **日志内容**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogInfo: String
        # @param NextCursor: **分页查询日志时使用，无具体业务含义**

        # 第一次查询时值为null
        # 第二次及以后查询时使用上一次查询返回信息中的NextCursor字段值即可
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String

        attr_accessor :InstanceKey, :ProjectId, :CodeContent, :LogInfo, :NextCursor

        def initialize(instancekey=nil, projectid=nil, codecontent=nil, loginfo=nil, nextcursor=nil)
          @InstanceKey = instancekey
          @ProjectId = projectid
          @CodeContent = codecontent
          @LogInfo = loginfo
          @NextCursor = nextcursor
        end

        def deserialize(params)
          @InstanceKey = params['InstanceKey']
          @ProjectId = params['ProjectId']
          @CodeContent = params['CodeContent']
          @LogInfo = params['LogInfo']
          @NextCursor = params['NextCursor']
        end
      end

      # 集成资源组
      class IntegrationResource < TencentCloud::Common::AbstractModel
        # @param RealTimeDataSync: 实时集成资源组

        # - i32c(实时数据同步-16C64G)
        # @type RealTimeDataSync: :class:`Tencentcloud::Wedata.v20250806.models.ResourceGroupSpecification`
        # @param OfflineDataSync: 离线集成资源组

        # - integrated(离线数据同步-8C16G)
        # - i16(离线数据同步-8C32G)
        # @type OfflineDataSync: :class:`Tencentcloud::Wedata.v20250806.models.ResourceGroupSpecification`

        attr_accessor :RealTimeDataSync, :OfflineDataSync

        def initialize(realtimedatasync=nil, offlinedatasync=nil)
          @RealTimeDataSync = realtimedatasync
          @OfflineDataSync = offlinedatasync
        end

        def deserialize(params)
          unless params['RealTimeDataSync'].nil?
            @RealTimeDataSync = ResourceGroupSpecification.new
            @RealTimeDataSync.deserialize(params['RealTimeDataSync'])
          end
          unless params['OfflineDataSync'].nil?
            @OfflineDataSync = ResourceGroupSpecification.new
            @OfflineDataSync.deserialize(params['OfflineDataSync'])
          end
        end
      end

      # 数据探索任务JOB
      class JobDto < TencentCloud::Common::AbstractModel
        # @param JobId: 数据探索任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 数据探索任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param JobType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: String
        # @param ScriptId: 脚本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptId: String
        # @param JobExecutionList: 子任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobExecutionList: Array
        # @param ScriptContent: 脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContent: String
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param OwnerUin: 云主账号UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param UserUin: 账号UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUin: String
        # @param TimeCost: 耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeCost: Integer
        # @param ScriptContentTruncate: 是否脚本内容被截断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContentTruncate: Boolean

        attr_accessor :JobId, :JobName, :JobType, :ScriptId, :JobExecutionList, :ScriptContent, :Status, :CreateTime, :UpdateTime, :EndTime, :OwnerUin, :UserUin, :TimeCost, :ScriptContentTruncate

        def initialize(jobid=nil, jobname=nil, jobtype=nil, scriptid=nil, jobexecutionlist=nil, scriptcontent=nil, status=nil, createtime=nil, updatetime=nil, endtime=nil, owneruin=nil, useruin=nil, timecost=nil, scriptcontenttruncate=nil)
          @JobId = jobid
          @JobName = jobname
          @JobType = jobtype
          @ScriptId = scriptid
          @JobExecutionList = jobexecutionlist
          @ScriptContent = scriptcontent
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EndTime = endtime
          @OwnerUin = owneruin
          @UserUin = useruin
          @TimeCost = timecost
          @ScriptContentTruncate = scriptcontenttruncate
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @JobType = params['JobType']
          @ScriptId = params['ScriptId']
          unless params['JobExecutionList'].nil?
            @JobExecutionList = []
            params['JobExecutionList'].each do |i|
              jobexecutiondto_tmp = JobExecutionDto.new
              jobexecutiondto_tmp.deserialize(i)
              @JobExecutionList << jobexecutiondto_tmp
            end
          end
          @ScriptContent = params['ScriptContent']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @EndTime = params['EndTime']
          @OwnerUin = params['OwnerUin']
          @UserUin = params['UserUin']
          @TimeCost = params['TimeCost']
          @ScriptContentTruncate = params['ScriptContentTruncate']
        end
      end

      # 业务提交JOB的子任务
      class JobExecutionDto < TencentCloud::Common::AbstractModel
        # @param JobId: 数据探索任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobExecutionId: 子查询任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobExecutionId: String
        # @param JobExecutionName: 子查询名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobExecutionName: String
        # @param ScriptContent: 子查询sql内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContent: String
        # @param Status: 子查询状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExecuteStageInfo: 执行阶段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteStageInfo: String
        # @param LogFilePath: 日志路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogFilePath: String
        # @param ResultFilePath: 下载结果路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultFilePath: String
        # @param ResultPreviewFilePath: 预览结果路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultPreviewFilePath: String
        # @param ResultTotalCount: 任务执行的结果总行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultTotalCount: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param TimeCost: 耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeCost: Integer
        # @param ContextScriptContent: 上下文SQL内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextScriptContent: Array
        # @param ResultPreviewCount: 任务执行的结果预览行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultPreviewCount: Integer
        # @param ResultEffectCount: 任务执行的结果影响行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultEffectCount: Integer
        # @param CollectingTotalResult: 是否正在收集全量结果：默认false，true表示正在收集全量结果，用于前端判断是否需要继续轮询
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CollectingTotalResult: Boolean
        # @param ScriptContentTruncate: 是否需要截断脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContentTruncate: Boolean

        attr_accessor :JobId, :JobExecutionId, :JobExecutionName, :ScriptContent, :Status, :CreateTime, :ExecuteStageInfo, :LogFilePath, :ResultFilePath, :ResultPreviewFilePath, :ResultTotalCount, :UpdateTime, :EndTime, :TimeCost, :ContextScriptContent, :ResultPreviewCount, :ResultEffectCount, :CollectingTotalResult, :ScriptContentTruncate

        def initialize(jobid=nil, jobexecutionid=nil, jobexecutionname=nil, scriptcontent=nil, status=nil, createtime=nil, executestageinfo=nil, logfilepath=nil, resultfilepath=nil, resultpreviewfilepath=nil, resulttotalcount=nil, updatetime=nil, endtime=nil, timecost=nil, contextscriptcontent=nil, resultpreviewcount=nil, resulteffectcount=nil, collectingtotalresult=nil, scriptcontenttruncate=nil)
          @JobId = jobid
          @JobExecutionId = jobexecutionid
          @JobExecutionName = jobexecutionname
          @ScriptContent = scriptcontent
          @Status = status
          @CreateTime = createtime
          @ExecuteStageInfo = executestageinfo
          @LogFilePath = logfilepath
          @ResultFilePath = resultfilepath
          @ResultPreviewFilePath = resultpreviewfilepath
          @ResultTotalCount = resulttotalcount
          @UpdateTime = updatetime
          @EndTime = endtime
          @TimeCost = timecost
          @ContextScriptContent = contextscriptcontent
          @ResultPreviewCount = resultpreviewcount
          @ResultEffectCount = resulteffectcount
          @CollectingTotalResult = collectingtotalresult
          @ScriptContentTruncate = scriptcontenttruncate
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobExecutionId = params['JobExecutionId']
          @JobExecutionName = params['JobExecutionName']
          @ScriptContent = params['ScriptContent']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ExecuteStageInfo = params['ExecuteStageInfo']
          @LogFilePath = params['LogFilePath']
          @ResultFilePath = params['ResultFilePath']
          @ResultPreviewFilePath = params['ResultPreviewFilePath']
          @ResultTotalCount = params['ResultTotalCount']
          @UpdateTime = params['UpdateTime']
          @EndTime = params['EndTime']
          @TimeCost = params['TimeCost']
          @ContextScriptContent = params['ContextScriptContent']
          @ResultPreviewCount = params['ResultPreviewCount']
          @ResultEffectCount = params['ResultEffectCount']
          @CollectingTotalResult = params['CollectingTotalResult']
          @ScriptContentTruncate = params['ScriptContentTruncate']
        end
      end

      # map
      class KVMap < TencentCloud::Common::AbstractModel
        # @param K: k
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K: String
        # @param V: v
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type V: String

        attr_accessor :K, :V

        def initialize(k=nil, v=nil)
          @K = k
          @V = v
        end

        def deserialize(params)
          @K = params['K']
          @V = params['V']
        end
      end

      # 键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param K: 键名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K: String
        # @param V: 值，请勿传SQL(请求会被视为攻击接口)，如果有需要，请将SQL进行Base64转码并解码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type V: String

        attr_accessor :K, :V

        def initialize(k=nil, v=nil)
          @K = k
          @V = v
        end

        def deserialize(params)
          @K = params['K']
          @V = params['V']
        end
      end

      # KillTaskInstancesAsync请求参数结构体
      class KillTaskInstancesAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param InstanceKeyList: 实例id列表,可以从ListInstances中获取
        # @type InstanceKeyList: Array

        attr_accessor :ProjectId, :InstanceKeyList

        def initialize(projectid=nil, instancekeylist=nil)
          @ProjectId = projectid
          @InstanceKeyList = instancekeylist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKeyList = params['InstanceKeyList']
        end
      end

      # KillTaskInstancesAsync返回参数结构体
      class KillTaskInstancesAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批量中止操作的返回的异步id, 可以在接口GetAsyncJob获取具体执行详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # KillTriggerWorkflowRuns请求参数结构体
      class KillTriggerWorkflowRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowExecutionIdList: 指定要停止的工作流执行ID
        # @type WorkflowExecutionIdList: Array
        # @param All: 当指定的工作流运行为空时，是否全部终止正在运行的工作流执行
        # @type All: Boolean
        # @param Pending: 当指定的工作流运行为空时，是否仅停止等待中的工作流运行
        # @type Pending: Boolean

        attr_accessor :ProjectId, :WorkflowId, :WorkflowExecutionIdList, :All, :Pending

        def initialize(projectid=nil, workflowid=nil, workflowexecutionidlist=nil, all=nil, pending=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowExecutionIdList = workflowexecutionidlist
          @All = all
          @Pending = pending
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowExecutionIdList = params['WorkflowExecutionIdList']
          @All = params['All']
          @Pending = params['Pending']
        end
      end

      # KillTriggerWorkflowRuns返回参数结构体
      class KillTriggerWorkflowRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流运行操作结果
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
              executionactionbrief_tmp = ExecutionActionBrief.new
              executionactionbrief_tmp.deserialize(i)
              @Data << executionactionbrief_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LineageNodeInfo  血缘关系实体
      class LineageNodeInfo < TencentCloud::Common::AbstractModel
        # @param Resource: 当前资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Wedata.v20250806.models.LineageResource`
        # @param Relation: 关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Relation: :class:`Tencentcloud::Wedata.v20250806.models.LineageRelation`

        attr_accessor :Resource, :Relation

        def initialize(resource=nil, relation=nil)
          @Resource = resource
          @Relation = relation
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = LineageResource.new
            @Resource.deserialize(params['Resource'])
          end
          unless params['Relation'].nil?
            @Relation = LineageRelation.new
            @Relation.deserialize(params['Relation'])
          end
        end
      end

      # 血缘Pair对象
      class LineagePair < TencentCloud::Common::AbstractModel
        # @param Source: 来源
        # @type Source: :class:`Tencentcloud::Wedata.v20250806.models.LineageResouce`
        # @param Target: 目标
        # @type Target: :class:`Tencentcloud::Wedata.v20250806.models.LineageResouce`
        # @param Processes: 血缘加工过程
        # @type Processes: Array

        attr_accessor :Source, :Target, :Processes

        def initialize(source=nil, target=nil, processes=nil)
          @Source = source
          @Target = target
          @Processes = processes
        end

        def deserialize(params)
          unless params['Source'].nil?
            @Source = LineageResouce.new
            @Source.deserialize(params['Source'])
          end
          unless params['Target'].nil?
            @Target = LineageResouce.new
            @Target.deserialize(params['Target'])
          end
          unless params['Processes'].nil?
            @Processes = []
            params['Processes'].each do |i|
              lineageprocess_tmp = LineageProcess.new
              lineageprocess_tmp.deserialize(i)
              @Processes << lineageprocess_tmp
            end
          end
        end
      end

      # LineageProcess 血缘产出过程
      class LineageProcess < TencentCloud::Common::AbstractModel
        # @param ProcessId: 原始唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessId: String
        # @param ProcessType: 任务类型
        #     //调度任务
        #     SCHEDULE_TASK,
        #     //集成任务
        #     INTEGRATION_TASK,
        #     //第三方上报
        #     THIRD_REPORT,
        #     //数据建模
        #     TABLE_MODEL,
        #     //模型创建指标
        #     MODEL_METRIC,
        #     //原子指标创建衍生指标
        #     METRIC_METRIC,
        #     //数据服务
        #     DATA_SERVICE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessType: String
        # @param Platform: WEDATA, THIRD;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param ProcessSubType: 任务子类型
        #  SQL_TASK,
        #     //集成实时任务血缘
        #     INTEGRATED_STREAM,
        #     //集成离线任务血缘
        #     INTEGRATED_OFFLINE;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessSubType: String
        # @param ProcessProperties: 额外扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessProperties: Array
        # @param LineageNodeId: 血缘任务唯一节点ID
        # @type LineageNodeId: String

        attr_accessor :ProcessId, :ProcessType, :Platform, :ProcessSubType, :ProcessProperties, :LineageNodeId

        def initialize(processid=nil, processtype=nil, platform=nil, processsubtype=nil, processproperties=nil, lineagenodeid=nil)
          @ProcessId = processid
          @ProcessType = processtype
          @Platform = platform
          @ProcessSubType = processsubtype
          @ProcessProperties = processproperties
          @LineageNodeId = lineagenodeid
        end

        def deserialize(params)
          @ProcessId = params['ProcessId']
          @ProcessType = params['ProcessType']
          @Platform = params['Platform']
          @ProcessSubType = params['ProcessSubType']
          unless params['ProcessProperties'].nil?
            @ProcessProperties = []
            params['ProcessProperties'].each do |i|
              lineageproperty_tmp = LineageProperty.new
              lineageproperty_tmp.deserialize(i)
              @ProcessProperties << lineageproperty_tmp
            end
          end
          @LineageNodeId = params['LineageNodeId']
        end
      end

      # LineageProperty额外扩展参数
      class LineageProperty < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 属性值
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

      # LineageRelation 血缘关系
      class LineageRelation < TencentCloud::Common::AbstractModel
        # @param RelationId: 关联ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationId: String
        # @param SourceUniqueId: 源端唯一血缘ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceUniqueId: String
        # @param TargetUniqueId: 目标端唯一血缘ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetUniqueId: String
        # @param Processes: 血缘加工过程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Processes: Array

        attr_accessor :RelationId, :SourceUniqueId, :TargetUniqueId, :Processes

        def initialize(relationid=nil, sourceuniqueid=nil, targetuniqueid=nil, processes=nil)
          @RelationId = relationid
          @SourceUniqueId = sourceuniqueid
          @TargetUniqueId = targetuniqueid
          @Processes = processes
        end

        def deserialize(params)
          @RelationId = params['RelationId']
          @SourceUniqueId = params['SourceUniqueId']
          @TargetUniqueId = params['TargetUniqueId']
          unless params['Processes'].nil?
            @Processes = []
            params['Processes'].each do |i|
              lineageprocess_tmp = LineageProcess.new
              lineageprocess_tmp.deserialize(i)
              @Processes << lineageprocess_tmp
            end
          end
        end
      end

      # 血缘资源实体
      class LineageResouce < TencentCloud::Common::AbstractModel
        # @param ResourceUniqueId: 实体原始唯一ID\n
        # 备注：当血缘为表的列时候 唯一ID传表ResourceUniqueId::字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceUniqueId: String
        # @param ResourceType: 实体类型
        # TABLE|METRIC|MODEL|SERVICE|COLUMN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Platform: 来源：WEDATA|THIRD
        # 默认wedata
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param ResourceName: 业务名称：库名.表名｜指标名称｜模型名称|字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param Description: 描述：表类型｜指标描述｜模型描述|字段描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ResourceProperties: resource 额外扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceProperties: Array
        # @param LineageNodeId: 血缘节点唯一标识符号
        # @type LineageNodeId: String

        attr_accessor :ResourceUniqueId, :ResourceType, :Platform, :ResourceName, :Description, :CreateTime, :UpdateTime, :ResourceProperties, :LineageNodeId

        def initialize(resourceuniqueid=nil, resourcetype=nil, platform=nil, resourcename=nil, description=nil, createtime=nil, updatetime=nil, resourceproperties=nil, lineagenodeid=nil)
          @ResourceUniqueId = resourceuniqueid
          @ResourceType = resourcetype
          @Platform = platform
          @ResourceName = resourcename
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ResourceProperties = resourceproperties
          @LineageNodeId = lineagenodeid
        end

        def deserialize(params)
          @ResourceUniqueId = params['ResourceUniqueId']
          @ResourceType = params['ResourceType']
          @Platform = params['Platform']
          @ResourceName = params['ResourceName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['ResourceProperties'].nil?
            @ResourceProperties = []
            params['ResourceProperties'].each do |i|
              lineageproperty_tmp = LineageProperty.new
              lineageproperty_tmp.deserialize(i)
              @ResourceProperties << lineageproperty_tmp
            end
          end
          @LineageNodeId = params['LineageNodeId']
        end
      end

      # 血缘资源实体
      class LineageResource < TencentCloud::Common::AbstractModel
        # @param ResourceUniqueId: 实体原始唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceUniqueId: String
        # @param ResourceName: 业务名称：库名.表名｜指标名称｜模型名称|字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceType: 实体类型
        # TABLE|METRIC|MODEL|SERVICE|COLUMN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param LineageNodeId: 血缘节点唯一标识符号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineageNodeId: String
        # @param Description: 描述：表类型｜指标描述｜模型描述|字段描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Platform: 来源：WEDATA|THIRD
        # 默认wedata
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ResourceProperties: resource 额外扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceProperties: Array

        attr_accessor :ResourceUniqueId, :ResourceName, :ResourceType, :LineageNodeId, :Description, :Platform, :CreateTime, :UpdateTime, :ResourceProperties

        def initialize(resourceuniqueid=nil, resourcename=nil, resourcetype=nil, lineagenodeid=nil, description=nil, platform=nil, createtime=nil, updatetime=nil, resourceproperties=nil)
          @ResourceUniqueId = resourceuniqueid
          @ResourceName = resourcename
          @ResourceType = resourcetype
          @LineageNodeId = lineagenodeid
          @Description = description
          @Platform = platform
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ResourceProperties = resourceproperties
        end

        def deserialize(params)
          @ResourceUniqueId = params['ResourceUniqueId']
          @ResourceName = params['ResourceName']
          @ResourceType = params['ResourceType']
          @LineageNodeId = params['LineageNodeId']
          @Description = params['Description']
          @Platform = params['Platform']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['ResourceProperties'].nil?
            @ResourceProperties = []
            params['ResourceProperties'].each do |i|
              lineageproperty_tmp = LineageProperty.new
              lineageproperty_tmp.deserialize(i)
              @ResourceProperties << lineageproperty_tmp
            end
          end
        end
      end

      # 告警信息列表
      class ListAlarmMessages < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param Items: 告警信息列表
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              alarmmessage_tmp = AlarmMessage.new
              alarmmessage_tmp.deserialize(i)
              @Items << alarmmessage_tmp
            end
          end
        end
      end

      # ListAlarmMessages请求参数结构体
      class ListAlarmMessagesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param PageNumber: 页码数，用于翻页，最小值为 1。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的条数，最大 100 条
        # @type PageSize: Integer
        # @param StartTime: 起始告警时间, 格式为yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 截止告警时间, 格式yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param AlarmLevel: 告警级别
        # @type AlarmLevel: Integer
        # @param AlarmRecipientId: 告警接收人Id
        # @type AlarmRecipientId: String
        # @param TimeZone: 对于传入和返回的过滤时区, 默认UTC+8
        # @type TimeZone: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :StartTime, :EndTime, :AlarmLevel, :AlarmRecipientId, :TimeZone

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, starttime=nil, endtime=nil, alarmlevel=nil, alarmrecipientid=nil, timezone=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @StartTime = starttime
          @EndTime = endtime
          @AlarmLevel = alarmlevel
          @AlarmRecipientId = alarmrecipientid
          @TimeZone = timezone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AlarmLevel = params['AlarmLevel']
          @AlarmRecipientId = params['AlarmRecipientId']
          @TimeZone = params['TimeZone']
        end
      end

      # ListAlarmMessages返回参数结构体
      class ListAlarmMessagesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警信息列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListAlarmMessages`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListAlarmMessages.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询告警规则列表
      class ListAlarmRulesResult < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页的页数，当前页数
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的条数
        # @type PageSize: Integer
        # @param TotalPageNumber: 分页总页数
        # @type TotalPageNumber: Integer
        # @param TotalCount: 所有的告警规则个数
        # @type TotalCount: Integer
        # @param Items: 告警规则信息列表
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalPageNumber, :TotalCount, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalpagenumber=nil, totalcount=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPageNumber = totalpagenumber
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPageNumber = params['TotalPageNumber']
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              alarmruledata_tmp = AlarmRuleData.new
              alarmruledata_tmp.deserialize(i)
              @Items << alarmruledata_tmp
            end
          end
        end
      end

      # ListCatalogPage
      class ListCatalogPage < TencentCloud::Common::AbstractModel
        # @param Items: 目录记录列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              cataloginfo_tmp = CatalogInfo.new
              cataloginfo_tmp.deserialize(i)
              @Items << cataloginfo_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListCatalog请求参数结构体
      class ListCatalogRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，最大500
        # @type PageSize: Integer
        # @param ParentCatalogId: 父目录ID
        # @type ParentCatalogId: String

        attr_accessor :PageNumber, :PageSize, :ParentCatalogId

        def initialize(pagenumber=nil, pagesize=nil, parentcatalogid=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ParentCatalogId = parentcatalogid
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ParentCatalogId = params['ParentCatalogId']
        end
      end

      # ListCatalog返回参数结构体
      class ListCatalogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListCatalogPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListCatalogPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCodeFolderContents请求参数结构体
      class ListCodeFolderContentsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹path，例如/aaa/bbb/ccc，路径头需带斜杠，根目录传/
        # @type ParentFolderPath: String
        # @param Keyword: 文件夹名称/代码文件名称搜索
        # @type Keyword: String
        # @param OnlyFolderNode: 只查询文件夹
        # @type OnlyFolderNode: Boolean
        # @param OnlyUserSelfScript: 是否只查询用户自己创建的代码文件
        # @type OnlyUserSelfScript: Boolean

        attr_accessor :ProjectId, :ParentFolderPath, :Keyword, :OnlyFolderNode, :OnlyUserSelfScript

        def initialize(projectid=nil, parentfolderpath=nil, keyword=nil, onlyfoldernode=nil, onlyuserselfscript=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @Keyword = keyword
          @OnlyFolderNode = onlyfoldernode
          @OnlyUserSelfScript = onlyuserselfscript
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @Keyword = params['Keyword']
          @OnlyFolderNode = params['OnlyFolderNode']
          @OnlyUserSelfScript = params['OnlyUserSelfScript']
        end
      end

      # ListCodeFolderContents返回参数结构体
      class ListCodeFolderContentsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              codefoldernode_tmp = CodeFolderNode.new
              codefoldernode_tmp.deserialize(i)
              @Data << codefoldernode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCodePermissions请求参数结构体
      class ListCodePermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 返回数量，默认为20，最大值为100。要求500、1000或者更大
        # @type PageSize: Integer
        # @param Resource: 授权资源
        # @type Resource: :class:`Tencentcloud::Wedata.v20250806.models.ExploreFileResource`
        # @param Users: 用户筛选条件
        # @type Users: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Resource, :Users

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, resource=nil, users=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Resource = resource
          @Users = users
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Resource'].nil?
            @Resource = ExploreFileResource.new
            @Resource.deserialize(params['Resource'])
          end
          @Users = params['Users']
        end
      end

      # ListCodePermissions返回参数结构体
      class ListCodePermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 权限列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ExploreFilePermissionsPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ExploreFilePermissionsPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListColumnLineage请求参数结构体
      class ListColumnLineageRequest < TencentCloud::Common::AbstractModel
        # @param TableUniqueId: 表唯一ID
        # @type TableUniqueId: String
        # @param Direction: 血缘方向 INPUT｜OUTPUT
        # @type Direction: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param ColumnName: 列名称
        # @type ColumnName: String
        # @param Platform: 来源：WEDATA|THIRD 默认WEDATA
        # @type Platform: String

        attr_accessor :TableUniqueId, :Direction, :PageNumber, :PageSize, :ColumnName, :Platform

        def initialize(tableuniqueid=nil, direction=nil, pagenumber=nil, pagesize=nil, columnname=nil, platform=nil)
          @TableUniqueId = tableuniqueid
          @Direction = direction
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ColumnName = columnname
          @Platform = platform
        end

        def deserialize(params)
          @TableUniqueId = params['TableUniqueId']
          @Direction = params['Direction']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ColumnName = params['ColumnName']
          @Platform = params['Platform']
        end
      end

      # ListColumnLineage返回参数结构体
      class ListColumnLineageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListLineagePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListLineagePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDataBackfillInstances请求参数结构体
      class ListDataBackfillInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param DataBackfillPlanId: 补录计划Id
        # @type DataBackfillPlanId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :ProjectId, :DataBackfillPlanId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, databackfillplanid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @DataBackfillPlanId = databackfillplanid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DataBackfillPlanId = params['DataBackfillPlanId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDataBackfillInstances返回参数结构体
      class ListDataBackfillInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 单个补录计划下的所有补录实例
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.BackfillInstanceCollection`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BackfillInstanceCollection.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDataSources请求参数结构体
      class ListDataSourcesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageSize: 返回数量，默认10
        # @type PageSize: Integer
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param Name: 数据源名称
        # @type Name: String
        # @param DisplayName: 数据源展示名
        # @type DisplayName: String
        # @param Type: 数据源类型:枚举值

        # - MYSQL
        # - TENCENT_MYSQL
        # - POSTGRE
        # - ORACLE
        # - SQLSERVER
        # - FTP
        # - HIVE
        # - HUDI
        # - HDFS
        # - ICEBERG
        # - KAFKA
        # - HBASE
        # - SPARK
        # - VIRTUAL
        # - TBASE
        # - DB2
        # - DM
        # - GAUSSDB
        # - GBASE
        # - IMPALA
        # - ES
        # - TENCENT_ES
        # - GREENPLUM
        # - PHOENIX
        # - SAP_HANA
        # - SFTP
        # - OCEANBASE
        # - CLICKHOUSE
        # - KUDU
        # - VERTICA
        # - REDIS
        # - COS
        # - DLC
        # - DORIS
        # - CKAFKA
        # - S3
        # - TDSQL
        # - TDSQL_MYSQL
        # - MONGODB
        # - TENCENT_MONGODB
        # - REST_API
        # - SuperSQL
        # - PRESTO
        # - TiDB
        # - StarRocks
        # - Trino
        # - Kyuubi
        # - TCHOUSE_X
        # - TCHOUSE_P
        # - TCHOUSE_C
        # - TCHOUSE_D
        # - INFLUXDB
        # - BIG_QUERY
        # - SSH
        # - BLOB
        # @type Type: Array
        # @param Creator: 创建人
        # @type Creator: String

        attr_accessor :ProjectId, :PageSize, :PageNumber, :Name, :DisplayName, :Type, :Creator

        def initialize(projectid=nil, pagesize=nil, pagenumber=nil, name=nil, displayname=nil, type=nil, creator=nil)
          @ProjectId = projectid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Name = name
          @DisplayName = displayname
          @Type = type
          @Creator = creator
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Type = params['Type']
          @Creator = params['Creator']
        end
      end

      # ListDataSources返回参数结构体
      class ListDataSourcesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ListDatabasePage
      class ListDatabasePage < TencentCloud::Common::AbstractModel
        # @param Items: 数据库记录列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              databaseinfo_tmp = DatabaseInfo.new
              databaseinfo_tmp.deserialize(i)
              @Items << databaseinfo_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListDatabase请求参数结构体
      class ListDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，最大500
        # @type PageSize: Integer
        # @param CatalogName: 目录名称
        # @type CatalogName: String
        # @param DatasourceId: 数据源ID
        # @type DatasourceId: Integer
        # @param Keyword: 数据库名称搜索关键字
        # @type Keyword: String

        attr_accessor :PageNumber, :PageSize, :CatalogName, :DatasourceId, :Keyword

        def initialize(pagenumber=nil, pagesize=nil, catalogname=nil, datasourceid=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @CatalogName = catalogname
          @DatasourceId = datasourceid
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @CatalogName = params['CatalogName']
          @DatasourceId = params['DatasourceId']
          @Keyword = params['Keyword']
        end
      end

      # ListDatabase返回参数结构体
      class ListDatabaseResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListDatabasePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListDatabasePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDownstreamOpsTasks请求参数结构体
      class ListDownstreamOpsTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageNumber: 分页页码
        # @type PageNumber: String
        # @param PageSize: 分页大小
        # @type PageSize: String

        attr_accessor :TaskId, :ProjectId, :PageNumber, :PageSize

        def initialize(taskid=nil, projectid=nil, pagenumber=nil, pagesize=nil)
          @TaskId = taskid
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDownstreamOpsTasks返回参数结构体
      class ListDownstreamOpsTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 下游依赖详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ChildDependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ChildDependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDownstreamTaskInstances请求参数结构体
      class ListDownstreamTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param InstanceKey: **实例唯一标识**
        # @type InstanceKey: String
        # @param TimeZone: **时区** timeZone, 默认UTC+8
        # @type TimeZone: String
        # @param PageNumber: **页码，整型**配合pageSize使用且不能小于1， 默认值1
        # @type PageNumber: Integer
        # @param PageSize: **每页显示的条数，默认为10，最小值为1、最大值为100
        # @type PageSize: Integer

        attr_accessor :ProjectId, :InstanceKey, :TimeZone, :PageNumber, :PageSize

        def initialize(projectid=nil, instancekey=nil, timezone=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @TimeZone = timezone
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @TimeZone = params['TimeZone']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDownstreamTaskInstances返回参数结构体
      class ListDownstreamTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 直接下游实例列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskInstancePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInstancePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDownstreamTasks请求参数结构体
      class ListDownstreamTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param PageNumber: 分页大小
        # @type PageNumber: Integer
        # @param PageSize: 分页页码
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDownstreamTasks返回参数结构体
      class ListDownstreamTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 下游依赖详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDownstreamTriggerTasks请求参数结构体
      class ListDownstreamTriggerTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDownstreamTriggerTasks返回参数结构体
      class ListDownstreamTriggerTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 下游依赖详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerDependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerDependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListLineagePage
      class ListLineagePage < TencentCloud::Common::AbstractModel
        # @param Items: 血缘记录列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              lineagenodeinfo_tmp = LineageNodeInfo.new
              lineagenodeinfo_tmp.deserialize(i)
              @Items << lineagenodeinfo_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListLineage请求参数结构体
      class ListLineageRequest < TencentCloud::Common::AbstractModel
        # @param ResourceUniqueId: 实体唯一ID
        # @type ResourceUniqueId: String
        # @param ResourceType: 实体类型 TABLE|METRIC|MODEL|SERVICE|COLUMN
        # @type ResourceType: String
        # @param Direction: 血缘方向 INPUT｜OUTPUT
        # @type Direction: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Platform: 来源：WEDATA|THIRD 默认WEDATA
        # @type Platform: String

        attr_accessor :ResourceUniqueId, :ResourceType, :Direction, :PageNumber, :PageSize, :Platform

        def initialize(resourceuniqueid=nil, resourcetype=nil, direction=nil, pagenumber=nil, pagesize=nil, platform=nil)
          @ResourceUniqueId = resourceuniqueid
          @ResourceType = resourcetype
          @Direction = direction
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Platform = platform
        end

        def deserialize(params)
          @ResourceUniqueId = params['ResourceUniqueId']
          @ResourceType = params['ResourceType']
          @Direction = params['Direction']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Platform = params['Platform']
        end
      end

      # ListLineage返回参数结构体
      class ListLineageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListLineagePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListLineagePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListOpsAlarmRules请求参数结构体
      class ListOpsAlarmRulesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 分页的页数，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的条数，默认为20，最小值为1、最大值为200
        # @type PageSize: Integer
        # @param MonitorObjectType: 监控对象类型, 任务维度监控： 可按照任务/工作流/项目来配置：1.任务、2.工作流、3.项目（默认为1.任务） 项目维度监控： 项目整体任务波动告警， 7：项目波动监控告警
        # @type MonitorObjectType: Integer
        # @param TaskId: 根据任务id查询告警规则
        # @type TaskId: String
        # @param AlarmType: 查询配置对应告警类型的告警规则
        # 告警规则监控类型 failure：失败告警 ；overtime：超时告警 success：成功告警; backTrackingOrRerunSuccess: 补录重跑成功告警 backTrackingOrRerunFailure：补录重跑失败告警；
        # 项目波动告警
        # projectFailureInstanceUpwardFluctuationAlarm： 当天失败实例数向上波动率超过阀值告警； projectSuccessInstanceDownwardFluctuationAlarm：当天成功实例数向下波动率超过阀值告警；
        # 离线集成任务对账告警： reconciliationFailure： 离线对账任务失败告警 reconciliationOvertime： 离线对账任务运行超时告警 reconciliationMismatch： 数据对账任务不一致条数超过阀值告警
        # @type AlarmType: String
        # @param AlarmLevel: 查询配置了对应告警级别的告警规则
        # 告警级别 1.普通、2.重要、3.紧急
        # @type AlarmLevel: Integer
        # @param AlarmRecipientId: 查询配置对应告警接收人的告警规则
        # @type AlarmRecipientId: String
        # @param Keyword: 根据告警规则id/规则名称查询对应的告警规则
        # @type Keyword: String
        # @param CreateUserUin: 告警规则创建人过滤
        # @type CreateUserUin: String
        # @param CreateTimeFrom: 告警规则创建时间范围起始时间, 格式如2025-08-17 00:00:00
        # @type CreateTimeFrom: String
        # @param CreateTimeTo: 告警规则创建时间范围结束时间，格式如"2025-08-26 23:59:59"
        # @type CreateTimeTo: String
        # @param UpdateTimeFrom: 最后更新时间过滤告警规则， 格式如"2025-08-26 00:00:00"
        # @type UpdateTimeFrom: String
        # @param UpdateTimeTo: 最后更新时间过滤告警规则 格式如： "2025-08-26 23:59:59"
        # @type UpdateTimeTo: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :MonitorObjectType, :TaskId, :AlarmType, :AlarmLevel, :AlarmRecipientId, :Keyword, :CreateUserUin, :CreateTimeFrom, :CreateTimeTo, :UpdateTimeFrom, :UpdateTimeTo

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, monitorobjecttype=nil, taskid=nil, alarmtype=nil, alarmlevel=nil, alarmrecipientid=nil, keyword=nil, createuseruin=nil, createtimefrom=nil, createtimeto=nil, updatetimefrom=nil, updatetimeto=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @MonitorObjectType = monitorobjecttype
          @TaskId = taskid
          @AlarmType = alarmtype
          @AlarmLevel = alarmlevel
          @AlarmRecipientId = alarmrecipientid
          @Keyword = keyword
          @CreateUserUin = createuseruin
          @CreateTimeFrom = createtimefrom
          @CreateTimeTo = createtimeto
          @UpdateTimeFrom = updatetimefrom
          @UpdateTimeTo = updatetimeto
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @MonitorObjectType = params['MonitorObjectType']
          @TaskId = params['TaskId']
          @AlarmType = params['AlarmType']
          @AlarmLevel = params['AlarmLevel']
          @AlarmRecipientId = params['AlarmRecipientId']
          @Keyword = params['Keyword']
          @CreateUserUin = params['CreateUserUin']
          @CreateTimeFrom = params['CreateTimeFrom']
          @CreateTimeTo = params['CreateTimeTo']
          @UpdateTimeFrom = params['UpdateTimeFrom']
          @UpdateTimeTo = params['UpdateTimeTo']
        end
      end

      # ListOpsAlarmRules返回参数结构体
      class ListOpsAlarmRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警信息信息响应
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListAlarmRulesResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListAlarmRulesResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 任务列表分页
      class ListOpsTasksPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer

        attr_accessor :TotalCount, :TotalPageNumber, :Items, :PageNumber, :PageSize

        def initialize(totalcount=nil, totalpagenumber=nil, items=nil, pagenumber=nil, pagesize=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskopsinfo_tmp = TaskOpsInfo.new
              taskopsinfo_tmp.deserialize(i)
              @Items << taskopsinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListOpsTasks请求参数结构体
      class ListOpsTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageSize: 分页大小
        # @type PageSize: String
        # @param PageNumber: 分页页码
        # @type PageNumber: String
        # @param TaskTypeId: 任务类型Id
        #  - 20：通用数据同步
        #  - 25：ETLTaskType
        #  - 26：ETLTaskType
        #  - 30：python
        #  - 31：pyspark
        #  - 34：HiveSQLTaskType
        #  - 35：shell
        #  - 36：SparkSQLTaskType
        #  - 21：JDBCSQLTaskType
        #  - 32：DLCTaskType
        #  - 33：ImpalaTaskType
        #  - 40：CDWTaskType
        #  - 41：kettle
        #  - 46：DLCSparkTaskType
        #  - 47：TiOne机器学习
        #  - 48：TrinoTaskType
        #  - 50：DLCPyspark39：spark
        #  - 92：mr
        #  - 38：shell脚本
        #  - 70：hivesql脚本
        #  - 1000：自定义业务通用
        # @type TaskTypeId: String
        # @param WorkflowId: 工作流Id
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param OwnerUin: 责任人id
        # @type OwnerUin: String
        # @param FolderId: 文件夹Id
        # @type FolderId: String
        # @param SourceServiceId: 数据源id
        # @type SourceServiceId: String
        # @param TargetServiceId: 目标数据源id
        # @type TargetServiceId: String
        # @param ExecutorGroupId: 资源组id
        # @type ExecutorGroupId: String
        # @param CycleType: 任务周期类型
        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # @type CycleType: String
        # @param Status: 任务状态:
        # - Y: 运行
        # - F: 停止
        # - O: 冻结
        # - T: 停止中
        # - INVALID: 已失效
        # @type Status: String
        # @param TimeZone: 时区, 默认默认UTC+8
        # @type TimeZone: String

        attr_accessor :ProjectId, :PageSize, :PageNumber, :TaskTypeId, :WorkflowId, :WorkflowName, :OwnerUin, :FolderId, :SourceServiceId, :TargetServiceId, :ExecutorGroupId, :CycleType, :Status, :TimeZone

        def initialize(projectid=nil, pagesize=nil, pagenumber=nil, tasktypeid=nil, workflowid=nil, workflowname=nil, owneruin=nil, folderid=nil, sourceserviceid=nil, targetserviceid=nil, executorgroupid=nil, cycletype=nil, status=nil, timezone=nil)
          @ProjectId = projectid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TaskTypeId = tasktypeid
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @FolderId = folderid
          @SourceServiceId = sourceserviceid
          @TargetServiceId = targetserviceid
          @ExecutorGroupId = executorgroupid
          @CycleType = cycletype
          @Status = status
          @TimeZone = timezone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @FolderId = params['FolderId']
          @SourceServiceId = params['SourceServiceId']
          @TargetServiceId = params['TargetServiceId']
          @ExecutorGroupId = params['ExecutorGroupId']
          @CycleType = params['CycleType']
          @Status = params['Status']
          @TimeZone = params['TimeZone']
        end
      end

      # ListOpsTasks返回参数结构体
      class ListOpsTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListOpsTasksPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListOpsTasksPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListOpsTriggerWorkflows请求参数结构体
      class ListOpsTriggerWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param Filters: 过滤参数,工作流名称或ID查询名称：Keyword,工作流ID查询名称：WorkflowId,文件夹查询名称：FolderId,负责人查询名称：InChargeUin
        # @type Filters: Array
        # @param OrderFields: 排序字段，排序字段名称 如下 任务数：TaskCount
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
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
        end
      end

      # ListOpsTriggerWorkflows返回参数结构体
      class ListOpsTriggerWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListOpsWorkflows请求参数结构体
      class ListOpsWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param FolderId: 文件Id
        # @type FolderId: String
        # @param Status: 工作流状态筛选
        # * ALL_RUNNING : 全部调度中
        # * ALL_FREEZED : 全部已暂停
        # * ALL_STOPPTED : 全部已下线
        # * PART_RUNNING : 部分调度中
        # * ALL_NO_RUNNING : 全部未调度
        # * ALL_INVALID : 全部已失效
        # @type Status: String
        # @param OwnerUin: 负责人Id
        # @type OwnerUin: String
        # @param WorkflowType: 工作流类型筛选, 支持值 Cycle或Manual. 默认只查询 Cycle
        # @type WorkflowType: String
        # @param KeyWord: 工作流关键词过滤，支持工作流 Id/name 模糊匹配
        # @type KeyWord: String
        # @param SortItem: 排序项，可选CreateTime、TaskCount
        # @type SortItem: String
        # @param SortType: 排序方式，DESC或ASC, 大写
        # @type SortType: String
        # @param CreateUserUin: 创建人Id
        # @type CreateUserUin: String
        # @param ModifyTime: 更新时间，格式yyyy-MM-dd HH:mm:ss
        # @type ModifyTime: String
        # @param CreateTime: 创建时间，格式yyyy-MM-dd HH:mm:ss
        # @type CreateTime: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :FolderId, :Status, :OwnerUin, :WorkflowType, :KeyWord, :SortItem, :SortType, :CreateUserUin, :ModifyTime, :CreateTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, folderid=nil, status=nil, owneruin=nil, workflowtype=nil, keyword=nil, sortitem=nil, sorttype=nil, createuseruin=nil, modifytime=nil, createtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @FolderId = folderid
          @Status = status
          @OwnerUin = owneruin
          @WorkflowType = workflowtype
          @KeyWord = keyword
          @SortItem = sortitem
          @SortType = sorttype
          @CreateUserUin = createuseruin
          @ModifyTime = modifytime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @FolderId = params['FolderId']
          @Status = params['Status']
          @OwnerUin = params['OwnerUin']
          @WorkflowType = params['WorkflowType']
          @KeyWord = params['KeyWord']
          @SortItem = params['SortItem']
          @SortType = params['SortType']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
        end
      end

      # ListOpsWorkflows返回参数结构体
      class ListOpsWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsWorkflows`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsWorkflows.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListLineagePage
      class ListProcessLineagePage < TencentCloud::Common::AbstractModel
        # @param Items: 血缘pair列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              lineagepair_tmp = LineagePair.new
              lineagepair_tmp.deserialize(i)
              @Items << lineagepair_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListProcessLineage请求参数结构体
      class ListProcessLineageRequest < TencentCloud::Common::AbstractModel
        # @param ProcessId: 任务唯一ID
        # @type ProcessId: String
        # @param ProcessType: 任务类型    //调度任务     SCHEDULE_TASK,     //集成任务     INTEGRATION_TASK,     //第三方上报     THIRD_REPORT,     //数据建模     TABLE_MODEL,     //模型创建指标     MODEL_METRIC,     //原子指标创建衍生指标     METRIC_METRIC,     //数据服务     DATA_SERVICE
        # @type ProcessType: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param Platform: 来源：WEDATA|THIRD 默认WEDATA
        # @type Platform: String

        attr_accessor :ProcessId, :ProcessType, :PageNumber, :PageSize, :Platform

        def initialize(processid=nil, processtype=nil, pagenumber=nil, pagesize=nil, platform=nil)
          @ProcessId = processid
          @ProcessType = processtype
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Platform = platform
        end

        def deserialize(params)
          @ProcessId = params['ProcessId']
          @ProcessType = params['ProcessType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Platform = params['Platform']
        end
      end

      # ListProcessLineage返回参数结构体
      class ListProcessLineageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListProcessLineagePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListProcessLineagePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListProjectMembers请求参数结构体
      class ListProjectMembersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param UserName: 使用成员名过滤，支持模糊查询
        # @type UserName: String
        # @param UserUin: 使用成员id过滤，支持模糊查询
        # @type UserUin: String
        # @param PageSize: 分页大小，默认第一页
        # @type PageSize: Integer
        # @param PageNumber: 分页条数，默认10条
        # @type PageNumber: Integer

        attr_accessor :ProjectId, :UserName, :UserUin, :PageSize, :PageNumber

        def initialize(projectid=nil, username=nil, useruin=nil, pagesize=nil, pagenumber=nil)
          @ProjectId = projectid
          @UserName = username
          @UserUin = useruin
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserName = params['UserName']
          @UserUin = params['UserUin']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ListProjectMembers返回参数结构体
      class ListProjectMembersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 项目列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectUsersBrief`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectUsersBrief.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListProjectRoles请求参数结构体
      class ListProjectRolesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param RoleDisplayName: 角色中文展示名模糊查询，只能传一个值
        # @type RoleDisplayName: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页信息
        # @type PageSize: Integer

        attr_accessor :ProjectId, :RoleDisplayName, :PageNumber, :PageSize

        def initialize(projectid=nil, roledisplayname=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @RoleDisplayName = roledisplayname
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RoleDisplayName = params['RoleDisplayName']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListProjectRoles返回参数结构体
      class ListProjectRolesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 角色列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.PageRoles`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PageRoles.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListProjects请求参数结构体
      class ListProjectsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目id列表
        # @type ProjectIds: Array
        # @param ProjectName: 项目名或项目唯一标识名，支持模糊搜索
        # @type ProjectName: String
        # @param Status: 项目状态，可选值：0（禁用）、1（正常）
        # @type Status: Integer
        # @param ProjectModel: 项目模式，可选值：SIMPLE、STANDARD
        # @type ProjectModel: String
        # @param PageNumber: 请求的数据页数，用于翻页
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的条数，默认为 10 条
        # @type PageSize: Integer

        attr_accessor :ProjectIds, :ProjectName, :Status, :ProjectModel, :PageNumber, :PageSize

        def initialize(projectids=nil, projectname=nil, status=nil, projectmodel=nil, pagenumber=nil, pagesize=nil)
          @ProjectIds = projectids
          @ProjectName = projectname
          @Status = status
          @ProjectModel = projectmodel
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @ProjectName = params['ProjectName']
          @Status = params['Status']
          @ProjectModel = params['ProjectModel']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListProjects返回参数结构体
      class ListProjectsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 项目列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ProjectBrief`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProjectBrief.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 规则组执行结果
      class ListQualityRuleGroupExecResult < TencentCloud::Common::AbstractModel
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
        # @param EngineType: 实际执行引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String
        # @param RuleExecResultVOList: 规则执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleExecResultVOList: Array
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param RuleGroupTableId: 本地规则表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupTableId: Integer
        # @param ClusterDeployType: 集群部署类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDeployType: String
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DsEnvType: 数据库所属环境，0.未定义，1.生产 2.开发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DsEnvType: Integer
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param InstanceStatus: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param StartTime: 实例运行的开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param FinishTime: 实例运行的结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishTime: String
        # @param RuleGroupName: 监控名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupName: String
        # @param RuleGroupExist: 判断是否屏蔽监控 0.屏蔽 1.不屏蔽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupExist: Integer
        # @param BizCatalogName: 类目名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizCatalogName: String
        # @param BizCatalogId: 类目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizCatalogId: String
        # @param FailMsg: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMsg: String

        attr_accessor :RuleGroupExecId, :RuleGroupId, :TriggerType, :ExecTime, :Status, :AlarmRuleCount, :TotalRuleCount, :TableOwnerName, :TableName, :TableId, :DatabaseId, :DatasourceId, :Permission, :ExecDetail, :EngineType, :RuleExecResultVOList, :DatabaseName, :RuleGroupTableId, :ClusterDeployType, :InstanceId, :DsEnvType, :ProjectId, :ProjectName, :InstanceStatus, :StartTime, :FinishTime, :RuleGroupName, :RuleGroupExist, :BizCatalogName, :BizCatalogId, :FailMsg

        def initialize(rulegroupexecid=nil, rulegroupid=nil, triggertype=nil, exectime=nil, status=nil, alarmrulecount=nil, totalrulecount=nil, tableownername=nil, tablename=nil, tableid=nil, databaseid=nil, datasourceid=nil, permission=nil, execdetail=nil, enginetype=nil, ruleexecresultvolist=nil, databasename=nil, rulegrouptableid=nil, clusterdeploytype=nil, instanceid=nil, dsenvtype=nil, projectid=nil, projectname=nil, instancestatus=nil, starttime=nil, finishtime=nil, rulegroupname=nil, rulegroupexist=nil, bizcatalogname=nil, bizcatalogid=nil, failmsg=nil)
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
          @EngineType = enginetype
          @RuleExecResultVOList = ruleexecresultvolist
          @DatabaseName = databasename
          @RuleGroupTableId = rulegrouptableid
          @ClusterDeployType = clusterdeploytype
          @InstanceId = instanceid
          @DsEnvType = dsenvtype
          @ProjectId = projectid
          @ProjectName = projectname
          @InstanceStatus = instancestatus
          @StartTime = starttime
          @FinishTime = finishtime
          @RuleGroupName = rulegroupname
          @RuleGroupExist = rulegroupexist
          @BizCatalogName = bizcatalogname
          @BizCatalogId = bizcatalogid
          @FailMsg = failmsg
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
          @EngineType = params['EngineType']
          unless params['RuleExecResultVOList'].nil?
            @RuleExecResultVOList = []
            params['RuleExecResultVOList'].each do |i|
              qualityruleexecresult_tmp = QualityRuleExecResult.new
              qualityruleexecresult_tmp.deserialize(i)
              @RuleExecResultVOList << qualityruleexecresult_tmp
            end
          end
          @DatabaseName = params['DatabaseName']
          @RuleGroupTableId = params['RuleGroupTableId']
          @ClusterDeployType = params['ClusterDeployType']
          @InstanceId = params['InstanceId']
          @DsEnvType = params['DsEnvType']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @InstanceStatus = params['InstanceStatus']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @RuleGroupName = params['RuleGroupName']
          @RuleGroupExist = params['RuleGroupExist']
          @BizCatalogName = params['BizCatalogName']
          @BizCatalogId = params['BizCatalogId']
          @FailMsg = params['FailMsg']
        end
      end

      # 规则组执行结果分页
      class ListQualityRuleGroupExecResultPage < TencentCloud::Common::AbstractModel
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
              listqualityrulegroupexecresult_tmp = ListQualityRuleGroupExecResult.new
              listqualityrulegroupexecresult_tmp.deserialize(i)
              @Items << listqualityrulegroupexecresult_tmp
            end
          end
        end
      end

      # ListQualityRuleGroupExecResultsByPage请求参数结构体
      class ListQualityRuleGroupExecResultsByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 分页序号，默认1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认10
        # @type PageSize: Integer
        # @param Filters: 过滤条件，支持的过滤条件如下：
        # 1. GroupType
        # 描述：规则组类型，标识规则组所属的分类。
        # 取值：DEFAULT - 默认类型；WORKFLOW_NODE - 编排空间工作流节点类型

        # 2. InstanceId
        # 描述：规则组执行实例ID。
        # 取值：字符串

        # 3. ParentInstanceId
        # 描述：父实例ID。
        # 取值：字符串

        # 4. LifeCycleRunNum
        # 描述：生命周期运行号。
        # 取值：字符串

        # 5. InstanceStatus
        # 描述：实例状态。质量侧的实例状态，一个状态对应调度侧多个状态，具体参考取值说明
        # 取值：
        # 等待运行 -
        # ["INITIAL", "EVENT_LISTENING", "DEPENDENCE", "ALLOCATED", "LAUNCHED", "BEFORE_ASPECT", "ISSUED"]；
        # 运行中 - ["RUNNING", "AFTER_ASPECT", "WAITING_AFTER_ASPECT"]
        # 失败 - ["FAILED", "EXPIRED", "KILL", "KILLING", "PENDING"]
        # 成功 - ["COMPLETED"]


        # 6. DatasourceId
        # 描述：数据源ID。
        # 取值：字符串

        # 7. DatasourceType
        # 描述：数据源类型。
        # 取值：1 - MYSQL；2 - HIVE；3 - DLC；4 - GBASE；5 - TCHouse-P/CDW；6 - ICEBERG；7 - DORIS；8 - TCHouse-D；9 - EMR_STARROCKS；10 - TBDS_STARROCKS；11 - TCHouse-X

        # 8. DatabaseName
        # 描述：数据库名称。
        # 取值：字符串

        # 9. DatabaseId
        # 描述：数据库ID。
        # 取值：字符串

        # 10. SchemaName
        # 描述：Schema名称。
        # 取值：字符串

        # 11. ReceiverFlag
        # 描述：是否为当前登录用户的订阅。
        # 取值：true - 是；false - 否

        # 12. TableName
        # 描述：数据表名称，支持模糊匹配。
        # 取值：字符串

        # 13. RuleGroupName
        # 描述：规则组名称。
        # 取值：字符串

        # 14. RuleGroupExecId
        # 描述：规则组执行ID。
        # 取值：整数

        # 15. RuleGroupTableId
        # 描述：规则组表ID。
        # 取值：整数

        # 16. Keyword
        # 描述：关键字搜索，支持规则组执行Id、表名称、表负责人模糊搜索。如果keyword是纯数字，默认只匹配规则组执行Id。
        # 取值：字符串

        # 17. StartTime
        # 描述：实际运行时间，开始时间。
        # 取值：Unix时间戳（秒）

        # 18. EndTime
        # 描述：实际运行时间，结束时间。
        # 取值：Unix时间戳（秒）

        # 19. ScheduledStartTime
        # 描述：计划调度时间，开始时间。
        # 取值：Unix时间戳（秒）

        # 20. ScheduledEndTime
        # 描述：计划调度时间，结束时间。
        # 取值：Unix时间戳（秒）

        # 21. DsJobId
        # 描述：数据源任务ID。
        # 取值：字符串

        # 22. TriggerType
        # 描述：触发类型。
        # 取值：1 - 手动触发；2 - 调度事中触发；3 - 周期调度触发；

        # 23. Status
        # 描述：规则组执行状态。
        # 取值：0 - 初始状态，未提交；1 - 已提交；2 - 检测中；3 - 正常；4 - 异常；5 - 下发中；6 - 执行链路异常；7 - 未检测，没有执行结果；

        # 24. TableIds
        # 描述：数据表ID集合。
        # 取值：字符串，支持多个值（OR关系）

        # 25. RuleGroupId
        # 描述：规则组ID。
        # 取值：整数

        # 26. BizCatalogIds
        # 描述：业务目录ID。
        # 取值：整数，支持多个值（OR关系）

        # 27. CatalogName
        # 描述：数据目录名称。
        # 取值：字符串
        # @type Filters: Array
        # @param OrderFields: 通用排序，
        # 支持的排序字段：
        # CreateTime - 按创建时间排序
        # UpdateTime - 按更新时间排序（默认）
        # 排序方向：
        # 1 - 升序（ASC）
        # 2 - 降序（DESC）
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
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
        end
      end

      # ListQualityRuleGroupExecResultsByPage返回参数结构体
      class ListQualityRuleGroupExecResultsByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则组执行结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListQualityRuleGroupExecResultPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListQualityRuleGroupExecResultPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQualityRuleGroups请求参数结构体
      class ListQualityRuleGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageNumber: 分页序号，默认1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认10
        # @type PageSize: Integer
        # @param Filters: 过滤条件,每次请求的Filters的上限为10，Filter.Values的上限为5，可选过滤条件如下：

        # 1. RuleGroupId
        # 描述：规则组ID。
        # 取值：整数

        # 2. RuleGroupName
        # 描述：规则组名称。
        # 取值：字符串

        # 3. TableId
        # 描述：数据源表id
        # 取值：字符串

        # 4. TableName
        # 描述：数据源表名称，支持模糊匹配。
        # 取值：字符串

        # 5. TableOwnerName
        # 描述：表负责人名称，支持模糊匹配。
        # 取值：字符串


        # 6. DatasourceType
        # 描述：数据源类型。
        # 取值：1 - MYSQL；2 - HIVE；3 - DLC；4 - GBASE；5 - TCHouse-P/CDW；6 - ICEBERG；7 - DORIS；8 - TCHouse-D；9 - EMR_STARROCKS；10 - TBDS_STARROCKS；11 - TCHouse-X

        # 7. DatasourceId
        # 描述：数据源ID。
        # 取值：字符串

        # 8. DatabaseName
        # 描述：数据库名称。
        # 取值：字符串

        # 9. SchemaName
        # 描述：Schema名称。
        # 取值：字符串

        # 10. CatalogName
        # 描述：数据目录名称。
        # 取值：字符串

        # @type Filters: Array
        # @param OrderFields: 通用排序，支持的排序字段：
        # CreateTime - 按创建时间排序
        # UpdateTime - 按更新时间排序（默认）
        # 排序方向：
        # 1 - 升序（ASC）
        # 2 - 降序（DESC）
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
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
        end
      end

      # ListQualityRuleGroups返回参数结构体
      class ListQualityRuleGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityRuleGroupPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQualityRuleGroupsTable请求参数结构体
      class ListQualityRuleGroupsTableRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param PageNumber: 分页序号，默认1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认10
        # @type PageSize: Integer
        # @param Filters: 过滤条件, 可选过滤条件如下：
        # 1. GroupType
        # 描述：规则组类型，标识规则组所属的分类。
        # 取值：DEFAULT - 默认类型；DASHBOARD-仪表盘类型；WORKFLOW_NODE - 编排空间工作流节点类型

        # 2. DeployStatus
        # 描述：规则组部署状态，主要用于WORKFLOW_NODE类型的规则组
        # 取值：PRODUCTION - 生产环境；DRAFT - 草稿套

        # 3. RuleGroupName
        # 描述：规则组名称。
        # 取值：字符串

        # 4. RuleGroupId
        # 描述：规则组ID。
        # 取值：整数

        # 5. TableOwnerName
        # 描述：表负责人名称，支持模糊匹配。
        # 取值：字符串

        # 6. TableOwnerAccount
        # 描述：表负责人账号ID。
        # 取值：整数，支持多个值（OR关系）

        # 7. TableOwnerFlag
        # 描述：是否为当前表负责人。
        # 取值：true - 是；false - 否

        # 8. DatasourceType
        # 描述：数据源类型。
        # 取值：1 - MYSQL；2 - HIVE；3 - DLC；4 - GBASE；5 - TCHouse-P/CDW；6 - ICEBERG；7 - DORIS；8 - TCHouse-D；9 - EMR_STARROCKS；10 - TBDS_STARROCKS；11 - TCHouse-X

        # 9. DatasourceId
        # 描述：数据源ID。
        # 取值：字符串

        # 10. DatabaseName
        # 描述：数据库名称。
        # 取值：字符串

        # 11. SchemaName
        # 描述：Schema名称。
        # 取值：字符串

        # 12. TableName
        # 描述：数据源表名称，支持模糊匹配。
        # 取值：字符串

        # 13. BizCatalogIds
        # 描述：业务目录ID。
        # 取值：整数，支持多个值（OR关系）

        # 14. CatalogName
        # 描述：数据目录名称。
        # 取值：字符串

        # @type Filters: Array
        # @param OrderFields: 通用排序，
        # 支持的排序字段：
        # UpdateTime - 按更新时间排序（默认）
        # 排序方向：
        # 1 - 升序（ASC）
        # 2 - 降序（DESC）
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
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
        end
      end

      # ListQualityRuleGroupsTable返回参数结构体
      class ListQualityRuleGroupsTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: 监控对象列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupsTableVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityRuleGroupsTableVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQualityRuleTemplates请求参数结构体
      class ListQualityRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 工作空间ID
        # @type ProjectId: String
        # @param PageNumber: 当前页，默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页记录数，默认10
        # @type PageSize: Integer
        # @param OrderFields: 通用排序，
        # 支持的排序字段：
        # CitationCount - 按引用数量排序
        # UpdateTime - 按更新时间排序
        # 排序方向：
        # 1 - 升序（ASC）
        # 2 - 降序（DESC）
        # @type OrderFields: Array
        # @param Filters: 通用过滤条件
        # 1. Id
        # 描述：模板ID。
        # 取值：模板的唯一标识

        # 2. Keyword
        # 描述：关键字搜索，支持模板名称模糊搜索。
        # 取值：字符串

        # 3. Type
        # 描述：模板类型。
        # 取值：1 - 系统模板；2 - 自定义模板；支持多个值（OR关系）

        # 4. QualityDim
        # 描述：质量检测维度。
        # 取值：1 - 准确性；2 - 唯一性；3 - 完整性；4 - 一致性；5 - 及时性；6 - 有效性；支持多个值（OR关系）

        # 5. SourceObjectType
        # 描述：规则适用的源数据对象类型。
        # 取值：1 - 常量；2 - 离线表级；3 - 离线字段级；4 - 库级；支持多个值（OR关系）

        # 6. SourceEngineTypes
        # 描述：模板适用的源数据引擎类型。
        # 取值：1 - MySQL；2 - Hive；4 - Spark；8 - Livy；16 - DLC；32 - Gbase；64 - TCHouse-P；128 - Doris；256 - TCHouse-D；512 - EMR_StarRocks；1024 - TCHouse-X；支持多个值（OR关系）
        # @type Filters: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :OrderFields, :Filters

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, orderfields=nil, filters=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
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

      # ListQualityRuleTemplates返回参数结构体
      class ListQualityRuleTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleTemplatePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityRuleTemplatePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQualityRules请求参数结构体
      class ListQualityRulesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 分页序号，默认1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认10
        # @type PageSize: Integer
        # @param Filters: 过滤条件，可选过滤条件如下：
        # 1. GroupType
        # 描述：规则组类型，标识规则组所属的分类。
        # 取值：DEFAULT - 默认类型，DASHBOARD - 仪表盘类型，WORKFLOW_NODE - 编排空间工作流节点类型

        # 2. Operator
        # 描述：创建人ID。
        # 取值：用户ID，支持多个值（OR关系）

        # 3. Keyword
        # 描述：关键字搜索，支持规则名称模糊搜索。
        # 取值：字符串

        # 4. RuleName
        # 描述：规则名称。
        # 取值：字符串

        # 5. Type
        # 描述：规则类型。
        # 取值：1 - 系统模板，2 - 自定义SQL，3 - 自定义模板

        # 6. SourceObjectValue
        # 描述：数据对象，可以是字段名称或表名称。
        # 取值：字符串，支持多个值（OR关系）

        # 7. RuleGroupId
        # 描述：规则所属的规则组ID。
        # 取值：整数

        # 8. RuleGroupName
        # 描述：规则所属的规则组名称。
        # 取值：字符串

        # 9. TableId
        # 描述：数据表ID。
        # 取值：字符串，支持多个值（OR关系）

        # 10. TableName
        # 描述：数据表名称。
        # 取值：字符串

        # 11. SourceEngineType
        # 描述：数据源引擎类型。
        # 取值：整数，1 - MYSQL；2 - HIVE；4 - SPARK；8 - LIVY；16 - DLC；32 - GBASE；64 - TCHouse-P；128 - DORIS；256 - TCHouse-D；512 - EMR_STARROCKS；1024 - TCHouse-X；支持多个值（OR关系）

        # 12. DatasourceId
        # 描述：数据源ID。
        # 取值：整数

        # 13. DatasourceType
        # 描述：数据源类型。
        # 取值：1 - MYSQL；2 - HIVE；3 - DLC；4 - GBASE；5 - TCHouse-P/CDW；6 - ICEBERG；7 - DORIS；8 - TCHouse-D；9 - EMR_STARROCKS；10 - TBDS_STARROCKS；11 - TCHouse-X

        # 14. DatabaseName
        # 描述：数据库名称。
        # 取值：字符串

        # 15. SchemaName
        # 描述：Schema名称。
        # 取值：字符串

        # 16. RuleIds
        # 描述：规则ID集合。
        # 取值：整数，支持多个值（OR关系）

        # 17. RuleTemplateId
        # 描述：规则模板ID。
        # 取值：整数，支持多个值（OR关系）

        # 18. ReceiverUserId / ReceiverUserIdStr
        # 描述：订阅人用户ID。
        # 取值：整数

        # 19. StartTime
        # 描述：查询开始时间。
        # 取值：Unix时间戳（秒）

        # 20. EndTime
        # 描述：查询结束时间。
        # 取值：Unix时间戳（秒）

        # 21. ReceiverFlag
        # 描述：是否为当前登录用户的订阅。
        # 取值：
        # true - 是
        # false - 否

        # 22. MonitorType
        # 描述：规则的监控执行方式。
        # 取值：1 - 未配置；2 - 关联生产调度；3 - 离线周期检测；支持多个值（OR关系）
        # 支持多个值（OR关系）

        # 23. MonitorStatus
        # 描述：规则的监控状态。
        # 取值：
        # true - 已启用
        # false - 已禁用

        # 24. BizCatalogIds
        # 描述：业务目录ID。
        # 取值：整数，支持多个值（OR关系）

        # 25. CatalogName
        # 描述：数据目录名称。
        # 取值：字符串

        # 26. DeployStatus
        # 描述：规则部署状态，主要用于WORKFLOW_NODE类型的规则组（监控）上
        # 取值：PRODUCTION - 生产环境，DRAFT - 草稿态
        # @type Filters: Array
        # @param OrderFields: 通用排序，
        # 支持的排序字段：
        # CreateTime - 按创建时间排序
        # UpdateTime - 按更新时间排序（默认）
        # 排序方向：
        # 1 - 升序（ASC）
        # 2 - 降序（DESC）
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Filters, :OrderFields

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderFields = orderfields
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
        end
      end

      # ListQualityRules返回参数结构体
      class ListQualityRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 规则质量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.QualityRulePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QualityRulePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListResourceFiles请求参数结构体
      class ListResourceFilesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 数据页数，大于等于1。默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条。默认10
        # @type PageSize: Integer
        # @param ResourceName: 资源文件名称(模糊搜索关键词)
        # @type ResourceName: String
        # @param ParentFolderPath: 资源文件所属文件夹路径(如/a/b/c，查询c文件夹下的资源文件)
        # @type ParentFolderPath: String
        # @param CreateUserUin: 创建人ID, 可通过DescribeCurrentUserInfo接口获取
        # @type CreateUserUin: String
        # @param ModifyTimeStart: 更新时间范围,开始时间, 格式yyyy-MM-dd HH:mm:ss
        # @type ModifyTimeStart: String
        # @param ModifyTimeEnd: 更新时间范围,结束时间, 格式yyyy-MM-dd HH:mm:ss
        # @type ModifyTimeEnd: String
        # @param CreateTimeStart: 创建时间范围,开始时间, 格式yyyy-MM-dd HH:mm:ss
        # @type CreateTimeStart: String
        # @param CreateTimeEnd: 创建时间范围,结束时间, 格式yyyy-MM-dd HH:mm:ss
        # @type CreateTimeEnd: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :ResourceName, :ParentFolderPath, :CreateUserUin, :ModifyTimeStart, :ModifyTimeEnd, :CreateTimeStart, :CreateTimeEnd

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, resourcename=nil, parentfolderpath=nil, createuseruin=nil, modifytimestart=nil, modifytimeend=nil, createtimestart=nil, createtimeend=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ResourceName = resourcename
          @ParentFolderPath = parentfolderpath
          @CreateUserUin = createuseruin
          @ModifyTimeStart = modifytimestart
          @ModifyTimeEnd = modifytimeend
          @CreateTimeStart = createtimestart
          @CreateTimeEnd = createtimeend
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ResourceName = params['ResourceName']
          @ParentFolderPath = params['ParentFolderPath']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTimeStart = params['ModifyTimeStart']
          @ModifyTimeEnd = params['ModifyTimeEnd']
          @CreateTimeStart = params['CreateTimeStart']
          @CreateTimeEnd = params['CreateTimeEnd']
        end
      end

      # ListResourceFiles返回参数结构体
      class ListResourceFilesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取资源文件列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceFilePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceFilePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListResourceFolders请求参数结构体
      class ListResourceFoldersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentFolderPath: 资源文件夹绝对路径，取值示例
        # /wedata/test
        # @type ParentFolderPath: String
        # @param PageNumber: 数据页数，大于等于1。默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条。默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentFolderPath, :PageNumber, :PageSize

        def initialize(projectid=nil, parentfolderpath=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListResourceFolders返回参数结构体
      class ListResourceFoldersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的资源文件夹查询结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceFolderPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceFolderPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListResourceGroups请求参数结构体
      class ListResourceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 执行资源组类型

        # - Schedule --- 调度资源组
        # - Integration --- 集成资源组
        # - DataService -- 数据服务资源组
        # @type Type: String
        # @param Id: 资源组id
        # @type Id: String
        # @param Name: 搜索的执行资源组名称
        # @type Name: String
        # @param ProjectIds: 项目空间id查询列表
        # @type ProjectIds: Array
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Type, :Id, :Name, :ProjectIds, :PageNumber, :PageSize

        def initialize(type=nil, id=nil, name=nil, projectids=nil, pagenumber=nil, pagesize=nil)
          @Type = type
          @Id = id
          @Name = name
          @ProjectIds = projectids
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
          @Name = params['Name']
          @ProjectIds = params['ProjectIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListResourceGroups返回参数结构体
      class ListResourceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ExecutorResourceGroupData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ExecutorResourceGroupData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSQLFolderContents请求参数结构体
      class ListSQLFolderContentsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹path，/aaa/bbb/ccc，路径头需带斜杠，查询根目录传/
        # @type ParentFolderPath: String
        # @param Keyword: 文件夹名称/脚本名称搜索
        # @type Keyword: String
        # @param OnlyFolderNode: 只查询文件夹
        # @type OnlyFolderNode: Boolean
        # @param OnlyUserSelfScript: 是否只查询用户自己创建的脚本
        # @type OnlyUserSelfScript: Boolean
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # @type AccessScope: String

        attr_accessor :ProjectId, :ParentFolderPath, :Keyword, :OnlyFolderNode, :OnlyUserSelfScript, :AccessScope

        def initialize(projectid=nil, parentfolderpath=nil, keyword=nil, onlyfoldernode=nil, onlyuserselfscript=nil, accessscope=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @Keyword = keyword
          @OnlyFolderNode = onlyfoldernode
          @OnlyUserSelfScript = onlyuserselfscript
          @AccessScope = accessscope
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @Keyword = params['Keyword']
          @OnlyFolderNode = params['OnlyFolderNode']
          @OnlyUserSelfScript = params['OnlyUserSelfScript']
          @AccessScope = params['AccessScope']
        end
      end

      # ListSQLFolderContents返回参数结构体
      class ListSQLFolderContentsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果列表
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
              sqlfoldernode_tmp = SQLFolderNode.new
              sqlfoldernode_tmp.deserialize(i)
              @Data << sqlfoldernode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSQLScriptRuns请求参数结构体
      class ListSQLScriptRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScriptId: 脚本id
        # @type ScriptId: String
        # @param JobId: 任务id
        # @type JobId: String
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String
        # @param ExecuteUserUin: 执行人
        # @type ExecuteUserUin: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :ProjectId, :ScriptId, :JobId, :SearchWord, :ExecuteUserUin, :StartTime, :EndTime

        def initialize(projectid=nil, scriptid=nil, jobid=nil, searchword=nil, executeuseruin=nil, starttime=nil, endtime=nil)
          @ProjectId = projectid
          @ScriptId = scriptid
          @JobId = jobid
          @SearchWord = searchword
          @ExecuteUserUin = executeuseruin
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ScriptId = params['ScriptId']
          @JobId = params['JobId']
          @SearchWord = params['SearchWord']
          @ExecuteUserUin = params['ExecuteUserUin']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ListSQLScriptRuns返回参数结构体
      class ListSQLScriptRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据探索任务
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
              jobdto_tmp = JobDto.new
              jobdto_tmp.deserialize(i)
              @Data << jobdto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSchemaPage
      class ListSchemaPage < TencentCloud::Common::AbstractModel
        # @param Items: Schema记录列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              schemainfo_tmp = SchemaInfo.new
              schemainfo_tmp.deserialize(i)
              @Items << schemainfo_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListSchema请求参数结构体
      class ListSchemaRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，最大500
        # @type PageSize: Integer
        # @param CatalogName: 目录名称
        # @type CatalogName: String
        # @param DatasourceId: 数据源ID
        # @type DatasourceId: Integer
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param Keyword: 数据库模式搜索关键字
        # @type Keyword: String

        attr_accessor :PageNumber, :PageSize, :CatalogName, :DatasourceId, :DatabaseName, :Keyword

        def initialize(pagenumber=nil, pagesize=nil, catalogname=nil, datasourceid=nil, databasename=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @CatalogName = catalogname
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @CatalogName = params['CatalogName']
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          @Keyword = params['Keyword']
        end
      end

      # ListSchema返回参数结构体
      class ListSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListSchemaPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListSchemaPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTablePage
      class ListTablePage < TencentCloud::Common::AbstractModel
        # @param Items: Schema记录列表
        # @type Items: Array
        # @param PageCount: 分页总页数
        # @type PageCount: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # @type PageNumber: Integer
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer

        attr_accessor :Items, :PageCount, :PageSize, :PageNumber, :TotalCount

        def initialize(items=nil, pagecount=nil, pagesize=nil, pagenumber=nil, totalcount=nil)
          @Items = items
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @Items << tableinfo_tmp
            end
          end
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
        end
      end

      # ListTable请求参数结构体
      class ListTableRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，最大500
        # @type PageSize: Integer
        # @param CatalogName: 目录名称
        # @type CatalogName: String
        # @param DatasourceId: 数据源ID
        # @type DatasourceId: Integer
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param SchemaName: 数据库Schema名称
        # @type SchemaName: String
        # @param Keyword: 表搜索关键字
        # @type Keyword: String

        attr_accessor :PageNumber, :PageSize, :CatalogName, :DatasourceId, :DatabaseName, :SchemaName, :Keyword

        def initialize(pagenumber=nil, pagesize=nil, catalogname=nil, datasourceid=nil, databasename=nil, schemaname=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @CatalogName = catalogname
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @SchemaName = schemaname
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @CatalogName = params['CatalogName']
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @Keyword = params['Keyword']
        end
      end

      # ListTable返回参数结构体
      class ListTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页数据
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTablePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTablePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTaskFolders请求参数结构体
      class ListTaskFoldersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentTaskFolderPath: 父文件夹绝对路径，如/abc/de，如果是根目录则传/
        # @type ParentTaskFolderPath: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param TaskFolderType: 任务文件夹类型

        # | 任务文件夹类型取值 | 任务文件夹类型界面对应名称 |
        # | ---------------- | ------------------------ |
        # | ETL              | 集成任务                 |
        # | EMR              | EMR                      |
        # | DLC              | DLC                      |
        # | SETATS           | SETATS                   |
        # | TDSQL            | TDSQL                    |
        # | TCHOUSE          | TCHOUSE                  |
        # | GENERAL          | 通用                     |
        # | TI_ONE           | TI-ONE机器学习           |
        # | ACROSS_WORKFLOWS | 跨工作流                 |

        # @type TaskFolderType: String
        # @param PageNumber: 数据页数，大于等于1。默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条。默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentTaskFolderPath, :WorkflowId, :TaskFolderType, :PageNumber, :PageSize

        def initialize(projectid=nil, parenttaskfolderpath=nil, workflowid=nil, taskfoldertype=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentTaskFolderPath = parenttaskfolderpath
          @WorkflowId = workflowid
          @TaskFolderType = taskfoldertype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentTaskFolderPath = params['ParentTaskFolderPath']
          @WorkflowId = params['WorkflowId']
          @TaskFolderType = params['TaskFolderType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListTaskFolders返回参数结构体
      class ListTaskFoldersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的文件夹查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskFolderPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskFolderPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务信息分页
      class ListTaskInfo < TencentCloud::Common::AbstractModel
        # @param Items: 任务数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前请求的数据页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 满足查询条件的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskbaseattribute_tmp = TaskBaseAttribute.new
              taskbaseattribute_tmp.deserialize(i)
              @Items << taskbaseattribute_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListTaskInstanceExecutions请求参数结构体
      class ListTaskInstanceExecutionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param InstanceKey: 实例唯一标识，可以通过ListInstances获取
        # @type InstanceKey: String
        # @param TimeZone: **时区**timeZone, 传入的时间字符串的所在时区，默认UTC+8
        # @type TimeZone: String
        # @param PageSize: 每页大小，默认10, 最大200
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，默认1
        # @type PageNumber: Integer

        attr_accessor :ProjectId, :InstanceKey, :TimeZone, :PageSize, :PageNumber

        def initialize(projectid=nil, instancekey=nil, timezone=nil, pagesize=nil, pagenumber=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @TimeZone = timezone
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @TimeZone = params['TimeZone']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ListTaskInstanceExecutions返回参数结构体
      class ListTaskInstanceExecutionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 实例详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskInstanceExecutions`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInstanceExecutions.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTaskInstances请求参数结构体
      class ListTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: **项目ID**
        # @type ProjectId: String
        # @param PageNumber: **页码，整型**
        # 配合pageSize使用且不能小于1， 默认值1
        # @type PageNumber: Integer
        # @param PageSize: **每页显示的条数，默认为10，最小值为1、最大值为100
        # @type PageSize: Integer
        # @param Keyword: **任务名称 或 任务ID**
        # 支持模糊搜索过滤, 多个用 英文逗号, 分割
        # @type Keyword: String
        # @param TimeZone: **时区**timeZone, 传入的时间字符串的所在时区，默认UTC+8
        # @type TimeZone: String
        # @param InstanceType: **实例类型**
        # - 0 表示补录类型
        # - 1 表示周期实例
        # - 2 表示非周期实例
        # @type InstanceType: Integer
        # @param InstanceState: **实例状态** - WAIT_EVENT: 等待事件 - WAIT_UPSTREAM: 等待上游 - WAIT_RUN: 等待运行 - RUNNING: 运行中 - SKIP_RUNNING: 跳过运行 - FAILED_RETRY: 失败重试 - EXPIRED: 失败 - COMPLETED: 成功
        # @type InstanceState: String
        # @param TaskTypeId: **任务类型Id**
        # @type TaskTypeId: Integer
        # @param CycleType: **任务周期类型** * ONEOFF_CYCLE: 一次性 * YEAR_CYCLE: 年 * MONTH_CYCLE: 月 * WEEK_CYCLE: 周 * DAY_CYCLE: 天 * HOUR_CYCLE: 小时 * MINUTE_CYCLE: 分钟 * CRONTAB_CYCLE: crontab表达式类型
        # @type CycleType: String
        # @param OwnerUin: **任务负责人id**
        # @type OwnerUin: String
        # @param FolderId: **任务所属文件id**
        # @type FolderId: String
        # @param WorkflowId: **任务所属工作流id**
        # @type WorkflowId: String
        # @param ExecutorGroupId: **执行资源组Id**
        # @type ExecutorGroupId: String
        # @param ScheduleTimeFrom: **实例计划调度时间过滤条件**过滤起始时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type ScheduleTimeFrom: String
        # @param ScheduleTimeTo: **实例计划调度时间过滤条件**过滤截止时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type ScheduleTimeTo: String
        # @param StartTimeFrom: **实例执行开始时间过滤条件**过滤起始时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type StartTimeFrom: String
        # @param StartTimeTo: **实例执行开始时间过滤条件**
        # 过滤截止时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type StartTimeTo: String
        # @param LastUpdateTimeFrom: **实例最近更新时间过滤条件**
        # 过滤截止时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type LastUpdateTimeFrom: String
        # @param LastUpdateTimeTo: **实例最近更新时间过滤条件**
        # 过滤截止时间，时间格式为 yyyy-MM-dd HH:mm:ss
        # @type LastUpdateTimeTo: String
        # @param SortColumn: **查询结果排序字段**- SCHEDULE_DATE 表示 根据计划调度时间排序- START_TIME 表示 根据实例开始执行时间排序- END_TIME 表示 根据实例结束执行时间排序- COST_TIME 表示 根据实例执行时长排序
        # @type SortColumn: String
        # @param SortType: **实例排序方式**

        # - ASC
        # - DESC
        # @type SortType: String

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Keyword, :TimeZone, :InstanceType, :InstanceState, :TaskTypeId, :CycleType, :OwnerUin, :FolderId, :WorkflowId, :ExecutorGroupId, :ScheduleTimeFrom, :ScheduleTimeTo, :StartTimeFrom, :StartTimeTo, :LastUpdateTimeFrom, :LastUpdateTimeTo, :SortColumn, :SortType

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, keyword=nil, timezone=nil, instancetype=nil, instancestate=nil, tasktypeid=nil, cycletype=nil, owneruin=nil, folderid=nil, workflowid=nil, executorgroupid=nil, scheduletimefrom=nil, scheduletimeto=nil, starttimefrom=nil, starttimeto=nil, lastupdatetimefrom=nil, lastupdatetimeto=nil, sortcolumn=nil, sorttype=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
          @TimeZone = timezone
          @InstanceType = instancetype
          @InstanceState = instancestate
          @TaskTypeId = tasktypeid
          @CycleType = cycletype
          @OwnerUin = owneruin
          @FolderId = folderid
          @WorkflowId = workflowid
          @ExecutorGroupId = executorgroupid
          @ScheduleTimeFrom = scheduletimefrom
          @ScheduleTimeTo = scheduletimeto
          @StartTimeFrom = starttimefrom
          @StartTimeTo = starttimeto
          @LastUpdateTimeFrom = lastupdatetimefrom
          @LastUpdateTimeTo = lastupdatetimeto
          @SortColumn = sortcolumn
          @SortType = sorttype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @TimeZone = params['TimeZone']
          @InstanceType = params['InstanceType']
          @InstanceState = params['InstanceState']
          @TaskTypeId = params['TaskTypeId']
          @CycleType = params['CycleType']
          @OwnerUin = params['OwnerUin']
          @FolderId = params['FolderId']
          @WorkflowId = params['WorkflowId']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ScheduleTimeFrom = params['ScheduleTimeFrom']
          @ScheduleTimeTo = params['ScheduleTimeTo']
          @StartTimeFrom = params['StartTimeFrom']
          @StartTimeTo = params['StartTimeTo']
          @LastUpdateTimeFrom = params['LastUpdateTimeFrom']
          @LastUpdateTimeTo = params['LastUpdateTimeTo']
          @SortColumn = params['SortColumn']
          @SortType = params['SortType']
        end
      end

      # ListTaskInstances返回参数结构体
      class ListTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 实例结果集
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskInstancePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInstancePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务版本分页列表
      class ListTaskVersions < TencentCloud::Common::AbstractModel
        # @param Items: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 满足查询条件的数据总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageCount: 当前页记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param PageSize: 当前请求的数据页条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNumber: 当前请求的数据页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer

        attr_accessor :Items, :TotalCount, :TotalPageNumber, :PageCount, :PageSize, :PageNumber

        def initialize(items=nil, totalcount=nil, totalpagenumber=nil, pagecount=nil, pagesize=nil, pagenumber=nil)
          @Items = items
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskversion_tmp = TaskVersion.new
              taskversion_tmp.deserialize(i)
              @Items << taskversion_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ListTaskVersions请求参数结构体
      class ListTaskVersionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskVersionType: 保存版本：SAVE
        # 提交版本：SUBMIT
        # 默认为SAVE
        # @type TaskVersionType: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200。
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :TaskVersionType, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, taskversiontype=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @TaskVersionType = taskversiontype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @TaskVersionType = params['TaskVersionType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListTaskVersions返回参数结构体
      class ListTaskVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTaskVersions`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTaskVersions.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTasks请求参数结构体
      class ListTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200
        # @type PageSize: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param WorkflowId: 所属工作流ID
        # @type WorkflowId: String
        # @param OwnerUin: 责任人ID
        # @type OwnerUin: String
        # @param TaskTypeId: 任务类型
        # @type TaskTypeId: Integer
        # @param Status: 任务状态
        # * N: 新建
        # * Y: 调度中
        # * F: 已下线
        # * O: 已暂停
        # * T: 下线中
        # * INVALID: 已失效
        # @type Status: String
        # @param Submit: 提交状态
        # @type Submit: Boolean
        # @param BundleId: BundleId信息
        # @type BundleId: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param ModifyTime: 修改时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type ModifyTime: Array
        # @param CreateTime: 创建时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type CreateTime: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :TaskName, :WorkflowId, :OwnerUin, :TaskTypeId, :Status, :Submit, :BundleId, :CreateUserUin, :ModifyTime, :CreateTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, taskname=nil, workflowid=nil, owneruin=nil, tasktypeid=nil, status=nil, submit=nil, bundleid=nil, createuseruin=nil, modifytime=nil, createtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TaskName = taskname
          @WorkflowId = workflowid
          @OwnerUin = owneruin
          @TaskTypeId = tasktypeid
          @Status = status
          @Submit = submit
          @BundleId = bundleid
          @CreateUserUin = createuseruin
          @ModifyTime = modifytime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @OwnerUin = params['OwnerUin']
          @TaskTypeId = params['TaskTypeId']
          @Status = params['Status']
          @Submit = params['Submit']
          @BundleId = params['BundleId']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
        end
      end

      # ListTasks返回参数结构体
      class ListTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务分页信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTaskInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTenantRoles请求参数结构体
      class ListTenantRolesRequest < TencentCloud::Common::AbstractModel
        # @param RoleDisplayName: 角色中文展示名模糊查询，只能传一个值
        # @type RoleDisplayName: String

        attr_accessor :RoleDisplayName

        def initialize(roledisplayname=nil)
          @RoleDisplayName = roledisplayname
        end

        def deserialize(params)
          @RoleDisplayName = params['RoleDisplayName']
        end
      end

      # ListTenantRoles返回参数结构体
      class ListTenantRolesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 主账号角色列表
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
              systemrole_tmp = SystemRole.new
              systemrole_tmp.deserialize(i)
              @Data << systemrole_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务信息分页
      class ListTriggerTaskInfo < TencentCloud::Common::AbstractModel
        # @param Items: 任务数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前请求的数据页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 满足查询条件的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggertaskbaseattribute_tmp = TriggerTaskBaseAttribute.new
              triggertaskbaseattribute_tmp.deserialize(i)
              @Items << triggertaskbaseattribute_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 查询任务版本分页列表
      class ListTriggerTaskVersions < TencentCloud::Common::AbstractModel
        # @param Items: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 满足查询条件的数据总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageCount: 当前页记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param PageSize: 当前请求的数据页条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNumber: 当前请求的数据页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer

        attr_accessor :Items, :TotalCount, :TotalPageNumber, :PageCount, :PageSize, :PageNumber

        def initialize(items=nil, totalcount=nil, totalpagenumber=nil, pagecount=nil, pagesize=nil, pagenumber=nil)
          @Items = items
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageCount = pagecount
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggertaskversion_tmp = TriggerTaskVersion.new
              triggertaskversion_tmp.deserialize(i)
              @Items << triggertaskversion_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageCount = params['PageCount']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ListTriggerTaskVersions请求参数结构体
      class ListTriggerTaskVersionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskVersionType: 保存版本：SAVE
        # 提交版本：SUBMIT
        # 默认为SAVE
        # @type TaskVersionType: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200。
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :TaskVersionType, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, taskversiontype=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @TaskVersionType = taskversiontype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @TaskVersionType = params['TaskVersionType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListTriggerTaskVersions返回参数结构体
      class ListTriggerTaskVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTriggerTaskVersions`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTriggerTaskVersions.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTriggerTasks请求参数结构体
      class ListTriggerTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200
        # @type PageSize: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param WorkflowId: 所属工作流ID
        # @type WorkflowId: String
        # @param OwnerUin: 责任人ID
        # @type OwnerUin: String
        # @param TaskTypeId: 任务类型
        # @type TaskTypeId: Integer
        # @param Status: 任务状态
        # * N: 新建
        # * Y: 调度中
        # @type Status: String
        # @param Submit: 提交状态
        # @type Submit: Boolean
        # @param BundleId: BundleId信息
        # @type BundleId: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param ModifyTime: 修改时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type ModifyTime: Array
        # @param CreateTime: 创建时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type CreateTime: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :TaskName, :WorkflowId, :OwnerUin, :TaskTypeId, :Status, :Submit, :BundleId, :CreateUserUin, :ModifyTime, :CreateTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, taskname=nil, workflowid=nil, owneruin=nil, tasktypeid=nil, status=nil, submit=nil, bundleid=nil, createuseruin=nil, modifytime=nil, createtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TaskName = taskname
          @WorkflowId = workflowid
          @OwnerUin = owneruin
          @TaskTypeId = tasktypeid
          @Status = status
          @Submit = submit
          @BundleId = bundleid
          @CreateUserUin = createuseruin
          @ModifyTime = modifytime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @OwnerUin = params['OwnerUin']
          @TaskTypeId = params['TaskTypeId']
          @Status = params['Status']
          @Submit = params['Submit']
          @BundleId = params['BundleId']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
        end
      end

      # ListTriggerTasks返回参数结构体
      class ListTriggerTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTriggerTaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTriggerTaskInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流分页列表
      class ListTriggerWorkflowInfo < TencentCloud::Common::AbstractModel
        # @param Items: 列表item
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalPageNumber: 满足查询条件的数据总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 当前请求的数据页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 满足查询条件的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :Items, :TotalPageNumber, :PageNumber, :PageSize, :TotalCount

        def initialize(items=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, totalcount=nil)
          @Items = items
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggerworkflowinfo_tmp = TriggerWorkflowInfo.new
              triggerworkflowinfo_tmp.deserialize(i)
              @Items << triggerworkflowinfo_tmp
            end
          end
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
        end
      end

      # ListTriggerWorkflowRuns请求参数结构体
      class ListTriggerWorkflowRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Filters: 过滤参数,工作流名称或ID查询名称：Keyword,工作流ID查询名称：WorkflowId,文件夹查询名称：FolderId,负责人查询名称：InChargeUin, 工作流执行id: ExecutionId
        # @type Filters: Array
        # @param OrderFields: 排序字段，排序字段名称	如下开始时间：CreateTime，结束时间：EndTime
        # @type OrderFields: Array
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :ProjectId, :Filters, :OrderFields, :PageNumber, :PageSize

        def initialize(projectid=nil, filters=nil, orderfields=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @Filters = filters
          @OrderFields = orderfields
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
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
          @PageSize = params['PageSize']
        end
      end

      # ListTriggerWorkflowRuns返回参数结构体
      class ListTriggerWorkflowRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作流运行查询结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerWorkflowRunResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerWorkflowRunResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTriggerWorkflows请求参数结构体
      class ListTriggerWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200
        # @type PageSize: Integer
        # @param Keyword: 搜索关键词
        # @type Keyword: String
        # @param ParentFolderPath: 工作流所属文件夹
        # @type ParentFolderPath: String
        # @param BundleId: bundleId项
        # @type BundleId: String
        # @param OwnerUin: 负责人ID
        # @type OwnerUin: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param ModifyTime: 修改时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type ModifyTime: Array
        # @param CreateTime: 创建时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type CreateTime: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Keyword, :ParentFolderPath, :BundleId, :OwnerUin, :CreateUserUin, :ModifyTime, :CreateTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, keyword=nil, parentfolderpath=nil, bundleid=nil, owneruin=nil, createuseruin=nil, modifytime=nil, createtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
          @ParentFolderPath = parentfolderpath
          @BundleId = bundleid
          @OwnerUin = owneruin
          @CreateUserUin = createuseruin
          @ModifyTime = modifytime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @ParentFolderPath = params['ParentFolderPath']
          @BundleId = params['BundleId']
          @OwnerUin = params['OwnerUin']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
        end
      end

      # ListTriggerWorkflows返回参数结构体
      class ListTriggerWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询工作流分页信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListTriggerWorkflowInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTriggerWorkflowInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUpstreamOpsTasks请求参数结构体
      class ListUpstreamOpsTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param PageNumber: 分页页码
        # @type PageNumber: String
        # @param PageSize: 分页大小
        # @type PageSize: String

        attr_accessor :ProjectId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListUpstreamOpsTasks返回参数结构体
      class ListUpstreamOpsTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 上游任务详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ParentDependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ParentDependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUpstreamTaskInstances请求参数结构体
      class ListUpstreamTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param InstanceKey: **实例唯一标识**
        # @type InstanceKey: String
        # @param TimeZone: **时区** timeZone, 默认UTC+8
        # @type TimeZone: String
        # @param PageNumber: **页码，整型**配合pageSize使用且不能小于1， 默认值1
        # @type PageNumber: Integer
        # @param PageSize: **每页显示的条数，默认为10，最小值为1、最大值为100
        # @type PageSize: Integer

        attr_accessor :ProjectId, :InstanceKey, :TimeZone, :PageNumber, :PageSize

        def initialize(projectid=nil, instancekey=nil, timezone=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @TimeZone = timezone
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @TimeZone = params['TimeZone']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListUpstreamTaskInstances返回参数结构体
      class ListUpstreamTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 上游实例列表
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TaskInstancePage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInstancePage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUpstreamTasks请求参数结构体
      class ListUpstreamTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageNumber: Integer
        # @param PageSize: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListUpstreamTasks返回参数结构体
      class ListUpstreamTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 上游任务详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUpstreamTriggerTasks请求参数结构体
      class ListUpstreamTriggerTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageNumber: Integer
        # @param PageSize: 请求的数据页数。默认值为1，取值大于等于1。
        # @type PageSize: Integer

        attr_accessor :ProjectId, :TaskId, :PageNumber, :PageSize

        def initialize(projectid=nil, taskid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListUpstreamTriggerTasks返回参数结构体
      class ListUpstreamTriggerTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 上游任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.TriggerDependencyConfigPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TriggerDependencyConfigPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowFolders请求参数结构体
      class ListWorkflowFoldersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ParentFolderPath: 父文件夹绝对路径，如/abc/de，如果是根目录则传/
        # @type ParentFolderPath: String
        # @param PageNumber: 数据页数，大于等于1。默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条。默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentFolderPath, :PageNumber, :PageSize

        def initialize(projectid=nil, parentfolderpath=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentFolderPath = parentfolderpath
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentFolderPath = params['ParentFolderPath']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListWorkflowFolders返回参数结构体
      class ListWorkflowFoldersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的文件夹查询结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowFolderPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkflowFolderPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流分页列表
      class ListWorkflowInfo < TencentCloud::Common::AbstractModel
        # @param Items: 列表item
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalPageNumber: 满足查询条件的数据总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 当前请求的数据页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 满足查询条件的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :Items, :TotalPageNumber, :PageNumber, :PageSize, :TotalCount

        def initialize(items=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, totalcount=nil)
          @Items = items
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowinfo_tmp = WorkflowInfo.new
              workflowinfo_tmp.deserialize(i)
              @Items << workflowinfo_tmp
            end
          end
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
        end
      end

      # ListWorkflowPermissions请求参数结构体
      class ListWorkflowPermissionsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param EntityId: 授权实体ID
        # @type EntityId: String
        # @param EntityType: 授权实体类型,folder/workflow
        # @type EntityType: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200。
        # @type PageSize: Integer

        attr_accessor :ProjectId, :EntityId, :EntityType, :PageNumber, :PageSize

        def initialize(projectid=nil, entityid=nil, entitytype=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @EntityId = entityid
          @EntityType = entitytype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EntityId = params['EntityId']
          @EntityType = params['EntityType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListWorkflowPermissions返回参数结构体
      class ListWorkflowPermissionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的授权信息查询结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowPermissionPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkflowPermissionPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflows请求参数结构体
      class ListWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 请求的数据页数。默认值为1，取值大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数。默认值为10 ，最小值为10，最大值为200
        # @type PageSize: Integer
        # @param Keyword: 搜索关键词
        # @type Keyword: String
        # @param ParentFolderPath: 工作流所属文件夹
        # @type ParentFolderPath: String
        # @param WorkflowType: 工作流类型，cycle和manual
        # @type WorkflowType: String
        # @param BundleId: bundleId项
        # @type BundleId: String
        # @param OwnerUin: 负责人ID
        # @type OwnerUin: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param ModifyTime: 修改时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type ModifyTime: Array
        # @param CreateTime: 创建时间区间 yyyy-MM-dd HH:mm:ss，需要在数组填入两个时间
        # @type CreateTime: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :Keyword, :ParentFolderPath, :WorkflowType, :BundleId, :OwnerUin, :CreateUserUin, :ModifyTime, :CreateTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, keyword=nil, parentfolderpath=nil, workflowtype=nil, bundleid=nil, owneruin=nil, createuseruin=nil, modifytime=nil, createtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
          @ParentFolderPath = parentfolderpath
          @WorkflowType = workflowtype
          @BundleId = bundleid
          @OwnerUin = owneruin
          @CreateUserUin = createuseruin
          @ModifyTime = modifytime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @ParentFolderPath = params['ParentFolderPath']
          @WorkflowType = params['WorkflowType']
          @BundleId = params['BundleId']
          @OwnerUin = params['OwnerUin']
          @CreateUserUin = params['CreateUserUin']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
        end
      end

      # ListWorkflows返回参数结构体
      class ListWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询工作流分页信息
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ListWorkflowInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监控指标
      class MetricData < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名称

        # - ConcurrencyUsage --- 并发使用率
        # - CpuCoreUsage --- cpu使用率
        # - CpuLoad --- cpu负载
        # - DevelopQueueTask --- 正在队列中的开发任务数量
        # - DevelopRunningTask --- 正在运行的开发任务数量
        # - DevelopSchedulingTask --- 正在调度的开发任务数量
        # - DiskUsage --- 磁盘使用情况
        # - DiskUsed --- 磁盘已用量
        # - MaximumConcurrency --- 最大并发
        # - MemoryLoad --- 内存负载
        # - MemoryUsage --- 内存使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param SnapshotValue: 当前值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotValue: Integer
        # @param TrendList: 指标趋势
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendList: Array

        attr_accessor :MetricName, :SnapshotValue, :TrendList

        def initialize(metricname=nil, snapshotvalue=nil, trendlist=nil)
          @MetricName = metricname
          @SnapshotValue = snapshotvalue
          @TrendList = trendlist
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @SnapshotValue = params['SnapshotValue']
          unless params['TrendList'].nil?
            @TrendList = []
            params['TrendList'].each do |i|
              trenddata_tmp = TrendData.new
              trenddata_tmp.deserialize(i)
              @TrendList << trenddata_tmp
            end
          end
        end
      end

      # 更新告警规则响应
      class ModifyAlarmRuleResult < TencentCloud::Common::AbstractModel
        # @param Status: 是否更新成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyQualityRuleGroup请求参数结构体
      class ModifyQualityRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param RuleGroupExecStrategyBOList: 任务参数
        # @type RuleGroupExecStrategyBOList: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :RuleGroupExecStrategyBOList, :ProjectId

        def initialize(rulegroupexecstrategybolist=nil, projectid=nil)
          @RuleGroupExecStrategyBOList = rulegroupexecstrategybolist
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['RuleGroupExecStrategyBOList'].nil?
            @RuleGroupExecStrategyBOList = []
            params['RuleGroupExecStrategyBOList'].each do |i|
              qualityrulegroupexecstrategy_tmp = QualityRuleGroupExecStrategy.new
              qualityrulegroupexecstrategy_tmp.deserialize(i)
              @RuleGroupExecStrategyBOList << qualityrulegroupexecstrategy_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyQualityRuleGroup返回参数结构体
      class ModifyQualityRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否更新成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ModifyQualityRuleGroupResultVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifyQualityRuleGroupResultVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监控任务
      class ModifyQualityRuleGroupResultVO < TencentCloud::Common::AbstractModel
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # ModifyQualityRule请求参数结构体
      class ModifyQualityRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param Type: 规则类型 1.系统模版, 2.自定义模版, 3.自定义SQL
        # @type Type: Integer
        # @param CompareRule: 报警触发条件
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20250806.models.QualityCompareRule`
        # @param AlarmLevel: 报警触发级别 1.低, 2.中, 3.高
        # @type AlarmLevel: Integer
        # @param TableId: 数据表ID
        # @type TableId: String
        # @param RuleTemplateId: 规则模板ID，当Type≠3（自定义SQL）时必填
        # @type RuleTemplateId: Integer
        # @param QualityDim: 规则所属质量维度，Type=3（自定义SQL）时必填（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性）
        # @type QualityDim: Integer
        # @param RuleGroupId: 规则组ID
        # @type RuleGroupId: Integer
        # @param SourceObjectDataTypeName: 源字段详细类型，int、string
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源字段名称
        # @type SourceObjectValue: String
        # @param ConditionType: 检测范围，当Type=1(系统模板)时必填。 1.全表 2.条件扫描
        # @type ConditionType: Integer
        # @param ConditionExpression: 条件扫描WHERE条件表达式，ConditionType=2(条件扫描)时必填
        # @type ConditionExpression: String
        # @param CustomSql: 自定义SQL，Type=3（自定义SQL）时必填
        # @type CustomSql: String
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
        # @param FieldConfig: 自定义模版sql表达式字段替换参数，Type=2时必填
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleFieldConfig`
        # @param TargetObjectValue: 目标字段名称  CITY
        # @type TargetObjectValue: String
        # @param SourceEngineTypes: 该规则支持的执行引擎列表，Type=3（自定义SQL）时必填，可选值如下：1 - MYSQL2 - HIVE4 - SPARK8 - LIVY16 - DLC32 - GBASE64 - TCHouse-P128 - DORIS256 - TCHouse-D512 - EMR_STARROCKS1024 - TCHouse-X
        # @type SourceEngineTypes: Array
        # @param TargetDatabaseName: 目标库名
        # @type TargetDatabaseName: String
        # @param TargetSchemaName: 目标模式名
        # @type TargetSchemaName: String
        # @param TargetTableName: 目标表名
        # @type TargetTableName: String
        # @param CatalogName: 数据目录名称，主要用于dlc数据源
        # @type CatalogName: String
        # @param TargetCatalogName: 目标数据目录名称，主要用于dlc数据源
        # @type TargetCatalogName: String

        attr_accessor :ProjectId, :RuleId, :Name, :Type, :CompareRule, :AlarmLevel, :TableId, :RuleTemplateId, :QualityDim, :RuleGroupId, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :Description, :TargetDatabaseId, :TargetTableId, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :TargetObjectValue, :SourceEngineTypes, :TargetDatabaseName, :TargetSchemaName, :TargetTableName, :CatalogName, :TargetCatalogName

        def initialize(projectid=nil, ruleid=nil, name=nil, type=nil, comparerule=nil, alarmlevel=nil, tableid=nil, ruletemplateid=nil, qualitydim=nil, rulegroupid=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, description=nil, targetdatabaseid=nil, targettableid=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, targetobjectvalue=nil, sourceenginetypes=nil, targetdatabasename=nil, targetschemaname=nil, targettablename=nil, catalogname=nil, targetcatalogname=nil)
          @ProjectId = projectid
          @RuleId = ruleid
          @Name = name
          @Type = type
          @CompareRule = comparerule
          @AlarmLevel = alarmlevel
          @TableId = tableid
          @RuleTemplateId = ruletemplateid
          @QualityDim = qualitydim
          @RuleGroupId = rulegroupid
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionType = conditiontype
          @ConditionExpression = conditionexpression
          @CustomSql = customsql
          @Description = description
          @TargetDatabaseId = targetdatabaseid
          @TargetTableId = targettableid
          @TargetConditionExpr = targetconditionexpr
          @RelConditionExpr = relconditionexpr
          @FieldConfig = fieldconfig
          @TargetObjectValue = targetobjectvalue
          @SourceEngineTypes = sourceenginetypes
          @TargetDatabaseName = targetdatabasename
          @TargetSchemaName = targetschemaname
          @TargetTableName = targettablename
          @CatalogName = catalogname
          @TargetCatalogName = targetcatalogname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['CompareRule'].nil?
            @CompareRule = QualityCompareRule.new
            @CompareRule.deserialize(params['CompareRule'])
          end
          @AlarmLevel = params['AlarmLevel']
          @TableId = params['TableId']
          @RuleTemplateId = params['RuleTemplateId']
          @QualityDim = params['QualityDim']
          @RuleGroupId = params['RuleGroupId']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionType = params['ConditionType']
          @ConditionExpression = params['ConditionExpression']
          @CustomSql = params['CustomSql']
          @Description = params['Description']
          @TargetDatabaseId = params['TargetDatabaseId']
          @TargetTableId = params['TargetTableId']
          @TargetConditionExpr = params['TargetConditionExpr']
          @RelConditionExpr = params['RelConditionExpr']
          unless params['FieldConfig'].nil?
            @FieldConfig = QualityRuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @TargetObjectValue = params['TargetObjectValue']
          @SourceEngineTypes = params['SourceEngineTypes']
          @TargetDatabaseName = params['TargetDatabaseName']
          @TargetSchemaName = params['TargetSchemaName']
          @TargetTableName = params['TargetTableName']
          @CatalogName = params['CatalogName']
          @TargetCatalogName = params['TargetCatalogName']
        end
      end

      # ModifyQualityRule返回参数结构体
      class ModifyQualityRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否更新成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 告警规则监控白名单配置
      class MonitorWhiteTask < TencentCloud::Common::AbstractModel
        # @param MonitorObjectId: 配置白名单的对应的工作流/项目的id
        # @type MonitorObjectId: String
        # @param TaskIds: 白名单任务列表
        # @type TaskIds: Array

        attr_accessor :MonitorObjectId, :TaskIds

        def initialize(monitorobjectid=nil, taskids=nil)
          @MonitorObjectId = monitorobjectid
          @TaskIds = taskids
        end

        def deserialize(params)
          @MonitorObjectId = params['MonitorObjectId']
          @TaskIds = params['TaskIds']
        end
      end

      # notebook kernel session信息
      class NotebookSessionInfo < TencentCloud::Common::AbstractModel
        # @param NotebookSessionId: 会话ID
        # @type NotebookSessionId: String
        # @param NotebookSessionName: 会话名称
        # @type NotebookSessionName: String

        attr_accessor :NotebookSessionId, :NotebookSessionName

        def initialize(notebooksessionid=nil, notebooksessionname=nil)
          @NotebookSessionId = notebooksessionid
          @NotebookSessionName = notebooksessionname
        end

        def deserialize(params)
          @NotebookSessionId = params['NotebookSessionId']
          @NotebookSessionName = params['NotebookSessionName']
        end
      end

      # 告警疲劳告警配置
      class NotificationFatigue < TencentCloud::Common::AbstractModel
        # @param NotifyCount: 告警次数
        # @type NotifyCount: Integer
        # @param NotifyInterval: 告警间隔，分钟
        # @type NotifyInterval: Integer
        # @param QuietIntervals: 免打扰时间，例如示例值
        # [{DaysOfWeek: [1, 2], StartTime: "00:00:00", EndTime: "09:00:00"}]
        # 每周一、周二的00:00到09:00免打扰
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuietIntervals: Array

        attr_accessor :NotifyCount, :NotifyInterval, :QuietIntervals

        def initialize(notifycount=nil, notifyinterval=nil, quietintervals=nil)
          @NotifyCount = notifycount
          @NotifyInterval = notifyinterval
          @QuietIntervals = quietintervals
        end

        def deserialize(params)
          @NotifyCount = params['NotifyCount']
          @NotifyInterval = params['NotifyInterval']
          unless params['QuietIntervals'].nil?
            @QuietIntervals = []
            params['QuietIntervals'].each do |i|
              alarmquietinterval_tmp = AlarmQuietInterval.new
              alarmquietinterval_tmp.deserialize(i)
              @QuietIntervals << alarmquietinterval_tmp
            end
          end
        end
      end

      # OperateResult
      class OperateResult < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果1 成功 其他失败
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 异步操作详情
      class OpsAsyncJobDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AsyncId: 操作id
        # @type AsyncId: String
        # @param AsyncType: 异步操作类型
        # @type AsyncType: String
        # @param Status: 异步操作状态：初始状态: INIT; 运行中: RUNNING; 成功: SUCCESS; 失败: FAIL; 部分成功: PART_SUCCESS
        # @type Status: String
        # @param ErrorDesc: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String
        # @param TotalSubProcessCount: 子操作总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSubProcessCount: Integer
        # @param FinishedSubProcessCount: 已完成的子操作个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedSubProcessCount: Integer
        # @param SuccessSubProcessCount: 已成功的子操作个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessSubProcessCount: Integer
        # @param CreateUserUin: 操作人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param CreateTime: 操作创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :ProjectId, :AsyncId, :AsyncType, :Status, :ErrorDesc, :TotalSubProcessCount, :FinishedSubProcessCount, :SuccessSubProcessCount, :CreateUserUin, :CreateTime, :UpdateTime

        def initialize(projectid=nil, asyncid=nil, asynctype=nil, status=nil, errordesc=nil, totalsubprocesscount=nil, finishedsubprocesscount=nil, successsubprocesscount=nil, createuseruin=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @AsyncId = asyncid
          @AsyncType = asynctype
          @Status = status
          @ErrorDesc = errordesc
          @TotalSubProcessCount = totalsubprocesscount
          @FinishedSubProcessCount = finishedsubprocesscount
          @SuccessSubProcessCount = successsubprocesscount
          @CreateUserUin = createuseruin
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AsyncId = params['AsyncId']
          @AsyncType = params['AsyncType']
          @Status = params['Status']
          @ErrorDesc = params['ErrorDesc']
          @TotalSubProcessCount = params['TotalSubProcessCount']
          @FinishedSubProcessCount = params['FinishedSubProcessCount']
          @SuccessSubProcessCount = params['SuccessSubProcessCount']
          @CreateUserUin = params['CreateUserUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 异步操作返回结构体
      class OpsAsyncResponse < TencentCloud::Common::AbstractModel
        # @param AsyncId: 异步执行记录Id
        # @type AsyncId: String

        attr_accessor :AsyncId

        def initialize(asyncid=nil)
          @AsyncId = asyncid
        end

        def deserialize(params)
          @AsyncId = params['AsyncId']
        end
      end

      # 依赖任务信息
      class OpsTaskDepend < TencentCloud::Common::AbstractModel
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
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param Status: 任务状态:
        # - Y: 调度中
        # - F: 已下线
        # - O: 已暂停
        # - T: 下线中
        # - INVALID: 已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskTypeId: 任务类型Id：
        # * 21:JDBC SQL
        # * 23:TDSQL-PostgreSQL
        # * 26:OfflineSynchronization
        # * 30:Python
        # * 31:PySpark
        # * 33:Impala
        # * 34:Hive SQL
        # * 35:Shell
        # * 36:Spark SQL
        # * 38:Shell Form Mode
        # * 39:Spark
        # * 40:TCHouse-P
        # * 41:Kettle
        # * 42:Tchouse-X
        # * 43:TCHouse-X SQL
        # * 46:DLC Spark
        # * 47:TiOne
        # * 48:Trino
        # * 50:DLC PySpark
        # * 92:MapReduce
        # * 130:Branch Node
        # * 131:Merged Node
        # * 132:Notebook
        # * 133:SSH
        # * 134:StarRocks
        # * 137:For-each
        # * 138:Setats SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        #  - 20 :  通用数据同步
        #  - 25 :  ETLTaskType
        #  - 26 :  ETLTaskType
        #  - 30 :  python
        #  - 31 :  pyspark
        #  - 34 :  hivesql
        #  - 35 :  shell
        #  - 36 :  sparksql
        #  - 21 :  jdbcsql
        #  - 32 :  dlc
        #  - 33 :  ImpalaTaskType
        #  - 40 :  CDWTaskType
        #  - 41 :  kettle
        #  - 42 :  TCHouse-X
        #  - 43 :  TCHouse-X SQL
        #  - 46 :  dlcsparkTaskType
        #  - 47 :  TiOneMachineLearningTaskType
        #  - 48 :  Trino
        #  - 50 :  DLCPyspark
        #  - 23 :  TencentDistributedSQL
        #  - 39 :  spark
        #  - 92 :  MRTaskType
        #  - 38 :  ShellScript
        #  - 70 :  HiveSQLScrip
        #  - 130 :  分支
        #  - 131 :  归并
        #  - 132 :  Notebook探索
        #  - 133 :  SSH节点
        #  - 134 :  StarRocks
        #  - 137 :  For-each
        #  - 10000 :  自定义业务通用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
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
        # @param CycleType: 任务周期类型
        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param OwnerUin: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ExecutionStartTime: 执行开始时间, 格式HH:mm, 如00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行结束时间, 格式HH:mm, 如23:59
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectId, :ProjectName, :Status, :TaskTypeId, :TaskTypeDesc, :FolderName, :FolderId, :FirstSubmitTime, :FirstRunTime, :ScheduleDesc, :CycleType, :OwnerUin, :ExecutionStartTime, :ExecutionEndTime

        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectid=nil, projectname=nil, status=nil, tasktypeid=nil, tasktypedesc=nil, foldername=nil, folderid=nil, firstsubmittime=nil, firstruntime=nil, scheduledesc=nil, cycletype=nil, owneruin=nil, executionstarttime=nil, executionendtime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectId = projectid
          @ProjectName = projectname
          @Status = status
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @FolderName = foldername
          @FolderId = folderid
          @FirstSubmitTime = firstsubmittime
          @FirstRunTime = firstruntime
          @ScheduleDesc = scheduledesc
          @CycleType = cycletype
          @OwnerUin = owneruin
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @Status = params['Status']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @FirstSubmitTime = params['FirstSubmitTime']
          @FirstRunTime = params['FirstRunTime']
          @ScheduleDesc = params['ScheduleDesc']
          @CycleType = params['CycleType']
          @OwnerUin = params['OwnerUin']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
        end
      end

      # 工作流列表分页详情
      class OpsWorkflow < TencentCloud::Common::AbstractModel
        # @param TaskCount: 任务数量
        # @type TaskCount: Integer
        # @param FolderName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 工作流文件id
        # @type FolderId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowType: 工作流类型
        #  - cycle周期
        #  - manual手动
        # @type WorkflowType: String
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param OwnerUin: 负责人userId,多个‘；’隔开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param Status: 工作流状态
        # * ALL_RUNNING : 全部调度中
        # * ALL_FREEZED : 全部已暂停
        # * ALL_STOPPTED : 全部已下线
        # * PART_RUNNING : 部分调度中
        # * ALL_NO_RUNNING : 全部未调度
        # * ALL_INVALID : 全部已失效
        # @type Status: String
        # @param CreateTime: 工作流创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间, 包含开发、生产变更
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UpdateUserUin: 最近更新人，包含开发、生产变更
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String

        attr_accessor :TaskCount, :FolderName, :FolderId, :WorkflowId, :WorkflowName, :WorkflowType, :WorkflowDesc, :OwnerUin, :ProjectId, :ProjectName, :Status, :CreateTime, :UpdateTime, :UpdateUserUin

        def initialize(taskcount=nil, foldername=nil, folderid=nil, workflowid=nil, workflowname=nil, workflowtype=nil, workflowdesc=nil, owneruin=nil, projectid=nil, projectname=nil, status=nil, createtime=nil, updatetime=nil, updateuseruin=nil)
          @TaskCount = taskcount
          @FolderName = foldername
          @FolderId = folderid
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowType = workflowtype
          @WorkflowDesc = workflowdesc
          @OwnerUin = owneruin
          @ProjectId = projectid
          @ProjectName = projectname
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UpdateUserUin = updateuseruin
        end

        def deserialize(params)
          @TaskCount = params['TaskCount']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowType = params['WorkflowType']
          @WorkflowDesc = params['WorkflowDesc']
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UpdateUserUin = params['UpdateUserUin']
        end
      end

      # 工作流调度详情
      class OpsWorkflowDetail < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param WorkflowType: 工作流类型：
        #  - cycle 周期；
        #  - manual手动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowType: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param CreateUserUin: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param StartupTime: 延时执行时间,unit=minute
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupTime: Integer
        # @param StartTime: 配置生效日期 开始日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 配置结束日期 结束日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CycleType: 任务周期类型
        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param FolderId: 文件夹Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param InstanceInitStrategy: 任务实例初始化策略
        #  - T_PLUS_1（T+1）：延迟一天初始化
        #  - T_PLUS_0（T+0）：当天初始化
        #  - T_MINUS_1（T-1）：提前一天初始化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceInitStrategy: String
        # @param SchedulerDesc: 调度计划释义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDesc: String
        # @param FirstSubmitTime: 工作流首次提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstSubmitTime: String
        # @param LatestSubmitTime: 工作流最近提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestSubmitTime: String
        # @param Status: 工作流状态
        # * ALL_RUNNING : 全部调度中
        # * ALL_FREEZED : 全部已暂停
        # * ALL_STOPPTED : 全部已下线
        # * PART_RUNNING : 部分调度中
        # * ALL_NO_RUNNING : 全部未调度
        # * ALL_INVALID : 全部已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OwnerUin: 负责人, 多个以‘；’隔开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String

        attr_accessor :WorkflowId, :WorkflowDesc, :WorkflowType, :CreateTime, :CreateUserUin, :UpdateTime, :StartupTime, :StartTime, :EndTime, :CycleType, :FolderId, :InstanceInitStrategy, :SchedulerDesc, :FirstSubmitTime, :LatestSubmitTime, :Status, :OwnerUin, :WorkflowName

        def initialize(workflowid=nil, workflowdesc=nil, workflowtype=nil, createtime=nil, createuseruin=nil, updatetime=nil, startuptime=nil, starttime=nil, endtime=nil, cycletype=nil, folderid=nil, instanceinitstrategy=nil, schedulerdesc=nil, firstsubmittime=nil, latestsubmittime=nil, status=nil, owneruin=nil, workflowname=nil)
          @WorkflowId = workflowid
          @WorkflowDesc = workflowdesc
          @WorkflowType = workflowtype
          @CreateTime = createtime
          @CreateUserUin = createuseruin
          @UpdateTime = updatetime
          @StartupTime = startuptime
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @FolderId = folderid
          @InstanceInitStrategy = instanceinitstrategy
          @SchedulerDesc = schedulerdesc
          @FirstSubmitTime = firstsubmittime
          @LatestSubmitTime = latestsubmittime
          @Status = status
          @OwnerUin = owneruin
          @WorkflowName = workflowname
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowDesc = params['WorkflowDesc']
          @WorkflowType = params['WorkflowType']
          @CreateTime = params['CreateTime']
          @CreateUserUin = params['CreateUserUin']
          @UpdateTime = params['UpdateTime']
          @StartupTime = params['StartupTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @FolderId = params['FolderId']
          @InstanceInitStrategy = params['InstanceInitStrategy']
          @SchedulerDesc = params['SchedulerDesc']
          @FirstSubmitTime = params['FirstSubmitTime']
          @LatestSubmitTime = params['LatestSubmitTime']
          @Status = params['Status']
          @OwnerUin = params['OwnerUin']
          @WorkflowName = params['WorkflowName']
        end
      end

      # 查询工作流分页列表
      class OpsWorkflows < TencentCloud::Common::AbstractModel
        # @param Items: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer

        attr_accessor :Items, :TotalCount, :TotalPageNumber, :PageSize, :PageNumber

        def initialize(items=nil, totalcount=nil, totalpagenumber=nil, pagesize=nil, pagenumber=nil)
          @Items = items
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              opsworkflow_tmp = OpsWorkflow.new
              opsworkflow_tmp.deserialize(i)
              @Items << opsworkflow_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
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

      # 参数传递-输出参数
      class OutTaskParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数定义
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 角色列表分页信息
      class PageRoles < TencentCloud::Common::AbstractModel
        # @param Items: 角色信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              systemrole_tmp = SystemRole.new
              systemrole_tmp.deserialize(i)
              @Items << systemrole_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 参数
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

      # 查询任务上游依赖详情分页
      class ParentDependencyConfigPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 分页数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              opstaskdepend_tmp = OpsTaskDepend.new
              opstaskdepend_tmp.deserialize(i)
              @Items << opstaskdepend_tmp
            end
          end
        end
      end

      # PauseOpsTasksAsync请求参数结构体
      class PauseOpsTasksAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param TaskIds: 任务Id列表
        # @type TaskIds: Array
        # @param KillInstance: 是否需要终止已生成实例
        # @type KillInstance: Boolean

        attr_accessor :ProjectId, :TaskIds, :KillInstance

        def initialize(projectid=nil, taskids=nil, killinstance=nil)
          @ProjectId = projectid
          @TaskIds = taskids
          @KillInstance = killinstance
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskIds = params['TaskIds']
          @KillInstance = params['KillInstance']
        end
      end

      # PauseOpsTasksAsync返回参数结构体
      class PauseOpsTasksAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 异步操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 项目信息
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目标识，英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param DisplayName: 项目显示名称，可以为中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param CreatorUin: 项目创建人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param ProjectOwnerUin: 项目责任人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectOwnerUin: String
        # @param Status: 项目状态：0：禁用，1：启用，-3:禁用中，2：启用中
        # @type Status: Integer
        # @param ProjectModel: 项目模式，SIMPLE：简单模式 STANDARD：标准模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectModel: String

        attr_accessor :ProjectId, :ProjectName, :DisplayName, :Description, :CreateTime, :CreatorUin, :ProjectOwnerUin, :Status, :ProjectModel

        def initialize(projectid=nil, projectname=nil, displayname=nil, description=nil, createtime=nil, creatoruin=nil, projectowneruin=nil, status=nil, projectmodel=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @DisplayName = displayname
          @Description = description
          @CreateTime = createtime
          @CreatorUin = creatoruin
          @ProjectOwnerUin = projectowneruin
          @Status = status
          @ProjectModel = projectmodel
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @CreatorUin = params['CreatorUin']
          @ProjectOwnerUin = params['ProjectOwnerUin']
          @Status = params['Status']
          @ProjectModel = params['ProjectModel']
        end
      end

      # 查询数据源分页列表
      class ProjectBrief < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :PageNumber, :PageSize, :Items, :TotalCount, :TotalPageNumber

        def initialize(pagenumber=nil, pagesize=nil, items=nil, totalcount=nil, totalpagenumber=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @Items << project_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 告警规则项目波动率告警配置信息
      class ProjectInstanceStatisticsAlarmInfo < TencentCloud::Common::AbstractModel
        # @param AlarmType: 告警类型

        # projectFailureInstanceUpwardFluctuationAlarm: 失败实例向上波动告警

        # projectSuccessInstanceDownwardFluctuationAlarm： 成功实例向下波动告警
        # @type AlarmType: String
        # @param InstanceThresholdCountPercent: 实例成功数向下波动比例告警阀值；实例失败数向上波动比例告警阀值
        # @type InstanceThresholdCountPercent: Integer
        # @param InstanceThresholdCount: 累计实例数波动阀值
        # @type InstanceThresholdCount: Integer
        # @param StabilizeThreshold: 稳定性次数阈值(防抖动配置统计周期数)
        # @type StabilizeThreshold: Integer
        # @param StabilizeStatisticsCycle: 稳定性统计周期(防抖动配置统计周期数)
        # @type StabilizeStatisticsCycle: Integer
        # @param IsCumulant: 是否累计计算,false:连续,true:累计
        # @type IsCumulant: Boolean
        # @param InstanceCount: 当日累计实例数;
        # 当天失败实例数向下波动量
        # @type InstanceCount: Integer

        attr_accessor :AlarmType, :InstanceThresholdCountPercent, :InstanceThresholdCount, :StabilizeThreshold, :StabilizeStatisticsCycle, :IsCumulant, :InstanceCount

        def initialize(alarmtype=nil, instancethresholdcountpercent=nil, instancethresholdcount=nil, stabilizethreshold=nil, stabilizestatisticscycle=nil, iscumulant=nil, instancecount=nil)
          @AlarmType = alarmtype
          @InstanceThresholdCountPercent = instancethresholdcountpercent
          @InstanceThresholdCount = instancethresholdcount
          @StabilizeThreshold = stabilizethreshold
          @StabilizeStatisticsCycle = stabilizestatisticscycle
          @IsCumulant = iscumulant
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @AlarmType = params['AlarmType']
          @InstanceThresholdCountPercent = params['InstanceThresholdCountPercent']
          @InstanceThresholdCount = params['InstanceThresholdCount']
          @StabilizeThreshold = params['StabilizeThreshold']
          @StabilizeStatisticsCycle = params['StabilizeStatisticsCycle']
          @IsCumulant = params['IsCumulant']
          @InstanceCount = params['InstanceCount']
        end
      end

      # 项目信息
      class ProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目标识，英文名，以字母开头，可包含字母、数字和下划线，不能超过32个字符
        # @type ProjectName: String
        # @param DisplayName: 项目显示名称，可以为中文名，以字母开头，可包含字母、数字和下划线，不能超过32个字符
        # @type DisplayName: String
        # @param ProjectModel: 项目模式，SIMPLE（默认）：简单模式 STANDARD：标准模式
        # @type ProjectModel: String

        attr_accessor :ProjectName, :DisplayName, :ProjectModel

        def initialize(projectname=nil, displayname=nil, projectmodel=nil)
          @ProjectName = projectname
          @DisplayName = displayname
          @ProjectModel = projectmodel
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @DisplayName = params['DisplayName']
          @ProjectModel = params['ProjectModel']
        end
      end

      # 项目返回结果
      class ProjectResult < TencentCloud::Common::AbstractModel
        # @param Status: 返回的结果 true/false
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 项目的用户对象
      class ProjectUserRole < TencentCloud::Common::AbstractModel
        # @param AppId: 租户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param RootAccountId: 主账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootAccountId: String
        # @param UserUin: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUin: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param DisplayName: 显示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Roles: 用户角色对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param IsCreator: 是否创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreator: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param IsProjectOwner: 是否项目负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsProjectOwner: Boolean
        # @param PhoneNum: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNum: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String

        attr_accessor :AppId, :RootAccountId, :UserUin, :UserName, :DisplayName, :Roles, :IsCreator, :CreateTime, :IsProjectOwner, :PhoneNum, :Email

        def initialize(appid=nil, rootaccountid=nil, useruin=nil, username=nil, displayname=nil, roles=nil, iscreator=nil, createtime=nil, isprojectowner=nil, phonenum=nil, email=nil)
          @AppId = appid
          @RootAccountId = rootaccountid
          @UserUin = useruin
          @UserName = username
          @DisplayName = displayname
          @Roles = roles
          @IsCreator = iscreator
          @CreateTime = createtime
          @IsProjectOwner = isprojectowner
          @PhoneNum = phonenum
          @Email = email
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RootAccountId = params['RootAccountId']
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @DisplayName = params['DisplayName']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              systemrole_tmp = SystemRole.new
              systemrole_tmp.deserialize(i)
              @Roles << systemrole_tmp
            end
          end
          @IsCreator = params['IsCreator']
          @CreateTime = params['CreateTime']
          @IsProjectOwner = params['IsProjectOwner']
          @PhoneNum = params['PhoneNum']
          @Email = params['Email']
        end
      end

      # 项目下的用户集合
      class ProjectUsersBrief < TencentCloud::Common::AbstractModel
        # @param Items: 用户集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param TotalCount: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageSize, :PageNumber, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagesize=nil, pagenumber=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageSize = pagesize
          @PageNumber = pagenumber
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              projectuserrole_tmp = ProjectUserRole.new
              projectuserrole_tmp.deserialize(i)
              @Items << projectuserrole_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # 字段值变量
      class QualityColumnValueConfig < TencentCloud::Common::AbstractModel
        # @param FieldKey: 字段值key
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

      # 对比规则
      class QualityCompareRule < TencentCloud::Common::AbstractModel
        # @param Items: 比较条件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param CycleStep: 周期性模板默认周期，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param ComputeExpression: o 表示 或，a 表示 且，数字表示items下标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeExpression: String

        attr_accessor :Items, :CycleStep, :ComputeExpression

        def initialize(items=nil, cyclestep=nil, computeexpression=nil)
          @Items = items
          @CycleStep = cyclestep
          @ComputeExpression = computeexpression
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              qualitycompareruleitem_tmp = QualityCompareRuleItem.new
              qualitycompareruleitem_tmp.deserialize(i)
              @Items << qualitycompareruleitem_tmp
            end
          end
          @CycleStep = params['CycleStep']
          @ComputeExpression = params['ComputeExpression']
        end
      end

      # 比较条件
      class QualityCompareRuleItem < TencentCloud::Common::AbstractModel
        # @param CompareType: 比较类型【入参必填】，1.固定值  2.波动值  3.数值范围比较  4.枚举范围比较  5.不用比较   6.字段数据相关性  7.公平性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareType: Integer
        # @param Operator: 比较操作类型【入参条件必填】，CompareType ∈ {1,2,6,7} 时必填
        # <  <=  ==  =>  > !=
        # IRLCRO:在区间内(左闭右开)
        # IRLORC:在区间内(左开右闭)
        # IRLCRC:在区间内(左闭右闭)
        # IRLORO:在区间内(左开右开)
        # NRLCRO:不在区间内(左闭右开)
        # NRLORC:不在区间内(左开右闭)
        # NRLCRC:不在区间内(左闭右闭)
        # NRLORO:不在区间内(左开右开)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param ValueComputeType: 质量统计值类型【入参条件必填】，当 CompareType ∈ {2,3,7} 时必填
        # 可选值：
        # 当 compareType = 2(波动值) 时：
        #   - 1 = 绝对值(ABS)
        #   - 2 = 上升(ASCEND)
        #   - 3 = 下降(DESCEND)

        # 当 compareType = 3(数值范围) 时：
        #   - 4 = 范围内(WITH_IN_RANGE)
        #   - 5 = 范围外(OUT_OF_RANGE)

        # 当 compareType = 7(公平性) 时：
        #   - 6 = 公平率(FAIRNESS_RATE)
        #   - 7 = 公平差(FAIRNESS_GAP)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueComputeType: Integer
        # @param ValueList: 比较阈值列表【入参必填】
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
              qualitythresholdvalue_tmp = QualityThresholdValue.new
              qualitythresholdvalue_tmp.deserialize(i)
              @ValueList << qualitythresholdvalue_tmp
            end
          end
        end
      end

      # 字段变量
      class QualityFieldConfig < TencentCloud::Common::AbstractModel
        # @param FieldKey: 字段key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldKey: String
        # @param FieldValue: 字段值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldValue: String
        # @param FieldDataType: 字段值类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldDataType: String
        # @param ValueConfig: 字段值变量信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityColumnValueConfig`

        attr_accessor :FieldKey, :FieldValue, :FieldDataType, :ValueConfig

        def initialize(fieldkey=nil, fieldvalue=nil, fielddatatype=nil, valueconfig=nil)
          @FieldKey = fieldkey
          @FieldValue = fieldvalue
          @FieldDataType = fielddatatype
          @ValueConfig = valueconfig
        end

        def deserialize(params)
          @FieldKey = params['FieldKey']
          @FieldValue = params['FieldValue']
          @FieldDataType = params['FieldDataType']
          unless params['ValueConfig'].nil?
            @ValueConfig = QualityColumnValueConfig.new
            @ValueConfig.deserialize(params['ValueConfig'])
          end
        end
      end

      # 数据质量生产调度任务业务实体
      class QualityProdSchedulerTask < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 生产调度任务工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskId: 生产调度任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 生产调度任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param CycleType: 生产调度任务周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: Integer
        # @param TaskType: 生产任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param ScheduleTimeZone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param InChargeIdList: 负责人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InChargeIdList: Array
        # @param InChargeNameList: 负责人name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InChargeNameList: Array

        attr_accessor :WorkflowId, :TaskId, :TaskName, :CycleType, :TaskType, :ScheduleTimeZone, :InChargeIdList, :InChargeNameList

        def initialize(workflowid=nil, taskid=nil, taskname=nil, cycletype=nil, tasktype=nil, scheduletimezone=nil, inchargeidlist=nil, inchargenamelist=nil)
          @WorkflowId = workflowid
          @TaskId = taskid
          @TaskName = taskname
          @CycleType = cycletype
          @TaskType = tasktype
          @ScheduleTimeZone = scheduletimezone
          @InChargeIdList = inchargeidlist
          @InChargeNameList = inchargenamelist
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @CycleType = params['CycleType']
          @TaskType = params['TaskType']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @InChargeIdList = params['InChargeIdList']
          @InChargeNameList = params['InChargeNameList']
        end
      end

      # 数据质量规则
      class QualityRule < TencentCloud::Common::AbstractModel
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
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20250806.models.QualityCompareRule`
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
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleFieldConfig`
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
        # @param SourceEngineTypes: 源端对应的引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceEngineTypes: Array
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableOwnerName: 表负责人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerName: String
        # @param ExecStrategy: 执行策略信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecStrategy: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupExecStrategy`
        # @param Subscription: 订阅信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subscription: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupSubscribe`
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DatasourceId: 数据源 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: Integer
        # @param DatabaseId: 数据库 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param MonitorStatus: 监控是否开启.0false,1true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorStatus: Integer
        # @param TriggerCondition: 触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerCondition: String
        # @param DsEnvType: 0或者未返回或者null：未定义，1：生产，2：开发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DsEnvType: Integer
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TargetSchemaName: 目标模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSchemaName: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param FailMsg: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMsg: String
        # @param GroupType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param AspectTaskId: 编排任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AspectTaskId: String
        # @param CatalogName: 数据目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String
        # @param TargetCatalogName: 目标表的数据目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetCatalogName: String

        attr_accessor :RuleId, :RuleGroupId, :TableId, :Name, :Type, :RuleTemplateId, :RuleTemplateContent, :QualityDim, :SourceObjectType, :SourceObjectDataType, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :CompareRule, :AlarmLevel, :Description, :Operator, :TargetDatabaseId, :TargetDatabaseName, :TargetTableId, :TargetTableName, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :MultiSourceFlag, :WhereFlag, :TemplateSql, :SubQualityDim, :TargetObjectType, :TargetObjectDataType, :TargetObjectDataTypeName, :TargetObjectValue, :SourceEngineTypes, :TableName, :TableOwnerName, :ExecStrategy, :Subscription, :CreateTime, :DatasourceId, :DatabaseId, :MonitorStatus, :TriggerCondition, :DsEnvType, :DatasourceType, :SchemaName, :TargetSchemaName, :ProjectId, :ProjectName, :UpdateTime, :DatasourceName, :DatabaseName, :FailMsg, :GroupType, :AspectTaskId, :CatalogName, :TargetCatalogName

        def initialize(ruleid=nil, rulegroupid=nil, tableid=nil, name=nil, type=nil, ruletemplateid=nil, ruletemplatecontent=nil, qualitydim=nil, sourceobjecttype=nil, sourceobjectdatatype=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, comparerule=nil, alarmlevel=nil, description=nil, operator=nil, targetdatabaseid=nil, targetdatabasename=nil, targettableid=nil, targettablename=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, multisourceflag=nil, whereflag=nil, templatesql=nil, subqualitydim=nil, targetobjecttype=nil, targetobjectdatatype=nil, targetobjectdatatypename=nil, targetobjectvalue=nil, sourceenginetypes=nil, tablename=nil, tableownername=nil, execstrategy=nil, subscription=nil, createtime=nil, datasourceid=nil, databaseid=nil, monitorstatus=nil, triggercondition=nil, dsenvtype=nil, datasourcetype=nil, schemaname=nil, targetschemaname=nil, projectid=nil, projectname=nil, updatetime=nil, datasourcename=nil, databasename=nil, failmsg=nil, grouptype=nil, aspecttaskid=nil, catalogname=nil, targetcatalogname=nil)
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
          @SourceEngineTypes = sourceenginetypes
          @TableName = tablename
          @TableOwnerName = tableownername
          @ExecStrategy = execstrategy
          @Subscription = subscription
          @CreateTime = createtime
          @DatasourceId = datasourceid
          @DatabaseId = databaseid
          @MonitorStatus = monitorstatus
          @TriggerCondition = triggercondition
          @DsEnvType = dsenvtype
          @DatasourceType = datasourcetype
          @SchemaName = schemaname
          @TargetSchemaName = targetschemaname
          @ProjectId = projectid
          @ProjectName = projectname
          @UpdateTime = updatetime
          @DatasourceName = datasourcename
          @DatabaseName = databasename
          @FailMsg = failmsg
          @GroupType = grouptype
          @AspectTaskId = aspecttaskid
          @CatalogName = catalogname
          @TargetCatalogName = targetcatalogname
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
            @CompareRule = QualityCompareRule.new
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
            @FieldConfig = QualityRuleFieldConfig.new
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
          @SourceEngineTypes = params['SourceEngineTypes']
          @TableName = params['TableName']
          @TableOwnerName = params['TableOwnerName']
          unless params['ExecStrategy'].nil?
            @ExecStrategy = QualityRuleGroupExecStrategy.new
            @ExecStrategy.deserialize(params['ExecStrategy'])
          end
          unless params['Subscription'].nil?
            @Subscription = QualityRuleGroupSubscribe.new
            @Subscription.deserialize(params['Subscription'])
          end
          @CreateTime = params['CreateTime']
          @DatasourceId = params['DatasourceId']
          @DatabaseId = params['DatabaseId']
          @MonitorStatus = params['MonitorStatus']
          @TriggerCondition = params['TriggerCondition']
          @DsEnvType = params['DsEnvType']
          @DatasourceType = params['DatasourceType']
          @SchemaName = params['SchemaName']
          @TargetSchemaName = params['TargetSchemaName']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @UpdateTime = params['UpdateTime']
          @DatasourceName = params['DatasourceName']
          @DatabaseName = params['DatabaseName']
          @FailMsg = params['FailMsg']
          @GroupType = params['GroupType']
          @AspectTaskId = params['AspectTaskId']
          @CatalogName = params['CatalogName']
          @TargetCatalogName = params['TargetCatalogName']
        end
      end

      # 批量创建规则时的单条数据创建结果
      class QualityRuleCreateResult < TencentCloud::Common::AbstractModel
        # @param Msg: 操作结果文案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Success: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Success: Boolean
        # @param Name: 规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RuleGroupId: 规则组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param RuleGroupTableId: 本地表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupTableId: Integer
        # @param RuleId: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer

        attr_accessor :Msg, :Success, :Name, :RuleGroupId, :RuleGroupTableId, :RuleId

        def initialize(msg=nil, success=nil, name=nil, rulegroupid=nil, rulegrouptableid=nil, ruleid=nil)
          @Msg = msg
          @Success = success
          @Name = name
          @RuleGroupId = rulegroupid
          @RuleGroupTableId = rulegrouptableid
          @RuleId = ruleid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @Success = params['Success']
          @Name = params['Name']
          @RuleGroupId = params['RuleGroupId']
          @RuleGroupTableId = params['RuleGroupTableId']
          @RuleId = params['RuleId']
        end
      end

      # 规则执行结果
      class QualityRuleExecResult < TencentCloud::Common::AbstractModel
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
        # @type CompareResult: :class:`Tencentcloud::Wedata.v20250806.models.CompareQualityResult`
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
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleFieldConfig`
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelConditionExpr: String
        # @param StartTime: 执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param AlarmLevel: 1/2/3:低/中/高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param TriggerCondition: 触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerCondition: String
        # @param RuleGroupName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupName: String
        # @param DatasourceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param RuleGroupExist: 判断是否屏蔽监控 0.屏蔽 1.不屏蔽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupExist: Integer
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param RuleGroupTableId: 数据表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupTableId: Integer
        # @param MonitorType: 监控方式 1.未配置, 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param FinishTime: 执行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishTime: String
        # @param GroupType: 监控任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param AspectTaskId: 编排任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AspectTaskId: String
        # @param CatalogName: 数据目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String

        attr_accessor :RuleExecId, :RuleGroupExecId, :RuleGroupId, :RuleId, :RuleName, :RuleType, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionExpression, :ExecResultStatus, :TriggerResult, :CompareResult, :TemplateName, :QualityDim, :TargetDBTableName, :TargetObjectValue, :TargetObjectDataType, :FieldConfig, :RelConditionExpr, :StartTime, :AlarmLevel, :TriggerCondition, :RuleGroupName, :DatasourceId, :DatasourceName, :DatabaseName, :SchemaName, :TableName, :RuleGroupExist, :DatasourceType, :RuleGroupTableId, :MonitorType, :FinishTime, :GroupType, :AspectTaskId, :CatalogName

        def initialize(ruleexecid=nil, rulegroupexecid=nil, rulegroupid=nil, ruleid=nil, rulename=nil, ruletype=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditionexpression=nil, execresultstatus=nil, triggerresult=nil, compareresult=nil, templatename=nil, qualitydim=nil, targetdbtablename=nil, targetobjectvalue=nil, targetobjectdatatype=nil, fieldconfig=nil, relconditionexpr=nil, starttime=nil, alarmlevel=nil, triggercondition=nil, rulegroupname=nil, datasourceid=nil, datasourcename=nil, databasename=nil, schemaname=nil, tablename=nil, rulegroupexist=nil, datasourcetype=nil, rulegrouptableid=nil, monitortype=nil, finishtime=nil, grouptype=nil, aspecttaskid=nil, catalogname=nil)
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
          @StartTime = starttime
          @AlarmLevel = alarmlevel
          @TriggerCondition = triggercondition
          @RuleGroupName = rulegroupname
          @DatasourceId = datasourceid
          @DatasourceName = datasourcename
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @RuleGroupExist = rulegroupexist
          @DatasourceType = datasourcetype
          @RuleGroupTableId = rulegrouptableid
          @MonitorType = monitortype
          @FinishTime = finishtime
          @GroupType = grouptype
          @AspectTaskId = aspecttaskid
          @CatalogName = catalogname
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
            @CompareResult = CompareQualityResult.new
            @CompareResult.deserialize(params['CompareResult'])
          end
          @TemplateName = params['TemplateName']
          @QualityDim = params['QualityDim']
          @TargetDBTableName = params['TargetDBTableName']
          @TargetObjectValue = params['TargetObjectValue']
          @TargetObjectDataType = params['TargetObjectDataType']
          unless params['FieldConfig'].nil?
            @FieldConfig = QualityRuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @RelConditionExpr = params['RelConditionExpr']
          @StartTime = params['StartTime']
          @AlarmLevel = params['AlarmLevel']
          @TriggerCondition = params['TriggerCondition']
          @RuleGroupName = params['RuleGroupName']
          @DatasourceId = params['DatasourceId']
          @DatasourceName = params['DatasourceName']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @RuleGroupExist = params['RuleGroupExist']
          @DatasourceType = params['DatasourceType']
          @RuleGroupTableId = params['RuleGroupTableId']
          @MonitorType = params['MonitorType']
          @FinishTime = params['FinishTime']
          @GroupType = params['GroupType']
          @AspectTaskId = params['AspectTaskId']
          @CatalogName = params['CatalogName']
        end
      end

      # 规则变量替换
      class QualityRuleFieldConfig < TencentCloud::Common::AbstractModel
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
              qualityfieldconfig_tmp = QualityFieldConfig.new
              qualityfieldconfig_tmp.deserialize(i)
              @WhereConfig << qualityfieldconfig_tmp
            end
          end
          unless params['TableConfig'].nil?
            @TableConfig = []
            params['TableConfig'].each do |i|
              qualitytableconfig_tmp = QualityTableConfig.new
              qualitytableconfig_tmp.deserialize(i)
              @TableConfig << qualitytableconfig_tmp
            end
          end
        end
      end

      # 数据质量监控任务
      class QualityRuleGroup < TencentCloud::Common::AbstractModel
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
        # @type ExecStrategy: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupExecStrategy`
        # @param Subscription: 订阅信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subscription: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupSubscribe`
        # @param DatabaseId: 数据库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
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
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StrategyConfig: 是否已配置执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyConfig: Boolean
        # @param SubscribeConfig: 是否已配置执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeConfig: Boolean
        # @param DsEnvType: 数据源环境：0或者未返回.未定义，1.生产 2.开发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DsEnvType: Integer
        # @param ClusterDeployType: EMR集群部署方式：CVM/TKE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDeployType: String
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ExecDetail: 执行详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecDetail: String
        # @param PipelineTaskCount: 事中关联任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PipelineTaskCount: Integer
        # @param EnableRuleCount: 有效规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRuleCount: Integer
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateUserName: 监控创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserName: String
        # @param GroupType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param AspectTaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AspectTaskId: String
        # @param CatalogName: 数据目录名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String

        attr_accessor :RuleGroupId, :DatasourceId, :DatasourceName, :DatasourceType, :MonitorType, :UpdateTime, :TableName, :TableId, :TableOwnerName, :ExecStrategy, :Subscription, :DatabaseId, :DatabaseName, :SchemaName, :Permission, :RuleCount, :MonitorStatus, :TableOwnerUserId, :InstanceId, :CreateTime, :StrategyConfig, :SubscribeConfig, :DsEnvType, :ClusterDeployType, :Name, :ExecDetail, :PipelineTaskCount, :EnableRuleCount, :Description, :CreateUserName, :GroupType, :AspectTaskId, :CatalogName

        def initialize(rulegroupid=nil, datasourceid=nil, datasourcename=nil, datasourcetype=nil, monitortype=nil, updatetime=nil, tablename=nil, tableid=nil, tableownername=nil, execstrategy=nil, subscription=nil, databaseid=nil, databasename=nil, schemaname=nil, permission=nil, rulecount=nil, monitorstatus=nil, tableowneruserid=nil, instanceid=nil, createtime=nil, strategyconfig=nil, subscribeconfig=nil, dsenvtype=nil, clusterdeploytype=nil, name=nil, execdetail=nil, pipelinetaskcount=nil, enablerulecount=nil, description=nil, createusername=nil, grouptype=nil, aspecttaskid=nil, catalogname=nil)
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
          @SchemaName = schemaname
          @Permission = permission
          @RuleCount = rulecount
          @MonitorStatus = monitorstatus
          @TableOwnerUserId = tableowneruserid
          @InstanceId = instanceid
          @CreateTime = createtime
          @StrategyConfig = strategyconfig
          @SubscribeConfig = subscribeconfig
          @DsEnvType = dsenvtype
          @ClusterDeployType = clusterdeploytype
          @Name = name
          @ExecDetail = execdetail
          @PipelineTaskCount = pipelinetaskcount
          @EnableRuleCount = enablerulecount
          @Description = description
          @CreateUserName = createusername
          @GroupType = grouptype
          @AspectTaskId = aspecttaskid
          @CatalogName = catalogname
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
            @ExecStrategy = QualityRuleGroupExecStrategy.new
            @ExecStrategy.deserialize(params['ExecStrategy'])
          end
          unless params['Subscription'].nil?
            @Subscription = QualityRuleGroupSubscribe.new
            @Subscription.deserialize(params['Subscription'])
          end
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @Permission = params['Permission']
          @RuleCount = params['RuleCount']
          @MonitorStatus = params['MonitorStatus']
          @TableOwnerUserId = params['TableOwnerUserId']
          @InstanceId = params['InstanceId']
          @CreateTime = params['CreateTime']
          @StrategyConfig = params['StrategyConfig']
          @SubscribeConfig = params['SubscribeConfig']
          @DsEnvType = params['DsEnvType']
          @ClusterDeployType = params['ClusterDeployType']
          @Name = params['Name']
          @ExecDetail = params['ExecDetail']
          @PipelineTaskCount = params['PipelineTaskCount']
          @EnableRuleCount = params['EnableRuleCount']
          @Description = params['Description']
          @CreateUserName = params['CreateUserName']
          @GroupType = params['GroupType']
          @AspectTaskId = params['AspectTaskId']
          @CatalogName = params['CatalogName']
        end
      end

      # 任务配置
      class QualityRuleGroupConfig < TencentCloud::Common::AbstractModel
        # @param AnalysisType: 分析类型，可选值：
        # INFERENCE-推理表
        # TIME_SERIES-时序表
        # SNAPSHOT-快照表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisType: String
        # @param ModelMonitorType: 模型检测类型，分析类型为推理表（INFERENCE）时必填，可选值：
        # CLAASSIFICATION-分类
        # REGRESSION-回归
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelMonitorType: String
        # @param PredictColumn: 预测列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictColumn: String
        # @param PredictColumnType: 预测列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictColumnType: String
        # @param LabelColumn: 标签列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelColumn: String
        # @param LabelColumnType: 标签列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelColumnType: String
        # @param ModelIdColumn: 模型id列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelIdColumn: String
        # @param ModelIdColumnType: 模型id列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelIdColumnType: String
        # @param TimestampColumn: 时间戳列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimestampColumn: String
        # @param TimestampColumnType: 时间戳列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimestampColumnType: String
        # @param Granularity: 指标粒度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Granularity: Integer
        # @param GranularityType: 指标粒度单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GranularityType: String
        # @param BaseTable: 基准表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseTable: String
        # @param BaseDb: 基准库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseDb: String
        # @param ComparisonColumn: 对比列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComparisonColumn: String
        # @param ComparisonColumnType: 对比列类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComparisonColumnType: String
        # @param ProtectionValue: 保护组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectionValue: String
        # @param PositiveValue: 正类值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PositiveValue: String
        # @param FeatureColumn: 特征列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureColumn: String

        attr_accessor :AnalysisType, :ModelMonitorType, :PredictColumn, :PredictColumnType, :LabelColumn, :LabelColumnType, :ModelIdColumn, :ModelIdColumnType, :TimestampColumn, :TimestampColumnType, :Granularity, :GranularityType, :BaseTable, :BaseDb, :ComparisonColumn, :ComparisonColumnType, :ProtectionValue, :PositiveValue, :FeatureColumn

        def initialize(analysistype=nil, modelmonitortype=nil, predictcolumn=nil, predictcolumntype=nil, labelcolumn=nil, labelcolumntype=nil, modelidcolumn=nil, modelidcolumntype=nil, timestampcolumn=nil, timestampcolumntype=nil, granularity=nil, granularitytype=nil, basetable=nil, basedb=nil, comparisoncolumn=nil, comparisoncolumntype=nil, protectionvalue=nil, positivevalue=nil, featurecolumn=nil)
          @AnalysisType = analysistype
          @ModelMonitorType = modelmonitortype
          @PredictColumn = predictcolumn
          @PredictColumnType = predictcolumntype
          @LabelColumn = labelcolumn
          @LabelColumnType = labelcolumntype
          @ModelIdColumn = modelidcolumn
          @ModelIdColumnType = modelidcolumntype
          @TimestampColumn = timestampcolumn
          @TimestampColumnType = timestampcolumntype
          @Granularity = granularity
          @GranularityType = granularitytype
          @BaseTable = basetable
          @BaseDb = basedb
          @ComparisonColumn = comparisoncolumn
          @ComparisonColumnType = comparisoncolumntype
          @ProtectionValue = protectionvalue
          @PositiveValue = positivevalue
          @FeatureColumn = featurecolumn
        end

        def deserialize(params)
          @AnalysisType = params['AnalysisType']
          @ModelMonitorType = params['ModelMonitorType']
          @PredictColumn = params['PredictColumn']
          @PredictColumnType = params['PredictColumnType']
          @LabelColumn = params['LabelColumn']
          @LabelColumnType = params['LabelColumnType']
          @ModelIdColumn = params['ModelIdColumn']
          @ModelIdColumnType = params['ModelIdColumnType']
          @TimestampColumn = params['TimestampColumn']
          @TimestampColumnType = params['TimestampColumnType']
          @Granularity = params['Granularity']
          @GranularityType = params['GranularityType']
          @BaseTable = params['BaseTable']
          @BaseDb = params['BaseDb']
          @ComparisonColumn = params['ComparisonColumn']
          @ComparisonColumnType = params['ComparisonColumnType']
          @ProtectionValue = params['ProtectionValue']
          @PositiveValue = params['PositiveValue']
          @FeatureColumn = params['FeatureColumn']
        end
      end

      # 质量监控任务执行策略
      class QualityRuleGroupExecStrategy < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param ExecutorGroupId: 执行资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param RuleGroupName: 监控任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupName: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param RuleGroupId: 监控任务的Id，编辑更新监控任务时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param ExecQueue: 计算队列，数据源为HIVE、ICEBERG、DLC时必填，数据源为DLC时，该字段填写DLC数据引擎名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecQueue: String
        # @param ExecutorGroupName: 执行资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupName: String
        # @param Tasks: 关联的生产调度任务列表，MonitorType=2时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param StartTime: 周期开始时间，MonitorType=3时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 周期结束时间，MonitorType=3时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CycleType: 调度周期类型，MonitorType=3时必填，具体可填值参考：
        # I：按分钟调度
        # H：按小时调度
        # D：按天调度
        # W：按周调度
        # M：按月调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param DelayTime: 延迟调度时间，MonitorType=3时必填，主要用于调度周期为天/周/月的任务，
        # 计量单位为分钟，比如天任务需要延迟到02:00执行，则该字段值为120，表示延迟2小时（120分钟）
        # 对于小时/分钟任务，该字段无意义，填固定值0，否则字段校验不通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CycleStep: 间隔，MonitorType=3时必填，表示周期任务间隔时间
        # 周/月/天任务可选：1
        # 分钟任务可选：10，20，30
        # 小时任务可选：1，2，3，4，6，8，12
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param TaskAction: 时间指定，主要用于调度周期为周/月的任务
        # 调度周期为周时：含义为指定周几运行，可选多个，英文逗号隔开
        # 可填1,2...7，依次代表周日，周一...周六，例如填“1,2”，表示周日、周一执行；

        # 调度周期为月时，含义为指定每月的几号运行，可选多个，英文逗号隔开
        # 可填1,2,...,31，依次代表1号，2号...31号，例如填“1,2”，表示每月的1号、2号执行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param ExecEngineType: 运行的执行引擎，不传时会请求该数据源下默认的执行引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecEngineType: String
        # @param ExecPlan: 执行计划
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecPlan: String
        # @param RuleId: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param TriggerTypes: 触发类型，主要用于“关联生产调度”（MonitorType=2）的监控任务，可选值：
        # CYCLE：周期调度
        # MAKE_UP：补录
        # RERUN：重跑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTypes: Array
        # @param DlcGroupName: 数据源为DLC时，对应DLC资源组，根据ExecQueue中填的DLC引擎名称，选择对应引擎下的资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DlcGroupName: String
        # @param SchemaName: schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ScheduleTimeZone: 时区，默认为UTC+8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param GroupConfig: 任务监控参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleGroupConfig`
        # @param EngineParam: 引擎参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineParam: String
        # @param CatalogName: 数据目录名称，不填默认为DataLakeCatalog（更新质量监控时该参数无效）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String

        attr_accessor :MonitorType, :ExecutorGroupId, :RuleGroupName, :DatabaseName, :DatasourceId, :TableName, :RuleGroupId, :ExecQueue, :ExecutorGroupName, :Tasks, :StartTime, :EndTime, :CycleType, :DelayTime, :CycleStep, :TaskAction, :ExecEngineType, :ExecPlan, :RuleId, :RuleName, :TriggerTypes, :DlcGroupName, :SchemaName, :Description, :ScheduleTimeZone, :GroupConfig, :EngineParam, :CatalogName

        def initialize(monitortype=nil, executorgroupid=nil, rulegroupname=nil, databasename=nil, datasourceid=nil, tablename=nil, rulegroupid=nil, execqueue=nil, executorgroupname=nil, tasks=nil, starttime=nil, endtime=nil, cycletype=nil, delaytime=nil, cyclestep=nil, taskaction=nil, execenginetype=nil, execplan=nil, ruleid=nil, rulename=nil, triggertypes=nil, dlcgroupname=nil, schemaname=nil, description=nil, scheduletimezone=nil, groupconfig=nil, engineparam=nil, catalogname=nil)
          @MonitorType = monitortype
          @ExecutorGroupId = executorgroupid
          @RuleGroupName = rulegroupname
          @DatabaseName = databasename
          @DatasourceId = datasourceid
          @TableName = tablename
          @RuleGroupId = rulegroupid
          @ExecQueue = execqueue
          @ExecutorGroupName = executorgroupname
          @Tasks = tasks
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @DelayTime = delaytime
          @CycleStep = cyclestep
          @TaskAction = taskaction
          @ExecEngineType = execenginetype
          @ExecPlan = execplan
          @RuleId = ruleid
          @RuleName = rulename
          @TriggerTypes = triggertypes
          @DlcGroupName = dlcgroupname
          @SchemaName = schemaname
          @Description = description
          @ScheduleTimeZone = scheduletimezone
          @GroupConfig = groupconfig
          @EngineParam = engineparam
          @CatalogName = catalogname
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @ExecutorGroupId = params['ExecutorGroupId']
          @RuleGroupName = params['RuleGroupName']
          @DatabaseName = params['DatabaseName']
          @DatasourceId = params['DatasourceId']
          @TableName = params['TableName']
          @RuleGroupId = params['RuleGroupId']
          @ExecQueue = params['ExecQueue']
          @ExecutorGroupName = params['ExecutorGroupName']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              qualityprodschedulertask_tmp = QualityProdSchedulerTask.new
              qualityprodschedulertask_tmp.deserialize(i)
              @Tasks << qualityprodschedulertask_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @DelayTime = params['DelayTime']
          @CycleStep = params['CycleStep']
          @TaskAction = params['TaskAction']
          @ExecEngineType = params['ExecEngineType']
          @ExecPlan = params['ExecPlan']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @TriggerTypes = params['TriggerTypes']
          @DlcGroupName = params['DlcGroupName']
          @SchemaName = params['SchemaName']
          @Description = params['Description']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          unless params['GroupConfig'].nil?
            @GroupConfig = QualityRuleGroupConfig.new
            @GroupConfig.deserialize(params['GroupConfig'])
          end
          @EngineParam = params['EngineParam']
          @CatalogName = params['CatalogName']
        end
      end

      # 质量监控分页
      class QualityRuleGroupPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 质量监控列表
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
              qualityrulegroup_tmp = QualityRuleGroup.new
              qualityrulegroup_tmp.deserialize(i)
              @Items << qualityrulegroup_tmp
            end
          end
        end
      end

      # 任务创建结果
      class QualityRuleGroupResult < TencentCloud::Common::AbstractModel
        # @param Id: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RuleGroupTableId: 监控表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupTableId: Integer
        # @param DatasourceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param MonitorType: 监控类型：1.未配置, 2.关联生产调度, 3.离线周期检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: Integer
        # @param ExecDetail: 执行描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecDetail: String
        # @param FailMsg: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMsg: String
        # @param CatalogName: 数据目录名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String

        attr_accessor :Id, :Name, :RuleGroupTableId, :DatasourceId, :DatabaseName, :SchemaName, :TableName, :MonitorType, :ExecDetail, :FailMsg, :CatalogName

        def initialize(id=nil, name=nil, rulegrouptableid=nil, datasourceid=nil, databasename=nil, schemaname=nil, tablename=nil, monitortype=nil, execdetail=nil, failmsg=nil, catalogname=nil)
          @Id = id
          @Name = name
          @RuleGroupTableId = rulegrouptableid
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @MonitorType = monitortype
          @ExecDetail = execdetail
          @FailMsg = failmsg
          @CatalogName = catalogname
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @RuleGroupTableId = params['RuleGroupTableId']
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @MonitorType = params['MonitorType']
          @ExecDetail = params['ExecDetail']
          @FailMsg = params['FailMsg']
          @CatalogName = params['CatalogName']
        end
      end

      # 数据质量规则组订阅信息
      class QualityRuleGroupSubscribe < TencentCloud::Common::AbstractModel
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
        # @param RuleId: 规则Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param AlarmMessageRule: 发送对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmMessageRule: String

        attr_accessor :RuleGroupId, :Receivers, :SubscribeType, :WebHooks, :RuleId, :RuleName, :AlarmMessageRule

        def initialize(rulegroupid=nil, receivers=nil, subscribetype=nil, webhooks=nil, ruleid=nil, rulename=nil, alarmmessagerule=nil)
          @RuleGroupId = rulegroupid
          @Receivers = receivers
          @SubscribeType = subscribetype
          @WebHooks = webhooks
          @RuleId = ruleid
          @RuleName = rulename
          @AlarmMessageRule = alarmmessagerule
        end

        def deserialize(params)
          @RuleGroupId = params['RuleGroupId']
          unless params['Receivers'].nil?
            @Receivers = []
            params['Receivers'].each do |i|
              qualitysubscribereceiver_tmp = QualitySubscribeReceiver.new
              qualitysubscribereceiver_tmp.deserialize(i)
              @Receivers << qualitysubscribereceiver_tmp
            end
          end
          @SubscribeType = params['SubscribeType']
          unless params['WebHooks'].nil?
            @WebHooks = []
            params['WebHooks'].each do |i|
              qualitysubscribewebhook_tmp = QualitySubscribeWebHook.new
              qualitysubscribewebhook_tmp.deserialize(i)
              @WebHooks << qualitysubscribewebhook_tmp
            end
          end
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @AlarmMessageRule = params['AlarmMessageRule']
        end
      end

      # 规则表
      class QualityRuleGroupTableV2 < TencentCloud::Common::AbstractModel
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param RuleGroupId: 规则组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param TableId: 表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableOwnerUserId: 表负责人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerUserId: Integer
        # @param TableOwnerName: 表负责人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableOwnerName: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatasourceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceName: String
        # @param DatabaseId: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param DatasourceType: 数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceType: Integer
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param RuleGroupCount: 监控数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupCount: Integer
        # @param RuleCount: 规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCount: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param EnableRuleGroupCount: 生效监控数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRuleGroupCount: Integer
        # @param CatalogName: 数据目录名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String

        attr_accessor :Id, :RuleGroupId, :TableId, :TableName, :SchemaName, :TableOwnerUserId, :TableOwnerName, :DatasourceId, :DatasourceName, :DatabaseId, :DatabaseName, :DatasourceType, :InstanceId, :RuleGroupCount, :RuleCount, :CreateTime, :UpdateTime, :EnableRuleGroupCount, :CatalogName

        def initialize(id=nil, rulegroupid=nil, tableid=nil, tablename=nil, schemaname=nil, tableowneruserid=nil, tableownername=nil, datasourceid=nil, datasourcename=nil, databaseid=nil, databasename=nil, datasourcetype=nil, instanceid=nil, rulegroupcount=nil, rulecount=nil, createtime=nil, updatetime=nil, enablerulegroupcount=nil, catalogname=nil)
          @Id = id
          @RuleGroupId = rulegroupid
          @TableId = tableid
          @TableName = tablename
          @SchemaName = schemaname
          @TableOwnerUserId = tableowneruserid
          @TableOwnerName = tableownername
          @DatasourceId = datasourceid
          @DatasourceName = datasourcename
          @DatabaseId = databaseid
          @DatabaseName = databasename
          @DatasourceType = datasourcetype
          @InstanceId = instanceid
          @RuleGroupCount = rulegroupcount
          @RuleCount = rulecount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EnableRuleGroupCount = enablerulegroupcount
          @CatalogName = catalogname
        end

        def deserialize(params)
          @Id = params['Id']
          @RuleGroupId = params['RuleGroupId']
          @TableId = params['TableId']
          @TableName = params['TableName']
          @SchemaName = params['SchemaName']
          @TableOwnerUserId = params['TableOwnerUserId']
          @TableOwnerName = params['TableOwnerName']
          @DatasourceId = params['DatasourceId']
          @DatasourceName = params['DatasourceName']
          @DatabaseId = params['DatabaseId']
          @DatabaseName = params['DatabaseName']
          @DatasourceType = params['DatasourceType']
          @InstanceId = params['InstanceId']
          @RuleGroupCount = params['RuleGroupCount']
          @RuleCount = params['RuleCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @EnableRuleGroupCount = params['EnableRuleGroupCount']
          @CatalogName = params['CatalogName']
        end
      end

      # 规则组分页
      class QualityRuleGroupsTableVO < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 监控对象列表
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
              qualityrulegrouptablev2_tmp = QualityRuleGroupTableV2.new
              qualityrulegrouptablev2_tmp.deserialize(i)
              @Items << qualityrulegrouptablev2_tmp
            end
          end
        end
      end

      # 数据质量规则
      class QualityRuleInfo < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 规则类型
        # 1：系统模版
        # 2：自定义模版
        # 3：自定义SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param DatasourceId: 数据源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param CompareRule: 报警触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareRule: :class:`Tencentcloud::Wedata.v20250806.models.QualityCompareRule`
        # @param AlarmLevel: 报警触发级别 1.低, 2.中, 3.高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param SourceEngineTypes: 该规则支持的执行引擎列表，可选值如下：
        # 1 - MYSQL
        # 2 - HIVE
        # 4 - SPARK
        # 8 - LIVY
        # 16 - DLC
        # 32 - GBASE
        # 64 - TCHouse-P
        # 128 - DORIS
        # 256 - TCHouse-D
        # 512 - EMR_STARROCKS
        # 1024 - TCHouse-X
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceEngineTypes: Array
        # @param TableName: 表名称，TableId和TableName至少填一个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param RuleTemplateId: 规则模板id，【条件必填】当Type≠3（自定义SQL）时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: Integer
        # @param QualityDim: 规则所属质量维度，Type=3（自定义SQL）时必填（1：准确性，2：唯一性，3：完整性，4：一致性，5：及时性，6：有效性）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityDim: Integer
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param RuleGroupId: 规则组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleGroupId: Integer
        # @param TableId: 数据表ID，TableId和TableName至少要有一个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param SourceObjectDataTypeName: 源数据对象（表、字段等）详细类型，【条件必填】当Type=1（系统模板）时必填
        # 表对应固定值“table”（模板是表级的）
        # 字段则是对应字段类型：int、string等（模板是字段级的）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectDataTypeName: String
        # @param SourceObjectValue: 源数据对象（表、字段等）名称，【条件必填】当Type=1（系统模板）时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceObjectValue: String
        # @param ConditionType: 检测范围，【条件必填】当Type=1（系统模板）或2（自定义模板）时必填。
        # 1.全表
        # 2.条件扫描
        # 注意：CompareType为2（波动值）或 使用用户自定义模板时包含过滤条件${FILTER}时，检测范围必须为2条件扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionType: Integer
        # @param ConditionExpression: 条件扫描WHERE条件表达式，【条件必填】ConditionType=2(条件扫描)时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionExpression: String
        # @param CustomSql: 自定义SQL（Base64编码），【条件必填】Type=3（自定义SQL）时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomSql: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DatabaseId: 数据库Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String
        # @param TargetDatabaseId: 目标库Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetDatabaseId: String
        # @param TargetTableId: 目标表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetTableId: String
        # @param TargetConditionExpr: 目标过滤条件表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetConditionExpr: String
        # @param RelConditionExpr: 源字段与目标字段关联条件on表达式，【条件必填】仅在字段数据相关性规则时必填（ruleTemplate中qualityDim=4(一致性) 且 subQualityDim=3(字段数据相关性)），例如sourceTable.model_id=targetTable.model_id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelConditionExpr: String
        # @param FieldConfig: 自定义模版sql表达式字段替换参数，【条件必填】Type=2（自定义模板）时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldConfig: :class:`Tencentcloud::Wedata.v20250806.models.QualityRuleFieldConfig`
        # @param TargetObjectValue: 目标字段名称  CITY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetObjectValue: String
        # @param Index: 下标，新增时区分不同数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param SchemaName: 模式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TargetSchemaName: 目标schema名称，【条件必填】仅在系统模板的“字段数据相关性”规则以及数据源为TCHouse-P时必填（ruleTemplate的qualityDim=4 且 subQualityDim=3）。用于校验和关联跨表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSchemaName: String
        # @param TargetDatabaseName: 目标库名称，【条件必填】仅在系统模板的“字段数据相关性”规则时必填（ruleTemplate的qualityDim=4 且 subQualityDim=3）。用于校验和关联跨表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetDatabaseName: String
        # @param TargetTableName: 目标表名称，【条件必填】仅在系统模板的“字段数据相关性”规则时必填（ruleTemplate的qualityDim=4 且 subQualityDim=3）。用于校验和关联跨表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetTableName: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param CatalogName: 数据目录名称，主要用于dlc数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogName: String
        # @param TargetCatalogName: 目标数据目录名称，【条件必填】仅在系统模板的“字段数据相关性”规则以及数据源为DLC时必填（ruleTemplate的qualityDim=4 且 subQualityDim=3）。用于校验和关联跨表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetCatalogName: String

        attr_accessor :Name, :Type, :DatasourceId, :DatabaseName, :CompareRule, :AlarmLevel, :SourceEngineTypes, :TableName, :RuleTemplateId, :QualityDim, :ProjectId, :RuleGroupId, :TableId, :SourceObjectDataTypeName, :SourceObjectValue, :ConditionType, :ConditionExpression, :CustomSql, :Description, :DatabaseId, :TargetDatabaseId, :TargetTableId, :TargetConditionExpr, :RelConditionExpr, :FieldConfig, :TargetObjectValue, :Index, :SchemaName, :TargetSchemaName, :TargetDatabaseName, :TargetTableName, :TaskId, :CatalogName, :TargetCatalogName

        def initialize(name=nil, type=nil, datasourceid=nil, databasename=nil, comparerule=nil, alarmlevel=nil, sourceenginetypes=nil, tablename=nil, ruletemplateid=nil, qualitydim=nil, projectid=nil, rulegroupid=nil, tableid=nil, sourceobjectdatatypename=nil, sourceobjectvalue=nil, conditiontype=nil, conditionexpression=nil, customsql=nil, description=nil, databaseid=nil, targetdatabaseid=nil, targettableid=nil, targetconditionexpr=nil, relconditionexpr=nil, fieldconfig=nil, targetobjectvalue=nil, index=nil, schemaname=nil, targetschemaname=nil, targetdatabasename=nil, targettablename=nil, taskid=nil, catalogname=nil, targetcatalogname=nil)
          @Name = name
          @Type = type
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @CompareRule = comparerule
          @AlarmLevel = alarmlevel
          @SourceEngineTypes = sourceenginetypes
          @TableName = tablename
          @RuleTemplateId = ruletemplateid
          @QualityDim = qualitydim
          @ProjectId = projectid
          @RuleGroupId = rulegroupid
          @TableId = tableid
          @SourceObjectDataTypeName = sourceobjectdatatypename
          @SourceObjectValue = sourceobjectvalue
          @ConditionType = conditiontype
          @ConditionExpression = conditionexpression
          @CustomSql = customsql
          @Description = description
          @DatabaseId = databaseid
          @TargetDatabaseId = targetdatabaseid
          @TargetTableId = targettableid
          @TargetConditionExpr = targetconditionexpr
          @RelConditionExpr = relconditionexpr
          @FieldConfig = fieldconfig
          @TargetObjectValue = targetobjectvalue
          @Index = index
          @SchemaName = schemaname
          @TargetSchemaName = targetschemaname
          @TargetDatabaseName = targetdatabasename
          @TargetTableName = targettablename
          @TaskId = taskid
          @CatalogName = catalogname
          @TargetCatalogName = targetcatalogname
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          unless params['CompareRule'].nil?
            @CompareRule = QualityCompareRule.new
            @CompareRule.deserialize(params['CompareRule'])
          end
          @AlarmLevel = params['AlarmLevel']
          @SourceEngineTypes = params['SourceEngineTypes']
          @TableName = params['TableName']
          @RuleTemplateId = params['RuleTemplateId']
          @QualityDim = params['QualityDim']
          @ProjectId = params['ProjectId']
          @RuleGroupId = params['RuleGroupId']
          @TableId = params['TableId']
          @SourceObjectDataTypeName = params['SourceObjectDataTypeName']
          @SourceObjectValue = params['SourceObjectValue']
          @ConditionType = params['ConditionType']
          @ConditionExpression = params['ConditionExpression']
          @CustomSql = params['CustomSql']
          @Description = params['Description']
          @DatabaseId = params['DatabaseId']
          @TargetDatabaseId = params['TargetDatabaseId']
          @TargetTableId = params['TargetTableId']
          @TargetConditionExpr = params['TargetConditionExpr']
          @RelConditionExpr = params['RelConditionExpr']
          unless params['FieldConfig'].nil?
            @FieldConfig = QualityRuleFieldConfig.new
            @FieldConfig.deserialize(params['FieldConfig'])
          end
          @TargetObjectValue = params['TargetObjectValue']
          @Index = params['Index']
          @SchemaName = params['SchemaName']
          @TargetSchemaName = params['TargetSchemaName']
          @TargetDatabaseName = params['TargetDatabaseName']
          @TargetTableName = params['TargetTableName']
          @TaskId = params['TaskId']
          @CatalogName = params['CatalogName']
          @TargetCatalogName = params['TargetCatalogName']
        end
      end

      # 数据质量规则分页
      class QualityRulePage < TencentCloud::Common::AbstractModel
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
              qualityrule_tmp = QualityRule.new
              qualityrule_tmp.deserialize(i)
              @Items << qualityrule_tmp
            end
          end
        end
      end

      # 规则模版
      class QualityRuleTemplate < TencentCloud::Common::AbstractModel
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
        # @param ResolvedSqlExpression: sql表达式解析对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResolvedSqlExpression: :class:`Tencentcloud::Wedata.v20250806.models.QualitySqlExpression`
        # @param DatasourceTypes: 支持的数据源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceTypes: Array
        # @param UserIdStr: 创建人IdStr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIdStr: String

        attr_accessor :RuleTemplateId, :Name, :Description, :Type, :SourceObjectType, :SourceObjectDataType, :SourceContent, :SourceEngineTypes, :QualityDim, :CompareType, :CitationCount, :UserId, :UserName, :UpdateTime, :WhereFlag, :MultiSourceFlag, :SqlExpression, :SubQualityDim, :ResolvedSqlExpression, :DatasourceTypes, :UserIdStr

        def initialize(ruletemplateid=nil, name=nil, description=nil, type=nil, sourceobjecttype=nil, sourceobjectdatatype=nil, sourcecontent=nil, sourceenginetypes=nil, qualitydim=nil, comparetype=nil, citationcount=nil, userid=nil, username=nil, updatetime=nil, whereflag=nil, multisourceflag=nil, sqlexpression=nil, subqualitydim=nil, resolvedsqlexpression=nil, datasourcetypes=nil, useridstr=nil)
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
          @ResolvedSqlExpression = resolvedsqlexpression
          @DatasourceTypes = datasourcetypes
          @UserIdStr = useridstr
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
          unless params['ResolvedSqlExpression'].nil?
            @ResolvedSqlExpression = QualitySqlExpression.new
            @ResolvedSqlExpression.deserialize(params['ResolvedSqlExpression'])
          end
          @DatasourceTypes = params['DatasourceTypes']
          @UserIdStr = params['UserIdStr']
        end
      end

      # RuleTemplatePage 结果
      class QualityRuleTemplatePage < TencentCloud::Common::AbstractModel
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
              qualityruletemplate_tmp = QualityRuleTemplate.new
              qualityruletemplate_tmp.deserialize(i)
              @Items << qualityruletemplate_tmp
            end
          end
        end
      end

      # 数据质量自定义规则时的sql表达式解析对象
      class QualitySqlExpression < TencentCloud::Common::AbstractModel
        # @param TableExpressions: sql表达式表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableExpressions: Array
        # @param ParamExpressions: sql表达式字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamExpressions: Array
        # @param SystemTemplateExpressions: 新增模型检测类系统模板sql中占位符集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemTemplateExpressions: Array

        attr_accessor :TableExpressions, :ParamExpressions, :SystemTemplateExpressions

        def initialize(tableexpressions=nil, paramexpressions=nil, systemtemplateexpressions=nil)
          @TableExpressions = tableexpressions
          @ParamExpressions = paramexpressions
          @SystemTemplateExpressions = systemtemplateexpressions
        end

        def deserialize(params)
          unless params['TableExpressions'].nil?
            @TableExpressions = []
            params['TableExpressions'].each do |i|
              qualitysqlexpressiontable_tmp = QualitySqlExpressionTable.new
              qualitysqlexpressiontable_tmp.deserialize(i)
              @TableExpressions << qualitysqlexpressiontable_tmp
            end
          end
          @ParamExpressions = params['ParamExpressions']
          @SystemTemplateExpressions = params['SystemTemplateExpressions']
        end
      end

      # 数据质量自定义规则时的sql表达式解析表对象
      class QualitySqlExpressionTable < TencentCloud::Common::AbstractModel
        # @param TableExpression: sql表达式表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableExpression: String
        # @param ColumnExpression: sql表达式字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnExpression: Array

        attr_accessor :TableExpression, :ColumnExpression

        def initialize(tableexpression=nil, columnexpression=nil)
          @TableExpression = tableexpression
          @ColumnExpression = columnexpression
        end

        def deserialize(params)
          @TableExpression = params['TableExpression']
          @ColumnExpression = params['ColumnExpression']
        end
      end

      # 订阅接收人
      class QualitySubscribeReceiver < TencentCloud::Common::AbstractModel
        # @param ReceiverUserId: 接收人Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverUserId: Integer
        # @param ReceiverName: 接收人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverName: String
        # @param ReceiverUserIdStr: 接收人Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverUserIdStr: String

        attr_accessor :ReceiverUserId, :ReceiverName, :ReceiverUserIdStr

        def initialize(receiveruserid=nil, receivername=nil, receiveruseridstr=nil)
          @ReceiverUserId = receiveruserid
          @ReceiverName = receivername
          @ReceiverUserIdStr = receiveruseridstr
        end

        def deserialize(params)
          @ReceiverUserId = params['ReceiverUserId']
          @ReceiverName = params['ReceiverName']
          @ReceiverUserIdStr = params['ReceiverUserIdStr']
        end
      end

      # 群机器人订阅配置
      class QualitySubscribeWebHook < TencentCloud::Common::AbstractModel
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

      # 规则表变量替换
      class QualityTableConfig < TencentCloud::Common::AbstractModel
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
              qualityfieldconfig_tmp = QualityFieldConfig.new
              qualityfieldconfig_tmp.deserialize(i)
              @FieldConfig << qualityfieldconfig_tmp
            end
          end
        end
      end

      # 数据质量阈值
      class QualityThresholdValue < TencentCloud::Common::AbstractModel
        # @param ValueType: 阈值类型【入参必填】  1.低阈值  2.高阈值   3.普通阈值  4.枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueType: Integer
        # @param Value: 阈值【入参必填】
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

      # 离线集成对账告警规则
      class ReconciliationStrategyInfo < TencentCloud::Common::AbstractModel
        # @param RuleType: 离线告警规则类型
        # reconciliationFailure： 离线对账失败告警
        # reconciliationOvertime： 离线对账任务运行超时告警(需配置超时时间)
        # reconciliationMismatch： 离线对账不一致条数告警(需配置不一致条数阀值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param MismatchCount: 对账不一致条数阀值， RuleType=reconciliationMismatch对账不一致条数类型，需要配置该字段，无默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MismatchCount: Integer
        # @param Hour: 对账任务运行超时阀值： 小时， 默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hour: Integer
        # @param Min: 对账任务运行超时阀值： 分钟， 默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: Integer

        attr_accessor :RuleType, :MismatchCount, :Hour, :Min

        def initialize(ruletype=nil, mismatchcount=nil, hour=nil, min=nil)
          @RuleType = ruletype
          @MismatchCount = mismatchcount
          @Hour = hour
          @Min = min
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @MismatchCount = params['MismatchCount']
          @Hour = params['Hour']
          @Min = params['Min']
        end
      end

      # RegisterLineage请求参数结构体
      class RegisterLineageRequest < TencentCloud::Common::AbstractModel
        # @param Relations: 需要注册的血缘关系列表
        # @type Relations: Array

        attr_accessor :Relations

        def initialize(relations=nil)
          @Relations = relations
        end

        def deserialize(params)
          unless params['Relations'].nil?
            @Relations = []
            params['Relations'].each do |i|
              lineagepair_tmp = LineagePair.new
              lineagepair_tmp.deserialize(i)
              @Relations << lineagepair_tmp
            end
          end
        end
      end

      # RegisterLineage返回参数结构体
      class RegisterLineageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 注册结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OperateResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 数据源相关任务
      class RelateTask < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型

        # - OfflineIntegration --- 离线集成任务
        # - RealtimeIntegration --- 实时集成任务
        # - DataDevelopment --- 数据开发任务
        # - DataQuality --- 数据质量任务
        # - DataService --- 数据服务任务
        # - MetadataCollection --- 元数据采集任务
        # @type TaskType: String
        # @param TaskNum: 任务数量
        # @type TaskNum: Integer
        # @param TaskList: 任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array

        attr_accessor :TaskType, :TaskNum, :TaskList

        def initialize(tasktype=nil, tasknum=nil, tasklist=nil)
          @TaskType = tasktype
          @TaskNum = tasknum
          @TaskList = tasklist
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @TaskNum = params['TaskNum']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              brieftask_tmp = BriefTask.new
              brieftask_tmp.deserialize(i)
              @TaskList << brieftask_tmp
            end
          end
        end
      end

      # RemoveMemberProjectRole请求参数结构体
      class RemoveMemberProjectRoleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param UserUin: 用户id
        # @type UserUin: String
        # @param RoleIds: 角色id列表，目前支持的项目角色有
        # - 308335260274237440 (项目管理员)
        # - 308335260676890624 (数据工程师)
        # - 308335260844662784 (运维工程师)
        # - 308335260945326080 (普通成员)
        # @type RoleIds: Array

        attr_accessor :ProjectId, :UserUin, :RoleIds

        def initialize(projectid=nil, useruin=nil, roleids=nil)
          @ProjectId = projectid
          @UserUin = useruin
          @RoleIds = roleids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserUin = params['UserUin']
          @RoleIds = params['RoleIds']
        end
      end

      # RemoveMemberProjectRole返回参数结构体
      class RemoveMemberProjectRoleResponse < TencentCloud::Common::AbstractModel
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

      # RerunTaskInstancesAsync请求参数结构体
      class RerunTaskInstancesAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param InstanceKeyList: 实例id列表,可以从ListInstances中获取
        # @type InstanceKeyList: Array
        # @param RerunType: 重跑类型, 1: 自身; 3: 孩子; 2: 自身以及孩子，默认1
        # @type RerunType: String
        # @param CheckParentType: 是否检查上游任务： ALL（全部）、 MAKE_SCOPE（选中）、NONE （全部不检查），默认NONE
        # @type CheckParentType: String
        # @param SonRangeType: 下游实例范围 WORKFLOW: 所在工作流 PROJECT: 所在项目 ALL: 所有跨工作流依赖的项目，默认WORKFLOW
        # @type SonRangeType: String
        # @param SkipEventListening: 重跑是否忽略事件监听
        # @type SkipEventListening: Boolean
        # @param RedefineParallelNum: 自定义实例运行并发度, 如果不配置，则使用任务原有自依赖
        # @type RedefineParallelNum: Integer
        # @param RedefineSelfWorkflowDependency: 自定义的工作流自依赖: yes开启，no关闭，如果不配置，则使用工作流原有自依赖
        # @type RedefineSelfWorkflowDependency: String
        # @param RedefineParamList: 重跑实例自定义参数
        # @type RedefineParamList: :class:`Tencentcloud::Wedata.v20250806.models.KVMap`

        attr_accessor :ProjectId, :InstanceKeyList, :RerunType, :CheckParentType, :SonRangeType, :SkipEventListening, :RedefineParallelNum, :RedefineSelfWorkflowDependency, :RedefineParamList

        def initialize(projectid=nil, instancekeylist=nil, reruntype=nil, checkparenttype=nil, sonrangetype=nil, skipeventlistening=nil, redefineparallelnum=nil, redefineselfworkflowdependency=nil, redefineparamlist=nil)
          @ProjectId = projectid
          @InstanceKeyList = instancekeylist
          @RerunType = reruntype
          @CheckParentType = checkparenttype
          @SonRangeType = sonrangetype
          @SkipEventListening = skipeventlistening
          @RedefineParallelNum = redefineparallelnum
          @RedefineSelfWorkflowDependency = redefineselfworkflowdependency
          @RedefineParamList = redefineparamlist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKeyList = params['InstanceKeyList']
          @RerunType = params['RerunType']
          @CheckParentType = params['CheckParentType']
          @SonRangeType = params['SonRangeType']
          @SkipEventListening = params['SkipEventListening']
          @RedefineParallelNum = params['RedefineParallelNum']
          @RedefineSelfWorkflowDependency = params['RedefineSelfWorkflowDependency']
          unless params['RedefineParamList'].nil?
            @RedefineParamList = KVMap.new
            @RedefineParamList.deserialize(params['RedefineParamList'])
          end
        end
      end

      # RerunTaskInstancesAsync返回参数结构体
      class RerunTaskInstancesAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批量重跑操作的返回的异步id, 可以在接口GetAsyncJob获取具体执行详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RerunTriggerWorkflowRunAsync请求参数结构体
      class RerunTriggerWorkflowRunAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowExecutionId: 工作流运行ID
        # @type WorkflowExecutionId: String
        # @param ExecuteType: 运行方式：普通运行默认所有参数：1，高级运行可选任务范围和运行参数：2
        # @type ExecuteType: String
        # @param AdvancedParams: 运行类型为高级运行时填写的自定义运行参数
        # @type AdvancedParams: Array
        # @param TaskIds: 高级运行模式下本次需要运行指定的任务ID集合
        # @type TaskIds: Array
        # @param SchedulingResourceGroup: 指定调度资源组,为空时默认使用配置的原调度资源组
        # @type SchedulingResourceGroup: String
        # @param IntegrationResourceGroup: 指定集成资源组,为空时默认使用配置的原集成资源组
        # @type IntegrationResourceGroup: String

        attr_accessor :ProjectId, :WorkflowId, :WorkflowExecutionId, :ExecuteType, :AdvancedParams, :TaskIds, :SchedulingResourceGroup, :IntegrationResourceGroup

        def initialize(projectid=nil, workflowid=nil, workflowexecutionid=nil, executetype=nil, advancedparams=nil, taskids=nil, schedulingresourcegroup=nil, integrationresourcegroup=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowExecutionId = workflowexecutionid
          @ExecuteType = executetype
          @AdvancedParams = advancedparams
          @TaskIds = taskids
          @SchedulingResourceGroup = schedulingresourcegroup
          @IntegrationResourceGroup = integrationresourcegroup
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowExecutionId = params['WorkflowExecutionId']
          @ExecuteType = params['ExecuteType']
          unless params['AdvancedParams'].nil?
            @AdvancedParams = []
            params['AdvancedParams'].each do |i|
              schedulingparameter_tmp = SchedulingParameter.new
              schedulingparameter_tmp.deserialize(i)
              @AdvancedParams << schedulingparameter_tmp
            end
          end
          @TaskIds = params['TaskIds']
          @SchedulingResourceGroup = params['SchedulingResourceGroup']
          @IntegrationResourceGroup = params['IntegrationResourceGroup']
        end
      end

      # RerunTriggerWorkflowRunAsync返回参数结构体
      class RerunTriggerWorkflowRunAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 资源文件详情
      class ResourceFile < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 资源文件ID
        # @type ResourceId: String
        # @param ResourceName: 资源文件名称
        # @type ResourceName: String
        # @param LocalPath: 资源文件路径
        # @type LocalPath: String
        # @param RemotePath: 资源对象COS存储路径
        # @type RemotePath: String
        # @param FileExtensionType: 资源文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtensionType: String
        # @param Size: 资源大小
        # @type Size: String
        # @param CreatorUserUin: 创建用户ID
        # @type CreatorUserUin: String
        # @param CreatorUserName: 创建用户名称
        # @type CreatorUserName: String
        # @param UpdateUserName: 最后更新用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserName: String
        # @param UpdateUserUin: 最后更新用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param BucketName: COS 桶
        # @type BucketName: String
        # @param CosRegion: COS 地域
        # @type CosRegion: String
        # @param ResourceSourceMode: 资源来源模式
        # @type ResourceSourceMode: String
        # @param BundleId: 本地工程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: 本地工程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String

        attr_accessor :ProjectId, :ResourceId, :ResourceName, :LocalPath, :RemotePath, :FileExtensionType, :Size, :CreatorUserUin, :CreatorUserName, :UpdateUserName, :UpdateUserUin, :BucketName, :CosRegion, :ResourceSourceMode, :BundleId, :BundleInfo

        def initialize(projectid=nil, resourceid=nil, resourcename=nil, localpath=nil, remotepath=nil, fileextensiontype=nil, size=nil, creatoruseruin=nil, creatorusername=nil, updateusername=nil, updateuseruin=nil, bucketname=nil, cosregion=nil, resourcesourcemode=nil, bundleid=nil, bundleinfo=nil)
          @ProjectId = projectid
          @ResourceId = resourceid
          @ResourceName = resourcename
          @LocalPath = localpath
          @RemotePath = remotepath
          @FileExtensionType = fileextensiontype
          @Size = size
          @CreatorUserUin = creatoruseruin
          @CreatorUserName = creatorusername
          @UpdateUserName = updateusername
          @UpdateUserUin = updateuseruin
          @BucketName = bucketname
          @CosRegion = cosregion
          @ResourceSourceMode = resourcesourcemode
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @FileExtensionType = params['FileExtensionType']
          @Size = params['Size']
          @CreatorUserUin = params['CreatorUserUin']
          @CreatorUserName = params['CreatorUserName']
          @UpdateUserName = params['UpdateUserName']
          @UpdateUserUin = params['UpdateUserUin']
          @BucketName = params['BucketName']
          @CosRegion = params['CosRegion']
          @ResourceSourceMode = params['ResourceSourceMode']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # 获取资源文件列表item
      class ResourceFileItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源文件ID
        # @type ResourceId: String
        # @param ResourceName: 资源文件名称
        # @type ResourceName: String
        # @param FileExtensionType: 资源文件类型
        # @type FileExtensionType: String
        # @param LocalPath: 资源路径
        # @type LocalPath: String

        attr_accessor :ResourceId, :ResourceName, :FileExtensionType, :LocalPath

        def initialize(resourceid=nil, resourcename=nil, fileextensiontype=nil, localpath=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @FileExtensionType = fileextensiontype
          @LocalPath = localpath
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @FileExtensionType = params['FileExtensionType']
          @LocalPath = params['LocalPath']
        end
      end

      # 资源文件分页
      class ResourceFilePage < TencentCloud::Common::AbstractModel
        # @param Items: 任务集合信息
        # @type Items: Array
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param PageNumber: 当前页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer

        attr_accessor :Items, :TotalPageNumber, :TotalCount, :PageNumber, :PageSize

        def initialize(items=nil, totalpagenumber=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalPageNumber = totalpagenumber
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              resourcefileitem_tmp = ResourceFileItem.new
              resourcefileitem_tmp.deserialize(i)
              @Items << resourcefileitem_tmp
            end
          end
          @TotalPageNumber = params['TotalPageNumber']
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # 资源文件夹详情
      class ResourceFolder < TencentCloud::Common::AbstractModel
        # @param FolderId: 资源文件夹ID
        # @type FolderId: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param CreateUserName: 创建人名称
        # @type CreateUserName: String
        # @param FolderPath: 文件夹路径
        # @type FolderPath: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String

        attr_accessor :FolderId, :CreateUserUin, :CreateUserName, :FolderPath, :FolderName

        def initialize(folderid=nil, createuseruin=nil, createusername=nil, folderpath=nil, foldername=nil)
          @FolderId = folderid
          @CreateUserUin = createuseruin
          @CreateUserName = createusername
          @FolderPath = folderpath
          @FolderName = foldername
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @CreateUserUin = params['CreateUserUin']
          @CreateUserName = params['CreateUserName']
          @FolderPath = params['FolderPath']
          @FolderName = params['FolderName']
        end
      end

      # 资源文件夹详情
      class ResourceFolderDetail < TencentCloud::Common::AbstractModel
        # @param FolderId: 资源文件夹ID
        # @type FolderId: String
        # @param CreateUserUin: 创建人ID
        # @type CreateUserUin: String
        # @param CreateUserName: 创建人名称
        # @type CreateUserName: String
        # @param FolderPath: 文件夹路径
        # @type FolderPath: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ParentFolderPath: 父文件夹绝对路径,不包含文件名夹名
        # @type ParentFolderPath: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :FolderId, :CreateUserUin, :CreateUserName, :FolderPath, :FolderName, :ParentFolderPath, :ProjectId

        def initialize(folderid=nil, createuseruin=nil, createusername=nil, folderpath=nil, foldername=nil, parentfolderpath=nil, projectid=nil)
          @FolderId = folderid
          @CreateUserUin = createuseruin
          @CreateUserName = createusername
          @FolderPath = folderpath
          @FolderName = foldername
          @ParentFolderPath = parentfolderpath
          @ProjectId = projectid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @CreateUserUin = params['CreateUserUin']
          @CreateUserName = params['CreateUserName']
          @FolderPath = params['FolderPath']
          @FolderName = params['FolderName']
          @ParentFolderPath = params['ParentFolderPath']
          @ProjectId = params['ProjectId']
        end
      end

      # 资源文件夹分页
      class ResourceFolderPage < TencentCloud::Common::AbstractModel
        # @param Items: 资源文件夹集合信息
        # @type Items: Array
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param PageNumber: 当前页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer

        attr_accessor :Items, :TotalPageNumber, :TotalCount, :PageNumber, :PageSize

        def initialize(items=nil, totalpagenumber=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalPageNumber = totalpagenumber
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              resourcefolder_tmp = ResourceFolder.new
              resourcefolder_tmp.deserialize(i)
              @Items << resourcefolder_tmp
            end
          end
          @TotalPageNumber = params['TotalPageNumber']
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # 资源组监控指标
      class ResourceGroupMetrics < TencentCloud::Common::AbstractModel
        # @param CpuNum: 资源组规格相关：cpu个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuNum: Integer
        # @param DiskVolume: 资源组规格相关：磁盘规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskVolume: Integer
        # @param MemSize: 资源组规格相关：内存大小，单位:G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param LifeCycle: 资源组生命周期, 单位：天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeCycle: Integer
        # @param MaximumConcurrency: 资源组规格相关：最高并发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumConcurrency: Integer
        # @param Status: 资源组状态

        # - 0 --- 初始化中
        # - 1 --- 运行中
        # - 2 --- 运行异常
        # - 3 --- 释放中
        # - 4 --- 已释放
        # - 5 --- 创建中
        # - 6 --- 创建失败
        # - 7 --- 更新中
        # - 8 --- 更新失败
        # - 9 --- 已到期
        # - 10 --- 释放失败
        # - 11 --- 使用中
        # - 12 --- 未使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param MetricSnapshots: 指标详情
        # @type MetricSnapshots: Array

        attr_accessor :CpuNum, :DiskVolume, :MemSize, :LifeCycle, :MaximumConcurrency, :Status, :MetricSnapshots

        def initialize(cpunum=nil, diskvolume=nil, memsize=nil, lifecycle=nil, maximumconcurrency=nil, status=nil, metricsnapshots=nil)
          @CpuNum = cpunum
          @DiskVolume = diskvolume
          @MemSize = memsize
          @LifeCycle = lifecycle
          @MaximumConcurrency = maximumconcurrency
          @Status = status
          @MetricSnapshots = metricsnapshots
        end

        def deserialize(params)
          @CpuNum = params['CpuNum']
          @DiskVolume = params['DiskVolume']
          @MemSize = params['MemSize']
          @LifeCycle = params['LifeCycle']
          @MaximumConcurrency = params['MaximumConcurrency']
          @Status = params['Status']
          unless params['MetricSnapshots'].nil?
            @MetricSnapshots = []
            params['MetricSnapshots'].each do |i|
              metricdata_tmp = MetricData.new
              metricdata_tmp.deserialize(i)
              @MetricSnapshots << metricdata_tmp
            end
          end
        end
      end

      # 资源组规格
      class ResourceGroupSpecification < TencentCloud::Common::AbstractModel
        # @param Specification: 资源组规格
        # @type Specification: String
        # @param Number: 数量
        # @type Number: Integer

        attr_accessor :Specification, :Number

        def initialize(specification=nil, number=nil)
          @Specification = specification
          @Number = number
        end

        def deserialize(params)
          @Specification = params['Specification']
          @Number = params['Number']
        end
      end

      # 操作资源包数量
      class ResourceNumber < TencentCloud::Common::AbstractModel
        # @param Type: 增加/减少枚举

        # - ADD -- 增加
        # - DELETE -- 减少
        # @type Type: String
        # @param Quantity: 增加/减少资源包的数量
        # @type Quantity: Integer

        attr_accessor :Type, :Quantity

        def initialize(type=nil, quantity=nil)
          @Type = type
          @Quantity = quantity
        end

        def deserialize(params)
          @Type = params['Type']
          @Quantity = params['Quantity']
        end
      end

      # 资源组操作结果
      class ResourceResult < TencentCloud::Common::AbstractModel
        # @param Status: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param ResourceGroupId: 资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String

        attr_accessor :Status, :ResourceGroupId

        def initialize(status=nil, resourcegroupid=nil)
          @Status = status
          @ResourceGroupId = resourcegroupid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResourceGroupId = params['ResourceGroupId']
        end
      end

      # 资源组操作状态
      class ResourceStatus < TencentCloud::Common::AbstractModel
        # @param Status: 资源组操作状态
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

      # 开通的资源组信息
      class ResourceType < TencentCloud::Common::AbstractModel
        # @param ResourceGroupType: 资源组类型

        # - Schedule --- 调度资源组
        # - Integration --- 集成资源组
        # - DataService -- 数据服务资源组
        # @type ResourceGroupType: String
        # @param Integration: 集成资源组，细分实时资源组和离线资源组(集成、调度、数据服务资源组不可以同时购买)
        # @type Integration: :class:`Tencentcloud::Wedata.v20250806.models.IntegrationResource`
        # @param Schedule: 调度资源组(集成、调度、数据服务资源组不可以同时购买)

        # - s_test(测试规格)
        # - s_small(基础规格)
        # - s_medium(普及规格)
        # - s_large(专业规格)


        # @type Schedule: :class:`Tencentcloud::Wedata.v20250806.models.ResourceGroupSpecification`
        # @param DataService: 数据服务资源组(集成、调度、数据服务资源组不可以同时购买)

        # - ds_t(测试规格)
        # - ds_s(基础规格)
        # - ds_m(普及规格)
        # - ds_l(专业规格)
        # @type DataService: :class:`Tencentcloud::Wedata.v20250806.models.ResourceGroupSpecification`

        attr_accessor :ResourceGroupType, :Integration, :Schedule, :DataService

        def initialize(resourcegrouptype=nil, integration=nil, schedule=nil, dataservice=nil)
          @ResourceGroupType = resourcegrouptype
          @Integration = integration
          @Schedule = schedule
          @DataService = dataservice
        end

        def deserialize(params)
          @ResourceGroupType = params['ResourceGroupType']
          unless params['Integration'].nil?
            @Integration = IntegrationResource.new
            @Integration.deserialize(params['Integration'])
          end
          unless params['Schedule'].nil?
            @Schedule = ResourceGroupSpecification.new
            @Schedule.deserialize(params['Schedule'])
          end
          unless params['DataService'].nil?
            @DataService = ResourceGroupSpecification.new
            @DataService.deserialize(params['DataService'])
          end
        end
      end

      # RevokeDataSourceAuthorization请求参数结构体
      class RevokeDataSourceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param RevokeProjectId: 回收的项目id，与UserUin参数只能填一个
        # @type RevokeProjectId: String
        # @param RevokeUser: 回收项目下用户列表，格式为：项目id_用户id
        # 与RevokeProjectId参数只能填一个

        # @type RevokeUser: String

        attr_accessor :DataSourceId, :RevokeProjectId, :RevokeUser

        def initialize(datasourceid=nil, revokeprojectid=nil, revokeuser=nil)
          @DataSourceId = datasourceid
          @RevokeProjectId = revokeprojectid
          @RevokeUser = revokeuser
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @RevokeProjectId = params['RevokeProjectId']
          @RevokeUser = params['RevokeUser']
        end
      end

      # RevokeDataSourceAuthorization返回参数结构体
      class RevokeDataSourceAuthorizationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回收数据源响应体
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RunSQLScript请求参数结构体
      class RunSQLScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptId: 脚本id
        # @type ScriptId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScriptContent: 脚本内容，不传则默认执行已保存的全量脚本内容；若传递则要用Base64编码
        # @type ScriptContent: String
        # @param Params: 高级运行参数，JSON格式base64编码
        # @type Params: String

        attr_accessor :ScriptId, :ProjectId, :ScriptContent, :Params

        def initialize(scriptid=nil, projectid=nil, scriptcontent=nil, params=nil)
          @ScriptId = scriptid
          @ProjectId = projectid
          @ScriptContent = scriptcontent
          @Params = params
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ProjectId = params['ProjectId']
          @ScriptContent = params['ScriptContent']
          @Params = params['Params']
        end
      end

      # RunSQLScript返回参数结构体
      class RunSQLScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据探索任务
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.JobDto`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = JobDto.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # SQL探索文件/文件夹操作结果
      class SQLContentActionResult < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String

        attr_accessor :Status, :FolderId

        def initialize(status=nil, folderid=nil)
          @Status = status
          @FolderId = folderid
        end

        def deserialize(params)
          @Status = params['Status']
          @FolderId = params['FolderId']
        end
      end

      # SQL脚本文件树节点
      class SQLFolderNode < TencentCloud::Common::AbstractModel
        # @param Id: 唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 类型 folder，script
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ParentFolderPath: 父文件夹path，/aaa/bbb/ccc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentFolderPath: String
        # @param IsLeaf: 是否叶子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLeaf: Boolean
        # @param Params: 业务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param AccessScope: 权限范围: SHARED, PRIVATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessScope: String
        # @param Path: 节点路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param CreateUserUin: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param NodePermission: 当前用户对节点拥有的权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePermission: String
        # @param Children: 子节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param OwnerUin: 文件责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String

        attr_accessor :Id, :Name, :Type, :ParentFolderPath, :IsLeaf, :Params, :AccessScope, :Path, :CreateUserUin, :NodePermission, :Children, :OwnerUin

        def initialize(id=nil, name=nil, type=nil, parentfolderpath=nil, isleaf=nil, params=nil, accessscope=nil, path=nil, createuseruin=nil, nodepermission=nil, children=nil, owneruin=nil)
          @Id = id
          @Name = name
          @Type = type
          @ParentFolderPath = parentfolderpath
          @IsLeaf = isleaf
          @Params = params
          @AccessScope = accessscope
          @Path = path
          @CreateUserUin = createuseruin
          @NodePermission = nodepermission
          @Children = children
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @ParentFolderPath = params['ParentFolderPath']
          @IsLeaf = params['IsLeaf']
          @Params = params['Params']
          @AccessScope = params['AccessScope']
          @Path = params['Path']
          @CreateUserUin = params['CreateUserUin']
          @NodePermission = params['NodePermission']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              sqlfoldernode_tmp = SQLFolderNode.new
              sqlfoldernode_tmp.deserialize(i)
              @Children << sqlfoldernode_tmp
            end
          end
          @OwnerUin = params['OwnerUin']
        end
      end

      # 数据探索脚本业务处理实体
      class SQLScript < TencentCloud::Common::AbstractModel
        # @param ScriptId: 脚本id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptId: String
        # @param ScriptName: 脚本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptName: String
        # @param OwnerUin: 脚本所有者 uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ParentFolderPath: 父文件夹path，/aaa/bbb/ccc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentFolderPath: String
        # @param ScriptConfig: 脚本配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptConfig: :class:`Tencentcloud::Wedata.v20250806.models.SQLScriptConfig`
        # @param ScriptContent: 脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContent: String
        # @param UpdateUserUin: 最近一次操作人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param UpdateTime: 更新时间 yyyy-MM-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CreateTime: 创建时间 yyyy-MM-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessScope: String
        # @param Path: 节点全路径，/aaa/bbb/ccc.ipynb，由各个节点的名称组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String

        attr_accessor :ScriptId, :ScriptName, :OwnerUin, :ParentFolderPath, :ScriptConfig, :ScriptContent, :UpdateUserUin, :ProjectId, :UpdateTime, :CreateTime, :AccessScope, :Path

        def initialize(scriptid=nil, scriptname=nil, owneruin=nil, parentfolderpath=nil, scriptconfig=nil, scriptcontent=nil, updateuseruin=nil, projectid=nil, updatetime=nil, createtime=nil, accessscope=nil, path=nil)
          @ScriptId = scriptid
          @ScriptName = scriptname
          @OwnerUin = owneruin
          @ParentFolderPath = parentfolderpath
          @ScriptConfig = scriptconfig
          @ScriptContent = scriptcontent
          @UpdateUserUin = updateuseruin
          @ProjectId = projectid
          @UpdateTime = updatetime
          @CreateTime = createtime
          @AccessScope = accessscope
          @Path = path
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ScriptName = params['ScriptName']
          @OwnerUin = params['OwnerUin']
          @ParentFolderPath = params['ParentFolderPath']
          unless params['ScriptConfig'].nil?
            @ScriptConfig = SQLScriptConfig.new
            @ScriptConfig.deserialize(params['ScriptConfig'])
          end
          @ScriptContent = params['ScriptContent']
          @UpdateUserUin = params['UpdateUserUin']
          @ProjectId = params['ProjectId']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @AccessScope = params['AccessScope']
          @Path = params['Path']
        end
      end

      # 数据探索脚本配置
      class SQLScriptConfig < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatasourceEnv: 数据源环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceEnv: String
        # @param ComputeResource: 计算资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeResource: String
        # @param ExecutorGroupId: 执行资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param Params: 高级运行参数,变量替换，map-json String,String
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param AdvanceConfig: 高级设置，执行配置参数，map-json String,String. 采用Base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: String

        attr_accessor :DatasourceId, :DatasourceEnv, :ComputeResource, :ExecutorGroupId, :Params, :AdvanceConfig

        def initialize(datasourceid=nil, datasourceenv=nil, computeresource=nil, executorgroupid=nil, params=nil, advanceconfig=nil)
          @DatasourceId = datasourceid
          @DatasourceEnv = datasourceenv
          @ComputeResource = computeresource
          @ExecutorGroupId = executorgroupid
          @Params = params
          @AdvanceConfig = advanceconfig
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @DatasourceEnv = params['DatasourceEnv']
          @ComputeResource = params['ComputeResource']
          @ExecutorGroupId = params['ExecutorGroupId']
          @Params = params['Params']
          @AdvanceConfig = params['AdvanceConfig']
        end
      end

      # 停止sql运行结果
      class SQLStopResult < TencentCloud::Common::AbstractModel
        # @param Status: 是否成功
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

      # 任务调度变量参数
      class SchedulingParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String
        # @param ExtProperties: 拓展参数json
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtProperties: String

        attr_accessor :ParamKey, :ParamValue, :ExtProperties

        def initialize(paramkey=nil, paramvalue=nil, extproperties=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
          @ExtProperties = extproperties
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
          @ExtProperties = params['ExtProperties']
        end
      end

      # Schema信息
      class SchemaInfo < TencentCloud::Common::AbstractModel
        # @param Guid: Schema GUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guid: String
        # @param Name: Schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String

        attr_accessor :Guid, :Name, :DatabaseName

        def initialize(guid=nil, name=nil, databasename=nil)
          @Guid = guid
          @Name = name
          @DatabaseName = databasename
        end

        def deserialize(params)
          @Guid = params['Guid']
          @Name = params['Name']
          @DatabaseName = params['DatabaseName']
        end
      end

      # SetSuccessTaskInstancesAsync请求参数结构体
      class SetSuccessTaskInstancesAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param InstanceKeyList: 实例id列表,可以从ListInstances中获取
        # @type InstanceKeyList: Array

        attr_accessor :ProjectId, :InstanceKeyList

        def initialize(projectid=nil, instancekeylist=nil)
          @ProjectId = projectid
          @InstanceKeyList = instancekeylist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKeyList = params['InstanceKeyList']
        end
      end

      # SetSuccessTaskInstancesAsync返回参数结构体
      class SetSuccessTaskInstancesAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批量置成功操作的返回的异步id, 可以在接口GetAsyncJob获取具体执行详情
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建数据探索脚本文件夹返回类
      class SqlCreateResult < TencentCloud::Common::AbstractModel
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String

        attr_accessor :FolderId

        def initialize(folderid=nil)
          @FolderId = folderid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
        end
      end

      # StartOpsTasks请求参数结构体
      class StartOpsTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param TaskIds: 任务Id列表
        # @type TaskIds: Array
        # @param EnableDataBackfill: 启动时是否补录上次暂停到当前的中间实例，默认false即不补录
        # @type EnableDataBackfill: Boolean

        attr_accessor :ProjectId, :TaskIds, :EnableDataBackfill

        def initialize(projectid=nil, taskids=nil, enabledatabackfill=nil)
          @ProjectId = projectid
          @TaskIds = taskids
          @EnableDataBackfill = enabledatabackfill
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskIds = params['TaskIds']
          @EnableDataBackfill = params['EnableDataBackfill']
        end
      end

      # StartOpsTasks返回参数结构体
      class StartOpsTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 异步操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.StartTasks`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = StartTasks.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量启动任务返回参数
      class StartTasks < TencentCloud::Common::AbstractModel
        # @param Status: 任务启动是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # StopOpsTasksAsync请求参数结构体
      class StopOpsTasksAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param TaskIds: 任务Id列表
        # @type TaskIds: Array
        # @param KillInstance: 是否终止已生成实例，默认false
        # @type KillInstance: Boolean

        attr_accessor :ProjectId, :TaskIds, :KillInstance

        def initialize(projectid=nil, taskids=nil, killinstance=nil)
          @ProjectId = projectid
          @TaskIds = taskids
          @KillInstance = killinstance
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskIds = params['TaskIds']
          @KillInstance = params['KillInstance']
        end
      end

      # StopOpsTasksAsync返回参数结构体
      class StopOpsTasksAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Data: AsyncId
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.OpsAsyncResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OpsAsyncResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # StopSQLScriptRun请求参数结构体
      class StopSQLScriptRunRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 查询id
        # @type JobId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :JobId, :ProjectId

        def initialize(jobid=nil, projectid=nil)
          @JobId = jobid
          @ProjectId = projectid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
        end
      end

      # StopSQLScriptRun返回参数结构体
      class StopSQLScriptRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLStopResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLStopResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # SubmitTask请求参数结构体
      class SubmitTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String

        attr_accessor :ProjectId, :TaskId, :VersionRemark

        def initialize(projectid=nil, taskid=nil, versionremark=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionRemark = versionremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionRemark = params['VersionRemark']
        end
      end

      # SubmitTask返回参数结构体
      class SubmitTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SubmitTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SubmitTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 提交数据开发任务结果
      class SubmitTaskResult < TencentCloud::Common::AbstractModel
        # @param VersionId: 生成的任务版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param Status: 提交状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :VersionId, :Status

        def initialize(versionid=nil, status=nil)
          @VersionId = versionid
          @Status = status
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @Status = params['Status']
        end
      end

      # SubmitTriggerTask请求参数结构体
      class SubmitTriggerTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String

        attr_accessor :ProjectId, :TaskId, :VersionRemark

        def initialize(projectid=nil, taskid=nil, versionremark=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionRemark = versionremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionRemark = params['VersionRemark']
        end
      end

      # SubmitTriggerTask返回参数结构体
      class SubmitTriggerTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SubmitTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SubmitTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 角色对象
      class SystemRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: String
        # @param RoleName: 角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleDisplayName: 角色展示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleDisplayName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :RoleId, :RoleName, :RoleDisplayName, :Description

        def initialize(roleid=nil, rolename=nil, roledisplayname=nil, description=nil)
          @RoleId = roleid
          @RoleName = rolename
          @RoleDisplayName = roledisplayname
          @Description = description
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @RoleDisplayName = params['RoleDisplayName']
          @Description = params['Description']
        end
      end

      # 数据库信息
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param Guid: 数据表GUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guid: String
        # @param Name: 数据表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 数据表描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SchemaName: 数据库Schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableType: 表类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TechnicalMetadata: 表的技术元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TechnicalMetadata: :class:`Tencentcloud::Wedata.v20250806.models.TechnicalMetadata`
        # @param BusinessMetadata: 表的业务元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessMetadata: :class:`Tencentcloud::Wedata.v20250806.models.BusinessMetadata`

        attr_accessor :Guid, :Name, :Description, :DatabaseName, :SchemaName, :TableType, :CreateTime, :UpdateTime, :TechnicalMetadata, :BusinessMetadata

        def initialize(guid=nil, name=nil, description=nil, databasename=nil, schemaname=nil, tabletype=nil, createtime=nil, updatetime=nil, technicalmetadata=nil, businessmetadata=nil)
          @Guid = guid
          @Name = name
          @Description = description
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableType = tabletype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TechnicalMetadata = technicalmetadata
          @BusinessMetadata = businessmetadata
        end

        def deserialize(params)
          @Guid = params['Guid']
          @Name = params['Name']
          @Description = params['Description']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableType = params['TableType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['TechnicalMetadata'].nil?
            @TechnicalMetadata = TechnicalMetadata.new
            @TechnicalMetadata.deserialize(params['TechnicalMetadata'])
          end
          unless params['BusinessMetadata'].nil?
            @BusinessMetadata = BusinessMetadata.new
            @BusinessMetadata.deserialize(params['BusinessMetadata'])
          end
        end
      end

      # 任务对象
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskBaseAttribute: 任务基本属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.TaskBaseAttribute`
        # @param TaskConfiguration: 任务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskConfiguration`
        # @param TaskSchedulerConfiguration: 任务调度配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskSchedulerConfiguration`

        attr_accessor :TaskBaseAttribute, :TaskConfiguration, :TaskSchedulerConfiguration

        def initialize(taskbaseattribute=nil, taskconfiguration=nil, taskschedulerconfiguration=nil)
          @TaskBaseAttribute = taskbaseattribute
          @TaskConfiguration = taskconfiguration
          @TaskSchedulerConfiguration = taskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TaskBaseAttribute'].nil?
            @TaskBaseAttribute = TaskBaseAttribute.new
            @TaskBaseAttribute.deserialize(params['TaskBaseAttribute'])
          end
          unless params['TaskConfiguration'].nil?
            @TaskConfiguration = TaskConfiguration.new
            @TaskConfiguration.deserialize(params['TaskConfiguration'])
          end
          unless params['TaskSchedulerConfiguration'].nil?
            @TaskSchedulerConfiguration = TaskSchedulerConfiguration.new
            @TaskSchedulerConfiguration.deserialize(params['TaskSchedulerConfiguration'])
          end
        end
      end

      # 任务基本属性信息
      class TaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeId: 任务类型ID：

        # * 21:JDBC SQL
        # * 23:TDSQL-PostgreSQL
        # * 26:OfflineSynchronization
        # * 30:Python
        # * 31:PySpark
        # * 33:Impala
        # * 34:Hive SQL
        # * 35:Shell
        # * 36:Spark SQL
        # * 38:Shell Form Mode
        # * 39:Spark
        # * 40:TCHouse-P
        # * 41:Kettle
        # * 42:Tchouse-X
        # * 43:TCHouse-X SQL
        # * 46:DLC Spark
        # * 47:TiOne
        # * 48:Trino
        # * 50:DLC PySpark
        # * 92:MapReduce
        # * 130:Branch Node
        # * 131:Merged Node
        # * 132:Notebook
        # * 133:SSH
        # * 134:StarRocks
        # * 137:For-each
        # * 138:Setats SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskLatestVersionNo: 最近一次保存版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLatestVersionNo: String
        # @param TaskLatestSubmitVersionNo: 最近一次提交版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLatestSubmitVersionNo: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param Status: 任务状态：
        # * N: 新建
        # * Y: 调度中
        # * F: 已下线
        # * O: 已暂停
        # * T: 下线中
        # * INVALID: 已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Submit: 任务最新提交状态，任务是否已经提交：true/false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Submit: Boolean
        # @param CreateTime: 任务创建时间，示例：2022-02-12 11:13:41
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: 最后更新时间，示例：2025-08-13 16:34:06
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param LastUpdateUserName: 最后更新人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateUserName: String
        # @param LastOpsTime: 最后运维时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsTime: String
        # @param LastOpsUserName: 最后运维人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsUserName: String
        # @param OwnerUin: 任务负责人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskDescription: String
        # @param UpdateUserUin: 最近一次更新用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param CreateUserUin: 创建用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param TaskFolderPath: 任务文件夹路径

        # 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderPath: String

        attr_accessor :TaskId, :TaskTypeId, :WorkflowId, :TaskName, :TaskLatestVersionNo, :TaskLatestSubmitVersionNo, :WorkflowName, :Status, :Submit, :CreateTime, :LastUpdateTime, :LastUpdateUserName, :LastOpsTime, :LastOpsUserName, :OwnerUin, :TaskDescription, :UpdateUserUin, :CreateUserUin, :TaskFolderPath

        def initialize(taskid=nil, tasktypeid=nil, workflowid=nil, taskname=nil, tasklatestversionno=nil, tasklatestsubmitversionno=nil, workflowname=nil, status=nil, submit=nil, createtime=nil, lastupdatetime=nil, lastupdateusername=nil, lastopstime=nil, lastopsusername=nil, owneruin=nil, taskdescription=nil, updateuseruin=nil, createuseruin=nil, taskfolderpath=nil)
          @TaskId = taskid
          @TaskTypeId = tasktypeid
          @WorkflowId = workflowid
          @TaskName = taskname
          @TaskLatestVersionNo = tasklatestversionno
          @TaskLatestSubmitVersionNo = tasklatestsubmitversionno
          @WorkflowName = workflowname
          @Status = status
          @Submit = submit
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @LastUpdateUserName = lastupdateusername
          @LastOpsTime = lastopstime
          @LastOpsUserName = lastopsusername
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @UpdateUserUin = updateuseruin
          @CreateUserUin = createuseruin
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowId = params['WorkflowId']
          @TaskName = params['TaskName']
          @TaskLatestVersionNo = params['TaskLatestVersionNo']
          @TaskLatestSubmitVersionNo = params['TaskLatestSubmitVersionNo']
          @WorkflowName = params['WorkflowName']
          @Status = params['Status']
          @Submit = params['Submit']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @LastUpdateUserName = params['LastUpdateUserName']
          @LastOpsTime = params['LastOpsTime']
          @LastOpsUserName = params['LastOpsUserName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @UpdateUserUin = params['UpdateUserUin']
          @CreateUserUin = params['CreateUserUin']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 任务代码
      class TaskCode < TencentCloud::Common::AbstractModel
        # @param CodeContent: 代码内容
        # @type CodeContent: String
        # @param CodeFileSize: 代码文件大小，单位bytes
        # @type CodeFileSize: Integer

        attr_accessor :CodeContent, :CodeFileSize

        def initialize(codecontent=nil, codefilesize=nil)
          @CodeContent = codecontent
          @CodeFileSize = codefilesize
        end

        def deserialize(params)
          @CodeContent = params['CodeContent']
          @CodeFileSize = params['CodeFileSize']
        end
      end

      # 任务代码
      class TaskCodeResult < TencentCloud::Common::AbstractModel
        # @param CodeInfo: 代码内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeInfo: String
        # @param CodeFileSize: 代码文件大小，单位KB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFileSize: String

        attr_accessor :CodeInfo, :CodeFileSize

        def initialize(codeinfo=nil, codefilesize=nil)
          @CodeInfo = codeinfo
          @CodeFileSize = codefilesize
        end

        def deserialize(params)
          @CodeInfo = params['CodeInfo']
          @CodeFileSize = params['CodeFileSize']
        end
      end

      # 任务配置信息
      class TaskConfiguration < TencentCloud::Common::AbstractModel
        # @param CodeContent: 代码内容的Base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeContent: String
        # @param TaskExtConfigurationList: 任务扩展属性配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExtConfigurationList: Array
        # @param DataCluster: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataCluster: String
        # @param BrokerIp: 指定的运行节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: String
        # @param YarnQueue: 资源池队列名称，需要通过 DescribeProjectClusterQueues 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YarnQueue: String
        # @param SourceServiceId: 来源数据源ID,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceId: String
        # @param SourceServiceType: 来源数据源类型,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceType: String
        # @param SourceServiceName: 来源数据源名称, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceName: String
        # @param TargetServiceId: 目标数据源ID, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceId: String
        # @param TargetServiceType: 目标数据源类型,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceType: String
        # @param TargetServiceName: 目标数据源名称, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceName: String
        # @param ResourceGroup: 资源组ID： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param ResourceGroupName: 资源组名称： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param TaskSchedulingParameterList: 调度参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSchedulingParameterList: Array
        # @param BundleId: Bundle使用的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String

        attr_accessor :CodeContent, :TaskExtConfigurationList, :DataCluster, :BrokerIp, :YarnQueue, :SourceServiceId, :SourceServiceType, :SourceServiceName, :TargetServiceId, :TargetServiceType, :TargetServiceName, :ResourceGroup, :ResourceGroupName, :TaskSchedulingParameterList, :BundleId, :BundleInfo

        def initialize(codecontent=nil, taskextconfigurationlist=nil, datacluster=nil, brokerip=nil, yarnqueue=nil, sourceserviceid=nil, sourceservicetype=nil, sourceservicename=nil, targetserviceid=nil, targetservicetype=nil, targetservicename=nil, resourcegroup=nil, resourcegroupname=nil, taskschedulingparameterlist=nil, bundleid=nil, bundleinfo=nil)
          @CodeContent = codecontent
          @TaskExtConfigurationList = taskextconfigurationlist
          @DataCluster = datacluster
          @BrokerIp = brokerip
          @YarnQueue = yarnqueue
          @SourceServiceId = sourceserviceid
          @SourceServiceType = sourceservicetype
          @SourceServiceName = sourceservicename
          @TargetServiceId = targetserviceid
          @TargetServiceType = targetservicetype
          @TargetServiceName = targetservicename
          @ResourceGroup = resourcegroup
          @ResourceGroupName = resourcegroupname
          @TaskSchedulingParameterList = taskschedulingparameterlist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @CodeContent = params['CodeContent']
          unless params['TaskExtConfigurationList'].nil?
            @TaskExtConfigurationList = []
            params['TaskExtConfigurationList'].each do |i|
              taskextparameter_tmp = TaskExtParameter.new
              taskextparameter_tmp.deserialize(i)
              @TaskExtConfigurationList << taskextparameter_tmp
            end
          end
          @DataCluster = params['DataCluster']
          @BrokerIp = params['BrokerIp']
          @YarnQueue = params['YarnQueue']
          @SourceServiceId = params['SourceServiceId']
          @SourceServiceType = params['SourceServiceType']
          @SourceServiceName = params['SourceServiceName']
          @TargetServiceId = params['TargetServiceId']
          @TargetServiceType = params['TargetServiceType']
          @TargetServiceName = params['TargetServiceName']
          @ResourceGroup = params['ResourceGroup']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['TaskSchedulingParameterList'].nil?
            @TaskSchedulingParameterList = []
            params['TaskSchedulingParameterList'].each do |i|
              taskschedulingparameter_tmp = TaskSchedulingParameter.new
              taskschedulingparameter_tmp.deserialize(i)
              @TaskSchedulingParameterList << taskschedulingparameter_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # 任务数据库登记项
      class TaskDataRegistry < TencentCloud::Common::AbstractModel
        # @param DatasourceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param PartitionName: 分区名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionName: String
        # @param DataFlowType: 输入输出表类型
        #       输入流
        #  UPSTREAM,
        #       输出流
        #   DOWNSTREAM;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataFlowType: String
        # @param TablePhysicalId: 表物理唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TablePhysicalId: String
        # @param DbGuid: 库唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbGuid: String
        # @param TableGuid: 表唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGuid: String

        attr_accessor :DatasourceId, :DatabaseName, :TableName, :PartitionName, :DataFlowType, :TablePhysicalId, :DbGuid, :TableGuid

        def initialize(datasourceid=nil, databasename=nil, tablename=nil, partitionname=nil, dataflowtype=nil, tablephysicalid=nil, dbguid=nil, tableguid=nil)
          @DatasourceId = datasourceid
          @DatabaseName = databasename
          @TableName = tablename
          @PartitionName = partitionname
          @DataFlowType = dataflowtype
          @TablePhysicalId = tablephysicalid
          @DbGuid = dbguid
          @TableGuid = tableguid
        end

        def deserialize(params)
          @DatasourceId = params['DatasourceId']
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @PartitionName = params['PartitionName']
          @DataFlowType = params['DataFlowType']
          @TablePhysicalId = params['TablePhysicalId']
          @DbGuid = params['DbGuid']
          @TableGuid = params['TableGuid']
        end
      end

      # 依赖任务信息
      class TaskDependDto < TencentCloud::Common::AbstractModel
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
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Status: 任务状态:
        # - Y: 运行
        # - F: 停止
        # - O: 冻结
        # - T: 停止中
        # - INVALID: 已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        #  - 20 :  通用数据同步
        #  - 25 :  ETLTaskType
        #  - 26 :  ETLTaskType
        #  - 30 :  python
        #  - 31 :  pyspark
        #  - 34 :  hivesql
        #  - 35 :  shell
        #  - 36 :  sparksql
        #  - 21 :  jdbcsql
        #  - 32 :  dlc
        #  - 33 :  ImpalaTaskType
        #  - 40 :  CDWTaskType
        #  - 41 :  kettle
        #  - 42 :  TCHouse-X
        #  - 43 :  TCHouse-X SQL
        #  - 46 :  dlcsparkTaskType
        #  - 47 :  TiOneMachineLearningTaskType
        #  - 48 :  Trino
        #  - 50 :  DLCPyspark
        #  - 23 :  TencentDistributedSQL
        #  - 39 :  spark
        #  - 92 :  MRTaskType
        #  - 38 :  ShellScript
        #  - 70 :  HiveSQLScrip
        #  - 130 :  分支
        #  - 131 :  归并
        #  - 132 :  Notebook探索
        #  - 133 :  SSH节点
        #  - 134 :  StarRocks
        #  - 137 :  For-each
        #  - 10000 :  自定义业务通用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param ScheduleDesc: 调度计划展示描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleDesc: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param DelayTime: 延迟时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CycleType: 周期类型：默认为 D

        # 支持的类型为

        # * O: 一次性
        # * Y: 年
        # * M: 月
        # * W: 周
        # * D: 天
        # * H: 小时
        # * I: 分钟
        # * C: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param OwnerUin: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param TaskAction: 弹性周期配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param InitStrategy: 调度初始化策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitStrategy: String
        # @param CrontabExpression: crontab表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectId, :Status, :TaskTypeId, :TaskTypeDesc, :ScheduleDesc, :StartTime, :EndTime, :DelayTime, :CycleType, :OwnerUin, :TaskAction, :InitStrategy, :CrontabExpression

        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectid=nil, status=nil, tasktypeid=nil, tasktypedesc=nil, scheduledesc=nil, starttime=nil, endtime=nil, delaytime=nil, cycletype=nil, owneruin=nil, taskaction=nil, initstrategy=nil, crontabexpression=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectId = projectid
          @Status = status
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @ScheduleDesc = scheduledesc
          @StartTime = starttime
          @EndTime = endtime
          @DelayTime = delaytime
          @CycleType = cycletype
          @OwnerUin = owneruin
          @TaskAction = taskaction
          @InitStrategy = initstrategy
          @CrontabExpression = crontabexpression
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @ScheduleDesc = params['ScheduleDesc']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DelayTime = params['DelayTime']
          @CycleType = params['CycleType']
          @OwnerUin = params['OwnerUin']
          @TaskAction = params['TaskAction']
          @InitStrategy = params['InitStrategy']
          @CrontabExpression = params['CrontabExpression']
        end
      end

      # 任务扩展信息参数
      class TaskExtParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 任务文件夹信息
      class TaskFolder < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param TaskFolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderId: String
        # @param TaskFolderPath: 文件夹绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderPath: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :ProjectId, :TaskFolderId, :TaskFolderPath, :CreateUserUin

        def initialize(projectid=nil, taskfolderid=nil, taskfolderpath=nil, createuseruin=nil)
          @ProjectId = projectid
          @TaskFolderId = taskfolderid
          @TaskFolderPath = taskfolderpath
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskFolderId = params['TaskFolderId']
          @TaskFolderPath = params['TaskFolderPath']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 任务文件夹详细信息
      class TaskFolderDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param TaskFolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderId: String
        # @param TaskFolderPath: 文件夹绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderPath: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param ParentTaskFolderPath: 父文件夹绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentTaskFolderPath: String
        # @param TaskFolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskFolderType: 任务文件夹类型

        # | 任务文件夹类型取值 | 任务文件夹类型界面对应名称 |
        # | ---------------- | ------------------------ |
        # | ETL              | 集成任务                 |
        # | EMR              | EMR                      |
        # | DLC              | DLC                      |
        # | SETATS           | SETATS                   |
        # | TDSQL            | TDSQL                    |
        # | TCHOUSE          | TCHOUSE                  |
        # | GENERAL          | 通用                     |
        # | TI_ONE           | TI-ONE机器学习           |
        # | ACROSS_WORKFLOWS | 跨工作流                 |

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderType: String

        attr_accessor :ProjectId, :TaskFolderId, :TaskFolderPath, :CreateUserUin, :ParentTaskFolderPath, :TaskFolderName, :WorkflowId, :TaskFolderType

        def initialize(projectid=nil, taskfolderid=nil, taskfolderpath=nil, createuseruin=nil, parenttaskfolderpath=nil, taskfoldername=nil, workflowid=nil, taskfoldertype=nil)
          @ProjectId = projectid
          @TaskFolderId = taskfolderid
          @TaskFolderPath = taskfolderpath
          @CreateUserUin = createuseruin
          @ParentTaskFolderPath = parenttaskfolderpath
          @TaskFolderName = taskfoldername
          @WorkflowId = workflowid
          @TaskFolderType = taskfoldertype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskFolderId = params['TaskFolderId']
          @TaskFolderPath = params['TaskFolderPath']
          @CreateUserUin = params['CreateUserUin']
          @ParentTaskFolderPath = params['ParentTaskFolderPath']
          @TaskFolderName = params['TaskFolderName']
          @WorkflowId = params['WorkflowId']
          @TaskFolderType = params['TaskFolderType']
        end
      end

      # 任务文件夹分页
      class TaskFolderPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 数据页数，大于等于1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 文件夹总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 文件夹列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskfolder_tmp = TaskFolder.new
              taskfolder_tmp.deserialize(i)
              @Items << taskfolder_tmp
            end
          end
        end
      end

      # 调度任务实例实体
      class TaskInstance < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param InstanceKey: **实例唯一标识**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param CurRunDate: 实例数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurRunDate: String
        # @param InstanceState: **实例状态**
        # - WAIT_EVENT: 等待事件
        # - WAIT_UPSTREAM: 等待上游
        # - WAIT_RUN: 等待运行
        # - RUNNING: 运行中
        # - SKIP_RUNNING: 跳过运行
        # - FAILED_RETRY: 失败重试
        # - EXPIRED: 失败
        # - COMPLETED: 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param InstanceType: **实例类型**

        # - 0 表示补录类型
        # - 1 表示周期实例
        # - 2 表示非周期实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param OwnerUinList: 负责人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUinList: Array
        # @param TotalRunNum: 累计运行次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRunNum: Integer
        # @param TaskType: 任务类型描述
        # @type TaskType: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param CycleType: **任务周期类型**
        # 支持过滤多个，条件间为 或 的过滤关系
        # * O: ONEOFF_CYCLE
        # * Y: YEAR_CYCLE
        # * M: MONTH_CYCLE
        # * W: WEEK_CYCLE
        # * D: DAY_CYCLE
        # * H: HOUR_CYCLE
        # * I: MINUTE_CYCLE
        # * C: CRONTAB_CYCLE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param TryLimit: 每次运行失败，下发重试次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param Tries: **失败重试次数**
        # 再次使用 手动重跑 或 补录实例等方式触发运行时，会被重置为 0 后重新计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: Integer
        # @param StartTime: 运行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 运行完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CostTime: 耗费时间, 单位ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Integer
        # @param SchedulerTime: 计划调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerTime: String
        # @param LastUpdateTime: 实例最近更新时间, 时间格式为 yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param ExecutorGroupId: 执行资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param ExecutorGroupName: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupName: String

        attr_accessor :ProjectId, :InstanceKey, :FolderId, :FolderName, :WorkflowId, :WorkflowName, :TaskId, :TaskName, :CurRunDate, :InstanceState, :InstanceType, :OwnerUinList, :TotalRunNum, :TaskType, :TaskTypeId, :CycleType, :TryLimit, :Tries, :StartTime, :EndTime, :CostTime, :SchedulerTime, :LastUpdateTime, :ExecutorGroupId, :ExecutorGroupName

        def initialize(projectid=nil, instancekey=nil, folderid=nil, foldername=nil, workflowid=nil, workflowname=nil, taskid=nil, taskname=nil, currundate=nil, instancestate=nil, instancetype=nil, owneruinlist=nil, totalrunnum=nil, tasktype=nil, tasktypeid=nil, cycletype=nil, trylimit=nil, tries=nil, starttime=nil, endtime=nil, costtime=nil, schedulertime=nil, lastupdatetime=nil, executorgroupid=nil, executorgroupname=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @FolderId = folderid
          @FolderName = foldername
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @TaskId = taskid
          @TaskName = taskname
          @CurRunDate = currundate
          @InstanceState = instancestate
          @InstanceType = instancetype
          @OwnerUinList = owneruinlist
          @TotalRunNum = totalrunnum
          @TaskType = tasktype
          @TaskTypeId = tasktypeid
          @CycleType = cycletype
          @TryLimit = trylimit
          @Tries = tries
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
          @SchedulerTime = schedulertime
          @LastUpdateTime = lastupdatetime
          @ExecutorGroupId = executorgroupid
          @ExecutorGroupName = executorgroupname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @CurRunDate = params['CurRunDate']
          @InstanceState = params['InstanceState']
          @InstanceType = params['InstanceType']
          @OwnerUinList = params['OwnerUinList']
          @TotalRunNum = params['TotalRunNum']
          @TaskType = params['TaskType']
          @TaskTypeId = params['TaskTypeId']
          @CycleType = params['CycleType']
          @TryLimit = params['TryLimit']
          @Tries = params['Tries']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
          @SchedulerTime = params['SchedulerTime']
          @LastUpdateTime = params['LastUpdateTime']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ExecutorGroupName = params['ExecutorGroupName']
        end
      end

      # 调度任务实例详情
      class TaskInstanceDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param InstanceKey: **实例唯一标识**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceKey: String
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskTypeId: taskType对应的id
        # @type TaskTypeId: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param CycleType: **任务周期类型**
        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CurRunDate: 实例数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurRunDate: String
        # @param InstanceState: **实例状态**
        # - WAIT_EVENT: 等待事件
        # - WAIT_UPSTREAM: 等待上游
        # - WAIT_RUN: 等待运行
        # - RUNNING: 运行中
        # - SKIP_RUNNING: 跳过运行
        # - FAILED_RETRY: 失败重试
        # - EXPIRED: 失败
        # - COMPLETED: 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param InstanceType: **实例类型**

        # - 0 表示补录类型
        # - 1 表示周期实例
        # - 2 表示非周期实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param OwnerUinList: 负责人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUinList: Array
        # @param TotalRunNum: 累计运行次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRunNum: Integer
        # @param TryLimit: 每次运行失败，下发重试次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param Tries: **失败重试次数**
        # 再次使用 手动重跑 或 补录实例等方式触发运行时，会被重置为 0 后重新计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: Integer
        # @param CostTime: 耗费时间, 单位ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Integer
        # @param StartTime: 运行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 运行完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param SchedulerTime: 计划调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerTime: String
        # @param LastUpdateTime: 实例最近更新时间, 时间格式为 yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param ExecutorGroupId: 执行资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param ExecutorGroupName: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupName: String
        # @param JobErrorMsg: 简要的任务失败信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobErrorMsg: String

        attr_accessor :ProjectId, :InstanceKey, :FolderId, :FolderName, :WorkflowId, :WorkflowName, :TaskId, :TaskName, :TaskTypeId, :TaskType, :CycleType, :CurRunDate, :InstanceState, :InstanceType, :OwnerUinList, :TotalRunNum, :TryLimit, :Tries, :CostTime, :StartTime, :EndTime, :SchedulerTime, :LastUpdateTime, :ExecutorGroupId, :ExecutorGroupName, :JobErrorMsg

        def initialize(projectid=nil, instancekey=nil, folderid=nil, foldername=nil, workflowid=nil, workflowname=nil, taskid=nil, taskname=nil, tasktypeid=nil, tasktype=nil, cycletype=nil, currundate=nil, instancestate=nil, instancetype=nil, owneruinlist=nil, totalrunnum=nil, trylimit=nil, tries=nil, costtime=nil, starttime=nil, endtime=nil, schedulertime=nil, lastupdatetime=nil, executorgroupid=nil, executorgroupname=nil, joberrormsg=nil)
          @ProjectId = projectid
          @InstanceKey = instancekey
          @FolderId = folderid
          @FolderName = foldername
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @TaskId = taskid
          @TaskName = taskname
          @TaskTypeId = tasktypeid
          @TaskType = tasktype
          @CycleType = cycletype
          @CurRunDate = currundate
          @InstanceState = instancestate
          @InstanceType = instancetype
          @OwnerUinList = owneruinlist
          @TotalRunNum = totalrunnum
          @TryLimit = trylimit
          @Tries = tries
          @CostTime = costtime
          @StartTime = starttime
          @EndTime = endtime
          @SchedulerTime = schedulertime
          @LastUpdateTime = lastupdatetime
          @ExecutorGroupId = executorgroupid
          @ExecutorGroupName = executorgroupname
          @JobErrorMsg = joberrormsg
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceKey = params['InstanceKey']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskTypeId = params['TaskTypeId']
          @TaskType = params['TaskType']
          @CycleType = params['CycleType']
          @CurRunDate = params['CurRunDate']
          @InstanceState = params['InstanceState']
          @InstanceType = params['InstanceType']
          @OwnerUinList = params['OwnerUinList']
          @TotalRunNum = params['TotalRunNum']
          @TryLimit = params['TryLimit']
          @Tries = params['Tries']
          @CostTime = params['CostTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SchedulerTime = params['SchedulerTime']
          @LastUpdateTime = params['LastUpdateTime']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ExecutorGroupName = params['ExecutorGroupName']
          @JobErrorMsg = params['JobErrorMsg']
        end
      end

      # 任务实例执行列表
      class TaskInstanceExecutions < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param Items: 记录列表
        # @type Items: Array
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :TotalCount, :TotalPageNumber, :Items, :PageNumber, :PageSize

        def initialize(totalcount=nil, totalpagenumber=nil, items=nil, pagenumber=nil, pagesize=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceexecution_tmp = InstanceExecution.new
              instanceexecution_tmp.deserialize(i)
              @Items << instanceexecution_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # 实例列表分页实体
      class TaskInstancePage < TencentCloud::Common::AbstractModel
        # @param TotalCount: **总条数**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: **总分页数**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条目数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskinstance_tmp = TaskInstance.new
              taskinstance_tmp.deserialize(i)
              @Items << taskinstance_tmp
            end
          end
        end
      end

      # 任务运维工作流列表详情
      class TaskOpsInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param OwnerUin: 负责人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param Status: 任务状态:
        # - Y: 调度中
        # - F: 已下线
        # - O: 已暂停
        # - T: 下线中
        # - INVALID: 已失效
        # @type Status: String
        # @param FolderId: 文件夹id
        # @type FolderId: String
        # @param FolderName: 文件夹名字
        # @type FolderName: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param UpdateUserUin: 更新人名称
        # @type UpdateUserUin: String
        # @param TaskTypeId: 任务类型Id：
        # * 21:JDBC SQL
        # * 23:TDSQL-PostgreSQL
        # * 26:OfflineSynchronization
        # * 30:Python
        # * 31:PySpark
        # * 33:Impala
        # * 34:Hive SQL
        # * 35:Shell
        # * 36:Spark SQL
        # * 38:Shell Form Mode
        # * 39:Spark
        # * 40:TCHouse-P
        # * 41:Kettle
        # * 42:Tchouse-X
        # * 43:TCHouse-X SQL
        # * 46:DLC Spark
        # * 47:TiOne
        # * 48:Trino
        # * 50:DLC PySpark
        # * 92:MapReduce
        # * 130:Branch Node
        # * 131:Merged Node
        # * 132:Notebook
        # * 133:SSH
        # * 134:StarRocks
        # * 137:For-each
        # * 138:Setats SQL
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        #  - 通用数据同步
        #  - ETLTaskType
        #  - ETLTaskType
        #  - python
        #  - pyspark
        #  - HiveSQLTaskType
        #  - shell
        #  - SparkSQLTaskType
        #  - JDBCSQLTaskType
        #  - DLCTaskType
        #  - ImpalaTaskType
        #  - CDWTaskType
        #  - kettle
        #  - DLCSparkTaskType
        #  - TiOne机器学习
        #  - TrinoTaskType
        #  - DLCPyspark
        #  - spark
        #  - mr
        #  - shell脚本
        #  - hivesql脚本
        #  - 自定义业务通用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param CycleType: 任务周期类型
        # * ONEOFF_CYCLE: 一次性
        # * YEAR_CYCLE: 年
        # * MONTH_CYCLE: 月
        # * WEEK_CYCLE: 周
        # * DAY_CYCLE: 天
        # * HOUR_CYCLE: 小时
        # * MINUTE_CYCLE: 分钟
        # * CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param ExecutorGroupId: 资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorGroupId: String
        # @param ScheduleDesc: 调度描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleDesc: String
        # @param ExecutorGroupName: 资源组名称
        # @type ExecutorGroupName: String
        # @param LastSchedulerCommitTime: 最新调度提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastSchedulerCommitTime: String
        # @param FirstRunTime: 首次执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstRunTime: String
        # @param FirstSubmitTime: 最近一次提交时间
        # @type FirstSubmitTime: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: 最近更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String

        attr_accessor :TaskId, :TaskName, :OwnerUin, :Status, :FolderId, :FolderName, :WorkflowId, :WorkflowName, :ProjectId, :ProjectName, :UpdateUserUin, :TaskTypeId, :TaskTypeDesc, :CycleType, :ExecutorGroupId, :ScheduleDesc, :ExecutorGroupName, :LastSchedulerCommitTime, :FirstRunTime, :FirstSubmitTime, :CreateTime, :LastUpdateTime

        def initialize(taskid=nil, taskname=nil, owneruin=nil, status=nil, folderid=nil, foldername=nil, workflowid=nil, workflowname=nil, projectid=nil, projectname=nil, updateuseruin=nil, tasktypeid=nil, tasktypedesc=nil, cycletype=nil, executorgroupid=nil, scheduledesc=nil, executorgroupname=nil, lastschedulercommittime=nil, firstruntime=nil, firstsubmittime=nil, createtime=nil, lastupdatetime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @OwnerUin = owneruin
          @Status = status
          @FolderId = folderid
          @FolderName = foldername
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectId = projectid
          @ProjectName = projectname
          @UpdateUserUin = updateuseruin
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @CycleType = cycletype
          @ExecutorGroupId = executorgroupid
          @ScheduleDesc = scheduledesc
          @ExecutorGroupName = executorgroupname
          @LastSchedulerCommitTime = lastschedulercommittime
          @FirstRunTime = firstruntime
          @FirstSubmitTime = firstsubmittime
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @OwnerUin = params['OwnerUin']
          @Status = params['Status']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @UpdateUserUin = params['UpdateUserUin']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @CycleType = params['CycleType']
          @ExecutorGroupId = params['ExecutorGroupId']
          @ScheduleDesc = params['ScheduleDesc']
          @ExecutorGroupName = params['ExecutorGroupName']
          @LastSchedulerCommitTime = params['LastSchedulerCommitTime']
          @FirstRunTime = params['FirstRunTime']
          @FirstSubmitTime = params['FirstSubmitTime']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # 任务调度配置信息
      class TaskSchedulerConfiguration < TencentCloud::Common::AbstractModel
        # @param CycleType: 周期类型：支持的类型为

        # ONEOFF_CYCLE: 一次性
        # YEAR_CYCLE: 年
        # MONTH_CYCLE: 月
        # WEEK_CYCLE: 周
        # DAY_CYCLE: 天
        # HOUR_CYCLE: 小时
        # MINUTE_CYCLE: 分钟
        # CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param ScheduleTimeZone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param CrontabExpression: 0 2 3 1,L,2 * ?
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param StartTime: 生效日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ExecutionStartTime: 执行时间 左闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间 右闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param CalendarOpen: 日历调度 取值为 0 和 1， 1为打开，0为关闭，默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarOpen: String
        # @param CalendarId: 日历调度 日历 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarId: String
        # @param CalendarName: 日历调度 日历名称, 需要从 DescribeScheduleCalendarPageList 中获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarName: String
        # @param SelfDepend: 自依赖, 默认值 serial, 取值为：parallel(并行), serial(串行), orderly(有序)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDepend: String
        # @param UpstreamDependencyConfigList: 上游依赖数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamDependencyConfigList: Array
        # @param DownstreamDependencyConfigList: 下游依赖数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownstreamDependencyConfigList: Array
        # @param EventListenerList: 事件数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventListenerList: Array
        # @param AllowRedoType: 重跑&补录配置, 默认为 ALL; , ALL 运行成功或失败后皆可重跑或补录, FAILURE 运行成功后不可重跑或补录，运行失败后可重跑或补录, NONE 运行成功或失败后皆不可重跑或补录;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowRedoType: String
        # @param ParamTaskOutList: 输出参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTaskOutList: Array
        # @param ParamTaskInList: 输入参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTaskInList: Array
        # @param TaskOutputRegistryList: 产出登记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskOutputRegistryList: Array
        # @param InitStrategy: **实例生成策略**
        # * T_PLUS_0: T+0生成,默认策略
        # * T_PLUS_1: T+1生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitStrategy: String
        # @param ScheduleRunType: 调度类型: 0 正常调度 1 空跑调度，默认为 0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleRunType: Integer
        # @param DownStreamDependencyConfigList: （废弃，建议使用 DownstreamDependencyConfigList）下游依赖数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownStreamDependencyConfigList: Array
        # @param RunPriority: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunPriority: Integer
        # @param RetryWait: 重试策略 重试等待时间,单位分钟: 默认: 5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryWait: Integer
        # @param MaxRetryAttempts: 重试策略 最大尝试次数, 默认: 4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryAttempts: Integer
        # @param ExecutionTTL: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionTTL: Integer
        # @param WaitExecutionTotalTTL: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitExecutionTotalTTL: String
        # @param ScheduleType: 调度类型: 0 正常调度 1 空跑调度，默认为 0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleType: Integer
        # @param RunPriorityType: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunPriorityType: Integer
        # @param RetryWaitMinute: 重试策略 重试等待时间,单位分钟: 默认: 5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryWaitMinute: Integer
        # @param MaxRetryNumber: 重试策略 最大尝试次数, 默认: 4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryNumber: Integer
        # @param ExecutionTTLMinute: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionTTLMinute: Integer
        # @param WaitExecutionTotalTTLMinute: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitExecutionTotalTTLMinute: Integer

        attr_accessor :CycleType, :ScheduleTimeZone, :CrontabExpression, :StartTime, :EndTime, :ExecutionStartTime, :ExecutionEndTime, :CalendarOpen, :CalendarId, :CalendarName, :SelfDepend, :UpstreamDependencyConfigList, :DownstreamDependencyConfigList, :EventListenerList, :AllowRedoType, :ParamTaskOutList, :ParamTaskInList, :TaskOutputRegistryList, :InitStrategy, :ScheduleRunType, :DownStreamDependencyConfigList, :RunPriority, :RetryWait, :MaxRetryAttempts, :ExecutionTTL, :WaitExecutionTotalTTL, :ScheduleType, :RunPriorityType, :RetryWaitMinute, :MaxRetryNumber, :ExecutionTTLMinute, :WaitExecutionTotalTTLMinute
        extend Gem::Deprecate
        deprecate :ScheduleRunType, :none, 2026, 1
        deprecate :ScheduleRunType=, :none, 2026, 1
        deprecate :DownStreamDependencyConfigList, :none, 2026, 1
        deprecate :DownStreamDependencyConfigList=, :none, 2026, 1
        deprecate :RunPriority, :none, 2026, 1
        deprecate :RunPriority=, :none, 2026, 1
        deprecate :RetryWait, :none, 2026, 1
        deprecate :RetryWait=, :none, 2026, 1
        deprecate :MaxRetryAttempts, :none, 2026, 1
        deprecate :MaxRetryAttempts=, :none, 2026, 1
        deprecate :ExecutionTTL, :none, 2026, 1
        deprecate :ExecutionTTL=, :none, 2026, 1
        deprecate :WaitExecutionTotalTTL, :none, 2026, 1
        deprecate :WaitExecutionTotalTTL=, :none, 2026, 1

        def initialize(cycletype=nil, scheduletimezone=nil, crontabexpression=nil, starttime=nil, endtime=nil, executionstarttime=nil, executionendtime=nil, calendaropen=nil, calendarid=nil, calendarname=nil, selfdepend=nil, upstreamdependencyconfiglist=nil, downstreamdependencyconfiglist=nil, eventlistenerlist=nil, allowredotype=nil, paramtaskoutlist=nil, paramtaskinlist=nil, taskoutputregistrylist=nil, initstrategy=nil, scheduleruntype=nil, runpriority=nil, retrywait=nil, maxretryattempts=nil, executionttl=nil, waitexecutiontotalttl=nil, scheduletype=nil, runprioritytype=nil, retrywaitminute=nil, maxretrynumber=nil, executionttlminute=nil, waitexecutiontotalttlminute=nil)
          @CycleType = cycletype
          @ScheduleTimeZone = scheduletimezone
          @CrontabExpression = crontabexpression
          @StartTime = starttime
          @EndTime = endtime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CalendarOpen = calendaropen
          @CalendarId = calendarid
          @CalendarName = calendarname
          @SelfDepend = selfdepend
          @UpstreamDependencyConfigList = upstreamdependencyconfiglist
          @DownstreamDependencyConfigList = downstreamdependencyconfiglist
          @EventListenerList = eventlistenerlist
          @AllowRedoType = allowredotype
          @ParamTaskOutList = paramtaskoutlist
          @ParamTaskInList = paramtaskinlist
          @TaskOutputRegistryList = taskoutputregistrylist
          @InitStrategy = initstrategy
          @ScheduleRunType = scheduleruntype
          @RunPriority = runpriority
          @RetryWait = retrywait
          @MaxRetryAttempts = maxretryattempts
          @ExecutionTTL = executionttl
          @WaitExecutionTotalTTL = waitexecutiontotalttl
          @ScheduleType = scheduletype
          @RunPriorityType = runprioritytype
          @RetryWaitMinute = retrywaitminute
          @MaxRetryNumber = maxretrynumber
          @ExecutionTTLMinute = executionttlminute
          @WaitExecutionTotalTTLMinute = waitexecutiontotalttlminute
        end

        def deserialize(params)
          @CycleType = params['CycleType']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @CrontabExpression = params['CrontabExpression']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CalendarOpen = params['CalendarOpen']
          @CalendarId = params['CalendarId']
          @CalendarName = params['CalendarName']
          @SelfDepend = params['SelfDepend']
          unless params['UpstreamDependencyConfigList'].nil?
            @UpstreamDependencyConfigList = []
            params['UpstreamDependencyConfigList'].each do |i|
              dependencytaskbrief_tmp = DependencyTaskBrief.new
              dependencytaskbrief_tmp.deserialize(i)
              @UpstreamDependencyConfigList << dependencytaskbrief_tmp
            end
          end
          unless params['DownstreamDependencyConfigList'].nil?
            @DownstreamDependencyConfigList = []
            params['DownstreamDependencyConfigList'].each do |i|
              dependencytaskbrief_tmp = DependencyTaskBrief.new
              dependencytaskbrief_tmp.deserialize(i)
              @DownstreamDependencyConfigList << dependencytaskbrief_tmp
            end
          end
          unless params['EventListenerList'].nil?
            @EventListenerList = []
            params['EventListenerList'].each do |i|
              eventlistener_tmp = EventListener.new
              eventlistener_tmp.deserialize(i)
              @EventListenerList << eventlistener_tmp
            end
          end
          @AllowRedoType = params['AllowRedoType']
          unless params['ParamTaskOutList'].nil?
            @ParamTaskOutList = []
            params['ParamTaskOutList'].each do |i|
              outtaskparameter_tmp = OutTaskParameter.new
              outtaskparameter_tmp.deserialize(i)
              @ParamTaskOutList << outtaskparameter_tmp
            end
          end
          unless params['ParamTaskInList'].nil?
            @ParamTaskInList = []
            params['ParamTaskInList'].each do |i|
              intaskparameter_tmp = InTaskParameter.new
              intaskparameter_tmp.deserialize(i)
              @ParamTaskInList << intaskparameter_tmp
            end
          end
          unless params['TaskOutputRegistryList'].nil?
            @TaskOutputRegistryList = []
            params['TaskOutputRegistryList'].each do |i|
              taskdataregistry_tmp = TaskDataRegistry.new
              taskdataregistry_tmp.deserialize(i)
              @TaskOutputRegistryList << taskdataregistry_tmp
            end
          end
          @InitStrategy = params['InitStrategy']
          @ScheduleRunType = params['ScheduleRunType']
          @RunPriority = params['RunPriority']
          @RetryWait = params['RetryWait']
          @MaxRetryAttempts = params['MaxRetryAttempts']
          @ExecutionTTL = params['ExecutionTTL']
          @WaitExecutionTotalTTL = params['WaitExecutionTotalTTL']
          @ScheduleType = params['ScheduleType']
          @RunPriorityType = params['RunPriorityType']
          @RetryWaitMinute = params['RetryWaitMinute']
          @MaxRetryNumber = params['MaxRetryNumber']
          @ExecutionTTLMinute = params['ExecutionTTLMinute']
          @WaitExecutionTotalTTLMinute = params['WaitExecutionTotalTTLMinute']
        end
      end

      # 任务调度变量参数
      class TaskSchedulingParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 任务版本列表信息
      class TaskVersion < TencentCloud::Common::AbstractModel
        # @param CreateTime: 保存时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param VersionNum: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionNum: String
        # @param CreateUserUin: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param VersionId: 保存版本id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param VersionRemark: 版本描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionRemark: String
        # @param ApproveStatus: 审批状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param Status: 生产状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ApproveUserUin: 审批人（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveUserUin: String

        attr_accessor :CreateTime, :VersionNum, :CreateUserUin, :VersionId, :VersionRemark, :ApproveStatus, :Status, :ApproveUserUin

        def initialize(createtime=nil, versionnum=nil, createuseruin=nil, versionid=nil, versionremark=nil, approvestatus=nil, status=nil, approveuseruin=nil)
          @CreateTime = createtime
          @VersionNum = versionnum
          @CreateUserUin = createuseruin
          @VersionId = versionid
          @VersionRemark = versionremark
          @ApproveStatus = approvestatus
          @Status = status
          @ApproveUserUin = approveuseruin
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @VersionNum = params['VersionNum']
          @CreateUserUin = params['CreateUserUin']
          @VersionId = params['VersionId']
          @VersionRemark = params['VersionRemark']
          @ApproveStatus = params['ApproveStatus']
          @Status = params['Status']
          @ApproveUserUin = params['ApproveUserUin']
        end
      end

      # 任务版本列表信息
      class TaskVersionDetail < TencentCloud::Common::AbstractModel
        # @param CreateTime: 保存时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param VersionNum: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionNum: String
        # @param CreateUserUin: 版本创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param VersionId: 保存版本Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param VersionRemark: 版本描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionRemark: String
        # @param ApproveStatus: 审批状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param ApproveTime: 生产状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveTime: String
        # @param Task: 版本的任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Task: :class:`Tencentcloud::Wedata.v20250806.models.Task`
        # @param ApproveUserUin: 审批人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveUserUin: String

        attr_accessor :CreateTime, :VersionNum, :CreateUserUin, :VersionId, :VersionRemark, :ApproveStatus, :ApproveTime, :Task, :ApproveUserUin

        def initialize(createtime=nil, versionnum=nil, createuseruin=nil, versionid=nil, versionremark=nil, approvestatus=nil, approvetime=nil, task=nil, approveuseruin=nil)
          @CreateTime = createtime
          @VersionNum = versionnum
          @CreateUserUin = createuseruin
          @VersionId = versionid
          @VersionRemark = versionremark
          @ApproveStatus = approvestatus
          @ApproveTime = approvetime
          @Task = task
          @ApproveUserUin = approveuseruin
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @VersionNum = params['VersionNum']
          @CreateUserUin = params['CreateUserUin']
          @VersionId = params['VersionId']
          @VersionRemark = params['VersionRemark']
          @ApproveStatus = params['ApproveStatus']
          @ApproveTime = params['ApproveTime']
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @ApproveUserUin = params['ApproveUserUin']
        end
      end

      # TechnicalMetadata
      class TechnicalMetadata < TencentCloud::Common::AbstractModel
        # @param Owner: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param Location: 数据表位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param StorageSize: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer

        attr_accessor :Owner, :Location, :StorageSize

        def initialize(owner=nil, location=nil, storagesize=nil)
          @Owner = owner
          @Location = location
          @StorageSize = storagesize
        end

        def deserialize(params)
          @Owner = params['Owner']
          @Location = params['Location']
          @StorageSize = params['StorageSize']
        end
      end

      # 告警超时配置规则信息
      class TimeOutStrategyInfo < TencentCloud::Common::AbstractModel
        # @param RuleType: 超时告警超时配置：

        # 1.预计运行耗时超时，2.预计完成时间超时，3.预计等待调度耗时超时，4.预计周期内完成但实际未完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: Integer
        # @param Type: 超时值配置类型

        # 1--指定值
        # 2--平均值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Hour: 超时指定值小时， 默认 为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hour: Integer
        # @param Min: 超时指定值分钟， 默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: Integer
        # @param ScheduleTimeZone: 超时时间对应的时区配置， 如 UTC+7, 默认为UTC+8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param Second: 秒（用于 Spark Streaming 策略）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Second: Integer
        # @param Times: 次数（用于 Spark Streaming 重试次数超限策略，ruleType=10）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Times: Integer
        # @param AlarmTriggerFrequency: 告警触发频率（用于 Spark Streaming 策略 ruleType=8/9/10）
        #          * 单位：分钟，范围：5-1440
        #          * 告警触发后，在该时间内暂停检测，避免告警风暴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmTriggerFrequency: Integer

        attr_accessor :RuleType, :Type, :Hour, :Min, :ScheduleTimeZone, :Second, :Times, :AlarmTriggerFrequency

        def initialize(ruletype=nil, type=nil, hour=nil, min=nil, scheduletimezone=nil, second=nil, times=nil, alarmtriggerfrequency=nil)
          @RuleType = ruletype
          @Type = type
          @Hour = hour
          @Min = min
          @ScheduleTimeZone = scheduletimezone
          @Second = second
          @Times = times
          @AlarmTriggerFrequency = alarmtriggerfrequency
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @Type = params['Type']
          @Hour = params['Hour']
          @Min = params['Min']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @Second = params['Second']
          @Times = params['Times']
          @AlarmTriggerFrequency = params['AlarmTriggerFrequency']
        end
      end

      # 资源组指标趋势
      class TrendData < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param Value: 指标值
        # @type Value: Integer

        attr_accessor :Timestamp, :Value

        def initialize(timestamp=nil, value=nil)
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 查询任务上游依赖详情分页
      class TriggerDependencyConfigPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足查询条件的数据总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 满足查询条件的数据总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 当前请求的数据页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 当前请求的数据页条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 分页数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggertaskdependdto_tmp = TriggerTaskDependDto.new
              triggertaskdependdto_tmp.deserialize(i)
              @Items << triggertaskdependdto_tmp
            end
          end
        end
      end

      # 任务对象
      class TriggerTask < TencentCloud::Common::AbstractModel
        # @param TriggerTaskBaseAttribute: 任务基本属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskBaseAttribute`
        # @param TriggerTaskConfiguration: 任务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskConfiguration`
        # @param TriggerTaskSchedulerConfiguration: 任务调度配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskSchedulerConfiguration`

        attr_accessor :TriggerTaskBaseAttribute, :TriggerTaskConfiguration, :TriggerTaskSchedulerConfiguration

        def initialize(triggertaskbaseattribute=nil, triggertaskconfiguration=nil, triggertaskschedulerconfiguration=nil)
          @TriggerTaskBaseAttribute = triggertaskbaseattribute
          @TriggerTaskConfiguration = triggertaskconfiguration
          @TriggerTaskSchedulerConfiguration = triggertaskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TriggerTaskBaseAttribute'].nil?
            @TriggerTaskBaseAttribute = TriggerTaskBaseAttribute.new
            @TriggerTaskBaseAttribute.deserialize(params['TriggerTaskBaseAttribute'])
          end
          unless params['TriggerTaskConfiguration'].nil?
            @TriggerTaskConfiguration = TriggerTaskConfiguration.new
            @TriggerTaskConfiguration.deserialize(params['TriggerTaskConfiguration'])
          end
          unless params['TriggerTaskSchedulerConfiguration'].nil?
            @TriggerTaskSchedulerConfiguration = TriggerTaskSchedulerConfiguration.new
            @TriggerTaskSchedulerConfiguration.deserialize(params['TriggerTaskSchedulerConfiguration'])
          end
        end
      end

      # 任务基本属性信息
      class TriggerTaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeId: 任务类型ID：

        # - 26:OfflineSynchronization
        # - 30:Python
        # - 32:DLC SQL
        # - 35:Shell
        # - 38:Shell Form Mode
        # - 46:DLC Spark
        # - 50:DLC PySpark
        # - 130:Branch Node
        # - 131:Merged Node
        # - 132:Notebook
        # - 133:SSH
        # - 137:For-each
        # - 139:DLC Spark Streaming
        # - 140:Run Workflow
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskLatestVersionNo: 最近一次保存版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLatestVersionNo: String
        # @param TaskLatestSubmitVersionNo: 最近一次提交的版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLatestSubmitVersionNo: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param Status: 任务状态：
        # * N: 新建
        # * Y: 调度中

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Submit: 任务最新提交状态，任务是否已经提交：true/false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Submit: Boolean
        # @param CreateTime: 任务创建时间，示例：2022-02-12 11:13:41
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdateTime: 最后更新时间，示例：2025-08-13 16:34:06
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param LastUpdateUserName: 最后更新人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateUserName: String
        # @param LastOpsTime: 最后运维时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsTime: String
        # @param LastOpsUserName: 最后运维人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsUserName: String
        # @param OwnerUin: 任务负责人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskDescription: String
        # @param UpdateUserUin: 最近一次更新用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param CreateUserUin: 创建用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param TaskFolderPath: 任务文件夹路径

        # 注意：

        # 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFolderPath: String

        attr_accessor :TaskId, :TaskTypeId, :WorkflowId, :TaskName, :TaskLatestVersionNo, :TaskLatestSubmitVersionNo, :WorkflowName, :Status, :Submit, :CreateTime, :LastUpdateTime, :LastUpdateUserName, :LastOpsTime, :LastOpsUserName, :OwnerUin, :TaskDescription, :UpdateUserUin, :CreateUserUin, :TaskFolderPath

        def initialize(taskid=nil, tasktypeid=nil, workflowid=nil, taskname=nil, tasklatestversionno=nil, tasklatestsubmitversionno=nil, workflowname=nil, status=nil, submit=nil, createtime=nil, lastupdatetime=nil, lastupdateusername=nil, lastopstime=nil, lastopsusername=nil, owneruin=nil, taskdescription=nil, updateuseruin=nil, createuseruin=nil, taskfolderpath=nil)
          @TaskId = taskid
          @TaskTypeId = tasktypeid
          @WorkflowId = workflowid
          @TaskName = taskname
          @TaskLatestVersionNo = tasklatestversionno
          @TaskLatestSubmitVersionNo = tasklatestsubmitversionno
          @WorkflowName = workflowname
          @Status = status
          @Submit = submit
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @LastUpdateUserName = lastupdateusername
          @LastOpsTime = lastopstime
          @LastOpsUserName = lastopsusername
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @UpdateUserUin = updateuseruin
          @CreateUserUin = createuseruin
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowId = params['WorkflowId']
          @TaskName = params['TaskName']
          @TaskLatestVersionNo = params['TaskLatestVersionNo']
          @TaskLatestSubmitVersionNo = params['TaskLatestSubmitVersionNo']
          @WorkflowName = params['WorkflowName']
          @Status = params['Status']
          @Submit = params['Submit']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @LastUpdateUserName = params['LastUpdateUserName']
          @LastOpsTime = params['LastOpsTime']
          @LastOpsUserName = params['LastOpsUserName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @UpdateUserUin = params['UpdateUserUin']
          @CreateUserUin = params['CreateUserUin']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 任务概要信息
      class TriggerTaskBrief < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param UserUinInCharge: 责任人user UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUinInCharge: String
        # @param UserNameInCharge: 责任人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNameInCharge: String
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param TaskTypeId: 任务类型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param ExecutionState: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionState: String
        # @param ExecutionStartTime: 运行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String

        attr_accessor :ProjectId, :ProjectName, :WorkflowId, :WorkflowName, :TaskId, :TaskName, :TaskType, :UserUinInCharge, :UserNameInCharge, :FolderId, :FolderName, :TaskTypeId, :ExecutionState, :ExecutionStartTime

        def initialize(projectid=nil, projectname=nil, workflowid=nil, workflowname=nil, taskid=nil, taskname=nil, tasktype=nil, useruinincharge=nil, usernameincharge=nil, folderid=nil, foldername=nil, tasktypeid=nil, executionstate=nil, executionstarttime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @UserUinInCharge = useruinincharge
          @UserNameInCharge = usernameincharge
          @FolderId = folderid
          @FolderName = foldername
          @TaskTypeId = tasktypeid
          @ExecutionState = executionstate
          @ExecutionStartTime = executionstarttime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @UserUinInCharge = params['UserUinInCharge']
          @UserNameInCharge = params['UserNameInCharge']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @TaskTypeId = params['TaskTypeId']
          @ExecutionState = params['ExecutionState']
          @ExecutionStartTime = params['ExecutionStartTime']
        end
      end

      # 任务配置信息
      class TriggerTaskConfiguration < TencentCloud::Common::AbstractModel
        # @param CodeContent: 代码内容的Base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeContent: String
        # @param TaskExtConfigurationList: 任务扩展属性配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExtConfigurationList: Array
        # @param DataCluster: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataCluster: String
        # @param BrokerIp: 指定的运行节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: String
        # @param YarnQueue: 资源池队列名称，需要通过 DescribeProjectClusterQueues 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YarnQueue: String
        # @param SourceServiceId: 来源数据源ID,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceId: String
        # @param SourceServiceType: 来源数据源类型,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceType: String
        # @param SourceServiceName: 来源数据源名称, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServiceName: String
        # @param TargetServiceId: 目标数据源ID, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceId: String
        # @param TargetServiceType: 目标数据源类型,  需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceType: String
        # @param TargetServiceName: 目标数据源名称, 需要通过 DescribeDataSourceWithoutInfo 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServiceName: String
        # @param ResourceGroup: 资源组ID： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param ResourceGroupName: 资源组名称： 需要通过 DescribeNormalSchedulerExecutorGroups 获取 ExecutorGroupName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param TaskSchedulingParameterList: 调度参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSchedulingParameterList: Array
        # @param BundleId: Bundle使用的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String

        attr_accessor :CodeContent, :TaskExtConfigurationList, :DataCluster, :BrokerIp, :YarnQueue, :SourceServiceId, :SourceServiceType, :SourceServiceName, :TargetServiceId, :TargetServiceType, :TargetServiceName, :ResourceGroup, :ResourceGroupName, :TaskSchedulingParameterList, :BundleId, :BundleInfo

        def initialize(codecontent=nil, taskextconfigurationlist=nil, datacluster=nil, brokerip=nil, yarnqueue=nil, sourceserviceid=nil, sourceservicetype=nil, sourceservicename=nil, targetserviceid=nil, targetservicetype=nil, targetservicename=nil, resourcegroup=nil, resourcegroupname=nil, taskschedulingparameterlist=nil, bundleid=nil, bundleinfo=nil)
          @CodeContent = codecontent
          @TaskExtConfigurationList = taskextconfigurationlist
          @DataCluster = datacluster
          @BrokerIp = brokerip
          @YarnQueue = yarnqueue
          @SourceServiceId = sourceserviceid
          @SourceServiceType = sourceservicetype
          @SourceServiceName = sourceservicename
          @TargetServiceId = targetserviceid
          @TargetServiceType = targetservicetype
          @TargetServiceName = targetservicename
          @ResourceGroup = resourcegroup
          @ResourceGroupName = resourcegroupname
          @TaskSchedulingParameterList = taskschedulingparameterlist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @CodeContent = params['CodeContent']
          unless params['TaskExtConfigurationList'].nil?
            @TaskExtConfigurationList = []
            params['TaskExtConfigurationList'].each do |i|
              taskextparameter_tmp = TaskExtParameter.new
              taskextparameter_tmp.deserialize(i)
              @TaskExtConfigurationList << taskextparameter_tmp
            end
          end
          @DataCluster = params['DataCluster']
          @BrokerIp = params['BrokerIp']
          @YarnQueue = params['YarnQueue']
          @SourceServiceId = params['SourceServiceId']
          @SourceServiceType = params['SourceServiceType']
          @SourceServiceName = params['SourceServiceName']
          @TargetServiceId = params['TargetServiceId']
          @TargetServiceType = params['TargetServiceType']
          @TargetServiceName = params['TargetServiceName']
          @ResourceGroup = params['ResourceGroup']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['TaskSchedulingParameterList'].nil?
            @TaskSchedulingParameterList = []
            params['TaskSchedulingParameterList'].each do |i|
              taskschedulingparameter_tmp = TaskSchedulingParameter.new
              taskschedulingparameter_tmp.deserialize(i)
              @TaskSchedulingParameterList << taskschedulingparameter_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # 工作流任务概要信息
      class TriggerTaskDAGBrief < TencentCloud::Common::AbstractModel
        # @param TriggerTasks: 任务信息合集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTasks: Array
        # @param TriggerTaskLinks: 任务连接信息合集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTaskLinks: Array

        attr_accessor :TriggerTasks, :TriggerTaskLinks

        def initialize(triggertasks=nil, triggertasklinks=nil)
          @TriggerTasks = triggertasks
          @TriggerTaskLinks = triggertasklinks
        end

        def deserialize(params)
          unless params['TriggerTasks'].nil?
            @TriggerTasks = []
            params['TriggerTasks'].each do |i|
              triggertaskbrief_tmp = TriggerTaskBrief.new
              triggertaskbrief_tmp.deserialize(i)
              @TriggerTasks << triggertaskbrief_tmp
            end
          end
          unless params['TriggerTaskLinks'].nil?
            @TriggerTaskLinks = []
            params['TriggerTaskLinks'].each do |i|
              triggertasklinkbrief_tmp = TriggerTaskLinkBrief.new
              triggertasklinkbrief_tmp.deserialize(i)
              @TriggerTaskLinks << triggertasklinkbrief_tmp
            end
          end
        end
      end

      # 依赖的工作流调度任务信息
      class TriggerTaskDependDto < TencentCloud::Common::AbstractModel
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
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Status: 任务状态:
        # - Y: 运行
        # - N: 新建

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        #  - 20 :  通用数据同步
        #  - 25 :  ETLTaskType
        #  - 26 :  ETLTaskType
        #  - 30 :  python
        #  - 31 :  pyspark
        #  - 34 :  hivesql
        #  - 35 :  shell
        #  - 36 :  sparksql
        #  - 21 :  jdbcsql
        #  - 32 :  dlc
        #  - 33 :  ImpalaTaskType
        #  - 40 :  CDWTaskType
        #  - 41 :  kettle
        #  - 42 :  TCHouse-X
        #  - 43 :  TCHouse-X SQL
        #  - 46 :  dlcsparkTaskType
        #  - 47 :  TiOneMachineLearningTaskType
        #  - 48 :  Trino
        #  - 50 :  DLCPyspark
        #  - 23 :  TencentDistributedSQL
        #  - 39 :  spark
        #  - 92 :  MRTaskType
        #  - 38 :  ShellScript
        #  - 70 :  HiveSQLScrip
        #  - 130 :  分支
        #  - 131 :  归并
        #  - 132 :  Notebook探索
        #  - 133 :  SSH节点
        #  - 134 :  StarRocks
        #  - 137 :  For-each
        #  - 10000 :  自定义业务通用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param OwnerUin: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectId, :Status, :TaskTypeId, :TaskTypeDesc, :OwnerUin

        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectid=nil, status=nil, tasktypeid=nil, tasktypedesc=nil, owneruin=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectId = projectid
          @Status = status
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @OwnerUin = params['OwnerUin']
        end
      end

      # 任务链接概要信息
      class TriggerTaskLinkBrief < TencentCloud::Common::AbstractModel
        # @param LinkId: 连接ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkId: String
        # @param WorkflowId: 所属工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowVersionId: 所属工作流版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowVersionId: String
        # @param UpstreamTaskId: 上游任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamTaskId: String
        # @param DownstreamTaskId: 下游任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownstreamTaskId: String

        attr_accessor :LinkId, :WorkflowId, :WorkflowVersionId, :UpstreamTaskId, :DownstreamTaskId

        def initialize(linkid=nil, workflowid=nil, workflowversionid=nil, upstreamtaskid=nil, downstreamtaskid=nil)
          @LinkId = linkid
          @WorkflowId = workflowid
          @WorkflowVersionId = workflowversionid
          @UpstreamTaskId = upstreamtaskid
          @DownstreamTaskId = downstreamtaskid
        end

        def deserialize(params)
          @LinkId = params['LinkId']
          @WorkflowId = params['WorkflowId']
          @WorkflowVersionId = params['WorkflowVersionId']
          @UpstreamTaskId = params['UpstreamTaskId']
          @DownstreamTaskId = params['DownstreamTaskId']
        end
      end

      # 工作流调度模式下的任务运行概要信息
      class TriggerTaskRunBrief < TencentCloud::Common::AbstractModel
        # @param ExecutionId: 任务运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionId: String
        # @param ExecutionState: 执行状态，运行失败:FAILED、运行成功:SUCCESS、等待中:PENDING、跳过运行:SKIP、运行中:RUNNING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionState: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowExecutionId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowExecutionId: String
        # @param TaskId: 任务 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskVersionId: 任务版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskVersionId: String
        # @param TriggerType: 触发类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param WaitTime: 等待时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitTime: String
        # @param ResourceGroup: 所属资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param ErrorCode: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: String
        # @param ExecuteUserUin: 运行账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteUserUin: String
        # @param CreaterUin: 创建人 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreaterUin: String
        # @param JobId: 执行平台执行 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CreateTime: 创建时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DependenceFinishedTime: 依赖任务完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependenceFinishedTime: String
        # @param QueueStartTime: 任务下发执行平台时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueStartTime: String
        # @param PendingStartTime: 开始等待资源时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingStartTime: String
        # @param ExecutionStartTime: 运行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 运行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param QueueCostTime: 排队时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCostTime: String
        # @param ExecutionTime: 运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionTime: String
        # @param AllCostTime: 总花费时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllCostTime: String
        # @param TimeZone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param DependOnList: 依赖上游任务 ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param RunParams: 运行参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunParams: String
        # @param TaskTypeExtensions: 任务扩展信息，包含脚本路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeExtensions: String
        # @param RetryTimes: 重试次数，为 0 则表示首次运行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryTimes: Integer
        # @param LeftCoordinate: 左侧坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 顶部坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param ResourceGroupId: 资源组 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ErrorCodeStr: 错误码描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeStr: String
        # @param CreateUin: 创建人 UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: String
        # @param IssueTime: 下发执行平台时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueTime: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ExecuteUserName: 运行人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteUserName: String
        # @param RerunTimes: 重跑次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param IsLatestExecution: 是否是最新一次运行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLatestExecution: Boolean
        # @param TaskExecutionState: 任务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExecutionState: String
        # @param CycleType: 周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param UserNameInCharge: 责任人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNameInCharge: String
        # @param UserUinInCharge: 责任人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUinInCharge: String
        # @param ResourceGroupName: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param Timezone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timezone: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param WorkflowParams: 工作流运行参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param SupportRerun: 是否支持重跑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportRerun: Boolean
        # @param WorkflowExecutionState: 工作流运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowExecutionState: String
        # @param ExecutionResult: 任务执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionResult: String

        attr_accessor :ExecutionId, :ExecutionState, :ProjectId, :WorkflowId, :WorkflowExecutionId, :TaskId, :TaskType, :TaskVersionId, :TriggerType, :WaitTime, :ResourceGroup, :ErrorCode, :ExecuteUserUin, :CreaterUin, :JobId, :CreateTime, :UpdateTime, :DependenceFinishedTime, :QueueStartTime, :PendingStartTime, :ExecutionStartTime, :ExecutionEndTime, :QueueCostTime, :ExecutionTime, :AllCostTime, :TimeZone, :DependOnList, :RunParams, :TaskTypeExtensions, :RetryTimes, :LeftCoordinate, :TopCoordinate, :ResourceGroupId, :ErrorCodeStr, :CreateUin, :IssueTime, :TaskName, :WorkflowName, :ExecuteUserName, :RerunTimes, :IsLatestExecution, :TaskExecutionState, :CycleType, :UserNameInCharge, :UserUinInCharge, :ResourceGroupName, :Timezone, :FolderId, :FolderName, :ProjectName, :TaskTypeId, :WorkflowParams, :SupportRerun, :WorkflowExecutionState, :ExecutionResult

        def initialize(executionid=nil, executionstate=nil, projectid=nil, workflowid=nil, workflowexecutionid=nil, taskid=nil, tasktype=nil, taskversionid=nil, triggertype=nil, waittime=nil, resourcegroup=nil, errorcode=nil, executeuseruin=nil, createruin=nil, jobid=nil, createtime=nil, updatetime=nil, dependencefinishedtime=nil, queuestarttime=nil, pendingstarttime=nil, executionstarttime=nil, executionendtime=nil, queuecosttime=nil, executiontime=nil, allcosttime=nil, timezone=nil, dependonlist=nil, runparams=nil, tasktypeextensions=nil, retrytimes=nil, leftcoordinate=nil, topcoordinate=nil, resourcegroupid=nil, errorcodestr=nil, createuin=nil, issuetime=nil, taskname=nil, workflowname=nil, executeusername=nil, reruntimes=nil, islatestexecution=nil, taskexecutionstate=nil, cycletype=nil, usernameincharge=nil, useruinincharge=nil, resourcegroupname=nil, timezone=nil, folderid=nil, foldername=nil, projectname=nil, tasktypeid=nil, workflowparams=nil, supportrerun=nil, workflowexecutionstate=nil, executionresult=nil)
          @ExecutionId = executionid
          @ExecutionState = executionstate
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowExecutionId = workflowexecutionid
          @TaskId = taskid
          @TaskType = tasktype
          @TaskVersionId = taskversionid
          @TriggerType = triggertype
          @WaitTime = waittime
          @ResourceGroup = resourcegroup
          @ErrorCode = errorcode
          @ExecuteUserUin = executeuseruin
          @CreaterUin = createruin
          @JobId = jobid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DependenceFinishedTime = dependencefinishedtime
          @QueueStartTime = queuestarttime
          @PendingStartTime = pendingstarttime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @QueueCostTime = queuecosttime
          @ExecutionTime = executiontime
          @AllCostTime = allcosttime
          @TimeZone = timezone
          @DependOnList = dependonlist
          @RunParams = runparams
          @TaskTypeExtensions = tasktypeextensions
          @RetryTimes = retrytimes
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @ResourceGroupId = resourcegroupid
          @ErrorCodeStr = errorcodestr
          @CreateUin = createuin
          @IssueTime = issuetime
          @TaskName = taskname
          @WorkflowName = workflowname
          @ExecuteUserName = executeusername
          @RerunTimes = reruntimes
          @IsLatestExecution = islatestexecution
          @TaskExecutionState = taskexecutionstate
          @CycleType = cycletype
          @UserNameInCharge = usernameincharge
          @UserUinInCharge = useruinincharge
          @ResourceGroupName = resourcegroupname
          @Timezone = timezone
          @FolderId = folderid
          @FolderName = foldername
          @ProjectName = projectname
          @TaskTypeId = tasktypeid
          @WorkflowParams = workflowparams
          @SupportRerun = supportrerun
          @WorkflowExecutionState = workflowexecutionstate
          @ExecutionResult = executionresult
        end

        def deserialize(params)
          @ExecutionId = params['ExecutionId']
          @ExecutionState = params['ExecutionState']
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowExecutionId = params['WorkflowExecutionId']
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TaskVersionId = params['TaskVersionId']
          @TriggerType = params['TriggerType']
          @WaitTime = params['WaitTime']
          @ResourceGroup = params['ResourceGroup']
          @ErrorCode = params['ErrorCode']
          @ExecuteUserUin = params['ExecuteUserUin']
          @CreaterUin = params['CreaterUin']
          @JobId = params['JobId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DependenceFinishedTime = params['DependenceFinishedTime']
          @QueueStartTime = params['QueueStartTime']
          @PendingStartTime = params['PendingStartTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @QueueCostTime = params['QueueCostTime']
          @ExecutionTime = params['ExecutionTime']
          @AllCostTime = params['AllCostTime']
          @TimeZone = params['TimeZone']
          @DependOnList = params['DependOnList']
          @RunParams = params['RunParams']
          @TaskTypeExtensions = params['TaskTypeExtensions']
          @RetryTimes = params['RetryTimes']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @ResourceGroupId = params['ResourceGroupId']
          @ErrorCodeStr = params['ErrorCodeStr']
          @CreateUin = params['CreateUin']
          @IssueTime = params['IssueTime']
          @TaskName = params['TaskName']
          @WorkflowName = params['WorkflowName']
          @ExecuteUserName = params['ExecuteUserName']
          @RerunTimes = params['RerunTimes']
          @IsLatestExecution = params['IsLatestExecution']
          @TaskExecutionState = params['TaskExecutionState']
          @CycleType = params['CycleType']
          @UserNameInCharge = params['UserNameInCharge']
          @UserUinInCharge = params['UserUinInCharge']
          @ResourceGroupName = params['ResourceGroupName']
          @Timezone = params['Timezone']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @ProjectName = params['ProjectName']
          @TaskTypeId = params['TaskTypeId']
          @WorkflowParams = params['WorkflowParams']
          @SupportRerun = params['SupportRerun']
          @WorkflowExecutionState = params['WorkflowExecutionState']
          @ExecutionResult = params['ExecutionResult']
        end
      end

      # 任务调度配置信息
      class TriggerTaskSchedulerConfiguration < TencentCloud::Common::AbstractModel
        # @param UpstreamDependencyConfigList: 上游依赖数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamDependencyConfigList: Array
        # @param RunPriorityType: 任务调度优先级 运行优先级 4高 5中 6低 , 默认:6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunPriorityType: Integer
        # @param RetryWaitMinute: 重试策略 重试等待时间,单位分钟: 默认: 5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryWaitMinute: Integer
        # @param MaxRetryNumber: 重试策略 最大尝试次数, 默认: 4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryNumber: Integer
        # @param ExecutionTTLMinute: 超时处理策略 运行耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionTTLMinute: Integer
        # @param WaitExecutionTotalTTLMinute: 超时处理策略 等待总时长耗时超时（单位：分钟）默认为 -1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitExecutionTotalTTLMinute: Integer
        # @param AllowRedoType: 重跑&补录配置, 默认为 ALL; , ALL 运行成功或失败后皆可重跑或补录, FAILURE 运行成功后不可重跑或补录，运行失败后可重跑或补录, NONE 运行成功或失败后皆不可重跑或补录;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowRedoType: String
        # @param ParamTaskOutList: 输出参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTaskOutList: Array
        # @param ParamTaskInList: 输入参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTaskInList: Array
        # @param TaskOutputRegistryList: 产出登记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskOutputRegistryList: Array

        attr_accessor :UpstreamDependencyConfigList, :RunPriorityType, :RetryWaitMinute, :MaxRetryNumber, :ExecutionTTLMinute, :WaitExecutionTotalTTLMinute, :AllowRedoType, :ParamTaskOutList, :ParamTaskInList, :TaskOutputRegistryList

        def initialize(upstreamdependencyconfiglist=nil, runprioritytype=nil, retrywaitminute=nil, maxretrynumber=nil, executionttlminute=nil, waitexecutiontotalttlminute=nil, allowredotype=nil, paramtaskoutlist=nil, paramtaskinlist=nil, taskoutputregistrylist=nil)
          @UpstreamDependencyConfigList = upstreamdependencyconfiglist
          @RunPriorityType = runprioritytype
          @RetryWaitMinute = retrywaitminute
          @MaxRetryNumber = maxretrynumber
          @ExecutionTTLMinute = executionttlminute
          @WaitExecutionTotalTTLMinute = waitexecutiontotalttlminute
          @AllowRedoType = allowredotype
          @ParamTaskOutList = paramtaskoutlist
          @ParamTaskInList = paramtaskinlist
          @TaskOutputRegistryList = taskoutputregistrylist
        end

        def deserialize(params)
          unless params['UpstreamDependencyConfigList'].nil?
            @UpstreamDependencyConfigList = []
            params['UpstreamDependencyConfigList'].each do |i|
              dependencytriggertaskbrief_tmp = DependencyTriggerTaskBrief.new
              dependencytriggertaskbrief_tmp.deserialize(i)
              @UpstreamDependencyConfigList << dependencytriggertaskbrief_tmp
            end
          end
          @RunPriorityType = params['RunPriorityType']
          @RetryWaitMinute = params['RetryWaitMinute']
          @MaxRetryNumber = params['MaxRetryNumber']
          @ExecutionTTLMinute = params['ExecutionTTLMinute']
          @WaitExecutionTotalTTLMinute = params['WaitExecutionTotalTTLMinute']
          @AllowRedoType = params['AllowRedoType']
          unless params['ParamTaskOutList'].nil?
            @ParamTaskOutList = []
            params['ParamTaskOutList'].each do |i|
              outtaskparameter_tmp = OutTaskParameter.new
              outtaskparameter_tmp.deserialize(i)
              @ParamTaskOutList << outtaskparameter_tmp
            end
          end
          unless params['ParamTaskInList'].nil?
            @ParamTaskInList = []
            params['ParamTaskInList'].each do |i|
              intaskparameter_tmp = InTaskParameter.new
              intaskparameter_tmp.deserialize(i)
              @ParamTaskInList << intaskparameter_tmp
            end
          end
          unless params['TaskOutputRegistryList'].nil?
            @TaskOutputRegistryList = []
            params['TaskOutputRegistryList'].each do |i|
              taskdataregistry_tmp = TaskDataRegistry.new
              taskdataregistry_tmp.deserialize(i)
              @TaskOutputRegistryList << taskdataregistry_tmp
            end
          end
        end
      end

      # 任务版本列表信息
      class TriggerTaskVersion < TencentCloud::Common::AbstractModel
        # @param CreateTime: 保存时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param VersionNum: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionNum: String
        # @param CreateUserUin: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param VersionId: 保存版本id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param VersionRemark: 版本描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionRemark: String
        # @param ApproveStatus: 审批状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param Status: 生产状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ApproveUserUin: 审批人（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveUserUin: String

        attr_accessor :CreateTime, :VersionNum, :CreateUserUin, :VersionId, :VersionRemark, :ApproveStatus, :Status, :ApproveUserUin

        def initialize(createtime=nil, versionnum=nil, createuseruin=nil, versionid=nil, versionremark=nil, approvestatus=nil, status=nil, approveuseruin=nil)
          @CreateTime = createtime
          @VersionNum = versionnum
          @CreateUserUin = createuseruin
          @VersionId = versionid
          @VersionRemark = versionremark
          @ApproveStatus = approvestatus
          @Status = status
          @ApproveUserUin = approveuseruin
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @VersionNum = params['VersionNum']
          @CreateUserUin = params['CreateUserUin']
          @VersionId = params['VersionId']
          @VersionRemark = params['VersionRemark']
          @ApproveStatus = params['ApproveStatus']
          @Status = params['Status']
          @ApproveUserUin = params['ApproveUserUin']
        end
      end

      # 任务版本列表信息
      class TriggerTaskVersionDetail < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param VersionNum: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionNum: String
        # @param CreateUserUin: 版本创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param VersionId: 保存版本Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String
        # @param VersionRemark: 版本描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionRemark: String
        # @param ApproveStatus: 审批状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param ApproveTime: 生产状态（只有提交版本有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveTime: String
        # @param ApproveUserUin: 审批人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveUserUin: String
        # @param Task: 版本的任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Task: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTask`

        attr_accessor :CreateTime, :VersionNum, :CreateUserUin, :VersionId, :VersionRemark, :ApproveStatus, :ApproveTime, :ApproveUserUin, :Task

        def initialize(createtime=nil, versionnum=nil, createuseruin=nil, versionid=nil, versionremark=nil, approvestatus=nil, approvetime=nil, approveuseruin=nil, task=nil)
          @CreateTime = createtime
          @VersionNum = versionnum
          @CreateUserUin = createuseruin
          @VersionId = versionid
          @VersionRemark = versionremark
          @ApproveStatus = approvestatus
          @ApproveTime = approvetime
          @ApproveUserUin = approveuseruin
          @Task = task
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @VersionNum = params['VersionNum']
          @CreateUserUin = params['CreateUserUin']
          @VersionId = params['VersionId']
          @VersionRemark = params['VersionRemark']
          @ApproveStatus = params['ApproveStatus']
          @ApproveTime = params['ApproveTime']
          @ApproveUserUin = params['ApproveUserUin']
          unless params['Task'].nil?
            @Task = TriggerTask.new
            @Task.deserialize(params['Task'])
          end
        end
      end

      # 工作流概要信息
      class TriggerWorkflowBrief < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param WorkflowId: 工作ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param TaskCount: 任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCount: Integer
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param WorkflowTriggerConfig: 调度配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTriggerConfig: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowTriggerConfig`
        # @param UserNameInCharge: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNameInCharge: String
        # @param UserUinInCharge: 责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUinInCharge: String
        # @param WorkflowParams: 工作流参数
        # @type WorkflowParams: String

        attr_accessor :ProjectId, :WorkflowId, :WorkflowName, :TaskCount, :FolderId, :FolderName, :WorkflowTriggerConfig, :UserNameInCharge, :UserUinInCharge, :WorkflowParams

        def initialize(projectid=nil, workflowid=nil, workflowname=nil, taskcount=nil, folderid=nil, foldername=nil, workflowtriggerconfig=nil, usernameincharge=nil, useruinincharge=nil, workflowparams=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @TaskCount = taskcount
          @FolderId = folderid
          @FolderName = foldername
          @WorkflowTriggerConfig = workflowtriggerconfig
          @UserNameInCharge = usernameincharge
          @UserUinInCharge = useruinincharge
          @WorkflowParams = workflowparams
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @TaskCount = params['TaskCount']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          unless params['WorkflowTriggerConfig'].nil?
            @WorkflowTriggerConfig = WorkflowTriggerConfig.new
            @WorkflowTriggerConfig.deserialize(params['WorkflowTriggerConfig'])
          end
          @UserNameInCharge = params['UserNameInCharge']
          @UserUinInCharge = params['UserUinInCharge']
          @WorkflowParams = params['WorkflowParams']
        end
      end

      # 查询工作流详细信息
      class TriggerWorkflowDetail < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param OwnerUin: 责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param WorkflowParams: 工作流参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: Array
        # @param TriggerWorkflowSchedulerConfigurations: 统一调度参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerWorkflowSchedulerConfigurations: Array
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param Path: 工作流所属路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param BundleId: BundleId项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: BundleInfo项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GeneralTaskParams: 通用参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneralTaskParams: Array
        # @param SchedulerStatus: Trigger 状态 启动ACTIVE，暂停PAUSED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerStatus: String

        attr_accessor :WorkflowName, :OwnerUin, :CreateUserUin, :WorkflowParams, :TriggerWorkflowSchedulerConfigurations, :WorkflowDesc, :Path, :BundleId, :BundleInfo, :GeneralTaskParams, :SchedulerStatus

        def initialize(workflowname=nil, owneruin=nil, createuseruin=nil, workflowparams=nil, triggerworkflowschedulerconfigurations=nil, workflowdesc=nil, path=nil, bundleid=nil, bundleinfo=nil, generaltaskparams=nil, schedulerstatus=nil)
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @CreateUserUin = createuseruin
          @WorkflowParams = workflowparams
          @TriggerWorkflowSchedulerConfigurations = triggerworkflowschedulerconfigurations
          @WorkflowDesc = workflowdesc
          @Path = path
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GeneralTaskParams = generaltaskparams
          @SchedulerStatus = schedulerstatus
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @CreateUserUin = params['CreateUserUin']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['TriggerWorkflowSchedulerConfigurations'].nil?
            @TriggerWorkflowSchedulerConfigurations = []
            params['TriggerWorkflowSchedulerConfigurations'].each do |i|
              workflowtriggerconfig_tmp = WorkflowTriggerConfig.new
              workflowtriggerconfig_tmp.deserialize(i)
              @TriggerWorkflowSchedulerConfigurations << workflowtriggerconfig_tmp
            end
          end
          @WorkflowDesc = params['WorkflowDesc']
          @Path = params['Path']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              workflowgeneraltaskparam_tmp = WorkflowGeneralTaskParam.new
              workflowgeneraltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << workflowgeneraltaskparam_tmp
            end
          end
          @SchedulerStatus = params['SchedulerStatus']
        end
      end

      # 获取工作流的列表信息item
      class TriggerWorkflowInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param OwnerUin: 负责人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyTime: 最新修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param UpdateUserUin: 最后更新人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :WorkflowId, :WorkflowName, :OwnerUin, :CreateTime, :ModifyTime, :UpdateUserUin, :WorkflowDesc, :CreateUserUin

        def initialize(workflowid=nil, workflowname=nil, owneruin=nil, createtime=nil, modifytime=nil, updateuseruin=nil, workflowdesc=nil, createuseruin=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @CreateTime = createtime
          @ModifyTime = modifytime
          @UpdateUserUin = updateuseruin
          @WorkflowDesc = workflowdesc
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @UpdateUserUin = params['UpdateUserUin']
          @WorkflowDesc = params['WorkflowDesc']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 工作流列表查询
      class TriggerWorkflowResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 工作流信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggerworkflowbrief_tmp = TriggerWorkflowBrief.new
              triggerworkflowbrief_tmp.deserialize(i)
              @Items << triggerworkflowbrief_tmp
            end
          end
        end
      end

      # 工作流运行概要信息
      class TriggerWorkflowRunBrief < TencentCloud::Common::AbstractModel
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param ExecutionId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionId: String
        # @param TriggerId: 触发器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerId: String
        # @param TriggerType: 触发方式:调度触发Scheduler、手动触发ManualTrigger、事件触发Event
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param CreateTime: 工作流触发时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExecutionStartTime: 执行开始时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行结束时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param ExecutionCostTime: 运行时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionCostTime: String
        # @param QueueCostTime: 并发排队花费时间，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCostTime: String
        # @param PendingCostTime: 等待资源花费时间，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingCostTime: String
        # @param ExecutionState: 执行状态，运行失败:FAILED、运行成功:SUCCESS、等待中:PENDING、跳过运行:SKIPED、运行中:RUNNING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionState: String
        # @param ExecuteUserUin: 运行用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteUserUin: String
        # @param ExecuteUserName: 运行用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteUserName: String
        # @param ErrorCodeStr: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeStr: String
        # @param WorkflowParams: 运行参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param WorkflowVersionId: 工作流版本信息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowVersionId: String
        # @param SupportRerun: 是否支持重跑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportRerun: Boolean
        # @param RerunTimes: 重跑次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param SelectedTaskIds: 运行的任务范围,逗号分隔的任务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectedTaskIds: Array
        # @param PendingStartTime: 等待并发开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingStartTime: String
        # @param QueueStartTime: 排队等待开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueStartTime: String
        # @param EndTime: 运行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param FolderId: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param PlannedSchedulingTime: 计划调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlannedSchedulingTime: String
        # @param CycleType: 周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param UserNameInCharge: 责任人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNameInCharge: String
        # @param UserUinInCharge: 责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUinInCharge: String

        attr_accessor :AppId, :ProjectId, :WorkflowName, :WorkflowId, :ExecutionId, :TriggerId, :TriggerType, :CreateTime, :ExecutionStartTime, :ExecutionEndTime, :ExecutionCostTime, :QueueCostTime, :PendingCostTime, :ExecutionState, :ExecuteUserUin, :ExecuteUserName, :ErrorCodeStr, :WorkflowParams, :WorkflowVersionId, :SupportRerun, :RerunTimes, :SelectedTaskIds, :PendingStartTime, :QueueStartTime, :EndTime, :FolderId, :FolderName, :PlannedSchedulingTime, :CycleType, :UserNameInCharge, :UserUinInCharge

        def initialize(appid=nil, projectid=nil, workflowname=nil, workflowid=nil, executionid=nil, triggerid=nil, triggertype=nil, createtime=nil, executionstarttime=nil, executionendtime=nil, executioncosttime=nil, queuecosttime=nil, pendingcosttime=nil, executionstate=nil, executeuseruin=nil, executeusername=nil, errorcodestr=nil, workflowparams=nil, workflowversionid=nil, supportrerun=nil, reruntimes=nil, selectedtaskids=nil, pendingstarttime=nil, queuestarttime=nil, endtime=nil, folderid=nil, foldername=nil, plannedschedulingtime=nil, cycletype=nil, usernameincharge=nil, useruinincharge=nil)
          @AppId = appid
          @ProjectId = projectid
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @ExecutionId = executionid
          @TriggerId = triggerid
          @TriggerType = triggertype
          @CreateTime = createtime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @ExecutionCostTime = executioncosttime
          @QueueCostTime = queuecosttime
          @PendingCostTime = pendingcosttime
          @ExecutionState = executionstate
          @ExecuteUserUin = executeuseruin
          @ExecuteUserName = executeusername
          @ErrorCodeStr = errorcodestr
          @WorkflowParams = workflowparams
          @WorkflowVersionId = workflowversionid
          @SupportRerun = supportrerun
          @RerunTimes = reruntimes
          @SelectedTaskIds = selectedtaskids
          @PendingStartTime = pendingstarttime
          @QueueStartTime = queuestarttime
          @EndTime = endtime
          @FolderId = folderid
          @FolderName = foldername
          @PlannedSchedulingTime = plannedschedulingtime
          @CycleType = cycletype
          @UserNameInCharge = usernameincharge
          @UserUinInCharge = useruinincharge
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @ExecutionId = params['ExecutionId']
          @TriggerId = params['TriggerId']
          @TriggerType = params['TriggerType']
          @CreateTime = params['CreateTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @ExecutionCostTime = params['ExecutionCostTime']
          @QueueCostTime = params['QueueCostTime']
          @PendingCostTime = params['PendingCostTime']
          @ExecutionState = params['ExecutionState']
          @ExecuteUserUin = params['ExecuteUserUin']
          @ExecuteUserName = params['ExecuteUserName']
          @ErrorCodeStr = params['ErrorCodeStr']
          @WorkflowParams = params['WorkflowParams']
          @WorkflowVersionId = params['WorkflowVersionId']
          @SupportRerun = params['SupportRerun']
          @RerunTimes = params['RerunTimes']
          @SelectedTaskIds = params['SelectedTaskIds']
          @PendingStartTime = params['PendingStartTime']
          @QueueStartTime = params['QueueStartTime']
          @EndTime = params['EndTime']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @PlannedSchedulingTime = params['PlannedSchedulingTime']
          @CycleType = params['CycleType']
          @UserNameInCharge = params['UserNameInCharge']
          @UserUinInCharge = params['UserUinInCharge']
        end
      end

      # 查询工作流结果
      class TriggerWorkflowRunResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param PageNumber: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Items: 工作流运行以及相关任务运行信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :TotalPageNumber, :PageNumber, :PageSize, :Items

        def initialize(totalcount=nil, totalpagenumber=nil, pagenumber=nil, pagesize=nil, items=nil)
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              triggerworkflowrunbrief_tmp = TriggerWorkflowRunBrief.new
              triggerworkflowrunbrief_tmp.deserialize(i)
              @Items << triggerworkflowrunbrief_tmp
            end
          end
        end
      end

      # 工作流任务运行详情
      class TriggerWorkflowTaskRunDetailBrief < TencentCloud::Common::AbstractModel
        # @param TriggerWorkflowRun: 工作流运行信息
        # @type TriggerWorkflowRun: :class:`Tencentcloud::Wedata.v20250806.models.TriggerWorkflowRunBrief`
        # @param TriggerTaskRuns: 任务运行信息
        # @type TriggerTaskRuns: Array
        # @param BizStateEnumInfos: 业务状态枚举信息
        # @type BizStateEnumInfos: Array

        attr_accessor :TriggerWorkflowRun, :TriggerTaskRuns, :BizStateEnumInfos

        def initialize(triggerworkflowrun=nil, triggertaskruns=nil, bizstateenuminfos=nil)
          @TriggerWorkflowRun = triggerworkflowrun
          @TriggerTaskRuns = triggertaskruns
          @BizStateEnumInfos = bizstateenuminfos
        end

        def deserialize(params)
          unless params['TriggerWorkflowRun'].nil?
            @TriggerWorkflowRun = TriggerWorkflowRunBrief.new
            @TriggerWorkflowRun.deserialize(params['TriggerWorkflowRun'])
          end
          unless params['TriggerTaskRuns'].nil?
            @TriggerTaskRuns = []
            params['TriggerTaskRuns'].each do |i|
              triggertaskrunbrief_tmp = TriggerTaskRunBrief.new
              triggertaskrunbrief_tmp.deserialize(i)
              @TriggerTaskRuns << triggertaskrunbrief_tmp
            end
          end
          unless params['BizStateEnumInfos'].nil?
            @BizStateEnumInfos = []
            params['BizStateEnumInfos'].each do |i|
              bizstateenuminfobrief_tmp = BizStateEnumInfoBrief.new
              bizstateenuminfobrief_tmp.deserialize(i)
              @BizStateEnumInfos << bizstateenuminfobrief_tmp
            end
          end
        end
      end

      # UpdateCodeFile请求参数结构体
      class UpdateCodeFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CodeFileId: 代码文件ID，参数值来自CreateCodeFile接口的返回
        # @type CodeFileId: String
        # @param CodeFileConfig: 代码文件配置
        # @type CodeFileConfig: :class:`Tencentcloud::Wedata.v20250806.models.CodeFileConfig`
        # @param CodeFileContent: 代码文件内容
        # @type CodeFileContent: String

        attr_accessor :ProjectId, :CodeFileId, :CodeFileConfig, :CodeFileContent

        def initialize(projectid=nil, codefileid=nil, codefileconfig=nil, codefilecontent=nil)
          @ProjectId = projectid
          @CodeFileId = codefileid
          @CodeFileConfig = codefileconfig
          @CodeFileContent = codefilecontent
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CodeFileId = params['CodeFileId']
          unless params['CodeFileConfig'].nil?
            @CodeFileConfig = CodeFileConfig.new
            @CodeFileConfig.deserialize(params['CodeFileConfig'])
          end
          @CodeFileContent = params['CodeFileContent']
        end
      end

      # UpdateCodeFile返回参数结构体
      class UpdateCodeFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeFile`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeFile.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateCodeFolder请求参数结构体
      class UpdateCodeFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID，参数值来自CreateCodeFolder接口的返回
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String

        attr_accessor :ProjectId, :FolderId, :FolderName

        def initialize(projectid=nil, folderid=nil, foldername=nil)
          @ProjectId = projectid
          @FolderId = folderid
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
        end
      end

      # UpdateCodeFolder返回参数结构体
      class UpdateCodeFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.CodeStudioFolderActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CodeStudioFolderActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateDataSource请求参数结构体
      class UpdateDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 数据源id
        # @type Id: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProdConProperties: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同

        # > deployType:
        # CONNSTR_PUBLICDB(公网实例)
        # CONNSTR_CVMDB(自建实例)
        # INSTANCE(云实例)

        # ```
        # mysql: 自建实例
        # {
        #     "deployType": "CONNSTR_CVMDB",
        #     "url": "jdbc:mysql://1.1.1.1:1111/database",
        #     "username": "root",
        #     "password": "root",
        #     "region": "ap-shanghai",
        #     "vpcId": "vpc-kprq42yo",
        #     "type": "MYSQL"
        # }
        # mysql: 云实例
        # {
        #     "instanceid": "cdb-12uxdo5e",
        #     "db": "db",
        #     "region": "ap-shanghai",
        #     "username": "msyql",
        #     "password": "mysql",
        #     "deployType": "INSTANCE",
        #     "type": "TENCENT_MYSQL"
        # }
        # sql_server:
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "url": "jdbc:sqlserver://1.1.1.1:223;DatabaseName=database",
        #     "username": "user_1",
        #     "password": "pass_2",
        #     "type": "SQLSERVER"
        # }
        # redis:
        #     redisType:
        #     -NO_ACCOUT(免账号)
        #     -SELF_ACCOUNT(自定义账号)
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "username":""
        #     "password": "pass",
        #     "ip": "1.1.1.1",
        #     "port": "6379",
        #     "redisType": "NO_ACCOUT",
        #     "type": "REDIS"
        # }
        # oracle:
        # {
        #     "deployType": "CONNSTR_CVMDB",
        #     "url": "jdbc:oracle:thin:@1.1.1.1:1521:prod",
        #     "username": "oracle",
        #     "password": "pass",
        #     "region": "ap-shanghai",
        #     "vpcId": "vpc-kprq42yo",
        #     "type": "ORACLE"
        # }
        # mongodb:
        #     advanceParams(自定义参数，会拼接至url后)
        # {
        #     "advanceParams": [
        #         {
        #             "key": "authSource",
        #             "value": "auth"
        #         }
        #     ],
        #     "db": "admin",
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "username": "user",
        #     "password": "pass",
        #     "type": "MONGODB",
        #     "host": "1.1.1.1:9200"
        # }
        # postgresql:
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "url": "jdbc:postgresql://1.1.1.1:1921/database",
        #     "username": "user",
        #     "password": "pass",
        #     "type": "POSTGRE"
        # }
        # kafka:
        #     authType:
        #         - sasl
        #         - jaas
        #         - sasl_plaintext
        #         - sasl_ssl
        #         - GSSAPI
        #     ssl:
        #         -PLAIN
        #         -GSSAPI
        # {
        #     "deployType": "CONNSTR_PUBLICDB",
        #     "host": "1.1.1.1:9092",
        #     "ssl": "GSSAPI",
        #     "authType": "sasl",
        #     "type": "KAFKA",
        #     "principal": "aaaa",
        #     "serviceName": "kafka"
        # }

        # cos:
        # {
        #     "region": "ap-shanghai",
        #     "deployType": "INSTANCE",
        #     "secretId": "aaaaa",
        #     "secretKey": "sssssss",
        #     "bucket": "aaa",
        #     "type": "COS"
        # }

        # ```
        # @type ProdConProperties: String
        # @param DevConProperties: 若项目为标准模式，则此字段必填
        # @type DevConProperties: String
        # @param ProdFileUpload: 生产环境数据源文件上传
        # @type ProdFileUpload: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceFileUpload`
        # @param DevFileUpload: 开发环境数据源文件上传
        # @type DevFileUpload: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceFileUpload`
        # @param DisplayName: 数据源展示名，为了可视化查看
        # @type DisplayName: String
        # @param Description: 数据源描述信息
        # @type Description: String

        attr_accessor :Id, :ProjectId, :ProdConProperties, :DevConProperties, :ProdFileUpload, :DevFileUpload, :DisplayName, :Description

        def initialize(id=nil, projectid=nil, prodconproperties=nil, devconproperties=nil, prodfileupload=nil, devfileupload=nil, displayname=nil, description=nil)
          @Id = id
          @ProjectId = projectid
          @ProdConProperties = prodconproperties
          @DevConProperties = devconproperties
          @ProdFileUpload = prodfileupload
          @DevFileUpload = devfileupload
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @ProdConProperties = params['ProdConProperties']
          @DevConProperties = params['DevConProperties']
          unless params['ProdFileUpload'].nil?
            @ProdFileUpload = DataSourceFileUpload.new
            @ProdFileUpload.deserialize(params['ProdFileUpload'])
          end
          unless params['DevFileUpload'].nil?
            @DevFileUpload = DataSourceFileUpload.new
            @DevFileUpload.deserialize(params['DevFileUpload'])
          end
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # UpdateDataSource返回参数结构体
      class UpdateDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作是否成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.DataSourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新文件夹结果
      class UpdateFolderResult < TencentCloud::Common::AbstractModel
        # @param Status: 更新状态,true表示更新成功，false表示更新失败
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateOpsAlarmRule请求参数结构体
      class UpdateOpsAlarmRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AlarmRuleId: 告警规则唯一id，通过接口GetAlarmRule/ListAlarmRule获取
        # @type AlarmRuleId: String
        # @param AlarmRuleName: 告警规则新的规则名称
        # @type AlarmRuleName: String
        # @param MonitorObjectType: 监控对象类型,
        # 任务维度监控： 可按照任务/工作流/项目来配置：1.任务、2.工作流、3.项目（默认为1.任务）
        # 项目维度监控： 项目整体任务波动告警， 7：项目波动监控告警
        # @type MonitorObjectType: Integer
        # @param MonitorObjectIds: 根据MonitorType 的设置传入不同的业务id，如下1（任务）： MonitorObjectIds为任务id列表2（工作流）： MonitorObjectIds 为工作流id列表(工作流id可从接口ListWorkflows获取)3（项目）： MonitorObjectIds为项目id列表
        # @type MonitorObjectIds: Array
        # @param AlarmTypes: 告警规则监控类型 failure：失败告警 ；overtime：超时告警 success：成功告警; backTrackingOrRerunSuccess: 补录重跑成功告警 backTrackingOrRerunFailure：补录重跑失败告警； 项目波动告警 projectFailureInstanceUpwardFluctuationAlarm： 当天失败实例数向上波动率超过阀值告警； projectFailureInstanceUpwardVolatilityAlarm：当天失败实例数向上波动量超过阀值告警 projectSuccessInstanceDownwardFluctuationAlarm：当天成功实例数向下波动率超过阀值告警； projectSuccessInstanceDownwardVolatilityAlarm： 当天成功实例数向下波动量超过阀值告警 projectFailureInstanceCountAlarm: 当天失败实例数超过阀值告警 projectFailureInstanceProportionAlarm： 当天失败实例数占比超过阀值告警 离线集成任务对账告警： reconciliationFailure： 离线对账任务失败告警 reconciliationOvertime： 离线对账任务运行超时告警 reconciliationMismatch： 数据对账任务不一致条数超过阀值告警
        # @type AlarmTypes: Array
        # @param AlarmRuleDetail: 告警规则配置信息 成功告警无需配置；失败告警可以配置首次失败告警或者所有重试失败告警；超时配置需要配置超时类型及超时阀值；项目波动告警需要配置波动率及防抖周期配置
        # @type AlarmRuleDetail: :class:`Tencentcloud::Wedata.v20250806.models.AlarmRuleDetail`
        # @param Status: 告警规则的启用状态0--禁用1--启用
        # @type Status: Integer
        # @param AlarmLevel: 告警级别 1.普通、2.重要、3.紧急
        # @type AlarmLevel: Integer
        # @param AlarmGroups: 告警接收人配置信息
        # @type AlarmGroups: Array
        # @param Description: 告警描述信息
        # @type Description: String

        attr_accessor :ProjectId, :AlarmRuleId, :AlarmRuleName, :MonitorObjectType, :MonitorObjectIds, :AlarmTypes, :AlarmRuleDetail, :Status, :AlarmLevel, :AlarmGroups, :Description

        def initialize(projectid=nil, alarmruleid=nil, alarmrulename=nil, monitorobjecttype=nil, monitorobjectids=nil, alarmtypes=nil, alarmruledetail=nil, status=nil, alarmlevel=nil, alarmgroups=nil, description=nil)
          @ProjectId = projectid
          @AlarmRuleId = alarmruleid
          @AlarmRuleName = alarmrulename
          @MonitorObjectType = monitorobjecttype
          @MonitorObjectIds = monitorobjectids
          @AlarmTypes = alarmtypes
          @AlarmRuleDetail = alarmruledetail
          @Status = status
          @AlarmLevel = alarmlevel
          @AlarmGroups = alarmgroups
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AlarmRuleId = params['AlarmRuleId']
          @AlarmRuleName = params['AlarmRuleName']
          @MonitorObjectType = params['MonitorObjectType']
          @MonitorObjectIds = params['MonitorObjectIds']
          @AlarmTypes = params['AlarmTypes']
          unless params['AlarmRuleDetail'].nil?
            @AlarmRuleDetail = AlarmRuleDetail.new
            @AlarmRuleDetail.deserialize(params['AlarmRuleDetail'])
          end
          @Status = params['Status']
          @AlarmLevel = params['AlarmLevel']
          unless params['AlarmGroups'].nil?
            @AlarmGroups = []
            params['AlarmGroups'].each do |i|
              alarmgroup_tmp = AlarmGroup.new
              alarmgroup_tmp.deserialize(i)
              @AlarmGroups << alarmgroup_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # UpdateOpsAlarmRule返回参数结构体
      class UpdateOpsAlarmRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新结果是否成功
        # true: 更新成功 false：更新失败/未更新
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ModifyAlarmRuleResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifyAlarmRuleResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateOpsTasksOwner请求参数结构体
      class UpdateOpsTasksOwnerRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目Id
        # @type ProjectId: String
        # @param TaskIds: 任务Id列表
        # @type TaskIds: Array
        # @param OwnerUin: 任务负责人Id
        # @type OwnerUin: String

        attr_accessor :ProjectId, :TaskIds, :OwnerUin

        def initialize(projectid=nil, taskids=nil, owneruin=nil)
          @ProjectId = projectid
          @TaskIds = taskids
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskIds = params['TaskIds']
          @OwnerUin = params['OwnerUin']
        end
      end

      # UpdateOpsTasksOwner返回参数结构体
      class UpdateOpsTasksOwnerResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTasksOwner`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTasksOwner.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateOpsTriggerTasksOwner请求参数结构体
      class UpdateOpsTriggerTasksOwnerRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param OwnerIds: 负责人UIN
        # @type OwnerIds: Array
        # @param TaskIds: 将要修改的任务ID集合
        # @type TaskIds: Array

        attr_accessor :ProjectId, :OwnerIds, :TaskIds

        def initialize(projectid=nil, ownerids=nil, taskids=nil)
          @ProjectId = projectid
          @OwnerIds = ownerids
          @TaskIds = taskids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @OwnerIds = params['OwnerIds']
          @TaskIds = params['TaskIds']
        end
      end

      # UpdateOpsTriggerTasksOwner返回参数结构体
      class UpdateOpsTriggerTasksOwnerResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批量操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.BatchOperationOpsDto`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperationOpsDto.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateProject请求参数结构体
      class UpdateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标修改的项目ID
        # @type ProjectId: String
        # @param DisplayName: 项目显示名称，可以为中文名,需要租户范围内唯一
        # @type DisplayName: String
        # @param Description: 备注
        # @type Description: String
        # @param ProjectOwnerUin: 项目负责人id
        # @type ProjectOwnerUin: String

        attr_accessor :ProjectId, :DisplayName, :Description, :ProjectOwnerUin

        def initialize(projectid=nil, displayname=nil, description=nil, projectowneruin=nil)
          @ProjectId = projectid
          @DisplayName = displayname
          @Description = description
          @ProjectOwnerUin = projectowneruin
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @ProjectOwnerUin = params['ProjectOwnerUin']
        end
      end

      # UpdateProject返回参数结构体
      class UpdateProjectResponse < TencentCloud::Common::AbstractModel
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

      # UpdateResourceFile请求参数结构体
      class UpdateResourceFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ResourceId: 资源文件ID,可通过ListResourceFiles接口获取
        # @type ResourceId: String
        # @param ResourceFile: - 上传文件及手填两种方式只能选择其一，如果两者均提供，取值顺序为文件>手填值
        # -  手填值必须是存在的cos路径, parentFolderPath为父文件夹路径, name为文件名, 手填值取值示例:
        #      /datastudio/resource/projectId/parentFolderPath/name
        # @type ResourceFile: String
        # @param ResourceName: 资源名称, 尽可能和文件名保持一致
        # @type ResourceName: String
        # @param BundleId: bundle客户端ID
        # @type BundleId: String
        # @param BundleInfo: bundle客户端名称
        # @type BundleInfo: String

        attr_accessor :ProjectId, :ResourceId, :ResourceFile, :ResourceName, :BundleId, :BundleInfo

        def initialize(projectid=nil, resourceid=nil, resourcefile=nil, resourcename=nil, bundleid=nil, bundleinfo=nil)
          @ProjectId = projectid
          @ResourceId = resourceid
          @ResourceFile = resourcefile
          @ResourceName = resourcename
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ResourceId = params['ResourceId']
          @ResourceFile = params['ResourceFile']
          @ResourceName = params['ResourceName']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # UpdateResourceFile返回参数结构体
      class UpdateResourceFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新状态
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateResourceFileResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateResourceFileResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新资源文件结果
      class UpdateResourceFileResult < TencentCloud::Common::AbstractModel
        # @param Status: true
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateResourceFolder请求参数结构体
      class UpdateResourceFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID, 可通过ListResourceFolders接口获取
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String

        attr_accessor :ProjectId, :FolderId, :FolderName

        def initialize(projectid=nil, folderid=nil, foldername=nil)
          @ProjectId = projectid
          @FolderId = folderid
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
        end
      end

      # UpdateResourceFolder返回参数结构体
      class UpdateResourceFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新文件夹结果，如果更新失败则报错。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateResourceGroup请求参数结构体
      class UpdateResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资源组id
        # @type Id: String
        # @param Type: **变更配置(变配、续费、修改资源包数量 不能同时操作), 变配无法修改资源组类型**

        # 实时集成资源组
        # - i32c(实时数据同步-16C64G)

        # 离线集成资源组
        # - integrated(离线数据同步-8C16G)
        # - i16(离线数据同步-8C32G)

        # 调度资源组
        # - s_test(测试规格)
        # - s_small(基础规格)
        # - s_medium(普及规格)
        # - s_large(专业规格)

        # 数据服务资源组
        # - ds_t(测试规格)
        # - ds_s(基础规格)
        # - ds_m(普及规格)
        # - ds_l(专业规格)
        # @type Type: String
        # @param PurchasePeriod: 续费时长，单位月(变配、续费、修改资源包数量 不能同时操作)
        # @type PurchasePeriod: Integer
        # @param Number: 增加/减少资源包的数量(变配、续费、修改资源包数量 不能同时操作)
        # @type Number: :class:`Tencentcloud::Wedata.v20250806.models.ResourceNumber`
        # @param AutoRenewEnabled: 是否自动续费，续费参数PurchasePeriod不为空时可以生效
        # @type AutoRenewEnabled: Boolean

        attr_accessor :Id, :Type, :PurchasePeriod, :Number, :AutoRenewEnabled

        def initialize(id=nil, type=nil, purchaseperiod=nil, number=nil, autorenewenabled=nil)
          @Id = id
          @Type = type
          @PurchasePeriod = purchaseperiod
          @Number = number
          @AutoRenewEnabled = autorenewenabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @PurchasePeriod = params['PurchasePeriod']
          unless params['Number'].nil?
            @Number = ResourceNumber.new
            @Number.deserialize(params['Number'])
          end
          @AutoRenewEnabled = params['AutoRenewEnabled']
        end
      end

      # UpdateResourceGroup返回参数结构体
      class UpdateResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否修改成功
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.ResourceStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResourceStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateSQLFolder请求参数结构体
      class UpdateSQLFolderRequest < TencentCloud::Common::AbstractModel
        # @param FolderId: 文件夹Id
        # @type FolderId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param AccessScope: 权限范围：SHARED, PRIVATE
        # @type AccessScope: String

        attr_accessor :FolderId, :FolderName, :ProjectId, :AccessScope

        def initialize(folderid=nil, foldername=nil, projectid=nil, accessscope=nil)
          @FolderId = folderid
          @FolderName = foldername
          @ProjectId = projectid
          @AccessScope = accessscope
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @ProjectId = params['ProjectId']
          @AccessScope = params['AccessScope']
        end
      end

      # UpdateSQLFolder返回参数结构体
      class UpdateSQLFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功true，失败false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLContentActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLContentActionResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateSQLScript请求参数结构体
      class UpdateSQLScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptId: 探索脚本Id
        # @type ScriptId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ScriptConfig: 数据探索脚本配置
        # @type ScriptConfig: :class:`Tencentcloud::Wedata.v20250806.models.SQLScriptConfig`
        # @param ScriptContent: 脚本内容, 需要用Base64编码
        # @type ScriptContent: String

        attr_accessor :ScriptId, :ProjectId, :ScriptConfig, :ScriptContent

        def initialize(scriptid=nil, projectid=nil, scriptconfig=nil, scriptcontent=nil)
          @ScriptId = scriptid
          @ProjectId = projectid
          @ScriptConfig = scriptconfig
          @ScriptContent = scriptcontent
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ProjectId = params['ProjectId']
          unless params['ScriptConfig'].nil?
            @ScriptConfig = SQLScriptConfig.new
            @ScriptConfig.deserialize(params['ScriptConfig'])
          end
          @ScriptContent = params['ScriptContent']
        end
      end

      # UpdateSQLScript返回参数结构体
      class UpdateSQLScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.SQLScript`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SQLScript.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新任务基本属性信息
      class UpdateTaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param OwnerUin: 任务负责人ID
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskFolderPath: 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # @type TaskFolderPath: String

        attr_accessor :TaskName, :OwnerUin, :TaskDescription, :TaskFolderPath

        def initialize(taskname=nil, owneruin=nil, taskdescription=nil, taskfolderpath=nil)
          @TaskName = taskname
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 更新任务基本属性信息
      class UpdateTaskBaseAttributePart < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param OwnerUin: 任务负责人ID
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskFolderPath: 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # @type TaskFolderPath: String

        attr_accessor :TaskName, :OwnerUin, :TaskDescription, :TaskFolderPath

        def initialize(taskname=nil, owneruin=nil, taskdescription=nil, taskfolderpath=nil)
          @TaskName = taskname
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 更新任务对象入参
      class UpdateTaskBrief < TencentCloud::Common::AbstractModel
        # @param TaskBaseAttribute: 任务基本属性
        # @type TaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskBaseAttribute`
        # @param TaskConfiguration: 任务配置
        # @type TaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskConfiguration`
        # @param TaskSchedulerConfiguration: 任务调度配置
        # @type TaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskSchedulerConfiguration`

        attr_accessor :TaskBaseAttribute, :TaskConfiguration, :TaskSchedulerConfiguration

        def initialize(taskbaseattribute=nil, taskconfiguration=nil, taskschedulerconfiguration=nil)
          @TaskBaseAttribute = taskbaseattribute
          @TaskConfiguration = taskconfiguration
          @TaskSchedulerConfiguration = taskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TaskBaseAttribute'].nil?
            @TaskBaseAttribute = UpdateTaskBaseAttribute.new
            @TaskBaseAttribute.deserialize(params['TaskBaseAttribute'])
          end
          unless params['TaskConfiguration'].nil?
            @TaskConfiguration = TaskConfiguration.new
            @TaskConfiguration.deserialize(params['TaskConfiguration'])
          end
          unless params['TaskSchedulerConfiguration'].nil?
            @TaskSchedulerConfiguration = TaskSchedulerConfiguration.new
            @TaskSchedulerConfiguration.deserialize(params['TaskSchedulerConfiguration'])
          end
        end
      end

      # UpdateTaskFolder请求参数结构体
      class UpdateTaskFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param TaskFolderId: 文件夹ID，可通过ListTaskFolders接口获取
        # @type TaskFolderId: String
        # @param TaskFolderName: 更新后的任务文件夹名称
        # @type TaskFolderName: String

        attr_accessor :ProjectId, :WorkflowId, :TaskFolderId, :TaskFolderName

        def initialize(projectid=nil, workflowid=nil, taskfolderid=nil, taskfoldername=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @TaskFolderId = taskfolderid
          @TaskFolderName = taskfoldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @TaskFolderId = params['TaskFolderId']
          @TaskFolderName = params['TaskFolderName']
        end
      end

      # UpdateTaskFolder返回参数结构体
      class UpdateTaskFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新文件夹结果，如果更新失败则报错。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTaskFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新文件夹结果
      class UpdateTaskFolderResult < TencentCloud::Common::AbstractModel
        # @param Status: 更新状态,true表示更新成功，false表示更新失败
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 更新任务对象入参
      class UpdateTaskPart < TencentCloud::Common::AbstractModel
        # @param TaskBaseAttribute: 任务基本属性
        # @type TaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskBaseAttributePart`
        # @param TaskConfiguration: 任务配置
        # @type TaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskConfiguration`
        # @param TaskSchedulerConfiguration: 任务调度配置
        # @type TaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TaskSchedulerConfiguration`

        attr_accessor :TaskBaseAttribute, :TaskConfiguration, :TaskSchedulerConfiguration

        def initialize(taskbaseattribute=nil, taskconfiguration=nil, taskschedulerconfiguration=nil)
          @TaskBaseAttribute = taskbaseattribute
          @TaskConfiguration = taskconfiguration
          @TaskSchedulerConfiguration = taskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TaskBaseAttribute'].nil?
            @TaskBaseAttribute = UpdateTaskBaseAttributePart.new
            @TaskBaseAttribute.deserialize(params['TaskBaseAttribute'])
          end
          unless params['TaskConfiguration'].nil?
            @TaskConfiguration = TaskConfiguration.new
            @TaskConfiguration.deserialize(params['TaskConfiguration'])
          end
          unless params['TaskSchedulerConfiguration'].nil?
            @TaskSchedulerConfiguration = TaskSchedulerConfiguration.new
            @TaskSchedulerConfiguration.deserialize(params['TaskSchedulerConfiguration'])
          end
        end
      end

      # UpdateTaskPartially请求参数结构体
      class UpdateTaskPartiallyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param NewSetting: 任务基本属性
        # @type NewSetting: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskPart`
        # @param FieldToRemoveList: 删除字段内容，采用属性路径的形式标识，删除的值以":"分割，多个值以","分割 // 删除调度参数中 ParamKey 为 aa,bb 的属性 "TaskConfiguration/TaskSchedulingParameterList:aa,bb" // 删除上游依赖中 TaskId 为 2509162129381111,2509162129381112 的上游依赖 "TaskSchedulerConfiguration/UpstreamDependencyConfigList:2509162129381111,2509162129381112" // 删除下游循环依赖中 TaskId 为 2509162129382222,2509162129382223 的下游依赖 "TaskSchedulerConfiguration/DownStreamDependencyConfigList:2509162129382222,2509162129382223" // 删除事件中 EventName 为 event_250916_213234,event_250916_213235 的事件 "TaskSchedulerConfiguration/EventListenerList:event_250916_213234,event_250916_213235" // 删除传递参数输出中 ParamKey 为 pp_out,pp_1 的参数 "TaskSchedulerConfiguration/ParamTaskOutList:pp_out,pp_1" // 删除传递参数应用中 ParamKey 为 pp_in,pp_1 的参数 "TaskSchedulerConfiguration/ParamTaskInList:pp_in,pp_1" // 删除产品登记中 TablePhysicalId 为6578laxif4d1的产出登记 "TaskSchedulerConfiguration/TaskOutputRegistryList:6578laxif4d1"
        # @type FieldToRemoveList: Array

        attr_accessor :ProjectId, :TaskId, :NewSetting, :FieldToRemoveList

        def initialize(projectid=nil, taskid=nil, newsetting=nil, fieldtoremovelist=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @NewSetting = newsetting
          @FieldToRemoveList = fieldtoremovelist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          unless params['NewSetting'].nil?
            @NewSetting = UpdateTaskPart.new
            @NewSetting.deserialize(params['NewSetting'])
          end
          @FieldToRemoveList = params['FieldToRemoveList']
        end
      end

      # UpdateTaskPartially返回参数结构体
      class UpdateTaskPartiallyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateTask请求参数结构体
      class UpdateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Task: 任务基本属性
        # @type Task: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskBrief`

        attr_accessor :ProjectId, :TaskId, :Task

        def initialize(projectid=nil, taskid=nil, task=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @Task = task
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          unless params['Task'].nil?
            @Task = UpdateTaskBrief.new
            @Task.deserialize(params['Task'])
          end
        end
      end

      # UpdateTask返回参数结构体
      class UpdateTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新任务返回体
      class UpdateTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 处理结果，成功返回 true，不成功返回 false
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

      # 批量修改任务负责人结果
      class UpdateTasksOwner < TencentCloud::Common::AbstractModel
        # @param Status: 修改任务责任人结果
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 更新任务基本属性信息
      class UpdateTriggerTaskBaseAttribute < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param OwnerUin: 任务负责人ID
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String
        # @param TaskFolderPath: 注意：
        # - 路径上不要填写任务节点类型；例如，在 一个名为 wf01 的工作流，“通用” 分类下，现在想要在这个分类下的 tf_01 文件夹下，新建一个 shell 任务；则 填写 /tf_01 即可；
        # - 如果 tf_01 文件夹不存在，则需要先创建这个文件夹（使用 CreateTaskFolder 接口）才能操作成功；
        # @type TaskFolderPath: String

        attr_accessor :TaskName, :OwnerUin, :TaskDescription, :TaskFolderPath

        def initialize(taskname=nil, owneruin=nil, taskdescription=nil, taskfolderpath=nil)
          @TaskName = taskname
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
          @TaskFolderPath = taskfolderpath
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
          @TaskFolderPath = params['TaskFolderPath']
        end
      end

      # 更新任务基本属性信息
      class UpdateTriggerTaskBaseAttributePart < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param OwnerUin: 任务负责人ID
        # @type OwnerUin: String
        # @param TaskDescription: 任务描述
        # @type TaskDescription: String

        attr_accessor :TaskName, :OwnerUin, :TaskDescription

        def initialize(taskname=nil, owneruin=nil, taskdescription=nil)
          @TaskName = taskname
          @OwnerUin = owneruin
          @TaskDescription = taskdescription
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @OwnerUin = params['OwnerUin']
          @TaskDescription = params['TaskDescription']
        end
      end

      # 更新任务对象入参
      class UpdateTriggerTaskBrief < TencentCloud::Common::AbstractModel
        # @param TriggerTaskBaseAttribute: 任务基本属性
        # @type TriggerTaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerTaskBaseAttribute`
        # @param TriggerTaskConfiguration: 任务配置
        # @type TriggerTaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskConfiguration`
        # @param TriggerTaskSchedulerConfiguration: 任务调度配置
        # @type TriggerTaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskSchedulerConfiguration`

        attr_accessor :TriggerTaskBaseAttribute, :TriggerTaskConfiguration, :TriggerTaskSchedulerConfiguration

        def initialize(triggertaskbaseattribute=nil, triggertaskconfiguration=nil, triggertaskschedulerconfiguration=nil)
          @TriggerTaskBaseAttribute = triggertaskbaseattribute
          @TriggerTaskConfiguration = triggertaskconfiguration
          @TriggerTaskSchedulerConfiguration = triggertaskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TriggerTaskBaseAttribute'].nil?
            @TriggerTaskBaseAttribute = UpdateTriggerTaskBaseAttribute.new
            @TriggerTaskBaseAttribute.deserialize(params['TriggerTaskBaseAttribute'])
          end
          unless params['TriggerTaskConfiguration'].nil?
            @TriggerTaskConfiguration = TriggerTaskConfiguration.new
            @TriggerTaskConfiguration.deserialize(params['TriggerTaskConfiguration'])
          end
          unless params['TriggerTaskSchedulerConfiguration'].nil?
            @TriggerTaskSchedulerConfiguration = TriggerTaskSchedulerConfiguration.new
            @TriggerTaskSchedulerConfiguration.deserialize(params['TriggerTaskSchedulerConfiguration'])
          end
        end
      end

      # 更新任务对象入参
      class UpdateTriggerTaskPart < TencentCloud::Common::AbstractModel
        # @param TriggerTaskBaseAttribute: 任务基本属性
        # @type TriggerTaskBaseAttribute: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerTaskBaseAttributePart`
        # @param TriggerTaskConfiguration: 任务配置
        # @type TriggerTaskConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskConfiguration`
        # @param TriggerTaskSchedulerConfiguration: 任务调度配置
        # @type TriggerTaskSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.TriggerTaskSchedulerConfiguration`

        attr_accessor :TriggerTaskBaseAttribute, :TriggerTaskConfiguration, :TriggerTaskSchedulerConfiguration

        def initialize(triggertaskbaseattribute=nil, triggertaskconfiguration=nil, triggertaskschedulerconfiguration=nil)
          @TriggerTaskBaseAttribute = triggertaskbaseattribute
          @TriggerTaskConfiguration = triggertaskconfiguration
          @TriggerTaskSchedulerConfiguration = triggertaskschedulerconfiguration
        end

        def deserialize(params)
          unless params['TriggerTaskBaseAttribute'].nil?
            @TriggerTaskBaseAttribute = UpdateTriggerTaskBaseAttributePart.new
            @TriggerTaskBaseAttribute.deserialize(params['TriggerTaskBaseAttribute'])
          end
          unless params['TriggerTaskConfiguration'].nil?
            @TriggerTaskConfiguration = TriggerTaskConfiguration.new
            @TriggerTaskConfiguration.deserialize(params['TriggerTaskConfiguration'])
          end
          unless params['TriggerTaskSchedulerConfiguration'].nil?
            @TriggerTaskSchedulerConfiguration = TriggerTaskSchedulerConfiguration.new
            @TriggerTaskSchedulerConfiguration.deserialize(params['TriggerTaskSchedulerConfiguration'])
          end
        end
      end

      # UpdateTriggerTaskPartially请求参数结构体
      class UpdateTriggerTaskPartiallyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param NewSetting: 任务基本属性
        # @type NewSetting: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerTaskPart`
        # @param FieldToRemoveList: 删除字段内容，采用属性路径的形式标识，删除的值以":"分割，多个值以","分割 // 删除调度参数中 ParamKey 为 aa,bb 的属性 "TaskConfiguration/TaskSchedulingParameterList:aa,bb" // 删除上游依赖中 TaskId 为 2509162129381111,2509162129381112 的上游依赖 "TaskSchedulerConfiguration/UpstreamDependencyConfigList:2509162129381111,2509162129381112" // 删除下游循环依赖中 TaskId 为 2509162129382222,2509162129382223 的下游依赖 "TaskSchedulerConfiguration/DownStreamDependencyConfigList:2509162129382222,2509162129382223" // 删除事件中 EventName 为 event_250916_213234,event_250916_213235 的事件 "TaskSchedulerConfiguration/EventListenerList:event_250916_213234,event_250916_213235" // 删除传递参数输出中 ParamKey 为 pp_out,pp_1 的参数 "TaskSchedulerConfiguration/ParamTaskOutList:pp_out,pp_1" // 删除传递参数应用中 ParamKey 为 pp_in,pp_1 的参数 "TaskSchedulerConfiguration/ParamTaskInList:pp_in,pp_1" // 删除产品登记中 TablePhysicalId 为6578laxif4d1的产出登记 "TaskSchedulerConfiguration/TaskOutputRegistryList:6578laxif4d1"
        # @type FieldToRemoveList: Array

        attr_accessor :ProjectId, :TaskId, :NewSetting, :FieldToRemoveList

        def initialize(projectid=nil, taskid=nil, newsetting=nil, fieldtoremovelist=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @NewSetting = newsetting
          @FieldToRemoveList = fieldtoremovelist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          unless params['NewSetting'].nil?
            @NewSetting = UpdateTriggerTaskPart.new
            @NewSetting.deserialize(params['NewSetting'])
          end
          @FieldToRemoveList = params['FieldToRemoveList']
        end
      end

      # UpdateTriggerTaskPartially返回参数结构体
      class UpdateTriggerTaskPartiallyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateTriggerTask请求参数结构体
      class UpdateTriggerTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Task: 任务基本属性
        # @type Task: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerTaskBrief`

        attr_accessor :ProjectId, :TaskId, :Task

        def initialize(projectid=nil, taskid=nil, task=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @Task = task
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          unless params['Task'].nil?
            @Task = UpdateTriggerTaskBrief.new
            @Task.deserialize(params['Task'])
          end
        end
      end

      # UpdateTriggerTask返回参数结构体
      class UpdateTriggerTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流详细信息
      class UpdateTriggerWorkflowPartially < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param OwnerUin: 责任人ID
        # @type OwnerUin: String
        # @param WorkflowParams: 工作流参数数组
        # @type WorkflowParams: Array
        # @param TriggerWorkflowSchedulerConfigurations: 统一调度参数
        # @type TriggerWorkflowSchedulerConfigurations: Array
        # @param WorkflowDesc: 工作流描述
        # @type WorkflowDesc: String
        # @param BundleId: BundleId项
        # @type BundleId: String
        # @param BundleInfo: BundleInfo项
        # @type BundleInfo: String
        # @param GeneralTaskParams: 通用参数
        # @type GeneralTaskParams: Array

        attr_accessor :WorkflowName, :OwnerUin, :WorkflowParams, :TriggerWorkflowSchedulerConfigurations, :WorkflowDesc, :BundleId, :BundleInfo, :GeneralTaskParams

        def initialize(workflowname=nil, owneruin=nil, workflowparams=nil, triggerworkflowschedulerconfigurations=nil, workflowdesc=nil, bundleid=nil, bundleinfo=nil, generaltaskparams=nil)
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @WorkflowParams = workflowparams
          @TriggerWorkflowSchedulerConfigurations = triggerworkflowschedulerconfigurations
          @WorkflowDesc = workflowdesc
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GeneralTaskParams = generaltaskparams
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['TriggerWorkflowSchedulerConfigurations'].nil?
            @TriggerWorkflowSchedulerConfigurations = []
            params['TriggerWorkflowSchedulerConfigurations'].each do |i|
              workflowtriggerconfig_tmp = WorkflowTriggerConfig.new
              workflowtriggerconfig_tmp.deserialize(i)
              @TriggerWorkflowSchedulerConfigurations << workflowtriggerconfig_tmp
            end
          end
          @WorkflowDesc = params['WorkflowDesc']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              workflowgeneraltaskparam_tmp = WorkflowGeneralTaskParam.new
              workflowgeneraltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << workflowgeneraltaskparam_tmp
            end
          end
        end
      end

      # UpdateTriggerWorkflowPartially请求参数结构体
      class UpdateTriggerWorkflowPartiallyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param NewSetting: 责任人ID
        # @type NewSetting: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerWorkflowPartially`
        # @param FieldToRemoveList: 删除字段内容，采用属性路径的形式标识，删除的值以":"分割，多个值以","分割
        #  // 删除调度参数中 ParamKey 为 aa,bb 的属性 "WorkflowParams:aa,bb"
        #  // 删除配置的 TriggerId 为 da46d950-d5ca-4cfb-a5a9-f3c2eeea1bf0 的调度配置"TriggerWorkflowSchedulerConfigurations :da46d950-d5ca-4cfb-a5a9-f3c2eeea1bf0"
        # // 删除spark sql通用参数 "GeneralTaskParams: SPARK_SQL"
        # @type FieldToRemoveList: Array

        attr_accessor :ProjectId, :WorkflowId, :NewSetting, :FieldToRemoveList

        def initialize(projectid=nil, workflowid=nil, newsetting=nil, fieldtoremovelist=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @NewSetting = newsetting
          @FieldToRemoveList = fieldtoremovelist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          unless params['NewSetting'].nil?
            @NewSetting = UpdateTriggerWorkflowPartially.new
            @NewSetting.deserialize(params['NewSetting'])
          end
          @FieldToRemoveList = params['FieldToRemoveList']
        end
      end

      # UpdateTriggerWorkflowPartially返回参数结构体
      class UpdateTriggerWorkflowPartiallyResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTriggerWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateTriggerWorkflow请求参数结构体
      class UpdateTriggerWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param OwnerUin: 责任人ID
        # @type OwnerUin: String
        # @param WorkflowDesc: 备注
        # @type WorkflowDesc: String
        # @param WorkflowParams: 工作流参数列表
        # @type WorkflowParams: Array
        # @param TriggerWorkflowSchedulerConfigurations: 统一调度参数
        # @type TriggerWorkflowSchedulerConfigurations: Array
        # @param BundleId: BundleId项
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String
        # @param GeneralTaskParams: 通用参数配置
        # @type GeneralTaskParams: Array

        attr_accessor :ProjectId, :WorkflowId, :WorkflowName, :OwnerUin, :WorkflowDesc, :WorkflowParams, :TriggerWorkflowSchedulerConfigurations, :BundleId, :BundleInfo, :GeneralTaskParams

        def initialize(projectid=nil, workflowid=nil, workflowname=nil, owneruin=nil, workflowdesc=nil, workflowparams=nil, triggerworkflowschedulerconfigurations=nil, bundleid=nil, bundleinfo=nil, generaltaskparams=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @WorkflowDesc = workflowdesc
          @WorkflowParams = workflowparams
          @TriggerWorkflowSchedulerConfigurations = triggerworkflowschedulerconfigurations
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GeneralTaskParams = generaltaskparams
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @WorkflowDesc = params['WorkflowDesc']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['TriggerWorkflowSchedulerConfigurations'].nil?
            @TriggerWorkflowSchedulerConfigurations = []
            params['TriggerWorkflowSchedulerConfigurations'].each do |i|
              workflowtriggerconfig_tmp = WorkflowTriggerConfig.new
              workflowtriggerconfig_tmp.deserialize(i)
              @TriggerWorkflowSchedulerConfigurations << workflowtriggerconfig_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              workflowgeneraltaskparam_tmp = WorkflowGeneralTaskParam.new
              workflowgeneraltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << workflowgeneraltaskparam_tmp
            end
          end
        end
      end

      # UpdateTriggerWorkflow返回参数结构体
      class UpdateTriggerWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateTriggerWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTriggerWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新工作流结果
      class UpdateTriggerWorkflowResult < TencentCloud::Common::AbstractModel
        # @param Status: 更新工作流结果
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

      # UpdateWorkflowFolder请求参数结构体
      class UpdateWorkflowFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID，可通过ListWorkflowFolders接口获取
        # @type FolderId: String
        # @param FolderName: 更新后的文件夹名称
        # @type FolderName: String

        attr_accessor :ProjectId, :FolderId, :FolderName

        def initialize(projectid=nil, folderid=nil, foldername=nil)
          @ProjectId = projectid
          @FolderId = folderid
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
        end
      end

      # UpdateWorkflowFolder返回参数结构体
      class UpdateWorkflowFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新文件夹结果，如果更新失败则报错。
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateFolderResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateFolderResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkflow请求参数结构体
      class UpdateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param OwnerUin: 责任人ID
        # @type OwnerUin: String
        # @param WorkflowDesc: 备注
        # @type WorkflowDesc: String
        # @param WorkflowParams: 工作流参数列表
        # @type WorkflowParams: Array
        # @param WorkflowSchedulerConfiguration: 统一调度参数
        # @type WorkflowSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowSchedulerConfigurationInfo`
        # @param BundleId: BundleId项
        # @type BundleId: String
        # @param BundleInfo: Bundle信息
        # @type BundleInfo: String

        attr_accessor :ProjectId, :WorkflowId, :WorkflowName, :OwnerUin, :WorkflowDesc, :WorkflowParams, :WorkflowSchedulerConfiguration, :BundleId, :BundleInfo

        def initialize(projectid=nil, workflowid=nil, workflowname=nil, owneruin=nil, workflowdesc=nil, workflowparams=nil, workflowschedulerconfiguration=nil, bundleid=nil, bundleinfo=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @WorkflowDesc = workflowdesc
          @WorkflowParams = workflowparams
          @WorkflowSchedulerConfiguration = workflowschedulerconfiguration
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @WorkflowDesc = params['WorkflowDesc']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['WorkflowSchedulerConfiguration'].nil?
            @WorkflowSchedulerConfiguration = WorkflowSchedulerConfigurationInfo.new
            @WorkflowSchedulerConfiguration.deserialize(params['WorkflowSchedulerConfiguration'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # UpdateWorkflow返回参数结构体
      class UpdateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: :class:`Tencentcloud::Wedata.v20250806.models.UpdateWorkflowResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkflowResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新工作流结果
      class UpdateWorkflowResult < TencentCloud::Common::AbstractModel
        # @param Status: 更新工作流结果
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 查询工作流详细信息
      class WorkflowDetail < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param OwnerUin: 责任人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param WorkflowType: 工作流类型，cycle和manual
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowType: String
        # @param WorkflowParams: 工作流参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: Array
        # @param WorkflowSchedulerConfiguration: 统一调度参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowSchedulerConfiguration: :class:`Tencentcloud::Wedata.v20250806.models.WorkflowSchedulerConfiguration`
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param Path: 工作流所属路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param BundleId: BundleId项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: BundleInfo项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String

        attr_accessor :WorkflowName, :OwnerUin, :CreateUserUin, :WorkflowType, :WorkflowParams, :WorkflowSchedulerConfiguration, :WorkflowDesc, :Path, :BundleId, :BundleInfo

        def initialize(workflowname=nil, owneruin=nil, createuseruin=nil, workflowtype=nil, workflowparams=nil, workflowschedulerconfiguration=nil, workflowdesc=nil, path=nil, bundleid=nil, bundleinfo=nil)
          @WorkflowName = workflowname
          @OwnerUin = owneruin
          @CreateUserUin = createuseruin
          @WorkflowType = workflowtype
          @WorkflowParams = workflowparams
          @WorkflowSchedulerConfiguration = workflowschedulerconfiguration
          @WorkflowDesc = workflowdesc
          @Path = path
          @BundleId = bundleid
          @BundleInfo = bundleinfo
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @OwnerUin = params['OwnerUin']
          @CreateUserUin = params['CreateUserUin']
          @WorkflowType = params['WorkflowType']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['WorkflowSchedulerConfiguration'].nil?
            @WorkflowSchedulerConfiguration = WorkflowSchedulerConfiguration.new
            @WorkflowSchedulerConfiguration.deserialize(params['WorkflowSchedulerConfiguration'])
          end
          @WorkflowDesc = params['WorkflowDesc']
          @Path = params['Path']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
        end
      end

      # 文件夹信息
      class WorkflowFolder < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID
        # @type FolderId: String
        # @param FolderPath: 文件夹绝对路径
        # @type FolderPath: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :ProjectId, :FolderId, :FolderPath, :CreateUserUin

        def initialize(projectid=nil, folderid=nil, folderpath=nil, createuseruin=nil)
          @ProjectId = projectid
          @FolderId = folderid
          @FolderPath = folderpath
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
          @FolderPath = params['FolderPath']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 文件夹详细信息
      class WorkflowFolderDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param FolderId: 文件夹ID
        # @type FolderId: String
        # @param FolderPath: 文件夹绝对路径
        # @type FolderPath: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param ParentFolderPath: 父文件夹绝对路径
        # @type ParentFolderPath: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String

        attr_accessor :ProjectId, :FolderId, :FolderPath, :CreateUserUin, :ParentFolderPath, :FolderName

        def initialize(projectid=nil, folderid=nil, folderpath=nil, createuseruin=nil, parentfolderpath=nil, foldername=nil)
          @ProjectId = projectid
          @FolderId = folderid
          @FolderPath = folderpath
          @CreateUserUin = createuseruin
          @ParentFolderPath = parentfolderpath
          @FolderName = foldername
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
          @FolderPath = params['FolderPath']
          @CreateUserUin = params['CreateUserUin']
          @ParentFolderPath = params['ParentFolderPath']
          @FolderName = params['FolderName']
        end
      end

      # 资源文件分页
      class WorkflowFolderPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 数据页数，大于等于1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 文件夹总数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param Items: 文件夹列表
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowfolder_tmp = WorkflowFolder.new
              workflowfolder_tmp.deserialize(i)
              @Items << workflowfolder_tmp
            end
          end
        end
      end

      # 工作流SPARK_SQL参数
      class WorkflowGeneralTaskParam < TencentCloud::Common::AbstractModel
        # @param Type: 通用任务参数类型,目前只支持SPARK_SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Value: 通用任务参数内容, 不同参数用;
        # 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 获取工作流的列表信息item
      class WorkflowInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowType: 工作流类型，cycle及manual
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowType: String
        # @param OwnerUin: 负责人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifyTime: 最新修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param UpdateUserUin: 最后更新人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param WorkflowDesc: 工作流描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param CreateUserUin: 创建人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :WorkflowId, :WorkflowName, :WorkflowType, :OwnerUin, :CreateTime, :ModifyTime, :UpdateUserUin, :WorkflowDesc, :CreateUserUin

        def initialize(workflowid=nil, workflowname=nil, workflowtype=nil, owneruin=nil, createtime=nil, modifytime=nil, updateuseruin=nil, workflowdesc=nil, createuseruin=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @WorkflowType = workflowtype
          @OwnerUin = owneruin
          @CreateTime = createtime
          @ModifyTime = modifytime
          @UpdateUserUin = updateuseruin
          @WorkflowDesc = workflowdesc
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @WorkflowType = params['WorkflowType']
          @OwnerUin = params['OwnerUin']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @UpdateUserUin = params['UpdateUserUin']
          @WorkflowDesc = params['WorkflowDesc']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 用户对工作流文件夹的递归最大权限类型
      class WorkflowMaxPermission < TencentCloud::Common::AbstractModel
        # @param PermissionType: 授权权限类型(CAN_VIEW/CAN_RUN/CAN_EDIT/CAN_MANAGE，当前仅支持CAN_MANAGE)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionType: String

        attr_accessor :PermissionType

        def initialize(permissiontype=nil)
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @PermissionType = params['PermissionType']
        end
      end

      # 数据开发授权信息
      class WorkflowPermission < TencentCloud::Common::AbstractModel
        # @param PermissionTargetType: 授权目标类型（用户：user，角色：role）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionTargetType: String
        # @param PermissionTargetId: 授权目标id数组(userId/roleId)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionTargetId: String
        # @param PermissionTypeList: 授权权限类型数组(CAN_VIEW/CAN_RUN/CAN_EDIT/CAN_MANAGE，当前仅支持CAN_MANAGE)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionTypeList: Array

        attr_accessor :PermissionTargetType, :PermissionTargetId, :PermissionTypeList

        def initialize(permissiontargettype=nil, permissiontargetid=nil, permissiontypelist=nil)
          @PermissionTargetType = permissiontargettype
          @PermissionTargetId = permissiontargetid
          @PermissionTypeList = permissiontypelist
        end

        def deserialize(params)
          @PermissionTargetType = params['PermissionTargetType']
          @PermissionTargetId = params['PermissionTargetId']
          @PermissionTypeList = params['PermissionTypeList']
        end
      end

      # 数据开发分页的权限信息
      class WorkflowPermissionPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 数据页数，大于等于1
        # @type PageNumber: Integer
        # @param PageSize: 每页显示的数据条数，最小为10条，最大为200 条
        # @type PageSize: Integer
        # @param TotalCount: 授权数据总数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param Items: 授权信息列表
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowpermission_tmp = WorkflowPermission.new
              workflowpermission_tmp.deserialize(i)
              @Items << workflowpermission_tmp
            end
          end
        end
      end

      # 工作流统一调度出参
      class WorkflowSchedulerConfiguration < TencentCloud::Common::AbstractModel
        # @param ScheduleTimeZone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param CycleType: 周期类型：支持的类型为
        # ONEOFF_CYCLE: 一次性
        # YEAR_CYCLE: 年
        # MONTH_CYCLE: 月
        # WEEK_CYCLE: 周
        # DAY_CYCLE: 天
        # HOUR_CYCLE: 小时
        # MINUTE_CYCLE: 分钟
        # CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param SelfDepend: 自依赖, 默认值 serial, 取值为：parallel(并行), serial(串行), orderly(有序)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDepend: String
        # @param StartTime: 生效开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 生效结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param DependencyWorkflow: 工作流依赖，yes or no
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyWorkflow: String
        # @param ExecutionStartTime: 执行时间左闭区间，示例：00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，示例：23:59
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param CrontabExpression: cron表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param CalendarOpen: 是否开启日历调度 1 开启 0关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarOpen: String
        # @param CalendarName: 日历名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarName: String
        # @param CalendarId: 日历id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalendarId: String

        attr_accessor :ScheduleTimeZone, :CycleType, :SelfDepend, :StartTime, :EndTime, :DependencyWorkflow, :ExecutionStartTime, :ExecutionEndTime, :CrontabExpression, :CalendarOpen, :CalendarName, :CalendarId

        def initialize(scheduletimezone=nil, cycletype=nil, selfdepend=nil, starttime=nil, endtime=nil, dependencyworkflow=nil, executionstarttime=nil, executionendtime=nil, crontabexpression=nil, calendaropen=nil, calendarname=nil, calendarid=nil)
          @ScheduleTimeZone = scheduletimezone
          @CycleType = cycletype
          @SelfDepend = selfdepend
          @StartTime = starttime
          @EndTime = endtime
          @DependencyWorkflow = dependencyworkflow
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CrontabExpression = crontabexpression
          @CalendarOpen = calendaropen
          @CalendarName = calendarname
          @CalendarId = calendarid
        end

        def deserialize(params)
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @CycleType = params['CycleType']
          @SelfDepend = params['SelfDepend']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DependencyWorkflow = params['DependencyWorkflow']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CrontabExpression = params['CrontabExpression']
          @CalendarOpen = params['CalendarOpen']
          @CalendarName = params['CalendarName']
          @CalendarId = params['CalendarId']
        end
      end

      # 工作流统一调度参数入参
      # 依赖任务信息

      # 取值说明表：

      # | 当前任务周期类型 | 上游任务周期类型 | 配置方式 | MainCyclicConfig取值 | 时间维度/实例范围           | SubordinateCyclicConfig取值       | offset取值             |
      # | ---------------- | ---------------- | -------- | -------------------- | --------------------------- | --------------------------------- | ---------------------- |
      # | HOUR_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | DAY_CYCLE        | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/最近实例             | CURRENT_HOUR                      | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/前一周期             | PREVIOUS_HOUR_CYCLE               | 无                     |
      # | HOUR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周五                 | PREVIOUS_FRIDAY                   | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/上周日                 | PREVIOUS_WEEKEND                  | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天         、          | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | WEEK_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/前一个小时(-60,0]    | PREVIOUS_HOUR_LATER_OFFSET_MINUTE | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/前一个小时           | PREVIOUS_HOUR                     | 无                     |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | HOUR                 | 按小时/当前小时             | CURRENT_HOUR                      | 无                     |
      # | YEAR_CYCLE       | WEEK_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | WEEK_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 推荐策略 | HOUR                 | 按小时/当前小时             | CURRENT_HOUR                      | 无                     |
      # | HOUR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | ONEOFF_CYCLE     | 推荐策略 | MONTH                | 按月/当月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | DAY_CYCLE        | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | MONTH_CYCLE      | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | ONEOFF_CYCLE     | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 推荐策略 | MINUTE               | 按分钟/当前分钟             | CURRENT_MINUTE                    | 无                     |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 推荐策略 | MINUTE               | 按分钟/前一周期             | PREVIOUS_MINUTE_CYCLE             | 无                     |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | ONEOFF_CYCLE     | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/前一天(-24 * 60,0]     | PREVIOUS_DAY_LATER_OFFSET_MINUTE  | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | WEEK_CYCLE       | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | YEAR_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | MINUTE_CYCLE     | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | ONEOFF_CYCLE     | MINUTE_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | HOUR_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 推荐策略 | WEEK                 | 按周/上周                   | PREVIOUS_WEEK                     | 无                     |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/前一天(-24,0]          | PREVIOUS_DAY_LATER_OFFSET_HOUR    | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/前一天[-24,0)          | PREVIOUS_DAY                      | 无                     |
      # | DAY_CYCLE        | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本年所有月             | ALL_MONTH_OF_YEAR                 | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月末                 | PREVIOUS_END_OF_MONTH             | 无                     |
      # | YEAR_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/上月初                 | PREVIOUS_BEGIN_OF_MONTH           | 无                     |
      # | ONEOFF_CYCLE     | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | DAY_CYCLE        | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | ONEOFF_CYCLE     | HOUR_CYCLE       | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | DAY_CYCLE        | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MINUTE_CYCLE     | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | WEEK_CYCLE       | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | WEEK_CYCLE       | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | YEAR_CYCLE       | ONEOFF_CYCLE     | 推荐策略 | YEAR                 | 按年/当年                   | CURRENT_YEAR                      | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/上月末                 | PREVIOUS_END_OF_MONTH             | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | MONTH_CYCLE      | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/本年所有天             | ALL_DAY_OF_YEAR                   | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | YEAR_CYCLE       | DAY_CYCLE        | 推荐策略 | DAY                  | 按天/前一天                 | PREVIOUS_DAY                      | 无                     |
      # | HOUR_CYCLE       | WEEK_CYCLE       | 推荐策略 | WEEK                 | 按周/本周                   | CURRENT_WEEK                      | 无                     |
      # | MONTH_CYCLE      | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/当月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | MONTH_CYCLE      | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | MONTH                | 按月/上月                   | PREVIOUS_MONTH                    | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | MONTH_CYCLE      | WEEK_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | DAY_CYCLE        | YEAR_CYCLE       | 推荐策略 | YEAR                 | 按年/本年                   | CURRENT_YEAR                      | 无                     |
      # | DAY_CYCLE        | YEAR_CYCLE       | 推荐策略 | DAY                  | 按天/最近一次数据时间的实例 | RECENT_DATE                       | 无                     |
      # | ONEOFF_CYCLE     | ONEOFF_CYCLE     | 推荐策略 | DAY                  | 按天/当天                   | CURRENT_DAY                       | 无                     |
      # | ONEOFF_CYCLE     | MONTH_CYCLE      | 推荐策略 | MONTH                | 按月/本月                   | CURRENT_MONTH                     | 无                     |
      # | CRONTAB_CYCLE    | CRONTAB_CYCLE    | 推荐策略 | CRONTAB              | 无                          | CURRENT                           | 无                     |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | HOUR_CYCLE       | 自定义   | RANGE_HOUR           | 区间(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | DAY_CYCLE        | 自定义   | RANGE_DAY            | 区间(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 自定义   | RANGE_MINUTE         | 区间(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | HOUR_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | MINUTE_CYCLE     | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | WEEK_CYCLE       | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | HOUR_CYCLE       | 自定义   | LIST_HOUR            | 列表(小时)                  | 无                                | 逗号分隔的整数，如-1,0 |
      # | DAY_CYCLE        | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | YEAR_CYCLE       | DAY_CYCLE        | 自定义   | LIST_DAY             | 列表(天)                    | 无                                | 逗号分隔的整数，如-1,0 |
      # | MONTH_CYCLE      | MINUTE_CYCLE     | 自定义   | LIST_MINUTE          | 列表(分钟)                  | 无                                | 逗号分隔的整数，如-1,0 |
      class WorkflowSchedulerConfigurationInfo < TencentCloud::Common::AbstractModel
        # @param ScheduleTimeZone: 时区
        # @type ScheduleTimeZone: String
        # @param CycleType: 周期类型：支持的类型为
        # ONEOFF_CYCLE: 一次性
        # YEAR_CYCLE: 年
        # MONTH_CYCLE: 月
        # WEEK_CYCLE: 周
        # DAY_CYCLE: 天
        # HOUR_CYCLE: 小时
        # MINUTE_CYCLE: 分钟
        # CRONTAB_CYCLE: crontab表达式类型
        # @type CycleType: String
        # @param SelfDepend: 自依赖, 默认值 serial, 取值为：parallel(并行), serial(串行), orderly(有序)
        # @type SelfDepend: String
        # @param StartTime: 生效开始时间
        # @type StartTime: String
        # @param EndTime: 生效结束时间
        # @type EndTime: String
        # @param CrontabExpression: cron表达式
        # @type CrontabExpression: String
        # @param DependencyWorkflow: 工作流依赖，yes or no
        # @type DependencyWorkflow: String
        # @param ModifyCycleValue: 0：不修改 1：将任务的上游依赖配置改为默认值
        # @type ModifyCycleValue: String
        # @param ClearLink: 工作流存在跨工作流依赖且使用cron表达式调度。如果保存统一调度，会断开不支持的依赖关系
        # @type ClearLink: Boolean
        # @param MainCyclicConfig: ModifyCycleValue为1的时候生效，表示默认修改的上游依赖-时间维度，取值为：
        # * CRONTAB
        # * DAY
        # * HOUR
        # * LIST_DAY
        # * LIST_HOUR
        # * LIST_MINUTE
        # * MINUTE
        # * MONTH
        # * RANGE_DAY
        # * RANGE_HOUR
        # * RANGE_MINUTE
        # * WEEK
        # * YEAR

        # https://capi.woa.com/object/detail?product=wedata&env=api_dev&version=2025-08-06&name=WorkflowSchedulerConfigurationInfo
        # @type MainCyclicConfig: String
        # @param SubordinateCyclicConfig: ModifyCycleValue为1的时候生效，表示默认修改的上游依赖-实例范围
        # 取值为：
        # * ALL_DAY_OF_YEAR
        # * ALL_MONTH_OF_YEAR
        # * CURRENT
        # * CURRENT_DAY
        # * CURRENT_HOUR
        # * CURRENT_MINUTE
        # * CURRENT_MONTH
        # * CURRENT_WEEK
        # * CURRENT_YEAR
        # * PREVIOUS_BEGIN_OF_MONTH
        # * PREVIOUS_DAY
        # * PREVIOUS_DAY_LATER_OFFSET_HOUR
        # * PREVIOUS_DAY_LATER_OFFSET_MINUTE
        # * PREVIOUS_END_OF_MONTH
        # * PREVIOUS_FRIDAY
        # * PREVIOUS_HOUR
        # * PREVIOUS_HOUR_CYCLE
        # * PREVIOUS_HOUR_LATER_OFFSET_MINUTE
        # * PREVIOUS_MINUTE_CYCLE
        # * PREVIOUS_MONTH
        # * PREVIOUS_WEEK
        # * PREVIOUS_WEEKEND
        # * RECENT_DATE

        # https://capi.woa.com/object/detail?product=wedata&env=api_dev&version=2025-08-06&name=WorkflowSchedulerConfigurationInfo
        # @type SubordinateCyclicConfig: String
        # @param ExecutionStartTime: 执行时间左闭区间，示例：00:00，只有周期类型为MINUTE_CYCLE才需要填入
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，示例：23:59，只有周期类型为MINUTE_CYCLE才需要填入
        # @type ExecutionEndTime: String
        # @param CalendarOpen: 是否开启日历调度 1 开启 0关闭
        # @type CalendarOpen: String
        # @param CalendarId: 日历id
        # @type CalendarId: String

        attr_accessor :ScheduleTimeZone, :CycleType, :SelfDepend, :StartTime, :EndTime, :CrontabExpression, :DependencyWorkflow, :ModifyCycleValue, :ClearLink, :MainCyclicConfig, :SubordinateCyclicConfig, :ExecutionStartTime, :ExecutionEndTime, :CalendarOpen, :CalendarId

        def initialize(scheduletimezone=nil, cycletype=nil, selfdepend=nil, starttime=nil, endtime=nil, crontabexpression=nil, dependencyworkflow=nil, modifycyclevalue=nil, clearlink=nil, maincyclicconfig=nil, subordinatecyclicconfig=nil, executionstarttime=nil, executionendtime=nil, calendaropen=nil, calendarid=nil)
          @ScheduleTimeZone = scheduletimezone
          @CycleType = cycletype
          @SelfDepend = selfdepend
          @StartTime = starttime
          @EndTime = endtime
          @CrontabExpression = crontabexpression
          @DependencyWorkflow = dependencyworkflow
          @ModifyCycleValue = modifycyclevalue
          @ClearLink = clearlink
          @MainCyclicConfig = maincyclicconfig
          @SubordinateCyclicConfig = subordinatecyclicconfig
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CalendarOpen = calendaropen
          @CalendarId = calendarid
        end

        def deserialize(params)
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @CycleType = params['CycleType']
          @SelfDepend = params['SelfDepend']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CrontabExpression = params['CrontabExpression']
          @DependencyWorkflow = params['DependencyWorkflow']
          @ModifyCycleValue = params['ModifyCycleValue']
          @ClearLink = params['ClearLink']
          @MainCyclicConfig = params['MainCyclicConfig']
          @SubordinateCyclicConfig = params['SubordinateCyclicConfig']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CalendarOpen = params['CalendarOpen']
          @CalendarId = params['CalendarId']
        end
      end

      # 工作流调度配置
      class WorkflowTriggerConfig < TencentCloud::Common::AbstractModel
        # @param TriggerMode: 触发方式，
        # - 定时触发：TIME_TRIGGER
        # - 持续运行：CONTINUE_RUN
        # - 文件到达：FILE_ARRIVAL

        # 注意：
        # - TIME_TRIGGER 和 CONTINUE_RUN 模式下，SchedulerStatus、SchedulerTimeZone、StartTime、EndTime、ConfigMode、CycleType、CrontabExpression 必填；
        # - FILE_ARRIVAL 模式下，FileArrivalPath、TriggerMinimumIntervalSecond、TriggerWaitTimeSecond 必填；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMode: String
        # @param ExtraInfo: WorkflowTriggerConfig转换成Json格式，对账使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param ScheduleTimeZone: 调度时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTimeZone: String
        # @param StartTime: 调度生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 调度结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ConfigMode: 配置方式，常规：COMMON，CRON表达式：CRON_EXPRESSION
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigMode: String
        # @param CycleType: 周期类型：支持的类型为
        # ONEOFF_CYCLE: 一次性
        # YEAR_CYCLE: 年
        # MONTH_CYCLE: 月
        # WEEK_CYCLE: 周
        # DAY_CYCLE: 天
        # HOUR_CYCLE: 小时
        # MINUTE_CYCLE: 分钟
        # CRONTAB_CYCLE: crontab表达式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CrontabExpression: cron表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param TriggerId: triggerId, uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerId: String
        # @param FileArrivalPath: 文件到达模式下	存储系统中的监听路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileArrivalPath: String
        # @param TriggerMinimumIntervalSecond: 文件到达模式下	触发最短间隔时间（单位：秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMinimumIntervalSecond: Integer
        # @param TriggerWaitTimeSecond: 文件到达模式下	触发等待时间（单位：秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerWaitTimeSecond: Integer
        # @param SchedulerStatus: Trigger 状态 启动ACTIVE，暂停PAUSED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerStatus: String

        attr_accessor :TriggerMode, :ExtraInfo, :ScheduleTimeZone, :StartTime, :EndTime, :ConfigMode, :CycleType, :CrontabExpression, :TriggerId, :FileArrivalPath, :TriggerMinimumIntervalSecond, :TriggerWaitTimeSecond, :SchedulerStatus

        def initialize(triggermode=nil, extrainfo=nil, scheduletimezone=nil, starttime=nil, endtime=nil, configmode=nil, cycletype=nil, crontabexpression=nil, triggerid=nil, filearrivalpath=nil, triggerminimumintervalsecond=nil, triggerwaittimesecond=nil, schedulerstatus=nil)
          @TriggerMode = triggermode
          @ExtraInfo = extrainfo
          @ScheduleTimeZone = scheduletimezone
          @StartTime = starttime
          @EndTime = endtime
          @ConfigMode = configmode
          @CycleType = cycletype
          @CrontabExpression = crontabexpression
          @TriggerId = triggerid
          @FileArrivalPath = filearrivalpath
          @TriggerMinimumIntervalSecond = triggerminimumintervalsecond
          @TriggerWaitTimeSecond = triggerwaittimesecond
          @SchedulerStatus = schedulerstatus
        end

        def deserialize(params)
          @TriggerMode = params['TriggerMode']
          @ExtraInfo = params['ExtraInfo']
          @ScheduleTimeZone = params['ScheduleTimeZone']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ConfigMode = params['ConfigMode']
          @CycleType = params['CycleType']
          @CrontabExpression = params['CrontabExpression']
          @TriggerId = params['TriggerId']
          @FileArrivalPath = params['FileArrivalPath']
          @TriggerMinimumIntervalSecond = params['TriggerMinimumIntervalSecond']
          @TriggerWaitTimeSecond = params['TriggerWaitTimeSecond']
          @SchedulerStatus = params['SchedulerStatus']
        end
      end

    end
  end
end

